; ModuleID = '/llk/IR_all_yes/security/keys/dh.c_pt.bc'
source_filename = "../security/keys/dh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.keyctl_dh_params = type { %union.anon, i32, i32 }
%union.anon = type { i32 }
%struct.dh = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dh_completion = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.keyctl_kdf_params = type { ptr, ptr, i32, [8 x i32] }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.kpp_request = type { %struct.crypto_async_request, ptr, ptr, i32, i32, [88 x i8], [0 x ptr] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.20, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.24, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.25, %union.anon.30, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.20 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.24 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.25 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.26, ptr, ptr, ptr }
%union.anon.26 = type { i32 }
%union.anon.30 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.user_key_payload = type { %struct.callback_head, i16, [6 x i8], [0 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.kvec = type { ptr, i32 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"dh\00", [29 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kdf_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016could not allocate digest TFM handle %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"kdf_alloc\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"security/keys/dh.c\00", [45 x i8] zeroinitializer }, align 32
@kdf_alloc._entry_ptr = internal global ptr @kdf_alloc._entry, section ".printk_index", align 4
@key_type_user = external dso_local global %struct.key_type, align 4
@user_key_payload_locked.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/keys/user-type.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 226, i32 25 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 230, i32 6 }
@___asan_gen_.17 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 214, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 156, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private constant [22 x i8] c"../security/keys/dh.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 90, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [28 x i8] c"../include/keys/user-type.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 53, i32 36 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 87, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @kdf_alloc._entry, ptr @kdf_alloc._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @init_completion.__key, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdf_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__keyctl_dh_compute(ptr noundef %params, ptr noundef %buffer, i32 noundef %buflen, ptr noundef %kdfcopy) local_unnamed_addr #0 align 64 {
entry:
  %pcopy = alloca %struct.keyctl_dh_params, align 4
  %dh_inputs = alloca %struct.dh, align 4
  %outsg = alloca %struct.scatterlist, align 4
  %compl = alloca %struct.dh_completion, align 4
  %hash = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pcopy) #7
  %0 = ptrtoint ptr %pcopy to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pcopy, align 4, !annotation !32
  %1 = getelementptr inbounds %struct.keyctl_dh_params, ptr %pcopy, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !32
  %3 = getelementptr inbounds %struct.keyctl_dh_params, ptr %pcopy, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dh_inputs) #7
  %5 = getelementptr inbounds %struct.dh, ptr %dh_inputs, i32 0, i32 1
  %6 = getelementptr inbounds %struct.dh, ptr %dh_inputs, i32 0, i32 3
  %7 = getelementptr inbounds %struct.dh, ptr %dh_inputs, i32 0, i32 4
  %8 = getelementptr inbounds %struct.dh, ptr %dh_inputs, i32 0, i32 5
  %9 = getelementptr inbounds %struct.dh, ptr %dh_inputs, i32 0, i32 7
  %10 = call ptr @memset(ptr %dh_inputs, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %outsg) #7
  %11 = call ptr @memset(ptr %outsg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %compl) #7
  %12 = call ptr @memset(ptr %compl, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hash) #7
  %13 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %hash, align 4
  %tobool.not = icmp eq ptr %params, null
  br i1 %tobool.not, label %entry.kdf_dealloc.exit_crit_edge, label %lor.lhs.false

entry.kdf_dealloc.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %kdf_dealloc.exit

lor.lhs.false:                                    ; preds = %entry
  %tobool1.not = icmp ne ptr %buffer, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %tobool2.not = icmp eq i32 %buflen, 0
  %or.cond = or i1 %tobool1.not, %tobool2.not
  br i1 %or.cond, label %if.end8.i.i, label %lor.lhs.false.out1_crit_edge

lor.lhs.false.out1_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out1

if.end8.i.i:                                      ; preds = %lor.lhs.false
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %params, i32 12, i32 -1226833920) #10, !srcloc !33
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !34

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pcopy, i32 noundef 12) #7
  %15 = call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !35
  %and.i.i.i.i = and i32 %17, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %pcopy, ptr noundef nonnull %params, i32 noundef 12) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #7, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end4, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !34

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i273 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.0.i.i273
  %add.ptr.i.i = getelementptr i8, ptr %pcopy, i32 %sub.i.i
  %18 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i273)
  br label %out1

