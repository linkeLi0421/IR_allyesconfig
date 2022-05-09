; ModuleID = '/llk/IR_all_yes/fs/udf/unicode.c_pt.bc'
source_filename = "../fs/udf/unicode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.udf_sb_info = type { ptr, [32 x i8], i16, i16, i32, i32, i32, ptr, i16, %struct.kgid_t, %struct.kuid_t, i16, i16, %struct.rwlock_t, %struct.timespec64, i16, i16, i32, ptr, ptr, %struct.mutex, i32 }
%struct.kgid_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@udf_dstrCS0toChar._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014UDF-fs: incorrect dstring lengths (%d/%d), truncating\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"udf_dstrCS0toChar\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/udf/unicode.c\00", [47 x i8] zeroinitializer }, align 32
@udf_dstrCS0toChar._entry_ptr = internal global ptr @udf_dstrCS0toChar._entry, section ".printk_index", align 4
@udf_name_from_CS0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013UDF-fs: unknown compression code (%u)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"udf_name_from_CS0\00", [46 x i8] zeroinitializer }, align 32
@udf_name_from_CS0._entry_ptr = internal global ptr @udf_name_from_CS0._entry, section ".printk_index", align 4
@udf_name_from_CS0._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013UDF-fs: incorrect filename length (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@udf_name_from_CS0._entry_ptr.7 = internal global ptr @udf_name_from_CS0._entry.5, section ".printk_index", align 4
@hex_asc_upper = external dso_local local_unnamed_addr constant [0 x i8], align 1
@get_utf16_char.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 16]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 367, i32 4 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 188, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [20 x i8] c"../fs/udf/unicode.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 197, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @udf_dstrCS0toChar._entry, ptr @udf_dstrCS0toChar._entry_ptr, ptr @udf_name_from_CS0._entry, ptr @udf_name_from_CS0._entry.5, ptr @udf_name_from_CS0._entry_ptr, ptr @udf_name_from_CS0._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udf_dstrCS0toChar._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udf_name_from_CS0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udf_name_from_CS0._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udf_dstrCS0toChar(ptr nocapture noundef readonly %sb, ptr noundef %utf_o, i32 noundef %o_len, ptr noundef %ocu_i, i32 noundef %i_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i_len)
  %cmp = icmp sgt i32 %i_len, 0
  br i1 %cmp, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then:                                          ; preds = %entry
  %sub = add nsw i32 %i_len, -1
  %arrayidx = getelementptr i8, ptr %ocu_i, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %i_len)
  %cmp1.not = icmp ult i32 %conv, %i_len
  br i1 %cmp1.not, label %if.then.if.end13_crit_edge, label %do.end

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

do.end:                                           ; preds = %if.then
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %i_len) #8
  %2 = ptrtoint ptr %ocu_i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ocu_i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %3)
  %cmp7 = icmp eq i8 %3, 16
  br i1 %cmp7, label %if.then9, label %do.end.if.end13_crit_edge

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = or i32 %i_len, -3
  %sub11 = add nsw i32 %4, %i_len
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %do.end.if.end13_crit_edge, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  %s_len.0 = phi i32 [ %sub11, %if.then9 ], [ %sub, %do.end.if.end13_crit_edge ], [ %conv, %if.then.if.end13_crit_edge ], [ 0, %entry.if.end13_crit_edge ]
  %call14 = tail call fastcc i32 @udf_name_from_CS0(ptr noundef %sb, ptr noundef %utf_o, i32 noundef %o_len, ptr noundef %ocu_i, i32 noundef %s_len.0, i32 noundef 0)
  ret i32 %call14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udf_name_from_CS0(ptr nocapture noundef readonly %sb, ptr noundef %str_o, i32 noundef %str_max_len, ptr noundef %ocu, i32 noundef %ocu_len, i32 noundef %translate) unnamed_addr #0 align 64 {
entry:
  %idx = alloca i32, align 4
  %needsCRC = alloca i32, align 4
  %str_o_len = alloca i32, align 4
  %ext_o_len = alloca i32, align 4
  %ext = alloca [31 x i8], align 1
  %crc = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %needsCRC) #5
  %0 = ptrtoint ptr %needsCRC to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %needsCRC, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %str_o_len) #5
  %1 = ptrtoint ptr %str_o_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %str_o_len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ext_o_len) #5
  %2 = ptrtoint ptr %ext_o_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ext_o_len, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %ext) #5
  %3 = call ptr @memset(ptr %ext, i32 255, i32 31)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %crc)
  %crc.1.crc.1.crc.1..sroa_idx = getelementptr inbounds i8, ptr %crc, i32 1
  %crc.2.crc.2.crc.2..sroa_idx = getelementptr inbounds i8, ptr %crc, i32 2
  %crc.3.crc.3.crc.3..sroa_idx = getelementptr inbounds i8, ptr %crc, i32 3
  %crc.4.crc.4.crc.4..sroa_idx = getelementptr inbounds i8, ptr %crc, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %str_max_len)
  %cmp = icmp slt i32 %str_max_len, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ocu_len)
  %cmp1 = icmp eq i32 %ocu_len, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = call ptr @memset(ptr %str_o, i32 0, i32 %str_max_len)
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %s_nls_map = getelementptr inbounds %struct.udf_sb_info, ptr %6, i32 0, i32 18
  %7 = ptrtoint ptr %s_nls_map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_nls_map, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end3.if.end7_crit_edge, label %if.then4

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %uni2char = getelementptr inbounds %struct.nls_table, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %uni2char to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %uni2char, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end3.if.end7_crit_edge
  %conv_f.0 = phi ptr [ %10, %if.then4 ], [ null, %if.end3.if.end7_crit_edge ]
  %11 = ptrtoint ptr %ocu to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ocu, align 1
  %conv = zext i8 %12 to i32
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %if.then13 [
    i8 8, label %if.end7.if.end16_crit_edge
    i8 16, label %if.end7.if.end16_crit_edge293
  ]

if.end7.if.end16_crit_edge293:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %14 = call ptr @memset(ptr %str_o, i32 0, i32 %str_max_len)
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end7.if.end16_crit_edge, %if.end7.if.end16_crit_edge293
  %15 = lshr i32 %conv, 3
  %incdec.ptr = getelementptr i8, ptr %ocu, i32 1
  %dec = add i32 %ocu_len, -1
  %rem = srem i32 %dec, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool18.not = icmp eq i32 %rem, 0
  br i1 %tobool18.not, label %if.end25, label %do.end22

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %ocu_len) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %translate)
  %tobool26.not = icmp eq i32 %translate, 0
  br i1 %tobool26.not, label %if.end25.if.end66_crit_edge, label %if.then27

