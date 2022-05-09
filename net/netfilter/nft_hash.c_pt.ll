; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_hash.c_pt.bc'
source_filename = "../net/netfilter/nft_hash.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_jhash = type { i8, i8, i8, i8, i32, i32, i32 }

@nft_hash_type = internal global %struct.nft_expr_type { ptr @nft_hash_select_ops, ptr null, ptr null, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_hash_policy, i32 9, i8 0, i8 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_hash__420_244_nft_hash_module_init6 = internal global ptr @nft_hash_module_init, section ".initcall6.init", align 4
@__exitcall_nft_hash_module_exit = internal global ptr @nft_hash_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file421 = internal constant [37 x i8] c"nft_hash.file=net/netfilter/nft_hash\00", section ".modinfo", align 1
@__UNIQUE_ID_license422 = internal constant [21 x i8] c"nft_hash.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author423 = internal constant [48 x i8] c"nft_hash.author=Laura Garcia <nevola@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias424 = internal constant [29 x i8] c"nft_hash.alias=nft-expr-hash\00", section ".modinfo", align 1
@__UNIQUE_ID_description425 = internal constant [52 x i8] c"nft_hash.description=Netfilter nftables hash module\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hash\00", [27 x i8] zeroinitializer }, align 32
@nft_hash_policy = internal constant { [10 x %struct.nla_policy], [48 x i8] } { [10 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [48 x i8] zeroinitializer }, align 32
@nft_jhash_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_jhash_eval, ptr null, i32 24, ptr @nft_jhash_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_jhash_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_hash_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@nft_symhash_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_symhash_eval, ptr null, i32 24, ptr @nft_symhash_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_symhash_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_hash_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 227, i32 11 }
@___asan_gen_.5 = private unnamed_addr constant [16 x i8] c"nft_hash_policy\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 59, i32 32 }
@___asan_gen_.8 = private unnamed_addr constant [14 x i8] c"nft_jhash_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 189, i32 34 }
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"nft_symhash_ops\00", align 1
@___asan_gen_.12 = private constant [28 x i8] c"../net/netfilter/nft_hash.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 197, i32 34 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_alias424, ptr @__UNIQUE_ID_author423, ptr @__UNIQUE_ID_description425, ptr @__UNIQUE_ID_file421, ptr @__UNIQUE_ID_license422, ptr @__exitcall_nft_hash_module_exit, ptr @__initcall__kmod_nft_hash__420_244_nft_hash_module_init6, ptr @nft_hash_module_exit, ptr @.str, ptr @nft_hash_policy, ptr @nft_jhash_ops, ptr @nft_symhash_ops], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_hash_policy to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_jhash_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_symhash_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_hash_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_hash_type) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_hash_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_hash_type) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @nft_hash_select_ops(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 7
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %sw.epilog [
    i32 1, label %if.end.cleanup_crit_edge
    i32 0, label %sw.bb2
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -95 to ptr), %sw.epilog ], [ @nft_jhash_ops, %sw.bb2 ], [ @nft_jhash_ops, %entry.cleanup_crit_edge ], [ @nft_symhash_ops, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_jhash_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef %regs, ptr nocapture noundef readnone %pkt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 4
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %len = getelementptr inbounds %struct.nft_jhash, ptr %data.i, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %len, align 2
  %conv = zext i8 %3 to i32
  %seed = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %4 = ptrtoint ptr %seed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %seed, align 4
  %add.i = add nuw nsw i32 %conv, -559038737
  %add1.i = add i32 %add.i, %5
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %3)
  %cmp213.i = icmp ugt i8 %3, 12
  br i1 %cmp213.i, label %entry.while.body.i_crit_edge, label %entry.while.end.i_crit_edge

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %k.0218.i = phi ptr [ %add.ptr31.i, %while.body.i.while.body.i_crit_edge ], [ %arrayidx, %entry.while.body.i_crit_edge ]
  %c.0217.i = phi i32 [ %xor28.i, %while.body.i.while.body.i_crit_edge ], [ %add1.i, %entry.while.body.i_crit_edge ]
  %b.0216.i = phi i32 [ %add29.i, %while.body.i.while.body.i_crit_edge ], [ %add1.i, %entry.while.body.i_crit_edge ]
  %a.0215.i = phi i32 [ %add25.i, %while.body.i.while.body.i_crit_edge ], [ %add1.i, %entry.while.body.i_crit_edge ]
  %length.addr.0214.i = phi i32 [ %sub30.i, %while.body.i.while.body.i_crit_edge ], [ %conv, %entry.while.body.i_crit_edge ]
  %6 = ptrtoint ptr %k.0218.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %k.0218.i, align 1
  %add2.i = add i32 %7, %a.0215.i
  %add.ptr.i = getelementptr i8, ptr %k.0218.i, i32 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %add.ptr.i, align 1
  %add4.i = add i32 %9, %b.0216.i
  %add.ptr5.i = getelementptr i8, ptr %k.0218.i, i32 8
  %10 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %add.ptr5.i, align 1
  %add7.i = add i32 %11, %c.0217.i
  %sub.i = sub i32 %add2.i, %add7.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add7.i, i32 %add7.i, i32 4) #7
  %xor.i = xor i32 %sub.i, %or.i.i
  %add9.i = add i32 %add7.i, %add4.i
  %sub10.i = sub i32 %add4.i, %xor.i
  %or.i201.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #7
  %xor12.i = xor i32 %sub10.i, %or.i201.i
  %add13.i = add i32 %xor.i, %add9.i
  %sub14.i = sub i32 %add9.i, %xor12.i
  %or.i202.i = tail call i32 @llvm.fshl.i32(i32 %xor12.i, i32 %xor12.i, i32 8) #7
  %xor16.i = xor i32 %sub14.i, %or.i202.i
  %add17.i = add i32 %xor12.i, %add13.i
  %sub18.i = sub i32 %add13.i, %xor16.i
  %or.i203.i = tail call i32 @llvm.fshl.i32(i32 %xor16.i, i32 %xor16.i, i32 16) #7
  %xor20.i = xor i32 %sub18.i, %or.i203.i
  %add21.i = add i32 %xor16.i, %add17.i
  %sub22.i = sub i32 %add17.i, %xor20.i
  %or.i204.i = tail call i32 @llvm.fshl.i32(i32 %xor20.i, i32 %xor20.i, i32 19) #7
  %xor24.i = xor i32 %sub22.i, %or.i204.i
  %add25.i = add i32 %xor20.i, %add21.i
  %sub26.i = sub i32 %add21.i, %xor24.i
  %or.i205.i = tail call i32 @llvm.fshl.i32(i32 %xor24.i, i32 %xor24.i, i32 4) #7
  %xor28.i = xor i32 %sub26.i, %or.i205.i
  %add29.i = add i32 %xor24.i, %add25.i
  %sub30.i = add i32 %length.addr.0214.i, -12
  %add.ptr31.i = getelementptr i8, ptr %k.0218.i, i32 12
  %cmp.i = icmp ugt i32 %sub30.i, 12
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %length.addr.0.lcssa.i = phi i32 [ %conv, %entry.while.end.i_crit_edge ], [ %sub30.i, %while.body.i.while.end.i_crit_edge ]
  %a.0.lcssa.i = phi i32 [ %add1.i, %entry.while.end.i_crit_edge ], [ %add25.i, %while.body.i.while.end.i_crit_edge ]
  %b.0.lcssa.i = phi i32 [ %add1.i, %entry.while.end.i_crit_edge ], [ %add29.i, %while.body.i.while.end.i_crit_edge ]
  %c.0.lcssa.i = phi i32 [ %add1.i, %entry.while.end.i_crit_edge ], [ %xor28.i, %while.body.i.while.end.i_crit_edge ]
  %k.0.lcssa.i = phi ptr [ %arrayidx, %entry.while.end.i_crit_edge ], [ %add.ptr31.i, %while.body.i.while.end.i_crit_edge ]
  %12 = zext i32 %length.addr.0.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %length.addr.0.lcssa.i, label %while.end.i.jhash.exit_crit_edge [
    i32 12, label %sw.bb.i
    i32 11, label %while.end.i.sw.bb33.i_crit_edge
    i32 10, label %while.end.i.sw.bb38.i_crit_edge
    i32 9, label %while.end.i.sw.bb43.i_crit_edge
    i32 8, label %while.end.i.sw.bb47.i_crit_edge
    i32 7, label %while.end.i.sw.bb52.i_crit_edge
    i32 6, label %while.end.i.sw.bb57.i_crit_edge
    i32 5, label %while.end.i.sw.bb62.i_crit_edge
    i32 4, label %while.end.i.sw.bb66.i_crit_edge
    i32 3, label %while.end.i.sw.bb71.i_crit_edge
    i32 2, label %while.end.i.sw.bb76.i_crit_edge
    i32 1, label %while.end.i.sw.bb81.i_crit_edge
  ]

