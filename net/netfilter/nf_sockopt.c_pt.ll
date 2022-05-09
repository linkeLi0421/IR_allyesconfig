; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_sockopt.c_pt.bc'
source_filename = "../net/netfilter/nf_sockopt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+nf_register_sockopt\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_register_sockopt\09\09\09\09"
module asm "\09.long\09__crc_nf_register_sockopt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_register_sockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_register_sockopt\22\09\09\09\09\09"
module asm "__kstrtabns_nf_register_sockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nf_unregister_sockopt\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_unregister_sockopt\09\09\09\09"
module asm "\09.long\09__crc_nf_unregister_sockopt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_unregister_sockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_unregister_sockopt\22\09\09\09\09\09"
module asm "__kstrtabns_nf_unregister_sockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nf_setsockopt\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_setsockopt\09\09\09\09"
module asm "\09.long\09__crc_nf_setsockopt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_setsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_setsockopt\22\09\09\09\09\09"
module asm "__kstrtabns_nf_setsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nf_getsockopt\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_getsockopt\09\09\09\09"
module asm "\09.long\09__crc_nf_getsockopt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_getsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_getsockopt\22\09\09\09\09\09"
module asm "__kstrtabns_nf_getsockopt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nf_sockopt_ops = type { %struct.list_head, i8, i32, i32, ptr, i32, i32, ptr, ptr }

@nf_sockopt_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nf_sockopt_mutex, i64 52), ptr getelementptr (i8, ptr @nf_sockopt_mutex, i64 52) }, ptr @nf_sockopt_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@nf_sockopts = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @nf_sockopts, ptr @nf_sockopts }, [24 x i8] zeroinitializer }, align 32
@nf_register_sockopt.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"netfilter\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nf_register_sockopt\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/netfilter/nf_sockopt.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nf_sock overlap: %u-%u/%u-%u v %u-%u/%u-%u\0A\00", [52 x i8] zeroinitializer }, align 32
@__kstrtab_nf_register_sockopt = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_register_sockopt = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_register_sockopt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_register_sockopt to i32), ptr @__kstrtab_nf_register_sockopt, ptr @__kstrtabns_nf_register_sockopt }, section "___ksymtab+nf_register_sockopt", align 4
@__kstrtab_nf_unregister_sockopt = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_unregister_sockopt = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_unregister_sockopt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_unregister_sockopt to i32), ptr @__kstrtab_nf_unregister_sockopt, ptr @__kstrtabns_nf_unregister_sockopt }, section "___ksymtab+nf_unregister_sockopt", align 4
@__kstrtab_nf_setsockopt = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_setsockopt = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_setsockopt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_setsockopt to i32), ptr @__kstrtab_nf_setsockopt, ptr @__kstrtabns_nf_setsockopt }, section "___ksymtab+nf_setsockopt", align 4
@__kstrtab_nf_getsockopt = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_getsockopt = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_getsockopt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_getsockopt to i32), ptr @__kstrtab_nf_getsockopt, ptr @__kstrtabns_nf_getsockopt }, section "___ksymtab+nf_getsockopt", align 4
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nf_sockopt_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nf_sockopt_mutex\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"nf_sockopt_mutex\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [12 x i8] c"nf_sockopts\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 16, i32 8 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 37, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [30 x i8] c"../net/netfilter/nf_sockopt.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 15, i32 8 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_nf_getsockopt, ptr @__ksymtab_nf_register_sockopt, ptr @__ksymtab_nf_setsockopt, ptr @__ksymtab_nf_unregister_sockopt, ptr @nf_sockopt_mutex, ptr @nf_sockopts, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_sockopt_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_sockopts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_register_sockopt(ptr noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nf_sockopt_mutex, i32 noundef 0) #2
  %ops.057 = load ptr, ptr @nf_sockopts, align 4
  %cmp.not58 = icmp eq ptr %ops.057, @nf_sockopts
  br i1 %cmp.not58, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pf1 = getelementptr inbounds %struct.nf_sockopt_ops, ptr %reg, i32 0, i32 1
  %0 = ptrtoint ptr %pf1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pf1, align 4
  %set_optmin5 = getelementptr inbounds %struct.nf_sockopt_ops, ptr %reg, i32 0, i32 2
  %set_optmax6 = getelementptr inbounds %struct.nf_sockopt_ops, ptr %reg, i32 0, i32 3
  %get_optmin7 = getelementptr inbounds %struct.nf_sockopt_ops, ptr %reg, i32 0, i32 5
  %get_optmax8 = getelementptr inbounds %struct.nf_sockopt_ops, ptr %reg, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ops.059 = phi ptr [ %ops.057, %for.body.lr.ph ], [ %ops.0, %for.inc.for.body_crit_edge ]
  %pf = getelementptr inbounds %struct.nf_sockopt_ops, ptr %ops.059, i32 0, i32 1
  %2 = ptrtoint ptr %pf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pf, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %1)
  %cmp3 = icmp eq i8 %3, %1
  br i1 %cmp3, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %set_optmin = getelementptr inbounds %struct.nf_sockopt_ops, ptr %ops.059, i32 0, i32 2
  %4 = ptrtoint ptr %set_optmin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %set_optmin, align 4
  %set_optmax = getelementptr inbounds %struct.nf_sockopt_ops, ptr %ops.059, i32 0, i32 3
  %6 = ptrtoint ptr %set_optmax to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %set_optmax, align 4
  %8 = ptrtoint ptr %set_optmin5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %set_optmin5, align 4
  %10 = ptrtoint ptr %set_optmax6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %set_optmax6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.i = icmp sle i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %11)
  %cmp1.i = icmp sge i32 %5, %11
  %tobool.not = or i1 %cmp.i, %cmp1.i
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body

