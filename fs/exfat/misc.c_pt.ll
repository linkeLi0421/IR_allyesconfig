; ModuleID = '/llk/IR_all_yes/fs/exfat/misc.c_pt.bc'
source_filename = "../fs/exfat/misc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.__va_list = type { ptr }
%struct.va_format = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.exfat_sb_info = type { i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.exfat_mount_options, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.callback_head }
%struct.exfat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, ptr, i32, i8, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.exfat_chain = type { i32, i32, i8 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"error, %pV\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"exFAT-fs (%s): fs panic from previous error\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Filesystem has been set read-only\00", [62 x i8] zeroinitializer }, align 32
@exfat_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%sexFAT-fs (%s): %pV\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"exfat_msg\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/exfat/misc.c\00", [16 x i8] zeroinitializer }, align 32
@exfat_msg._entry_ptr = internal global ptr @exfat_msg._entry, section ".printk_index", align 4
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 106, i64 107, i64 112]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 36, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 41, i32 9 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 45, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private constant [19 x i8] c"../fs/exfat/misc.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 62, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 354, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @exfat_msg._entry, ptr @exfat_msg._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exfat_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @__exfat_fs_error(ptr noundef %sb, i32 noundef %report, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  %vaf = alloca %struct.va_format, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #11
  %2 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #11
  %3 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %vaf, align 4, !annotation !24
  %4 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %report)
  %tobool.not = icmp eq i32 %report, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.va_start(ptr nonnull %args)
  %6 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fmt, ptr %vaf, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %args, ptr %4, align 4
  call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %vaf) #14
  call void @llvm.va_end(ptr nonnull %args)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %errors = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 23, i32 6
  %8 = ptrtoint ptr %errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %errors, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end.if.end8_crit_edge [
    i32 1, label %if.then2
    i32 2, label %land.lhs.true
  ]

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.2, ptr noundef %s_id) #15
  unreachable

land.lhs.true:                                    ; preds = %if.end
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %11 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then6, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %12, 1
  %13 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %s_flags.i, align 4
  call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %sb, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #14
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @exfat_msg(ptr noundef %sb, ptr noundef %level, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #11
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #11
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !24
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %s_id = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 39
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %level, ptr noundef %s_id, ptr noundef nonnull %vaf) #16
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exfat_get_entry_time(ptr nocapture noundef readonly %sbi, ptr nocapture noundef %ts, i8 noundef zeroext %tz, i16 noundef zeroext %time, i16 noundef zeroext %date, i8 noundef zeroext %time_cs) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i16 @llvm.bswap.i16(i16 %time)
  %1 = tail call i16 @llvm.bswap.i16(i16 %date)
  %conv = zext i16 %1 to i32
  %2 = lshr i32 %conv, 9
  %add = add nuw nsw i32 %2, 1980
  %3 = lshr i32 %conv, 5
  %and = and i32 %3, 15
  %and4 = and i32 %conv, 31
  %conv5 = zext i16 %0 to i32
  %4 = lshr i32 %conv5, 11
  %5 = lshr i32 %conv5, 5
  %and9 = and i32 %5, 63
  %and11 = shl nuw nsw i32 %conv5, 1
  %shl = and i32 %and11, 62
  %call = tail call i64 @mktime64(i32 noundef %add, i32 noundef %and, i32 noundef %and4, i32 noundef %4, i32 noundef %and9, i32 noundef %shl) #11
  %6 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %time_cs)
  %tobool.not = icmp eq i8 %time_cs, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %div44 = udiv i8 %time_cs, 100
  %7 = zext i8 %div44 to i64
  %add15 = add i64 %call, %7
  %8 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %add15, ptr %ts, align 8
  %9 = mul i8 %div44, 100
  %rem45.decomposed = sub i8 %time_cs, %9
  %rem.zext = zext i8 %rem45.decomposed to i32
  %mul17 = mul nuw nsw i32 %rem.zext, 10000000
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mul17.sink = phi i32 [ %mul17, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %10 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul17.sink, ptr %10, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %tz)
  %tobool21.not = icmp sgt i8 %tz, -1
  br i1 %tobool21.not, label %if.else26, label %if.then22

if.then22:                                        ; preds = %if.end
  %and24 = and i8 %tz, 127
  %conv.i = zext i8 %and24 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %and24)
  %cmp.i = icmp ult i8 %and24, 64
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  %mul3.i = mul nuw nsw i32 %conv.i, 900
  %12 = zext i32 %mul3.i to i64
  %13 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ts, align 8
  %sub.i = sub i64 %14, %12
  br label %if.end30

