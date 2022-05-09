; ModuleID = '/llk/IR_all_yes/security/tomoyo/mount.c_pt.bc'
source_filename = "../security/tomoyo/mount.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tomoyo_obj_info = type { i8, [4 x i8], %struct.path, %struct.path, [4 x %struct.tomoyo_mini_stat], ptr }
%struct.path = type { ptr, ptr }
%struct.tomoyo_mini_stat = type { %struct.kuid_t, %struct.kgid_t, i32, i16, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.tomoyo_path_info = type { ptr, i32, i16, i8, i8 }
%struct.tomoyo_request_info = type { ptr, ptr, ptr, %union.anon.146, ptr, i8, i8, i8, i8, i8, i8 }
%union.anon.146 = type { %struct.anon.149 }
%struct.anon.149 = type { ptr, i32, i32, i32, i8 }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.tomoyo_mount_acl = type { %struct.tomoyo_acl_info, %struct.tomoyo_name_union, %struct.tomoyo_name_union, %struct.tomoyo_name_union, %struct.tomoyo_number_union }
%struct.tomoyo_acl_info = type <{ %struct.list_head, ptr, i8, i8 }>
%struct.tomoyo_name_union = type { ptr, ptr }
%struct.tomoyo_number_union = type { [2 x i32], ptr, [2 x i8] }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"<NULL>\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"--bind\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"--move\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"--remount\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"--make-unbindable\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"--make-private\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"--make-slave\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"--make-shared\00", [18 x i8] zeroinitializer }, align 32
@tomoyo_ss = external dso_local global %struct.srcu_struct, align 4
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"file mount %s %s %s 0x%lX\0A\00", [37 x i8] zeroinitializer }, align 32
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/srcu.h\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 235, i32 10 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 14, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 15, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 16, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 17, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 18, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 19, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 20, i32 35 }
@___asan_gen_.35 = private constant [27 x i8] c"../security/tomoyo/mount.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 32, i32 30 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [24 x i8] c"../include/linux/srcu.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 189, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_mount_permission(ptr noundef %dev_name, ptr noundef %path, ptr noundef %type, i32 noundef %flags, ptr nocapture noundef readnone %data_page) local_unnamed_addr #0 align 64 {
entry:
  %obj.i = alloca %struct.tomoyo_obj_info, align 4
  %path.i = alloca %struct.path, align 8
  %rtype.i = alloca %struct.tomoyo_path_info, align 4
  %rdev.i = alloca %struct.tomoyo_path_info, align 4
  %rdir.i = alloca %struct.tomoyo_path_info, align 4
  %r = alloca %struct.tomoyo_request_info, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %r) #4
  %0 = call ptr @memset(ptr %r, i32 255, i32 44)
  %call = call i32 @tomoyo_init_request_info(ptr noundef nonnull %r, ptr noundef null, i8 noundef zeroext 20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %flags, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1058209792, i32 %and)
  %cmp1 = icmp eq i32 %and, -1058209792
  %and3 = and i32 %flags, 65535
  %spec.select = select i1 %cmp1, i32 %and3, i32 %flags
  %and5 = and i32 %spec.select, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %and7 = and i32 %spec.select, -33
  br label %if.end59

if.else:                                          ; preds = %if.end
  %and8 = and i32 %spec.select, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else12, label %if.then10

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %and11 = and i32 %spec.select, -4097
  br label %if.end59

if.else12:                                        ; preds = %if.else
  %and13 = and i32 %spec.select, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else21, label %if.then15

if.then15:                                        ; preds = %if.else12
  %and16 = and i32 %spec.select, 917504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  %and20 = and i32 %spec.select, -1048577
  br label %if.end59

if.else21:                                        ; preds = %if.else12
  %and22 = and i32 %spec.select, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.else30, label %if.then24

if.then24:                                        ; preds = %if.else21
  %and25 = and i32 %spec.select, 1703936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end28, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end28:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  %and29 = and i32 %spec.select, -262145
  br label %if.end59

if.else30:                                        ; preds = %if.else21
  %and31 = and i32 %spec.select, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else39, label %if.then33

if.then33:                                        ; preds = %if.else30
  %and34 = and i32 %spec.select, 1441792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end37, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end37:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #6
  %and38 = and i32 %spec.select, -524289
  br label %if.end59

if.else39:                                        ; preds = %if.else30
  %and40 = and i32 %spec.select, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.else48, label %if.then42

if.then42:                                        ; preds = %if.else39
  %and43 = and i32 %spec.select, 1835008
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end46, label %if.then42.cleanup_crit_edge

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end46:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #6
  %and47 = and i32 %spec.select, -131073
  br label %if.end59