while.end.i.sw.bb81.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb81.i

while.end.i.sw.bb76.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb76.i

while.end.i.sw.bb71.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb71.i

while.end.i.sw.bb66.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb66.i

while.end.i.sw.bb62.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62.i

while.end.i.sw.bb57.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb57.i

while.end.i.sw.bb52.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb52.i

while.end.i.sw.bb47.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb47.i

while.end.i.sw.bb43.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb43.i

while.end.i.sw.bb38.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb38.i

while.end.i.sw.bb33.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb33.i

while.end.i.jhash.exit_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %jhash.exit

sw.bb.i:                                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr i8, ptr %k.0.lcssa.i, i32 11
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %14 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %add32.i = add i32 %shl.i, %c.0.lcssa.i
  br label %sw.bb33.i

sw.bb33.i:                                        ; preds = %sw.bb.i, %while.end.i.sw.bb33.i_crit_edge
  %c.1.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb33.i_crit_edge ], [ %add32.i, %sw.bb.i ]
  %arrayidx34.i = getelementptr i8, ptr %k.0.lcssa.i, i32 10
  %15 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %16 to i32
  %shl36.i = shl nuw nsw i32 %conv35.i, 16
  %add37.i = add i32 %shl36.i, %c.1.i
  br label %sw.bb38.i