if.end25.if.end66_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then27:                                        ; preds = %if.end25
  %sub = sub i32 %dec, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp28252 = icmp sgt i32 %sub, -1
  br i1 %cmp28252, label %for.body.lr.ph, label %if.then27.if.end66_crit_edge

if.then27.if.end66_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

for.body.lr.ph:                                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %12)
  %cmp34 = icmp ugt i8 %12, 15
  %arrayidx32 = getelementptr i8, ptr %incdec.ptr, i32 %sub
  %16 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %17 to i32
  br i1 %cmp34, label %if.then36, label %for.body.lr.ph.if.end40_crit_edge

for.body.lr.ph.if.end40_crit_edge:                ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then36:                                        ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl nuw nsw i32 %conv33, 8
  %add37 = add nuw i32 %sub, 1
  %arrayidx38 = getelementptr i8, ptr %incdec.ptr, i32 %add37
  %18 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %19 to i32
  %or = or i32 %shl, %conv39
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %for.body.lr.ph.if.end40_crit_edge
  %c.0 = phi i32 [ %or, %if.then36 ], [ %conv33, %for.body.lr.ph.if.end40_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %c.0)
  %cmp41 = icmp eq i32 %c.0, 46
  br i1 %cmp41, label %if.end40.if.then43_crit_edge, label %for.inc

if.end40.if.then43_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

if.then43:                                        ; preds = %if.end40.4.if.then43_crit_edge, %if.end40.3.if.then43_crit_edge, %if.end40.2.if.then43_crit_edge, %if.end40.1.if.then43_crit_edge, %if.end40.if.then43_crit_edge
  %sub48250253.lcssa = phi i32 [ %sub, %if.end40.if.then43_crit_edge ], [ %sub48, %if.end40.1.if.then43_crit_edge ], [ %sub48.1, %if.end40.2.if.then43_crit_edge ], [ %sub48.2, %if.end40.3.if.then43_crit_edge ], [ %sub48.3, %if.end40.4.if.then43_crit_edge ]
  br i1 %cmp41, label %if.then43.if.end66_crit_edge, label %if.then51

if.then43.if.end66_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

for.inc:                                          ; preds = %if.end40
  %sub48 = sub i32 %sub, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub48)
  %cmp28 = icmp sgt i32 %sub48, -1
  br i1 %cmp28, label %for.body.1, label %for.inc.if.end66_crit_edge

for.inc.if.end66_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

for.body.1:                                       ; preds = %for.inc
  %arrayidx32.1 = getelementptr i8, ptr %incdec.ptr, i32 %sub48
  %20 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx32.1, align 1
  %conv33.1 = zext i8 %21 to i32
  br i1 %cmp34, label %if.then36.1, label %for.body.1.if.end40.1_crit_edge

for.body.1.if.end40.1_crit_edge:                  ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.1

if.then36.1:                                      ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #7
  %shl.1 = shl nuw nsw i32 %conv33.1, 8
  %add37.1 = add nuw i32 %sub48, 1
  %arrayidx38.1 = getelementptr i8, ptr %incdec.ptr, i32 %add37.1
  %22 = ptrtoint ptr %arrayidx38.1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx38.1, align 1
  %conv39.1 = zext i8 %23 to i32
  %or.1 = or i32 %shl.1, %conv39.1
  br label %if.end40.1

if.end40.1:                                       ; preds = %if.then36.1, %for.body.1.if.end40.1_crit_edge
  %c.0.1 = phi i32 [ %or.1, %if.then36.1 ], [ %conv33.1, %for.body.1.if.end40.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %c.0.1)
  %cmp41.1 = icmp eq i32 %c.0.1, 46
  br i1 %cmp41.1, label %if.end40.1.if.then43_crit_edge, label %for.inc.1

if.end40.1.if.then43_crit_edge:                   ; preds = %if.end40.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

for.inc.1:                                        ; preds = %if.end40.1
  %sub48.1 = sub i32 %sub48, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub48.1)
  %cmp28.1 = icmp sgt i32 %sub48.1, -1
  br i1 %cmp28.1, label %for.body.2, label %for.inc.1.if.end66_crit_edge

for.inc.1.if.end66_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

for.body.2:                                       ; preds = %for.inc.1
  %arrayidx32.2 = getelementptr i8, ptr %incdec.ptr, i32 %sub48.1
  %24 = ptrtoint ptr %arrayidx32.2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx32.2, align 1
  %conv33.2 = zext i8 %25 to i32
  br i1 %cmp34, label %if.then36.2, label %for.body.2.if.end40.2_crit_edge

for.body.2.if.end40.2_crit_edge:                  ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.2

if.then36.2:                                      ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #7
  %shl.2 = shl nuw nsw i32 %conv33.2, 8
  %add37.2 = add nuw i32 %sub48.1, 1
  %arrayidx38.2 = getelementptr i8, ptr %incdec.ptr, i32 %add37.2
  %26 = ptrtoint ptr %arrayidx38.2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx38.2, align 1
  %conv39.2 = zext i8 %27 to i32
  %or.2 = or i32 %shl.2, %conv39.2
  br label %if.end40.2

if.end40.2:                                       ; preds = %if.then36.2, %for.body.2.if.end40.2_crit_edge
  %c.0.2 = phi i32 [ %or.2, %if.then36.2 ], [ %conv33.2, %for.body.2.if.end40.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %c.0.2)
  %cmp41.2 = icmp eq i32 %c.0.2, 46
  br i1 %cmp41.2, label %if.end40.2.if.then43_crit_edge, label %for.inc.2

if.end40.2.if.then43_crit_edge:                   ; preds = %if.end40.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

for.inc.2:                                        ; preds = %if.end40.2
  %sub48.2 = sub i32 %sub48.1, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub48.2)
  %cmp28.2 = icmp sgt i32 %sub48.2, -1
  br i1 %cmp28.2, label %for.body.3, label %for.inc.2.if.end66_crit_edge

for.inc.2.if.end66_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

for.body.3:                                       ; preds = %for.inc.2
  %arrayidx32.3 = getelementptr i8, ptr %incdec.ptr, i32 %sub48.2
  %28 = ptrtoint ptr %arrayidx32.3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx32.3, align 1
  %conv33.3 = zext i8 %29 to i32
  br i1 %cmp34, label %if.then36.3, label %for.body.3.if.end40.3_crit_edge

for.body.3.if.end40.3_crit_edge:                  ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.3

