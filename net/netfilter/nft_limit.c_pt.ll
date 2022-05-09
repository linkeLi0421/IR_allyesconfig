; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_limit.c_pt.bc'
source_filename = "../net/netfilter/nft_limit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nft_object_type = type { ptr, ptr, %struct.list_head, i32, i32, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nft_object_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_limit = type { %struct.spinlock, i64, i64 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nft_limit_priv = type { ptr, i64, i64, i64, i32, i8 }
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
%struct.nft_object = type { %struct.list_head, %struct.rhlist_head, %struct.nft_object_hash_key, i32, i64, i16, ptr, [80 x i8], ptr, [4 x i8], [0 x i8], [120 x i8] }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.nft_object_hash_key = type { ptr, ptr }

@nft_limit_type = internal global %struct.nft_expr_type { ptr @nft_limit_select_ops, ptr null, ptr null, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_limit_policy, i32 6, i8 0, i8 1 }, section ".data..read_mostly", align 4
@nft_limit_obj_type = internal global %struct.nft_object_type { ptr @nft_limit_obj_select_ops, ptr null, %struct.list_head zeroinitializer, i32 4, i32 6, ptr null, ptr @nft_limit_policy }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_limit__420_456_nft_limit_module_init6 = internal global ptr @nft_limit_module_init, section ".initcall6.init", align 4
@__exitcall_nft_limit_module_exit = internal global ptr @nft_limit_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file421 = internal constant [39 x i8] c"nft_limit.file=net/netfilter/nft_limit\00", section ".modinfo", align 1
@__UNIQUE_ID_license422 = internal constant [22 x i8] c"nft_limit.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author423 = internal constant [51 x i8] c"nft_limit.author=Patrick McHardy <kaber@trash.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias424 = internal constant [31 x i8] c"nft_limit.alias=nft-expr-limit\00", section ".modinfo", align 1
@__UNIQUE_ID_alias425 = internal constant [26 x i8] c"nft_limit.alias=nft-obj-4\00", section ".modinfo", align 1
@__UNIQUE_ID_description426 = internal constant [56 x i8] c"nft_limit.description=nftables limit expression support\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"limit\00", [26 x i8] zeroinitializer }, align 32
@nft_limit_policy = internal constant { [7 x %struct.nla_policy], [40 x i8] } { [7 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy zeroinitializer], [40 x i8] zeroinitializer }, align 32
@nft_limit_pkts_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_limit_pkts_eval, ptr @nft_limit_pkts_clone, i32 56, ptr @nft_limit_pkts_init, ptr null, ptr null, ptr @nft_limit_pkts_destroy, ptr null, ptr @nft_limit_pkts_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_limit_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@nft_limit_bytes_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_limit_bytes_eval, ptr @nft_limit_bytes_clone, i32 48, ptr @nft_limit_bytes_init, ptr null, ptr null, ptr @nft_limit_bytes_destroy, ptr null, ptr @nft_limit_bytes_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_limit_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@nft_limit_clone.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&priv_dst->limit->lock\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nft_limit_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&priv->limit->lock\00", [45 x i8] zeroinitializer }, align 32
@nft_limit_obj_pkts_ops = internal constant { %struct.nft_object_ops, [36 x i8] } { %struct.nft_object_ops { ptr @nft_limit_obj_pkts_eval, i32 56, ptr @nft_limit_obj_pkts_init, ptr @nft_limit_obj_pkts_destroy, ptr @nft_limit_obj_pkts_dump, ptr null, ptr @nft_limit_obj_type }, [36 x i8] zeroinitializer }, align 32
@nft_limit_obj_bytes_ops = internal constant { %struct.nft_object_ops, [36 x i8] } { %struct.nft_object_ops { ptr @nft_limit_obj_bytes_eval, i32 40, ptr @nft_limit_obj_bytes_init, ptr @nft_limit_obj_bytes_destroy, ptr @nft_limit_obj_bytes_dump, ptr null, ptr @nft_limit_obj_type }, [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 301, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"nft_limit_policy\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 173, i32 32 }
@___asan_gen_.10 = private unnamed_addr constant [19 x i8] c"nft_limit_pkts_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 220, i32 34 }
@___asan_gen_.13 = private unnamed_addr constant [20 x i8] c"nft_limit_bytes_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 274, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 151, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 107, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [23 x i8] c"nft_limit_obj_pkts_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 352, i32 36 }
@___asan_gen_.31 = private unnamed_addr constant [24 x i8] c"nft_limit_obj_bytes_ops\00", align 1
@___asan_gen_.32 = private constant [29 x i8] c"../net/netfilter/nft_limit.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 399, i32 36 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_alias424, ptr @__UNIQUE_ID_alias425, ptr @__UNIQUE_ID_author423, ptr @__UNIQUE_ID_description426, ptr @__UNIQUE_ID_file421, ptr @__UNIQUE_ID_license422, ptr @__exitcall_nft_limit_module_exit, ptr @__initcall__kmod_nft_limit__420_456_nft_limit_module_init6, ptr @nft_limit_module_exit, ptr @.str, ptr @nft_limit_policy, ptr @nft_limit_pkts_ops, ptr @nft_limit_bytes_ops, ptr @nft_limit_clone.__key, ptr @.str.1, ptr @nft_limit_init.__key, ptr @.str.2, ptr @nft_limit_obj_pkts_ops, ptr @nft_limit_obj_bytes_ops], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_limit_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_limit_pkts_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_limit_bytes_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_limit_clone.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_limit_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_limit_obj_pkts_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_limit_obj_bytes_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_limit_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_limit_type) #7
  tail call void @nft_unregister_obj(ptr noundef nonnull @nft_limit_obj_type) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_obj(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_limit_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_obj(ptr noundef nonnull @nft_limit_obj_type) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_limit_type) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %err1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err1:                                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nft_unregister_obj(ptr noundef nonnull @nft_limit_obj_type) #7
  br label %cleanup

cleanup:                                          ; preds = %err1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err1 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @nft_limit_select_ops(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %sw.epilog [
    i32 0, label %if.end.return_crit_edge
    i32 1, label %sw.bb2
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -95 to ptr), %sw.epilog ], [ @nft_limit_bytes_ops, %sw.bb2 ], [ @nft_limit_pkts_ops, %entry.return_crit_edge ], [ @nft_limit_pkts_ops, %if.end.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_limit_pkts_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readnone %pkt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %cost = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 6
  %0 = ptrtoint ptr %cost to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %cost, align 8
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #7
  %call.i.i = tail call i64 @ktime_get() #7
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 8
  %tokens2.i = getelementptr inbounds %struct.nft_limit, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %tokens2.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tokens2.i, align 8
  %add.i = add i64 %7, %call.i.i
  %last.i = getelementptr inbounds %struct.nft_limit, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %last.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %last.i, align 8
  %sub.i = sub i64 %add.i, %9
  %tokens_max.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %10 = ptrtoint ptr %tokens_max.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tokens_max.i, align 8
  %12 = tail call i64 @llvm.umin.i64(i64 %sub.i, i64 %11) #7
  %13 = ptrtoint ptr %last.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call.i.i, ptr %last.i, align 8
  %sub7.i = sub i64 %12, %1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub7.i)
  %cmp8.i = icmp sgt i64 %sub7.i, -1
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 8
  %tokens11.i = getelementptr inbounds %struct.nft_limit, ptr %15, i32 0, i32 2
  br i1 %cmp8.i, label %if.then9.i, label %nft_limit_eval.exit

if.then9.i:                                       ; preds = %entry
  %16 = ptrtoint ptr %tokens11.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %sub7.i, ptr %tokens11.i, align 8
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %18) #7
  %invert.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 5, i32 1
  %19 = ptrtoint ptr %invert.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %invert.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.i.not = icmp eq i8 %20, 0
  br i1 %tobool.i.not, label %if.then9.i.if.end_crit_edge, label %if.then9.i.if.then_crit_edge

