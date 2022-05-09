; ModuleID = '/llk/IR_all_yes/security/keys/keyctl_pkey.c_pt.bc'
source_filename = "../security/keys/keyctl_pkey.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.match_token = type { i32, ptr }
%struct.kernel_pkey_params = type { ptr, ptr, ptr, ptr, i32, %union.anon.69, i8 }
%union.anon.69 = type { i32 }
%struct.kernel_pkey_query = type { i32, i32, i16, i16, i16, i16 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.62, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.63, %union.anon.67, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.62 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.63 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.64, ptr, ptr, ptr }
%union.anon.64 = type { i32 }
%union.anon.67 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.keyctl_pkey_query = type { i32, i32, i16, i16, i16, i16, [10 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.substring_t = type { ptr, ptr }
%struct.keyctl_pkey_params = type { i32, i32, %union.anon.74, [7 x i32] }
%union.anon.74 = type { i32 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"raw\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" \09\00", [29 x i8] zeroinitializer }, align 32
@param_keys = internal constant { [3 x %struct.match_token], [40 x i8] } { [3 x %struct.match_token] [%struct.match_token { i32 1, ptr @.str.2 }, %struct.match_token { i32 2, ptr @.str.3 }, %struct.match_token zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enc=%s\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hash=%s\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 9, i64 32]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 32, i64 25, i64 26, i64 27, i64 28]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 87, i32 21 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 45, i32 25 }
@___asan_gen_.15 = private unnamed_addr constant [11 x i8] c"param_keys\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 29, i32 28 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 30, i32 13 }
@___asan_gen_.22 = private constant [31 x i8] c"../security/keys/keyctl_pkey.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 31, i32 14 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 230, i32 6 }
@___asan_gen_.28 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 214, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 174, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @param_keys, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_keys to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_pkey_query(i32 noundef %id, ptr noundef %_info, ptr noundef %_res) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.kernel_pkey_params, align 4
  %res = alloca %struct.kernel_pkey_query, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %params) #5
  %0 = call ptr @memset(ptr %params, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #5
  %1 = call ptr @memset(ptr %res, i32 255, i32 16)
  %call = call fastcc i32 @keyctl_pkey_params_get(i32 noundef %id, ptr noundef %_info, ptr noundef nonnull %params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %params, align 4
  %type = getelementptr inbounds %struct.key, ptr %3, i32 0, i32 16, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type, align 8
  %asym_query = getelementptr inbounds %struct.key_type, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %asym_query to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asym_query, align 4
  %call1 = call i32 %7(ptr noundef nonnull %params, ptr noundef nonnull %res) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.error_crit_edge, label %if.end59.i.i

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end59.i.i:                                     ; preds = %if.end
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #5
  %call.i.i = call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i, label %if.end59.i.i.error_crit_edge, label %if.end.i.i

if.end59.i.i.error_crit_edge:                     ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end.i.i:                                       ; preds = %if.end59.i.i
  %8 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %_res, i32 16, i32 -1226833920) #8, !srcloc !27
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.error_crit_edge

if.end.i.i.error_crit_edge:                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %res, i32 noundef 16) #5
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %_res, ptr noundef nonnull %res, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %cmp6 = icmp eq i32 %call.i12.i.i, 0
  br i1 %cmp6, label %land.lhs.true, label %copy_to_user.exit.error_crit_edge

copy_to_user.exit.error_crit_edge:                ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

land.lhs.true:                                    ; preds = %copy_to_user.exit
  %__spare = getelementptr inbounds %struct.keyctl_pkey_query, ptr %_res, i32 0, i32 6
  %9 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %__spare, i32 40, i32 -1226833920) #8, !srcloc !28
  %asmresult.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp.i = icmp eq i32 %asmresult.i, 0
  br i1 %cmp.i, label %clear_user.exit, label %land.lhs.true.error_crit_edge

land.lhs.true.error_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

clear_user.exit:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %10 = call i32 @llvm.read_register.i32(metadata !17) #5
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #3, !srcloc !29
  %and.i.i.i = and i32 %12, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #5, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %call1.i.i = call i32 @arm_clear_user(ptr noundef %__spare, i32 noundef 40) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #5, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp8 = icmp eq i32 %call1.i.i, 0
  %spec.select = select i1 %cmp8, i32 0, i32 -14
  br label %error