if.then36.3:                                      ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #7
  %shl.3 = shl nuw nsw i32 %conv33.3, 8
  %add37.3 = add nuw i32 %sub48.2, 1
  %arrayidx38.3 = getelementptr i8, ptr %incdec.ptr, i32 %add37.3
  %30 = ptrtoint ptr %arrayidx38.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx38.3, align 1
  %conv39.3 = zext i8 %31 to i32
  %or.3 = or i32 %shl.3, %conv39.3
  br label %if.end40.3

if.end40.3:                                       ; preds = %if.then36.3, %for.body.3.if.end40.3_crit_edge
  %c.0.3 = phi i32 [ %or.3, %if.then36.3 ], [ %conv33.3, %for.body.3.if.end40.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %c.0.3)
  %cmp41.3 = icmp eq i32 %c.0.3, 46
  br i1 %cmp41.3, label %if.end40.3.if.then43_crit_edge, label %for.inc.3

if.end40.3.if.then43_crit_edge:                   ; preds = %if.end40.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

for.inc.3:                                        ; preds = %if.end40.3
  %sub48.3 = sub i32 %sub48.2, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub48.3)
  %cmp28.3 = icmp sgt i32 %sub48.3, -1
  br i1 %cmp28.3, label %for.body.4, label %for.inc.3.if.end66_crit_edge

for.inc.3.if.end66_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

for.body.4:                                       ; preds = %for.inc.3
  %arrayidx32.4 = getelementptr i8, ptr %incdec.ptr, i32 %sub48.3
  %32 = ptrtoint ptr %arrayidx32.4 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx32.4, align 1
  %conv33.4 = zext i8 %33 to i32
  br i1 %cmp34, label %if.then36.4, label %for.body.4.if.end40.4_crit_edge

for.body.4.if.end40.4_crit_edge:                  ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.4

if.then36.4:                                      ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #7
  %shl.4 = shl nuw nsw i32 %conv33.4, 8
  %add37.4 = add nuw i32 %sub48.3, 1
  %arrayidx38.4 = getelementptr i8, ptr %incdec.ptr, i32 %add37.4
  %34 = ptrtoint ptr %arrayidx38.4 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx38.4, align 1
  %conv39.4 = zext i8 %35 to i32
  %or.4 = or i32 %shl.4, %conv39.4
  br label %if.end40.4

if.end40.4:                                       ; preds = %if.then36.4, %for.body.4.if.end40.4_crit_edge
  %c.0.4 = phi i32 [ %or.4, %if.then36.4 ], [ %conv33.4, %for.body.4.if.end40.4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %c.0.4)
  %cmp41.4 = icmp eq i32 %c.0.4, 46
  br i1 %cmp41.4, label %if.end40.4.if.then43_crit_edge, label %if.end40.4.if.end66_crit_edge

if.end40.4.if.end66_crit_edge:                    ; preds = %if.end40.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.end40.4.if.then43_crit_edge:                   ; preds = %if.end40.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

if.then51:                                        ; preds = %if.then43
  %36 = tail call i32 @llvm.smin.i32(i32 %str_max_len, i32 31)
  %37 = ptrtoint ptr %ext_o_len to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %ext_o_len, align 4
  %38 = ptrtoint ptr %ext to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 46, ptr %ext, align 1
  %add57 = add i32 %sub48250253.lcssa, %15
  %39 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add57, ptr %idx, align 4
  %call58255 = call fastcc i32 @udf_name_conv_char(ptr noundef nonnull %ext, i32 noundef %36, ptr noundef nonnull %ext_o_len, ptr noundef %incdec.ptr, i32 noundef %dec, ptr noundef nonnull %idx, i32 noundef %15, ptr noundef nonnull %needsCRC, ptr noundef %conv_f.0, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58255)
  %tobool59.not256 = icmp eq i32 %call58255, 0
  br i1 %tobool59.not256, label %if.then51.if.end66_crit_edge, label %if.then51.while.body_crit_edge

if.then51.while.body_crit_edge:                   ; preds = %if.then51
  br label %while.body

if.then51.if.end66_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then51.while.body_crit_edge
  %ext_crc_len.0257 = phi i32 [ %spec.select, %while.body.while.body_crit_edge ], [ 0, %if.then51.while.body_crit_edge ]
  %40 = ptrtoint ptr %ext_o_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ext_o_len, align 4
  %add60 = add i32 %41, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %add60, i32 %str_max_len)
  %cmp61 = icmp slt i32 %add60, %str_max_len
  %spec.select = select i1 %cmp61, i32 %41, i32 %ext_crc_len.0257
  %call58 = call fastcc i32 @udf_name_conv_char(ptr noundef nonnull %ext, i32 noundef %36, ptr noundef nonnull %ext_o_len, ptr noundef %incdec.ptr, i32 noundef %dec, ptr noundef nonnull %idx, i32 noundef %15, ptr noundef nonnull %needsCRC, ptr noundef %conv_f.0, i32 noundef 1)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %while.body.if.end66_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.if.end66_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.end66:                                         ; preds = %while.body.if.end66_crit_edge, %if.then51.if.end66_crit_edge, %if.end40.4.if.end66_crit_edge, %for.inc.3.if.end66_crit_edge, %for.inc.2.if.end66_crit_edge, %for.inc.1.if.end66_crit_edge, %for.inc.if.end66_crit_edge, %if.then43.if.end66_crit_edge, %if.then27.if.end66_crit_edge, %if.end25.if.end66_crit_edge
  %ext_crc_len.2 = phi i32 [ 0, %if.end25.if.end66_crit_edge ], [ 0, %if.then43.if.end66_crit_edge ], [ 0, %if.then51.if.end66_crit_edge ], [ 0, %if.then27.if.end66_crit_edge ], [ %spec.select, %while.body.if.end66_crit_edge ], [ 0, %if.end40.4.if.end66_crit_edge ], [ 0, %for.inc.3.if.end66_crit_edge ], [ 0, %for.inc.2.if.end66_crit_edge ], [ 0, %for.inc.1.if.end66_crit_edge ], [ 0, %for.inc.if.end66_crit_edge ]
  %i_ext.1 = phi i32 [ -1, %if.end25.if.end66_crit_edge ], [ -1, %if.then43.if.end66_crit_edge ], [ %sub48250253.lcssa, %if.then51.if.end66_crit_edge ], [ -1, %if.then27.if.end66_crit_edge ], [ %sub48250253.lcssa, %while.body.if.end66_crit_edge ], [ -1, %if.end40.4.if.end66_crit_edge ], [ -1, %for.inc.3.if.end66_crit_edge ], [ -1, %for.inc.2.if.end66_crit_edge ], [ -1, %for.inc.1.if.end66_crit_edge ], [ -1, %for.inc.if.end66_crit_edge ]
  %42 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %idx, align 4
  %sub86 = add i32 %str_max_len, -5
  br label %while.cond67.outer