if.end4:                                          ; preds = %if.end.i.i
  %tobool5.not = icmp eq ptr %kdfcopy, null
  br i1 %tobool5.not, label %if.end4.if.end26_crit_edge, label %if.then6

if.end4.if.end26_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then6:                                         ; preds = %if.end4
  %__spare = getelementptr inbounds %struct.keyctl_kdf_params, ptr %kdfcopy, i32 0, i32 3
  %call7 = call ptr @memchr_inv(ptr noundef %__spare, i32 noundef 0, i32 noundef 32) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end10, label %if.then6.out1_crit_edge

if.then6.out1_crit_edge:                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %out1

if.end10:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %buflen)
  %cmp11 = icmp ugt i32 %buflen, 1024
  br i1 %cmp11, label %if.end10.out1_crit_edge, label %lor.lhs.false12

if.end10.out1_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %out1

lor.lhs.false12:                                  ; preds = %if.end10
  %otherinfolen = getelementptr inbounds %struct.keyctl_kdf_params, ptr %kdfcopy, i32 0, i32 2
  %19 = ptrtoint ptr %otherinfolen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %otherinfolen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %20)
  %cmp13 = icmp ugt i32 %20, 64
  br i1 %cmp13, label %lor.lhs.false12.out1_crit_edge, label %if.end15

lor.lhs.false12.out1_crit_edge:                   ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #9
  br label %out1

if.end15:                                         ; preds = %lor.lhs.false12
  %21 = ptrtoint ptr %kdfcopy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %kdfcopy, align 4
  %call17 = call ptr @strndup_user(ptr noundef %22, i32 noundef 128) #7
  %cmp.i230 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i230, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %call17 to i32
  br label %out1

