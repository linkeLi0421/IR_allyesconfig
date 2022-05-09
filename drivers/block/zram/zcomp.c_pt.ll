; ModuleID = '/llk/IR_all_yes/drivers/block/zram/zcomp.c_pt.bc'
source_filename = "../drivers/block/zram/zcomp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.zcomp_strm = type { %struct.local_lock_t, ptr, ptr }
%struct.zcomp = type { ptr, ptr, %struct.hlist_node }

@backends = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[%s] \00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@zcomp_cpu_up_prepare.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&zstrm->lock\00", [19 x i8] zeroinitializer }, align 32
@zcomp_cpu_up_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Can't allocate a compression stream\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"zcomp_cpu_up_prepare\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/block/zram/zcomp.c\00", [37 x i8] zeroinitializer }, align 32
@zcomp_cpu_up_prepare._entry_ptr = internal global ptr @zcomp_cpu_up_prepare._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lzo\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lzo-rle\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lz4\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lz4hc\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"842\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zstd\00", [27 x i8] zeroinitializer }, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"l->owner\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.17 = private unnamed_addr constant [9 x i8] c"backends\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 17, i32 27 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 93, i32 6 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 96, i32 6 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 108, i32 44 }
@___asan_gen_.29 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 164, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 168, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 19, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 20, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 23, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 26, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 29, i32 2 }
@___asan_gen_.63 = private constant [30 x i8] c"../drivers/block/zram/zcomp.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 32, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 30, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 36, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @zcomp_cpu_up_prepare._entry, ptr @zcomp_cpu_up_prepare._entry_ptr, ptr @backends, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @zcomp_cpu_up_prepare.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @backends to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zcomp_cpu_up_prepare.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zcomp_cpu_up_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @zcomp_available_algorithm(ptr noundef %comp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__sysfs_match_string(ptr noundef nonnull @backends, i32 noundef 6, ptr noundef %comp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @crypto_has_alg(ptr noundef %comp, i32 noundef 2, i32 noundef 15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp2 = icmp eq i32 %call.i, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp2, %if.end ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sysfs_match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zcomp_available_show(ptr noundef %comp, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %comp, ptr noundef nonnull dereferenceable(4) @.str.7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %.str..str.1 = select i1 %tobool.not, ptr @.str, ptr @.str.1
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4094, ptr noundef nonnull %.str..str.1, ptr noundef nonnull @.str.7) #9
  %call.1 = tail call i32 @strcmp(ptr noundef %comp, ptr noundef nonnull dereferenceable(8) @.str.8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  %.str.sink53 = select i1 %tobool.not.1, ptr @.str, ptr @.str.1
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call3
  %sub1.1 = sub i32 4094, %call3
  %call3.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1, i32 noundef %sub1.1, ptr noundef nonnull %.str.sink53, ptr noundef nonnull @.str.8) #9
  %sz.1.1 = add i32 %call3.1, %call3
  %call.2 = tail call i32 @strcmp(ptr noundef %comp, ptr noundef nonnull dereferenceable(4) @.str.9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  %.str.sink54 = select i1 %tobool.not.2, ptr @.str, ptr @.str.1
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %sz.1.1
  %sub1.2 = sub i32 4094, %sz.1.1
  %call3.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2, i32 noundef %sub1.2, ptr noundef nonnull %.str.sink54, ptr noundef nonnull @.str.9) #9
  %sz.1.2 = add i32 %call3.2, %sz.1.1
  %call.3 = tail call i32 @strcmp(ptr noundef %comp, ptr noundef nonnull dereferenceable(6) @.str.10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  %.str.sink55 = select i1 %tobool.not.3, ptr @.str, ptr @.str.1
  %add.ptr.3 = getelementptr i8, ptr %buf, i32 %sz.1.2
  %sub1.3 = sub i32 4094, %sz.1.2
  %call3.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.3, i32 noundef %sub1.3, ptr noundef nonnull %.str.sink55, ptr noundef nonnull @.str.10) #9
  %sz.1.3 = add i32 %call3.3, %sz.1.2
  %call.4 = tail call i32 @strcmp(ptr noundef %comp, ptr noundef nonnull dereferenceable(4) @.str.11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  %.str.sink56 = select i1 %tobool.not.4, ptr @.str, ptr @.str.1
  %add.ptr.4 = getelementptr i8, ptr %buf, i32 %sz.1.3
  %sub1.4 = sub i32 4094, %sz.1.3
  %call3.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.4, i32 noundef %sub1.4, ptr noundef nonnull %.str.sink56, ptr noundef nonnull @.str.11) #9
  %sz.1.4 = add i32 %call3.4, %sz.1.3
  %call.5 = tail call i32 @strcmp(ptr noundef %comp, ptr noundef nonnull dereferenceable(5) @.str.12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  %add.ptr.5 = getelementptr i8, ptr %buf, i32 %sz.1.4
  %sub1.5 = sub i32 4094, %sz.1.4
  br i1 %tobool.not.5, label %for.inc.5.thread, label %for.inc.5

for.inc.5.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.5, i32 noundef %sub1.5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12) #9
  %sz.1.552 = add i32 %call3.5, %sz.1.4
  br label %if.end19