while.cond67.outer:                               ; preds = %land.lhs.true85, %if.end66
  %o_crc.0.ph = phi i32 [ %spec.select229, %land.lhs.true85 ], [ 0, %if.end66 ]
  br label %while.cond67

while.cond67:                                     ; preds = %if.end79.while.cond67_crit_edge, %while.cond67.outer
  br i1 %tobool26.not, label %if.end79, label %land.lhs.true70

land.lhs.true70:                                  ; preds = %while.cond67
  %43 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %i_ext.1)
  %cmp71 = icmp eq i32 %44, %i_ext.1
  br i1 %cmp71, label %if.then73, label %if.end79.thread

if.then73:                                        ; preds = %land.lhs.true70
  %45 = ptrtoint ptr %str_o_len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %str_o_len, align 4
  %47 = ptrtoint ptr %ext_o_len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ext_o_len, align 4
  %sub74 = sub i32 %str_max_len, %48
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %sub74)
  %cmp75 = icmp sgt i32 %46, %sub74
  br i1 %cmp75, label %if.then77, label %if.then73.if.then94_crit_edge

if.then73.if.then94_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then94

if.then77:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %needsCRC to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %needsCRC, align 4
  br label %if.then94thread-pre-split

if.end79:                                         ; preds = %while.cond67
  %call80 = call fastcc i32 @udf_name_conv_char(ptr noundef %str_o, i32 noundef %str_max_len, ptr noundef nonnull %str_o_len, ptr noundef %incdec.ptr, i32 noundef %dec, ptr noundef nonnull %idx, i32 noundef %15, ptr noundef nonnull %needsCRC, ptr noundef %conv_f.0, i32 noundef 0)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end79.if.end153_crit_edge, label %if.end79.while.cond67_crit_edge

if.end79.while.cond67_crit_edge:                  ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond67

if.end79.if.end153_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end153

if.end79.thread:                                  ; preds = %land.lhs.true70
  %call80238 = call fastcc i32 @udf_name_conv_char(ptr noundef %str_o, i32 noundef %str_max_len, ptr noundef nonnull %str_o_len, ptr noundef %incdec.ptr, i32 noundef %dec, ptr noundef nonnull %idx, i32 noundef %15, ptr noundef nonnull %needsCRC, ptr noundef %conv_f.0, i32 noundef %translate)
  %tobool81.not239 = icmp eq i32 %call80238, 0
  br i1 %tobool81.not239, label %if.end79.thread.if.then94thread-pre-split_crit_edge, label %land.lhs.true85

if.end79.thread.if.then94thread-pre-split_crit_edge: ; preds = %if.end79.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then94thread-pre-split

land.lhs.true85:                                  ; preds = %if.end79.thread
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %str_o_len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %str_o_len, align 4
  %52 = ptrtoint ptr %ext_o_len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ext_o_len, align 4
  %sub87 = sub i32 %sub86, %53
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %sub87)
  %cmp88.not = icmp sgt i32 %51, %sub87
  %spec.select229 = select i1 %cmp88.not, i32 %o_crc.0.ph, i32 %51
  br label %while.cond67.outer

if.then94thread-pre-split:                        ; preds = %if.end79.thread.if.then94thread-pre-split_crit_edge, %if.then77
  %54 = ptrtoint ptr %str_o_len to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr = load i32, ptr %str_o_len, align 4
  br label %if.then94

if.then94:                                        ; preds = %if.then94thread-pre-split, %if.then73.if.then94_crit_edge
  %55 = phi i32 [ %.pr, %if.then94thread-pre-split ], [ %46, %if.then73.if.then94_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %55)
  %cmp95 = icmp slt i32 %55, 3
  br i1 %cmp95, label %land.lhs.true97, label %if.then94.if.end110_crit_edge

if.then94.if.end110_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

land.lhs.true97:                                  ; preds = %if.then94
  %56 = ptrtoint ptr %str_o to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %str_o, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %57)
  %cmp100 = icmp eq i8 %57, 46
  br i1 %cmp100, label %land.lhs.true102, label %land.lhs.true97.if.end110_crit_edge

land.lhs.true97.if.end110_crit_edge:              ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

land.lhs.true102:                                 ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp103 = icmp eq i32 %55, 1
  br i1 %cmp103, label %land.lhs.true102.if.end110.thread_crit_edge, label %lor.lhs.false

land.lhs.true102.if.end110.thread_crit_edge:      ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110.thread

lor.lhs.false:                                    ; preds = %land.lhs.true102
  %arrayidx105 = getelementptr i8, ptr %str_o, i32 1
  %58 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx105, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %59)
  %cmp107 = icmp eq i8 %59, 46
  br i1 %cmp107, label %lor.lhs.false.if.end110.thread_crit_edge, label %lor.lhs.false.if.end110_crit_edge

lor.lhs.false.if.end110_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

lor.lhs.false.if.end110.thread_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110.thread

if.end110.thread:                                 ; preds = %lor.lhs.false.if.end110.thread_crit_edge, %land.lhs.true102.if.end110.thread_crit_edge
  %60 = ptrtoint ptr %needsCRC to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %needsCRC, align 4
  br label %if.then112

if.end110:                                        ; preds = %lor.lhs.false.if.end110_crit_edge, %land.lhs.true97.if.end110_crit_edge, %if.then94.if.end110_crit_edge
  %61 = ptrtoint ptr %needsCRC to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pr240 = load i32, ptr %needsCRC, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr240)
  %tobool111.not = icmp eq i32 %.pr240, 0
  br i1 %tobool111.not, label %if.end145thread-pre-split, label %if.end110.if.then112_crit_edge

if.end110.if.then112_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then112