if.end21:                                         ; preds = %if.end15
  %call22 = call fastcc i32 @kdf_alloc(ptr noundef nonnull %hash, ptr noundef %call17)
  call void @kfree(ptr noundef %call17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.if.end26_crit_edge, label %if.end21.out1_crit_edge

if.end21.out1_crit_edge:                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %out1

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.end26:                                         ; preds = %if.end21.if.end26_crit_edge, %if.end4.if.end26_crit_edge
  %24 = call ptr @memset(ptr %dh_inputs, i32 0, i32 32)
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  %call27 = call fastcc i32 @dh_data_from_key(i32 noundef %26, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end26.out1_crit_edge, label %if.end30

if.end26.out1_crit_edge:                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %out1

if.end30:                                         ; preds = %if.end26
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call27, ptr %8, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %3, align 4
  %call31 = call fastcc i32 @dh_data_from_key(i32 noundef %29, ptr noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end30.out2_crit_edge, label %if.end34

if.end30.out2_crit_edge:                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %out2

if.end34:                                         ; preds = %if.end30
  %30 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call31, ptr %9, align 4
  %31 = ptrtoint ptr %pcopy to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pcopy, align 4
  %call35 = call fastcc i32 @dh_data_from_key(i32 noundef %32, ptr noundef nonnull %dh_inputs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end34.out2_crit_edge, label %if.end38

if.end34.out2_crit_edge:                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %out2

if.end38:                                         ; preds = %if.end34
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call35, ptr %7, align 4
  %call39 = call i32 @crypto_dh_key_len(ptr noundef nonnull %dh_inputs) #7
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %call39, i32 noundef 3264) #11
  %tobool41.not = icmp eq ptr %call9.i, null
  br i1 %tobool41.not, label %if.end38.out2_crit_edge, label %if.end43

if.end38.out2_crit_edge:                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %out2

if.end43:                                         ; preds = %if.end38
  %call44 = call i32 @crypto_dh_encode_key(ptr noundef nonnull %call9.i, i32 noundef %call39, ptr noundef nonnull %dh_inputs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.out3_crit_edge

if.end43.out3_crit_edge:                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %out3

if.end47:                                         ; preds = %if.end43
  %call48 = call ptr @crypto_alloc_kpp(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #7
  %cmp.i231 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i231, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %call48 to i32
  br label %out3

if.end52:                                         ; preds = %if.end47
  %call53 = call fastcc i32 @crypto_kpp_set_secret(ptr noundef %call48, ptr noundef nonnull %call9.i, i32 noundef %call39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end52.out4_crit_edge

if.end52.out4_crit_edge:                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %out4

if.end56:                                         ; preds = %if.end52
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %call48, i32 0, i32 3
  %35 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__crt_alg.i.i, align 4
  %max_size.i = getelementptr i8, ptr %36, i32 -116
  %37 = ptrtoint ptr %max_size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %max_size.i, align 4
  %call1.i = call i32 %38(ptr noundef %call48) #7
  br i1 %tobool5.not, label %if.then59, label %cond.true.critedge

if.then59:                                        ; preds = %if.end56
  br i1 %tobool2.not, label %if.then59.out4_crit_edge, label %if.else

if.then59.out4_crit_edge:                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %out4

if.else:                                          ; preds = %if.then59
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %buflen)
  %cmp62 = icmp ugt i32 %call1.i, %buflen
  br i1 %cmp62, label %if.else.out4_crit_edge, label %if.else.if.end8.i.i237_crit_edge

if.else.if.end8.i.i237_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i237

if.else.out4_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out4

cond.true.critedge:                               ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %otherinfolen68 = getelementptr inbounds %struct.keyctl_kdf_params, ptr %kdfcopy, i32 0, i32 2
  %39 = ptrtoint ptr %otherinfolen68 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %otherinfolen68, align 4
  %add = add i32 %40, %call1.i
  br label %if.end8.i.i237

if.end8.i.i237:                                   ; preds = %cond.true.critedge, %if.else.if.end8.i.i237_crit_edge
  %cond = phi i32 [ %add, %cond.true.critedge ], [ %call1.i, %if.else.if.end8.i.i237_crit_edge ]
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %cond, i32 noundef 3520) #11
  %tobool70.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool70.not, label %if.end8.i.i237.out4_crit_edge, label %if.end72

if.end8.i.i237.out4_crit_edge:                    ; preds = %if.end8.i.i237
  call void @__sanitizer_cov_trace_pc() #9
  br label %out4

if.end72:                                         ; preds = %if.end8.i.i237
  call void @sg_init_one(ptr noundef nonnull %outsg, ptr noundef nonnull %call9.i.i, i32 noundef %call1.i) #7
  %41 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %__crt_alg.i.i, align 4
  %reqsize.i.i = getelementptr i8, ptr %42, i32 -104
  %43 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %reqsize.i.i, align 8
  %add.i = add i32 %44, 128
  %call9.i.i263 = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #11
  %tobool.not.i = icmp eq ptr %call9.i.i263, null
  br i1 %tobool.not.i, label %if.end72.out5_crit_edge, label %if.end76, !prof !38

if.end72.out5_crit_edge:                          ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %out5

if.end76:                                         ; preds = %if.end72
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i263, i32 0, i32 3
  %45 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call48, ptr %tfm1.i.i, align 16
  %src.i = getelementptr inbounds %struct.kpp_request, ptr %call9.i.i263, i32 0, i32 1
  %46 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %src.i, align 8
  %src_len.i = getelementptr inbounds %struct.kpp_request, ptr %call9.i.i263, i32 0, i32 3
  %47 = ptrtoint ptr %src_len.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %src_len.i, align 32
  %dst.i = getelementptr inbounds %struct.kpp_request, ptr %call9.i.i263, i32 0, i32 2
  %48 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %outsg, ptr %dst.i, align 4
  %dst_len.i = getelementptr inbounds %struct.kpp_request, ptr %call9.i.i263, i32 0, i32 4
  %49 = ptrtoint ptr %dst_len.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call1.i, ptr %dst_len.i, align 4
  %50 = ptrtoint ptr %compl to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %compl, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %compl, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_completion.__key) #7
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i263, i32 0, i32 1
  %51 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @dh_crypto_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i263, i32 0, i32 2
  %52 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %compl, ptr %data2.i, align 4
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i263, i32 0, i32 4
  %53 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1536, ptr %flags.i, align 4
  %call77 = call fastcc i32 @crypto_kpp_generate_public_key(ptr noundef nonnull %call9.i.i263)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call77)
  %cmp78 = icmp eq i32 %call77, -115
  br i1 %cmp78, label %if.then79, label %if.end76.if.end84_crit_edge

if.end76.if.end84_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then79:                                        ; preds = %if.end76
  call void @wait_for_completion(ptr noundef nonnull %compl) #7
  %err = getelementptr inbounds %struct.dh_completion, ptr %compl, i32 0, i32 1
  %54 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool81.not = icmp eq i32 %55, 0
  br i1 %tobool81.not, label %if.then79.if.end84_crit_edge, label %if.then79.out6_crit_edge

if.then79.out6_crit_edge:                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  br label %out6

if.then79.if.end84_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.end84:                                         ; preds = %if.then79.if.end84_crit_edge, %if.end76.if.end84_crit_edge
  %56 = ptrtoint ptr %dst_len.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dst_len.i, align 4
  br i1 %tobool5.not, label %if.end8.i.i216, label %if.then86

if.then86:                                        ; preds = %if.end84
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %57
  %otherinfo = getelementptr inbounds %struct.keyctl_kdf_params, ptr %kdfcopy, i32 0, i32 1
  %58 = ptrtoint ptr %otherinfo to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %otherinfo, align 4
  %otherinfolen87 = getelementptr inbounds %struct.keyctl_kdf_params, ptr %kdfcopy, i32 0, i32 2
  %60 = ptrtoint ptr %otherinfolen87 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %otherinfolen87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp9.i.i = icmp slt i32 %61, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.then86
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.out6_crit_edge, label %if.then27.i.i, !prof !34

land.rhs16.i.i.out6_crit_edge:                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out6

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %out6

if.then.i.i.i:                                    ; preds = %if.then86
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %61, i1 noundef zeroext false) #7
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #7
  %call.i.i188 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i188, label %if.then.i.i.i.if.end.i.i202_crit_edge, label %land.lhs.true.i.i192

if.then.i.i.i.if.end.i.i202_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i202

land.lhs.true.i.i192:                             ; preds = %if.then.i.i.i
  %62 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %59, i32 %61, i32 -1226833920) #10, !srcloc !33
  %asmresult.i.i190 = extractvalue { i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i190)
  %cmp.i6.i191 = icmp eq i32 %asmresult.i.i190, 0
  br i1 %cmp.i6.i191, label %if.then.i7.i199, label %land.lhs.true.i.i192.if.end.i.i202_crit_edge, !prof !34