if.else48:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #6
  %and49 = and i32 %spec.select, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %and52 = and i32 %spec.select, -8193
  %spec.select88 = select i1 %tobool50.not, ptr %type, ptr @.str.2
  br label %if.end59

if.end59:                                         ; preds = %if.else48, %if.end46, %if.end37, %if.end28, %if.end19, %if.then10, %if.then6
  %type.addr.0 = phi ptr [ @.str.3, %if.then6 ], [ @.str.1, %if.then10 ], [ @.str.7, %if.end19 ], [ @.str.5, %if.end28 ], [ @.str.6, %if.end37 ], [ @.str.4, %if.end46 ], [ %spec.select88, %if.else48 ]
  %flags.addr.1 = phi i32 [ %and7, %if.then6 ], [ %and11, %if.then10 ], [ %and20, %if.end19 ], [ %and29, %if.end28 ], [ %and38, %if.end37 ], [ %and47, %if.end46 ], [ %and52, %if.else48 ]
  %tobool60.not = icmp eq ptr %type.addr.0, null
  %spec.store.select = select i1 %tobool60.not, ptr @.str, ptr %type.addr.0
  %call.i.i = call i32 @__srcu_read_lock(ptr noundef nonnull @tomoyo_ss) #4
  call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16)) #4
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %obj.i) #4
  %1 = call ptr @memset(ptr %obj.i, i32 0, i32 124)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i) #4
  %2 = ptrtoint ptr %path.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i, align 8, !annotation !32
  %3 = getelementptr inbounds %struct.path, ptr %path.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rtype.i) #4
  %5 = call ptr @memset(ptr %rtype.i, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rdev.i) #4
  %6 = call ptr @memset(ptr %rdev.i, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rdir.i) #4
  %7 = call ptr @memset(ptr %rdir.i, i32 255, i32 12)
  %8 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %obj.i, ptr %r, align 4
  %call.i = call ptr @tomoyo_encode(ptr noundef %spec.store.select) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end59.out.i_crit_edge, label %if.end.i

if.end59.out.i_crit_edge:                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.i

if.end.i:                                         ; preds = %if.end59
  %9 = ptrtoint ptr %rtype.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %rtype.i, align 4
  call void @tomoyo_fill_path_info(ptr noundef nonnull %rtype.i) #4
  %path2.i = getelementptr inbounds %struct.tomoyo_obj_info, ptr %obj.i, i32 0, i32 3
  %10 = ptrtoint ptr %path to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %path, align 4
  %12 = ptrtoint ptr %path2.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %path2.i, align 4
  %call2.i = call ptr @tomoyo_realpath_from_path(ptr noundef %path) #4
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i.out.i_crit_edge, label %if.end5.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.i

if.end5.i:                                        ; preds = %if.end.i
  %13 = ptrtoint ptr %rdir.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call2.i, ptr %rdir.i, align 4
  call void @tomoyo_fill_path_info(ptr noundef nonnull %rdir.i) #4
  %cmp.i = icmp eq ptr %spec.store.select, @.str.3
  %cmp8.i = icmp eq ptr %spec.store.select, @.str.4
  %or.cond.i = or i1 %cmp.i, %cmp8.i
  %cmp9.i = icmp eq ptr %spec.store.select, @.str.5
  %or.cond103.i = or i1 %cmp9.i, %or.cond.i
  %cmp11.i = icmp eq ptr %spec.store.select, @.str.6
  %or.cond104.i = or i1 %cmp11.i, %or.cond103.i
  %cmp13.i = icmp eq ptr %spec.store.select, @.str.7
  %or.cond105.i = or i1 %cmp13.i, %or.cond104.i
  br i1 %or.cond105.i, label %if.end5.i.if.else43.i_crit_edge, label %if.else15.i

if.end5.i.if.else43.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else43.i

if.else15.i:                                      ; preds = %if.end5.i
  %cmp16.i = icmp eq ptr %spec.store.select, @.str.1
  %cmp18.i = icmp eq ptr %spec.store.select, @.str.2
  %or.cond106.i = or i1 %cmp16.i, %cmp18.i
  br i1 %or.cond106.i, label %if.else15.i.if.then32.i_crit_edge, label %if.else20.i

if.else15.i.if.then32.i_crit_edge:                ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32.i

if.else20.i:                                      ; preds = %if.else15.i
  %call21.i = call ptr @get_fs_type(ptr noundef %spec.store.select) #4
  %tobool22.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool22.not.i, label %if.else20.i.out.i_crit_edge, label %if.end30.i

if.else20.i.out.i_crit_edge:                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.i