if.then112:                                       ; preds = %if.end110.if.then112_crit_edge, %if.end110.thread
  %call113 = call zeroext i16 @crc_itu_t(i16 noundef zeroext 0, ptr noundef %incdec.ptr, i32 noundef %dec) #5
  %62 = ptrtoint ptr %crc to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 35, ptr %crc, align 1
  %conv115 = zext i16 %call113 to i32
  %63 = lshr i32 %conv115, 8
  %64 = lshr i32 %conv115, 12
  %arrayidx118 = getelementptr [0 x i8], ptr @hex_asc_upper, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx118, align 1
  %67 = ptrtoint ptr %crc.1.crc.1.crc.1..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %crc.1.crc.1.crc.1..sroa_idx, align 1
  %and122 = and i32 %63, 15
  %arrayidx123 = getelementptr [0 x i8], ptr @hex_asc_upper, i32 0, i32 %and122
  %68 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx123, align 1
  %70 = ptrtoint ptr %crc.2.crc.2.crc.2..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %crc.2.crc.2.crc.2..sroa_idx, align 1
  %and126 = lshr i32 %conv115, 4
  %71 = and i32 %and126, 15
  %arrayidx128 = getelementptr [0 x i8], ptr @hex_asc_upper, i32 0, i32 %71
  %72 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx128, align 1
  %74 = ptrtoint ptr %crc.3.crc.3.crc.3..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %crc.3.crc.3.crc.3..sroa_idx, align 1
  %and131 = and i32 %conv115, 15
  %arrayidx132 = getelementptr [0 x i8], ptr @hex_asc_upper, i32 0, i32 %and131
  %75 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx132, align 1
  %77 = ptrtoint ptr %crc.4.crc.4.crc.4..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %crc.4.crc.4.crc.4..sroa_idx, align 1
  %sub134 = sub i32 %str_max_len, %o_crc.0.ph
  %78 = call i32 @llvm.smin.i32(i32 %sub134, i32 5)
  %arrayidx142 = getelementptr i8, ptr %str_o, i32 %o_crc.0.ph
  %79 = call ptr @memcpy(ptr %arrayidx142, ptr %crc, i32 %78)
  %add144 = add i32 %78, %o_crc.0.ph
  %80 = ptrtoint ptr %str_o_len to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add144, ptr %str_o_len, align 4
  %81 = ptrtoint ptr %ext_o_len to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %ext_crc_len.2, ptr %ext_o_len, align 4
  br label %if.end145

if.end145thread-pre-split:                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  %82 = ptrtoint ptr %ext_o_len to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pr242 = load i32, ptr %ext_o_len, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.end145thread-pre-split, %if.then112
  %83 = phi i32 [ %.pr242, %if.end145thread-pre-split ], [ %ext_crc_len.2, %if.then112 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp146 = icmp sgt i32 %83, 0
  br i1 %cmp146, label %if.then148, label %if.end145.if.end153_crit_edge

if.end145.if.end153_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end153

if.then148:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %str_o_len to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %str_o_len, align 4
  %arrayidx149 = getelementptr i8, ptr %str_o, i32 %85
  %86 = call ptr @memcpy(ptr %arrayidx149, ptr %ext, i32 %83)
  %add151 = add i32 %85, %83
  store i32 %add151, ptr %str_o_len, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.then148, %if.end145.if.end153_crit_edge, %if.end79.if.end153_crit_edge
  %87 = ptrtoint ptr %str_o_len to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %str_o_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end153, %do.end22, %if.then13, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ -22, %if.then13 ], [ -22, %do.end22 ], [ %88, %if.end153 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %crc)
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %ext) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext_o_len) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %str_o_len) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %needsCRC) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udf_get_filename(ptr nocapture noundef readonly %sb, ptr noundef %sname, i32 noundef %slen, ptr noundef %dname, i32 noundef %dlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slen)
  %tobool.not = icmp eq i32 %slen, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dlen)
  %cmp = icmp slt i32 %dlen, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call fastcc i32 @udf_name_from_CS0(ptr noundef %sb, ptr noundef %dname, i32 noundef %dlen, ptr noundef %sname, i32 noundef %slen, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp eq i32 %call, 0
  %spec.store.select = select i1 %cmp3, i32 -22, i32 %call
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.end2 ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udf_put_filename(ptr nocapture noundef readonly %sb, ptr noundef %sname, i32 noundef %slen, ptr nocapture noundef writeonly %dname, i32 noundef %dlen) local_unnamed_addr #0 align 64 {
entry:
  %uni_char.i = alloca i32, align 4
  %wchar.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uni_char.i) #5
  %0 = ptrtoint ptr %uni_char.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %uni_char.i, align 4, !annotation !26
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dlen)
  %cmp.i = icmp slt i32 %dlen, 1
  br i1 %cmp.i, label %entry.udf_name_to_CS0.exit_crit_edge, label %if.end.i

entry.udf_name_to_CS0.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %udf_name_to_CS0.exit

if.end.i:                                         ; preds = %entry
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_nls_map.i = getelementptr inbounds %struct.udf_sb_info, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %s_nls_map.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_nls_map.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then1.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %char2uni.i = getelementptr inbounds %struct.nls_table, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %char2uni.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %char2uni.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then1.i, %if.end.i.if.end4.i_crit_edge
  %conv_f.0.i = phi ptr [ %6, %if.then1.i ], [ null, %if.end.i.if.end4.i_crit_edge ]
  %7 = call ptr @memset(ptr %dname, i32 0, i32 %dlen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slen)
  %cmp5112.i = icmp sgt i32 %slen, 0
  %8 = ptrtoint ptr %dname to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 8, ptr %dname, align 1
  br i1 %cmp5112.i, label %for.body.lr.ph.lr.ph.i, label %if.end4.i.udf_name_to_CS0.exit_crit_edge

if.end4.i.udf_name_to_CS0.exit_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %udf_name_to_CS0.exit

for.body.lr.ph.lr.ph.i:                           ; preds = %if.end4.i
  %tobool9.not.i = icmp eq ptr %conv_f.0.i, null
  br label %for.body.lr.ph.i

try_again.loopexit.i:                             ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %dname to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 16, ptr %dname, align 1
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %try_again.loopexit.i, %for.body.lr.ph.lr.ph.i
  %u_ch.0122.i = phi i32 [ 1, %for.body.lr.ph.lr.ph.i ], [ 2, %try_again.loopexit.i ]
  %max_val.0121.i = phi i32 [ 255, %for.body.lr.ph.lr.ph.i ], [ 65535, %try_again.loopexit.i ]
  %cmp30120.i = phi i1 [ true, %for.body.lr.ph.lr.ph.i ], [ false, %try_again.loopexit.i ]
  %cmp51119.i = phi i1 [ false, %for.body.lr.ph.lr.ph.i ], [ true, %try_again.loopexit.i ]
  %mul.i = shl nuw nsw i32 %u_ch.0122.i, 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end58.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %u_len.0115.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc61.i, %if.end58.i.for.body.i_crit_edge ]
  %i.0113.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add63.i, %if.end58.i.for.body.i_crit_edge ]
  %add.i = add i32 %u_len.0115.i, %u_ch.0122.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %dlen)
  %cmp6.i = icmp sgt i32 %add.i, %dlen
  br i1 %cmp6.i, label %for.body.i.udf_name_to_CS0.exit_crit_edge, label %if.end8.i

for.body.i.udf_name_to_CS0.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %udf_name_to_CS0.exit

