; ModuleID = '/llk/IR_all_yes/fs/btrfs/struct-funcs.c_pt.bc'
source_filename = "../fs/btrfs/struct-funcs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.btrfs_map_token = type { ptr, ptr, i32 }
%struct.extent_buffer = type { i64, i32, i32, ptr, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, i32, %struct.callback_head, i32, i8, %struct.rw_semaphore, [16 x ptr], %struct.list_head, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"token\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fs/btrfs/struct-funcs.c\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"token->kaddr\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"check_setget_bounds(token->eb, ptr, off, size)\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"check_setget_bounds(eb, ptr, off, size)\00", [56 x i8] zeroinitializer }, align 32
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@.str.8 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014bad eb member start: ptr 0x%lx start %llu member offset %lu size %d\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014bad eb member end: ptr 0x%lx start %llu member offset %lu size %d\00", [60 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 160, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 3491, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 16, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [27 x i8] c"../fs/btrfs/struct-funcs.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 22, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @btrfs_get_token_8(ptr noundef %token, ptr noundef %ptr, i32 noundef %off) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  %add = add i32 %0, %off
  %shr.i = lshr i32 %add, 12
  %1 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %token, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  %tobool.not = icmp eq ptr %token, null
  br i1 %tobool.not, label %cond.false, label %cond.end, !prof !25

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 160) #9
  unreachable

cond.end:                                         ; preds = %entry
  %kaddr = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 1
  %5 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %kaddr, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %cond.false12, label %cond.end13, !prof !25

cond.false12:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.2, i32 noundef 160) #9
  unreachable

cond.end13:                                       ; preds = %cond.end
  %len.i = getelementptr inbounds %struct.extent_buffer, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %8)
  %cmp.i = icmp ugt i32 %add, %8
  br i1 %cmp.i, label %cond.end13.cond.false23_crit_edge, label %if.end.i

cond.end13.cond.false23_crit_edge:                ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false23

if.end.i:                                         ; preds = %cond.end13
  %add1.i = add i32 %add, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %8)
  %cmp3.i = icmp ugt i32 %add1.i, %8
  br i1 %cmp3.i, label %if.end.i.cond.false23_crit_edge, label %cond.end24

if.end.i.cond.false23_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false23

cond.false23:                                     ; preds = %if.end.i.cond.false23_crit_edge, %cond.end13.cond.false23_crit_edge
  %.str.9.sink.i = phi ptr [ @.str.8, %cond.end13.cond.false23_crit_edge ], [ @.str.9, %if.end.i.cond.false23_crit_edge ]
  %fs_info5.i = getelementptr inbounds %struct.extent_buffer, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %fs_info5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fs_info5.i, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %10, ptr noundef nonnull %.str.9.sink.i, i32 noundef %0, i64 noundef %4, i32 noundef %add, i32 noundef 1) #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 160) #9
  unreachable

cond.end24:                                       ; preds = %if.end.i
  %offset = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 2
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %add)
  %cmp.not = icmp ugt i32 %12, %add
  %add27 = add i32 %12, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %add27)
  %cmp28.not = icmp ugt i32 %add1.i, %add27
  %or.cond = or i1 %cmp.not, %cmp28.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %kaddr, align 4
  br label %cleanup

if.end:                                           ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %token, align 4
  %arrayidx = getelementptr %struct.extent_buffer, ptr %16, i32 0, i32 12, i32 %shr.i
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %call32 = tail call ptr @page_address(ptr noundef %18) #6
  %19 = ptrtoint ptr %kaddr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call32, ptr %kaddr, align 4
  %shl = and i32 %add, -4096
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shl, ptr %offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %.pn = phi ptr [ %14, %if.then ], [ %call32, %if.end ]
  %21 = trunc i64 %4 to i32
  %conv1.i = add i32 %add, %21
  %and.i = and i32 %conv1.i, 4095
  %retval.0.in = getelementptr i8, ptr %.pn, i32 %and.i
  %22 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load1_noabort(i32 %22)
  %retval.0 = load i8, ptr %retval.0.in, align 1
  ret i8 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, i32 noundef %line) unnamed_addr #2 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %expr, ptr noundef nonnull @.str.1, i32 noundef %line) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #6, !srcloc !26
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @btrfs_get_8(ptr nocapture noundef readonly %eb, ptr noundef %ptr, i32 noundef %off) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  %add = add i32 %0, %off
  %1 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %eb, align 8
  %shr.i = lshr i32 %add, 12
  %arrayidx = getelementptr %struct.extent_buffer, ptr %eb, i32 0, i32 12, i32 %shr.i
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call ptr @page_address(ptr noundef %4) #6
  %len.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 1
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %6)
  %cmp.i = icmp ugt i32 %add, %6
  br i1 %cmp.i, label %entry.cond.false_crit_edge, label %if.end.i

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

if.end.i:                                         ; preds = %entry
  %add1.i = add i32 %add, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %6)
  %cmp3.i = icmp ugt i32 %add1.i, %6
  br i1 %cmp3.i, label %if.end.i.cond.false_crit_edge, label %if.then

if.end.i.cond.false_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.false:                                       ; preds = %if.end.i.cond.false_crit_edge, %entry.cond.false_crit_edge
  %.str.9.sink.i = phi ptr [ @.str.8, %entry.cond.false_crit_edge ], [ @.str.9, %if.end.i.cond.false_crit_edge ]
  %fs_info5.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 3
  %7 = ptrtoint ptr %fs_info5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fs_info5.i, align 8
  %9 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %eb, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %8, ptr noundef nonnull %.str.9.sink.i, i32 noundef %0, i64 noundef %10, i32 noundef %add, i32 noundef 1) #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.4, i32 noundef 160) #9
  unreachable

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = trunc i64 %2 to i32
  %conv1.i = add i32 %add, %11
  %and.i = and i32 %conv1.i, 4095
  %add.ptr = getelementptr i8, ptr %call2, i32 %and.i
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr, align 1
  ret i8 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_set_token_8(ptr noundef %token, ptr noundef %ptr, i32 noundef %off, i8 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  %add = add i32 %0, %off
  %shr.i = lshr i32 %add, 12
  %1 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %token, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  %tobool.not = icmp eq ptr %token, null
  br i1 %tobool.not, label %cond.false, label %cond.end, !prof !25

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 160) #9
  unreachable

cond.end:                                         ; preds = %entry
  %kaddr = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 1
  %5 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %kaddr, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %cond.false12, label %cond.end13, !prof !25

cond.false12:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.2, i32 noundef 160) #9
  unreachable

cond.end13:                                       ; preds = %cond.end
  %len.i = getelementptr inbounds %struct.extent_buffer, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %8)
  %cmp.i = icmp ugt i32 %add, %8
  br i1 %cmp.i, label %cond.end13.cond.false23_crit_edge, label %if.end.i

cond.end13.cond.false23_crit_edge:                ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false23

if.end.i:                                         ; preds = %cond.end13
  %add1.i = add i32 %add, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %8)
  %cmp3.i = icmp ugt i32 %add1.i, %8
  br i1 %cmp3.i, label %if.end.i.cond.false23_crit_edge, label %cond.end24