sw.bb38.i:                                        ; preds = %sw.bb33.i, %while.end.i.sw.bb38.i_crit_edge
  %c.2.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb38.i_crit_edge ], [ %add37.i, %sw.bb33.i ]
  %arrayidx39.i = getelementptr i8, ptr %k.0.lcssa.i, i32 9
  %17 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %18 to i32
  %shl41.i = shl nuw nsw i32 %conv40.i, 8
  %add42.i = add i32 %shl41.i, %c.2.i
  br label %sw.bb43.i

sw.bb43.i:                                        ; preds = %sw.bb38.i, %while.end.i.sw.bb43.i_crit_edge
  %c.3.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb43.i_crit_edge ], [ %add42.i, %sw.bb38.i ]
  %arrayidx44.i = getelementptr i8, ptr %k.0.lcssa.i, i32 8
  %19 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx44.i, align 1
  %conv45.i = zext i8 %20 to i32
  %add46.i = add i32 %c.3.i, %conv45.i
  br label %sw.bb47.i

sw.bb47.i:                                        ; preds = %sw.bb43.i, %while.end.i.sw.bb47.i_crit_edge
  %c.4.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb47.i_crit_edge ], [ %add46.i, %sw.bb43.i ]
  %arrayidx48.i = getelementptr i8, ptr %k.0.lcssa.i, i32 7
  %21 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %22 to i32
  %shl50.i = shl nuw i32 %conv49.i, 24
  %add51.i = add i32 %shl50.i, %b.0.lcssa.i
  br label %sw.bb52.i

sw.bb52.i:                                        ; preds = %sw.bb47.i, %while.end.i.sw.bb52.i_crit_edge
  %b.1.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb52.i_crit_edge ], [ %add51.i, %sw.bb47.i ]
  %c.5.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb52.i_crit_edge ], [ %c.4.i, %sw.bb47.i ]
  %arrayidx53.i = getelementptr i8, ptr %k.0.lcssa.i, i32 6
  %23 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx53.i, align 1
  %conv54.i = zext i8 %24 to i32
  %shl55.i = shl nuw nsw i32 %conv54.i, 16
  %add56.i = add i32 %shl55.i, %b.1.i
  br label %sw.bb57.i

