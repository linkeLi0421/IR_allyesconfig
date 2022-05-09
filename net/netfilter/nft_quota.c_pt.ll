; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_quota.c_pt.bc'
source_filename = "../net/netfilter/nft_quota.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nft_object_type = type { ptr, ptr, %struct.list_head, i32, i32, ptr, ptr }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.nft_object_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.sk_buff = type { %union.anon.3, %union.anon.102, %union.anon.103, [48 x i8], %union.anon.104, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.106, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.102 = type { ptr }
%union.anon.103 = type { i64 }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { i32, ptr }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.108, i32, i32, i32, i16, i16, %union.anon.110, i32, %union.anon.111, %union.anon.112, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.108 = type { i32 }
%union.anon.110 = type { i32 }
%union.anon.111 = type { i32 }
%union.anon.112 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nft_quota = type { %struct.atomic64_t, i32, ptr }
%struct.atomic64_t = type { i64 }
%struct.nft_object = type { %struct.list_head, %struct.rhlist_head, %struct.nft_object_hash_key, i32, i64, i16, ptr, [80 x i8], ptr, [4 x i8], [0 x i8], [120 x i8] }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.nft_object_hash_key = type { ptr, ptr }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }

@nft_quota_type = internal global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_quota_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_quota_policy, i32 4, i8 0, i8 1 }, section ".data..read_mostly", align 4
@nft_quota_obj_type = internal global %struct.nft_object_type { ptr null, ptr @nft_quota_obj_ops, %struct.list_head zeroinitializer, i32 2, i32 4, ptr null, ptr @nft_quota_policy }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_quota__420_292_nft_quota_module_init6 = internal global ptr @nft_quota_module_init, section ".initcall6.init", align 4
@__exitcall_nft_quota_module_exit = internal global ptr @nft_quota_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file421 = internal constant [39 x i8] c"nft_quota.file=net/netfilter/nft_quota\00", section ".modinfo", align 1
@__UNIQUE_ID_license422 = internal constant [22 x i8] c"nft_quota.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author423 = internal constant [57 x i8] c"nft_quota.author=Pablo Neira Ayuso <pablo@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias424 = internal constant [31 x i8] c"nft_quota.alias=nft-expr-quota\00", section ".modinfo", align 1
@__UNIQUE_ID_alias425 = internal constant [26 x i8] c"nft_quota.alias=nft-obj-2\00", section ".modinfo", align 1
@__UNIQUE_ID_description426 = internal constant [54 x i8] c"nft_quota.description=Netfilter nftables quota module\00", section ".modinfo", align 1
@nft_quota_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_quota_eval, ptr @nft_quota_clone, i32 24, ptr @nft_quota_init, ptr null, ptr null, ptr @nft_quota_destroy, ptr null, ptr @nft_quota_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_quota_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"quota\00", [26 x i8] zeroinitializer }, align 32
@nft_quota_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.29 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nft_quota_obj_ops = internal constant { %struct.nft_object_ops, [36 x i8] } { %struct.nft_object_ops { ptr @nft_quota_obj_eval, i32 16, ptr @nft_quota_obj_init, ptr @nft_quota_obj_destroy, ptr @nft_quota_obj_dump, ptr @nft_quota_obj_update, ptr @nft_quota_obj_type }, [36 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"nft_quota_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 249, i32 34 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 260, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"nft_quota_policy\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 41, i32 32 }
@___asan_gen_.10 = private unnamed_addr constant [18 x i8] c"nft_quota_obj_ops\00", align 1
@___asan_gen_.11 = private constant [29 x i8] c"../net/netfilter/nft_quota.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 184, i32 36 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias424, ptr @__UNIQUE_ID_alias425, ptr @__UNIQUE_ID_author423, ptr @__UNIQUE_ID_description426, ptr @__UNIQUE_ID_file421, ptr @__UNIQUE_ID_license422, ptr @__exitcall_nft_quota_module_exit, ptr @__initcall__kmod_nft_quota__420_292_nft_quota_module_init6, ptr @nft_quota_module_exit, ptr @nft_quota_ops, ptr @.str, ptr @nft_quota_policy, ptr @nft_quota_obj_ops], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_quota_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_quota_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_quota_obj_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_quota_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_quota_type) #6
  tail call void @nft_unregister_obj(ptr noundef nonnull @nft_quota_obj_type) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_obj(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_quota_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_obj(ptr noundef nonnull @nft_quota_obj_type) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_quota_type) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %err1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err1:                                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nft_unregister_obj(ptr noundef nonnull @nft_quota_obj_type) #6
  br label %cleanup

cleanup:                                          ; preds = %err1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err1 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_quota_eval(ptr noundef %expr, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i.i, align 4
  %conv.i.i = zext i32 %3 to i64
  %consumed.i.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2, i32 1
  %4 = ptrtoint ptr %consumed.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %consumed.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %5, i32 noundef 8) #6
  %call.i.i.i = tail call i64 @generic_atomic64_add_return(i64 noundef %conv.i.i, ptr noundef %5) #6
  %call.i.i4.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %data.i, i32 noundef 8) #6
  %call.i5.i.i = tail call i64 @generic_atomic64_read(ptr noundef %data.i) #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i.i, i64 %call.i5.i.i)
  %cmp.i.i = icmp sge i64 %call.i.i.i, %call.i5.i.i
  %flags.i.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  %xor4.i = xor i1 %cmp.i.i, %tobool.i.i
  br i1 %xor4.i, label %if.then.i, label %entry.nft_quota_do_eval.exit_crit_edge

