; ModuleID = '/llk/IR_all_yes/drivers/md/dm-verity-verify-sig.c_pt.bc'
source_filename = "../drivers/md/dm-verity-verify-sig.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.69 }
%union.anon.69 = type { ptr }
%struct.key_type = type opaque
%struct.dm_verity = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i64, i64, i64, i64, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, [63 x i64], ptr, ptr, ptr }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.21, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.22, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.23, %union.anon.27, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.21 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.22 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.23 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.24, ptr, ptr, ptr }
%union.anon.24 = type { i32 }
%union.anon.27 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.user_key_payload = type { %struct.callback_head, i16, [6 x i8], [0 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.dm_verity_sig_opts = type { i32, ptr }

@__param_str_require_signatures = internal constant [29 x i8] c"dm_verity.require_signatures\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@require_signatures = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_require_signatures = internal constant %struct.kernel_param { ptr @__param_str_require_signatures, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.69 { ptr @require_signatures } }, section "__param", align 4
@__UNIQUE_ID_require_signaturestype269 = internal constant [43 x i8] c"dm_verity.parmtype=require_signatures:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_require_signatures270 = internal constant [77 x i8] c"dm_verity.parm=require_signatures:Verify the roothash of dm-verity hash tree\00", section ".modinfo", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"root_hash_sig_key_desc\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"DM Verity Sig Verification Signature key not specified\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"DM Verity Sig Verification Invalid key specified\00", [47 x i8] zeroinitializer }, align 32
@key_type_user = external dso_local global %struct.key_type, align 1
@user_key_payload_locked.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/keys/user-type.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [19 x i8] c"require_signatures\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 17, i32 13 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 28, i32 8 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 78, i32 15 }
@___asan_gen_.15 = private constant [37 x i8] c"../drivers/md/dm-verity-verify-sig.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 87, i32 15 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [28 x i8] c"../include/keys/user-type.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 53, i32 36 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_require_signatures270, ptr @__UNIQUE_ID_require_signaturestype269, ptr @__param_require_signatures, ptr @require_signatures, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @require_signatures to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @verity_verify_is_sig_opt_arg(ptr nocapture noundef readonly %arg_name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcasecmp(ptr noundef %arg_name, ptr noundef nonnull @.str)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  ret i1 %tobool.not
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @verity_verify_sig_parse_opt_args(ptr noundef %as, ptr nocapture noundef %v, ptr nocapture noundef writeonly %sig_opts, ptr nocapture noundef %argc, ptr nocapture noundef readnone %arg_name) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ti1 = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 2
  %0 = ptrtoint ptr %ti1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ti1, align 8
  %2 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %argc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %error = getelementptr inbounds %struct.dm_target, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.1, ptr %error, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @dm_shift_arg(ptr noundef %as) #5
  %5 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %argc, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %argc, align 4
  %call.i.i = tail call ptr @request_key_tag(ptr noundef nonnull @key_type_user, ptr noundef %call, ptr noundef null, ptr noundef null) #5
  %cmp.i30.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call.i.i to i32
  br label %verity_verify_get_sig_from_key.exit

if.end.i:                                         ; preds = %if.end
  %sem.i = getelementptr inbounds %struct.key, ptr %call.i.i, i32 0, i32 4
  tail call void @down_read(ptr noundef %sem.i) #5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem.i, i32 noundef 4) #5
  %8 = ptrtoint ptr %sem.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %sem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.not.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i.not.i.i, label %land.lhs.true.i.i, label %if.end.i.user_key_payload_locked.exit.i_crit_edge

if.end.i.user_key_payload_locked.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %user_key_payload_locked.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.user_key_payload_locked.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.user_key_payload_locked.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %user_key_payload_locked.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b6.i.i = load i1, ptr @user_key_payload_locked.__warned, align 1
  br i1 %.b6.i.i, label %land.lhs.true3.i.i.user_key_payload_locked.exit.i_crit_edge, label %if.then.i31.i

land.lhs.true3.i.i.user_key_payload_locked.exit.i_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %user_key_payload_locked.exit.i

if.then.i31.i:                                    ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @user_key_payload_locked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 53, ptr noundef nonnull @.str.4) #5
  br label %user_key_payload_locked.exit.i

user_key_payload_locked.exit.i:                   ; preds = %if.then.i31.i, %land.lhs.true3.i.i.user_key_payload_locked.exit.i_crit_edge, %land.lhs.true.i.i.user_key_payload_locked.exit.i_crit_edge, %if.end.i.user_key_payload_locked.exit.i_crit_edge
  %10 = getelementptr inbounds %struct.key, ptr %call.i.i, i32 0, i32 17
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %user_key_payload_locked.exit.i.end.i_crit_edge, label %if.end5.i

user_key_payload_locked.exit.i.end.i_crit_edge:   ; preds = %user_key_payload_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %end.i

if.end5.i:                                        ; preds = %user_key_payload_locked.exit.i
  %datalen.i = getelementptr inbounds %struct.user_key_payload, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %datalen.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %datalen.i, align 8
  %conv.i = zext i16 %14 to i32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv.i, i32 noundef 3264) #8
  %sig.i = getelementptr inbounds %struct.dm_verity_sig_opts, ptr %sig_opts, i32 0, i32 1
  %15 = ptrtoint ptr %sig.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i.i, ptr %sig.i, align 4
  %tobool8.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool8.not.i, label %if.end5.i.end.i_crit_edge, label %if.end10.i

if.end5.i.end.i_crit_edge:                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %end.i

if.end10.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %datalen.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %datalen.i, align 8
  %conv12.i = zext i16 %17 to i32
  %18 = ptrtoint ptr %sig_opts to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv12.i, ptr %sig_opts, align 4
  %data.i = getelementptr inbounds %struct.user_key_payload, ptr %12, i32 0, i32 3
  %19 = call ptr @memcpy(ptr %call9.i.i, ptr %data.i, i32 %conv12.i)
  br label %end.i

end.i:                                            ; preds = %if.end10.i, %if.end5.i.end.i_crit_edge, %user_key_payload_locked.exit.i.end.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end10.i ], [ -128, %user_key_payload_locked.exit.i.end.i_crit_edge ], [ -12, %if.end5.i.end.i_crit_edge ]
  tail call void @up_read(ptr noundef %sem.i) #5
  tail call void @key_put(ptr noundef %call.i.i) #5
  br label %verity_verify_get_sig_from_key.exit