sw.bb57.i:                                        ; preds = %sw.bb52.i, %while.end.i.sw.bb57.i_crit_edge
  %b.2.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb57.i_crit_edge ], [ %add56.i, %sw.bb52.i ]
  %c.6.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb57.i_crit_edge ], [ %c.5.i, %sw.bb52.i ]
  %arrayidx58.i = getelementptr i8, ptr %k.0.lcssa.i, i32 5
  %25 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx58.i, align 1
  %conv59.i = zext i8 %26 to i32
  %shl60.i = shl nuw nsw i32 %conv59.i, 8
  %add61.i = add i32 %shl60.i, %b.2.i
  br label %sw.bb62.i

sw.bb62.i:                                        ; preds = %sw.bb57.i, %while.end.i.sw.bb62.i_crit_edge
  %b.3.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb62.i_crit_edge ], [ %add61.i, %sw.bb57.i ]
  %c.7.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb62.i_crit_edge ], [ %c.6.i, %sw.bb57.i ]
  %arrayidx63.i = getelementptr i8, ptr %k.0.lcssa.i, i32 4
  %27 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx63.i, align 1
  %conv64.i = zext i8 %28 to i32
  %add65.i = add i32 %b.3.i, %conv64.i
  br label %sw.bb66.i

sw.bb66.i:                                        ; preds = %sw.bb62.i, %while.end.i.sw.bb66.i_crit_edge
  %b.4.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb66.i_crit_edge ], [ %add65.i, %sw.bb62.i ]
  %c.8.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb66.i_crit_edge ], [ %c.7.i, %sw.bb62.i ]
  %arrayidx67.i = getelementptr i8, ptr %k.0.lcssa.i, i32 3
  %29 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx67.i, align 1
  %conv68.i = zext i8 %30 to i32
  %shl69.i = shl nuw i32 %conv68.i, 24
  %add70.i = add i32 %shl69.i, %a.0.lcssa.i
  br label %sw.bb71.i

sw.bb71.i:                                        ; preds = %sw.bb66.i, %while.end.i.sw.bb71.i_crit_edge
  %a.1.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %add70.i, %sw.bb66.i ]
  %b.5.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %b.4.i, %sw.bb66.i ]
  %c.9.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %c.8.i, %sw.bb66.i ]
  %arrayidx72.i = getelementptr i8, ptr %k.0.lcssa.i, i32 2
  %31 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx72.i, align 1
  %conv73.i = zext i8 %32 to i32
  %shl74.i = shl nuw nsw i32 %conv73.i, 16
  %add75.i = add i32 %shl74.i, %a.1.i
  br label %sw.bb76.i

sw.bb76.i:                                        ; preds = %sw.bb71.i, %while.end.i.sw.bb76.i_crit_edge
  %a.2.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %add75.i, %sw.bb71.i ]
  %b.6.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %b.5.i, %sw.bb71.i ]
  %c.10.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %c.9.i, %sw.bb71.i ]
  %arrayidx77.i = getelementptr i8, ptr %k.0.lcssa.i, i32 1
  %33 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx77.i, align 1
  %conv78.i = zext i8 %34 to i32
  %shl79.i = shl nuw nsw i32 %conv78.i, 8
  %add80.i = add i32 %shl79.i, %a.2.i
  br label %sw.bb81.i

sw.bb81.i:                                        ; preds = %sw.bb76.i, %while.end.i.sw.bb81.i_crit_edge
  %a.3.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %add80.i, %sw.bb76.i ]
  %b.7.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %b.6.i, %sw.bb76.i ]
  %c.11.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %c.10.i, %sw.bb76.i ]
  %35 = ptrtoint ptr %k.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %k.0.lcssa.i, align 1
  %conv83.i = zext i8 %36 to i32
  %add84.i = add i32 %a.3.i, %conv83.i
  %xor85.i = xor i32 %c.11.i, %b.7.i
  %or.i206.i = tail call i32 @llvm.fshl.i32(i32 %b.7.i, i32 %b.7.i, i32 14) #7
  %sub87.i = sub i32 %xor85.i, %or.i206.i
  %xor88.i = xor i32 %add84.i, %sub87.i
  %or.i207.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i, i32 %sub87.i, i32 11) #7
  %sub90.i = sub i32 %xor88.i, %or.i207.i
  %xor91.i = xor i32 %sub90.i, %b.7.i
  %or.i208.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i, i32 %sub90.i, i32 25) #7
  %sub93.i = sub i32 %xor91.i, %or.i208.i
  %xor94.i = xor i32 %sub93.i, %sub87.i
  %or.i209.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i, i32 %sub93.i, i32 16) #7
  %sub96.i = sub i32 %xor94.i, %or.i209.i
  %xor97.i = xor i32 %sub96.i, %sub90.i
  %or.i210.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i, i32 %sub96.i, i32 4) #7
  %sub99.i = sub i32 %xor97.i, %or.i210.i
  %xor100.i = xor i32 %sub99.i, %sub93.i
  %or.i211.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i, i32 %sub99.i, i32 14) #7
  %sub102.i = sub i32 %xor100.i, %or.i211.i
  %xor103.i = xor i32 %sub102.i, %sub96.i
  %or.i212.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i, i32 %sub102.i, i32 24) #7
  %sub105.i = sub i32 %xor103.i, %or.i212.i
  br label %jhash.exit

