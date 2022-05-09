; ModuleID = '/llk/IR_all_yes/kernel/user.c_pt.bc'
source_filename = "../kernel/user.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+init_user_ns\22, \22a\22\09"
module asm "\09.weak\09__crc_init_user_ns\09\09\09\09"
module asm "\09.long\09__crc_init_user_ns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_user_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22init_user_ns\22\09\09\09\09\09"
module asm "__kstrtabns_init_user_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.proc_ns_operations = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.50, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i32, %struct.atomic_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic_t, %struct.atomic_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }

@userns_operations = external dso_local constant %struct.proc_ns_operations, align 4
@init_user_ns = dso_local global { %struct.user_namespace, [128 x i8] } { %struct.user_namespace { %struct.uid_gid_map { i32 1, %union.anon { [5 x %struct.uid_gid_extent] [%struct.uid_gid_extent { i32 0, i32 0, i32 -1 }, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer] } }, %struct.uid_gid_map { i32 1, %union.anon { [5 x %struct.uid_gid_extent] [%struct.uid_gid_extent { i32 0, i32 0, i32 -1 }, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer] } }, %struct.uid_gid_map { i32 1, %union.anon { [5 x %struct.uid_gid_extent] [%struct.uid_gid_extent { i32 0, i32 0, i32 -1 }, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer, %struct.uid_gid_extent zeroinitializer] } }, ptr null, i32 0, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.ns_common { %struct.atomic_t zeroinitializer, ptr @userns_operations, i32 -268435459, %struct.refcount_struct { %struct.atomic_t { i32 3 } } }, i32 1, i8 0, %struct.list_head { ptr getelementptr (i8, ptr @init_user_ns, i64 232), ptr getelementptr (i8, ptr @init_user_ns, i64 232) }, ptr null, %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @init_user_ns, i64 300), ptr getelementptr (i8, ptr @init_user_ns, i64 300) }, ptr getelementptr (i8, ptr @init_user_ns, i64 244), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, ptr null, %struct.work_struct zeroinitializer, %struct.ctl_table_set zeroinitializer, ptr null, ptr null, [16 x i32] zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"init_user_ns.keyring_sem.wait_lock\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"init_user_ns.keyring_sem\00", [39 x i8] zeroinitializer }, align 32
@__kstrtab_init_user_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_user_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_init_user_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_user_ns to i32), ptr @__kstrtab_init_user_ns, ptr @__kstrtabns_init_user_ns }, section "___ksymtab_gpl+init_user_ns", align 4
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"root_user.ratelimit.lock\00", [39 x i8] zeroinitializer }, align 32
@root_user = dso_local global { %struct.user_struct, [48 x i8] } { %struct.user_struct { %struct.refcount_struct { %struct.atomic_t { i32 1 } }, %struct.percpu_counter zeroinitializer, i32 0, %struct.atomic_t zeroinitializer, %struct.hlist_node zeroinitializer, %struct.kuid_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, [48 x i8] zeroinitializer }, align 32
@uidhash_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.7 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@uidhash_table = internal global { [128 x %struct.hlist_head], [128 x i8] } zeroinitializer, align 32
@uid_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_user__174_251_uid_cache_init4 = internal global ptr @uid_cache_init, section ".initcall4.init", align 4
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uidhash_lock\00", [19 x i8] zeroinitializer }, align 32
@user_epoll_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ratelimit_state_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&rs->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uid_cache\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"root_user epoll percpu counter alloc failed\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [13 x i8] c"init_user_ns\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 27, i32 23 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 68, i32 17 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 102, i32 15 }
@___asan_gen_.19 = private unnamed_addr constant [10 x i8] c"root_user\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 99, i32 20 }
@___asan_gen_.22 = private unnamed_addr constant [13 x i8] c"uidhash_lock\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"uidhash_table\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 85, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant [11 x i8] c"uid_cachep\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 84, i32 27 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 96, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 135, i32 9 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [29 x i8] c"../include/linux/ratelimit.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 14, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 235, i32 33 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private constant [17 x i8] c"../kernel/user.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 242, i32 9 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__initcall__kmod_user__174_251_uid_cache_init4, ptr @__ksymtab_init_user_ns, ptr @init_user_ns, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @root_user, ptr @uidhash_lock, ptr @uidhash_table, ptr @uid_cachep, ptr @.str.3, ptr @user_epoll_alloc.__key, ptr @ratelimit_state_init.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_user_ns to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @root_user to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uidhash_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uidhash_table to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uid_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_epoll_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ratelimit_state_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_user([1 x i32] %uid.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @uidhash_lock) #6
  %uid.coerce.fca.0.extract.i = extractvalue [1 x i32] %uid.coerce, 0
  %shr = lshr i32 %uid.coerce.fca.0.extract.i, 7
  %add = add i32 %shr, %uid.coerce.fca.0.extract.i
  %and = and i32 %add, 127
  %add.ptr = getelementptr %struct.hlist_head, ptr @uidhash_table, i32 %and
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 -88
  %tobool2.not2831.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not28.i = or i1 %tobool.not.i, %tobool2.not2831.i
  br i1 %tobool2.not28.i, label %entry.uid_hash_find.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.uid_hash_find.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %uid_hash_find.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %user.029.i = phi ptr [ %add.ptr12.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %entry.for.body.i_crit_edge ]
  %uid3.i = getelementptr inbounds %struct.user_struct, ptr %user.029.i, i32 0, i32 5
  %2 = ptrtoint ptr %uid3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack.i = load i32, ptr %uid3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %uid.coerce.fca.0.extract.i)
  %cmp.i.i = icmp eq i32 %.unpack.i, %uid.coerce.fca.0.extract.i
  br i1 %cmp.i.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %user.029.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull %user.029.i, i32 1, i32 3, i32 1) #6
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %user.029.i, ptr nonnull %user.029.i, i32 1, ptr nonnull elementtype(i32) %user.029.i) #6, !srcloc !38
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !39

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.uid_hash_find.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !40

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.uid_hash_find.exit_crit_edge:     ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %uid_hash_find.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %user.029.i, i32 noundef %.sink.i.i.i.i) #6
  br label %uid_hash_find.exit