if.end30.i:                                       ; preds = %if.else20.i
  %fs_flags.i = getelementptr inbounds %struct.file_system_type, ptr %call21.i, i32 0, i32 1
  %14 = ptrtoint ptr %fs_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fs_flags.i, align 4
  %and.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool25.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool25.not.i, label %if.end30.i.if.else43.i_crit_edge, label %if.end30.i.if.then32.i_crit_edge

if.end30.i.if.then32.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32.i

if.end30.i.if.else43.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else43.i

if.then32.i:                                      ; preds = %if.end30.i.if.then32.i_crit_edge, %if.else15.i.if.then32.i_crit_edge
  %need_dev.0120.i = phi i32 [ 1, %if.end30.i.if.then32.i_crit_edge ], [ -1, %if.else15.i.if.then32.i_crit_edge ]
  %fstype.0119.i = phi ptr [ %call21.i, %if.end30.i.if.then32.i_crit_edge ], [ null, %if.else15.i.if.then32.i_crit_edge ]
  %tobool33.not.i = icmp eq ptr %dev_name, null
  br i1 %tobool33.not.i, label %if.then32.i.out.i_crit_edge, label %lor.lhs.false34.i

if.then32.i.out.i_crit_edge:                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.i

lor.lhs.false34.i:                                ; preds = %if.then32.i
  %call35.i = call i32 @kern_path(ptr noundef nonnull %dev_name, i32 noundef 1, ptr noundef nonnull %path.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %lor.lhs.false34.i.out.i_crit_edge

lor.lhs.false34.i.out.i_crit_edge:                ; preds = %lor.lhs.false34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.i

if.end38.i:                                       ; preds = %lor.lhs.false34.i
  %path1.i = getelementptr inbounds %struct.tomoyo_obj_info, ptr %obj.i, i32 0, i32 2
  %16 = ptrtoint ptr %path.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %path.i, align 8
  %18 = ptrtoint ptr %path1.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %path1.i, align 4
  %call39.i = call ptr @tomoyo_realpath_from_path(ptr noundef nonnull %path.i) #4
  %tobool40.not.i = icmp eq ptr %call39.i, null
  br i1 %tobool40.not.i, label %if.end38.i.out.i_crit_edge, label %if.end38.i.if.end51.i_crit_edge

if.end38.i.if.end51.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51.i

if.end38.i.out.i_crit_edge:                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.i

if.else43.i:                                      ; preds = %if.end30.i.if.else43.i_crit_edge, %if.end5.i.if.else43.i_crit_edge
  %fstype.0112.i = phi ptr [ %call21.i, %if.end30.i.if.else43.i_crit_edge ], [ null, %if.end5.i.if.else43.i_crit_edge ]
  %tobool44.not.i = icmp eq ptr %dev_name, null
  %spec.store.select.i = select i1 %tobool44.not.i, ptr @.str, ptr %dev_name
  %call47.i = call ptr @tomoyo_encode(ptr noundef %spec.store.select.i) #4
  %tobool48.not.i = icmp eq ptr %call47.i, null
  br i1 %tobool48.not.i, label %if.else43.i.out.i_crit_edge, label %if.else43.i.if.end51.i_crit_edge

if.else43.i.if.end51.i_crit_edge:                 ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51.i

if.else43.i.out.i_crit_edge:                      ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.i

if.end51.i:                                       ; preds = %if.else43.i.if.end51.i_crit_edge, %if.end38.i.if.end51.i_crit_edge
  %need_dev.0113.i = phi i32 [ %need_dev.0120.i, %if.end38.i.if.end51.i_crit_edge ], [ 0, %if.else43.i.if.end51.i_crit_edge ]
  %fstype.0111.i = phi ptr [ %fstype.0119.i, %if.end38.i.if.end51.i_crit_edge ], [ %fstype.0112.i, %if.else43.i.if.end51.i_crit_edge ]
  %requested_dev_name.0.i = phi ptr [ %call39.i, %if.end38.i.if.end51.i_crit_edge ], [ %call47.i, %if.else43.i.if.end51.i_crit_edge ]
  %19 = ptrtoint ptr %rdev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %requested_dev_name.0.i, ptr %rdev.i, align 4
  call void @tomoyo_fill_path_info(ptr noundef nonnull %rdev.i) #4
  %param_type.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 5
  %20 = ptrtoint ptr %param_type.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 4, ptr %param_type.i, align 4
  %param.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3
  %need_dev53.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 4
  %21 = ptrtoint ptr %need_dev53.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %need_dev.0113.i, ptr %need_dev53.i, align 4
  %dev.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 2
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %rdev.i, ptr %dev.i, align 4
  %dir56.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 1
  %23 = ptrtoint ptr %dir56.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %rdir.i, ptr %dir56.i, align 4
  %24 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %rtype.i, ptr %param.i, align 4
  %flags60.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 3
  %25 = ptrtoint ptr %flags60.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %flags.addr.1, ptr %flags60.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end51.i
  call void @tomoyo_check_acl(ptr noundef nonnull %r, ptr noundef nonnull @tomoyo_check_mount_acl) #4
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %30 = ptrtoint ptr %dir56.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dir56.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %34 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %param.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %38 = ptrtoint ptr %flags60.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags60.i, align 4
  %call.i.i90 = call i32 (ptr, ptr, ...) @tomoyo_supervisor(ptr noundef nonnull %r, ptr noundef nonnull @.str.8, ptr noundef %29, ptr noundef %33, ptr noundef %37, i32 noundef %39) #4
  %cmp62.i = icmp eq i32 %call.i.i90, 1
  br i1 %cmp62.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.out.i_crit_edge

do.body.i.out.i_crit_edge:                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

out.i:                                            ; preds = %do.body.i.out.i_crit_edge, %if.else43.i.out.i_crit_edge, %if.end38.i.out.i_crit_edge, %lor.lhs.false34.i.out.i_crit_edge, %if.then32.i.out.i_crit_edge, %if.else20.i.out.i_crit_edge, %if.end.i.out.i_crit_edge, %if.end59.out.i_crit_edge
  %fstype.1.i = phi ptr [ null, %if.end59.out.i_crit_edge ], [ null, %if.end.i.out.i_crit_edge ], [ null, %if.else20.i.out.i_crit_edge ], [ %fstype.0119.i, %lor.lhs.false34.i.out.i_crit_edge ], [ %fstype.0119.i, %if.then32.i.out.i_crit_edge ], [ %fstype.0119.i, %if.end38.i.out.i_crit_edge ], [ %fstype.0112.i, %if.else43.i.out.i_crit_edge ], [ %fstype.0111.i, %do.body.i.out.i_crit_edge ]
  %requested_dir_name.0.i = phi ptr [ null, %if.end59.out.i_crit_edge ], [ null, %if.end.i.out.i_crit_edge ], [ %call2.i, %if.else20.i.out.i_crit_edge ], [ %call2.i, %lor.lhs.false34.i.out.i_crit_edge ], [ %call2.i, %if.then32.i.out.i_crit_edge ], [ %call2.i, %if.end38.i.out.i_crit_edge ], [ %call2.i, %if.else43.i.out.i_crit_edge ], [ %call2.i, %do.body.i.out.i_crit_edge ]
  %requested_dev_name.1.i = phi ptr [ null, %if.end59.out.i_crit_edge ], [ null, %if.end.i.out.i_crit_edge ], [ null, %if.else20.i.out.i_crit_edge ], [ null, %lor.lhs.false34.i.out.i_crit_edge ], [ null, %if.then32.i.out.i_crit_edge ], [ null, %if.end38.i.out.i_crit_edge ], [ null, %if.else43.i.out.i_crit_edge ], [ %requested_dev_name.0.i, %do.body.i.out.i_crit_edge ]
  %error.0.i = phi i32 [ -12, %if.end59.out.i_crit_edge ], [ -12, %if.end.i.out.i_crit_edge ], [ -19, %if.else20.i.out.i_crit_edge ], [ -2, %lor.lhs.false34.i.out.i_crit_edge ], [ -2, %if.then32.i.out.i_crit_edge ], [ -2, %if.end38.i.out.i_crit_edge ], [ -12, %if.else43.i.out.i_crit_edge ], [ %call.i.i90, %do.body.i.out.i_crit_edge ]
  call void @kfree(ptr noundef %requested_dev_name.1.i) #4
  call void @kfree(ptr noundef %requested_dir_name.0.i) #4
  %tobool63.not.i = icmp eq ptr %fstype.1.i, null
  br i1 %tobool63.not.i, label %out.i.if.end65.i_crit_edge, label %if.then64.i

out.i.if.end65.i_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65.i

if.then64.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @put_filesystem(ptr noundef nonnull %fstype.1.i) #4
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then64.i, %out.i.if.end65.i_crit_edge
  call void @kfree(ptr noundef %call.i) #4
  %dentry.i = getelementptr inbounds %struct.tomoyo_obj_info, ptr %obj.i, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dentry.i, align 4
  %tobool67.not.i = icmp eq ptr %41, null
  br i1 %tobool67.not.i, label %if.end65.i.tomoyo_mount_acl.exit_crit_edge, label %if.then68.i

if.end65.i.tomoyo_mount_acl.exit_crit_edge:       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tomoyo_mount_acl.exit

if.then68.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #6
  %path166.i = getelementptr inbounds %struct.tomoyo_obj_info, ptr %obj.i, i32 0, i32 2
  call void @path_put(ptr noundef %path166.i) #4
  br label %tomoyo_mount_acl.exit

tomoyo_mount_acl.exit:                            ; preds = %if.then68.i, %if.end65.i.tomoyo_mount_acl.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rdir.i) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rdev.i) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rtype.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #4
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %obj.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %tobool.not.i.i = icmp ult i32 %call.i.i, 2
  br i1 %tobool.not.i.i, label %tomoyo_mount_acl.exit.tomoyo_read_unlock.exit_crit_edge, label %land.rhs.i.i