jhash.exit:                                       ; preds = %sw.bb81.i, %while.end.i.jhash.exit_crit_edge
  %c.12.i = phi i32 [ %c.0.lcssa.i, %while.end.i.jhash.exit_crit_edge ], [ %sub105.i, %sw.bb81.i ]
  %modulus = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %37 = ptrtoint ptr %modulus to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %modulus, align 4
  %conv.i11 = zext i32 %c.12.i to i64
  %conv1.i = zext i32 %38 to i64
  %mul.i = mul nuw i64 %conv1.i, %conv.i11
  %shr.i = lshr i64 %mul.i, 32
  %conv2.i = trunc i64 %shr.i to i32
  %offset = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2, i32 1
  %39 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %offset, align 4
  %add = add i32 %40, %conv2.i
  %dreg = getelementptr inbounds %struct.nft_jhash, ptr %data.i, i32 0, i32 1
  %41 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %dreg, align 1
  %idxprom3 = zext i8 %42 to i32
  %arrayidx4 = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom3
  %43 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add, ptr %arrayidx4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_jhash_init(ptr noundef %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #5 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #7
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !32
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 2
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr ptr, ptr %tb, i32 3
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %lor.lhs.false3.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %arrayidx7 = getelementptr ptr, ptr %tb, i32 4
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %lor.lhs.false6.cleanup_crit_edge, label %if.end

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %arrayidx9 = getelementptr ptr, ptr %tb, i32 6
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %if.end.if.end14_crit_edge, label %if.then11

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i, align 4
  %offset = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2, i32 1
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %offset, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx4, align 4
  %call16 = call i32 @nft_parse_u32_check(ptr noundef %15, i32 noundef 255, ptr noundef nonnull %len) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp19 = icmp eq i32 %17, 0
  br i1 %cmp19, label %if.end18.cleanup_crit_edge, label %if.end21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  %conv = trunc i32 %17 to i8
  %len22 = getelementptr inbounds %struct.nft_jhash, ptr %data.i, i32 0, i32 2
  %18 = ptrtoint ptr %len22 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %len22, align 2
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %call24 = call i32 @nft_parse_register_load(ptr noundef %20, ptr noundef %data.i, i32 noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end21.cleanup_crit_edge, label %if.end28

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %21 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx7, align 4
  %add.ptr.i.i81 = getelementptr i8, ptr %22, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i81 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i81, align 4
  %modulus = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %25 = ptrtoint ptr %modulus to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %modulus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp32 = icmp eq i32 %24, 0
  br i1 %cmp32, label %if.end28.cleanup_crit_edge, label %if.end35

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  %offset36 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2, i32 1
  %26 = ptrtoint ptr %offset36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset36, align 4
  %28 = sub i32 0, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %28)
  %cmp39 = icmp ugt i32 %27, %28
  br i1 %cmp39, label %if.end35.cleanup_crit_edge, label %if.end42

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42:                                         ; preds = %if.end35
  %arrayidx43 = getelementptr ptr, ptr %tb, i32 5
  %29 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx43, align 4
  %tobool44.not = icmp eq ptr %30, null
  br i1 %tobool44.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i82 = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i82 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i82, align 4
  %seed = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %33 = ptrtoint ptr %seed to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %seed, align 4
  br label %if.end49

if.else:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %autogen_seed = getelementptr inbounds %struct.nft_jhash, ptr %data.i, i32 0, i32 3
  %34 = ptrtoint ptr %autogen_seed to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %autogen_seed, align 1
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %autogen_seed, align 1
  %seed48 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  call void @get_random_bytes(ptr noundef %seed48, i32 noundef 4) #7
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then45
  %35 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx1, align 4
  %dreg = getelementptr inbounds %struct.nft_jhash, ptr %data.i, i32 0, i32 1
  %call51 = call i32 @nft_parse_register_store(ptr noundef %ctx, ptr noundef %36, ptr noundef %dreg, ptr noundef null, i32 noundef 0, i32 noundef 4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.end35.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call51, %if.end49 ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call16, %if.end14.cleanup_crit_edge ], [ -34, %if.end18.cleanup_crit_edge ], [ %call24, %if.end21.cleanup_crit_edge ], [ -34, %if.end28.cleanup_crit_edge ], [ -75, %if.end35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_jhash_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #5 align 64 {
entry:
  %tmp.i51 = alloca i32, align 4
  %tmp.i49 = alloca i32, align 4
  %tmp.i47 = alloca i32, align 4
  %tmp.i45 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 4
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 1, i32 noundef %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %dreg = getelementptr inbounds %struct.nft_jhash, ptr %data.i, i32 0, i32 1
  %2 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dreg, align 1
  %conv2 = zext i8 %3 to i32
  %call3 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 2, i32 noundef %conv2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end6:                                          ; preds = %if.end
  %len = getelementptr inbounds %struct.nft_jhash, ptr %data.i, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %len, align 2
  %conv7 = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv7, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.nla_put_failure_crit_edge

if.end6.nla_put_failure_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end11:                                         ; preds = %if.end6
  %modulus = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %7 = ptrtoint ptr %modulus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %modulus, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i45) #7
  %9 = ptrtoint ptr %tmp.i45 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i45, align 4
  %call.i46 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i45) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool13.not = icmp eq i32 %call.i46, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.nla_put_failure_crit_edge

