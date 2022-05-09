; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_bpf.c_pt.bc'
source_filename = "../net/netfilter/xt_bpf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.125 }
%struct.atomic_t = type { i32 }
%union.anon.125 = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xt_action_param = type { %union.anon.181, %union.anon.182, ptr, i32, i16, i8 }
%union.anon.181 = type { ptr }
%union.anon.182 = type { ptr }
%struct.xt_bpf_info = type { i16, [64 x %struct.sock_filter], [4 x i8], ptr, [4 x i8] }
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.86 }
%union.anon.86 = type { %struct.anon.87 }
%struct.anon.87 = type { %struct.anon.88, [0 x %struct.sock_filter] }
%struct.anon.88 = type {}
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_fprog_kern = type { i16, ptr }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_mtdtor_param = type { ptr, ptr, ptr, i8 }
%struct.xt_bpf_info_v1 = type { i16, i16, i32, %union.anon.187, ptr, [4 x i8] }
%union.anon.187 = type { [64 x %struct.sock_filter] }
%struct.sk_buff = type { %union.anon, %union.anon.164, %union.anon.165, [48 x i8], %union.anon.166, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.168, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.164 = type { ptr }
%union.anon.165 = type { i64 }
%union.anon.166 = type { %struct.anon.167 }
%struct.anon.167 = type { i32, ptr }
%union.anon.168 = type { %struct.anon.169 }
%struct.anon.169 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.170, i32, i32, i32, i16, i16, %union.anon.172, i32, %union.anon.173, %union.anon.174, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.170 = type { i32 }
%union.anon.172 = type { i32 }
%union.anon.173 = type { i32 }
%union.anon.174 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }

@__UNIQUE_ID_author419 = internal constant [52 x i8] c"xt_bpf.author=Willem de Bruijn <willemb@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description420 = internal constant [45 x i8] c"xt_bpf.description=Xtables: BPF filter match\00", section ".modinfo", align 1
@__UNIQUE_ID_file421 = internal constant [33 x i8] c"xt_bpf.file=net/netfilter/xt_bpf\00", section ".modinfo", align 1
@__UNIQUE_ID_license422 = internal constant [19 x i8] c"xt_bpf.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias423 = internal constant [21 x i8] c"xt_bpf.alias=ipt_bpf\00", section ".modinfo", align 1
@__UNIQUE_ID_alias424 = internal constant [22 x i8] c"xt_bpf.alias=ip6t_bpf\00", section ".modinfo", align 1
@bpf_mt_reg = internal global [2 x %struct.xt_match] [%struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"bpf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @bpf_mt, ptr @bpf_mt_check, ptr @bpf_mt_destroy, ptr null, ptr null, i32 528, i32 520, i32 0, i16 0, i16 0 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"bpf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @bpf_mt_v1, ptr @bpf_mt_check_v1, ptr @bpf_mt_destroy_v1, ptr null, ptr null, i32 528, i32 520, i32 0, i16 0, i16 0 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_bpf__425_152_bpf_mt_init6 = internal global ptr @bpf_mt_init, section ".initcall6.init", align 4
@__exitcall_bpf_mt_exit = internal global ptr @bpf_mt_exit, section ".exitcall.exit", align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__bpf_mt_check_bytecode._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.__bpf_mt_check_bytecode = private unnamed_addr constant [24 x i8] c"__bpf_mt_check_bytecode\00", align 1
@__bpf_mt_check_bytecode._entry = internal constant %struct.pi_entry { ptr @.str.3, ptr @__func__.__bpf_mt_check_bytecode, ptr @.str.4, i32 36, ptr null, ptr null }, align 1
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016xt_bpf: check failed: parse error\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/netfilter/xt_bpf.c\00", [41 x i8] zeroinitializer }, align 32
@__bpf_mt_check_bytecode._entry_ptr = internal global ptr @__bpf_mt_check_bytecode._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@___asan_gen_.6 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 613, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 271, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [26 x i8] c"../net/netfilter/xt_bpf.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 36, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_alias423, ptr @__UNIQUE_ID_alias424, ptr @__UNIQUE_ID_author419, ptr @__UNIQUE_ID_description420, ptr @__UNIQUE_ID_file421, ptr @__UNIQUE_ID_license422, ptr @__bpf_mt_check_bytecode._entry, ptr @__bpf_mt_check_bytecode._entry_ptr, ptr @__exitcall_bpf_mt_exit, ptr @__initcall__kmod_xt_bpf__425_152_bpf_mt_init6, ptr @bpf_mt_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bpf_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xt_unregister_matches(ptr noundef nonnull @bpf_mt_reg, i32 noundef 2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_matches(ptr noundef nonnull @bpf_mt_reg, i32 noundef 2) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bpf_mt(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %filter = getelementptr inbounds %struct.xt_bpf_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %filter, align 8
  tail call void @__cant_migrate(ptr noundef nonnull @.str, i32 noundef 613) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@bpf_mt, %if.then.i.i)) #9
          to label %if.else.i.i [label %if.then.i.i], !srcloc !40