entry.nft_quota_do_eval.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_quota_do_eval.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -2, ptr %regs, align 4
  br label %nft_quota_do_eval.exit

nft_quota_do_eval.exit:                           ; preds = %if.then.i, %entry.nft_quota_do_eval.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_quota_clone(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readnone %src) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 8) #9
  %consumed = getelementptr inbounds %struct.nft_expr, ptr %dst, i32 2, i32 1
  %1 = ptrtoint ptr %consumed to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i, ptr %consumed, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i, i32 noundef 8) #6
  tail call void @generic_atomic64_set(ptr noundef nonnull %call7.i, i64 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_quota_init(ptr nocapture noundef readnone %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %call1 = tail call fastcc i32 @nft_quota_do_init(ptr noundef %tb, ptr noundef %data.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_quota_destroy(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %consumed.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2, i32 1
  %0 = ptrtoint ptr %consumed.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %consumed.i, align 4
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_quota_dump(ptr noundef %skb, ptr noundef %expr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %call1 = tail call fastcc i32 @nft_quota_do_dump(ptr noundef %skb, ptr noundef %data.i, i1 noundef zeroext false)
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_add_return(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nft_quota_do_init(ptr nocapture noundef readonly %tb, ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %tmp.i54 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #6
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %tmp.i, align 8, !annotation !36
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef nonnull %1, i32 noundef 8) #6
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp = icmp slt i64 %4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx4 = getelementptr ptr, ptr %tb, i32 4
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %if.end3.if.end12_crit_edge, label %if.then6

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then6:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i54) #6
  %7 = ptrtoint ptr %tmp.i54 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %tmp.i54, align 8, !annotation !36
  %call.i55 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i54, ptr noundef nonnull %6, i32 noundef 8) #6
  %8 = ptrtoint ptr %tmp.i54 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tmp.i54, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i54) #6
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %4)
  %cmp9 = icmp ugt i64 %9, %4
  br i1 %cmp9, label %if.then6.cleanup_crit_edge, label %if.then6.if.end12_crit_edge

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.then6.if.end12_crit_edge, %if.end3.if.end12_crit_edge
  %consumed.0 = phi i64 [ %9, %if.then6.if.end12_crit_edge ], [ 0, %if.end3.if.end12_crit_edge ]
  %arrayidx13 = getelementptr ptr, ptr %tb, i32 2
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %if.end12.if.end25_crit_edge, label %if.then15

if.end12.if.end25_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then15:                                        ; preds = %if.end12
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %tobool18.not = icmp ult i32 %13, 2
  br i1 %tobool18.not, label %if.end20, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.then15
  %and21 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end25_crit_edge, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.end25:                                         ; preds = %if.end20.if.end25_crit_edge, %if.end12.if.end25_crit_edge
  %flags.0 = phi i32 [ %13, %if.end20.if.end25_crit_edge ], [ 0, %if.end12.if.end25_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 8) #9
  %consumed27 = getelementptr inbounds %struct.nft_quota, ptr %priv, i32 0, i32 2
  %15 = ptrtoint ptr %consumed27 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i, ptr %consumed27, align 4
  %tobool29.not = icmp eq ptr %call7.i, null
  br i1 %tobool29.not, label %if.end25.cleanup_crit_edge, label %if.end31

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %priv, i32 noundef 8) #6
  call void @generic_atomic64_set(ptr noundef %priv, i64 noundef %4) #6
  %flags33 = getelementptr inbounds %struct.nft_quota, ptr %priv, i32 0, i32 1
  %16 = ptrtoint ptr %flags33 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %flags.0, ptr %flags33, align 8
  %17 = ptrtoint ptr %consumed27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %consumed27, align 4
  %call.i.i53 = call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 8) #6
  call void @generic_atomic64_set(ptr noundef %18, i64 noundef %consumed.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end25.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31 ], [ -22, %entry.cleanup_crit_edge ], [ -75, %if.end.cleanup_crit_edge ], [ -22, %if.then6.cleanup_crit_edge ], [ -22, %if.then15.cleanup_crit_edge ], [ -95, %if.end20.cleanup_crit_edge ], [ -12, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nft_quota_do_dump(ptr noundef %skb, ptr noundef %priv, i1 noundef zeroext %reset) unnamed_addr #2 align 64 {
entry:
  %tmp.i38 = alloca i32, align 4
  %tmp.i36 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.nft_quota, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 8
  %consumed2 = getelementptr inbounds %struct.nft_quota, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %consumed2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %consumed2, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %3, i32 noundef 8) #6
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %3) #6
  %call.i.i32 = tail call zeroext i1 @__kasan_check_read(ptr noundef %priv, i32 noundef 8) #6
  %call.i33 = tail call i64 @generic_atomic64_read(ptr noundef %priv) #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %call.i33)
  %cmp.not = icmp ult i64 %call.i, %call.i33
  %or = or i32 %1, 2
  %flags.0 = select i1 %cmp.not, i32 %1, i32 %or
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #6
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call.i33, ptr %tmp.i, align 8
  %call.i35 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool.not = icmp eq i32 %call.i35, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = call i64 @llvm.umin.i64(i64 %call.i, i64 %call.i33)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i36) #6
  %6 = ptrtoint ptr %tmp.i36 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %tmp.i36, align 8
  %call.i37 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %tmp.i36, i32 noundef 3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool7.not = icmp eq i32 %call.i37, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i38) #6
  %7 = ptrtoint ptr %tmp.i38 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %flags.0, ptr %tmp.i38, align 4
  %call.i39 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i38) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool10.not = icmp ne i32 %call.i39, 0
  %reset.not = xor i1 %reset, true
  %brmerge = or i1 %tobool10.not, %reset.not
  %.mux = sext i1 %tobool10.not to i32
  br i1 %brmerge, label %lor.lhs.false8.cleanup_crit_edge, label %if.then14

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %consumed2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %consumed2, align 4
  %call.i.i34 = call zeroext i1 @__kasan_check_write(ptr noundef %9, i32 noundef 8) #6
  call void @generic_atomic64_sub(i64 noundef %call.i, ptr noundef %9) #6
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then14 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ %.mux, %lor.lhs.false8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_sub(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_quota_obj_eval(ptr noundef %obj, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  %conv.i = zext i32 %3 to i64
  %consumed.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 12
  %4 = ptrtoint ptr %consumed.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %consumed.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %5, i32 noundef 8) #6
  %call.i.i = tail call i64 @generic_atomic64_add_return(i64 noundef %conv.i, ptr noundef %5) #6
  %call.i.i4.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %data.i, i32 noundef 8) #6
  %call.i5.i = tail call i64 @generic_atomic64_read(ptr noundef %data.i) #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i, i64 %call.i5.i)
  %cmp.i = icmp sge i64 %call.i.i, %call.i5.i
  %flags.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 8
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %xor21 = xor i1 %cmp.i, %tobool.i
  br i1 %xor21, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -2, ptr %regs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  br i1 %cmp.i, label %land.lhs.true, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %call7 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i, align 4
  %table = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %table, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pf.i, align 1
  %conv12 = zext i8 %16 to i32
  tail call void @nft_obj_notify(ptr noundef %12, ptr noundef %14, ptr noundef %obj, i32 noundef 0, i32 noundef 0, i32 noundef 18, i16 noundef zeroext 0, i32 noundef %conv12, i32 noundef 0, i32 noundef 2592) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_quota_obj_init(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %tb, ptr noundef %obj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %call1 = tail call fastcc i32 @nft_quota_do_init(ptr noundef %tb, ptr noundef %data.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_quota_obj_destroy(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %obj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %consumed.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 12
  %0 = ptrtoint ptr %consumed.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %consumed.i, align 4
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_quota_obj_dump(ptr noundef %skb, ptr noundef %obj, i1 noundef zeroext %reset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %call1 = tail call fastcc i32 @nft_quota_do_dump(ptr noundef %skb, ptr noundef %data.i, i1 noundef zeroext %reset)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_quota_obj_update(ptr noundef %obj, ptr noundef %newobj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %newobj, i32 0, i32 10
  %data.i8 = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %data.i, i32 noundef 8) #6
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %data.i) #6
  %call.i.i7 = tail call zeroext i1 @__kasan_check_write(ptr noundef %data.i8, i32 noundef 8) #6
  tail call void @generic_atomic64_set(ptr noundef %data.i8, i64 noundef %call.i) #6
  %flags = getelementptr inbounds %struct.nft_object, ptr %newobj, i32 0, i32 11, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %flags4 = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 8
  %2 = ptrtoint ptr %flags4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %flags4, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_obj_notify(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_obj(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__initcall__kmod_nft_quota__420_292_nft_quota_module_init6, !1, !"__initcall__kmod_nft_quota__420_292_nft_quota_module_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_quota.c", i32 292, i32 1}
!2 = !{ptr @__exitcall_nft_quota_module_exit, !3, !"__exitcall_nft_quota_module_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_quota.c", i32 293, i32 1}
!4 = !{ptr @__UNIQUE_ID_file421, !5, !"__UNIQUE_ID_file421", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_quota.c", i32 295, i32 1}
!6 = !{ptr @__UNIQUE_ID_license422, !5, !"__UNIQUE_ID_license422", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author423, !8, !"__UNIQUE_ID_author423", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_quota.c", i32 296, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias424, !10, !"__UNIQUE_ID_alias424", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_quota.c", i32 297, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias425, !12, !"__UNIQUE_ID_alias425", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_quota.c", i32 298, i32 1}
!13 = !{ptr @__UNIQUE_ID_description426, !14, !"__UNIQUE_ID_description426", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_quota.c", i32 299, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_quota.c", i32 260, i32 11}
!17 = !{ptr @nft_quota_type, !18, !"nft_quota_type", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_quota.c", i32 259, i32 29}
!19 = !{ptr @nft_quota_ops, !20, !"nft_quota_ops", i1 false, i1 false}
!20 = !{!"../net/netfilter/nft_quota.c", i32 249, i32 34}
!21 = !{ptr @nft_quota_policy, !22, !"nft_quota_policy", i1 false, i1 false}
!22 = !{!"../net/netfilter/nft_quota.c", i32 41, i32 32}
!23 = !{ptr @nft_quota_obj_type, !24, !"nft_quota_obj_type", i1 false, i1 false}
!24 = !{!"../net/netfilter/nft_quota.c", i32 194, i32 31}
!25 = !{ptr @nft_quota_obj_ops, !26, !"nft_quota_obj_ops", i1 false, i1 false}
!26 = !{!"../net/netfilter/nft_quota.c", i32 184, i32 36}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"auto-init"}