if.end.i.cond.false23_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false23

cond.false23:                                     ; preds = %if.end.i.cond.false23_crit_edge, %cond.end13.cond.false23_crit_edge
  %.str.9.sink.i = phi ptr [ @.str.8, %cond.end13.cond.false23_crit_edge ], [ @.str.9, %if.end.i.cond.false23_crit_edge ]
  %fs_info5.i = getelementptr inbounds %struct.extent_buffer, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %fs_info5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fs_info5.i, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %10, ptr noundef nonnull %.str.9.sink.i, i32 noundef %0, i64 noundef %4, i32 noundef %add, i32 noundef 1) #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 160) #9
  unreachable

cond.end24:                                       ; preds = %if.end.i
  %offset = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 2
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %add)
  %cmp.not = icmp ugt i32 %12, %add
  %add27 = add i32 %12, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %add27)
  %cmp28.not = icmp ugt i32 %add1.i, %add27
  %or.cond = or i1 %cmp.not, %cmp28.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %kaddr, align 4
  br label %cleanup

if.end:                                           ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %token, align 4
  %arrayidx = getelementptr %struct.extent_buffer, ptr %16, i32 0, i32 12, i32 %shr.i
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %call31 = tail call ptr @page_address(ptr noundef %18) #6
  %19 = ptrtoint ptr %kaddr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call31, ptr %kaddr, align 4
  %shl = and i32 %add, -4096
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shl, ptr %offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %call31.sink = phi ptr [ %call31, %if.end ], [ %14, %if.then ]
  %21 = trunc i64 %4 to i32
  %conv1.i = add i32 %add, %21
  %and.i = and i32 %conv1.i, 4095
  %add.ptr38 = getelementptr i8, ptr %call31.sink, i32 %and.i
  %22 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %val, ptr %add.ptr38, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_set_8(ptr nocapture noundef readonly %eb, ptr noundef %ptr, i32 noundef %off, i8 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  %add = add i32 %0, %off
  %1 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %eb, align 8
  %shr.i = lshr i32 %add, 12
  %arrayidx = getelementptr %struct.extent_buffer, ptr %eb, i32 0, i32 12, i32 %shr.i
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call ptr @page_address(ptr noundef %4) #6
  %len.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 1
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %6)
  %cmp.i = icmp ugt i32 %add, %6
  br i1 %cmp.i, label %entry.cond.false_crit_edge, label %if.end.i

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

if.end.i:                                         ; preds = %entry
  %add1.i = add i32 %add, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %6)
  %cmp3.i = icmp ugt i32 %add1.i, %6
  br i1 %cmp3.i, label %if.end.i.cond.false_crit_edge, label %if.then

if.end.i.cond.false_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.false:                                       ; preds = %if.end.i.cond.false_crit_edge, %entry.cond.false_crit_edge
  %.str.9.sink.i = phi ptr [ @.str.8, %entry.cond.false_crit_edge ], [ @.str.9, %if.end.i.cond.false_crit_edge ]
  %fs_info5.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 3
  %7 = ptrtoint ptr %fs_info5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fs_info5.i, align 8
  %9 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %eb, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %8, ptr noundef nonnull %.str.9.sink.i, i32 noundef %0, i64 noundef %10, i32 noundef %add, i32 noundef 1) #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.4, i32 noundef 160) #9
  unreachable

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = trunc i64 %2 to i32
  %conv1.i = add i32 %add, %11
  %and.i = and i32 %conv1.i, 4095
  %add.ptr = getelementptr i8, ptr %call2, i32 %and.i
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %val, ptr %add.ptr, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @btrfs_get_token_16(ptr noundef %token, ptr noundef %ptr, i32 noundef %off) local_unnamed_addr #0 align 64 {
entry:
  %lebytes = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  %add = add i32 %0, %off
  %shr.i = lshr i32 %add, 12
  %1 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %token, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  %5 = trunc i64 %4 to i32
  %conv1.i = add i32 %add, %5
  %and.i = and i32 %conv1.i, 4095
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lebytes) #6
  %6 = ptrtoint ptr %lebytes to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %lebytes, align 2, !annotation !27
  %7 = getelementptr inbounds [2 x i8], ptr %lebytes, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !27
  %sub = sub nuw nsw i32 4096, %and.i
  %tobool.not = icmp eq ptr %token, null
  br i1 %tobool.not, label %cond.false, label %cond.end, !prof !25

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 161) #9
  unreachable

cond.end:                                         ; preds = %entry
  %kaddr = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 1
  %9 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %kaddr, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %cond.false12, label %cond.end13, !prof !25

cond.false12:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.2, i32 noundef 161) #9
  unreachable

cond.end13:                                       ; preds = %cond.end
  %len.i = getelementptr inbounds %struct.extent_buffer, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %12)
  %cmp.i = icmp ugt i32 %add, %12
  br i1 %cmp.i, label %cond.end13.cond.false23_crit_edge, label %if.end.i

cond.end13.cond.false23_crit_edge:                ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false23

if.end.i:                                         ; preds = %cond.end13
  %add1.i = add i32 %add, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %12)
  %cmp3.i = icmp ugt i32 %add1.i, %12
  br i1 %cmp3.i, label %if.end.i.cond.false23_crit_edge, label %cond.end24

if.end.i.cond.false23_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false23

cond.false23:                                     ; preds = %if.end.i.cond.false23_crit_edge, %cond.end13.cond.false23_crit_edge
  %.str.9.sink.i = phi ptr [ @.str.8, %cond.end13.cond.false23_crit_edge ], [ @.str.9, %if.end.i.cond.false23_crit_edge ]
  %fs_info5.i = getelementptr inbounds %struct.extent_buffer, ptr %2, i32 0, i32 3
  %13 = ptrtoint ptr %fs_info5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fs_info5.i, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %14, ptr noundef nonnull %.str.9.sink.i, i32 noundef %0, i64 noundef %4, i32 noundef %add, i32 noundef 2) #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 161) #9
  unreachable

cond.end24:                                       ; preds = %if.end.i
  %offset = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 2
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add)
  %cmp.not = icmp ugt i32 %16, %add
  %add27 = add i32 %16, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %add27)
  %cmp28.not = icmp ugt i32 %add1.i, %add27
  %or.cond = or i1 %cmp.not, %cmp28.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %kaddr, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 %and.i
  br label %cleanup

if.end:                                           ; preds = %cond.end24
  %19 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %token, align 4
  %arrayidx = getelementptr %struct.extent_buffer, ptr %20, i32 0, i32 12, i32 %shr.i
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %call32 = tail call ptr @page_address(ptr noundef %22) #6
  %23 = ptrtoint ptr %kaddr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call32, ptr %kaddr, align 4
  %shl = and i32 %add, -4096
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shl, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %and.i)
  %cmp36.not = icmp eq i32 %and.i, 4095
  br i1 %cmp36.not, label %if.end41, label %if.then37

if.then37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr39 = getelementptr i8, ptr %call32, i32 %and.i
  br label %cleanup

