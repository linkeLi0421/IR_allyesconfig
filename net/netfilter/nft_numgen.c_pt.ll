; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_numgen.c_pt.bc'
source_filename = "../net/netfilter/nft_numgen.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.rnd_state = type { i32, i32, i32, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@nft_ng_type = internal global %struct.nft_expr_type { ptr @nft_ng_select_ops, ptr null, ptr null, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_ng_policy, i32 6, i8 0, i8 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_numgen__420_233_nft_ng_module_init6 = internal global ptr @nft_ng_module_init, section ".initcall6.init", align 4
@__exitcall_nft_ng_module_exit = internal global ptr @nft_ng_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file421 = internal constant [41 x i8] c"nft_numgen.file=net/netfilter/nft_numgen\00", section ".modinfo", align 1
@__UNIQUE_ID_license422 = internal constant [23 x i8] c"nft_numgen.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author423 = internal constant [50 x i8] c"nft_numgen.author=Laura Garcia <nevola@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias424 = internal constant [33 x i8] c"nft_numgen.alias=nft-expr-numgen\00", section ".modinfo", align 1
@__UNIQUE_ID_description425 = internal constant [56 x i8] c"nft_numgen.description=nftables number generator module\00", section ".modinfo", align 1
@__pcpu_unique_nft_numgen_prandom_state = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@nft_numgen_prandom_state = weak dso_local global %struct.rnd_state zeroinitializer, section ".data..percpu", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"numgen\00", [25 x i8] zeroinitializer }, align 32
@nft_ng_policy = internal constant { [7 x %struct.nla_policy], [40 x i8] } { [7 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [40 x i8] zeroinitializer }, align 32
@nft_ng_inc_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_ng_inc_eval, ptr null, i32 24, ptr @nft_ng_inc_init, ptr null, ptr null, ptr @nft_ng_inc_destroy, ptr null, ptr @nft_ng_inc_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_ng_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@nft_ng_random_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_ng_random_eval, ptr null, i32 24, ptr @nft_ng_random_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_ng_random_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_ng_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@nft_ng_random_init.___done = internal global i8 0, section ".data.once", align 1
@nft_ng_random_init.___once_key = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 216, i32 11 }
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"nft_ng_policy\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 46, i32 32 }
@___asan_gen_.7 = private unnamed_addr constant [15 x i8] c"nft_ng_inc_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 176, i32 34 }
@___asan_gen_.10 = private unnamed_addr constant [18 x i8] c"nft_ng_random_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 185, i32 34 }
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"___once_key\00", align 1
@___asan_gen_.14 = private constant [30 x i8] c"../net/netfilter/nft_numgen.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 161, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias424, ptr @__UNIQUE_ID_author423, ptr @__UNIQUE_ID_description425, ptr @__UNIQUE_ID_file421, ptr @__UNIQUE_ID_license422, ptr @__exitcall_nft_ng_module_exit, ptr @__initcall__kmod_nft_numgen__420_233_nft_ng_module_init6, ptr @nft_ng_module_exit, ptr @.str, ptr @nft_ng_policy, ptr @nft_ng_inc_ops, ptr @nft_ng_random_ops, ptr @nft_ng_random_init.___once_key], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_ng_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_ng_inc_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_ng_random_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_ng_random_init.___once_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_ng_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_ng_type) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_ng_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_ng_type) #8
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @nft_ng_select_ops(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 2
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr ptr, ptr %tb, i32 3
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %sw.epilog [
    i32 0, label %if.end.cleanup_crit_edge
    i32 1, label %sw.bb8
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb8, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %sw.epilog ], [ @nft_ng_random_ops, %sw.bb8 ], [ @nft_ng_inc_ops, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false3.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_ng_inc_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readnone %pkt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %counter.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %modulus.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %atomic_cmpxchg.exit.i.do.body.i_crit_edge, %entry
  %0 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %counter.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %1, i32 noundef 4) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %add.i = add i32 %3, 1
  %4 = ptrtoint ptr %modulus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %modulus.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %5)
  %cmp.i = icmp ult i32 %add.i, %5
  %spec.select.i = select i1 %cmp.i, i32 %add.i, i32 0
  %6 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %counter.i, align 4
  %call.i.i13.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %7, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %7, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %do.body.i
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 %3, i32 %spec.select.i, ptr elementtype(i32) %7) #8, !srcloc !40
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %8, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !41
  %cmp4.not.i = icmp eq i32 %asmresult3.i.i.i.i, %3
  br i1 %cmp4.not.i, label %nft_ng_inc_gen.exit, label %atomic_cmpxchg.exit.i.do.body.i_crit_edge