if.then9.i.if.then_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then9.i.if.end_crit_edge:                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

nft_limit_eval.exit:                              ; preds = %entry
  %21 = ptrtoint ptr %tokens11.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %12, ptr %tokens11.i, align 8
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %23) #7
  %invert19.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 5, i32 1
  %24 = ptrtoint ptr %invert19.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %invert19.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool20.not.i = icmp eq i8 %25, 0
  br i1 %tobool20.not.i, label %nft_limit_eval.exit.if.then_crit_edge, label %nft_limit_eval.exit.if.end_crit_edge

nft_limit_eval.exit.if.end_crit_edge:             ; preds = %nft_limit_eval.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

nft_limit_eval.exit.if.then_crit_edge:            ; preds = %nft_limit_eval.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %nft_limit_eval.exit.if.then_crit_edge, %if.then9.i.if.then_crit_edge
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -2, ptr %regs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %nft_limit_eval.exit.if.end_crit_edge, %if.then9.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_limit_pkts_clone(ptr nocapture noundef %dst, ptr nocapture noundef readonly %src) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %dst, i32 0, i32 2
  %tokens_max.i = getelementptr inbounds %struct.nft_expr, ptr %src, i32 2
  %0 = ptrtoint ptr %tokens_max.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tokens_max.i, align 8
  %tokens_max1.i = getelementptr inbounds %struct.nft_expr, ptr %dst, i32 2
  %2 = ptrtoint ptr %tokens_max1.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %tokens_max1.i, align 8
  %rate.i = getelementptr inbounds %struct.nft_expr, ptr %src, i32 3
  %3 = ptrtoint ptr %rate.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %rate.i, align 8
  %rate2.i = getelementptr inbounds %struct.nft_expr, ptr %dst, i32 3
  %5 = ptrtoint ptr %rate2.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %rate2.i, align 8
  %nsecs.i = getelementptr inbounds %struct.nft_expr, ptr %src, i32 4
  %6 = ptrtoint ptr %nsecs.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %nsecs.i, align 8
  %nsecs3.i = getelementptr inbounds %struct.nft_expr, ptr %dst, i32 4
  %8 = ptrtoint ptr %nsecs3.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %nsecs3.i, align 8
  %burst.i = getelementptr inbounds %struct.nft_expr, ptr %src, i32 5
  %9 = ptrtoint ptr %burst.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %burst.i, align 8
  %burst4.i = getelementptr inbounds %struct.nft_expr, ptr %dst, i32 5
  %11 = ptrtoint ptr %burst4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %burst4.i, align 8
  %invert.i = getelementptr inbounds %struct.nft_expr, ptr %src, i32 5, i32 1
  %12 = ptrtoint ptr %invert.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %invert.i, align 4, !range !46
  %invert5.i = getelementptr inbounds %struct.nft_expr, ptr %dst, i32 5, i32 1
  %14 = ptrtoint ptr %invert5.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %invert5.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 2592, i32 noundef 64) #10
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %data.i, align 8
  %tobool7.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not.i, label %entry.nft_limit_clone.exit_crit_edge, label %do.body.i