lor.lhs.false:                                    ; preds = %land.lhs.true
  %get_optmin = getelementptr inbounds %struct.nf_sockopt_ops, ptr %ops.059, i32 0, i32 5
  %12 = ptrtoint ptr %get_optmin to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %get_optmin, align 4
  %get_optmax = getelementptr inbounds %struct.nf_sockopt_ops, ptr %ops.059, i32 0, i32 6
  %14 = ptrtoint ptr %get_optmax to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %get_optmax, align 4
  %16 = ptrtoint ptr %get_optmin7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %get_optmin7, align 4
  %18 = ptrtoint ptr %get_optmax8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %get_optmax8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.i51 = icmp sle i32 %15, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %19)
  %cmp1.i52 = icmp sge i32 %13, %19
  %tobool10.not = or i1 %cmp.i51, %cmp1.i52
  br i1 %tobool10.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_register_sockopt.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_register_sockopt, %if.then17)) #2
          to label %out [label %if.then17], !srcloc !29

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  %set_optmax.le = getelementptr inbounds %struct.nf_sockopt_ops, ptr %ops.059, i32 0, i32 3
  %set_optmin.le = getelementptr inbounds %struct.nf_sockopt_ops, ptr %ops.059, i32 0, i32 2
  %20 = ptrtoint ptr %set_optmin.le to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %set_optmin.le, align 4
  %22 = ptrtoint ptr %set_optmax.le to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %set_optmax.le, align 4
  %get_optmin20 = getelementptr inbounds %struct.nf_sockopt_ops, ptr %ops.059, i32 0, i32 5
  %24 = ptrtoint ptr %get_optmin20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %get_optmin20, align 4
  %get_optmax21 = getelementptr inbounds %struct.nf_sockopt_ops, ptr %ops.059, i32 0, i32 6
  %26 = ptrtoint ptr %get_optmax21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %get_optmax21, align 4
  %28 = ptrtoint ptr %set_optmin5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %set_optmin5, align 4
  %30 = ptrtoint ptr %set_optmax6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %set_optmax6, align 4
  %32 = ptrtoint ptr %get_optmin7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %get_optmin7, align 4
  %34 = ptrtoint ptr %get_optmax8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %get_optmax8, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_register_sockopt.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.3, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35) #2
  br label %out

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %36 = ptrtoint ptr %ops.059 to i32
  call void @__asan_load4_noabort(i32 %36)
  %ops.0 = load ptr, ptr %ops.059, align 4
  %cmp.not = icmp eq ptr %ops.0, @nf_sockopts
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %37 = load ptr, ptr @nf_sockopts, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %reg, ptr noundef nonnull @nf_sockopts, ptr noundef %37) #2
  br i1 %call.i.i, label %if.end.i.i, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %reg, ptr %prev1.i.i, align 4
  %39 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %37, ptr %reg, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %reg, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @nf_sockopts, ptr %prev3.i.i, align 4
  store volatile ptr %reg, ptr @nf_sockopts, align 4
  br label %out