verity_verify_get_sig_from_key.exit:              ; preds = %end.i, %if.then.i
  %retval.0.i = phi i32 [ %7, %if.then.i ], [ %ret.0.i, %end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %if.then3, label %verity_verify_get_sig_from_key.exit.if.end5_crit_edge

verity_verify_get_sig_from_key.exit.if.end5_crit_edge: ; preds = %verity_verify_get_sig_from_key.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then3:                                         ; preds = %verity_verify_get_sig_from_key.exit
  call void @__sanitizer_cov_trace_pc() #7
  %error4 = getelementptr inbounds %struct.dm_target, ptr %1, i32 0, i32 12
  %20 = ptrtoint ptr %error4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.2, ptr %error4, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %verity_verify_get_sig_from_key.exit.if.end5_crit_edge
  %call6 = tail call noalias ptr @kstrdup(ptr noundef %call, i32 noundef 3264) #5
  %signature_key_desc = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 28
  %21 = ptrtoint ptr %signature_key_desc to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call6, ptr %signature_key_desc, align 8
  %tobool8.not = icmp eq ptr %call6, null
  %.call2 = select i1 %tobool8.not, i32 -12, i32 %retval.0.i
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %.call2, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_shift_arg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @verity_verify_root_hash(ptr noundef %root_hash, i32 noundef %root_hash_len, ptr noundef %sig_data, i32 noundef %sig_len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %root_hash, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %root_hash_len)
  %cmp = icmp eq i32 %root_hash_len, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %sig_data, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sig_len)
  %cmp3 = icmp eq i32 %sig_len, 0
  %or.cond14 = or i1 %tobool1.not, %cmp3
  br i1 %or.cond14, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load i8, ptr @require_signatures, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool5.not = icmp eq i8 %0, 0
  %. = select i1 %tobool5.not, i32 0, i32 -126
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @verify_pkcs7_signature(ptr noundef nonnull %root_hash, i32 noundef %root_hash_len, ptr noundef nonnull %sig_data, i32 noundef %sig_len, ptr noundef nonnull inttoptr (i32 1 to ptr), i32 noundef 5, ptr noundef null, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end9 ], [ -22, %entry.cleanup_crit_edge ], [ %., %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @verify_pkcs7_signature(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @verity_verify_sig_opts_cleanup(ptr nocapture noundef %sig_opts) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sig = getelementptr inbounds %struct.dm_verity_sig_opts, ptr %sig_opts, i32 0, i32 1
  %0 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sig, align 4
  tail call void @kfree(ptr noundef %1) #5
  %2 = ptrtoint ptr %sig to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sig, align 4
  %3 = ptrtoint ptr %sig_opts to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %sig_opts, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_tag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__param_require_signatures, !1, !"__param_require_signatures", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-verity-verify-sig.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_require_signaturestype269, !1, !"__UNIQUE_ID_require_signaturestype269", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_require_signatures270, !4, !"__UNIQUE_ID_require_signatures270", i1 false, i1 false}
!4 = !{!"../drivers/md/dm-verity-verify-sig.c", i32 19, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/md/dm-verity-verify-sig.c", i32 28, i32 8}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/md/dm-verity-verify-sig.c", i32 78, i32 15}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/md/dm-verity-verify-sig.c", i32 87, i32 15}
!11 = !{ptr @require_signatures, !12, !"require_signatures", i1 false, i1 false}
!12 = !{!"../drivers/md/dm-verity-verify-sig.c", i32 17, i32 13}
!13 = !{ptr @__param_str_require_signatures, !1, !"__param_str_require_signatures", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/keys/user-type.h", i32 53, i32 36}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i8 0, i8 2}