for.inc.i:                                        ; preds = %for.body.i
  %uidhash_node.i = getelementptr inbounds %struct.user_struct, ptr %user.029.i, i32 0, i32 4
  %5 = ptrtoint ptr %uidhash_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %uidhash_node.i, align 8
  %tobool8.not.i = icmp eq ptr %6, null
  %add.ptr12.i = getelementptr i8, ptr %6, i32 -88
  %tobool2.not33.i = icmp eq ptr %add.ptr12.i, null
  %tobool2.not.i = or i1 %tobool8.not.i, %tobool2.not33.i
  br i1 %tobool2.not.i, label %for.inc.i.uid_hash_find.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.uid_hash_find.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %uid_hash_find.exit

uid_hash_find.exit:                               ; preds = %for.inc.i.uid_hash_find.exit_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.uid_hash_find.exit_crit_edge, %entry.uid_hash_find.exit_crit_edge
  %user.027.i = phi ptr [ %user.029.i, %if.end15.sink.split.i.i.i.i ], [ %user.029.i, %if.else.i.i.i.i.uid_hash_find.exit_crit_edge ], [ null, %entry.uid_hash_find.exit_crit_edge ], [ null, %for.inc.i.uid_hash_find.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @uidhash_lock, i32 noundef %call2) #6
  ret ptr %user.027.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_uid(ptr noundef %up) local_unnamed_addr #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !41
  %tobool.not = icmp eq ptr %up, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call zeroext i1 @refcount_dec_and_lock_irqsave(ptr noundef nonnull %up, ptr noundef nonnull @uidhash_lock, ptr noundef nonnull %flags) #6
  br i1 %call, label %if.then1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then1:                                         ; preds = %if.end
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %uidhash_node.i.i = getelementptr inbounds %struct.user_struct, ptr %up, i32 0, i32 4
  %pprev.i.i.i.i = getelementptr inbounds %struct.user_struct, ptr %up, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.not.i.i.i, label %if.then1.free_user.exit_crit_edge, label %if.then.i.i.i