atomic_cmpxchg.exit.i.do.body.i_crit_edge:        ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

nft_ng_inc_gen.exit:                              ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %offset.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2, i32 1
  %9 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset.i, align 4
  %add5.i = add i32 %10, %spec.select.i
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data.i, align 4
  %idxprom = zext i8 %12 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add5.i, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_ng_inc_init(ptr noundef %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %tb, i32 4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %offset = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2, i32 1
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %offset, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx3 = getelementptr ptr, ptr %tb, i32 2
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx3, align 4
  %add.ptr.i.i45 = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i45 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i45, align 4
  %modulus = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %9 = ptrtoint ptr %modulus to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %modulus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %offset8 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2, i32 1
  %10 = ptrtoint ptr %offset8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset8, align 4
  %12 = sub i32 0, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %12)
  %cmp11 = icmp ugt i32 %11, %12
  br i1 %cmp11, label %if.end7.cleanup_crit_edge, label %if.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 4) #11
  %counter = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %14 = ptrtoint ptr %counter to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i, ptr %counter, align 4
  %tobool16.not = icmp eq ptr %call7.i, null
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %15 = ptrtoint ptr %modulus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %modulus, align 4
  %sub21 = add i32 %16, -1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i, i32 noundef 4) #8
  %17 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %sub21, ptr %call7.i, align 8
  %arrayidx22 = getelementptr ptr, ptr %tb, i32 1
  %18 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx22, align 4
  %call23 = tail call i32 @nft_parse_register_store(ptr noundef %ctx, ptr noundef %19, ptr noundef %data.i, ptr noundef null, i32 noundef 0, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %err27, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err27:                                            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %counter, align 4
  tail call void @kfree(ptr noundef %21) #8
  br label %cleanup

cleanup:                                          ; preds = %err27, %if.end18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %err27 ], [ -34, %if.end.cleanup_crit_edge ], [ -75, %if.end7.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_ng_inc_destroy(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %expr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %counter = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %0 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %counter, align 4
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_ng_inc_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #4 align 64 {
entry:
  %tmp.i18.i = alloca i32, align 4
  %tmp.i16.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 4
  %conv = zext i8 %1 to i32
  %modulus = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %2 = ptrtoint ptr %modulus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %modulus, align 4
  %offset = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2, i32 1
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %call.i = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 1, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.nla_put_failure.i_crit_edge

entry.nla_put_failure.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure.i

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #8
  %6 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.nla_put_failure.i_crit_edge

if.end.i.nla_put_failure.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure.i

if.end4.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i16.i) #8
  %7 = ptrtoint ptr %tmp.i16.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tmp.i16.i, align 4
  %call.i17.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i16.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i16.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %tobool6.not.i = icmp eq i32 %call.i17.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.nla_put_failure.i_crit_edge

if.end4.i.nla_put_failure.i_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure.i

if.end8.i:                                        ; preds = %if.end4.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i18.i) #8
  %8 = ptrtoint ptr %tmp.i18.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %tmp.i18.i, align 4
  %call.i19.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i18.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i18.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i)
  %tobool10.not.i = icmp eq i32 %call.i19.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.nft_ng_dump.exit_crit_edge, label %if.end8.i.nla_put_failure.i_crit_edge

if.end8.i.nla_put_failure.i_crit_edge:            ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure.i

if.end8.i.nft_ng_dump.exit_crit_edge:             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nft_ng_dump.exit