if.end41:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr43 = getelementptr i8, ptr %call32, i32 4095
  %25 = call ptr @memcpy(ptr %lebytes, ptr %add.ptr43, i32 %sub)
  %26 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %token, align 4
  %add46 = add nuw nsw i32 %shr.i, 1
  %arrayidx47 = getelementptr %struct.extent_buffer, ptr %27, i32 0, i32 12, i32 %add46
  %28 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx47, align 4
  %call48 = tail call ptr @page_address(ptr noundef %29) #6
  %30 = ptrtoint ptr %kaddr to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call48, ptr %kaddr, align 4
  %shl51 = shl i32 %add46, 12
  %31 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shl51, ptr %offset, align 4
  %add.ptr54 = getelementptr i8, ptr %lebytes, i32 %sub
  %32 = ptrtoint ptr %call48 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %call48, align 1
  %34 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %add.ptr54, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then37, %if.then
  %.sink.in = phi ptr [ %lebytes, %if.end41 ], [ %add.ptr39, %if.then37 ], [ %add.ptr, %if.then ]
  %35 = ptrtoint ptr %.sink.in to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %.sink = load i16, ptr %.sink.in, align 1
  %36 = tail call i16 @llvm.bswap.i16(i16 %.sink) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lebytes) #6
  ret i16 %36
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @btrfs_get_16(ptr nocapture noundef readonly %eb, ptr noundef %ptr, i32 noundef %off) local_unnamed_addr #0 align 64 {
entry:
  %lebytes = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  %add = add i32 %0, %off
  %1 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %eb, align 8
  %3 = trunc i64 %2 to i32
  %conv1.i = add i32 %add, %3
  %and.i = and i32 %conv1.i, 4095
  %shr.i = lshr i32 %add, 12
  %arrayidx = getelementptr %struct.extent_buffer, ptr %eb, i32 0, i32 12, i32 %shr.i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call ptr @page_address(ptr noundef %5) #6
  %sub = sub nuw nsw i32 4096, %and.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lebytes) #6
  %6 = ptrtoint ptr %lebytes to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %lebytes, align 2, !annotation !27
  %7 = getelementptr inbounds [2 x i8], ptr %lebytes, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !27
  %len.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 1
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %10)
  %cmp.i = icmp ugt i32 %add, %10
  br i1 %cmp.i, label %entry.cond.false_crit_edge, label %if.end.i

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

if.end.i:                                         ; preds = %entry
  %add1.i = add i32 %add, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %10)
  %cmp3.i = icmp ugt i32 %add1.i, %10
  br i1 %cmp3.i, label %if.end.i.cond.false_crit_edge, label %cond.end

if.end.i.cond.false_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.false:                                       ; preds = %if.end.i.cond.false_crit_edge, %entry.cond.false_crit_edge
  %.str.9.sink.i = phi ptr [ @.str.8, %entry.cond.false_crit_edge ], [ @.str.9, %if.end.i.cond.false_crit_edge ]
  %fs_info5.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 3
  %11 = ptrtoint ptr %fs_info5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fs_info5.i, align 8
  %13 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %eb, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %12, ptr noundef nonnull %.str.9.sink.i, i32 noundef %0, i64 noundef %14, i32 noundef %add, i32 noundef 2) #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.4, i32 noundef 161) #9
  unreachable

cond.end:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %and.i)
  %cmp.not = icmp eq i32 %and.i, 4095
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %call2, i32 %and.i
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr7 = getelementptr i8, ptr %call2, i32 4095
  %15 = call ptr @memcpy(ptr %lebytes, ptr %add.ptr7, i32 %sub)
  %add9 = add nuw nsw i32 %shr.i, 1
  %arrayidx10 = getelementptr %struct.extent_buffer, ptr %eb, i32 0, i32 12, i32 %add9
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx10, align 4
  %call11 = tail call ptr @page_address(ptr noundef %17) #6
  %add.ptr13 = getelementptr i8, ptr %lebytes, i32 %sub
  %18 = ptrtoint ptr %call11 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %call11, align 1
  %20 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %add.ptr13, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %.sink.in = phi ptr [ %lebytes, %if.end ], [ %add.ptr, %if.then ]
  %21 = ptrtoint ptr %.sink.in to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %.sink = load i16, ptr %.sink.in, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %.sink) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lebytes) #6
  ret i16 %22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_set_token_16(ptr noundef %token, ptr noundef %ptr, i32 noundef %off, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  %lebytes = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  %add = add i32 %0, %off
  %shr.i = lshr i32 %add, 12
  %1 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %token, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  %5 = trunc i64 %4 to i32
  %conv1.i = add i32 %add, %5
  %and.i = and i32 %conv1.i, 4095
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lebytes) #6
  %sub = sub nuw nsw i32 4096, %and.i
  %tobool.not = icmp eq ptr %token, null
  br i1 %tobool.not, label %cond.false, label %cond.end, !prof !25

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 161) #9
  unreachable

cond.end:                                         ; preds = %entry
  %kaddr = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 1
  %6 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kaddr, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %cond.false12, label %cond.end13, !prof !25

cond.false12:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.2, i32 noundef 161) #9
  unreachable

cond.end13:                                       ; preds = %cond.end
  %len.i = getelementptr inbounds %struct.extent_buffer, ptr %2, i32 0, i32 1
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp.i = icmp ugt i32 %add, %9
  br i1 %cmp.i, label %cond.end13.cond.false23_crit_edge, label %if.end.i

cond.end13.cond.false23_crit_edge:                ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false23

if.end.i:                                         ; preds = %cond.end13
  %add1.i = add i32 %add, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %9)
  %cmp3.i = icmp ugt i32 %add1.i, %9
  br i1 %cmp3.i, label %if.end.i.cond.false23_crit_edge, label %cond.end24

if.end.i.cond.false23_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false23

cond.false23:                                     ; preds = %if.end.i.cond.false23_crit_edge, %cond.end13.cond.false23_crit_edge
  %.str.9.sink.i = phi ptr [ @.str.8, %cond.end13.cond.false23_crit_edge ], [ @.str.9, %if.end.i.cond.false23_crit_edge ]
  %fs_info5.i = getelementptr inbounds %struct.extent_buffer, ptr %2, i32 0, i32 3
  %10 = ptrtoint ptr %fs_info5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fs_info5.i, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %11, ptr noundef nonnull %.str.9.sink.i, i32 noundef %0, i64 noundef %4, i32 noundef %add, i32 noundef 2) #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 161) #9
  unreachable

cond.end24:                                       ; preds = %if.end.i
  %offset = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 2
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add)
  %cmp.not = icmp ugt i32 %13, %add
  %add27 = add i32 %13, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %add27)
  %cmp28.not = icmp ugt i32 %add1.i, %add27
  %or.cond = or i1 %cmp.not, %cmp28.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kaddr, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %and.i
  %16 = tail call i16 @llvm.bswap.i16(i16 %val) #6
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %16, ptr %add.ptr, align 1
  br label %cleanup