out:                                              ; preds = %if.end.i.i, %for.end.out_crit_edge, %if.then17, %do.body
  %ret.0 = phi i32 [ -16, %if.then17 ], [ -16, %do.body ], [ 0, %for.end.out_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @nf_sockopt_mutex) #2
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_unregister_sockopt(ptr noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nf_sockopt_mutex, i32 noundef 0) #2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %reg) #2
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %reg, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %reg, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %reg, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @nf_sockopt_mutex) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_setsockopt(ptr noundef %sk, i8 noundef zeroext %pf, i32 noundef %val, [2 x i32] %opt.coerce, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nf_sockopt_mutex, i32 noundef 0) #2
  %ops.01.i = load ptr, ptr @nf_sockopts, align 4
  %cmp.not2.i = icmp eq ptr %ops.01.i, @nf_sockopts
  br i1 %cmp.not2.i, label %entry.nf_sockopt_find.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.nf_sockopt_find.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %nf_sockopt_find.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %ops.03.i = phi ptr [ %ops.0.i, %for.inc.i.for.body.i_crit_edge ], [ %ops.01.i, %entry.for.body.i_crit_edge ]
  %pf1.i = getelementptr inbounds %struct.nf_sockopt_ops, ptr %ops.03.i, i32 0, i32 1
  %0 = ptrtoint ptr %pf1.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pf1.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %pf)
  %cmp3.i = icmp eq i8 %1, %pf
  br i1 %cmp3.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %owner.i = getelementptr inbounds %struct.nf_sockopt_ops, ptr %ops.03.i, i32 0, i32 8
  %2 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner.i, align 4
  %call.i = tail call zeroext i1 @try_module_get(ptr noundef %3) #2
  br i1 %call.i, label %if.end.i, label %if.then.i.nf_sockopt_find.exit.thread_crit_edge

if.then.i.nf_sockopt_find.exit.thread_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %nf_sockopt_find.exit.thread

if.end.i:                                         ; preds = %if.then.i
  %set_optmin.i = getelementptr inbounds %struct.nf_sockopt_ops, ptr %ops.03.i, i32 0, i32 2
  %4 = ptrtoint ptr %set_optmin.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %set_optmin.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %val)
  %cmp13.not.i = icmp sgt i32 %5, %val
  br i1 %cmp13.not.i, label %if.end.i.if.end20.i_crit_edge, label %land.lhs.true15.i

if.end.i.if.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end20.i

land.lhs.true15.i:                                ; preds = %if.end.i
  %set_optmax.i = getelementptr inbounds %struct.nf_sockopt_ops, ptr %ops.03.i, i32 0, i32 3
  %6 = ptrtoint ptr %set_optmax.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %set_optmax.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %val)
  %cmp16.i = icmp sgt i32 %7, %val
  br i1 %cmp16.i, label %nf_sockopt_find.exit, label %land.lhs.true15.i.if.end20.i_crit_edge

land.lhs.true15.i.if.end20.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end20.i

if.end20.i:                                       ; preds = %land.lhs.true15.i.if.end20.i_crit_edge, %if.end.i.if.end20.i_crit_edge
  %8 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %9) #2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end20.i, %for.body.i.for.inc.i_crit_edge
  %10 = ptrtoint ptr %ops.03.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %ops.0.i = load ptr, ptr %ops.03.i, align 4
  %cmp.not.i = icmp eq ptr %ops.0.i, @nf_sockopts
  br i1 %cmp.not.i, label %for.inc.i.nf_sockopt_find.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