if.else.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  %sub6.i = sub nuw nsw i32 128, %conv.i
  %mul8.i = mul nuw nsw i32 %sub6.i, 900
  %conv9.i43 = zext i32 %mul8.i to i64
  %15 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ts, align 8
  %add.i = add i64 %16, %conv9.i43
  br label %if.end30

if.else26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %time_offset = getelementptr inbounds %struct.exfat_sb_info, ptr %sbi, i32 0, i32 23, i32 8
  %17 = ptrtoint ptr %time_offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %time_offset, align 4
  %mul27 = mul i32 %18, 60
  %conv28 = sext i32 %mul27 to i64
  %19 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ts, align 8
  %sub = sub i64 %20, %conv28
  br label %if.end30

if.end30:                                         ; preds = %if.else26, %if.else.i, %if.then.i
  %storemerge = phi i64 [ %sub, %if.else26 ], [ %add.i, %if.else.i ], [ %sub.i, %if.then.i ]
  %21 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %storemerge, ptr %ts, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mktime64(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exfat_set_entry_time(ptr nocapture noundef readnone %sbi, ptr nocapture noundef readonly %ts, ptr nocapture noundef writeonly %tz, ptr nocapture noundef writeonly %time, ptr nocapture noundef writeonly %date, ptr noundef writeonly %time_cs) local_unnamed_addr #5 align 64 {
entry:
  %tm = alloca %struct.tm, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tm) #11
  %0 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 2
  %2 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 3
  %3 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 4
  %4 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 5
  %5 = call ptr @memset(ptr %tm, i32 255, i32 32)
  %6 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ts, align 8
  call void @time64_to_tm(i64 noundef %7, i32 noundef 0, ptr noundef nonnull %tm) #11
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %shl = shl i32 %9, 11
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %0, align 4
  %shl1 = shl i32 %11, 5
  %or = or i32 %shl1, %shl
  %12 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm, align 4
  %14 = lshr i32 %13, 1
  %or2 = or i32 %or, %14
  %conv = trunc i32 %or2 to i16
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %4, align 4
  %sub = shl i32 %16, 9
  %shl3 = add i32 %sub, 24576
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %3, align 4
  %add = shl i32 %18, 5
  %shl4 = add i32 %add, 32
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %2, align 4
  %or5 = or i32 %20, %shl3
  %or6 = or i32 %or5, %shl4
  %conv7 = trunc i32 %or6 to i16
  %21 = call i16 @llvm.bswap.i16(i16 %conv)
  %22 = ptrtoint ptr %time to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %time, align 2
  %23 = call i16 @llvm.bswap.i16(i16 %conv7)
  %24 = ptrtoint ptr %date to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %date, align 2
  %tobool.not = icmp eq ptr %time_cs, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i32 %13, 1
  %mul = mul nuw nsw i32 %and, 100
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %25 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tv_nsec, align 8
  %div = sdiv i32 %26, 10000000
  %add9 = add nsw i32 %div, %mul
  %conv10 = trunc i32 %add9 to i8
  %27 = ptrtoint ptr %time_cs to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv10, ptr %time_cs, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %28 = ptrtoint ptr %tz to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -128, ptr %tz, align 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tm) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @time64_to_tm(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @exfat_truncate_atime(ptr nocapture noundef %ts) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ts, align 8
  %and = and i64 %1, -2
  store i64 %and, ptr %ts, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %2 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tv_nsec, align 8
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @exfat_calc_chksum16(ptr nocapture noundef readonly %data, i32 noundef %len, i16 noundef zeroext %chksum, i32 noundef %type) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp14 = icmp sgt i32 %len, 0
  br i1 %cmp14, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp1 = icmp eq i32 %type, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %c.017 = phi ptr [ %data, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %chksum.addr.015 = phi i16 [ %chksum, %for.body.lr.ph ], [ %chksum.addr.1, %for.inc.for.body_crit_edge ]
  %0 = and i32 %i.016, 2147483646
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %switch = icmp eq i32 %0, 2
  %or.cond = select i1 %cmp1, i1 %switch, i1 false
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %or = tail call i16 @llvm.fshl.i16(i16 %chksum.addr.015, i16 %chksum.addr.015, i16 15)
  %1 = ptrtoint ptr %c.017 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %c.017, align 1
  %conv6 = zext i8 %2 to i16
  %add = add i16 %or, %conv6
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %chksum.addr.1 = phi i16 [ %add, %if.end ], [ %chksum.addr.015, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.016, 1
  %incdec.ptr = getelementptr i8, ptr %c.017, i32 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %chksum.addr.0.lcssa = phi i16 [ %chksum, %entry.for.end_crit_edge ], [ %chksum.addr.1, %for.inc.for.end_crit_edge ]
  ret i16 %chksum.addr.0.lcssa
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_calc_chksum32(ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %chksum, i32 noundef %type) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp14 = icmp sgt i32 %len, 0
  br i1 %cmp14, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp1 = icmp eq i32 %type, 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %c.020 = phi ptr [ %data, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %chksum.addr.015 = phi i32 [ %chksum, %for.body.lr.ph ], [ %chksum.addr.1, %for.inc.for.body_crit_edge ]
  br i1 %cmp1, label %land.rhs, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %for.body
  %0 = zext i32 %i.017 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %i.017, label %land.rhs.if.end_crit_edge [
    i32 106, label %land.rhs.for.inc_crit_edge
    i32 107, label %land.rhs.for.inc_crit_edge22
    i32 112, label %land.rhs.for.inc_crit_edge23
  ]

land.rhs.for.inc_crit_edge23:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.rhs.for.inc_crit_edge22:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %for.body.if.end_crit_edge
  %or = tail call i32 @llvm.fshl.i32(i32 %chksum.addr.015, i32 %chksum.addr.015, i32 31)
  %1 = ptrtoint ptr %c.020 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %c.020, align 1
  %conv = zext i8 %2 to i32
  %add = add i32 %or, %conv
  br label %for.inc

for.inc:                                          ; preds = %if.end, %land.rhs.for.inc_crit_edge, %land.rhs.for.inc_crit_edge22, %land.rhs.for.inc_crit_edge23
  %chksum.addr.1 = phi i32 [ %add, %if.end ], [ %chksum.addr.015, %land.rhs.for.inc_crit_edge ], [ %chksum.addr.015, %land.rhs.for.inc_crit_edge22 ], [ %chksum.addr.015, %land.rhs.for.inc_crit_edge23 ]
  %inc = add nuw nsw i32 %i.017, 1
  %incdec.ptr = getelementptr i8, ptr %c.020, i32 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %chksum.addr.0.lcssa = phi i32 [ %chksum, %entry.for.end_crit_edge ], [ %chksum.addr.1, %for.inc.for.end_crit_edge ]
  ret i32 %chksum.addr.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exfat_update_bh(ptr noundef %bh, i32 noundef %sync) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.set_buffer_uptodate.exit_crit_edge

entry.set_buffer_uptodate.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bh) #11
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %entry.set_buffer_uptodate.exit_crit_edge
  tail call void @mark_buffer_dirty(ptr noundef %bh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sync)
  %tobool.not = icmp eq i32 %sync, 0
  br i1 %tobool.not, label %set_buffer_uptodate.exit.if.end_crit_edge, label %if.then

set_buffer_uptodate.exit.if.end_crit_edge:        ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @sync_dirty_buffer(ptr noundef %bh) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %set_buffer_uptodate.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_update_bhs(ptr nocapture noundef readonly %bhs, i32 noundef %nr_bhs, i32 noundef %sync) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bhs)
  %cmp34 = icmp sgt i32 %nr_bhs, 0
  br i1 %cmp34, label %for.body.lr.ph, label %entry.for.end15_crit_edge

entry.for.end15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end15

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sync)
  %tobool.not = icmp eq i32 %sync, 0
  br label %for.body

for.cond3.preheader:                              ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sync)
  %tobool5.not = icmp eq i32 %sync, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_bhs)
  %cmp436 = icmp slt i32 %nr_bhs, 1
  %or.cond37 = or i1 %tobool5.not, %cmp436
  br i1 %or.cond37, label %for.cond3.preheader.for.end15_crit_edge, label %for.cond3.preheader.for.body6_crit_edge