for.inc.5:                                        ; preds = %entry
  %0 = select i1 %tobool.not.4, i1 true, i1 %tobool.not.3
  %1 = select i1 %0, i1 true, i1 %tobool.not.2
  %2 = select i1 %1, i1 true, i1 %tobool.not.1
  %known_algorithm.1.off0.4 = select i1 %2, i1 true, i1 %tobool.not
  %call8.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.5, i32 noundef %sub1.5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12) #9
  %sz.1.5 = add i32 %call8.5, %sz.1.4
  br i1 %known_algorithm.1.off0.4, label %for.inc.5.if.end19_crit_edge, label %land.lhs.true

for.inc.5.if.end19_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true:                                    ; preds = %for.inc.5
  %call.i = tail call i32 @crypto_has_alg(ptr noundef %comp, i32 noundef 2, i32 noundef 15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp12 = icmp eq i32 %call.i, 1
  br i1 %cmp12, label %if.then13, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr14 = getelementptr i8, ptr %buf, i32 %sz.1.5
  %sub16 = sub i32 4094, %sz.1.5
  %call17 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr14, i32 noundef %sub16, ptr noundef nonnull @.str, ptr noundef %comp) #9
  %add18 = add i32 %call17, %sz.1.5
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %land.lhs.true.if.end19_crit_edge, %for.inc.5.if.end19_crit_edge, %for.inc.5.thread
  %sz.2 = phi i32 [ %sz.1.5, %for.inc.5.if.end19_crit_edge ], [ %add18, %if.then13 ], [ %sz.1.5, %land.lhs.true.if.end19_crit_edge ], [ %sz.1.552, %for.inc.5.thread ]
  %add.ptr20 = getelementptr i8, ptr %buf, i32 %sz.2
  %sub21 = sub i32 4096, %sz.2
  %call22 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20, i32 noundef %sub21, ptr noundef nonnull @.str.2) #9
  %add23 = add i32 %call22, %sz.2
  ret i32 %add23
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @zcomp_stream_get(ptr nocapture noundef readonly %comp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !35) #9
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !45
  %4 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %comp, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !35) #9
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, %6
  %13 = inttoptr i32 %add to ptr
  tail call fastcc void @local_lock_acquire(ptr noundef %13)
  %14 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %comp, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu, align 4
  %arrayidx15 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx15, align 4
  %add16 = add i32 %20, %16
  %21 = inttoptr i32 %add16 to ptr
  ret ptr %21
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_acquire(ptr noundef %l) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef %l, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@local_lock_acquire, %__here) to i32)) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %__here.if.end36_crit_edge

__here.if.end36_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

land.lhs.true:                                    ; preds = %__here
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %land.lhs.true.if.end36_crit_edge, label %do.end, !prof !46

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 @debug_locks_off() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %do.end.if.end36_crit_edge, label %land.lhs.true5

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %3 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end36_crit_edge

land.lhs.true5.if.end36_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 30, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #9
  br label %if.end36