if.end:                                           ; preds = %cond.end24
  %18 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %token, align 4
  %arrayidx = getelementptr %struct.extent_buffer, ptr %19, i32 0, i32 12, i32 %shr.i
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %call31 = tail call ptr @page_address(ptr noundef %21) #6
  %22 = ptrtoint ptr %kaddr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call31, ptr %kaddr, align 4
  %shl = and i32 %add, -4096
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shl, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %and.i)
  %cmp35.not = icmp eq i32 %and.i, 4095
  br i1 %cmp35.not, label %if.end39, label %if.then36

if.then36:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr38 = getelementptr i8, ptr %call31, i32 %and.i
  %24 = tail call i16 @llvm.bswap.i16(i16 %val) #6
  %25 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %24, ptr %add.ptr38, align 1
  br label %cleanup

if.end39:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %26 = tail call i16 @llvm.bswap.i16(i16 %val) #6
  %27 = ptrtoint ptr %lebytes to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %lebytes, align 2
  %add.ptr41 = getelementptr i8, ptr %call31, i32 4095
  %28 = call ptr @memcpy(ptr %add.ptr41, ptr %lebytes, i32 %sub)
  %29 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %token, align 4
  %add45 = add nuw nsw i32 %shr.i, 1
  %arrayidx46 = getelementptr %struct.extent_buffer, ptr %30, i32 0, i32 12, i32 %add45
  %31 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx46, align 4
  %call47 = tail call ptr @page_address(ptr noundef %32) #6
  %33 = ptrtoint ptr %kaddr to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call47, ptr %kaddr, align 4
  %shl50 = shl i32 %add45, 12
  %34 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shl50, ptr %offset, align 4
  %add.ptr54 = getelementptr i8, ptr %lebytes, i32 %sub
  %35 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr54, align 1
  %37 = ptrtoint ptr %call47 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %call47, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then36, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lebytes) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_set_16(ptr nocapture noundef readonly %eb, ptr noundef %ptr, i32 noundef %off, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  %lebytes = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  %add = add i32 %0, %off
  %1 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %eb, align 8
  %3 = trunc i64 %2 to i32
  %conv1.i = add i32 %add, %3
  %and.i = and i32 %conv1.i, 4095
  %shr.i = lshr i32 %add, 12
  %arrayidx = getelementptr %struct.extent_buffer, ptr %eb, i32 0, i32 12, i32 %shr.i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call ptr @page_address(ptr noundef %5) #6
  %sub = sub nuw nsw i32 4096, %and.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %lebytes) #6
  %len.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 1
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp.i = icmp ugt i32 %add, %7
  br i1 %cmp.i, label %entry.cond.false_crit_edge, label %if.end.i

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

if.end.i:                                         ; preds = %entry
  %add1.i = add i32 %add, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %7)
  %cmp3.i = icmp ugt i32 %add1.i, %7
  br i1 %cmp3.i, label %if.end.i.cond.false_crit_edge, label %cond.end

if.end.i.cond.false_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.false:                                       ; preds = %if.end.i.cond.false_crit_edge, %entry.cond.false_crit_edge
  %.str.9.sink.i = phi ptr [ @.str.8, %entry.cond.false_crit_edge ], [ @.str.9, %if.end.i.cond.false_crit_edge ]
  %fs_info5.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 3
  %8 = ptrtoint ptr %fs_info5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fs_info5.i, align 8
  %10 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %eb, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %9, ptr noundef nonnull %.str.9.sink.i, i32 noundef %0, i64 noundef %11, i32 noundef %add, i32 noundef 2) #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.4, i32 noundef 161) #9
  unreachable

cond.end:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %and.i)
  %cmp.not = icmp eq i32 %and.i, 4095
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %call2, i32 %and.i
  %12 = tail call i16 @llvm.bswap.i16(i16 %val) #6
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %add.ptr, align 1
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = tail call i16 @llvm.bswap.i16(i16 %val) #6
  %15 = ptrtoint ptr %lebytes to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %lebytes, align 2
  %add.ptr6 = getelementptr i8, ptr %call2, i32 4095
  %16 = call ptr @memcpy(ptr %add.ptr6, ptr %lebytes, i32 %sub)
  %add9 = add nuw nsw i32 %shr.i, 1
  %arrayidx10 = getelementptr %struct.extent_buffer, ptr %eb, i32 0, i32 12, i32 %add9
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx10, align 4
  %call11 = tail call ptr @page_address(ptr noundef %18) #6
  %add.ptr13 = getelementptr i8, ptr %lebytes, i32 %sub
  %19 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr13, align 1
  %21 = ptrtoint ptr %call11 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %call11, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %lebytes) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_get_token_32(ptr noundef %token, ptr noundef %ptr, i32 noundef %off) local_unnamed_addr #0 align 64 {
entry:
  %lebytes = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  %add = add i32 %0, %off
  %shr.i = lshr i32 %add, 12
  %1 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %token, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  %5 = trunc i64 %4 to i32
  %conv1.i = add i32 %add, %5
  %and.i = and i32 %conv1.i, 4095
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lebytes) #6
  %sub = sub nuw nsw i32 4096, %and.i
  %tobool.not = icmp eq ptr %token, null
  %6 = ptrtoint ptr %lebytes to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %lebytes, align 4
  br i1 %tobool.not, label %cond.false, label %cond.end, !prof !25

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 162) #9
  unreachable

cond.end:                                         ; preds = %entry
  %kaddr = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 1
  %7 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kaddr, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %cond.false12, label %cond.end13, !prof !25

cond.false12:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.2, i32 noundef 162) #9
  unreachable

cond.end13:                                       ; preds = %cond.end
  %len.i = getelementptr inbounds %struct.extent_buffer, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %10)
  %cmp.i = icmp ugt i32 %add, %10
  br i1 %cmp.i, label %cond.end13.cond.false23_crit_edge, label %if.end.i

cond.end13.cond.false23_crit_edge:                ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false23

if.end.i:                                         ; preds = %cond.end13
  %add1.i = add i32 %add, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %10)
  %cmp3.i = icmp ugt i32 %add1.i, %10
  br i1 %cmp3.i, label %if.end.i.cond.false23_crit_edge, label %cond.end24

if.end.i.cond.false23_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false23

cond.false23:                                     ; preds = %if.end.i.cond.false23_crit_edge, %cond.end13.cond.false23_crit_edge
  %.str.9.sink.i = phi ptr [ @.str.8, %cond.end13.cond.false23_crit_edge ], [ @.str.9, %if.end.i.cond.false23_crit_edge ]
  %fs_info5.i = getelementptr inbounds %struct.extent_buffer, ptr %2, i32 0, i32 3
  %11 = ptrtoint ptr %fs_info5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fs_info5.i, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %12, ptr noundef nonnull %.str.9.sink.i, i32 noundef %0, i64 noundef %4, i32 noundef %add, i32 noundef 4) #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 162) #9
  unreachable

cond.end24:                                       ; preds = %if.end.i
  %offset = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 2
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %add)
  %cmp.not = icmp ugt i32 %14, %add
  %add27 = add i32 %14, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %add27)
  %cmp28.not = icmp ugt i32 %add1.i, %add27
  %or.cond = or i1 %cmp.not, %cmp28.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %kaddr, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %and.i
  br label %cleanup