for.inc.i.nf_sockopt_find.exit.thread_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %nf_sockopt_find.exit.thread

nf_sockopt_find.exit.thread:                      ; preds = %for.inc.i.nf_sockopt_find.exit.thread_crit_edge, %if.then.i.nf_sockopt_find.exit.thread_crit_edge, %entry.nf_sockopt_find.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @nf_sockopt_mutex) #2
  br label %if.then

nf_sockopt_find.exit:                             ; preds = %land.lhs.true15.i
  tail call void @mutex_unlock(ptr noundef nonnull @nf_sockopt_mutex) #2
  %cmp.i = icmp ugt ptr %ops.03.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %nf_sockopt_find.exit.if.then_crit_edge, label %if.end

nf_sockopt_find.exit.if.then_crit_edge:           ; preds = %nf_sockopt_find.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

if.then:                                          ; preds = %nf_sockopt_find.exit.if.then_crit_edge, %nf_sockopt_find.exit.thread
  %ops.1.i12 = phi ptr [ inttoptr (i32 -92 to ptr), %nf_sockopt_find.exit.thread ], [ %ops.03.i, %nf_sockopt_find.exit.if.then_crit_edge ]
  %11 = ptrtoint ptr %ops.1.i12 to i32
  br label %cleanup

if.end:                                           ; preds = %nf_sockopt_find.exit
  call void @__sanitizer_cov_trace_pc() #4
  %set = getelementptr inbounds %struct.nf_sockopt_ops, ptr %ops.03.i, i32 0, i32 4
  %12 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set, align 4
  %call3 = tail call i32 %13(ptr noundef %sk, i32 noundef %val, [2 x i32] %opt.coerce, i32 noundef %len) #2
  %14 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %15) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %11, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_getsockopt(ptr noundef %sk, i8 noundef zeroext %pf, i32 noundef %val, ptr noundef %opt, ptr noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nf_sockopt_mutex, i32 noundef 0) #2
  %ops.01.i = load ptr, ptr @nf_sockopts, align 4
  %cmp.not2.i = icmp eq ptr %ops.01.i, @nf_sockopts
  br i1 %cmp.not2.i, label %entry.nf_sockopt_find.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.nf_sockopt_find.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %nf_sockopt_find.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %ops.03.i = phi ptr [ %ops.0.i, %for.inc.i.for.body.i_crit_edge ], [ %ops.01.i, %entry.for.body.i_crit_edge ]
  %pf1.i = getelementptr inbounds %struct.nf_sockopt_ops, ptr %ops.03.i, i32 0, i32 1
  %0 = ptrtoint ptr %pf1.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pf1.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %pf)
  %cmp3.i = icmp eq i8 %1, %pf
  br i1 %cmp3.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %owner.i = getelementptr inbounds %struct.nf_sockopt_ops, ptr %ops.03.i, i32 0, i32 8
  %2 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner.i, align 4
  %call.i = tail call zeroext i1 @try_module_get(ptr noundef %3) #2
  br i1 %call.i, label %if.end.i, label %if.then.i.nf_sockopt_find.exit.thread_crit_edge

if.then.i.nf_sockopt_find.exit.thread_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %nf_sockopt_find.exit.thread

if.end.i:                                         ; preds = %if.then.i
  %get_optmin.i = getelementptr inbounds %struct.nf_sockopt_ops, ptr %ops.03.i, i32 0, i32 5
  %4 = ptrtoint ptr %get_optmin.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %get_optmin.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %val)
  %cmp7.not.i = icmp sgt i32 %5, %val
  br i1 %cmp7.not.i, label %if.end.i.if.end20.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end20.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %get_optmax.i = getelementptr inbounds %struct.nf_sockopt_ops, ptr %ops.03.i, i32 0, i32 6
  %6 = ptrtoint ptr %get_optmax.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %get_optmax.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %val)
  %cmp9.i = icmp sgt i32 %7, %val
  br i1 %cmp9.i, label %nf_sockopt_find.exit, label %land.lhs.true.i.if.end20.i_crit_edge