nla_put_failure.i:                                ; preds = %if.end8.i.nla_put_failure.i_crit_edge, %if.end4.i.nla_put_failure.i_crit_edge, %if.end.i.nla_put_failure.i_crit_edge, %entry.nla_put_failure.i_crit_edge
  br label %nft_ng_dump.exit

nft_ng_dump.exit:                                 ; preds = %nla_put_failure.i, %if.end8.i.nft_ng_dump.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %nla_put_failure.i ], [ 0, %if.end8.i.nft_ng_dump.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_store(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_dump_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_ng_random_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readnone %pkt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, ptrtoint (ptr @nft_numgen_prandom_state to i32)
  %6 = inttoptr i32 %add.i to ptr
  %call2.i = tail call i32 @prandom_u32_state(ptr noundef %6) #8
  %modulus.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %7 = ptrtoint ptr %modulus.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %modulus.i, align 4
  %conv.i.i = zext i32 %call2.i to i64
  %conv1.i.i = zext i32 %8 to i64
  %mul.i.i = mul nuw i64 %conv1.i.i, %conv.i.i
  %shr.i.i = lshr i64 %mul.i.i, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %offset.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %9 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset.i, align 4
  %add4.i = add i32 %10, %conv2.i.i
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data.i, align 4
  %idxprom = zext i8 %12 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add4.i, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_ng_random_init(ptr noundef %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #4 align 64 {
entry:
  %___flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %tb, i32 4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %offset = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %offset, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx3 = getelementptr ptr, ptr %tb, i32 2
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx3, align 4
  %add.ptr.i.i47 = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i47 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i47, align 4
  %modulus = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %9 = ptrtoint ptr %modulus to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %modulus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %offset8 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %10 = ptrtoint ptr %offset8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset8, align 4
  %12 = sub i32 0, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %12)
  %cmp11 = icmp ugt i32 %11, %12
  br i1 %cmp11, label %if.end7.cleanup_crit_edge, label %if.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @nft_ng_random_init.___once_key, ptr blockaddress(@nft_ng_random_init, %if.then18)) #8
          to label %if.end30 [label %if.then18], !srcloc !42

if.then18:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags) #8
  %13 = ptrtoint ptr %___flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %___flags, align 4, !annotation !43
  %call19 = call zeroext i1 @__do_once_start(ptr noundef nonnull @nft_ng_random_init.___done, ptr noundef nonnull %___flags) #8
  br i1 %call19, label %if.then28, label %if.then18.if.end29_crit_edge, !prof !44

if.then18.if.end29_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then28:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  call void @prandom_seed_full_state(ptr noundef nonnull @nft_numgen_prandom_state) #8
  call void @__do_once_done(ptr noundef nonnull @nft_ng_random_init.___done, ptr noundef nonnull @nft_ng_random_init.___once_key, ptr noundef nonnull %___flags, ptr noundef null) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.then18.if.end29_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags) #8
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end13
  %arrayidx35 = getelementptr ptr, ptr %tb, i32 1
  %14 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx35, align 4
  %call36 = call i32 @nft_parse_register_store(ptr noundef %ctx, ptr noundef %15, ptr noundef %data.i, ptr noundef null, i32 noundef 0, i32 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call36, %if.end30 ], [ -34, %if.end.cleanup_crit_edge ], [ -75, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_ng_random_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #4 align 64 {
entry:
  %tmp.i18.i = alloca i32, align 4
  %tmp.i16.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 4
  %conv = zext i8 %1 to i32
  %modulus = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %2 = ptrtoint ptr %modulus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %modulus, align 4
  %offset = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %call.i = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 1, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.nla_put_failure.i_crit_edge

entry.nla_put_failure.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure.i

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #8
  %6 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.nla_put_failure.i_crit_edge

if.end.i.nla_put_failure.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure.i

if.end4.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i16.i) #8
  %7 = ptrtoint ptr %tmp.i16.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %tmp.i16.i, align 4
  %call.i17.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i16.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i16.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %tobool6.not.i = icmp eq i32 %call.i17.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.nla_put_failure.i_crit_edge

if.end4.i.nla_put_failure.i_crit_edge:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure.i