error:                                            ; preds = %clear_user.exit, %land.lhs.true.error_crit_edge, %copy_to_user.exit.error_crit_edge, %if.end.i.i.error_crit_edge, %if.end59.i.i.error_crit_edge, %if.end.error_crit_edge, %entry.error_crit_edge
  %ret.0 = phi i32 [ %call, %entry.error_crit_edge ], [ %call1, %if.end.error_crit_edge ], [ -14, %copy_to_user.exit.error_crit_edge ], [ -14, %if.end59.i.i.error_crit_edge ], [ -14, %if.end.i.i.error_crit_edge ], [ -14, %land.lhs.true.error_crit_edge ], [ %spec.select, %clear_user.exit ]
  %info.i = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 3
  %13 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info.i, align 4
  call void @kfree(ptr noundef %14) #5
  %15 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %params, align 4
  call void @key_put(ptr noundef %16) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %params) #5
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @keyctl_pkey_params_get(i32 noundef %id, ptr noundef %_info, ptr nocapture noundef %params) unnamed_addr #0 align 64 {
entry:
  %args.i = alloca [3 x %struct.substring_t], align 4
  %c.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %params, i32 0, i32 28)
  %encoding = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 1
  %1 = ptrtoint ptr %encoding to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str, ptr %encoding, align 4
  %call = tail call ptr @strndup_user(ptr noundef %_info, i32 noundef 4096) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 3
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %info, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i) #5
  %4 = call ptr @memset(ptr %args.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c.i) #5
  %5 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %c.i, align 4
  %call40.i = call ptr @strsep(ptr noundef nonnull %c.i, ptr noundef nonnull @.str.1) #5
  %tobool.not41.i = icmp eq ptr %call40.i, null
  br i1 %tobool.not41.i, label %if.end.if.end5_crit_edge, label %while.body.lr.ph.i

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