if.end8.i:                                        ; preds = %for.body.i
  br i1 %tobool9.not.i, label %if.else16.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wchar.i) #5
  %10 = ptrtoint ptr %wchar.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %wchar.i, align 2, !annotation !26
  %arrayidx11.i = getelementptr i8, ptr %sname, i32 %i.0113.i
  %sub.i = sub i32 %slen, %i.0113.i
  %call12.i = call i32 %conv_f.0.i(ptr noundef %arrayidx11.i, i32 noundef %sub.i, ptr noundef nonnull %wchar.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp sgt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.then14.i, label %if.then10.i.if.end15.i_crit_edge

if.then10.i.if.end15.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.i

if.then14.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %wchar.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %wchar.i, align 2
  %conv.i = zext i16 %12 to i32
  %13 = ptrtoint ptr %uni_char.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv.i, ptr %uni_char.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %if.then10.i.if.end15.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wchar.i) #5
  br label %if.end20.i

if.else16.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx17.i = getelementptr i8, ptr %sname, i32 %i.0113.i
  %sub18.i = sub i32 %slen, %i.0113.i
  %call19.i = call i32 @utf8_to_utf32(ptr noundef %arrayidx17.i, i32 noundef %sub18.i, ptr noundef nonnull %uni_char.i) #5
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else16.i, %if.end15.i
  %len.0.i = phi i32 [ %call12.i, %if.end15.i ], [ %call19.i, %if.else16.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len.0.i)
  %cmp21.i = icmp slt i32 %len.0.i, 1
  br i1 %cmp21.i, label %if.end20.i.if.then25.i_crit_edge, label %lor.lhs.false.i

if.end20.i.if.then25.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then25.i

lor.lhs.false.i:                                  ; preds = %if.end20.i
  %14 = ptrtoint ptr %uni_char.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %uni_char.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1114111, i32 %15)
  %cmp23.i = icmp ugt i32 %15, 1114111
  br i1 %cmp23.i, label %lor.lhs.false.i.if.then25.i_crit_edge, label %lor.lhs.false.i.if.end26.i_crit_edge

lor.lhs.false.i.if.end26.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

lor.lhs.false.i.if.then25.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then25.i

if.then25.i:                                      ; preds = %lor.lhs.false.i.if.then25.i_crit_edge, %if.end20.i.if.then25.i_crit_edge
  %16 = ptrtoint ptr %uni_char.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 63, ptr %uni_char.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then25.i, %lor.lhs.false.i.if.end26.i_crit_edge
  %len.1.i = phi i32 [ 1, %if.then25.i ], [ %len.0.i, %lor.lhs.false.i.if.end26.i_crit_edge ]
  %17 = ptrtoint ptr %uni_char.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %uni_char.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %max_val.0121.i)
  %cmp27.i = icmp ugt i32 %18, %max_val.0121.i
  br i1 %cmp27.i, label %if.then29.i, label %if.end26.i.if.end50.i_crit_edge

if.end26.i.if.end50.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50.i

if.then29.i:                                      ; preds = %if.end26.i
  br i1 %cmp30120.i, label %try_again.loopexit.i, label %if.end34.i

if.end34.i:                                       ; preds = %if.then29.i
  %add35.i = add i32 %u_len.0115.i, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add35.i, i32 %dlen)
  %cmp36.i = icmp sgt i32 %add35.i, %dlen
  br i1 %cmp36.i, label %if.end34.i.udf_name_to_CS0.exit_crit_edge, label %cleanup.thread107.i

if.end34.i.udf_name_to_CS0.exit_crit_edge:        ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %udf_name_to_CS0.exit

cleanup.thread107.i:                              ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub40.i = add i32 %18, -65536
  %shr.i = lshr i32 %sub40.i, 10
  %and.i = lshr i32 %sub40.i, 18
  %19 = trunc i32 %and.i to i8
  %20 = and i8 %19, 3
  %conv42.i = or i8 %20, -40
  %inc.i = add i32 %u_len.0115.i, 1
  %arrayidx43.i = getelementptr i8, ptr %dname, i32 %u_len.0115.i
  %21 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv42.i, ptr %arrayidx43.i, align 1
  %conv45.i = trunc i32 %shr.i to i8
  %inc46.i = add i32 %u_len.0115.i, 2
  %arrayidx47.i = getelementptr i8, ptr %dname, i32 %inc.i
  %22 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv45.i, ptr %arrayidx47.i, align 1
  %and48.i = and i32 %18, 1023
  %or49.i = or i32 %and48.i, 56320
  %23 = ptrtoint ptr %uni_char.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or49.i, ptr %uni_char.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %cleanup.thread107.i, %if.end26.i.if.end50.i_crit_edge
  %u_len.2.i = phi i32 [ %u_len.0115.i, %if.end26.i.if.end50.i_crit_edge ], [ %inc46.i, %cleanup.thread107.i ]
  br i1 %cmp51119.i, label %if.then53.i, label %if.end50.i.if.end58.i_crit_edge

if.end50.i.if.end58.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58.i

if.then53.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %uni_char.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %uni_char.i, align 4
  %shr54.i = lshr i32 %25, 8
  %conv55.i = trunc i32 %shr54.i to i8
  %inc56.i = add i32 %u_len.2.i, 1
  %arrayidx57.i = getelementptr i8, ptr %dname, i32 %u_len.2.i
  %26 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv55.i, ptr %arrayidx57.i, align 1
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then53.i, %if.end50.i.if.end58.i_crit_edge
  %u_len.3.i = phi i32 [ %inc56.i, %if.then53.i ], [ %u_len.2.i, %if.end50.i.if.end58.i_crit_edge ]
  %27 = ptrtoint ptr %uni_char.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %uni_char.i, align 4
  %conv60.i = trunc i32 %28 to i8
  %inc61.i = add i32 %u_len.3.i, 1
  %arrayidx62.i = getelementptr i8, ptr %dname, i32 %u_len.3.i
  %29 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv60.i, ptr %arrayidx62.i, align 1
  %add63.i = add i32 %len.1.i, %i.0113.i
  %cmp5.i = icmp slt i32 %add63.i, %slen
  br i1 %cmp5.i, label %if.end58.i.for.body.i_crit_edge, label %if.end58.i.udf_name_to_CS0.exit_crit_edge

if.end58.i.udf_name_to_CS0.exit_crit_edge:        ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %udf_name_to_CS0.exit

if.end58.i.for.body.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

