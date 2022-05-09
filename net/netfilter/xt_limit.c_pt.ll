; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_limit.c_pt.bc'
source_filename = "../net/netfilter/xt_limit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xt_action_param = type { %union.anon.114, %union.anon.115, ptr, i32, i16, i8 }
%union.anon.114 = type { ptr }
%union.anon.115 = type { ptr }
%struct.xt_rateinfo = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.xt_limit_priv = type { i32, i32 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_mtdtor_param = type { ptr, ptr, ptr, i8 }

@__UNIQUE_ID_file354 = internal constant [37 x i8] c"xt_limit.file=net/netfilter/xt_limit\00", section ".modinfo", align 1
@__UNIQUE_ID_license355 = internal constant [21 x i8] c"xt_limit.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author356 = internal constant [49 x i8] c"xt_limit.author=Herve Eychenne <rv@wallfire.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description357 = internal constant [47 x i8] c"xt_limit.description=Xtables: rate-limit match\00", section ".modinfo", align 1
@__UNIQUE_ID_alias358 = internal constant [25 x i8] c"xt_limit.alias=ipt_limit\00", section ".modinfo", align 1
@__UNIQUE_ID_alias359 = internal constant [26 x i8] c"xt_limit.alias=ip6t_limit\00", section ".modinfo", align 1
@limit_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"limit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @limit_mt, ptr @limit_mt_check, ptr @limit_mt_destroy, ptr null, ptr null, i32 28, i32 8, i32 0, i16 0, i16 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_xt_limit__363_214_limit_mt_init6 = internal global ptr @limit_mt_init, section ".initcall6.init", align 4
@__exitcall_limit_mt_exit = internal global ptr @limit_mt_exit, section ".exitcall.exit", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@limit_mt_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.limit_mt_check = private unnamed_addr constant [15 x i8] c"limit_mt_check\00", align 1
@limit_mt_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.limit_mt_check, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016xt_limit: Overflow, try lower: %u/%u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/netfilter/xt_limit.c\00", [39 x i8] zeroinitializer }, align 32
@limit_mt_check._entry_ptr = internal global ptr @limit_mt_check._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.3 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [28 x i8] c"../net/netfilter/xt_limit.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 113, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_alias358, ptr @__UNIQUE_ID_alias359, ptr @__UNIQUE_ID_author356, ptr @__UNIQUE_ID_description357, ptr @__UNIQUE_ID_file354, ptr @__UNIQUE_ID_license355, ptr @__exitcall_limit_mt_exit, ptr @__initcall__kmod_xt_limit__363_214_limit_mt_init6, ptr @limit_mt_check._entry, ptr @limit_mt_check._entry_ptr, ptr @limit_mt_exit, ptr @limit_mt_check._rs, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @limit_mt_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @limit_mt_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @limit_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xt_unregister_match(ptr noundef nonnull @limit_mt_reg) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @limit_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @limit_mt_reg) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @limit_mt(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %master = getelementptr inbounds %struct.xt_rateinfo, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %master, align 4
  %credit = getelementptr inbounds %struct.xt_limit_priv, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %credit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %credit, align 4
  %cost = getelementptr inbounds %struct.xt_rateinfo, ptr %2, i32 0, i32 5
  %7 = ptrtoint ptr %cost to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cost, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp = icmp ult i32 %6, %8
  br i1 %cmp, label %do.end3, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end3:                                          ; preds = %entry
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %11)
  %cmp5 = icmp eq i32 %10, %11
  br i1 %cmp5, label %do.end3.cleanup_crit_edge, label %do.end3.if.end_crit_edge

do.end3.if.end_crit_edge:                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %do.end3.if.end_crit_edge, %entry.if.end_crit_edge
  %credit_cap = getelementptr inbounds %struct.xt_rateinfo, ptr %2, i32 0, i32 4
  br label %do.body6

do.body6:                                         ; preds = %__cmpxchg.exit.do.body6_crit_edge, %if.end
  %credit_increase.0 = phi i32 [ 0, %if.end ], [ %add, %__cmpxchg.exit.do.body6_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %4, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @llvm.prefetch.p0(ptr %4, i32 1, i32 3, i32 1) #7
  %13 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %12, ptr %4) #7, !srcloc !35
  %asmresult.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !36
  %sub = sub i32 %12, %asmresult.i
  %mul = shl i32 %sub, 8
  %add = add i32 %mul, %credit_increase.0
  %14 = ptrtoint ptr %credit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %credit, align 4
  %add31 = add i32 %add, %15
  %16 = ptrtoint ptr %credit_cap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %credit_cap, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %add31, i32 %17)
  %19 = ptrtoint ptr %cost to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cost, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp37.not = icmp ult i32 %18, %20
  %sub40 = select i1 %cmp37.not, i32 0, i32 %20
  %new_credit.1 = sub i32 %18, %sub40
  %call.i93 = tail call zeroext i1 @__kasan_check_write(ptr noundef %credit, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @llvm.prefetch.p0(ptr %credit, i32 1, i32 3, i32 1) #7
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body6
  %21 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %credit, i32 %15, i32 %new_credit.1) #7, !srcloc !38
  %asmresult.i94 = extractvalue { i32, i32 } %21, 0
  %tobool.not.i = icmp eq i32 %asmresult.i94, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %21, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !39
  %cmp65.not = icmp eq i32 %asmresult1.i, %15
  br i1 %cmp65.not, label %do.end66, label %__cmpxchg.exit.do.body6_crit_edge