while.body.lr.ph.i:                               ; preds = %if.end
  %hash_algo.i = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call43.i = phi ptr [ %call40.i, %while.body.lr.ph.i ], [ %call.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %or.i3842.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %or.i37.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %6 = ptrtoint ptr %call43.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %call43.i, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %if.end.i [
    i8 0, label %while.body.i.while.cond.backedge.i_crit_edge
    i8 32, label %while.body.i.while.cond.backedge.i_crit_edge30
    i8 9, label %while.body.i.while.cond.backedge.i_crit_edge31
  ]

while.body.i.while.cond.backedge.i_crit_edge31:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.i

while.body.i.while.cond.backedge.i_crit_edge30:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.i

while.body.i.while.cond.backedge.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.i

while.cond.backedge.sink.split.i:                 ; preds = %sw.bb22.i, %if.end21.i.while.cond.backedge.sink.split.i_crit_edge
  %encoding.sink.i = phi ptr [ %hash_algo.i, %sw.bb22.i ], [ %encoding, %if.end21.i.while.cond.backedge.sink.split.i_crit_edge ]
  %9 = ptrtoint ptr %encoding.sink.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %12, ptr %encoding.sink.i, align 4
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %while.cond.backedge.sink.split.i, %while.body.i.while.cond.backedge.i_crit_edge, %while.body.i.while.cond.backedge.i_crit_edge30, %while.body.i.while.cond.backedge.i_crit_edge31
  %or.i37.i = phi i32 [ %or.i3842.i, %while.body.i.while.cond.backedge.i_crit_edge ], [ %or.i3842.i, %while.body.i.while.cond.backedge.i_crit_edge30 ], [ %or.i3842.i, %while.body.i.while.cond.backedge.i_crit_edge31 ], [ %or.i.i, %while.cond.backedge.sink.split.i ]
  %call.i = call ptr @strsep(ptr noundef nonnull %c.i, ptr noundef nonnull @.str.1) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.cond.backedge.i.if.end5_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.cond.backedge.i.if.end5_crit_edge:          ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end.i:                                         ; preds = %while.body.i
  %call9.i = call i32 @match_token(ptr noundef nonnull %call43.i, ptr noundef nonnull @param_keys, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp eq i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end.i.keyctl_pkey_params_parse.exit.thread_crit_edge, label %if.end13.i

if.end.i.keyctl_pkey_params_parse.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %keyctl_pkey_params_parse.exit.thread

if.end13.i:                                       ; preds = %if.end.i
  %rem.i.i = and i32 %call9.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %or.i.i = or i32 %shl.i.i, %or.i3842.i
  %10 = and i32 %shl.i.i, %or.i3842.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool15.not.i = icmp eq i32 %10, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end13.i.keyctl_pkey_params_parse.exit.thread_crit_edge

if.end13.i.keyctl_pkey_params_parse.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %keyctl_pkey_params_parse.exit.thread

if.end17.i:                                       ; preds = %if.end13.i
  %11 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %args.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool19.not.i = icmp eq i8 %14, 0
  br i1 %tobool19.not.i, label %if.end17.i.keyctl_pkey_params_parse.exit.thread_crit_edge, label %if.end21.i

if.end17.i.keyctl_pkey_params_parse.exit.thread_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %keyctl_pkey_params_parse.exit.thread

if.end21.i:                                       ; preds = %if.end17.i
  %15 = zext i32 %call9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %call9.i, label %if.end21.i.keyctl_pkey_params_parse.exit.thread_crit_edge [
    i32 1, label %if.end21.i.while.cond.backedge.sink.split.i_crit_edge
    i32 2, label %sw.bb22.i
  ]

if.end21.i.while.cond.backedge.sink.split.i_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.sink.split.i

if.end21.i.keyctl_pkey_params_parse.exit.thread_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %keyctl_pkey_params_parse.exit.thread

sw.bb22.i:                                        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge.sink.split.i

keyctl_pkey_params_parse.exit.thread:             ; preds = %if.end21.i.keyctl_pkey_params_parse.exit.thread_crit_edge, %if.end17.i.keyctl_pkey_params_parse.exit.thread_crit_edge, %if.end13.i.keyctl_pkey_params_parse.exit.thread_crit_edge, %if.end.i.keyctl_pkey_params_parse.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.i) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #5
  br label %cleanup

if.end5:                                          ; preds = %while.cond.backedge.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.i) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i) #5
  %call6 = call ptr @lookup_user_key(i32 noundef %id, i32 noundef 0, i32 noundef 4) #5
  %cmp.i27 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  %16 = ptrtoint ptr %call6 to i32
  br i1 %cmp.i27, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %and.i = and i32 %16, -2
  %17 = inttoptr i32 %and.i to ptr
  %18 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %params, align 4
  %type = getelementptr inbounds %struct.key, ptr %17, i32 0, i32 16, i32 0, i32 2
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %type, align 8
  %asym_query = getelementptr inbounds %struct.key_type, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %asym_query to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %asym_query, align 4
  %tobool.not = icmp eq ptr %22, null
  %. = select i1 %tobool.not, i32 -95, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end5.cleanup_crit_edge, %keyctl_pkey_params_parse.exit.thread, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %., %if.end10 ], [ -22, %keyctl_pkey_params_parse.exit.thread ], [ %16, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_pkey_e_d_s(i32 noundef %op, ptr noundef %_params, ptr noundef %_info, ptr noundef %_in, ptr noundef %_out) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.kernel_pkey_params, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %params) #5
  %0 = call ptr @memset(ptr %params, i32 255, i32 28)
  %call = call fastcc i32 @keyctl_pkey_params_get_2(ptr noundef %_params, ptr noundef %_info, i32 noundef %op, ptr noundef nonnull %params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.error_params_crit_edge, label %if.end

entry.error_params_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_params

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %params, align 4
  %type = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 16, i32 0, i32 2
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %type, align 8
  %asym_eds_op = getelementptr inbounds %struct.key_type, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %asym_eds_op to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %asym_eds_op, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.error_params_crit_edge, label %if.end2

if.end.error_params_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_params

if.end2:                                          ; preds = %if.end
  %switch.tableidx = add i32 %op, -25
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %7 = icmp ult i32 %switch.tableidx, 3
  br i1 %7, label %switch.lookup, label %do.body

do.body:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/keys/keyctl_pkey.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 233, 0\0A.popsection", ""() #5, !srcloc !32
  unreachable

switch.lookup:                                    ; preds = %if.end2
  %switch.idx.cast = trunc i32 %switch.tableidx to i8
  %op7 = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 6
  %8 = ptrtoint ptr %op7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %switch.idx.cast, ptr %op7, align 4
  %in_len = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 4
  %9 = ptrtoint ptr %in_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %in_len, align 4
  %call11 = call ptr @memdup_user(ptr noundef %_in, i32 noundef %10) #5
  %cmp.i46 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i46, label %if.then13, label %if.end8.i

if.then13:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call11 to i32
  br label %error_params

if.end8.i:                                        ; preds = %switch.lookup
  %12 = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 5
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3264) #9
  %tobool17.not = icmp eq ptr %call9.i, null
  br i1 %tobool17.not, label %if.end8.i.error_in_crit_edge, label %if.end19

