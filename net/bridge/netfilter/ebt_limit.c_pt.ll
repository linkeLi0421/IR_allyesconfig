; ModuleID = '/llk/IR_all_yes/net/bridge/netfilter/ebt_limit.c_pt.bc'
source_filename = "../net/bridge/netfilter/ebt_limit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xt_action_param = type { %union.anon.141, %union.anon.142, ptr, i32, i16, i8 }
%union.anon.141 = type { ptr }
%union.anon.142 = type { ptr }
%struct.ebt_limit_info = type { i32, i32, i32, i32, i32, i32 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }

@ebt_limit_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"limit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @ebt_limit_mt, ptr @ebt_limit_mt_check, ptr null, ptr null, ptr null, i32 24, i32 8, i32 0, i16 0, i16 7 }, section ".data..read_mostly", align 4
@__initcall__kmod_ebt_limit__476_126_ebt_limit_init6 = internal global ptr @ebt_limit_init, section ".initcall6.init", align 4
@__exitcall_ebt_limit_fini = internal global ptr @ebt_limit_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_description477 = internal constant [49 x i8] c"ebt_limit.description=Ebtables: Rate-limit match\00", section ".modinfo", align 1
@__UNIQUE_ID_file478 = internal constant [46 x i8] c"ebt_limit.file=net/bridge/netfilter/ebt_limit\00", section ".modinfo", align 1
@__UNIQUE_ID_license479 = internal constant [22 x i8] c"ebt_limit.license=GPL\00", section ".modinfo", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@limit_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"limit_lock\00", [21 x i8] zeroinitializer }, align 32
@ebt_limit_mt_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ebt_limit_mt_check = private unnamed_addr constant [19 x i8] c"ebt_limit_mt_check\00", align 1
@ebt_limit_mt_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.ebt_limit_mt_check, ptr @.str.3, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016ebt_limit: overflow, try lower: %u/%u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"net/bridge/netfilter/ebt_limit.c\00", [63 x i8] zeroinitializer }, align 32
@ebt_limit_mt_check._entry_ptr = internal global ptr @ebt_limit_mt_check._entry, section ".printk_index", align 4
@___asan_gen_.4 = private unnamed_addr constant [11 x i8] c"limit_lock\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 22, i32 8 }
@___asan_gen_.10 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [36 x i8] c"../net/bridge/netfilter/ebt_limit.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 76, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_description477, ptr @__UNIQUE_ID_file478, ptr @__UNIQUE_ID_license479, ptr @__exitcall_ebt_limit_fini, ptr @__initcall__kmod_ebt_limit__476_126_ebt_limit_init6, ptr @ebt_limit_fini, ptr @ebt_limit_mt_check._entry, ptr @ebt_limit_mt_check._entry_ptr, ptr @limit_lock, ptr @.str, ptr @ebt_limit_mt_check._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @limit_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebt_limit_mt_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ebt_limit_mt_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ebt_limit_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xt_unregister_match(ptr noundef nonnull @ebt_limit_mt_reg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ebt_limit_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @ebt_limit_mt_reg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ebt_limit_mt(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @limit_lock) #6
  %prev = getelementptr inbounds %struct.ebt_limit_info, ptr %2, i32 0, i32 2
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %prev, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @llvm.prefetch.p0(ptr %prev, i32 1, i32 3, i32 1) #6
  %4 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %3, ptr %prev) #6, !srcloc !32
  %asmresult.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !33
  %sub = sub i32 %3, %asmresult.i
  %mul = shl i32 %sub, 8
  %credit = getelementptr inbounds %struct.ebt_limit_info, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %credit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %credit, align 4
  %add = add i32 %mul, %6
  %credit_cap = getelementptr inbounds %struct.ebt_limit_info, ptr %2, i32 0, i32 4
  %7 = ptrtoint ptr %credit_cap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %credit_cap, align 4
  %9 = tail call i32 @llvm.umin.i32(i32 %add, i32 %8)
  %10 = ptrtoint ptr %credit to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %credit, align 4
  %cost = getelementptr inbounds %struct.ebt_limit_info, ptr %2, i32 0, i32 5
  %11 = ptrtoint ptr %cost to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cost, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %12)
  %cmp19.not = icmp ult i32 %9, %12
  br i1 %cmp19.not, label %entry.cleanup_crit_edge, label %if.then20

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub23 = sub i32 %9, %12
  %13 = ptrtoint ptr %credit to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub23, ptr %credit, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @limit_lock) #6
  %14 = xor i1 %cmp19.not, true
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ebt_limit_mt_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %burst = getelementptr inbounds %struct.ebt_limit_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %burst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %burst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  %cmp.i35 = icmp ugt i32 %5, 167772
  %div.i36 = udiv i32 %5, 10000
  %mul1.i37 = mul i32 %div.i36, 25600
  %mul3.i38 = mul i32 %5, 25600
  %div4.i39 = udiv i32 %mul3.i38, 10000
  %retval.0.i40 = select i1 %cmp.i35, i32 %mul1.i37, i32 %div4.i39
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %retval.0.i40)
  %cmp4 = icmp ult i32 %retval.0.i, %retval.0.i40
  br i1 %cmp4, label %lor.lhs.false.if.then_crit_edge, label %if.end10

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @ebt_limit_mt_check._rs, ptr noundef nonnull @__func__.ebt_limit_mt_check) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %8 = ptrtoint ptr %burst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %burst, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %7, i32 noundef %9) #9
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %prev = getelementptr inbounds %struct.ebt_limit_info, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %prev, align 4
  %credit = getelementptr inbounds %struct.ebt_limit_info, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %credit to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i, ptr %credit, align 4
  %credit_cap = getelementptr inbounds %struct.ebt_limit_info, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %credit_cap to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i, ptr %credit_cap, align 4
  %cost = getelementptr inbounds %struct.ebt_limit_info, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %cost to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i40, ptr %cost, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !16, !17, !18, !19, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__initcall__kmod_ebt_limit__476_126_ebt_limit_init6, !1, !"__initcall__kmod_ebt_limit__476_126_ebt_limit_init6", i1 false, i1 false}