entry.nft_limit_clone.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nft_limit_clone.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @nft_limit_clone.__key, i16 noundef signext 3) #7
  %17 = ptrtoint ptr %tokens_max.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %tokens_max.i, align 8
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 8
  %tokens.i = getelementptr inbounds %struct.nft_limit, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %tokens.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %18, ptr %tokens.i, align 8
  %call.i.i = tail call i64 @ktime_get() #7
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 8
  %last.i = getelementptr inbounds %struct.nft_limit, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %last.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %call.i.i, ptr %last.i, align 8
  br label %nft_limit_clone.exit

nft_limit_clone.exit:                             ; preds = %do.body.i, %entry.nft_limit_clone.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.body.i ], [ -12, %entry.nft_limit_clone.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_limit_pkts_init(ptr nocapture noundef readnone %ctx, ptr nocapture noundef %expr, ptr nocapture noundef readonly %tb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %call1 = tail call fastcc i32 @nft_limit_init(ptr noundef %data.i, ptr noundef %tb, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %nsecs = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 4
  %0 = ptrtoint ptr %nsecs to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %nsecs, align 8
  %rate = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rate, align 8
  %call4 = tail call i64 @div64_u64(i64 noundef %1, i64 noundef %3) #7
  %cost = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 6
  %4 = ptrtoint ptr %cost to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call4, ptr %cost, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_limit_pkts_destroy(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %expr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 8
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_limit_pkts_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %call1 = tail call fastcc i32 @nft_limit_dump(ptr noundef %skb, ptr noundef %data.i, i32 noundef 0)
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nft_limit_init(ptr nocapture noundef %priv, ptr nocapture noundef readonly %tb, i1 noundef zeroext %pkts) unnamed_addr #3 align 64 {
entry:
  %tmp.i107 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 2
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #7
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %tmp.i, align 8, !annotation !47
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef nonnull %1, i32 noundef 8) #7
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #7
  %rate = getelementptr inbounds %struct.nft_limit_priv, ptr %priv, i32 0, i32 2
  %7 = ptrtoint ptr %rate to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %rate, align 8
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i107) #7
  %10 = ptrtoint ptr %tmp.i107 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %tmp.i107, align 8, !annotation !47
  %call.i108 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i107, ptr noundef %9, i32 noundef 8) #7
  %11 = ptrtoint ptr %tmp.i107 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %tmp.i107, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i107) #7
  %mul = mul i64 %12, 1000000000
  %nsecs = getelementptr inbounds %struct.nft_limit_priv, ptr %priv, i32 0, i32 3
  %13 = ptrtoint ptr %nsecs to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %mul, ptr %nsecs, align 8
  %14 = ptrtoint ptr %rate to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rate, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %cmp7 = icmp eq i64 %15, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %12)
  %cmp10 = icmp ult i64 %mul, %12
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp10
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %arrayidx13 = getelementptr ptr, ptr %tb, i32 3
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx13, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.end12.if.end17_crit_edge, label %if.then14

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i, align 4
  %burst = getelementptr inbounds %struct.nft_limit_priv, ptr %priv, i32 0, i32 4
  %20 = ptrtoint ptr %burst to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %burst, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12.if.end17_crit_edge
  %burst19 = getelementptr inbounds %struct.nft_limit_priv, ptr %priv, i32 0, i32 4
  %21 = ptrtoint ptr %burst19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %burst19, align 8
  br i1 %pkts, label %land.lhs.true, label %if.end23.thread