land.lhs.true.i.i192.if.end.i.i202_crit_edge:     ; preds = %land.lhs.true.i.i192
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i202

if.then.i7.i199:                                  ; preds = %land.lhs.true.i.i192
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i193 = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %61) #7
  %63 = call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i.i.i.i194 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i.i194 to ptr
  %cpu_domain.i.i.i.i.i195 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 4
  %65 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i195) #4, !srcloc !35
  %and.i.i.i.i196 = and i32 %65, -13
  %or.i.i.i.i197 = or i32 %and.i.i.i.i196, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i197) #7, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  %call1.i.i.i198 = call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %59, i32 noundef %61) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #7, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  br label %if.end.i.i202

if.end.i.i202:                                    ; preds = %if.then.i7.i199, %land.lhs.true.i.i192.if.end.i.i202_crit_edge, %if.then.i.i.i.if.end.i.i202_crit_edge
  %res.0.i.i200 = phi i32 [ %61, %if.then.i.i.i.if.end.i.i202_crit_edge ], [ %call1.i.i.i198, %if.then.i7.i199 ], [ %61, %land.lhs.true.i.i192.if.end.i.i202_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i200)
  %tobool4.not.i.i201 = icmp eq i32 %res.0.i.i200, 0
  br i1 %tobool4.not.i.i201, label %if.end91, label %if.then11.i.i205, !prof !34

if.then11.i.i205:                                 ; preds = %if.end.i.i202
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i203 = sub i32 %61, %res.0.i.i200
  %add.ptr.i.i204 = getelementptr i8, ptr %add.ptr, i32 %sub.i.i203
  %66 = call ptr @memset(ptr %add.ptr.i.i204, i32 0, i32 %res.0.i.i200)
  br label %out6