for.cond3.preheader.for.body6_crit_edge:          ; preds = %for.cond3.preheader
  br label %for.body6

for.cond3.preheader.for.end15_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end15

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %bhs, i32 %i.035
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.set_buffer_uptodate.exit_crit_edge

for.body.set_buffer_uptodate.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %1) #11
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %for.body.set_buffer_uptodate.exit_crit_edge
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @mark_buffer_dirty(ptr noundef %5) #11
  br i1 %tobool.not, label %set_buffer_uptodate.exit.for.inc_crit_edge, label %if.then

set_buffer_uptodate.exit.for.inc_crit_edge:       ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @write_dirty_buffer(ptr noundef %7, i32 noundef 2048) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then, %set_buffer_uptodate.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, %nr_bhs
  br i1 %exitcond.not, label %for.cond3.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body6:                                        ; preds = %for.inc13.for.body6_crit_edge, %for.cond3.preheader.for.body6_crit_edge
  %err.039 = phi i32 [ %err.1, %for.inc13.for.body6_crit_edge ], [ 0, %for.cond3.preheader.for.body6_crit_edge ]
  %i.138 = phi i32 [ %inc14, %for.inc13.for.body6_crit_edge ], [ 0, %for.cond3.preheader.for.body6_crit_edge ]
  %arrayidx7 = getelementptr ptr, ptr %bhs, i32 %i.138
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx7, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 354) #11
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i32 = icmp eq i32 %12, 0
  br i1 %tobool.not.i32, label %for.body6.wait_on_buffer.exit_crit_edge, label %if.then.i33