land.lhs.true:                                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp20 = icmp eq i32 %22, 0
  br i1 %cmp20, label %if.then21, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %burst19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %burst19, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %land.lhs.true.if.end23_crit_edge
  %24 = ptrtoint ptr %burst19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %burst19, align 8
  %conv = zext i32 %25 to i64
  %26 = xor i64 %15, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %conv)
  %cmp27 = icmp ult i64 %26, %conv
  br i1 %cmp27, label %if.end23.cleanup_crit_edge, label %if.then32.critedge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23.thread:                                  ; preds = %if.end17
  %conv112 = zext i32 %22 to i64
  %add113 = add i64 %15, %conv112
  call void @__sanitizer_cov_trace_cmp8(i64 %add113, i64 %15)
  %cmp27114 = icmp ult i64 %add113, %15
  br i1 %cmp27114, label %if.end23.thread.cleanup_crit_edge, label %if.else

if.end23.thread.cleanup_crit_edge:                ; preds = %if.end23.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then32.critedge:                               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = call i64 @div64_u64(i64 noundef %mul, i64 noundef %15) #7
  %27 = ptrtoint ptr %burst19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %burst19, align 8
  %conv37 = zext i32 %28 to i64
  %mul38 = mul i64 %call35, %conv37
  br label %if.end47

if.else:                                          ; preds = %if.end23.thread
  call void @__sanitizer_cov_trace_pc() #9
  %mul44 = mul i64 %add113, %mul
  %call46 = call i64 @div64_u64(i64 noundef %mul44, i64 noundef %15) #7
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then32.critedge
  %tokens.0 = phi i64 [ %mul38, %if.then32.critedge ], [ %call46, %if.else ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3264, i32 noundef 64) #10
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i, ptr %priv, align 8
  %tobool50.not = icmp eq ptr %call7.i, null
  br i1 %tobool50.not, label %if.end47.cleanup_crit_edge, label %if.end52

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52:                                         ; preds = %if.end47
  %tokens54 = getelementptr inbounds %struct.nft_limit, ptr %call7.i, i32 0, i32 2
  %31 = ptrtoint ptr %tokens54 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %tokens.0, ptr %tokens54, align 8
  %tokens_max = getelementptr inbounds %struct.nft_limit_priv, ptr %priv, i32 0, i32 1
  %32 = ptrtoint ptr %tokens_max to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %tokens.0, ptr %tokens_max, align 8
  %arrayidx57 = getelementptr ptr, ptr %tb, i32 5
  %33 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx57, align 4
  %tobool58.not = icmp eq ptr %34, null
  br i1 %tobool58.not, label %if.end52.if.end65_crit_edge, label %if.then59

if.end52.if.end65_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then59:                                        ; preds = %if.end52
  %add.ptr.i.i109 = getelementptr i8, ptr %34, i32 4
  %35 = ptrtoint ptr %add.ptr.i.i109 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i.i109, align 4
  %and = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool62.not = icmp eq i32 %and, 0
  br i1 %tobool62.not, label %if.then59.if.end65_crit_edge, label %if.then63

if.then59.if.end65_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then63:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  %invert = getelementptr inbounds %struct.nft_limit_priv, ptr %priv, i32 0, i32 5
  %37 = ptrtoint ptr %invert to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %invert, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.then59.if.end65_crit_edge, %if.end52.if.end65_crit_edge
  %call.i110 = call i64 @ktime_get() #7
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 8
  %last = getelementptr inbounds %struct.nft_limit, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %last to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %call.i110, ptr %last, align 8
  %41 = load ptr, ptr %priv, align 8
  call void @__raw_spin_lock_init(ptr noundef %41, ptr noundef nonnull @.str.2, ptr noundef nonnull @nft_limit_init.__key, i16 noundef signext 3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.end47.cleanup_crit_edge, %if.end23.thread.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end65 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -75, %if.end.cleanup_crit_edge ], [ -75, %if.end23.cleanup_crit_edge ], [ -12, %if.end47.cleanup_crit_edge ], [ -75, %if.end23.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nft_limit_dump(ptr noundef %skb, ptr nocapture noundef readonly %priv, i32 noundef %type) unnamed_addr #3 align 64 {
entry:
  %tmp.i28 = alloca i32, align 4
  %tmp.i26 = alloca i32, align 4
  %tmp.i24 = alloca i32, align 4
  %tmp.i22 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %invert = getelementptr inbounds %struct.nft_limit_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %invert, align 4, !range !46
  %2 = zext i8 %1 to i32
  %nsecs = getelementptr inbounds %struct.nft_limit_priv, ptr %priv, i32 0, i32 3
  %3 = ptrtoint ptr %nsecs to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %nsecs, align 8
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %4, i32 0) #11, !srcloc !48
  %asmresult.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %4, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #11, !srcloc !49
  %rate = getelementptr inbounds %struct.nft_limit_priv, ptr %priv, i32 0, i32 2
  %7 = ptrtoint ptr %rate to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %rate, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #7
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %tmp.i, align 8
  %call.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %entry
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i22) #7
  %10 = ptrtoint ptr %tmp.i22 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %div1581.i.i, ptr %tmp.i22, align 8
  %call.i23 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %tmp.i22, i32 noundef 6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool4.not = icmp eq i32 %call.i23, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %burst = getelementptr inbounds %struct.nft_limit_priv, ptr %priv, i32 0, i32 4
  %11 = ptrtoint ptr %burst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %burst, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i24) #7
  %13 = ptrtoint ptr %tmp.i24 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tmp.i24, align 4
  %call.i25 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i24) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool7.not = icmp eq i32 %call.i25, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %lor.lhs.false5.nla_put_failure_crit_edge