if.end:                                           ; preds = %cond.end24
  %17 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %token, align 4
  %arrayidx = getelementptr %struct.extent_buffer, ptr %18, i32 0, i32 12, i32 %shr.i
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %call32 = tail call ptr @page_address(ptr noundef %20) #6
  %21 = ptrtoint ptr %kaddr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call32, ptr %kaddr, align 4
  %shl = and i32 %add, -4096
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shl, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4093, i32 %and.i)
  %cmp36 = icmp ult i32 %and.i, 4093
  %add.ptr39 = getelementptr i8, ptr %call32, i32 %and.i
  br i1 %cmp36, label %if.end.cleanup_crit_edge, label %if.end41

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %23 = call ptr @memcpy(ptr %lebytes, ptr %add.ptr39, i32 %sub)
  %24 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %token, align 4
  %add46 = add nuw nsw i32 %shr.i, 1
  %arrayidx47 = getelementptr %struct.extent_buffer, ptr %25, i32 0, i32 12, i32 %add46
  %26 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx47, align 4
  %call48 = tail call ptr @page_address(ptr noundef %27) #6
  %28 = ptrtoint ptr %kaddr to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call48, ptr %kaddr, align 4
  %shl51 = shl i32 %add46, 12
  %29 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shl51, ptr %offset, align 4
  %add.ptr54 = getelementptr i8, ptr %lebytes, i32 %sub
  %sub56 = add nsw i32 %and.i, -4092
  %30 = call ptr @memcpy(ptr %add.ptr54, ptr %call48, i32 %sub56)
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end.cleanup_crit_edge, %if.then
  %.sink.in = phi ptr [ %lebytes, %if.end41 ], [ %add.ptr, %if.then ], [ %add.ptr39, %if.end.cleanup_crit_edge ]
  %31 = ptrtoint ptr %.sink.in to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %.sink = load i32, ptr %.sink.in, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %.sink) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lebytes) #6
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_get_32(ptr nocapture noundef readonly %eb, ptr noundef %ptr, i32 noundef %off) local_unnamed_addr #0 align 64 {
entry:
  %lebytes = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  %add = add i32 %0, %off
  %1 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %eb, align 8
  %3 = trunc i64 %2 to i32
  %conv1.i = add i32 %add, %3
  %and.i = and i32 %conv1.i, 4095
  %shr.i = lshr i32 %add, 12
  %arrayidx = getelementptr %struct.extent_buffer, ptr %eb, i32 0, i32 12, i32 %shr.i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call ptr @page_address(ptr noundef %5) #6
  %sub = sub nuw nsw i32 4096, %and.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lebytes) #6
  %len.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 1
  %6 = ptrtoint ptr %lebytes to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %lebytes, align 4
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %8)
  %cmp.i = icmp ugt i32 %add, %8
  br i1 %cmp.i, label %entry.cond.false_crit_edge, label %if.end.i

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

if.end.i:                                         ; preds = %entry
  %add1.i = add i32 %add, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %8)
  %cmp3.i = icmp ugt i32 %add1.i, %8
  br i1 %cmp3.i, label %if.end.i.cond.false_crit_edge, label %cond.end

if.end.i.cond.false_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.false:                                       ; preds = %if.end.i.cond.false_crit_edge, %entry.cond.false_crit_edge
  %.str.9.sink.i = phi ptr [ @.str.8, %entry.cond.false_crit_edge ], [ @.str.9, %if.end.i.cond.false_crit_edge ]
  %fs_info5.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 3
  %9 = ptrtoint ptr %fs_info5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fs_info5.i, align 8
  %11 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %eb, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %10, ptr noundef nonnull %.str.9.sink.i, i32 noundef %0, i64 noundef %12, i32 noundef %add, i32 noundef 4) #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.4, i32 noundef 162) #9
  unreachable

cond.end:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4093, i32 %and.i)
  %cmp = icmp ult i32 %and.i, 4093
  %add.ptr = getelementptr i8, ptr %call2, i32 %and.i
  br i1 %cmp, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = call ptr @memcpy(ptr %lebytes, ptr %add.ptr, i32 %sub)
  %add9 = add nuw nsw i32 %shr.i, 1
  %arrayidx10 = getelementptr %struct.extent_buffer, ptr %eb, i32 0, i32 12, i32 %add9
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx10, align 4
  %call11 = tail call ptr @page_address(ptr noundef %15) #6
  %add.ptr13 = getelementptr i8, ptr %lebytes, i32 %sub
  %sub14 = add nsw i32 %and.i, -4092
  %16 = call ptr @memcpy(ptr %add.ptr13, ptr %call11, i32 %sub14)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end.cleanup_crit_edge
  %.sink.in = phi ptr [ %lebytes, %if.end ], [ %add.ptr, %cond.end.cleanup_crit_edge ]
  %17 = ptrtoint ptr %.sink.in to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %.sink = load i32, ptr %.sink.in, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %.sink) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lebytes) #6
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_set_token_32(ptr noundef %token, ptr noundef %ptr, i32 noundef %off, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %lebytes = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  %add = add i32 %0, %off
  %shr.i = lshr i32 %add, 12
  %1 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %token, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  %5 = trunc i64 %4 to i32
  %conv1.i = add i32 %add, %5
  %and.i = and i32 %conv1.i, 4095
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lebytes) #6
  %sub = sub nuw nsw i32 4096, %and.i
  %tobool.not = icmp eq ptr %token, null
  br i1 %tobool.not, label %cond.false, label %cond.end, !prof !25

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 162) #9
  unreachable

cond.end:                                         ; preds = %entry
  %kaddr = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 1
  %6 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kaddr, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %cond.false12, label %cond.end13, !prof !25

cond.false12:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.2, i32 noundef 162) #9
  unreachable

cond.end13:                                       ; preds = %cond.end
  %len.i = getelementptr inbounds %struct.extent_buffer, ptr %2, i32 0, i32 1
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp.i = icmp ugt i32 %add, %9
  br i1 %cmp.i, label %cond.end13.cond.false23_crit_edge, label %if.end.i

cond.end13.cond.false23_crit_edge:                ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false23

if.end.i:                                         ; preds = %cond.end13
  %add1.i = add i32 %add, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %9)
  %cmp3.i = icmp ugt i32 %add1.i, %9
  br i1 %cmp3.i, label %if.end.i.cond.false23_crit_edge, label %cond.end24

if.end.i.cond.false23_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false23

cond.false23:                                     ; preds = %if.end.i.cond.false23_crit_edge, %cond.end13.cond.false23_crit_edge
  %.str.9.sink.i = phi ptr [ @.str.8, %cond.end13.cond.false23_crit_edge ], [ @.str.9, %if.end.i.cond.false23_crit_edge ]
  %fs_info5.i = getelementptr inbounds %struct.extent_buffer, ptr %2, i32 0, i32 3
  %10 = ptrtoint ptr %fs_info5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fs_info5.i, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %11, ptr noundef nonnull %.str.9.sink.i, i32 noundef %0, i64 noundef %4, i32 noundef %add, i32 noundef 4) #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 162) #9
  unreachable