tomoyo_mount_acl.exit.tomoyo_read_unlock.exit_crit_edge: ; preds = %tomoyo_mount_acl.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %tomoyo_read_unlock.exit

land.rhs.i.i:                                     ; preds = %tomoyo_mount_acl.exit
  %.b1.i.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge, label %if.then.i.i, !prof !33

land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tomoyo_read_unlock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 189, i32 noundef 9, ptr noundef null) #4
  br label %tomoyo_read_unlock.exit

tomoyo_read_unlock.exit:                          ; preds = %if.then.i.i, %land.rhs.i.i.tomoyo_read_unlock.exit_crit_edge, %tomoyo_mount_acl.exit.tomoyo_read_unlock.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16)) #4
  call void @__srcu_read_unlock(ptr noundef nonnull @tomoyo_ss, i32 noundef %call.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %tomoyo_read_unlock.exit, %if.then42.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0.i, %tomoyo_read_unlock.exit ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.then15.cleanup_crit_edge ], [ -22, %if.then24.cleanup_crit_edge ], [ -22, %if.then33.cleanup_crit_edge ], [ -22, %if.then42.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %r) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_init_request_info(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_encode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_fill_path_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_realpath_from_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_fs_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_check_acl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tomoyo_check_mount_acl(ptr nocapture noundef readonly %r, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %flags1 = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %ptr, i32 0, i32 4
  %call = tail call zeroext i1 @tomoyo_compare_number_union(i32 noundef %1, ptr noundef %flags1) #4
  br i1 %call, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %param = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3
  %2 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %param, align 4
  %fs_type = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %ptr, i32 0, i32 3
  %call3 = tail call ptr @tomoyo_compare_name_union(ptr noundef %3, ptr noundef %fs_type) #4
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %land.lhs.true.land.end_crit_edge, label %land.lhs.true4

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %dir = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 1
  %4 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dir, align 4
  %dir_name = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %ptr, i32 0, i32 2
  %call6 = tail call ptr @tomoyo_compare_name_union(ptr noundef %5, ptr noundef %dir_name) #4
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %land.lhs.true4.land.end_crit_edge, label %land.rhs

land.lhs.true4.land.end_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true4
  %need_dev = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 4
  %6 = ptrtoint ptr %need_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %need_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool9.not, label %land.rhs.land.end_crit_edge, label %lor.rhs

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

lor.rhs:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 3, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dev_name = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %ptr, i32 0, i32 1
  %call11 = tail call ptr @tomoyo_compare_name_union(ptr noundef %9, ptr noundef %dev_name) #4
  %tobool12 = icmp ne ptr %call11, null
  br label %land.end

land.end:                                         ; preds = %lor.rhs, %land.rhs.land.end_crit_edge, %land.lhs.true4.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %10 = phi i1 [ false, %land.lhs.true4.land.end_crit_edge ], [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ true, %land.rhs.land.end_crit_edge ], [ %tobool12, %lor.rhs ]
  ret i1 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_compare_number_union(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_compare_name_union(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_supervisor(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/tomoyo/mount.c", i32 235, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/tomoyo/mount.c", i32 14, i32 35}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/tomoyo/mount.c", i32 15, i32 35}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/tomoyo/mount.c", i32 16, i32 35}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/tomoyo/mount.c", i32 17, i32 35}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/tomoyo/mount.c", i32 18, i32 35}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/tomoyo/mount.c", i32 19, i32 35}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/tomoyo/mount.c", i32 20, i32 35}
!16 = distinct !{null, !17, !"tomoyo_mounts", i1 false, i1 false}
!17 = !{!"../security/tomoyo/mount.c", i32 13, i32 27}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../security/tomoyo/mount.c", i32 32, i32 30}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/srcu.h", i32 189, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"auto-init"}
!33 = !{!"branch_weights", i32 2000, i32 1}