if.end8.i.error_in_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_in

if.end19:                                         ; preds = %if.end8.i
  %15 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %params, align 4
  %type21 = getelementptr inbounds %struct.key, ptr %16, i32 0, i32 16, i32 0, i32 2
  %17 = ptrtoint ptr %type21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %type21, align 8
  %asym_eds_op22 = getelementptr inbounds %struct.key_type, ptr %18, i32 0, i32 17
  %19 = ptrtoint ptr %asym_eds_op22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %asym_eds_op22, align 4
  %call23 = call i32 %20(ptr noundef nonnull %params, ptr noundef %call11, ptr noundef nonnull %call9.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end19.error_out_crit_edge, label %if.then.i.i.i

if.end19.error_out_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_out

if.then.i.i.i:                                    ; preds = %if.end19
  call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %call23, i1 noundef zeroext true) #5
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #5
  %call.i.i = call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i44

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_to_user.exit

if.end.i.i44:                                     ; preds = %if.then.i.i.i
  %21 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %_out, i32 %call23, i32 -1226833920) #8, !srcloc !27
  %asmresult.i.i = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i44.copy_to_user.exit_crit_edge

if.end.i.i44.copy_to_user.exit_crit_edge:         ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #7
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i, i32 noundef %call23) #5
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %_out, ptr noundef nonnull %call9.i, i32 noundef %call23) #5
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i44.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %call23, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %call23, %if.end.i.i44.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %cmp28.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %cmp28.not, i32 %call23, i32 -14
  br label %error_out