cond.end24:                                       ; preds = %if.end.i
  %offset = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 2
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add)
  %cmp.not = icmp ugt i32 %13, %add
  %add27 = add i32 %13, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %add27)
  %cmp28.not = icmp ugt i32 %add1.i, %add27
  %or.cond = or i1 %cmp.not, %cmp28.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kaddr, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %and.i
  %16 = tail call i32 @llvm.bswap.i32(i32 %val) #6
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %add.ptr, align 1
  br label %cleanup

if.end:                                           ; preds = %cond.end24
  %18 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %token, align 4
  %arrayidx = getelementptr %struct.extent_buffer, ptr %19, i32 0, i32 12, i32 %shr.i
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %call31 = tail call ptr @page_address(ptr noundef %21) #6
  %22 = ptrtoint ptr %kaddr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call31, ptr %kaddr, align 4
  %shl = and i32 %add, -4096
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shl, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4093, i32 %and.i)
  %cmp35 = icmp ult i32 %and.i, 4093
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr38 = getelementptr i8, ptr %call31, i32 %and.i
  %24 = tail call i32 @llvm.bswap.i32(i32 %val) #6
  %25 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %add.ptr38, align 1
  br label %cleanup

if.end39:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %26 = tail call i32 @llvm.bswap.i32(i32 %val) #6
  %27 = ptrtoint ptr %lebytes to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %lebytes, align 4
  %add.ptr41 = getelementptr i8, ptr %call31, i32 %and.i
  %28 = call ptr @memcpy(ptr %add.ptr41, ptr %lebytes, i32 %sub)
  %29 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %token, align 4
  %add45 = add nuw nsw i32 %shr.i, 1
  %arrayidx46 = getelementptr %struct.extent_buffer, ptr %30, i32 0, i32 12, i32 %add45
  %31 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx46, align 4
  %call47 = tail call ptr @page_address(ptr noundef %32) #6
  %33 = ptrtoint ptr %kaddr to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call47, ptr %kaddr, align 4
  %shl50 = shl i32 %add45, 12
  %34 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shl50, ptr %offset, align 4
  %add.ptr54 = getelementptr i8, ptr %lebytes, i32 %sub
  %sub55 = add nsw i32 %and.i, -4092
  %35 = call ptr @memcpy(ptr %call47, ptr %add.ptr54, i32 %sub55)
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then36, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lebytes) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_set_32(ptr nocapture noundef readonly %eb, ptr noundef %ptr, i32 noundef %off, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %lebytes = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  %add = add i32 %0, %off
  %1 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %eb, align 8
  %3 = trunc i64 %2 to i32
  %conv1.i = add i32 %add, %3
  %and.i = and i32 %conv1.i, 4095
  %shr.i = lshr i32 %add, 12
  %arrayidx = getelementptr %struct.extent_buffer, ptr %eb, i32 0, i32 12, i32 %shr.i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call ptr @page_address(ptr noundef %5) #6
  %sub = sub nuw nsw i32 4096, %and.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lebytes) #6
  %len.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 1
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp.i = icmp ugt i32 %add, %7
  br i1 %cmp.i, label %entry.cond.false_crit_edge, label %if.end.i

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

if.end.i:                                         ; preds = %entry
  %add1.i = add i32 %add, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %7)
  %cmp3.i = icmp ugt i32 %add1.i, %7
  br i1 %cmp3.i, label %if.end.i.cond.false_crit_edge, label %cond.end

if.end.i.cond.false_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.false:                                       ; preds = %if.end.i.cond.false_crit_edge, %entry.cond.false_crit_edge
  %.str.9.sink.i = phi ptr [ @.str.8, %entry.cond.false_crit_edge ], [ @.str.9, %if.end.i.cond.false_crit_edge ]
  %fs_info5.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 3
  %8 = ptrtoint ptr %fs_info5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fs_info5.i, align 8
  %10 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %eb, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %9, ptr noundef nonnull %.str.9.sink.i, i32 noundef %0, i64 noundef %11, i32 noundef %add, i32 noundef 4) #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.4, i32 noundef 162) #9
  unreachable

cond.end:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4093, i32 %and.i)
  %cmp = icmp ult i32 %and.i, 4093
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %call2, i32 %and.i
  %12 = tail call i32 @llvm.bswap.i32(i32 %val) #6
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %add.ptr, align 1
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %val) #6
  %15 = ptrtoint ptr %lebytes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %lebytes, align 4
  %add.ptr6 = getelementptr i8, ptr %call2, i32 %and.i
  %16 = call ptr @memcpy(ptr %add.ptr6, ptr %lebytes, i32 %sub)
  %add9 = add nuw nsw i32 %shr.i, 1
  %arrayidx10 = getelementptr %struct.extent_buffer, ptr %eb, i32 0, i32 12, i32 %add9
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx10, align 4
  %call11 = tail call ptr @page_address(ptr noundef %18) #6
  %add.ptr13 = getelementptr i8, ptr %lebytes, i32 %sub
  %sub14 = add nsw i32 %and.i, -4092
  %19 = call ptr @memcpy(ptr %call11, ptr %add.ptr13, i32 %sub14)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lebytes) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @btrfs_get_token_64(ptr noundef %token, ptr noundef %ptr, i32 noundef %off) local_unnamed_addr #0 align 64 {
entry:
  %lebytes = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  %add = add i32 %0, %off
  %shr.i = lshr i32 %add, 12
  %1 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %token, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  %5 = trunc i64 %4 to i32
  %conv1.i = add i32 %add, %5
  %and.i = and i32 %conv1.i, 4095
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lebytes) #6
  %sub = sub nuw nsw i32 4096, %and.i
  %tobool.not = icmp eq ptr %token, null
  %6 = ptrtoint ptr %lebytes to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %lebytes, align 8
  br i1 %tobool.not, label %cond.false, label %cond.end, !prof !25

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 163) #9
  unreachable

cond.end:                                         ; preds = %entry
  %kaddr = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 1
  %7 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kaddr, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %cond.false12, label %cond.end13, !prof !25

cond.false12:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.2, i32 noundef 163) #9
  unreachable

cond.end13:                                       ; preds = %cond.end
  %len.i = getelementptr inbounds %struct.extent_buffer, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %10)
  %cmp.i = icmp ugt i32 %add, %10
  br i1 %cmp.i, label %cond.end13.cond.false23_crit_edge, label %if.end.i

cond.end13.cond.false23_crit_edge:                ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false23

if.end.i:                                         ; preds = %cond.end13
  %add1.i = add i32 %add, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %10)
  %cmp3.i = icmp ugt i32 %add1.i, %10
  br i1 %cmp3.i, label %if.end.i.cond.false23_crit_edge, label %cond.end24

if.end.i.cond.false23_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false23

cond.false23:                                     ; preds = %if.end.i.cond.false23_crit_edge, %cond.end13.cond.false23_crit_edge
  %.str.9.sink.i = phi ptr [ @.str.8, %cond.end13.cond.false23_crit_edge ], [ @.str.9, %if.end.i.cond.false23_crit_edge ]
  %fs_info5.i = getelementptr inbounds %struct.extent_buffer, ptr %2, i32 0, i32 3
  %11 = ptrtoint ptr %fs_info5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fs_info5.i, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %12, ptr noundef nonnull %.str.9.sink.i, i32 noundef %0, i64 noundef %4, i32 noundef %add, i32 noundef 8) #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 163) #9
  unreachable