if.end91:                                         ; preds = %if.end.i.i202
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hash, align 4
  %69 = ptrtoint ptr %dst_len.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dst_len.i, align 4
  %71 = ptrtoint ptr %otherinfolen87 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %otherinfolen87, align 4
  %add94 = add i32 %72, %70
  %call95 = call fastcc i32 @keyctl_dh_compute_kdf(ptr noundef %68, ptr noundef %buffer, i32 noundef %buflen, ptr noundef nonnull %call9.i.i, i32 noundef %add94)
  br label %out6

if.end8.i.i216:                                   ; preds = %if.end84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp9.i.i215 = icmp slt i32 %57, 0
  br i1 %cmp9.i.i215, label %land.rhs16.i.i218, label %if.then.i.i.i221

land.rhs16.i.i218:                                ; preds = %if.end8.i.i216
  %.b71.i.i217 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i217, label %land.rhs16.i.i218.out6_crit_edge, label %if.then27.i.i219, !prof !34

land.rhs16.i.i218.out6_crit_edge:                 ; preds = %land.rhs16.i.i218
  call void @__sanitizer_cov_trace_pc() #9
  br label %out6

if.then27.i.i219:                                 ; preds = %land.rhs16.i.i218
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %out6

if.then.i.i.i221:                                 ; preds = %if.end8.i.i216
  call void @__check_object_size(ptr noundef nonnull %call9.i.i, i32 noundef %57, i1 noundef zeroext true) #7
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #7
  %call.i.i222 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i222, label %if.then.i.i.i221.copy_to_user.exit_crit_edge, label %if.end.i.i226

if.then.i.i.i221.copy_to_user.exit_crit_edge:     ; preds = %if.then.i.i.i221
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.end.i.i226:                                    ; preds = %if.then.i.i.i221
  %73 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %57, i32 -1226833920) #10, !srcloc !39
  %asmresult.i.i224 = extractvalue { i32, i32 } %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i224)
  %cmp.i6.i225 = icmp eq i32 %asmresult.i.i224, 0
  br i1 %cmp.i6.i225, label %if.then2.i.i, label %if.end.i.i226.copy_to_user.exit_crit_edge

if.end.i.i226.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i226
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i226
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i227 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i.i, i32 noundef %57) #7
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buffer, ptr noundef nonnull %call9.i.i, i32 noundef %57) #7
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i226.copy_to_user.exit_crit_edge, %if.then.i.i.i221.copy_to_user.exit_crit_edge
  %n.addr.0.i228 = phi i32 [ %57, %if.then.i.i.i221.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %57, %if.end.i.i226.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i228)
  %cmp99 = icmp eq i32 %n.addr.0.i228, 0
  br i1 %cmp99, label %if.then100, label %copy_to_user.exit.out6_crit_edge

copy_to_user.exit.out6_crit_edge:                 ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out6

if.then100:                                       ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %dst_len.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dst_len.i, align 4
  br label %out6

out6:                                             ; preds = %if.then100, %copy_to_user.exit.out6_crit_edge, %if.then27.i.i219, %land.rhs16.i.i218.out6_crit_edge, %if.end91, %if.then11.i.i205, %if.then27.i.i, %land.rhs16.i.i.out6_crit_edge, %if.then79.out6_crit_edge
  %ret.1 = phi i32 [ %55, %if.then79.out6_crit_edge ], [ %call95, %if.end91 ], [ %75, %if.then100 ], [ -14, %copy_to_user.exit.out6_crit_edge ], [ -14, %if.then11.i.i205 ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out6_crit_edge ], [ -14, %if.then27.i.i219 ], [ -14, %land.rhs16.i.i218.out6_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i263) #7
  br label %out5