if.then.i.i:                                      ; preds = %entry
  %call3.i.i = tail call i64 @sched_clock() #9
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %4, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bpf_func.i.i, align 4
  %call.i.i.i = tail call i32 %6(ptr noundef %skb, ptr noundef %insnsi.i.i) #9
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %4, i32 0, i32 7
  %7 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stats9.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %16, i32 0, i32 3
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !41
  %and.i.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %18 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %19 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %22, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !42
  %23 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %28, ptrtoint (ptr @lockdep_recursion to i32)
  %29 = inttoptr i32 %add.i.i.i.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !43
  %32 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i7.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool20.not.i.i.i.i = icmp eq i32 %31, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %36 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i.i.i.i = icmp eq i32 %39, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %40 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i9.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %43, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !44
  %44 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %47, ptrtoint (ptr @hardirqs_enabled to i32)
  %48 = inttoptr i32 %add47.i.i.i.i to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !45
  %51 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i12.i.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %54, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool54.not.i.i.i.i = icmp eq i32 %50, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !46

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %55 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %56, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !47
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %16, i32 0, i32 3, i32 0, i32 1
  %57 = tail call ptr @llvm.returnaddress(i32 0) #9
  %58 = ptrtoint ptr %57 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %58) #9
  %59 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %16, align 8
  %inc.i.i.i = add i64 %60, 1
  store i64 %inc.i.i.i, ptr %16, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %16, i32 0, i32 1
  %call13.i.i = tail call i64 @sched_clock() #9
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %61 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %62
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %58) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  %63 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %64, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_on() #9
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %65 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !49
  %and.i.i.i4.i.i = and i32 %65, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i4.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !50

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #9, !srcloc !51
  br label %bpf_prog_run.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %4, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %4, i32 0, i32 9
  %66 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bpf_func17.i.i, align 4
  %call.i1.i.i = tail call i32 %67(ptr noundef %skb, ptr noundef %insnsi15.i.i) #9
  br label %bpf_prog_run.exit

bpf_prog_run.exit:                                ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call.i1.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool = icmp ne i32 %ret.0.i.i, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_mt_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %program.i = alloca %struct.sock_fprog_kern, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %program.i) #9
  %4 = ptrtoint ptr %program.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %program.i, align 8, !annotation !52
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %3)
  %cmp.i = icmp ugt i16 %3, 64
  br i1 %cmp.i, label %entry.__bpf_mt_check_bytecode.exit_crit_edge, label %if.end.i

entry.__bpf_mt_check_bytecode.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__bpf_mt_check_bytecode.exit