cond.end24:                                       ; preds = %if.end.i
  %offset = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 2
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %add)
  %cmp.not = icmp ugt i32 %14, %add
  %add27 = add i32 %14, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %add27)
  %cmp28.not = icmp ugt i32 %add1.i, %add27
  %or.cond = or i1 %cmp.not, %cmp28.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %kaddr, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %and.i
  br label %cleanup

if.end:                                           ; preds = %cond.end24
  %17 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %token, align 4
  %arrayidx = getelementptr %struct.extent_buffer, ptr %18, i32 0, i32 12, i32 %shr.i
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %call32 = tail call ptr @page_address(ptr noundef %20) #6
  %21 = ptrtoint ptr %kaddr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call32, ptr %kaddr, align 4
  %shl = and i32 %add, -4096
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shl, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4089, i32 %and.i)
  %cmp36 = icmp ult i32 %and.i, 4089
  %add.ptr39 = getelementptr i8, ptr %call32, i32 %and.i
  br i1 %cmp36, label %if.end.cleanup_crit_edge, label %if.end41

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %23 = call ptr @memcpy(ptr %lebytes, ptr %add.ptr39, i32 %sub)
  %24 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %token, align 4
  %add46 = add nuw nsw i32 %shr.i, 1
  %arrayidx47 = getelementptr %struct.extent_buffer, ptr %25, i32 0, i32 12, i32 %add46
  %26 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx47, align 4
  %call48 = tail call ptr @page_address(ptr noundef %27) #6
  %28 = ptrtoint ptr %kaddr to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call48, ptr %kaddr, align 4
  %shl51 = shl i32 %add46, 12
  %29 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shl51, ptr %offset, align 4
  %add.ptr54 = getelementptr i8, ptr %lebytes, i32 %sub
  %sub56 = add nsw i32 %and.i, -4088
  %30 = call ptr @memcpy(ptr %add.ptr54, ptr %call48, i32 %sub56)
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end.cleanup_crit_edge, %if.then
  %.sink.in = phi ptr [ %lebytes, %if.end41 ], [ %add.ptr, %if.then ], [ %add.ptr39, %if.end.cleanup_crit_edge ]
  %31 = ptrtoint ptr %.sink.in to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %.sink = load i64, ptr %.sink.in, align 1
  %32 = tail call i64 @llvm.bswap.i64(i64 %.sink) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lebytes) #6
  ret i64 %32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @btrfs_get_64(ptr nocapture noundef readonly %eb, ptr noundef %ptr, i32 noundef %off) local_unnamed_addr #0 align 64 {
entry:
  %lebytes = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  %add = add i32 %0, %off
  %1 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %eb, align 8
  %3 = trunc i64 %2 to i32
  %conv1.i = add i32 %add, %3
  %and.i = and i32 %conv1.i, 4095
  %shr.i = lshr i32 %add, 12
  %arrayidx = getelementptr %struct.extent_buffer, ptr %eb, i32 0, i32 12, i32 %shr.i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call ptr @page_address(ptr noundef %5) #6
  %sub = sub nuw nsw i32 4096, %and.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lebytes) #6
  %len.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 1
  %6 = ptrtoint ptr %lebytes to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %lebytes, align 8
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %8)
  %cmp.i = icmp ugt i32 %add, %8
  br i1 %cmp.i, label %entry.cond.false_crit_edge, label %if.end.i

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

if.end.i:                                         ; preds = %entry
  %add1.i = add i32 %add, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %8)
  %cmp3.i = icmp ugt i32 %add1.i, %8
  br i1 %cmp3.i, label %if.end.i.cond.false_crit_edge, label %cond.end

if.end.i.cond.false_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.false:                                       ; preds = %if.end.i.cond.false_crit_edge, %entry.cond.false_crit_edge
  %.str.9.sink.i = phi ptr [ @.str.8, %entry.cond.false_crit_edge ], [ @.str.9, %if.end.i.cond.false_crit_edge ]
  %fs_info5.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 3
  %9 = ptrtoint ptr %fs_info5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fs_info5.i, align 8
  %11 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %eb, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %10, ptr noundef nonnull %.str.9.sink.i, i32 noundef %0, i64 noundef %12, i32 noundef %add, i32 noundef 8) #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.4, i32 noundef 163) #9
  unreachable

cond.end:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4089, i32 %and.i)
  %cmp = icmp ult i32 %and.i, 4089
  %add.ptr = getelementptr i8, ptr %call2, i32 %and.i
  br i1 %cmp, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = call ptr @memcpy(ptr %lebytes, ptr %add.ptr, i32 %sub)
  %add9 = add nuw nsw i32 %shr.i, 1
  %arrayidx10 = getelementptr %struct.extent_buffer, ptr %eb, i32 0, i32 12, i32 %add9
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx10, align 4
  %call11 = tail call ptr @page_address(ptr noundef %15) #6
  %add.ptr13 = getelementptr i8, ptr %lebytes, i32 %sub
  %sub14 = add nsw i32 %and.i, -4088
  %16 = call ptr @memcpy(ptr %add.ptr13, ptr %call11, i32 %sub14)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end.cleanup_crit_edge
  %.sink.in = phi ptr [ %lebytes, %if.end ], [ %add.ptr, %cond.end.cleanup_crit_edge ]
  %17 = ptrtoint ptr %.sink.in to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %.sink = load i64, ptr %.sink.in, align 1
  %18 = tail call i64 @llvm.bswap.i64(i64 %.sink) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lebytes) #6
  ret i64 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_set_token_64(ptr noundef %token, ptr noundef %ptr, i32 noundef %off, i64 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %lebytes = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  %add = add i32 %0, %off
  %shr.i = lshr i32 %add, 12
  %1 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %token, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  %5 = trunc i64 %4 to i32
  %conv1.i = add i32 %add, %5
  %and.i = and i32 %conv1.i, 4095
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lebytes) #6
  %sub = sub nuw nsw i32 4096, %and.i
  %tobool.not = icmp eq ptr %token, null
  br i1 %tobool.not, label %cond.false, label %cond.end, !prof !25

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str, i32 noundef 163) #9
  unreachable

cond.end:                                         ; preds = %entry
  %kaddr = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 1
  %6 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kaddr, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %cond.false12, label %cond.end13, !prof !25

cond.false12:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.2, i32 noundef 163) #9
  unreachable

cond.end13:                                       ; preds = %cond.end
  %len.i = getelementptr inbounds %struct.extent_buffer, ptr %2, i32 0, i32 1
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp.i = icmp ugt i32 %add, %9
  br i1 %cmp.i, label %cond.end13.cond.false23_crit_edge, label %if.end.i

cond.end13.cond.false23_crit_edge:                ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false23