if.then1.free_user.exit_crit_edge:                ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_user.exit

if.then.i.i.i:                                    ; preds = %if.then1
  %5 = ptrtoint ptr %uidhash_node.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %uidhash_node.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %6, ptr %4, align 4
  %tobool.not.i3.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i3.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %4, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %9 = ptrtoint ptr %uidhash_node.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %uidhash_node.i.i, align 4
  %10 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %pprev.i.i.i.i, align 4
  br label %free_user.exit

free_user.exit:                                   ; preds = %__hlist_del.exit.i.i.i, %if.then1.free_user.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @uidhash_lock, i32 noundef %2) #6
  %epoll_watches.i.i = getelementptr inbounds %struct.user_struct, ptr %up, i32 0, i32 1
  call void @percpu_counter_destroy(ptr noundef %epoll_watches.i.i) #6
  %11 = load ptr, ptr @uid_cachep, align 4
  call void @kmem_cache_free(ptr noundef %11, ptr noundef nonnull %up) #6
  br label %cleanup

cleanup:                                          ; preds = %free_user.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_lock_irqsave(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_uid([1 x i32] %uid.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %uid.coerce.fca.0.extract = extractvalue [1 x i32] %uid.coerce, 0
  %shr = lshr i32 %uid.coerce.fca.0.extract, 7
  %add = add i32 %shr, %uid.coerce.fca.0.extract
  %and = and i32 %add, 127
  %add.ptr = getelementptr %struct.hlist_head, ptr @uidhash_table, i32 %and
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @uidhash_lock) #6
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 -88
  %tobool2.not2831.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not28.i = or i1 %tobool.not.i, %tobool2.not2831.i
  br i1 %tobool2.not28.i, label %entry.if.then_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %user.029.i = phi ptr [ %add.ptr12.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %entry.for.body.i_crit_edge ]
  %uid3.i = getelementptr inbounds %struct.user_struct, ptr %user.029.i, i32 0, i32 5
  %2 = ptrtoint ptr %uid3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack.i = load i32, ptr %uid3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %uid.coerce.fca.0.extract)
  %cmp.i.i = icmp eq i32 %.unpack.i, %uid.coerce.fca.0.extract
  br i1 %cmp.i.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %user.029.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull %user.029.i, i32 1, i32 3, i32 1) #6
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %user.029.i, ptr nonnull %user.029.i, i32 1, ptr nonnull elementtype(i32) %user.029.i) #6, !srcloc !38
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !39

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.uid_hash_find.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !40

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.uid_hash_find.exit_crit_edge:     ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %uid_hash_find.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %user.029.i, i32 noundef %.sink.i.i.i.i) #6
  br label %uid_hash_find.exit

for.inc.i:                                        ; preds = %for.body.i
  %uidhash_node.i = getelementptr inbounds %struct.user_struct, ptr %user.029.i, i32 0, i32 4
  %5 = ptrtoint ptr %uidhash_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %uidhash_node.i, align 8
  %tobool8.not.i = icmp eq ptr %6, null
  %add.ptr12.i = getelementptr i8, ptr %6, i32 -88
  %tobool2.not33.i = icmp eq ptr %add.ptr12.i, null
  %tobool2.not.i = or i1 %tobool8.not.i, %tobool2.not33.i
  br i1 %tobool2.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

uid_hash_find.exit:                               ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.uid_hash_find.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @uidhash_lock) #6
  br label %cleanup