out5:                                             ; preds = %out6, %if.end72.out5_crit_edge
  %ret.2 = phi i32 [ %ret.1, %out6 ], [ -12, %if.end72.out5_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #7
  br label %out4

out4:                                             ; preds = %out5, %if.end8.i.i237.out4_crit_edge, %if.else.out4_crit_edge, %if.then59.out4_crit_edge, %if.end52.out4_crit_edge
  %ret.3 = phi i32 [ %call53, %if.end52.out4_crit_edge ], [ %ret.2, %out5 ], [ %call1.i, %if.then59.out4_crit_edge ], [ -75, %if.else.out4_crit_edge ], [ -12, %if.end8.i.i237.out4_crit_edge ]
  call void @crypto_destroy_tfm(ptr noundef %call48, ptr noundef %call48) #7
  br label %out3

out3:                                             ; preds = %out4, %if.then50, %if.end43.out3_crit_edge
  %ret.4 = phi i32 [ %call44, %if.end43.out3_crit_edge ], [ %34, %if.then50 ], [ %ret.3, %out4 ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i) #7
  br label %out2

out2:                                             ; preds = %out3, %if.end38.out2_crit_edge, %if.end34.out2_crit_edge, %if.end30.out2_crit_edge
  %ret.5 = phi i32 [ %ret.4, %out3 ], [ %call31, %if.end30.out2_crit_edge ], [ %call35, %if.end34.out2_crit_edge ], [ -12, %if.end38.out2_crit_edge ]
  %76 = ptrtoint ptr %dh_inputs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dh_inputs, align 4
  call void @kfree_sensitive(ptr noundef %77) #7
  %78 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %5, align 4
  call void @kfree_sensitive(ptr noundef %79) #7
  %80 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %6, align 4
  call void @kfree_sensitive(ptr noundef %81) #7
  br label %out1

out1:                                             ; preds = %out2, %if.end26.out1_crit_edge, %if.end21.out1_crit_edge, %if.then19, %lor.lhs.false12.out1_crit_edge, %if.end10.out1_crit_edge, %if.then6.out1_crit_edge, %if.then11.i.i, %lor.lhs.false.out1_crit_edge
  %ret.6.ph = phi i32 [ %call27, %if.end26.out1_crit_edge ], [ -22, %lor.lhs.false.out1_crit_edge ], [ %ret.5, %out2 ], [ -14, %if.then11.i.i ], [ %call22, %if.end21.out1_crit_edge ], [ -90, %if.end10.out1_crit_edge ], [ -90, %lor.lhs.false12.out1_crit_edge ], [ -22, %if.then6.out1_crit_edge ], [ %23, %if.then19 ]
  %82 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pr = load ptr, ptr %hash, align 4
  %tobool.not.i268 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i268, label %out1.kdf_dealloc.exit_crit_edge, label %if.then.i269

out1.kdf_dealloc.exit_crit_edge:                  ; preds = %out1
  call void @__sanitizer_cov_trace_pc() #9
  br label %kdf_dealloc.exit

if.then.i269:                                     ; preds = %out1
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %.pr, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef nonnull %.pr, ptr noundef %base.i.i.i) #7
  br label %kdf_dealloc.exit