lor.lhs.false5.nla_put_failure_crit_edge:         ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i26) #7
  %14 = ptrtoint ptr %tmp.i26 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %type, ptr %tmp.i26, align 4
  %call.i27 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i26) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool10.not = icmp eq i32 %call.i27, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %lor.lhs.false8.nla_put_failure_crit_edge

lor.lhs.false8.nla_put_failure_crit_edge:         ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i28) #7
  %15 = ptrtoint ptr %tmp.i28 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %2, ptr %tmp.i28, align 4
  %call.i29 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i28) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool13.not = icmp eq i32 %call.i29, 0
  br i1 %tobool13.not, label %lor.lhs.false11.cleanup_crit_edge, label %lor.lhs.false11.nla_put_failure_crit_edge

lor.lhs.false11.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

nla_put_failure:                                  ; preds = %lor.lhs.false11.nla_put_failure_crit_edge, %lor.lhs.false8.nla_put_failure_crit_edge, %lor.lhs.false5.nla_put_failure_crit_edge, %lor.lhs.false.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %lor.lhs.false11.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %lor.lhs.false11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_limit_bytes_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %nsecs = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 4
  %0 = ptrtoint ptr %nsecs to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %nsecs, align 8
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pkt, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %conv = zext i32 %5 to i64
  %mul = mul i64 %1, %conv
  %rate = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3
  %6 = ptrtoint ptr %rate to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rate, align 8
  %call1 = tail call i64 @div64_u64(i64 noundef %mul, i64 noundef %7) #7
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %9) #7
  %call.i.i = tail call i64 @ktime_get() #7
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 8
  %tokens2.i = getelementptr inbounds %struct.nft_limit, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %tokens2.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tokens2.i, align 8
  %add.i = add i64 %13, %call.i.i
  %last.i = getelementptr inbounds %struct.nft_limit, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %last.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %last.i, align 8
  %sub.i = sub i64 %add.i, %15
  %tokens_max.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %16 = ptrtoint ptr %tokens_max.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tokens_max.i, align 8
  %18 = tail call i64 @llvm.umin.i64(i64 %sub.i, i64 %17) #7
  %19 = ptrtoint ptr %last.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %call.i.i, ptr %last.i, align 8
  %sub7.i = sub i64 %18, %call1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub7.i)
  %cmp8.i = icmp sgt i64 %sub7.i, -1
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 8
  %tokens11.i = getelementptr inbounds %struct.nft_limit, ptr %21, i32 0, i32 2
  br i1 %cmp8.i, label %if.then9.i, label %nft_limit_eval.exit

if.then9.i:                                       ; preds = %entry
  %22 = ptrtoint ptr %tokens11.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %sub7.i, ptr %tokens11.i, align 8
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %24) #7
  %invert.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 5, i32 1
  %25 = ptrtoint ptr %invert.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %invert.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.i.not = icmp eq i8 %26, 0
  br i1 %tobool.i.not, label %if.then9.i.if.end_crit_edge, label %if.then9.i.if.then_crit_edge

if.then9.i.if.then_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then9.i.if.end_crit_edge:                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

nft_limit_eval.exit:                              ; preds = %entry
  %27 = ptrtoint ptr %tokens11.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %18, ptr %tokens11.i, align 8
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %29) #7
  %invert19.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 5, i32 1
  %30 = ptrtoint ptr %invert19.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %invert19.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool20.not.i = icmp eq i8 %31, 0
  br i1 %tobool20.not.i, label %nft_limit_eval.exit.if.then_crit_edge, label %nft_limit_eval.exit.if.end_crit_edge