!1 = !{!"../net/bridge/netfilter/ebt_limit.c", i32 126, i32 1}
!2 = !{ptr @__exitcall_ebt_limit_fini, !3, !"__exitcall_ebt_limit_fini", i1 false, i1 false}
!3 = !{!"../net/bridge/netfilter/ebt_limit.c", i32 127, i32 1}
!4 = !{ptr @__UNIQUE_ID_description477, !5, !"__UNIQUE_ID_description477", i1 false, i1 false}
!5 = !{!"../net/bridge/netfilter/ebt_limit.c", i32 128, i32 1}
!6 = !{ptr @__UNIQUE_ID_file478, !7, !"__UNIQUE_ID_file478", i1 false, i1 false}
!7 = !{!"../net/bridge/netfilter/ebt_limit.c", i32 129, i32 1}
!8 = !{ptr @__UNIQUE_ID_license479, !7, !"__UNIQUE_ID_license479", i1 false, i1 false}
!9 = !{ptr @ebt_limit_mt_reg, !10, !"ebt_limit_mt_reg", i1 false, i1 false}
!10 = !{!"../net/bridge/netfilter/ebt_limit.c", i32 102, i32 24}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/bridge/netfilter/ebt_limit.c", i32 22, i32 8}
!13 = !{ptr @limit_lock, !12, !"limit_lock", i1 false, i1 false}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/bridge/netfilter/ebt_limit.c", i32 76, i32 3}
!16 = !{ptr @ebt_limit_mt_check._rs, !15, !"_rs", i1 false, i1 false}
!17 = !{ptr @__func__.ebt_limit_mt_check, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ebt_limit_mt_check._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ebt_limit_mt_check._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 2157059832}
!32 = !{i64 848257, i64 848274, i64 848298, i64 848324, i64 848342}
!33 = !{i64 2157060177}