if.end36:                                         ; preds = %do.end19, %land.lhs.true5.if.end36_crit_edge, %do.end.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %__here.if.end36_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !35) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %owner39 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner39 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %owner39, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zcomp_stream_put(ptr nocapture noundef readonly %comp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comp, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !35) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %2
  %9 = inttoptr i32 %add to ptr
  tail call fastcc void @local_lock_release(ptr noundef %9)
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !47
  %10 = tail call i32 @llvm.read_register.i32(metadata !35) #9
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %13, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !35) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !46

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16) #9
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zcomp_compress(ptr nocapture noundef readonly %zstrm, ptr noundef %src, ptr noundef %dst_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dst_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8192, ptr %dst_len, align 4
  %tfm = getelementptr inbounds %struct.zcomp_strm, ptr %zstrm, i32 0, i32 2
  %1 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tfm, align 4
  %buffer = getelementptr inbounds %struct.zcomp_strm, ptr %zstrm, i32 0, i32 1
  %3 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buffer, align 4
  %call = tail call i32 @crypto_comp_compress(ptr noundef %2, ptr noundef %src, i32 noundef 4096, ptr noundef %4, ptr noundef %dst_len) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_comp_compress(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zcomp_decompress(ptr nocapture noundef readonly %zstrm, ptr noundef %src, i32 noundef %src_len, ptr noundef %dst) local_unnamed_addr #0 align 64 {
entry:
  %dst_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst_len) #9
  %0 = ptrtoint ptr %dst_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4096, ptr %dst_len, align 4
  %tfm = getelementptr inbounds %struct.zcomp_strm, ptr %zstrm, i32 0, i32 2
  %1 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tfm, align 4
  %call = call i32 @crypto_comp_decompress(ptr noundef %2, ptr noundef %src, i32 noundef %src_len, ptr noundef %dst, ptr noundef nonnull %dst_len) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst_len) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_comp_decompress(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zcomp_cpu_up_prepare(i32 noundef %cpu, ptr nocapture noundef readonly %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %node, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %1 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add = add i32 %4, %2
  %5 = inttoptr i32 %add to ptr
  tail call void @debug_check_no_locks_freed(ptr noundef %5, i32 noundef 32) #9
  tail call void @lockdep_init_map_type(ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef nonnull @zcomp_cpu_up_prepare.__key, i32 noundef 0, i8 noundef zeroext 3, i8 noundef zeroext 0, i8 noundef zeroext 1) #9
  %owner.i = getelementptr inbounds %struct.local_lock_t, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %owner.i, align 4
  %name.i = getelementptr i8, ptr %node, i32 -4
  %7 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name.i, align 4
  %call.i.i = tail call ptr @crypto_alloc_base(ptr noundef %8, i32 noundef 2, i32 noundef 15) #9
  %tfm.i = getelementptr inbounds %struct.zcomp_strm, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %tfm.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i, ptr %tfm.i, align 4
  %call1.i = tail call i32 @__get_free_pages(i32 noundef 3520, i32 noundef 1) #9
  %10 = inttoptr i32 %call1.i to ptr
  %buffer.i = getelementptr inbounds %struct.zcomp_strm, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %buffer.i, align 4
  %12 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tfm.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  %cmp.i.i = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.do.end10_crit_edge, label %lor.lhs.false.i

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %13, ptr noundef nonnull %13) #9
  br label %do.end10

do.end10:                                         ; preds = %if.then.i.i, %entry.do.end10_crit_edge
  %14 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer.i, align 4
  %16 = ptrtoint ptr %15 to i32
  tail call void @free_pages(i32 noundef %16, i32 noundef 1) #9
  %17 = ptrtoint ptr %tfm.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %tfm.i, align 4
  %18 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %buffer.i, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %if.end

if.end:                                           ; preds = %do.end10, %lor.lhs.false.i.if.end_crit_edge
  %retval.0.i20 = phi i32 [ -12, %do.end10 ], [ 0, %lor.lhs.false.i.if.end_crit_edge ]
  ret i32 %retval.0.i20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_freed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zcomp_cpu_dead(i32 noundef %cpu, ptr nocapture noundef readonly %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %node, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %1 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add = add i32 %4, %2
  %5 = inttoptr i32 %add to ptr
  %tfm.i = getelementptr inbounds %struct.zcomp_strm, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tfm.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  %cmp.i.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.zcomp_strm_free.exit_crit_edge, label %if.then.i

entry.zcomp_strm_free.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %zcomp_strm_free.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %7, ptr noundef nonnull %7) #9
  br label %zcomp_strm_free.exit

zcomp_strm_free.exit:                             ; preds = %if.then.i, %entry.zcomp_strm_free.exit_crit_edge
  %buffer.i = getelementptr inbounds %struct.zcomp_strm, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer.i, align 4
  %10 = ptrtoint ptr %9 to i32
  tail call void @free_pages(i32 noundef %10, i32 noundef 1) #9
  %11 = ptrtoint ptr %tfm.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %tfm.i, align 4
  %12 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %buffer.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zcomp_destroy(ptr noundef %comp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %node = getelementptr inbounds %struct.zcomp, ptr %comp, i32 0, i32 2
  %call.i = tail call i32 @__cpuhp_state_remove_instance(i32 noundef 67, ptr noundef %node, i1 noundef zeroext true) #9
  %0 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comp, align 4
  tail call void @free_percpu(ptr noundef %1) #9
  tail call void @kfree(ptr noundef %comp) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @zcomp_create(ptr noundef %compress) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__sysfs_match_string(ptr noundef nonnull @backends, i32 noundef 6, ptr noundef %compress) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %zcomp_available_algorithm.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

zcomp_available_algorithm.exit:                   ; preds = %entry
  %call.i.i = tail call i32 @crypto_has_alg(ptr noundef %compress, i32 noundef 2, i32 noundef 15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp2.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp2.i, label %zcomp_available_algorithm.exit.if.end_crit_edge, label %zcomp_available_algorithm.exit.cleanup_crit_edge

zcomp_available_algorithm.exit.cleanup_crit_edge: ; preds = %zcomp_available_algorithm.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

zcomp_available_algorithm.exit.if.end_crit_edge:  ; preds = %zcomp_available_algorithm.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %zcomp_available_algorithm.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.zcomp, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %compress, ptr %name, align 4
  %call.i18 = tail call noalias ptr @__alloc_percpu(i32 noundef 40, i32 noundef 4) #15
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i18, ptr %call7.i.i, align 8
  %tobool.not.i = icmp eq ptr %call.i18, null
  br i1 %tobool.not.i, label %if.end5.if.then8_crit_edge, label %if.end.i21

if.end5.if.then8_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.end.i21:                                       ; preds = %if.end5
  %node.i = getelementptr inbounds %struct.zcomp, ptr %call7.i.i, i32 0, i32 2
  %call.i.i19 = tail call i32 @__cpuhp_state_add_instance(i32 noundef 67, ptr noundef %node.i, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19)
  %cmp.i20 = icmp slt i32 %call.i.i19, 0
  br i1 %cmp.i20, label %cleanup.i, label %if.end.i21.cleanup_crit_edge

if.end.i21.cleanup_crit_edge:                     ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.i:                                        ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call7.i.i, align 8
  tail call void @free_percpu(ptr noundef %4) #9
  %phi.cast = inttoptr i32 %call.i.i19 to ptr
  br label %if.then8

if.then8:                                         ; preds = %cleanup.i, %if.end5.if.then8_crit_edge
  %retval.0.i22.ph = phi ptr [ inttoptr (i32 -12 to ptr), %if.end5.if.then8_crit_edge ], [ %phi.cast, %cleanup.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.i21.cleanup_crit_edge, %if.end.cleanup_crit_edge, %zcomp_available_algorithm.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i22.ph, %if.then8 ], [ inttoptr (i32 -22 to ptr), %zcomp_available_algorithm.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ %call7.i.i, %if.end.i21.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_has_alg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_base(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_remove_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_add_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33}
!llvm.named.register.sp = !{!35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/block/zram/zcomp.c", i32 93, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/block/zram/zcomp.c", i32 96, i32 6}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/block/zram/zcomp.c", i32 108, i32 44}
!6 = !{ptr @zcomp_cpu_up_prepare.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/block/zram/zcomp.c", i32 164, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/block/zram/zcomp.c", i32 168, i32 3}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @zcomp_cpu_up_prepare._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @zcomp_cpu_up_prepare._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/block/zram/zcomp.c", i32 19, i32 2}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/block/zram/zcomp.c", i32 20, i32 2}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/block/zram/zcomp.c", i32 23, i32 2}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/block/zram/zcomp.c", i32 26, i32 2}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/block/zram/zcomp.c", i32 29, i32 2}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/block/zram/zcomp.c", i32 32, i32 2}
!27 = !{ptr @backends, !28, !"backends", i1 false, i1 false}
!28 = !{!"../drivers/block/zram/zcomp.c", i32 17, i32 27}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/local_lock_internal.h", i32 30, i32 2}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!35 = !{!"sp"}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 2152714331}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 2152717397}