land.lhs.true.i.if.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end20.i

if.end20.i:                                       ; preds = %land.lhs.true.i.if.end20.i_crit_edge, %if.end.i.if.end20.i_crit_edge
  %8 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %9) #2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end20.i, %for.body.i.for.inc.i_crit_edge
  %10 = ptrtoint ptr %ops.03.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %ops.0.i = load ptr, ptr %ops.03.i, align 4
  %cmp.not.i = icmp eq ptr %ops.0.i, @nf_sockopts
  br i1 %cmp.not.i, label %for.inc.i.nf_sockopt_find.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

for.inc.i.nf_sockopt_find.exit.thread_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %nf_sockopt_find.exit.thread

nf_sockopt_find.exit.thread:                      ; preds = %for.inc.i.nf_sockopt_find.exit.thread_crit_edge, %if.then.i.nf_sockopt_find.exit.thread_crit_edge, %entry.nf_sockopt_find.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @nf_sockopt_mutex) #2
  br label %if.then

nf_sockopt_find.exit:                             ; preds = %land.lhs.true.i
  tail call void @mutex_unlock(ptr noundef nonnull @nf_sockopt_mutex) #2
  %cmp.i = icmp ugt ptr %ops.03.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %nf_sockopt_find.exit.if.then_crit_edge, label %if.end

nf_sockopt_find.exit.if.then_crit_edge:           ; preds = %nf_sockopt_find.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

if.then:                                          ; preds = %nf_sockopt_find.exit.if.then_crit_edge, %nf_sockopt_find.exit.thread
  %ops.1.i12 = phi ptr [ inttoptr (i32 -92 to ptr), %nf_sockopt_find.exit.thread ], [ %ops.03.i, %nf_sockopt_find.exit.if.then_crit_edge ]
  %11 = ptrtoint ptr %ops.1.i12 to i32
  br label %cleanup

if.end:                                           ; preds = %nf_sockopt_find.exit
  call void @__sanitizer_cov_trace_pc() #4
  %get = getelementptr inbounds %struct.nf_sockopt_ops, ptr %ops.03.i, i32 0, i32 7
  %12 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get, align 4
  %call3 = tail call i32 %13(ptr noundef %sk, i32 noundef %val, ptr noundef %opt, ptr noundef %len) #2
  %14 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %15) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %11, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !17, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_sockopt.c", i32 37, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @nf_register_sockopt.__UNIQUE_ID_ddebug473, !1, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!6 = !{ptr @__ksymtab_nf_register_sockopt, !7, !"__ksymtab_nf_register_sockopt", i1 false, i1 false}
!7 = !{!"../net/netfilter/nf_sockopt.c", i32 52, i32 1}
!8 = !{ptr @__ksymtab_nf_unregister_sockopt, !9, !"__ksymtab_nf_unregister_sockopt", i1 false, i1 false}
!9 = !{!"../net/netfilter/nf_sockopt.c", i32 60, i32 1}
!10 = !{ptr @__ksymtab_nf_setsockopt, !11, !"__ksymtab_nf_setsockopt", i1 false, i1 false}
!11 = !{!"../net/netfilter/nf_sockopt.c", i32 105, i32 1}
!12 = !{ptr @__ksymtab_nf_getsockopt, !13, !"__ksymtab_nf_getsockopt", i1 false, i1 false}
!13 = !{!"../net/netfilter/nf_sockopt.c", i32 120, i32 1}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/netfilter/nf_sockopt.c", i32 15, i32 8}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nf_sockopt_mutex, !15, !"nf_sockopt_mutex", i1 false, i1 false}
!18 = !{ptr @nf_sockopts, !19, !"nf_sockopts", i1 false, i1 false}
!19 = !{!"../net/netfilter/nf_sockopt.c", i32 16, i32 8}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 2148692444, i64 2148692449, i64 2148692462, i64 2148692506, i64 2148692540, i64 2148692561}