if.end.i:                                         ; preds = %cond.end13
  %add1.i = add i32 %add, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %9)
  %cmp3.i = icmp ugt i32 %add1.i, %9
  br i1 %cmp3.i, label %if.end.i.cond.false23_crit_edge, label %cond.end24

if.end.i.cond.false23_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false23

cond.false23:                                     ; preds = %if.end.i.cond.false23_crit_edge, %cond.end13.cond.false23_crit_edge
  %.str.9.sink.i = phi ptr [ @.str.8, %cond.end13.cond.false23_crit_edge ], [ @.str.9, %if.end.i.cond.false23_crit_edge ]
  %fs_info5.i = getelementptr inbounds %struct.extent_buffer, ptr %2, i32 0, i32 3
  %10 = ptrtoint ptr %fs_info5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fs_info5.i, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %11, ptr noundef nonnull %.str.9.sink.i, i32 noundef %0, i64 noundef %4, i32 noundef %add, i32 noundef 8) #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 163) #9
  unreachable

cond.end24:                                       ; preds = %if.end.i
  %offset = getelementptr inbounds %struct.btrfs_map_token, ptr %token, i32 0, i32 2
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add)
  %cmp.not = icmp ugt i32 %13, %add
  %add27 = add i32 %13, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %add27)
  %cmp28.not = icmp ugt i32 %add1.i, %add27
  %or.cond = or i1 %cmp.not, %cmp28.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kaddr, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %and.i
  %16 = tail call i64 @llvm.bswap.i64(i64 %val) #6
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %add.ptr, align 1
  br label %cleanup

if.end:                                           ; preds = %cond.end24
  %18 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %token, align 4
  %arrayidx = getelementptr %struct.extent_buffer, ptr %19, i32 0, i32 12, i32 %shr.i
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %call31 = tail call ptr @page_address(ptr noundef %21) #6
  %22 = ptrtoint ptr %kaddr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call31, ptr %kaddr, align 4
  %shl = and i32 %add, -4096
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shl, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4089, i32 %and.i)
  %cmp35 = icmp ult i32 %and.i, 4089
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr38 = getelementptr i8, ptr %call31, i32 %and.i
  %24 = tail call i64 @llvm.bswap.i64(i64 %val) #6
  %25 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %24, ptr %add.ptr38, align 1
  br label %cleanup

if.end39:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %26 = tail call i64 @llvm.bswap.i64(i64 %val) #6
  %27 = ptrtoint ptr %lebytes to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %lebytes, align 8
  %add.ptr41 = getelementptr i8, ptr %call31, i32 %and.i
  %28 = call ptr @memcpy(ptr %add.ptr41, ptr %lebytes, i32 %sub)
  %29 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %token, align 4
  %add45 = add nuw nsw i32 %shr.i, 1
  %arrayidx46 = getelementptr %struct.extent_buffer, ptr %30, i32 0, i32 12, i32 %add45
  %31 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx46, align 4
  %call47 = tail call ptr @page_address(ptr noundef %32) #6
  %33 = ptrtoint ptr %kaddr to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call47, ptr %kaddr, align 4
  %shl50 = shl i32 %add45, 12
  %34 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shl50, ptr %offset, align 4
  %add.ptr54 = getelementptr i8, ptr %lebytes, i32 %sub
  %sub55 = add nsw i32 %and.i, -4088
  %35 = call ptr @memcpy(ptr %call47, ptr %add.ptr54, i32 %sub55)
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then36, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lebytes) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_set_64(ptr nocapture noundef readonly %eb, ptr noundef %ptr, i32 noundef %off, i64 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %lebytes = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  %add = add i32 %0, %off
  %1 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %eb, align 8
  %3 = trunc i64 %2 to i32
  %conv1.i = add i32 %add, %3
  %and.i = and i32 %conv1.i, 4095
  %shr.i = lshr i32 %add, 12
  %arrayidx = getelementptr %struct.extent_buffer, ptr %eb, i32 0, i32 12, i32 %shr.i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call ptr @page_address(ptr noundef %5) #6
  %sub = sub nuw nsw i32 4096, %and.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lebytes) #6
  %len.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 1
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp.i = icmp ugt i32 %add, %7
  br i1 %cmp.i, label %entry.cond.false_crit_edge, label %if.end.i

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

if.end.i:                                         ; preds = %entry
  %add1.i = add i32 %add, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i, i32 %7)
  %cmp3.i = icmp ugt i32 %add1.i, %7
  br i1 %cmp3.i, label %if.end.i.cond.false_crit_edge, label %cond.end

if.end.i.cond.false_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

cond.false:                                       ; preds = %if.end.i.cond.false_crit_edge, %entry.cond.false_crit_edge
  %.str.9.sink.i = phi ptr [ @.str.8, %entry.cond.false_crit_edge ], [ @.str.9, %if.end.i.cond.false_crit_edge ]
  %fs_info5.i = getelementptr inbounds %struct.extent_buffer, ptr %eb, i32 0, i32 3
  %8 = ptrtoint ptr %fs_info5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fs_info5.i, align 8
  %10 = ptrtoint ptr %eb to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %eb, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %9, ptr noundef nonnull %.str.9.sink.i, i32 noundef %0, i64 noundef %11, i32 noundef %add, i32 noundef 8) #10
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.4, i32 noundef 163) #9
  unreachable

cond.end:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4089, i32 %and.i)
  %cmp = icmp ult i32 %and.i, 4089
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %call2, i32 %and.i
  %12 = tail call i64 @llvm.bswap.i64(i64 %val) #6
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %add.ptr, align 1
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = tail call i64 @llvm.bswap.i64(i64 %val) #6
  %15 = ptrtoint ptr %lebytes to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %lebytes, align 8
  %add.ptr6 = getelementptr i8, ptr %call2, i32 %and.i
  %16 = call ptr @memcpy(ptr %add.ptr6, ptr %lebytes, i32 %sub)
  %add9 = add nuw nsw i32 %shr.i, 1
  %arrayidx10 = getelementptr %struct.extent_buffer, ptr %eb, i32 0, i32 12, i32 %add9
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx10, align 4
  %call11 = tail call ptr @page_address(ptr noundef %18) #6
  %add.ptr13 = getelementptr i8, ptr %lebytes, i32 %sub
  %sub14 = add nsw i32 %and.i, -4088
  %19 = call ptr @memcpy(ptr %call11, ptr %add.ptr13, i32 %sub14)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lebytes) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_node_key(ptr noundef %eb, ptr noundef %disk_key, i32 noundef %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul.i = mul i32 %nr, 33
  %add.i = add i32 %mul.i, 101
  tail call void @read_extent_buffer(ptr noundef %eb, ptr noundef %disk_key, i32 noundef %add.i, i32 noundef 17) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold noreturn }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/struct-funcs.c", i32 160, i32 1}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!8 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @assertfail._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @assertfail._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/btrfs/struct-funcs.c", i32 16, i32 3}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/btrfs/struct-funcs.c", i32 22, i32 3}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{i64 2158180577, i64 2158181059, i64 2158180614, i64 2158180670, i64 2158180704, i64 2158180728, i64 2158180769, i64 2158180790, i64 2158180818, i64 2158180852}
!27 = !{!"auto-init"}