if.end11.nla_put_failure_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end15:                                         ; preds = %if.end11
  %autogen_seed = getelementptr inbounds %struct.nft_jhash, ptr %data.i, i32 0, i32 3
  %10 = ptrtoint ptr %autogen_seed to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %autogen_seed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %land.lhs.true, label %if.end15.if.end19_crit_edge

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end15
  %seed = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %11 = ptrtoint ptr %seed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %seed, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i47) #7
  %13 = ptrtoint ptr %tmp.i47 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tmp.i47, align 4
  %call.i48 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i47) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool17.not = icmp eq i32 %call.i48, 0
  br i1 %tobool17.not, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true.nla_put_failure_crit_edge

land.lhs.true.nla_put_failure_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %if.end15.if.end19_crit_edge
  %offset = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2, i32 1
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not = icmp eq i32 %15, 0
  br i1 %cmp.not, label %if.end19.if.end27_crit_edge, label %if.then21

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then21:                                        ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i49) #7
  %16 = ptrtoint ptr %tmp.i49 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tmp.i49, align 4
  %call.i50 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i49) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool24.not = icmp eq i32 %call.i50, 0
  br i1 %tobool24.not, label %if.then21.if.end27_crit_edge, label %if.then21.nla_put_failure_crit_edge

if.then21.nla_put_failure_crit_edge:              ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.then21.if.end27_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end27:                                         ; preds = %if.then21.if.end27_crit_edge, %if.end19.if.end27_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i51) #7
  %17 = ptrtoint ptr %tmp.i51 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %tmp.i51, align 4
  %call.i52 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i51) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i51) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool29.not = icmp eq i32 %call.i52, 0
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %if.end27.nla_put_failure_crit_edge