if.then:                                          ; preds = %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @uidhash_lock) #6
  %7 = load ptr, ptr @uid_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %7, i32 noundef 3520) #6
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %uid9 = getelementptr inbounds %struct.user_struct, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %uid9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %uid.coerce.fca.0.extract, ptr %uid9, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #6
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %call.i, align 8
  %epoll_watches.i = getelementptr inbounds %struct.user_struct, ptr %call.i, i32 0, i32 1
  %call.i50 = tail call i32 @__percpu_counter_init(ptr noundef %epoll_watches.i, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @user_epoll_alloc.__key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool11.not = icmp eq i32 %call.i50, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = load ptr, ptr @uid_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %10, ptr noundef nonnull %call.i) #6
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %ratelimit = getelementptr inbounds %struct.user_struct, ptr %call.i, i32 0, i32 8
  %11 = call ptr @memset(ptr %ratelimit, i32 0, i32 68)
  tail call void @__raw_spin_lock_init(ptr noundef %ratelimit, ptr noundef nonnull @.str.4, ptr noundef nonnull @ratelimit_state_init.__key, i16 noundef signext 2) #6
  %interval1.i = getelementptr inbounds %struct.user_struct, ptr %call.i, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %interval1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 100, ptr %interval1.i, align 8
  %burst2.i = getelementptr inbounds %struct.user_struct, ptr %call.i, i32 0, i32 8, i32 2
  %13 = ptrtoint ptr %burst2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 100, ptr %burst2.i, align 4
  %flags1.i = getelementptr inbounds %struct.user_struct, ptr %call.i, i32 0, i32 8, i32 6
  %14 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %flags1.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @uidhash_lock) #6
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %tobool.not.i51 = icmp eq ptr %16, null
  %add.ptr.i52 = getelementptr i8, ptr %16, i32 -88
  %tobool2.not2831.i53 = icmp eq ptr %add.ptr.i52, null
  %tobool2.not28.i54 = or i1 %tobool.not.i51, %tobool2.not2831.i53
  br i1 %tobool2.not28.i54, label %if.end13.if.else_crit_edge, label %if.end13.for.body.i61_crit_edge

if.end13.for.body.i61_crit_edge:                  ; preds = %if.end13
  br label %for.body.i61

if.end13.if.else_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

for.body.i61:                                     ; preds = %for.inc.i76.for.body.i61_crit_edge, %if.end13.for.body.i61_crit_edge
  %user.029.i57 = phi ptr [ %add.ptr12.i73, %for.inc.i76.for.body.i61_crit_edge ], [ %add.ptr.i52, %if.end13.for.body.i61_crit_edge ]
  %uid3.i58 = getelementptr inbounds %struct.user_struct, ptr %user.029.i57, i32 0, i32 5
  %17 = ptrtoint ptr %uid3.i58 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack.i59 = load i32, ptr %uid3.i58, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i59, i32 %uid.coerce.fca.0.extract)
  %cmp.i.i60 = icmp eq i32 %.unpack.i59, %uid.coerce.fca.0.extract
  br i1 %cmp.i.i60, label %if.then.i65, label %for.inc.i76

if.then.i65:                                      ; preds = %for.body.i61
  %call.i.i.i.i.i.i62 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %user.029.i57, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull %user.029.i57, i32 1, i32 3, i32 1) #6
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %user.029.i57, ptr nonnull %user.029.i57, i32 1, ptr nonnull elementtype(i32) %user.029.i57) #6, !srcloc !38
  %asmresult.i.i.i.i.i.i63 = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i63)
  %tobool1.not.i.i.i.i64 = icmp eq i32 %asmresult.i.i.i.i.i.i63, 0
  br i1 %tobool1.not.i.i.i.i64, label %if.then.i65.if.end15.sink.split.i.i.i.i70_crit_edge, label %if.else.i.i.i.i68, !prof !39