kdf_dealloc.exit:                                 ; preds = %if.then.i269, %out1.kdf_dealloc.exit_crit_edge, %entry.kdf_dealloc.exit_crit_edge
  %ret.6297 = phi i32 [ %ret.6.ph, %out1.kdf_dealloc.exit_crit_edge ], [ %ret.6.ph, %if.then.i269 ], [ -22, %entry.kdf_dealloc.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hash) #7
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %compl) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %outsg) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dh_inputs) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pcopy) #7
  ret i32 %ret.6297
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strndup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kdf_alloc(ptr nocapture noundef writeonly %hash, ptr noundef %hashname) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @crypto_alloc_shash(ptr noundef %hashname, i32 noundef 0, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %hashname) #12
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call, i32 0, i32 2, i32 3
  %1 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %2, i32 -128
  %3 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %digestsize.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call, ptr noundef %base.i.i) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %hash, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %do.end
  %retval.0 = phi i32 [ %0, %do.end ], [ -22, %if.then5 ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dh_data_from_key(i32 noundef %keyid, ptr nocapture noundef writeonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @lookup_user_key(i32 noundef %keyid, i32 noundef 0, i32 noundef 2) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  %and.i = and i32 %0, -2
  %1 = inttoptr i32 %and.i to ptr
  %type = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 16, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 8
  %cmp = icmp eq ptr %3, @key_type_user
  br i1 %cmp, label %if.then3, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then3:                                         ; preds = %if.end
  %sem = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 4
  tail call void @down_read(ptr noundef %sem) #7
  %call4 = tail call i32 @key_validate(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.then3.if.end14_crit_edge

if.then3.if.end14_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then6:                                         ; preds = %if.then3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #7
  %4 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %sem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not.i = icmp eq i32 %5, 0
  br i1 %cmp.i.not.i, label %land.lhs.true.i, label %if.then6.user_key_payload_locked.exit_crit_edge

if.then6.user_key_payload_locked.exit_crit_edge:  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %user_key_payload_locked.exit

land.lhs.true.i:                                  ; preds = %if.then6
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.user_key_payload_locked.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.user_key_payload_locked.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %user_key_payload_locked.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @user_key_payload_locked.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.user_key_payload_locked.exit_crit_edge, label %if.then.i

land.lhs.true3.i.user_key_payload_locked.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %user_key_payload_locked.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @user_key_payload_locked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 53, ptr noundef nonnull @.str.8) #7
  br label %user_key_payload_locked.exit

user_key_payload_locked.exit:                     ; preds = %if.then.i, %land.lhs.true3.i.user_key_payload_locked.exit_crit_edge, %land.lhs.true.i.user_key_payload_locked.exit_crit_edge, %if.then6.user_key_payload_locked.exit_crit_edge
  %6 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %data8 = getelementptr inbounds %struct.user_key_payload, ptr %8, i32 0, i32 3
  %datalen = getelementptr inbounds %struct.user_key_payload, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %datalen, align 8
  %conv = zext i16 %10 to i32
  %call9 = tail call ptr @kmemdup(ptr noundef %data8, i32 noundef %conv, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %user_key_payload_locked.exit.if.end14_crit_edge, label %if.then10

user_key_payload_locked.exit.if.end14_crit_edge:  ; preds = %user_key_payload_locked.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then10:                                        ; preds = %user_key_payload_locked.exit
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9, ptr %data, align 4
  %12 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %datalen, align 8
  %conv12 = zext i16 %13 to i32
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %user_key_payload_locked.exit.if.end14_crit_edge, %if.then3.if.end14_crit_edge
  %ret.1 = phi i32 [ -95, %if.then3.if.end14_crit_edge ], [ %conv12, %if.then10 ], [ -12, %user_key_payload_locked.exit.if.end14_crit_edge ]
  tail call void @up_read(ptr noundef %sem) #7
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %if.end.if.end16_crit_edge
  %ret.2 = phi i32 [ %ret.1, %if.end14 ], [ -95, %if.end.if.end16_crit_edge ]
  tail call void @key_put(ptr noundef %1) #7
  br label %error

error:                                            ; preds = %if.end16, %entry.error_crit_edge
  %ret.3 = phi i32 [ %ret.2, %if.end16 ], [ -126, %entry.error_crit_edge ]
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_dh_key_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_dh_encode_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_kpp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypto_kpp_set_secret(ptr noundef %tfm, ptr noundef %buffer, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  tail call void @crypto_stats_get(ptr noundef %1) #7
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 128
  %call1 = tail call i32 %3(ptr noundef %tfm, ptr noundef %buffer, i32 noundef %len) #7
  tail call void @crypto_stats_kpp_set_secret(ptr noundef %1, i32 noundef %call1) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dh_crypto_done(ptr nocapture noundef readonly %req, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %err)
  %cmp = icmp eq i32 %err, -115
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %err1 = getelementptr inbounds %struct.dh_completion, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %err1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %err, ptr %err1, align 4
  tail call void @complete(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypto_kpp_generate_public_key(ptr noundef %req) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i, align 4
  tail call void @crypto_stats_get(ptr noundef %3) #7
  %generate_public_key = getelementptr i8, ptr %3, i32 -124
  %4 = ptrtoint ptr %generate_public_key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %generate_public_key, align 4
  %call2 = tail call i32 %5(ptr noundef %req) #7
  tail call void @crypto_stats_kpp_generate_public_key(ptr noundef %3, i32 noundef %call2) #7
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @keyctl_dh_compute_kdf(ptr noundef %hash, ptr noundef %buffer, i32 noundef %buflen, ptr noundef %kbuf, i32 noundef %kbuflen) unnamed_addr #0 align 64 {
entry:
  %kbuf_iov = alloca %struct.kvec, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %kbuf_iov) #7
  %0 = getelementptr inbounds %struct.kvec, ptr %kbuf_iov, i32 0, i32 1
  %1 = ptrtoint ptr %kbuf_iov to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %kbuf, ptr %kbuf_iov, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %kbuflen, ptr %0, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %hash, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_alg.i.i, align 4
  %digestsize.i = getelementptr i8, ptr %4, i32 -128
  %5 = ptrtoint ptr %digestsize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %digestsize.i, align 128
  %sub = add i32 %buflen, -1
  %add = add i32 %sub, %6
  %7 = urem i32 %add, %6
  %mul = sub i32 %add, %7
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end:                                           ; preds = %entry
  %call2 = call i32 @crypto_kdf108_ctr_generate(ptr noundef %hash, ptr noundef nonnull %kbuf_iov, i32 noundef 1, ptr noundef nonnull %call9.i, i32 noundef %mul) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end8.i.i, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end8.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %cmp9.i.i = icmp slt i32 %buflen, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.err_crit_edge, label %if.then27.i.i, !prof !34

land.rhs16.i.i.err_crit_edge:                     ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %err

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %buflen, i1 noundef zeroext true) #7
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #7
  %call.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i22

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.end.i.i22:                                     ; preds = %if.then.i.i.i
  %8 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %buflen, i32 -1226833920) #10, !srcloc !39
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i22.copy_to_user.exit_crit_edge

if.end.i.i22.copy_to_user.exit_crit_edge:         ; preds = %if.end.i.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i22
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i, i32 noundef %buflen) #7
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buffer, ptr noundef nonnull %call9.i, i32 noundef %buflen) #7
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i22.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %buflen, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %buflen, %if.end.i.i22.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %cmp.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %cmp.not, i32 %buflen, i32 -14
  br label %err