nft_limit_eval.exit.if.end_crit_edge:             ; preds = %nft_limit_eval.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

nft_limit_eval.exit.if.then_crit_edge:            ; preds = %nft_limit_eval.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %nft_limit_eval.exit.if.then_crit_edge, %if.then9.i.if.then_crit_edge
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -2, ptr %regs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %nft_limit_eval.exit.if.end_crit_edge, %if.then9.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_limit_bytes_clone(ptr nocapture noundef %dst, ptr nocapture noundef readonly %src) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %dst, i32 0, i32 2
  %tokens_max.i = getelementptr inbounds %struct.nft_expr, ptr %src, i32 2
  %0 = ptrtoint ptr %tokens_max.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tokens_max.i, align 8
  %tokens_max1.i = getelementptr inbounds %struct.nft_expr, ptr %dst, i32 2
  %2 = ptrtoint ptr %tokens_max1.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %tokens_max1.i, align 8
  %rate.i = getelementptr inbounds %struct.nft_expr, ptr %src, i32 3
  %3 = ptrtoint ptr %rate.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %rate.i, align 8
  %rate2.i = getelementptr inbounds %struct.nft_expr, ptr %dst, i32 3
  %5 = ptrtoint ptr %rate2.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %rate2.i, align 8
  %nsecs.i = getelementptr inbounds %struct.nft_expr, ptr %src, i32 4
  %6 = ptrtoint ptr %nsecs.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %nsecs.i, align 8
  %nsecs3.i = getelementptr inbounds %struct.nft_expr, ptr %dst, i32 4
  %8 = ptrtoint ptr %nsecs3.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %nsecs3.i, align 8
  %burst.i = getelementptr inbounds %struct.nft_expr, ptr %src, i32 5
  %9 = ptrtoint ptr %burst.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %burst.i, align 8
  %burst4.i = getelementptr inbounds %struct.nft_expr, ptr %dst, i32 5
  %11 = ptrtoint ptr %burst4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %burst4.i, align 8
  %invert.i = getelementptr inbounds %struct.nft_expr, ptr %src, i32 5, i32 1
  %12 = ptrtoint ptr %invert.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %invert.i, align 4, !range !46
  %invert5.i = getelementptr inbounds %struct.nft_expr, ptr %dst, i32 5, i32 1
  %14 = ptrtoint ptr %invert5.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %invert5.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 2592, i32 noundef 64) #10
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %data.i, align 8
  %tobool7.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not.i, label %entry.nft_limit_clone.exit_crit_edge, label %do.body.i

entry.nft_limit_clone.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nft_limit_clone.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @nft_limit_clone.__key, i16 noundef signext 3) #7
  %17 = ptrtoint ptr %tokens_max.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %tokens_max.i, align 8
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 8
  %tokens.i = getelementptr inbounds %struct.nft_limit, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %tokens.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %18, ptr %tokens.i, align 8
  %call.i.i = tail call i64 @ktime_get() #7
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 8
  %last.i = getelementptr inbounds %struct.nft_limit, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %last.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %call.i.i, ptr %last.i, align 8
  br label %nft_limit_clone.exit