error_out:                                        ; preds = %copy_to_user.exit, %if.end19.error_out_crit_edge
  %ret.0 = phi i32 [ %call23, %if.end19.error_out_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @kfree(ptr noundef nonnull %call9.i) #5
  br label %error_in

error_in:                                         ; preds = %error_out, %if.end8.i.error_in_crit_edge
  %ret.1 = phi i32 [ %ret.0, %error_out ], [ -12, %if.end8.i.error_in_crit_edge ]
  call void @kfree(ptr noundef %call11) #5
  br label %error_params

error_params:                                     ; preds = %error_in, %if.then13, %if.end.error_params_crit_edge, %entry.error_params_crit_edge
  %ret.2 = phi i32 [ %call, %entry.error_params_crit_edge ], [ %11, %if.then13 ], [ %ret.1, %error_in ], [ -95, %if.end.error_params_crit_edge ]
  %info.i = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 3
  %22 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %info.i, align 4
  call void @kfree(ptr noundef %23) #5
  %24 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %params, align 4
  call void @key_put(ptr noundef %25) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %params) #5
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @keyctl_pkey_params_get_2(ptr noundef %_params, ptr noundef %_info, i32 noundef %op, ptr noundef %params) unnamed_addr #0 align 64 {
entry:
  %uparams = alloca %struct.keyctl_pkey_params, align 4
  %info = alloca %struct.kernel_pkey_query, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %uparams) #5
  %0 = call ptr @memset(ptr %uparams, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #5
  %1 = getelementptr inbounds %struct.kernel_pkey_query, ptr %info, i32 0, i32 2
  %2 = getelementptr inbounds %struct.kernel_pkey_query, ptr %info, i32 0, i32 3
  %3 = getelementptr inbounds %struct.kernel_pkey_query, ptr %info, i32 0, i32 4
  %4 = getelementptr inbounds %struct.kernel_pkey_query, ptr %info, i32 0, i32 5
  %5 = call ptr @memset(ptr %info, i32 255, i32 16)
  %6 = call ptr @memset(ptr %params, i32 0, i32 28)
  %encoding = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 1
  %7 = ptrtoint ptr %encoding to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str, ptr %encoding, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #5
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %_params, i32 40, i32 -1226833920) #8, !srcloc !33
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !34

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %uparams, i32 noundef 40) #5
  %9 = call i32 @llvm.read_register.i32(metadata !17) #5
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !29
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #5, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %uparams, ptr noundef %_params, i32 noundef 40) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #5, !srcloc !30
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !34

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 40, %entry.if.then11.i.i_crit_edge ], [ 40, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 40, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %uparams, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %13 = ptrtoint ptr %uparams to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %uparams, align 4
  %call1 = call fastcc i32 @keyctl_pkey_params_get(i32 noundef %14, ptr noundef %_info, ptr noundef %params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %15 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %params, align 4
  %type = getelementptr inbounds %struct.key, ptr %16, i32 0, i32 16, i32 0, i32 2
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %type, align 8
  %asym_query = getelementptr inbounds %struct.key_type, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %asym_query to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %asym_query, align 4
  %call5 = call i32 %20(ptr noundef %params, ptr noundef nonnull %info) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %21 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %op, label %do.body [
    i32 25, label %if.end8.sw.bb_crit_edge
    i32 26, label %if.end8.sw.bb_crit_edge45
    i32 27, label %if.end8.sw.bb16_crit_edge
    i32 28, label %if.end8.sw.bb16_crit_edge46
  ]

if.end8.sw.bb16_crit_edge46:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb16

if.end8.sw.bb16_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb16

if.end8.sw.bb_crit_edge45:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end8.sw.bb_crit_edge:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %if.end8.sw.bb_crit_edge, %if.end8.sw.bb_crit_edge45
  %in_len = getelementptr inbounds %struct.keyctl_pkey_params, ptr %uparams, i32 0, i32 1
  %22 = ptrtoint ptr %in_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %in_len, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %3, align 4
  %conv = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv)
  %cmp9 = icmp ugt i32 %23, %conv
  br i1 %cmp9, label %sw.bb.cleanup_crit_edge, label %lor.lhs.false

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb
  %26 = getelementptr inbounds %struct.keyctl_pkey_params, ptr %uparams, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %4, align 2
  %conv11 = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv11)
  %cmp12 = icmp ugt i32 %28, %conv11
  br i1 %cmp12, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb16:                                          ; preds = %if.end8.sw.bb16_crit_edge, %if.end8.sw.bb16_crit_edge46
  %in_len17 = getelementptr inbounds %struct.keyctl_pkey_params, ptr %uparams, i32 0, i32 1
  %31 = ptrtoint ptr %in_len17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %in_len17, align 4
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %2, align 2
  %conv18 = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %conv18)
  %cmp19 = icmp ugt i32 %32, %conv18
  br i1 %cmp19, label %sw.bb16.cleanup_crit_edge, label %lor.lhs.false21

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false21:                                  ; preds = %sw.bb16
  %35 = getelementptr inbounds %struct.keyctl_pkey_params, ptr %uparams, i32 0, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %1, align 4
  %conv22 = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv22)
  %cmp23 = icmp ugt i32 %37, %conv22
  br i1 %cmp23, label %lor.lhs.false21.cleanup_crit_edge, label %lor.lhs.false21.sw.epilog_crit_edge

lor.lhs.false21.sw.epilog_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

lor.lhs.false21.cleanup_crit_edge:                ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/keys/keyctl_pkey.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 150, 0\0A.popsection", ""() #5, !srcloc !35
  unreachable