udf_name_to_CS0.exit:                             ; preds = %if.end58.i.udf_name_to_CS0.exit_crit_edge, %if.end34.i.udf_name_to_CS0.exit_crit_edge, %for.body.i.udf_name_to_CS0.exit_crit_edge, %if.end4.i.udf_name_to_CS0.exit_crit_edge, %entry.udf_name_to_CS0.exit_crit_edge
  %retval.4.i = phi i32 [ 0, %entry.udf_name_to_CS0.exit_crit_edge ], [ 1, %if.end4.i.udf_name_to_CS0.exit_crit_edge ], [ 0, %if.end34.i.udf_name_to_CS0.exit_crit_edge ], [ %inc61.i, %if.end58.i.udf_name_to_CS0.exit_crit_edge ], [ 0, %for.body.i.udf_name_to_CS0.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uni_char.i) #5
  ret i32 %retval.4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udf_name_conv_char(ptr noundef %str_o, i32 noundef %str_o_max_len, ptr nocapture noundef %str_o_idx, ptr nocapture noundef readonly %str_i, i32 noundef %str_i_max_len, ptr nocapture noundef %str_i_idx, i32 noundef %u_ch, ptr nocapture noundef writeonly %needsCRC, ptr noundef readonly %conv_f, i32 noundef %translate) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %u_ch)
  %cmp.i = icmp sgt i32 %u_ch, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %u_ch)
  %cmp15.not.i = icmp eq i32 %u_ch, 2
  %tobool5.not = icmp ne ptr %conv_f, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %translate)
  %tobool8.not = icmp ne i32 %translate, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %translate)
  %tobool12.not = icmp eq i32 %translate, 0
  %0 = ptrtoint ptr %str_i_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %str_i_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %str_i_max_len)
  %cmp152 = icmp slt i32 %1, %str_i_max_len
  br i1 %cmp152, label %entry.while.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

land.rhs.critedge:                                ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i93.c = sub i32 %str_i_idx.addr.2.i, %4
  %2 = ptrtoint ptr %str_i_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %str_i_idx, align 4
  %add.c = add i32 %3, %sub.i93.c
  store i32 %add.c, ptr %str_i_idx, align 4
  br label %land.rhs.backedge

while.body:                                       ; preds = %land.rhs.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = phi i32 [ %22, %land.rhs.backedge.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %tobool20.not153 = phi i1 [ false, %land.rhs.backedge.while.body_crit_edge ], [ true, %entry.while.body_crit_edge ]
  %5 = ptrtoint ptr %str_o_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %str_o_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %str_o_max_len)
  %cmp1.not = icmp slt i32 %6, %str_o_max_len
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %needsCRC to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %needsCRC, align 4
  br label %cleanup

if.end:                                           ; preds = %while.body
  %inc.i = add nsw i32 %4, 1
  %arrayidx.i = getelementptr i8, ptr %str_i, i32 %4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %9 to i32
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %inc2.i = add i32 %4, 2
  %arrayidx3.i = getelementptr i8, ptr %str_i, i32 %inc.i
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %11 to i32
  %or.i = or i32 %shl.i, %conv4.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %c.0.i = phi i32 [ %or.i, %if.then.i ], [ %conv.i, %if.end.if.end.i_crit_edge ]
  %str_i_idx.addr.0.i = phi i32 [ %inc2.i, %if.then.i ], [ %inc.i, %if.end.if.end.i_crit_edge ]
  %and.i = and i32 %c.0.i, -2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 55296, i32 %and.i)
  %cmp5.i = icmp eq i32 %and.i, 55296
  br i1 %cmp5.i, label %if.then7.i, label %if.end.i.get_utf16_char.exit_crit_edge

if.end.i.get_utf16_char.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_utf16_char.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %str_i_idx.addr.0.i, i32 %str_i_max_len)
  %cmp8.not.i = icmp slt i32 %str_i_idx.addr.0.i, %str_i_max_len
  %and12.i = and i32 %c.0.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool.not.i = icmp eq i32 %and12.i, 0
  %or.cond97.i = select i1 %cmp8.not.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond97.i, label %if.end14.i, label %if.then7.i.if.end19_crit_edge

if.then7.i.if.end19_crit_edge:                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.end14.i:                                       ; preds = %if.then7.i
  br i1 %cmp15.not.i, label %if.end14.i.if.end47.i_crit_edge, label %land.rhs.i

if.end14.i.if.end47.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47.i

land.rhs.i:                                       ; preds = %if.end14.i
  %.b96.i = load i1, ptr @get_utf16_char.__already_done, align 1
  br i1 %.b96.i, label %land.rhs.i.if.end47.i_crit_edge, label %if.then25.i, !prof !27

land.rhs.i.if.end47.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47.i

if.then25.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @get_utf16_char.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 71, i32 noundef 9, ptr noundef null) #5
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then25.i, %land.rhs.i.if.end47.i_crit_edge, %if.end14.i.if.end47.i_crit_edge
  %arrayidx56.i = getelementptr i8, ptr %str_i, i32 %str_i_idx.addr.0.i
  %12 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx56.i, align 1
  %conv57.i = zext i8 %13 to i32
  %inc59.i = add i32 %str_i_idx.addr.0.i, 2
  %14 = and i32 %conv57.i, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 220, i32 %14)
  %.not.i = icmp eq i32 %14, 220
  br i1 %.not.i, label %if.end69.i, label %if.end47.i.if.end19_crit_edge

if.end47.i.if.end19_crit_edge:                    ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.end69.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc55.i = add nsw i32 %str_i_idx.addr.0.i, 1
  %arrayidx60.i = getelementptr i8, ptr %str_i, i32 %inc55.i
  %15 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx60.i, align 1
  %conv61.i = zext i8 %16 to i32
  %shl58.i = shl nuw nsw i32 %conv57.i, 8
  %and70.i = shl nuw nsw i32 %c.0.i, 10
  %shl71.i = and i32 %and70.i, 1047552
  %add.i = add nuw nsw i32 %shl71.i, 65536
  %shl58.masked.i = and i32 %shl58.i, 768
  %and72.i = or i32 %shl58.masked.i, %conv61.i
  %add73.i = or i32 %and72.i, %add.i
  br label %get_utf16_char.exit

get_utf16_char.exit:                              ; preds = %if.end69.i, %if.end.i.get_utf16_char.exit_crit_edge
  %c.2.i = phi i32 [ %c.0.i, %if.end.i.get_utf16_char.exit_crit_edge ], [ %add73.i, %if.end69.i ]
  %str_i_idx.addr.2.i = phi i32 [ %str_i_idx.addr.0.i, %if.end.i.get_utf16_char.exit_crit_edge ], [ %inc59.i, %if.end69.i ]
  %17 = add nsw i32 %c.2.i, -1114112
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1114111, i32 %17)
  %18 = icmp ult i32 %17, -1114111
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %c.2.i)
  %cmp6 = icmp ugt i32 %c.2.i, 65535
  %or.cond81 = select i1 %tobool5.not, i1 %cmp6, i1 false
  %or.cond = or i1 %18, %or.cond81
  br i1 %or.cond, label %get_utf16_char.exit.if.end19_crit_edge, label %lor.lhs.false7