if.then.i65.if.end15.sink.split.i.i.i.i70_crit_edge: ; preds = %if.then.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i70

if.else.i.i.i.i68:                                ; preds = %if.then.i65
  %add.i.i.i.i66 = add i32 %asmresult.i.i.i.i.i.i63, 1
  %19 = or i32 %add.i.i.i.i66, %asmresult.i.i.i.i.i.i63
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i.i67 = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i.i67, label %if.else.i.i.i.i68.if.then18_crit_edge, label %if.else.i.i.i.i68.if.end15.sink.split.i.i.i.i70_crit_edge, !prof !40

if.else.i.i.i.i68.if.end15.sink.split.i.i.i.i70_crit_edge: ; preds = %if.else.i.i.i.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i70

if.else.i.i.i.i68.if.then18_crit_edge:            ; preds = %if.else.i.i.i.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

if.end15.sink.split.i.i.i.i70:                    ; preds = %if.else.i.i.i.i68.if.end15.sink.split.i.i.i.i70_crit_edge, %if.then.i65.if.end15.sink.split.i.i.i.i70_crit_edge
  %.sink.i.i.i.i69 = phi i32 [ 2, %if.then.i65.if.end15.sink.split.i.i.i.i70_crit_edge ], [ 1, %if.else.i.i.i.i68.if.end15.sink.split.i.i.i.i70_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %user.029.i57, i32 noundef %.sink.i.i.i.i69) #6
  br label %if.then18

for.inc.i76:                                      ; preds = %for.body.i61
  %uidhash_node.i71 = getelementptr inbounds %struct.user_struct, ptr %user.029.i57, i32 0, i32 4
  %20 = ptrtoint ptr %uidhash_node.i71 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %uidhash_node.i71, align 8
  %tobool8.not.i72 = icmp eq ptr %21, null
  %add.ptr12.i73 = getelementptr i8, ptr %21, i32 -88
  %tobool2.not33.i74 = icmp eq ptr %add.ptr12.i73, null
  %tobool2.not.i75 = or i1 %tobool8.not.i72, %tobool2.not33.i74
  br i1 %tobool2.not.i75, label %if.elsethread-pre-split, label %for.inc.i76.for.body.i61_crit_edge

for.inc.i76.for.body.i61_crit_edge:               ; preds = %for.inc.i76
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i61

if.then18:                                        ; preds = %if.end15.sink.split.i.i.i.i70, %if.else.i.i.i.i68.if.then18_crit_edge
  tail call void @percpu_counter_destroy(ptr noundef %epoll_watches.i) #6
  %22 = load ptr, ptr @uid_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %22, ptr noundef nonnull %call.i) #6
  br label %if.end19

if.elsethread-pre-split:                          ; preds = %for.inc.i76
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load ptr, ptr %add.ptr, align 4
  br label %if.else

if.else:                                          ; preds = %if.elsethread-pre-split, %if.end13.if.else_crit_edge
  %24 = phi ptr [ %.pr, %if.elsethread-pre-split ], [ %16, %if.end13.if.else_crit_edge ]
  %uidhash_node.i80 = getelementptr inbounds %struct.user_struct, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %uidhash_node.i80 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %24, ptr %uidhash_node.i80, align 8
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.else.uid_hash_insert.exit_crit_edge, label %do.body12.i.i

if.else.uid_hash_insert.exit_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %uid_hash_insert.exit

do.body12.i.i:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %uidhash_node.i80, ptr %pprev.i.i, align 4
  br label %uid_hash_insert.exit

uid_hash_insert.exit:                             ; preds = %do.body12.i.i, %if.else.uid_hash_insert.exit_crit_edge
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %uidhash_node.i80, ptr %add.ptr, align 4
  %pprev34.i.i = getelementptr inbounds %struct.user_struct, ptr %call.i, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %add.ptr, ptr %pprev34.i.i, align 4
  br label %if.end19