__cmpxchg.exit.do.body6_crit_edge:                ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

do.end66:                                         ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %22 = xor i1 %cmp37.not, true
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %do.end3.cleanup_crit_edge
  %retval.0 = phi i1 [ %22, %do.end66 ], [ false, %do.end3.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @limit_mt_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %burst = getelementptr inbounds %struct.xt_rateinfo, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %burst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %burst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %mul = mul i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 167772, i32 %mul)
  %cmp.i = icmp ugt i32 %mul, 167772
  %div.i = udiv i32 %mul, 10000
  %mul1.i = mul i32 %div.i, 25600
  %mul3.i = mul i32 %mul, 25600
  %div4.i = udiv i32 %mul3.i, 10000
  %retval.0.i = select i1 %cmp.i, i32 %mul1.i, i32 %div4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 167772, i32 %5)
  %cmp.i43 = icmp ugt i32 %5, 167772
  %div.i44 = udiv i32 %5, 10000
  %mul1.i45 = mul i32 %div.i44, 25600
  %mul3.i46 = mul i32 %5, 25600
  %div4.i47 = udiv i32 %mul3.i46, 10000
  %retval.0.i48 = select i1 %cmp.i43, i32 %mul1.i45, i32 %div4.i47
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %retval.0.i48)
  %cmp4 = icmp ult i32 %retval.0.i, %retval.0.i48
  br i1 %cmp4, label %lor.lhs.false.if.then_crit_edge, label %if.end10

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @limit_mt_check._rs, ptr noundef nonnull @__func__.limit_mt_check) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %8 = ptrtoint ptr %burst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %burst, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %7, i32 noundef %9) #10
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 8) #11
  %cmp12 = icmp eq ptr %call7.i, null
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %master = getelementptr inbounds %struct.xt_rateinfo, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i, ptr %master, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %call7.i, align 8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %16 = ptrtoint ptr %burst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %burst, align 4
  %mul17 = mul i32 %17, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 167772, i32 %mul17)
  %cmp.i49 = icmp ugt i32 %mul17, 167772
  %div.i50 = udiv i32 %mul17, 10000
  %mul1.i51 = mul i32 %div.i50, 25600
  %mul3.i52 = mul i32 %mul17, 25600
  %div4.i53 = udiv i32 %mul3.i52, 10000
  %retval.0.i54 = select i1 %cmp.i49, i32 %mul1.i51, i32 %div4.i53
  %credit = getelementptr inbounds %struct.xt_limit_priv, ptr %call7.i, i32 0, i32 1
  %18 = ptrtoint ptr %credit to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i54, ptr %credit, align 4
  %cost = getelementptr inbounds %struct.xt_rateinfo, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %cost to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cost, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp19 = icmp eq i32 %20, 0
  br i1 %cmp19, label %if.then20, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %credit_cap = getelementptr inbounds %struct.xt_rateinfo, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %credit_cap to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i54, ptr %credit_cap, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 167772, i32 %23)
  %cmp.i55 = icmp ugt i32 %23, 167772
  %div.i56 = udiv i32 %23, 10000
  %mul1.i57 = mul i32 %div.i56, 25600
  %mul3.i58 = mul i32 %23, 25600
  %div4.i59 = udiv i32 %mul3.i58, 10000
  %retval.0.i60 = select i1 %cmp.i55, i32 %mul1.i57, i32 %div4.i59
  %24 = ptrtoint ptr %cost to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i60, ptr %cost, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %do.end ], [ -34, %if.then.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ 0, %if.then20 ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @limit_mt_destroy(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %master = getelementptr inbounds %struct.xt_rateinfo, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  tail call void @kfree(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__UNIQUE_ID_file354, !1, !"__UNIQUE_ID_file354", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_limit.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_license355, !1, !"__UNIQUE_ID_license355", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author356, !4, !"__UNIQUE_ID_author356", i1 false, i1 false}
!4 = !{!"../net/netfilter/xt_limit.c", i32 22, i32 1}
!5 = !{ptr @__UNIQUE_ID_description357, !6, !"__UNIQUE_ID_description357", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_limit.c", i32 23, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias358, !8, !"__UNIQUE_ID_alias358", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_limit.c", i32 24, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias359, !10, !"__UNIQUE_ID_alias359", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_limit.c", i32 25, i32 1}
!11 = !{ptr @__initcall__kmod_xt_limit__363_214_limit_mt_init6, !12, !"__initcall__kmod_xt_limit__363_214_limit_mt_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_limit.c", i32 214, i32 1}
!13 = !{ptr @__exitcall_limit_mt_exit, !14, !"__exitcall_limit_mt_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_limit.c", i32 215, i32 1}
!15 = !{ptr @limit_mt_reg, !16, !"limit_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_limit.c", i32 187, i32 24}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_limit.c", i32 113, i32 3}
!19 = !{ptr @limit_mt_check._rs, !18, !"_rs", i1 false, i1 false}
!20 = !{ptr @__func__.limit_mt_check, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @limit_mt_check._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @limit_mt_check._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i64 2156006088}
!35 = !{i64 1091563, i64 1091580, i64 1091604, i64 1091630, i64 1091648}
!36 = !{i64 2156006433}
!37 = !{i64 2156013901}
!38 = !{i64 1094287, i64 1094308, i64 1094331, i64 1094350, i64 1094369}
!39 = !{i64 2156014320}