get_utf16_char.exit.if.end19_crit_edge:           ; preds = %get_utf16_char.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

lor.lhs.false7:                                   ; preds = %get_utf16_char.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %c.2.i)
  %cmp10 = icmp eq i32 %c.2.i, 47
  %or.cond108 = select i1 %tobool8.not, i1 %cmp10, i1 false
  br i1 %or.cond108, label %land.rhs.critedge, label %if.else

if.else:                                          ; preds = %lor.lhs.false7
  br i1 %tobool20.not153, label %if.end22, label %if.else.if.end22.thread_crit_edge

if.else.if.end22.thread_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.thread

if.end19:                                         ; preds = %get_utf16_char.exit.if.end19_crit_edge, %if.end47.i.if.end19_crit_edge, %if.then7.i.if.end19_crit_edge
  %str_i_idx.addr.2.i.pn = phi i32 [ %str_i_idx.addr.2.i, %get_utf16_char.exit.if.end19_crit_edge ], [ %inc59.i, %if.end47.i.if.end19_crit_edge ], [ %str_i_idx.addr.0.i, %if.then7.i.if.end19_crit_edge ]
  %sub.i93 = sub i32 %str_i_idx.addr.2.i.pn, %4
  %19 = ptrtoint ptr %str_i_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %str_i_idx, align 4
  %add = add i32 %20, %sub.i93
  store i32 %add, ptr %str_i_idx, align 4
  br i1 %tobool12.not, label %if.end19.if.end22.thread_crit_edge, label %if.end19.land.rhs.backedge_crit_edge

if.end19.land.rhs.backedge_crit_edge:             ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.backedge

if.end19.if.end22.thread_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.thread

land.rhs.backedge:                                ; preds = %if.end19.land.rhs.backedge_crit_edge, %land.rhs.critedge
  %21 = ptrtoint ptr %str_i_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %str_i_idx, align 4
  %cmp = icmp slt i32 %22, %str_i_max_len
  br i1 %cmp, label %land.rhs.backedge.while.body_crit_edge, label %while.end

land.rhs.backedge.while.body_crit_edge:           ; preds = %land.rhs.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %land.rhs.backedge
  br i1 %cmp152, label %while.end.if.end22.thread_crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.end.if.end22.thread_crit_edge:              ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.thread

if.end22.thread:                                  ; preds = %while.end.if.end22.thread_crit_edge, %if.end19.if.end22.thread_crit_edge, %if.else.if.end22.thread_crit_edge
  %23 = ptrtoint ptr %needsCRC to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %needsCRC, align 4
  br label %if.then24

if.end22:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i93123 = sub i32 %str_i_idx.addr.2.i, %4
  %24 = ptrtoint ptr %str_i_idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %str_i_idx, align 4
  %add124 = add i32 %25, %sub.i93123
  store i32 %add124, ptr %str_i_idx, align 4
  br label %if.then24

if.then24:                                        ; preds = %if.end22, %if.end22.thread
  %c.198 = phi i32 [ 95, %if.end22.thread ], [ %c.2.i, %if.end22 ]
  %tobool25.not = icmp eq ptr %conv_f, null
  br i1 %tobool25.not, label %if.else28, label %if.end36

if.else28:                                        ; preds = %if.then24
  %26 = ptrtoint ptr %str_o_idx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %str_o_idx, align 4
  %arrayidx29 = getelementptr i8, ptr %str_o, i32 %27
  %sub30 = sub i32 %str_o_max_len, %27
  %call31 = tail call i32 @utf32_to_utf8(i32 noundef %c.198, ptr noundef %arrayidx29, i32 noundef %sub30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.else28.if.then44_crit_edge, label %if.else28.if.then39_crit_edge

if.else28.if.then39_crit_edge:                    ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39

if.else28.if.then44_crit_edge:                    ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then44

if.end36:                                         ; preds = %if.then24
  %conv = trunc i32 %c.198 to i16
  %28 = ptrtoint ptr %str_o_idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %str_o_idx, align 4
  %arrayidx = getelementptr i8, ptr %str_o, i32 %29
  %sub = sub i32 %str_o_max_len, %29
  %call27 = tail call i32 %conv_f(i16 noundef zeroext %conv, ptr noundef %arrayidx, i32 noundef %sub) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call27)
  %cmp37 = icmp sgt i32 %call27, -1
  br i1 %cmp37, label %if.end36.if.then39_crit_edge, label %if.else41

if.end36.if.then39_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39

if.then39:                                        ; preds = %if.end36.if.then39_crit_edge, %if.else28.if.then39_crit_edge
  %len.0101 = phi i32 [ %call27, %if.end36.if.then39_crit_edge ], [ %call31, %if.else28.if.then39_crit_edge ]
  %30 = ptrtoint ptr %str_o_idx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %str_o_idx, align 4
  %add40 = add i32 %31, %len.0101
  store i32 %add40, ptr %str_o_idx, align 4
  br label %cleanup

if.else41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 -36, i32 %call27)
  %cmp42 = icmp eq i32 %call27, -36
  br i1 %cmp42, label %if.else41.if.then44_crit_edge, label %if.else45

if.else41.if.then44_crit_edge:                    ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then44

if.then44:                                        ; preds = %if.else41.if.then44_crit_edge, %if.else28.if.then44_crit_edge
  %32 = ptrtoint ptr %needsCRC to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %needsCRC, align 4
  br label %cleanup

if.else45:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %str_o_idx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %str_o_idx, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr %str_o_idx, align 4
  %arrayidx46 = getelementptr i8, ptr %str_o, i32 %34
  %35 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 95, ptr %arrayidx46, align 1
  %36 = ptrtoint ptr %needsCRC to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %needsCRC, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else45, %if.then44, %if.then39, %while.end.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then39 ], [ 0, %if.then44 ], [ 1, %if.else45 ], [ 0, %while.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_itu_t(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf32_to_utf8(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8_to_utf32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/udf/unicode.c", i32 367, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @udf_dstrCS0toChar._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @udf_dstrCS0toChar._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/udf/unicode.c", i32 188, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @udf_name_from_CS0._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @udf_name_from_CS0._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/udf/unicode.c", i32 197, i32 3}
!13 = !{ptr @udf_name_from_CS0._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @udf_name_from_CS0._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../fs/udf/unicode.c", i32 71, i32 3}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"auto-init"}
!27 = !{!"branch_weights", i32 2000, i32 1}