err:                                              ; preds = %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.err_crit_edge, %if.end.err_crit_edge, %entry.err_crit_edge
  %retval.1.i27 = phi ptr [ %call9.i, %if.end.err_crit_edge ], [ null, %entry.err_crit_edge ], [ %call9.i, %if.then27.i.i ], [ %call9.i, %land.rhs16.i.i.err_crit_edge ], [ %call9.i, %copy_to_user.exit ]
  %ret.0 = phi i32 [ %call2, %if.end.err_crit_edge ], [ -12, %entry.err_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.err_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @kfree_sensitive(ptr noundef %retval.1.i27) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %kbuf_iov) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_dh_compute(ptr noundef %params, ptr noundef %buffer, i32 noundef %buflen, ptr noundef %kdf) local_unnamed_addr #0 align 64 {
entry:
  %kdfcopy = alloca %struct.keyctl_kdf_params, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %kdfcopy) #7
  %0 = call ptr @memset(ptr %kdfcopy, i32 255, i32 44)
  %tobool.not = icmp eq ptr %kdf, null
  br i1 %tobool.not, label %if.then, label %if.end8.i.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @__keyctl_dh_compute(ptr noundef %params, ptr noundef %buffer, i32 noundef %buflen, ptr noundef null)
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %kdf, i32 44, i32 -1226833920) #10, !srcloc !33
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !34

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %kdfcopy, i32 noundef 44) #7
  %2 = call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !35
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %kdfcopy, ptr noundef nonnull %kdf, i32 noundef 44) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #7, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !34

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i11 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 44, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 44, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 44, %res.0.i.i11
  %add.ptr.i.i = getelementptr i8, ptr %kdfcopy, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i11)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 @__keyctl_dh_compute(ptr noundef %params, ptr noundef %buffer, i32 noundef %buflen, ptr noundef nonnull %kdfcopy)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then11.i.i, %if.then
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ %call, %if.then ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %kdfcopy) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_user_key(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_kpp_set_secret(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_kpp_generate_public_key(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_kdf108_ctr_generate(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !13, !14, !15, !17, !18, !19, !21}
!llvm.named.register.sp = !{!22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/keys/dh.c", i32 226, i32 25}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../security/keys/dh.c", i32 90, i32 3}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @kdf_alloc._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @kdf_alloc._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../include/keys/user-type.h", i32 53, i32 36}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @init_completion.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../include/linux/completion.h", i32 87, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{!"sp"}
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
!33 = !{i64 2152093477, i64 2152093502}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 4589032}
!36 = !{i64 4589229}
!37 = !{i64 2152074462}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 2152094158, i64 2152094183}