if.end27.nla_put_failure_crit_edge:               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end27.nla_put_failure_crit_edge, %if.then21.nla_put_failure_crit_edge, %land.lhs.true.nla_put_failure_crit_edge, %if.end11.nla_put_failure_crit_edge, %if.end6.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.end27.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_u32_check(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_load(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_store(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_dump_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_symhash_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %call2 = tail call i32 @__skb_get_hash_symmetric(ptr noundef %1) #7
  %modulus = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %2 = ptrtoint ptr %modulus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %modulus, align 4
  %conv.i = zext i32 %call2 to i64
  %conv1.i = zext i32 %3 to i64
  %mul.i = mul nuw i64 %conv1.i, %conv.i
  %shr.i = lshr i64 %mul.i, 32
  %conv2.i = trunc i64 %shr.i to i32
  %offset = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %add = add i32 %5, %conv2.i
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data.i, align 4
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_symhash_init(ptr noundef %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 4
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx3 = getelementptr ptr, ptr %tb, i32 6
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %offset = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %offset, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx1, align 4
  %add.ptr.i.i33 = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i33 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i33, align 4
  %modulus = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %13 = ptrtoint ptr %modulus to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %modulus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %offset14 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %14 = ptrtoint ptr %offset14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset14, align 4
  %16 = sub i32 0, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %16)
  %cmp17 = icmp ugt i32 %15, %16
  br i1 %cmp17, label %if.end13.cleanup_crit_edge, label %if.end19

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %call21 = tail call i32 @nft_parse_register_store(ptr noundef %ctx, ptr noundef %18, ptr noundef %data.i, ptr noundef null, i32 noundef 0, i32 noundef 4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end19 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -34, %if.end8.cleanup_crit_edge ], [ -75, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_symhash_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #5 align 64 {
entry:
  %tmp.i26 = alloca i32, align 4
  %tmp.i24 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 4
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 2, i32 noundef %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %modulus = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %2 = ptrtoint ptr %modulus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %modulus, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end5:                                          ; preds = %if.end
  %offset = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.end5.if.end13_crit_edge, label %if.then7

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then7:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i24) #7
  %7 = ptrtoint ptr %tmp.i24 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp.i24, align 4
  %call.i25 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i24) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool10.not = icmp eq i32 %call.i25, 0
  br i1 %tobool10.not, label %if.then7.if.end13_crit_edge, label %if.then7.nla_put_failure_crit_edge

if.then7.nla_put_failure_crit_edge:               ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %if.then7.if.end13_crit_edge, %if.end5.if.end13_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i26) #7
  %8 = ptrtoint ptr %tmp.i26 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %tmp.i26, align 4
  %call.i27 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i26) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool15.not = icmp eq i32 %call.i27, 0
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end13.nla_put_failure_crit_edge

if.end13.nla_put_failure_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end13.nla_put_failure_crit_edge, %if.then7.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_get_hash_symmetric(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__initcall__kmod_nft_hash__420_244_nft_hash_module_init6, !1, !"__initcall__kmod_nft_hash__420_244_nft_hash_module_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_hash.c", i32 244, i32 1}
!2 = !{ptr @__exitcall_nft_hash_module_exit, !3, !"__exitcall_nft_hash_module_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_hash.c", i32 245, i32 1}
!4 = !{ptr @__UNIQUE_ID_file421, !5, !"__UNIQUE_ID_file421", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_hash.c", i32 247, i32 1}
!6 = !{ptr @__UNIQUE_ID_license422, !5, !"__UNIQUE_ID_license422", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author423, !8, !"__UNIQUE_ID_author423", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_hash.c", i32 248, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias424, !10, !"__UNIQUE_ID_alias424", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_hash.c", i32 249, i32 1}
!11 = !{ptr @__UNIQUE_ID_description425, !12, !"__UNIQUE_ID_description425", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_hash.c", i32 250, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_hash.c", i32 227, i32 11}
!15 = !{ptr @nft_hash_type, !16, !"nft_hash_type", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_hash.c", i32 226, i32 29}
!17 = !{ptr @nft_jhash_ops, !18, !"nft_jhash_ops", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_hash.c", i32 189, i32 34}
!19 = !{ptr @nft_symhash_ops, !20, !"nft_symhash_ops", i1 false, i1 false}
!20 = !{!"../net/netfilter/nft_hash.c", i32 197, i32 34}
!21 = !{ptr @nft_hash_policy, !22, !"nft_hash_policy", i1 false, i1 false}
!22 = !{!"../net/netfilter/nft_hash.c", i32 59, i32 32}
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