if.end19:                                         ; preds = %uid_hash_insert.exit, %if.then18
  %up.0 = phi ptr [ %user.029.i57, %if.then18 ], [ %call.i, %uid_hash_insert.exit ]
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @uidhash_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then12, %if.then.cleanup_crit_edge, %uid_hash_find.exit
  %retval.0 = phi ptr [ null, %if.then12 ], [ null, %if.then.cleanup_crit_edge ], [ %user.029.i, %uid_hash_find.exit ], [ %up.0, %if.end19 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uid_cache_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.5, i32 noundef 176, i32 noundef 0, i32 noundef 270336, ptr noundef null) #6
  store ptr %call, ptr @uid_cachep, align 4
  %0 = call ptr @memset(ptr @uidhash_table, i32 0, i32 512)
  %call.i = tail call i32 @__percpu_counter_init(ptr noundef getelementptr inbounds (%struct.user_struct, ptr @root_user, i32 0, i32 1), i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @user_epoll_alloc.__key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.6) #9
  unreachable

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @uidhash_lock) #6
  %1 = load ptr, ptr @uidhash_table, align 4
  store volatile ptr %1, ptr getelementptr inbounds (%struct.user_struct, ptr @root_user, i32 0, i32 4), align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.uid_hash_insert.exit_crit_edge, label %do.body12.i.i

if.end.uid_hash_insert.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %uid_hash_insert.exit

do.body12.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr getelementptr inbounds (%struct.user_struct, ptr @root_user, i32 0, i32 4), ptr %pprev.i.i, align 4
  br label %uid_hash_insert.exit

uid_hash_insert.exit:                             ; preds = %do.body12.i.i, %if.end.uid_hash_insert.exit_crit_edge
  store volatile ptr getelementptr inbounds (%struct.user_struct, ptr @root_user, i32 0, i32 4), ptr @uidhash_table, align 4
  store volatile ptr @uidhash_table, ptr getelementptr inbounds (%struct.user_struct, ptr @root_user, i32 0, i32 4, i32 1), align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @uidhash_lock) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !22, !24, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/user.c", i32 68, i32 17}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @init_user_ns, !4, !"init_user_ns", i1 false, i1 false}
!4 = !{!"../kernel/user.c", i32 27, i32 23}
!5 = !{ptr @__ksymtab_init_user_ns, !6, !"__ksymtab_init_user_ns", i1 false, i1 false}
!6 = !{!"../kernel/user.c", i32 71, i32 1}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../kernel/user.c", i32 102, i32 15}
!9 = !{ptr @root_user, !10, !"root_user", i1 false, i1 false}
!10 = !{!"../kernel/user.c", i32 99, i32 20}
!11 = !{ptr @__initcall__kmod_user__174_251_uid_cache_init4, !12, !"__initcall__kmod_user__174_251_uid_cache_init4", i1 false, i1 false}
!12 = !{!"../kernel/user.c", i32 251, i32 1}
!13 = !{ptr @uid_cachep, !14, !"uid_cachep", i1 false, i1 false}
!14 = !{!"../kernel/user.c", i32 84, i32 27}
!15 = !{ptr @uidhash_table, !16, !"uidhash_table", i1 false, i1 false}
!16 = !{!"../kernel/user.c", i32 85, i32 26}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../kernel/user.c", i32 96, i32 8}
!19 = !{ptr @uidhash_lock, !18, !"uidhash_lock", i1 false, i1 false}
!20 = !{ptr @user_epoll_alloc.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../kernel/user.c", i32 135, i32 9}
!22 = !{ptr @ratelimit_state_init.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../include/linux/ratelimit.h", i32 14, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../kernel/user.c", i32 235, i32 33}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../kernel/user.c", i32 242, i32 9}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 2148424900, i64 2148424932, i64 2148424961, i64 2148424995, i64 2148425026, i64 2148425049}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{!"auto-init"}