if.end.i:                                         ; preds = %entry
  %filter = getelementptr inbounds %struct.xt_bpf_info, ptr %1, i32 0, i32 3
  %bpf_program = getelementptr inbounds %struct.xt_bpf_info, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %program.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %3, ptr %program.i, align 8
  %filter.i = getelementptr inbounds %struct.sock_fprog_kern, ptr %program.i, i32 0, i32 1
  %6 = ptrtoint ptr %filter.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %bpf_program, ptr %filter.i, align 4
  %call.i = call i32 @bpf_prog_create(ptr noundef %filter, ptr noundef nonnull %program.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.__bpf_mt_check_bytecode.exit_crit_edge, label %if.then3.i

if.end.i.__bpf_mt_check_bytecode.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__bpf_mt_check_bytecode.exit

if.then3.i:                                       ; preds = %if.end.i
  %call4.i = call i32 @___ratelimit(ptr noundef nonnull @__bpf_mt_check_bytecode._rs, ptr noundef nonnull @__func__.__bpf_mt_check_bytecode) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then3.i.__bpf_mt_check_bytecode.exit_crit_edge, label %do.end.i

if.then3.i.__bpf_mt_check_bytecode.exit_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__bpf_mt_check_bytecode.exit

do.end.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #12
  br label %__bpf_mt_check_bytecode.exit

__bpf_mt_check_bytecode.exit:                     ; preds = %do.end.i, %if.then3.i.__bpf_mt_check_bytecode.exit_crit_edge, %if.end.i.__bpf_mt_check_bytecode.exit_crit_edge, %entry.__bpf_mt_check_bytecode.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.__bpf_mt_check_bytecode.exit_crit_edge ], [ -22, %do.end.i ], [ -22, %if.then3.i.__bpf_mt_check_bytecode.exit_crit_edge ], [ 0, %if.end.i.__bpf_mt_check_bytecode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %program.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_mt_destroy(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %filter = getelementptr inbounds %struct.xt_bpf_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %filter, align 8
  tail call void @bpf_prog_destroy(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bpf_mt_v1(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %filter = getelementptr inbounds %struct.xt_bpf_info_v1, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %filter, align 8
  tail call void @migrate_disable() #9
  %call.i = tail call fastcc i32 @__bpf_prog_run_save_cb(ptr noundef %4, ptr noundef %skb) #9
  tail call void @migrate_enable() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool = icmp ne i32 %call.i, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_mt_check_v1(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %program.i = alloca %struct.sock_fprog_kern, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %entry.cleanup_crit_edge [
    i16 0, label %if.then
    i16 2, label %if.then6
    i16 1, label %if.then14
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %bpf_program_num_elem = getelementptr inbounds %struct.xt_bpf_info_v1, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %bpf_program_num_elem to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %bpf_program_num_elem, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %program.i) #9
  %7 = ptrtoint ptr %program.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %program.i, align 8, !annotation !52
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %6)
  %cmp.i = icmp ugt i16 %6, 64
  br i1 %cmp.i, label %if.then.__bpf_mt_check_bytecode.exit_crit_edge, label %if.end.i

if.then.__bpf_mt_check_bytecode.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %__bpf_mt_check_bytecode.exit

if.end.i:                                         ; preds = %if.then
  %filter = getelementptr inbounds %struct.xt_bpf_info_v1, ptr %1, i32 0, i32 4
  %8 = getelementptr inbounds %struct.xt_bpf_info_v1, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %program.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %6, ptr %program.i, align 8
  %filter.i = getelementptr inbounds %struct.sock_fprog_kern, ptr %program.i, i32 0, i32 1
  %10 = ptrtoint ptr %filter.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %filter.i, align 4
  %call.i = call i32 @bpf_prog_create(ptr noundef %filter, ptr noundef nonnull %program.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.__bpf_mt_check_bytecode.exit_crit_edge, label %if.then3.i

if.end.i.__bpf_mt_check_bytecode.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__bpf_mt_check_bytecode.exit

if.then3.i:                                       ; preds = %if.end.i
  %call4.i = call i32 @___ratelimit(ptr noundef nonnull @__bpf_mt_check_bytecode._rs, ptr noundef nonnull @__func__.__bpf_mt_check_bytecode) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then3.i.__bpf_mt_check_bytecode.exit_crit_edge, label %do.end.i

if.then3.i.__bpf_mt_check_bytecode.exit_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__bpf_mt_check_bytecode.exit

do.end.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #12
  br label %__bpf_mt_check_bytecode.exit

__bpf_mt_check_bytecode.exit:                     ; preds = %do.end.i, %if.then3.i.__bpf_mt_check_bytecode.exit_crit_edge, %if.end.i.__bpf_mt_check_bytecode.exit_crit_edge, %if.then.__bpf_mt_check_bytecode.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.then.__bpf_mt_check_bytecode.exit_crit_edge ], [ -22, %do.end.i ], [ -22, %if.then3.i.__bpf_mt_check_bytecode.exit_crit_edge ], [ 0, %if.end.i.__bpf_mt_check_bytecode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %program.i) #9
  br label %cleanup

if.then6:                                         ; preds = %entry
  %fd = getelementptr inbounds %struct.xt_bpf_info_v1, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fd, align 4
  %call.i.i = tail call ptr @bpf_prog_get_type_dev(i32 noundef %12, i32 noundef 1, i1 noundef zeroext false) #9
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i28

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end.i28:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %filter7 = getelementptr inbounds %struct.xt_bpf_info_v1, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %filter7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i, ptr %filter7, align 4
  br label %cleanup

if.then14:                                        ; preds = %entry
  %15 = getelementptr inbounds %struct.xt_bpf_info_v1, ptr %1, i32 0, i32 3
  %call.i30 = tail call i32 @strnlen(ptr noundef %15, i32 noundef 512) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %call.i30)
  %cmp.i31 = icmp eq i32 %call.i30, 512
  br i1 %cmp.i31, label %if.then14.cleanup_crit_edge, label %if.end.i32

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i32:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %filter16 = getelementptr inbounds %struct.xt_bpf_info_v1, ptr %1, i32 0, i32 4
  %call1.i = tail call ptr @bpf_prog_get_type_path(ptr noundef %15, i32 noundef 1) #9
  %16 = ptrtoint ptr %filter16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call1.i, ptr %filter16, align 4
  %cmp.i.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  %17 = ptrtoint ptr %call1.i to i32
  %spec.select.i.i = select i1 %cmp.i.i.i, i32 %17, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end.i32, %if.then14.cleanup_crit_edge, %if.end.i28, %if.then.i, %__bpf_mt_check_bytecode.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %__bpf_mt_check_bytecode.exit ], [ -22, %entry.cleanup_crit_edge ], [ %13, %if.then.i ], [ 0, %if.end.i28 ], [ %spec.select.i.i, %if.end.i32 ], [ -22, %if.then14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpf_mt_destroy_v1(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %filter = getelementptr inbounds %struct.xt_bpf_info_v1, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %filter, align 8
  tail call void @bpf_prog_destroy(ptr noundef %3) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_prog_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__bpf_prog_run_save_cb(ptr noundef %prog, ptr noundef %ctx) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 8
  %cb_access = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 1
  %0 = ptrtoint ptr %cb_access to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %cb_access, align 2
  %1 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !46

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %cb_saved.sroa.0.0.copyload = load i8, ptr %data.i, align 1
  %cb_saved.sroa.5.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 9
  %3 = ptrtoint ptr %cb_saved.sroa.5.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %cb_saved.sroa.5.0.copyload = load i8, ptr %cb_saved.sroa.5.0..sroa_idx, align 1
  %cb_saved.sroa.6.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 10
  %4 = ptrtoint ptr %cb_saved.sroa.6.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %cb_saved.sroa.6.0.copyload = load i8, ptr %cb_saved.sroa.6.0..sroa_idx, align 1
  %cb_saved.sroa.7.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 11
  %5 = ptrtoint ptr %cb_saved.sroa.7.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %cb_saved.sroa.7.0.copyload = load i8, ptr %cb_saved.sroa.7.0..sroa_idx, align 1
  %cb_saved.sroa.8.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 12
  %6 = ptrtoint ptr %cb_saved.sroa.8.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %cb_saved.sroa.8.0.copyload = load i8, ptr %cb_saved.sroa.8.0..sroa_idx, align 1
  %cb_saved.sroa.9.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 13
  %7 = ptrtoint ptr %cb_saved.sroa.9.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %cb_saved.sroa.9.0.copyload = load i8, ptr %cb_saved.sroa.9.0..sroa_idx, align 1
  %cb_saved.sroa.10.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 14
  %8 = ptrtoint ptr %cb_saved.sroa.10.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %cb_saved.sroa.10.0.copyload = load i8, ptr %cb_saved.sroa.10.0..sroa_idx, align 1
  %cb_saved.sroa.11.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 15
  %9 = ptrtoint ptr %cb_saved.sroa.11.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %cb_saved.sroa.11.0.copyload = load i8, ptr %cb_saved.sroa.11.0..sroa_idx, align 1
  %cb_saved.sroa.12.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 16
  %10 = ptrtoint ptr %cb_saved.sroa.12.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %cb_saved.sroa.12.0.copyload = load i8, ptr %cb_saved.sroa.12.0..sroa_idx, align 1
  %cb_saved.sroa.13.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 17
  %11 = ptrtoint ptr %cb_saved.sroa.13.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %cb_saved.sroa.13.0.copyload = load i8, ptr %cb_saved.sroa.13.0..sroa_idx, align 1
  %cb_saved.sroa.14.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 18
  %12 = ptrtoint ptr %cb_saved.sroa.14.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %cb_saved.sroa.14.0.copyload = load i8, ptr %cb_saved.sroa.14.0..sroa_idx, align 1
  %cb_saved.sroa.15.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 19
  %13 = ptrtoint ptr %cb_saved.sroa.15.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %cb_saved.sroa.15.0.copyload = load i8, ptr %cb_saved.sroa.15.0..sroa_idx, align 1
  %cb_saved.sroa.16.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 20
  %14 = ptrtoint ptr %cb_saved.sroa.16.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %cb_saved.sroa.16.0.copyload = load i8, ptr %cb_saved.sroa.16.0..sroa_idx, align 1
  %cb_saved.sroa.17.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 21
  %15 = ptrtoint ptr %cb_saved.sroa.17.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %cb_saved.sroa.17.0.copyload = load i8, ptr %cb_saved.sroa.17.0..sroa_idx, align 1
  %cb_saved.sroa.18.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 22
  %16 = ptrtoint ptr %cb_saved.sroa.18.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %cb_saved.sroa.18.0.copyload = load i8, ptr %cb_saved.sroa.18.0..sroa_idx, align 1
  %cb_saved.sroa.19.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 23
  %17 = ptrtoint ptr %cb_saved.sroa.19.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %17)
  %cb_saved.sroa.19.0.copyload = load i8, ptr %cb_saved.sroa.19.0..sroa_idx, align 1
  %cb_saved.sroa.20.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 24
  %18 = ptrtoint ptr %cb_saved.sroa.20.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %18)
  %cb_saved.sroa.20.0.copyload = load i8, ptr %cb_saved.sroa.20.0..sroa_idx, align 1
  %cb_saved.sroa.21.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 25
  %19 = ptrtoint ptr %cb_saved.sroa.21.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %cb_saved.sroa.21.0.copyload = load i8, ptr %cb_saved.sroa.21.0..sroa_idx, align 1
  %cb_saved.sroa.22.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 26
  %20 = ptrtoint ptr %cb_saved.sroa.22.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %cb_saved.sroa.22.0.copyload = load i8, ptr %cb_saved.sroa.22.0..sroa_idx, align 1
  %cb_saved.sroa.23.0..sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 27
  %21 = ptrtoint ptr %cb_saved.sroa.23.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %21)
  %cb_saved.sroa.23.0.copyload = load i8, ptr %cb_saved.sroa.23.0..sroa_idx, align 1
  %22 = call ptr @memset(ptr %data.i, i32 0, i32 20)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cb_saved.sroa.23.0 = phi i8 [ %cb_saved.sroa.23.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.22.0 = phi i8 [ %cb_saved.sroa.22.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.21.0 = phi i8 [ %cb_saved.sroa.21.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.20.0 = phi i8 [ %cb_saved.sroa.20.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.19.0 = phi i8 [ %cb_saved.sroa.19.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.18.0 = phi i8 [ %cb_saved.sroa.18.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.17.0 = phi i8 [ %cb_saved.sroa.17.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.16.0 = phi i8 [ %cb_saved.sroa.16.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.15.0 = phi i8 [ %cb_saved.sroa.15.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.14.0 = phi i8 [ %cb_saved.sroa.14.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.13.0 = phi i8 [ %cb_saved.sroa.13.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.12.0 = phi i8 [ %cb_saved.sroa.12.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.11.0 = phi i8 [ %cb_saved.sroa.11.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.10.0 = phi i8 [ %cb_saved.sroa.10.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.9.0 = phi i8 [ %cb_saved.sroa.9.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.8.0 = phi i8 [ %cb_saved.sroa.8.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.7.0 = phi i8 [ %cb_saved.sroa.7.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.6.0 = phi i8 [ %cb_saved.sroa.6.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.5.0 = phi i8 [ %cb_saved.sroa.5.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %cb_saved.sroa.0.0 = phi i8 [ %cb_saved.sroa.0.0.copyload, %if.then ], [ -1, %entry.if.end_crit_edge ]
  tail call void @__cant_migrate(ptr noundef nonnull @.str, i32 noundef 613) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@__bpf_prog_run_save_cb, %if.then.i.i)) #9
          to label %if.else.i.i [label %if.then.i.i], !srcloc !40

if.then.i.i:                                      ; preds = %if.end
  %call3.i.i = tail call i64 @sched_clock() #9
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 9
  %23 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bpf_func.i.i, align 4
  %call.i.i.i = tail call i32 %24(ptr noundef %ctx, ptr noundef %insnsi.i.i) #9
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 7
  %25 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stats9.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %33, %27
  %34 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %34, i32 0, i32 3
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !41
  %and.i.i.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %36 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %37 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %40, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !42
  %41 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %46, ptrtoint (ptr @lockdep_recursion to i32)
  %47 = inttoptr i32 %add.i.i.i.i to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !43
  %50 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i7.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %53, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool20.not.i.i.i.i = icmp eq i32 %49, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %54 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i.i.i.i = icmp eq i32 %57, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %58 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i9.i.i.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %61, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !44
  %62 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %65, ptrtoint (ptr @hardirqs_enabled to i32)
  %66 = inttoptr i32 %add47.i.i.i.i to ptr
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %66, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !45
  %69 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i12.i.i.i.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %72, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool54.not.i.i.i.i = icmp eq i32 %68, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !46

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %73 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %74, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !47
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %34, i32 0, i32 3, i32 0, i32 1
  %75 = tail call ptr @llvm.returnaddress(i32 0) #9
  %76 = ptrtoint ptr %75 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %76) #9
  %77 = ptrtoint ptr %34 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %34, align 8
  %inc.i.i.i = add i64 %78, 1
  store i64 %inc.i.i.i, ptr %34, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %34, i32 0, i32 1
  %call13.i.i = tail call i64 @sched_clock() #9
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %79 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %80
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %76) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  %81 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %82, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_on() #9
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %83 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !49
  %and.i.i.i4.i.i = and i32 %83, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i4.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !50

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %35) #9, !srcloc !51
  br label %bpf_prog_run.exit

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 9
  %84 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bpf_func17.i.i, align 4
  %call.i1.i.i = tail call i32 %85(ptr noundef %ctx, ptr noundef %insnsi15.i.i) #9
  br label %bpf_prog_run.exit

bpf_prog_run.exit:                                ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call.i1.i.i, %if.else.i.i ]
  %86 = ptrtoint ptr %cb_access to i32
  call void @__asan_load2_noabort(i32 %86)
  %bf.load5 = load i16, ptr %cb_access, align 2
  %87 = and i16 %bf.load5, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool8.not = icmp eq i16 %87, 0
  br i1 %tobool8.not, label %bpf_prog_run.exit.if.end17_crit_edge, label %if.then15, !prof !46

bpf_prog_run.exit.if.end17_crit_edge:             ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then15:                                        ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %cb_saved.sroa.0.0, ptr %data.i, align 1
  %cb_saved.sroa.5.0..sroa_idx19 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 9
  %89 = ptrtoint ptr %cb_saved.sroa.5.0..sroa_idx19 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %cb_saved.sroa.5.0, ptr %cb_saved.sroa.5.0..sroa_idx19, align 1
  %cb_saved.sroa.6.0..sroa_idx21 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 10
  %90 = ptrtoint ptr %cb_saved.sroa.6.0..sroa_idx21 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %cb_saved.sroa.6.0, ptr %cb_saved.sroa.6.0..sroa_idx21, align 1
  %cb_saved.sroa.7.0..sroa_idx23 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 11
  %91 = ptrtoint ptr %cb_saved.sroa.7.0..sroa_idx23 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %cb_saved.sroa.7.0, ptr %cb_saved.sroa.7.0..sroa_idx23, align 1
  %cb_saved.sroa.8.0..sroa_idx25 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 12
  %92 = ptrtoint ptr %cb_saved.sroa.8.0..sroa_idx25 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %cb_saved.sroa.8.0, ptr %cb_saved.sroa.8.0..sroa_idx25, align 1
  %cb_saved.sroa.9.0..sroa_idx27 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 13
  %93 = ptrtoint ptr %cb_saved.sroa.9.0..sroa_idx27 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %cb_saved.sroa.9.0, ptr %cb_saved.sroa.9.0..sroa_idx27, align 1
  %cb_saved.sroa.10.0..sroa_idx29 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 14
  %94 = ptrtoint ptr %cb_saved.sroa.10.0..sroa_idx29 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %cb_saved.sroa.10.0, ptr %cb_saved.sroa.10.0..sroa_idx29, align 1
  %cb_saved.sroa.11.0..sroa_idx31 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 15
  %95 = ptrtoint ptr %cb_saved.sroa.11.0..sroa_idx31 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %cb_saved.sroa.11.0, ptr %cb_saved.sroa.11.0..sroa_idx31, align 1
  %cb_saved.sroa.12.0..sroa_idx33 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 16
  %96 = ptrtoint ptr %cb_saved.sroa.12.0..sroa_idx33 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %cb_saved.sroa.12.0, ptr %cb_saved.sroa.12.0..sroa_idx33, align 1
  %cb_saved.sroa.13.0..sroa_idx35 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 17
  %97 = ptrtoint ptr %cb_saved.sroa.13.0..sroa_idx35 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %cb_saved.sroa.13.0, ptr %cb_saved.sroa.13.0..sroa_idx35, align 1
  %cb_saved.sroa.14.0..sroa_idx37 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 18
  %98 = ptrtoint ptr %cb_saved.sroa.14.0..sroa_idx37 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %cb_saved.sroa.14.0, ptr %cb_saved.sroa.14.0..sroa_idx37, align 1
  %cb_saved.sroa.15.0..sroa_idx39 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 19
  %99 = ptrtoint ptr %cb_saved.sroa.15.0..sroa_idx39 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %cb_saved.sroa.15.0, ptr %cb_saved.sroa.15.0..sroa_idx39, align 1
  %cb_saved.sroa.16.0..sroa_idx41 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 20
  %100 = ptrtoint ptr %cb_saved.sroa.16.0..sroa_idx41 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %cb_saved.sroa.16.0, ptr %cb_saved.sroa.16.0..sroa_idx41, align 1
  %cb_saved.sroa.17.0..sroa_idx43 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 21
  %101 = ptrtoint ptr %cb_saved.sroa.17.0..sroa_idx43 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %cb_saved.sroa.17.0, ptr %cb_saved.sroa.17.0..sroa_idx43, align 1
  %cb_saved.sroa.18.0..sroa_idx45 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 22
  %102 = ptrtoint ptr %cb_saved.sroa.18.0..sroa_idx45 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %cb_saved.sroa.18.0, ptr %cb_saved.sroa.18.0..sroa_idx45, align 1
  %cb_saved.sroa.19.0..sroa_idx47 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 23
  %103 = ptrtoint ptr %cb_saved.sroa.19.0..sroa_idx47 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %cb_saved.sroa.19.0, ptr %cb_saved.sroa.19.0..sroa_idx47, align 1
  %cb_saved.sroa.20.0..sroa_idx49 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 24
  %104 = ptrtoint ptr %cb_saved.sroa.20.0..sroa_idx49 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %cb_saved.sroa.20.0, ptr %cb_saved.sroa.20.0..sroa_idx49, align 1
  %cb_saved.sroa.21.0..sroa_idx51 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 25
  %105 = ptrtoint ptr %cb_saved.sroa.21.0..sroa_idx51 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %cb_saved.sroa.21.0, ptr %cb_saved.sroa.21.0..sroa_idx51, align 1
  %cb_saved.sroa.22.0..sroa_idx53 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 26
  %106 = ptrtoint ptr %cb_saved.sroa.22.0..sroa_idx53 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %cb_saved.sroa.22.0, ptr %cb_saved.sroa.22.0..sroa_idx53, align 1
  %cb_saved.sroa.23.0..sroa_idx55 = getelementptr inbounds %struct.sk_buff, ptr %ctx, i32 0, i32 3, i32 27
  %107 = ptrtoint ptr %cb_saved.sroa.23.0..sroa_idx55 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %cb_saved.sroa.23.0, ptr %cb_saved.sroa.23.0..sroa_idx55, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %bpf_prog_run.exit.if.end17_crit_edge
  ret i32 %ret.0.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_prog_get_type_dev(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_prog_get_type_path(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !22, !24, !25, !26, !27, !28, !29}
!llvm.named.register.sp = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__UNIQUE_ID_author419, !1, !"__UNIQUE_ID_author419", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_bpf.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_description420, !3, !"__UNIQUE_ID_description420", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_bpf.c", i32 19, i32 1}
!4 = !{ptr @__UNIQUE_ID_file421, !5, !"__UNIQUE_ID_file421", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_bpf.c", i32 20, i32 1}
!6 = !{ptr @__UNIQUE_ID_license422, !5, !"__UNIQUE_ID_license422", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias423, !8, !"__UNIQUE_ID_alias423", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_bpf.c", i32 21, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias424, !10, !"__UNIQUE_ID_alias424", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_bpf.c", i32 22, i32 1}
!11 = !{ptr @__initcall__kmod_xt_bpf__425_152_bpf_mt_init6, !12, !"__initcall__kmod_xt_bpf__425_152_bpf_mt_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_bpf.c", i32 152, i32 1}
!13 = !{ptr @__exitcall_bpf_mt_exit, !14, !"__exitcall_bpf_mt_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_bpf.c", i32 153, i32 1}
!15 = !{ptr @bpf_mt_reg, !16, !"bpf_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_bpf.c", i32 117, i32 24}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/filter.h", i32 613, i32 2}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/netfilter/xt_bpf.c", i32 36, i32 3}
!24 = !{ptr @__bpf_mt_check_bytecode._rs, !23, !"_rs", i1 false, i1 false}
!25 = !{ptr @__func__.__bpf_mt_check_bytecode, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__bpf_mt_check_bytecode._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @__bpf_mt_check_bytecode._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{!"sp"}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 2148955183, i64 2148955188, i64 2148955201, i64 2148955245, i64 2148955279, i64 2148955300}
!41 = !{i64 745506, i64 745567}
!42 = !{i64 2149865964}
!43 = !{i64 2149870896}
!44 = !{i64 2149892608}
!45 = !{i64 2149897500}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 2149973957}
!48 = !{i64 2149974282}
!49 = !{i64 748238}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{i64 748523}
!52 = !{!"auto-init"}