if.end8.i:                                        ; preds = %if.end4.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i18.i) #8
  %8 = ptrtoint ptr %tmp.i18.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %tmp.i18.i, align 4
  %call.i19.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i18.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i18.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i)
  %tobool10.not.i = icmp eq i32 %call.i19.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.nft_ng_dump.exit_crit_edge, label %if.end8.i.nla_put_failure.i_crit_edge

if.end8.i.nla_put_failure.i_crit_edge:            ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure.i

if.end8.i.nft_ng_dump.exit_crit_edge:             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nft_ng_dump.exit

nla_put_failure.i:                                ; preds = %if.end8.i.nla_put_failure.i_crit_edge, %if.end4.i.nla_put_failure.i_crit_edge, %if.end.i.nla_put_failure.i_crit_edge, %entry.nla_put_failure.i_crit_edge
  br label %nft_ng_dump.exit

nft_ng_dump.exit:                                 ; preds = %nla_put_failure.i, %if.end8.i.nft_ng_dump.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %nla_put_failure.i ], [ 0, %if.end8.i.nft_ng_dump.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prandom_seed_full_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !18, !20, !22, !24, !26, !27}
!llvm.named.register.sp = !{!29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_nft_numgen__420_233_nft_ng_module_init6, !1, !"__initcall__kmod_nft_numgen__420_233_nft_ng_module_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_numgen.c", i32 233, i32 1}
!2 = !{ptr @__exitcall_nft_ng_module_exit, !3, !"__exitcall_nft_ng_module_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_numgen.c", i32 234, i32 1}
!4 = !{ptr @__UNIQUE_ID_file421, !5, !"__UNIQUE_ID_file421", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_numgen.c", i32 236, i32 1}
!6 = !{ptr @__UNIQUE_ID_license422, !5, !"__UNIQUE_ID_license422", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author423, !8, !"__UNIQUE_ID_author423", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_numgen.c", i32 237, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias424, !10, !"__UNIQUE_ID_alias424", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_numgen.c", i32 238, i32 1}
!11 = !{ptr @__UNIQUE_ID_description425, !12, !"__UNIQUE_ID_description425", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_numgen.c", i32 239, i32 1}
!13 = !{ptr @__pcpu_unique_nft_numgen_prandom_state, !14, !"__pcpu_unique_nft_numgen_prandom_state", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_numgen.c", i32 16, i32 8}
!15 = !{ptr @nft_numgen_prandom_state, !14, !"nft_numgen_prandom_state", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/netfilter/nft_numgen.c", i32 216, i32 11}
!18 = !{ptr @nft_ng_type, !19, !"nft_ng_type", i1 false, i1 false}
!19 = !{!"../net/netfilter/nft_numgen.c", i32 215, i32 29}
!20 = !{ptr @nft_ng_inc_ops, !21, !"nft_ng_inc_ops", i1 false, i1 false}
!21 = !{!"../net/netfilter/nft_numgen.c", i32 176, i32 34}
!22 = !{ptr @nft_ng_random_ops, !23, !"nft_ng_random_ops", i1 false, i1 false}
!23 = !{!"../net/netfilter/nft_numgen.c", i32 185, i32 34}
!24 = !{ptr @nft_ng_random_init.___done, !25, !"___done", i1 false, i1 false}
!25 = !{!"../net/netfilter/nft_numgen.c", i32 161, i32 2}
!26 = !{ptr @nft_ng_random_init.___once_key, !25, !"___once_key", i1 false, i1 false}
!27 = !{ptr @nft_ng_policy, !28, !"nft_ng_policy", i1 false, i1 false}
!28 = !{!"../net/netfilter/nft_numgen.c", i32 46, i32 32}
!29 = !{!"sp"}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 2148315485}
!40 = !{i64 697398, i64 697422, i64 697443, i64 697460, i64 697477}
!41 = !{i64 2148315711}
!42 = !{i64 2148695880, i64 2148695885, i64 2148695906, i64 2148695950, i64 2148695984, i64 2148696005}
!43 = !{!"auto-init"}
!44 = !{!"branch_weights", i32 1, i32 2000}