for.body6.wait_on_buffer.exit_crit_edge:          ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %wait_on_buffer.exit

if.then.i33:                                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__wait_on_buffer(ptr noundef %9) #11
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %if.then.i33, %for.body6.wait_on_buffer.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.039)
  %tobool8.not = icmp eq i32 %err.039, 0
  br i1 %tobool8.not, label %land.lhs.true, label %wait_on_buffer.exit.for.inc13_crit_edge

wait_on_buffer.exit.for.inc13_crit_edge:          ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc13

land.lhs.true:                                    ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx7, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and1.i.i31 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i31)
  %tobool10.not = icmp eq i32 %and1.i.i31, 0
  %spec.select = select i1 %tobool10.not, i32 -5, i32 0
  br label %for.inc13

for.inc13:                                        ; preds = %land.lhs.true, %wait_on_buffer.exit.for.inc13_crit_edge
  %err.1 = phi i32 [ %err.039, %wait_on_buffer.exit.for.inc13_crit_edge ], [ %spec.select, %land.lhs.true ]
  %inc14 = add nuw nsw i32 %i.138, 1
  %cmp4.not = icmp slt i32 %inc14, %nr_bhs
  br i1 %cmp4.not, label %for.inc13.for.body6_crit_edge, label %for.inc13.for.end15_crit_edge

for.inc13.for.end15_crit_edge:                    ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end15

for.inc13.for.body6_crit_edge:                    ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body6

for.end15:                                        ; preds = %for.inc13.for.end15_crit_edge, %for.cond3.preheader.for.end15_crit_edge, %entry.for.end15_crit_edge
  %err.0.lcssa = phi i32 [ 0, %for.cond3.preheader.for.end15_crit_edge ], [ 0, %entry.for.end15_crit_edge ], [ %err.1, %for.inc13.for.end15_crit_edge ]
  ret i32 %err.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_dirty_buffer(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @exfat_chain_set(ptr nocapture noundef writeonly %ec, i32 noundef %dir, i32 noundef %size, i8 noundef zeroext %flags) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ec to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %dir, ptr %ec, align 4
  %size2 = getelementptr inbounds %struct.exfat_chain, ptr %ec, i32 0, i32 1
  %1 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %size, ptr %size2, align 4
  %flags3 = getelementptr inbounds %struct.exfat_chain, ptr %ec, i32 0, i32 2
  %2 = ptrtoint ptr %flags3 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %flags, ptr %flags3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @exfat_chain_dup(ptr nocapture noundef writeonly %dup, ptr nocapture noundef readonly %ec) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ec, align 4
  %size = getelementptr inbounds %struct.exfat_chain, ptr %ec, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %flags = getelementptr inbounds %struct.exfat_chain, ptr %ec, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags, align 4
  %6 = ptrtoint ptr %dup to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %dup, align 4
  %size2.i = getelementptr inbounds %struct.exfat_chain, ptr %dup, i32 0, i32 1
  %7 = ptrtoint ptr %size2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %3, ptr %size2.i, align 4
  %flags3.i = getelementptr inbounds %struct.exfat_chain, ptr %dup, i32 0, i32 2
  %8 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %5, ptr %flags3.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/exfat/misc.c", i32 36, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/exfat/misc.c", i32 41, i32 9}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/exfat/misc.c", i32 45, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/exfat/misc.c", i32 62, i32 2}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @exfat_msg._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @exfat_msg._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/buffer_head.h", i32 354, i32 2}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"auto-init"}