sw.epilog:                                        ; preds = %lor.lhs.false21.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge
  %in_len30 = getelementptr inbounds %struct.keyctl_pkey_params, ptr %uparams, i32 0, i32 1
  %40 = ptrtoint ptr %in_len30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %in_len30, align 4
  %in_len31 = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 4
  %42 = ptrtoint ptr %in_len31 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %in_len31, align 4
  %43 = getelementptr inbounds %struct.keyctl_pkey_params, ptr %uparams, i32 0, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %46 = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 5
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %45, ptr %46, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %lor.lhs.false21.cleanup_crit_edge, %sw.bb16.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %lor.lhs.false21.cleanup_crit_edge ], [ -22, %sw.bb16.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %uparams) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @keyctl_pkey_verify(ptr noundef %_params, ptr noundef %_info, ptr noundef %_in, ptr noundef %_in2) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.kernel_pkey_params, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %params) #5
  %0 = call ptr @memset(ptr %params, i32 255, i32 28)
  %call = call fastcc i32 @keyctl_pkey_params_get_2(ptr noundef %_params, ptr noundef %_info, i32 noundef 28, ptr noundef nonnull %params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.error_params_crit_edge, label %if.end

entry.error_params_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_params

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %params, align 4
  %type = getelementptr inbounds %struct.key, ptr %2, i32 0, i32 16, i32 0, i32 2
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %type, align 8
  %asym_verify_signature = getelementptr inbounds %struct.key_type, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %asym_verify_signature to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %asym_verify_signature, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.error_params_crit_edge, label %if.end2

if.end.error_params_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_params

if.end2:                                          ; preds = %if.end
  %in_len = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 4
  %7 = ptrtoint ptr %in_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %in_len, align 4
  %call3 = call ptr @memdup_user(ptr noundef %_in, i32 noundef %8) #5
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call3 to i32
  br label %error_params

if.end7:                                          ; preds = %if.end2
  %10 = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 5
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %call8 = call ptr @memdup_user(ptr noundef %_in2, i32 noundef %12) #5
  %cmp.i24 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i24, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call8 to i32
  br label %error_in

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %op = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 6
  %14 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %op, align 4
  %15 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %params, align 4
  %type14 = getelementptr inbounds %struct.key, ptr %16, i32 0, i32 16, i32 0, i32 2
  %17 = ptrtoint ptr %type14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %type14, align 8
  %asym_verify_signature15 = getelementptr inbounds %struct.key_type, ptr %18, i32 0, i32 18
  %19 = ptrtoint ptr %asym_verify_signature15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %asym_verify_signature15, align 4
  %call16 = call i32 %20(ptr noundef nonnull %params, ptr noundef %call3, ptr noundef %call8) #5
  call void @kfree(ptr noundef %call8) #5
  br label %error_in

error_in:                                         ; preds = %if.end12, %if.then10
  %ret.0 = phi i32 [ %13, %if.then10 ], [ %call16, %if.end12 ]
  call void @kfree(ptr noundef %call3) #5
  br label %error_params

error_params:                                     ; preds = %error_in, %if.then5, %if.end.error_params_crit_edge, %entry.error_params_crit_edge
  %ret.1 = phi i32 [ %call, %entry.error_params_crit_edge ], [ %9, %if.then5 ], [ %ret.0, %error_in ], [ -95, %if.end.error_params_crit_edge ]
  %info.i = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 3
  %21 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %info.i, align 4
  call void @kfree(ptr noundef %22) #5
  %23 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %params, align 4
  call void @key_put(ptr noundef %24) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %params) #5
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strndup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_user_key(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15}
!llvm.named.register.sp = !{!17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/keys/keyctl_pkey.c", i32 87, i32 21}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/keys/keyctl_pkey.c", i32 45, i32 25}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/keys/keyctl_pkey.c", i32 30, i32 13}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/keys/keyctl_pkey.c", i32 31, i32 14}
!8 = !{ptr @param_keys, !9, !"param_keys", i1 false, i1 false}
!9 = !{!"../security/keys/keyctl_pkey.c", i32 29, i32 28}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!17 = !{!"sp"}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2152165536, i64 2152165561}
!28 = !{i64 2152161657, i64 2152161682}
!29 = !{i64 4660410}
!30 = !{i64 4660607}
!31 = !{i64 2152145840}
!32 = !{i64 2153466439, i64 2153466931, i64 2153466476, i64 2153466532, i64 2153466566, i64 2153466590, i64 2153466631, i64 2153466652, i64 2153466680, i64 2153466714}
!33 = !{i64 2152164855, i64 2152164880}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 2153464922, i64 2153465414, i64 2153464959, i64 2153465015, i64 2153465049, i64 2153465073, i64 2153465114, i64 2153465135, i64 2153465163, i64 2153465197}