nft_limit_clone.exit:                             ; preds = %do.body.i, %entry.nft_limit_clone.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.body.i ], [ -12, %entry.nft_limit_clone.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_limit_bytes_init(ptr nocapture noundef readnone %ctx, ptr nocapture noundef %expr, ptr nocapture noundef readonly %tb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %call1 = tail call fastcc i32 @nft_limit_init(ptr noundef %data.i, ptr noundef %tb, i1 noundef zeroext false)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_limit_bytes_destroy(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %expr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 8
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_limit_bytes_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %call1 = tail call fastcc i32 @nft_limit_dump(ptr noundef %skb, ptr noundef %data.i, i32 noundef 1)
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @nft_limit_obj_select_ops(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %3, label %sw.epilog [
    i32 0, label %if.end.return_crit_edge
    i32 1, label %sw.bb2
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -95 to ptr), %sw.epilog ], [ @nft_limit_obj_bytes_ops, %sw.bb2 ], [ @nft_limit_obj_pkts_ops, %entry.return_crit_edge ], [ @nft_limit_obj_pkts_ops, %if.end.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_limit_obj_pkts_eval(ptr nocapture noundef readonly %obj, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readnone %pkt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %cost = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 40
  %0 = ptrtoint ptr %cost to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %cost, align 8
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %3) #7
  %call.i.i = tail call i64 @ktime_get() #7
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 8
  %tokens2.i = getelementptr inbounds %struct.nft_limit, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %tokens2.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tokens2.i, align 8
  %add.i = add i64 %7, %call.i.i
  %last.i = getelementptr inbounds %struct.nft_limit, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %last.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %last.i, align 8
  %sub.i = sub i64 %add.i, %9
  %tokens_max.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 8
  %10 = ptrtoint ptr %tokens_max.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tokens_max.i, align 8
  %12 = tail call i64 @llvm.umin.i64(i64 %sub.i, i64 %11) #7
  %13 = ptrtoint ptr %last.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call.i.i, ptr %last.i, align 8
  %sub7.i = sub i64 %12, %1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub7.i)
  %cmp8.i = icmp sgt i64 %sub7.i, -1
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 8
  %tokens11.i = getelementptr inbounds %struct.nft_limit, ptr %15, i32 0, i32 2
  br i1 %cmp8.i, label %if.then9.i, label %nft_limit_eval.exit

if.then9.i:                                       ; preds = %entry
  %16 = ptrtoint ptr %tokens11.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %sub7.i, ptr %tokens11.i, align 8
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %18) #7
  %invert.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 36
  %19 = ptrtoint ptr %invert.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %invert.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.i.not = icmp eq i8 %20, 0
  br i1 %tobool.i.not, label %if.then9.i.if.end_crit_edge, label %if.then9.i.if.then_crit_edge

if.then9.i.if.then_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then9.i.if.end_crit_edge:                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

nft_limit_eval.exit:                              ; preds = %entry
  %21 = ptrtoint ptr %tokens11.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %12, ptr %tokens11.i, align 8
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %23) #7
  %invert19.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 36
  %24 = ptrtoint ptr %invert19.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %invert19.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool20.not.i = icmp eq i8 %25, 0
  br i1 %tobool20.not.i, label %nft_limit_eval.exit.if.then_crit_edge, label %nft_limit_eval.exit.if.end_crit_edge

nft_limit_eval.exit.if.end_crit_edge:             ; preds = %nft_limit_eval.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

nft_limit_eval.exit.if.then_crit_edge:            ; preds = %nft_limit_eval.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %nft_limit_eval.exit.if.then_crit_edge, %if.then9.i.if.then_crit_edge
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -2, ptr %regs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %nft_limit_eval.exit.if.end_crit_edge, %if.then9.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_limit_obj_pkts_init(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %tb, ptr nocapture noundef %obj) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %call1 = tail call fastcc i32 @nft_limit_init(ptr noundef %data.i, ptr noundef %tb, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %nsecs = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 24
  %0 = ptrtoint ptr %nsecs to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %nsecs, align 8
  %rate = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 16
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rate, align 8
  %call4 = tail call i64 @div64_u64(i64 noundef %1, i64 noundef %3) #7
  %cost = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 40
  %4 = ptrtoint ptr %cost to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call4, ptr %cost, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_limit_obj_pkts_destroy(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %obj) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 8
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_limit_obj_pkts_dump(ptr noundef %skb, ptr nocapture noundef readonly %obj, i1 noundef zeroext %reset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %call1 = tail call fastcc i32 @nft_limit_dump(ptr noundef %skb, ptr noundef %data.i, i32 noundef 0)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_limit_obj_bytes_eval(ptr nocapture noundef readonly %obj, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %nsecs = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 24
  %0 = ptrtoint ptr %nsecs to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %nsecs, align 8
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pkt, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %conv = zext i32 %5 to i64
  %mul = mul i64 %1, %conv
  %rate = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 16
  %6 = ptrtoint ptr %rate to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rate, align 8
  %call1 = tail call i64 @div64_u64(i64 noundef %mul, i64 noundef %7) #7
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %9) #7
  %call.i.i = tail call i64 @ktime_get() #7
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 8
  %tokens2.i = getelementptr inbounds %struct.nft_limit, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %tokens2.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tokens2.i, align 8
  %add.i = add i64 %13, %call.i.i
  %last.i = getelementptr inbounds %struct.nft_limit, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %last.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %last.i, align 8
  %sub.i = sub i64 %add.i, %15
  %tokens_max.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 8
  %16 = ptrtoint ptr %tokens_max.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tokens_max.i, align 8
  %18 = tail call i64 @llvm.umin.i64(i64 %sub.i, i64 %17) #7
  %19 = ptrtoint ptr %last.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %call.i.i, ptr %last.i, align 8
  %sub7.i = sub i64 %18, %call1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub7.i)
  %cmp8.i = icmp sgt i64 %sub7.i, -1
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 8
  %tokens11.i = getelementptr inbounds %struct.nft_limit, ptr %21, i32 0, i32 2
  br i1 %cmp8.i, label %if.then9.i, label %nft_limit_eval.exit

if.then9.i:                                       ; preds = %entry
  %22 = ptrtoint ptr %tokens11.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %sub7.i, ptr %tokens11.i, align 8
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %24) #7
  %invert.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 36
  %25 = ptrtoint ptr %invert.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %invert.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.i.not = icmp eq i8 %26, 0
  br i1 %tobool.i.not, label %if.then9.i.if.end_crit_edge, label %if.then9.i.if.then_crit_edge

if.then9.i.if.then_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then9.i.if.end_crit_edge:                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

nft_limit_eval.exit:                              ; preds = %entry
  %27 = ptrtoint ptr %tokens11.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %18, ptr %tokens11.i, align 8
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %29) #7
  %invert19.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 36
  %30 = ptrtoint ptr %invert19.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %invert19.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool20.not.i = icmp eq i8 %31, 0
  br i1 %tobool20.not.i, label %nft_limit_eval.exit.if.then_crit_edge, label %nft_limit_eval.exit.if.end_crit_edge

nft_limit_eval.exit.if.end_crit_edge:             ; preds = %nft_limit_eval.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

nft_limit_eval.exit.if.then_crit_edge:            ; preds = %nft_limit_eval.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %nft_limit_eval.exit.if.then_crit_edge, %if.then9.i.if.then_crit_edge
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -2, ptr %regs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %nft_limit_eval.exit.if.end_crit_edge, %if.then9.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_limit_obj_bytes_init(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %tb, ptr nocapture noundef %obj) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %call1 = tail call fastcc i32 @nft_limit_init(ptr noundef %data.i, ptr noundef %tb, i1 noundef zeroext false)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_limit_obj_bytes_destroy(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %obj) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 8
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_limit_obj_bytes_dump(ptr noundef %skb, ptr nocapture noundef readonly %obj, i1 noundef zeroext %reset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %call1 = tail call fastcc i32 @nft_limit_dump(ptr noundef %skb, ptr noundef %data.i, i32 noundef 1)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_obj(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !26, !27, !29, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_nft_limit__420_456_nft_limit_module_init6, !1, !"__initcall__kmod_nft_limit__420_456_nft_limit_module_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_limit.c", i32 456, i32 1}
!2 = !{ptr @__exitcall_nft_limit_module_exit, !3, !"__exitcall_nft_limit_module_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_limit.c", i32 457, i32 1}
!4 = !{ptr @__UNIQUE_ID_file421, !5, !"__UNIQUE_ID_file421", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_limit.c", i32 459, i32 1}
!6 = !{ptr @__UNIQUE_ID_license422, !5, !"__UNIQUE_ID_license422", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author423, !8, !"__UNIQUE_ID_author423", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_limit.c", i32 460, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias424, !10, !"__UNIQUE_ID_alias424", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_limit.c", i32 461, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias425, !12, !"__UNIQUE_ID_alias425", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_limit.c", i32 462, i32 1}
!13 = !{ptr @__UNIQUE_ID_description426, !14, !"__UNIQUE_ID_description426", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_limit.c", i32 463, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_limit.c", i32 301, i32 11}
!17 = !{ptr @nft_limit_type, !18, !"nft_limit_type", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_limit.c", i32 300, i32 29}
!19 = !{ptr @nft_limit_pkts_ops, !20, !"nft_limit_pkts_ops", i1 false, i1 false}
!20 = !{!"../net/netfilter/nft_limit.c", i32 220, i32 34}
!21 = !{ptr @nft_limit_clone.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../net/netfilter/nft_limit.c", i32 151, i32 2}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nft_limit_init.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../net/netfilter/nft_limit.c", i32 107, i32 2}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @nft_limit_bytes_ops, !28, !"nft_limit_bytes_ops", i1 false, i1 false}
!28 = !{!"../net/netfilter/nft_limit.c", i32 274, i32 34}
!29 = !{ptr @nft_limit_policy, !30, !"nft_limit_policy", i1 false, i1 false}
!30 = !{!"../net/netfilter/nft_limit.c", i32 173, i32 32}
!31 = !{ptr @nft_limit_obj_type, !32, !"nft_limit_obj_type", i1 false, i1 false}
!32 = !{!"../net/netfilter/nft_limit.c", i32 424, i32 31}
!33 = !{ptr @nft_limit_obj_pkts_ops, !34, !"nft_limit_obj_pkts_ops", i1 false, i1 false}
!34 = !{!"../net/netfilter/nft_limit.c", i32 352, i32 36}
!35 = !{ptr @nft_limit_obj_bytes_ops, !36, !"nft_limit_obj_bytes_ops", i1 false, i1 false}
!36 = !{!"../net/netfilter/nft_limit.c", i32 399, i32 36}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i8 0, i8 2}
!47 = !{!"auto-init"}
!48 = !{i64 1124898, i64 1124925, i64 1124947, i64 1124975}
!49 = !{i64 1125306, i64 1125333, i64 1125366, i64 1125387, i64 1125414, i64 1125440}
