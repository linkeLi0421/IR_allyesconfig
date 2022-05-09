; ModuleID = '/llk/IR_all_yes/kernel/kallsyms.c_pt.bc'
source_filename = "../kernel/kallsyms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sprint_symbol\22, \22a\22\09"
module asm "\09.weak\09__crc_sprint_symbol\09\09\09\09"
module asm "\09.long\09__crc_sprint_symbol\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sprint_symbol:\09\09\09\09\09"
module asm "\09.asciz \09\22sprint_symbol\22\09\09\09\09\09"
module asm "__kstrtabns_sprint_symbol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sprint_symbol_build_id\22, \22a\22\09"
module asm "\09.weak\09__crc_sprint_symbol_build_id\09\09\09\09"
module asm "\09.long\09__crc_sprint_symbol_build_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sprint_symbol_build_id:\09\09\09\09\09"
module asm "\09.asciz \09\22sprint_symbol_build_id\22\09\09\09\09\09"
module asm "__kstrtabns_sprint_symbol_build_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sprint_symbol_no_offset\22, \22a\22\09"
module asm "\09.weak\09__crc_sprint_symbol_no_offset\09\09\09\09"
module asm "\09.long\09__crc_sprint_symbol_no_offset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sprint_symbol_no_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22sprint_symbol_no_offset\22\09\09\09\09\09"
module asm "__kstrtabns_sprint_symbol_no_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.8 }
%union.anon.8 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.10, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.kallsym_iter = type { i64, i64, i64, i64, i64, i32, i32, i8, [128 x i8], [60 x i8], i32, i32 }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.32, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.32 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@kallsyms_num_syms = extern_weak dso_local local_unnamed_addr constant i32, section ".rodata", align 4
@__kstrtab_sprint_symbol = external dso_local constant [0 x i8], align 1
@__kstrtabns_sprint_symbol = external dso_local constant [0 x i8], align 1
@__ksymtab_sprint_symbol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sprint_symbol to i32), ptr @__kstrtab_sprint_symbol, ptr @__kstrtabns_sprint_symbol }, section "___ksymtab_gpl+sprint_symbol", align 4
@__kstrtab_sprint_symbol_build_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_sprint_symbol_build_id = external dso_local constant [0 x i8], align 1
@__ksymtab_sprint_symbol_build_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sprint_symbol_build_id to i32), ptr @__kstrtab_sprint_symbol_build_id, ptr @__kstrtabns_sprint_symbol_build_id }, section "___ksymtab_gpl+sprint_symbol_build_id", align 4
@__kstrtab_sprint_symbol_no_offset = external dso_local constant [0 x i8], align 1
@__kstrtabns_sprint_symbol_no_offset = external dso_local constant [0 x i8], align 1
@__ksymtab_sprint_symbol_no_offset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sprint_symbol_no_offset to i32), ptr @__kstrtab_sprint_symbol_no_offset, ptr @__kstrtabns_sprint_symbol_no_offset }, section "___ksymtab_gpl+sprint_symbol_no_offset", align 4
@kptr_restrict = external dso_local local_unnamed_addr global i32, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@kdb_walk_kallsyms.kdb_walk_kallsyms_iter = internal global { %struct.kallsym_iter, [40 x i8] } zeroinitializer, align 32
@__initcall__kmod_kallsyms__404_887_kallsyms_init6 = internal global ptr @kallsyms_init, section ".initcall6.init", align 4
@kallsyms_names = extern_weak dso_local constant [0 x i8], align 1
@kallsyms_token_table = extern_weak dso_local local_unnamed_addr constant [0 x i8], align 1
@kallsyms_token_index = extern_weak dso_local local_unnamed_addr constant [0 x i16], align 2
@kallsyms_relative_base = extern_weak dso_local local_unnamed_addr constant i32, section ".rodata", align 4
@kallsyms_offsets = extern_weak dso_local constant [0 x i32], align 4
@_stext = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@__init_begin = external dso_local global [0 x i8], align 1
@__init_end = external dso_local global [0 x i8], align 1
@_einittext = external dso_local global [0 x i8], align 1
@_sinittext = external dso_local global [0 x i8], align 1
@kallsyms_markers = extern_weak dso_local local_unnamed_addr constant [0 x i32], align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%lx\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"+%#lx/%#lx\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" [%s\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" %20phN\00", [24 x i8] zeroinitializer }, align 32
@sysctl_perf_event_paranoid = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bpf\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__builtin__kprobes\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"kallsyms\00", [23 x i8] zeroinitializer }, align 32
@kallsyms_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @kallsyms_open, ptr @seq_read, ptr null, ptr null, ptr @seq_lseek, ptr @seq_release_private, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@kallsyms_op = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @s_start, ptr @s_stop, ptr @s_next, ptr @s_show }, [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%px %c %s\09[%s]\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%px %c %s\0A\00", [21 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.11 = private unnamed_addr constant [23 x i8] c"kdb_walk_kallsyms_iter\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 858, i32 29 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 454, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 462, i32 32 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 465, i32 32 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 472, i32 33 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 644, i32 29 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 664, i32 29 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 884, i32 14 }
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"kallsyms_proc_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 875, i32 30 }
@___asan_gen_.38 = private unnamed_addr constant [12 x i8] c"kallsyms_op\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 792, i32 36 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 784, i32 17 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [21 x i8] c"../kernel/kallsyms.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 787, i32 17 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__initcall__kmod_kallsyms__404_887_kallsyms_init6, ptr @__ksymtab_sprint_symbol, ptr @__ksymtab_sprint_symbol_build_id, ptr @__ksymtab_sprint_symbol_no_offset, ptr @kdb_walk_kallsyms.kdb_walk_kallsyms_iter, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @kallsyms_proc_ops, ptr @kallsyms_op, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_walk_kallsyms.kdb_walk_kallsyms_iter to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kallsyms_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kallsyms_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kallsyms_lookup_name(ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %namebuf = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %namebuf) #9
  %0 = call ptr @memset(ptr %namebuf, i32 255, i32 128)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kallsyms_num_syms to i32))
  %1 = load i32, ptr @kallsyms_num_syms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp27.not = icmp eq i32 %1, 0
  br i1 %cmp27.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %off.029 = phi i32 [ %add1.i, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.028 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx.i = getelementptr [0 x i8], ptr @kallsyms_names, i32 0, i32 %off.029
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not15.i = icmp eq i8 %3, 0
  br i1 %tobool.not15.i, label %for.body.if.then18.i_crit_edge, label %for.body.while.body.i_crit_edge

for.body.while.body.i_crit_edge:                  ; preds = %for.body
  br label %while.body.i

for.body.if.then18.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18.i

while.cond.loopexit.i:                            ; preds = %if.end14.i.while.cond.loopexit.i_crit_edge, %while.body.i.while.cond.loopexit.i_crit_edge
  %result.addr.1.lcssa.i = phi ptr [ %result.addr.016.i, %while.body.i.while.cond.loopexit.i_crit_edge ], [ %result.addr.2.i, %if.end14.i.while.cond.loopexit.i_crit_edge ]
  %maxlen.addr.1.lcssa.i = phi i32 [ %maxlen.addr.017.i, %while.body.i.while.cond.loopexit.i_crit_edge ], [ %maxlen.addr.2.i, %if.end14.i.while.cond.loopexit.i_crit_edge ]
  %skipped_first.1.lcssa.i = phi i32 [ %skipped_first.019.i, %while.body.i.while.cond.loopexit.i_crit_edge ], [ 1, %if.end14.i.while.cond.loopexit.i_crit_edge ]
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.cond.loopexit.i.tail.i_crit_edge, label %while.cond.loopexit.i.while.body.i_crit_edge

while.cond.loopexit.i.while.body.i_crit_edge:     ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.cond.loopexit.i.tail.i_crit_edge:           ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tail.i

while.body.i:                                     ; preds = %while.cond.loopexit.i.while.body.i_crit_edge, %for.body.while.body.i_crit_edge
  %data.020.pn.i = phi ptr [ %data.020.i, %while.cond.loopexit.i.while.body.i_crit_edge ], [ %arrayidx.i, %for.body.while.body.i_crit_edge ]
  %skipped_first.019.i = phi i32 [ %skipped_first.1.lcssa.i, %while.cond.loopexit.i.while.body.i_crit_edge ], [ 0, %for.body.while.body.i_crit_edge ]
  %len.018.i = phi i32 [ %dec.i, %while.cond.loopexit.i.while.body.i_crit_edge ], [ %conv.i, %for.body.while.body.i_crit_edge ]
  %maxlen.addr.017.i = phi i32 [ %maxlen.addr.1.lcssa.i, %while.cond.loopexit.i.while.body.i_crit_edge ], [ 128, %for.body.while.body.i_crit_edge ]
  %result.addr.016.i = phi ptr [ %result.addr.1.lcssa.i, %while.cond.loopexit.i.while.body.i_crit_edge ], [ %namebuf, %for.body.while.body.i_crit_edge ]
  %data.020.i = getelementptr i8, ptr %data.020.pn.i, i32 1
  %4 = ptrtoint ptr %data.020.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data.020.i, align 1
  %idxprom.i = zext i8 %5 to i32
  %arrayidx2.i = getelementptr [0 x i16], ptr @kallsyms_token_index, i32 0, i32 %idxprom.i
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx2.i, align 2
  %idxprom3.i = zext i16 %7 to i32
  %arrayidx4.i = getelementptr [0 x i8], ptr @kallsyms_token_table, i32 0, i32 %idxprom3.i
  %dec.i = add nsw i32 %len.018.i, -1
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not7.i = icmp eq i8 %9, 0
  br i1 %tobool7.not7.i, label %while.body.i.while.cond.loopexit.i_crit_edge, label %while.body.i.while.body8.i_crit_edge

while.body.i.while.body8.i_crit_edge:             ; preds = %while.body.i
  br label %while.body8.i

while.body.i.while.cond.loopexit.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit.i

while.body8.i:                                    ; preds = %if.end14.i.while.body8.i_crit_edge, %while.body.i.while.body8.i_crit_edge
  %10 = phi i8 [ %13, %if.end14.i.while.body8.i_crit_edge ], [ %9, %while.body.i.while.body8.i_crit_edge ]
  %tptr.011.i = phi ptr [ %incdec.ptr15.i, %if.end14.i.while.body8.i_crit_edge ], [ %arrayidx4.i, %while.body.i.while.body8.i_crit_edge ]
  %skipped_first.110.i = phi i32 [ 1, %if.end14.i.while.body8.i_crit_edge ], [ %skipped_first.019.i, %while.body.i.while.body8.i_crit_edge ]
  %maxlen.addr.19.i = phi i32 [ %maxlen.addr.2.i, %if.end14.i.while.body8.i_crit_edge ], [ %maxlen.addr.017.i, %while.body.i.while.body8.i_crit_edge ]
  %result.addr.18.i = phi ptr [ %result.addr.2.i, %if.end14.i.while.body8.i_crit_edge ], [ %result.addr.016.i, %while.body.i.while.body8.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skipped_first.110.i)
  %tobool9.not.i = icmp eq i32 %skipped_first.110.i, 0
  br i1 %tobool9.not.i, label %while.body8.i.if.end14.i_crit_edge, label %if.then.i

while.body8.i.if.end14.i_crit_edge:               ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then.i:                                        ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %maxlen.addr.19.i)
  %cmp.i = icmp ult i32 %maxlen.addr.19.i, 2
  br i1 %cmp.i, label %if.then.i.tail.i_crit_edge, label %if.end.i

if.then.i.tail.i_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tail.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %result.addr.18.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %result.addr.18.i, align 1
  %incdec.ptr12.i = getelementptr i8, ptr %result.addr.18.i, i32 1
  %dec13.i = add i32 %maxlen.addr.19.i, -1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end.i, %while.body8.i.if.end14.i_crit_edge
  %result.addr.2.i = phi ptr [ %incdec.ptr12.i, %if.end.i ], [ %result.addr.18.i, %while.body8.i.if.end14.i_crit_edge ]
  %maxlen.addr.2.i = phi i32 [ %dec13.i, %if.end.i ], [ %maxlen.addr.19.i, %while.body8.i.if.end14.i_crit_edge ]
  %incdec.ptr15.i = getelementptr i8, ptr %tptr.011.i, i32 1
  %12 = ptrtoint ptr %incdec.ptr15.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr15.i, align 1
  %tobool7.not.i = icmp eq i8 %13, 0
  br i1 %tobool7.not.i, label %if.end14.i.while.cond.loopexit.i_crit_edge, label %if.end14.i.while.body8.i_crit_edge

if.end14.i.while.body8.i_crit_edge:               ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body8.i

if.end14.i.while.cond.loopexit.i_crit_edge:       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit.i

tail.i:                                           ; preds = %if.then.i.tail.i_crit_edge, %while.cond.loopexit.i.tail.i_crit_edge
  %result.addr.3.i = phi ptr [ %result.addr.18.i, %if.then.i.tail.i_crit_edge ], [ %result.addr.1.lcssa.i, %while.cond.loopexit.i.tail.i_crit_edge ]
  %maxlen.addr.3.i = phi i32 [ %maxlen.addr.19.i, %if.then.i.tail.i_crit_edge ], [ %maxlen.addr.1.lcssa.i, %while.cond.loopexit.i.tail.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen.addr.3.i)
  %tobool17.not.i = icmp eq i32 %maxlen.addr.3.i, 0
  br i1 %tobool17.not.i, label %tail.i.kallsyms_expand_symbol.exit_crit_edge, label %tail.i.if.then18.i_crit_edge

tail.i.if.then18.i_crit_edge:                     ; preds = %tail.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18.i

tail.i.kallsyms_expand_symbol.exit_crit_edge:     ; preds = %tail.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kallsyms_expand_symbol.exit

if.then18.i:                                      ; preds = %tail.i.if.then18.i_crit_edge, %for.body.if.then18.i_crit_edge
  %result.addr.329.i = phi ptr [ %result.addr.3.i, %tail.i.if.then18.i_crit_edge ], [ %namebuf, %for.body.if.then18.i_crit_edge ]
  %14 = ptrtoint ptr %result.addr.329.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %result.addr.329.i, align 1
  br label %kallsyms_expand_symbol.exit

kallsyms_expand_symbol.exit:                      ; preds = %if.then18.i, %tail.i.kallsyms_expand_symbol.exit_crit_edge
  %call2 = call i32 @strcmp(ptr noundef nonnull %namebuf, ptr noundef %name) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %kallsyms_expand_symbol.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kallsyms_relative_base to i32))
  %15 = load i32, ptr @kallsyms_relative_base, align 4
  %arrayidx.i21 = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %i.028
  %16 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i21, align 4
  %add.i22 = add i32 %17, %15
  br label %cleanup

if.end:                                           ; preds = %kallsyms_expand_symbol.exit
  %add.i = add i32 %off.029, 1
  %add1.i = add i32 %add.i, %conv.i
  %inc = add nuw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %call13 = tail call i32 @module_kallsyms_lookup_name(ptr noundef %name) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ %add.i22, %if.then ], [ %call13, %for.end ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %namebuf) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @module_kallsyms_lookup_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kallsyms_lookup_size_offset(i32 noundef %addr, ptr noundef %symbolsize, ptr noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  %namebuf = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %namebuf) #9
  %0 = call ptr @memset(ptr %namebuf, i32 255, i32 128)
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @_stext to i32))
  %cmp.not.i.i.i = icmp uge i32 %addr, ptrtoint (ptr @_stext to i32)
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @_end to i32))
  %cmp1.i.i.i = icmp ult i32 %addr, ptrtoint (ptr @_end to i32)
  %or.cond.i.i.i = and i1 %cmp.not.i.i.i, %cmp1.i.i.i
  br i1 %or.cond.i.i.i, label %entry.if.then_crit_edge, label %__is_kernel.exit.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

__is_kernel.exit.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @__init_begin to i32))
  %cmp2.not.i.i.i = icmp uge i32 %addr, ptrtoint (ptr @__init_begin to i32)
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @__init_end to i32))
  %cmp3.i.i.i = icmp ult i32 %addr, ptrtoint (ptr @__init_end to i32)
  %spec.select.i.i.i = and i1 %cmp2.not.i.i.i, %cmp3.i.i.i
  br i1 %spec.select.i.i.i, label %__is_kernel.exit.i.i.if.then_crit_edge, label %is_ksym_addr.exit

__is_kernel.exit.i.i.if.then_crit_edge:           ; preds = %__is_kernel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

is_ksym_addr.exit:                                ; preds = %__is_kernel.exit.i.i
  %call1.i.i = tail call i32 @in_gate_area_no_mm(i32 noundef %addr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not, label %if.end, label %is_ksym_addr.exit.if.then_crit_edge

is_ksym_addr.exit.if.then_crit_edge:              ; preds = %is_ksym_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %is_ksym_addr.exit.if.then_crit_edge, %__is_kernel.exit.i.i.if.then_crit_edge, %entry.if.then_crit_edge
  br i1 icmp eq (ptr @kallsyms_offsets, ptr null), label %do.body1.i, label %do.end6.i, !prof !43

do.body1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/kallsyms.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 263, 0\0A.popsection", ""() #9, !srcloc !44
  unreachable

do.end6.i:                                        ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kallsyms_num_syms to i32))
  %1 = load i32, ptr @kallsyms_num_syms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp77.i = icmp ugt i32 %1, 1
  br i1 %cmp77.i, label %while.body.lr.ph.i, label %do.end6.i.while.cond11.i.preheader_crit_edge

do.end6.i.while.cond11.i.preheader_crit_edge:     ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond11.i.preheader

while.body.lr.ph.i:                               ; preds = %do.end6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kallsyms_relative_base to i32))
  %2 = load i32, ptr @kallsyms_relative_base, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %sub80.i = phi i32 [ %1, %while.body.lr.ph.i ], [ %sub.i, %while.body.i.while.body.i_crit_edge ]
  %high.079.i = phi i32 [ %1, %while.body.lr.ph.i ], [ %add.high.0.i, %while.body.i.while.body.i_crit_edge ]
  %low.078.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %low.0.add.i, %while.body.i.while.body.i_crit_edge ]
  %div64.i = lshr i32 %sub80.i, 1
  %add.i = add i32 %low.078.i, %div64.i
  %arrayidx.i.i = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %add.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %4, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %addr)
  %cmp8.not.i = icmp ugt i32 %add.i.i, %addr
  %low.0.add.i = select i1 %cmp8.not.i, i32 %low.078.i, i32 %add.i
  %add.high.0.i = select i1 %cmp8.not.i, i32 %add.i, i32 %high.079.i
  %sub.i = sub i32 %add.high.0.i, %low.0.add.i
  %cmp.i = icmp ugt i32 %sub.i, 1
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.cond11.i.preheader_crit_edge

while.body.i.while.cond11.i.preheader_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond11.i.preheader

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.cond11.i.preheader:                         ; preds = %while.body.i.while.cond11.i.preheader_crit_edge, %do.end6.i.while.cond11.i.preheader_crit_edge
  %low.2.i.ph = phi i32 [ 0, %do.end6.i.while.cond11.i.preheader_crit_edge ], [ %low.0.add.i, %while.body.i.while.cond11.i.preheader_crit_edge ]
  br label %while.cond11.i

while.cond11.i:                                   ; preds = %land.rhs.i.while.cond11.i_crit_edge, %while.cond11.i.preheader
  %low.2.i = phi i32 [ %sub13.i, %land.rhs.i.while.cond11.i_crit_edge ], [ %low.2.i.ph, %while.cond11.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %low.2.i)
  %tobool12.not.i = icmp eq i32 %low.2.i, 0
  br i1 %tobool12.not.i, label %while.cond11.i.while.end18.i_crit_edge, label %land.rhs.i

while.cond11.i.while.end18.i_crit_edge:           ; preds = %while.cond11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end18.i

land.rhs.i:                                       ; preds = %while.cond11.i
  %sub13.i = add i32 %low.2.i, -1
  %arrayidx.i65.i = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %sub13.i
  %5 = ptrtoint ptr %arrayidx.i65.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i65.i, align 4
  %arrayidx.i67.i = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %low.2.i
  %7 = ptrtoint ptr %arrayidx.i67.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i67.i, align 4
  %cmp16.i = icmp eq i32 %6, %8
  br i1 %cmp16.i, label %land.rhs.i.while.cond11.i_crit_edge, label %land.rhs.i.while.end18.i_crit_edge

land.rhs.i.while.end18.i_crit_edge:               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end18.i

land.rhs.i.while.cond11.i_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond11.i

while.end18.i:                                    ; preds = %land.rhs.i.while.end18.i_crit_edge, %while.cond11.i.while.end18.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kallsyms_relative_base to i32))
  %9 = load i32, ptr @kallsyms_relative_base, align 4
  %arrayidx.i69.i = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %low.2.i
  %10 = ptrtoint ptr %arrayidx.i69.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i69.i, align 4
  %add.i70.i = add i32 %11, %9
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %while.end18.i
  %i.0.in.i = phi i32 [ %low.2.i, %while.end18.i ], [ %i.0.i, %for.body.i.for.cond.i_crit_edge ]
  %i.0.i = add i32 %i.0.in.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %1)
  %cmp21.i = icmp ult i32 %i.0.i, %1
  br i1 %cmp21.i, label %for.body.i, label %if.then28.i

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i71.i = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %i.0.i
  %12 = ptrtoint ptr %arrayidx.i71.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i71.i, align 4
  %add.i72.i = add i32 %13, %9
  %cmp23.i = icmp ugt i32 %add.i72.i, %add.i70.i
  br i1 %cmp23.i, label %for.body.i.if.end33.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.body.i.if.end33.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.then28.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @_sinittext to i32))
  %cmp.not.i.i = icmp uge i32 %addr, ptrtoint (ptr @_sinittext to i32)
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @_einittext to i32))
  %cmp1.i.i = icmp ult i32 %addr, ptrtoint (ptr @_einittext to i32)
  %spec.select.i.i = and i1 %cmp.not.i.i, %cmp1.i.i
  %..i = select i1 %spec.select.i.i, i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_end to i32)
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then28.i, %for.body.i.if.end33.i_crit_edge
  %symbol_end.1.i = phi i32 [ %..i, %if.then28.i ], [ %add.i72.i, %for.body.i.if.end33.i_crit_edge ]
  %tobool34.not.i = icmp eq ptr %symbolsize, null
  br i1 %tobool34.not.i, label %if.end33.i.if.end37.i_crit_edge, label %if.then35.i

if.end33.i.if.end37.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

if.then35.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub36.i = sub i32 %symbol_end.1.i, %add.i70.i
  %14 = ptrtoint ptr %symbolsize to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub36.i, ptr %symbolsize, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then35.i, %if.end33.i.if.end37.i_crit_edge
  %tobool38.not.i = icmp eq ptr %offset, null
  br i1 %tobool38.not.i, label %if.end37.i.cleanup_crit_edge, label %if.then39.i

if.end37.i.cleanup_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then39.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub40.i = sub i32 %addr, %add.i70.i
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub40.i, ptr %offset, align 4
  br label %cleanup

if.end:                                           ; preds = %is_ksym_addr.exit
  %call2 = call ptr @module_address_lookup(i32 noundef %addr, ptr noundef %symbolsize, ptr noundef %offset, ptr noundef null, ptr noundef null, ptr noundef nonnull %namebuf) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %lor.rhs, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.rhs:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = call ptr @__bpf_address_lookup(i32 noundef %addr, ptr noundef %symbolsize, ptr noundef %offset, ptr noundef nonnull %namebuf) #9
  %tobool6 = icmp ne ptr %call5, null
  %phi.cast = zext i1 %tobool6 to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs, %if.end.cleanup_crit_edge, %if.then39.i, %if.end37.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end.cleanup_crit_edge ], [ %phi.cast, %lor.rhs ], [ 1, %if.end37.i.cleanup_crit_edge ], [ 1, %if.then39.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %namebuf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @module_address_lookup(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bpf_address_lookup(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kallsyms_lookup(i32 noundef %addr, ptr noundef %symbolsize, ptr noundef %offset, ptr noundef %modname, ptr noundef %namebuf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @kallsyms_lookup_buildid(i32 noundef %addr, ptr noundef %symbolsize, ptr noundef %offset, ptr noundef %modname, ptr noundef null, ptr noundef %namebuf)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @kallsyms_lookup_buildid(i32 noundef %addr, ptr noundef %symbolsize, ptr noundef %offset, ptr noundef %modname, ptr noundef %modbuildid, ptr noundef %namebuf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %namebuf, i32 127
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %arrayidx, align 1
  %1 = ptrtoint ptr %namebuf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %namebuf, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @_stext to i32))
  %cmp.not.i.i.i = icmp uge i32 %addr, ptrtoint (ptr @_stext to i32)
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @_end to i32))
  %cmp1.i.i.i = icmp ult i32 %addr, ptrtoint (ptr @_end to i32)
  %or.cond.i.i.i = and i1 %cmp.not.i.i.i, %cmp1.i.i.i
  br i1 %or.cond.i.i.i, label %entry.if.then_crit_edge, label %__is_kernel.exit.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

__is_kernel.exit.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @__init_begin to i32))
  %cmp2.not.i.i.i = icmp uge i32 %addr, ptrtoint (ptr @__init_begin to i32)
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @__init_end to i32))
  %cmp3.i.i.i = icmp ult i32 %addr, ptrtoint (ptr @__init_end to i32)
  %spec.select.i.i.i = and i1 %cmp2.not.i.i.i, %cmp3.i.i.i
  br i1 %spec.select.i.i.i, label %__is_kernel.exit.i.i.if.then_crit_edge, label %is_ksym_addr.exit

__is_kernel.exit.i.i.if.then_crit_edge:           ; preds = %__is_kernel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

is_ksym_addr.exit:                                ; preds = %__is_kernel.exit.i.i
  %call1.i.i = tail call i32 @in_gate_area_no_mm(i32 noundef %addr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not, label %if.end10, label %is_ksym_addr.exit.if.then_crit_edge

is_ksym_addr.exit.if.then_crit_edge:              ; preds = %is_ksym_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %is_ksym_addr.exit.if.then_crit_edge, %__is_kernel.exit.i.i.if.then_crit_edge, %entry.if.then_crit_edge
  br i1 icmp eq (ptr @kallsyms_offsets, ptr null), label %do.body1.i, label %do.end6.i, !prof !43

do.body1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/kallsyms.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 263, 0\0A.popsection", ""() #9, !srcloc !44
  unreachable

do.end6.i:                                        ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kallsyms_num_syms to i32))
  %2 = load i32, ptr @kallsyms_num_syms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp77.i = icmp ugt i32 %2, 1
  br i1 %cmp77.i, label %while.body.lr.ph.i, label %do.end6.i.while.cond11.i.preheader_crit_edge

do.end6.i.while.cond11.i.preheader_crit_edge:     ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond11.i.preheader

while.body.lr.ph.i:                               ; preds = %do.end6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kallsyms_relative_base to i32))
  %3 = load i32, ptr @kallsyms_relative_base, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %sub80.i = phi i32 [ %2, %while.body.lr.ph.i ], [ %sub.i, %while.body.i.while.body.i_crit_edge ]
  %high.079.i = phi i32 [ %2, %while.body.lr.ph.i ], [ %add.high.0.i, %while.body.i.while.body.i_crit_edge ]
  %low.078.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %low.0.add.i, %while.body.i.while.body.i_crit_edge ]
  %div64.i = lshr i32 %sub80.i, 1
  %add.i = add i32 %low.078.i, %div64.i
  %arrayidx.i.i = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %add.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %5, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %addr)
  %cmp8.not.i = icmp ugt i32 %add.i.i, %addr
  %low.0.add.i = select i1 %cmp8.not.i, i32 %low.078.i, i32 %add.i
  %add.high.0.i = select i1 %cmp8.not.i, i32 %add.i, i32 %high.079.i
  %sub.i = sub i32 %add.high.0.i, %low.0.add.i
  %cmp.i = icmp ugt i32 %sub.i, 1
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.cond11.i.preheader_crit_edge

while.body.i.while.cond11.i.preheader_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond11.i.preheader

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.cond11.i.preheader:                         ; preds = %while.body.i.while.cond11.i.preheader_crit_edge, %do.end6.i.while.cond11.i.preheader_crit_edge
  %low.2.i.ph = phi i32 [ 0, %do.end6.i.while.cond11.i.preheader_crit_edge ], [ %low.0.add.i, %while.body.i.while.cond11.i.preheader_crit_edge ]
  br label %while.cond11.i

while.cond11.i:                                   ; preds = %land.rhs.i.while.cond11.i_crit_edge, %while.cond11.i.preheader
  %low.2.i = phi i32 [ %sub13.i, %land.rhs.i.while.cond11.i_crit_edge ], [ %low.2.i.ph, %while.cond11.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %low.2.i)
  %tobool12.not.i = icmp eq i32 %low.2.i, 0
  br i1 %tobool12.not.i, label %while.cond11.i.while.end18.i_crit_edge, label %land.rhs.i

while.cond11.i.while.end18.i_crit_edge:           ; preds = %while.cond11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end18.i

land.rhs.i:                                       ; preds = %while.cond11.i
  %sub13.i = add i32 %low.2.i, -1
  %arrayidx.i65.i = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %sub13.i
  %6 = ptrtoint ptr %arrayidx.i65.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i65.i, align 4
  %arrayidx.i67.i = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %low.2.i
  %8 = ptrtoint ptr %arrayidx.i67.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i67.i, align 4
  %cmp16.i = icmp eq i32 %7, %9
  br i1 %cmp16.i, label %land.rhs.i.while.cond11.i_crit_edge, label %land.rhs.i.while.end18.i_crit_edge

land.rhs.i.while.end18.i_crit_edge:               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end18.i

land.rhs.i.while.cond11.i_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond11.i

while.end18.i:                                    ; preds = %land.rhs.i.while.end18.i_crit_edge, %while.cond11.i.while.end18.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kallsyms_relative_base to i32))
  %10 = load i32, ptr @kallsyms_relative_base, align 4
  %arrayidx.i69.i = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %low.2.i
  %11 = ptrtoint ptr %arrayidx.i69.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i69.i, align 4
  %add.i70.i = add i32 %12, %10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %while.end18.i
  %i.0.in.i = phi i32 [ %low.2.i, %while.end18.i ], [ %i.0.i, %for.body.i.for.cond.i_crit_edge ]
  %i.0.i = add i32 %i.0.in.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %2)
  %cmp21.i = icmp ult i32 %i.0.i, %2
  br i1 %cmp21.i, label %for.body.i, label %if.then28.i

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i71.i = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %i.0.i
  %13 = ptrtoint ptr %arrayidx.i71.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i71.i, align 4
  %add.i72.i = add i32 %14, %10
  %cmp23.i = icmp ugt i32 %add.i72.i, %add.i70.i
  br i1 %cmp23.i, label %for.body.i.if.end33.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.body.i.if.end33.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.then28.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @_sinittext to i32))
  %cmp.not.i.i = icmp uge i32 %addr, ptrtoint (ptr @_sinittext to i32)
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @_einittext to i32))
  %cmp1.i.i = icmp ult i32 %addr, ptrtoint (ptr @_einittext to i32)
  %spec.select.i.i = and i1 %cmp.not.i.i, %cmp1.i.i
  %..i = select i1 %spec.select.i.i, i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_end to i32)
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then28.i, %for.body.i.if.end33.i_crit_edge
  %symbol_end.1.i = phi i32 [ %..i, %if.then28.i ], [ %add.i72.i, %for.body.i.if.end33.i_crit_edge ]
  %tobool34.not.i = icmp eq ptr %symbolsize, null
  br i1 %tobool34.not.i, label %if.end33.i.if.end37.i_crit_edge, label %if.then35.i

if.end33.i.if.end37.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

if.then35.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub36.i = sub i32 %symbol_end.1.i, %add.i70.i
  %15 = ptrtoint ptr %symbolsize to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub36.i, ptr %symbolsize, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then35.i, %if.end33.i.if.end37.i_crit_edge
  %tobool38.not.i = icmp eq ptr %offset, null
  br i1 %tobool38.not.i, label %if.end37.i.get_symbol_pos.exit_crit_edge, label %if.then39.i

if.end37.i.get_symbol_pos.exit_crit_edge:         ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_symbol_pos.exit

if.then39.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub40.i = sub i32 %addr, %add.i70.i
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub40.i, ptr %offset, align 4
  br label %get_symbol_pos.exit

get_symbol_pos.exit:                              ; preds = %if.then39.i, %if.end37.i.get_symbol_pos.exit_crit_edge
  %shr.i = lshr i32 %low.2.i, 8
  %arrayidx.i = getelementptr [0 x i32], ptr @kallsyms_markers, i32 0, i32 %shr.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [0 x i8], ptr @kallsyms_names, i32 0, i32 %18
  %and.i = and i32 %low.2.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp7.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp7.not.i, label %get_symbol_pos.exit.get_symbol_offset.exit_crit_edge, label %get_symbol_pos.exit.for.body.i46_crit_edge

get_symbol_pos.exit.for.body.i46_crit_edge:       ; preds = %get_symbol_pos.exit
  br label %for.body.i46

get_symbol_pos.exit.get_symbol_offset.exit_crit_edge: ; preds = %get_symbol_pos.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_symbol_offset.exit

for.body.i46:                                     ; preds = %for.body.i46.for.body.i46_crit_edge, %get_symbol_pos.exit.for.body.i46_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i46.for.body.i46_crit_edge ], [ 0, %get_symbol_pos.exit.for.body.i46_crit_edge ]
  %name.08.i = phi ptr [ %add.ptr2.i, %for.body.i46.for.body.i46_crit_edge ], [ %arrayidx1.i, %get_symbol_pos.exit.for.body.i46_crit_edge ]
  %19 = ptrtoint ptr %name.08.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %name.08.i, align 1
  %conv.i = zext i8 %20 to i32
  %add.ptr.i = getelementptr i8, ptr %name.08.i, i32 1
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %and.i
  br i1 %exitcond.not.i, label %for.body.i46.get_symbol_offset.exit_crit_edge, label %for.body.i46.for.body.i46_crit_edge

for.body.i46.for.body.i46_crit_edge:              ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i46

for.body.i46.get_symbol_offset.exit_crit_edge:    ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_symbol_offset.exit

get_symbol_offset.exit:                           ; preds = %for.body.i46.get_symbol_offset.exit_crit_edge, %get_symbol_pos.exit.get_symbol_offset.exit_crit_edge
  %name.0.lcssa.i = phi ptr [ %arrayidx1.i, %get_symbol_pos.exit.get_symbol_offset.exit_crit_edge ], [ %add.ptr2.i, %for.body.i46.get_symbol_offset.exit_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %name.0.lcssa.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, ptrtoint (ptr @kallsyms_names to i32)
  %arrayidx.i47 = getelementptr [0 x i8], ptr @kallsyms_names, i32 0, i32 %sub.ptr.sub.i
  %21 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not15.i = icmp eq i8 %22, 0
  br i1 %tobool.not15.i, label %get_symbol_offset.exit.if.then18.i_crit_edge, label %while.body.i49.preheader

get_symbol_offset.exit.if.then18.i_crit_edge:     ; preds = %get_symbol_offset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18.i

while.body.i49.preheader:                         ; preds = %get_symbol_offset.exit
  %conv.i48 = zext i8 %22 to i32
  br label %while.body.i49

while.cond.loopexit.i:                            ; preds = %if.end14.i.while.cond.loopexit.i_crit_edge, %while.body.i49.while.cond.loopexit.i_crit_edge
  %result.addr.1.lcssa.i = phi ptr [ %result.addr.016.i, %while.body.i49.while.cond.loopexit.i_crit_edge ], [ %result.addr.2.i, %if.end14.i.while.cond.loopexit.i_crit_edge ]
  %maxlen.addr.1.lcssa.i = phi i32 [ %maxlen.addr.017.i, %while.body.i49.while.cond.loopexit.i_crit_edge ], [ %maxlen.addr.2.i, %if.end14.i.while.cond.loopexit.i_crit_edge ]
  %skipped_first.1.lcssa.i = phi i32 [ %skipped_first.019.i, %while.body.i49.while.cond.loopexit.i_crit_edge ], [ 1, %if.end14.i.while.cond.loopexit.i_crit_edge ]
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.cond.loopexit.i.tail.i_crit_edge, label %while.cond.loopexit.i.while.body.i49_crit_edge

while.cond.loopexit.i.while.body.i49_crit_edge:   ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i49

while.cond.loopexit.i.tail.i_crit_edge:           ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tail.i

while.body.i49:                                   ; preds = %while.cond.loopexit.i.while.body.i49_crit_edge, %while.body.i49.preheader
  %data.020.pn.i = phi ptr [ %data.020.i, %while.cond.loopexit.i.while.body.i49_crit_edge ], [ %arrayidx.i47, %while.body.i49.preheader ]
  %skipped_first.019.i = phi i32 [ %skipped_first.1.lcssa.i, %while.cond.loopexit.i.while.body.i49_crit_edge ], [ 0, %while.body.i49.preheader ]
  %len.018.i = phi i32 [ %dec.i, %while.cond.loopexit.i.while.body.i49_crit_edge ], [ %conv.i48, %while.body.i49.preheader ]
  %maxlen.addr.017.i = phi i32 [ %maxlen.addr.1.lcssa.i, %while.cond.loopexit.i.while.body.i49_crit_edge ], [ 128, %while.body.i49.preheader ]
  %result.addr.016.i = phi ptr [ %result.addr.1.lcssa.i, %while.cond.loopexit.i.while.body.i49_crit_edge ], [ %namebuf, %while.body.i49.preheader ]
  %data.020.i = getelementptr i8, ptr %data.020.pn.i, i32 1
  %23 = ptrtoint ptr %data.020.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data.020.i, align 1
  %idxprom.i = zext i8 %24 to i32
  %arrayidx2.i = getelementptr [0 x i16], ptr @kallsyms_token_index, i32 0, i32 %idxprom.i
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx2.i, align 2
  %idxprom3.i = zext i16 %26 to i32
  %arrayidx4.i = getelementptr [0 x i8], ptr @kallsyms_token_table, i32 0, i32 %idxprom3.i
  %dec.i = add nsw i32 %len.018.i, -1
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool7.not7.i = icmp eq i8 %28, 0
  br i1 %tobool7.not7.i, label %while.body.i49.while.cond.loopexit.i_crit_edge, label %while.body.i49.while.body8.i_crit_edge

while.body.i49.while.body8.i_crit_edge:           ; preds = %while.body.i49
  br label %while.body8.i

while.body.i49.while.cond.loopexit.i_crit_edge:   ; preds = %while.body.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit.i

while.body8.i:                                    ; preds = %if.end14.i.while.body8.i_crit_edge, %while.body.i49.while.body8.i_crit_edge
  %29 = phi i8 [ %32, %if.end14.i.while.body8.i_crit_edge ], [ %28, %while.body.i49.while.body8.i_crit_edge ]
  %tptr.011.i = phi ptr [ %incdec.ptr15.i, %if.end14.i.while.body8.i_crit_edge ], [ %arrayidx4.i, %while.body.i49.while.body8.i_crit_edge ]
  %skipped_first.110.i = phi i32 [ 1, %if.end14.i.while.body8.i_crit_edge ], [ %skipped_first.019.i, %while.body.i49.while.body8.i_crit_edge ]
  %maxlen.addr.19.i = phi i32 [ %maxlen.addr.2.i, %if.end14.i.while.body8.i_crit_edge ], [ %maxlen.addr.017.i, %while.body.i49.while.body8.i_crit_edge ]
  %result.addr.18.i = phi ptr [ %result.addr.2.i, %if.end14.i.while.body8.i_crit_edge ], [ %result.addr.016.i, %while.body.i49.while.body8.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skipped_first.110.i)
  %tobool9.not.i = icmp eq i32 %skipped_first.110.i, 0
  br i1 %tobool9.not.i, label %while.body8.i.if.end14.i_crit_edge, label %if.then.i

while.body8.i.if.end14.i_crit_edge:               ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then.i:                                        ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %maxlen.addr.19.i)
  %cmp.i50 = icmp ult i32 %maxlen.addr.19.i, 2
  br i1 %cmp.i50, label %if.then.i.tail.i_crit_edge, label %if.end.i

if.then.i.tail.i_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tail.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %result.addr.18.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %result.addr.18.i, align 1
  %incdec.ptr12.i = getelementptr i8, ptr %result.addr.18.i, i32 1
  %dec13.i = add i32 %maxlen.addr.19.i, -1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end.i, %while.body8.i.if.end14.i_crit_edge
  %result.addr.2.i = phi ptr [ %incdec.ptr12.i, %if.end.i ], [ %result.addr.18.i, %while.body8.i.if.end14.i_crit_edge ]
  %maxlen.addr.2.i = phi i32 [ %dec13.i, %if.end.i ], [ %maxlen.addr.19.i, %while.body8.i.if.end14.i_crit_edge ]
  %incdec.ptr15.i = getelementptr i8, ptr %tptr.011.i, i32 1
  %31 = ptrtoint ptr %incdec.ptr15.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %incdec.ptr15.i, align 1
  %tobool7.not.i = icmp eq i8 %32, 0
  br i1 %tobool7.not.i, label %if.end14.i.while.cond.loopexit.i_crit_edge, label %if.end14.i.while.body8.i_crit_edge

if.end14.i.while.body8.i_crit_edge:               ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body8.i

if.end14.i.while.cond.loopexit.i_crit_edge:       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit.i

tail.i:                                           ; preds = %if.then.i.tail.i_crit_edge, %while.cond.loopexit.i.tail.i_crit_edge
  %result.addr.3.i = phi ptr [ %result.addr.18.i, %if.then.i.tail.i_crit_edge ], [ %result.addr.1.lcssa.i, %while.cond.loopexit.i.tail.i_crit_edge ]
  %maxlen.addr.3.i = phi i32 [ %maxlen.addr.19.i, %if.then.i.tail.i_crit_edge ], [ %maxlen.addr.1.lcssa.i, %while.cond.loopexit.i.tail.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen.addr.3.i)
  %tobool17.not.i = icmp eq i32 %maxlen.addr.3.i, 0
  br i1 %tobool17.not.i, label %tail.i.kallsyms_expand_symbol.exit_crit_edge, label %tail.i.if.then18.i_crit_edge

tail.i.if.then18.i_crit_edge:                     ; preds = %tail.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18.i

tail.i.kallsyms_expand_symbol.exit_crit_edge:     ; preds = %tail.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kallsyms_expand_symbol.exit

if.then18.i:                                      ; preds = %tail.i.if.then18.i_crit_edge, %get_symbol_offset.exit.if.then18.i_crit_edge
  %result.addr.329.i = phi ptr [ %result.addr.3.i, %tail.i.if.then18.i_crit_edge ], [ %namebuf, %get_symbol_offset.exit.if.then18.i_crit_edge ]
  %33 = ptrtoint ptr %result.addr.329.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %result.addr.329.i, align 1
  br label %kallsyms_expand_symbol.exit

kallsyms_expand_symbol.exit:                      ; preds = %if.then18.i, %tail.i.kallsyms_expand_symbol.exit_crit_edge
  %tobool5.not = icmp eq ptr %modname, null
  br i1 %tobool5.not, label %kallsyms_expand_symbol.exit.if.end_crit_edge, label %if.then6

kallsyms_expand_symbol.exit.if.end_crit_edge:     ; preds = %kallsyms_expand_symbol.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then6:                                         ; preds = %kallsyms_expand_symbol.exit
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %modname to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %modname, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %kallsyms_expand_symbol.exit.if.end_crit_edge
  %tobool7.not = icmp eq ptr %modbuildid, null
  br i1 %tobool7.not, label %if.end.found_crit_edge, label %if.then8

if.end.found_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %found

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %modbuildid to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %modbuildid, align 4
  br label %found

if.end10:                                         ; preds = %is_ksym_addr.exit
  %call11 = tail call ptr @module_address_lookup(i32 noundef %addr, ptr noundef %symbolsize, ptr noundef %offset, ptr noundef %modname, ptr noundef %modbuildid, ptr noundef %namebuf) #9
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then13, label %if.end10.found_crit_edge

if.end10.found_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %found

if.then13:                                        ; preds = %if.end10
  %call.i = tail call ptr @__bpf_address_lookup(i32 noundef %addr, ptr noundef %symbolsize, ptr noundef %offset, ptr noundef %namebuf) #9
  %tobool.not.i52 = icmp eq ptr %call.i, null
  %tobool1.not.i = icmp eq ptr %modname, null
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i52
  br i1 %or.cond.i, label %if.end15, label %if.then.i53

if.then.i53:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %modname to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %modname, align 4
  br label %found

if.end15:                                         ; preds = %if.then13
  br i1 %tobool.not.i52, label %if.then17, label %if.end15.found_crit_edge

if.end15.found_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %found

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call ptr @ftrace_mod_address_lookup(i32 noundef %addr, ptr noundef %symbolsize, ptr noundef %offset, ptr noundef %modname, ptr noundef %namebuf) #9
  br label %found

found:                                            ; preds = %if.then17, %if.end15.found_crit_edge, %if.then.i53, %if.end10.found_crit_edge, %if.then8, %if.end.found_crit_edge
  %ret.1 = phi ptr [ %call.i, %if.end15.found_crit_edge ], [ %call18, %if.then17 ], [ %namebuf, %if.then8 ], [ %namebuf, %if.end.found_crit_edge ], [ %call.i, %if.then.i53 ], [ %call11, %if.end10.found_crit_edge ]
  ret ptr %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lookup_symbol_name(i32 noundef %addr, ptr noundef %symname) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %symname to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %symname, align 1
  %arrayidx1 = getelementptr i8, ptr %symname, i32 127
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @_stext to i32))
  %cmp.not.i.i.i = icmp uge i32 %addr, ptrtoint (ptr @_stext to i32)
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @_end to i32))
  %cmp1.i.i.i = icmp ult i32 %addr, ptrtoint (ptr @_end to i32)
  %or.cond.i.i.i = and i1 %cmp.not.i.i.i, %cmp1.i.i.i
  br i1 %or.cond.i.i.i, label %entry.if.then_crit_edge, label %__is_kernel.exit.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

__is_kernel.exit.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @__init_begin to i32))
  %cmp2.not.i.i.i = icmp uge i32 %addr, ptrtoint (ptr @__init_begin to i32)
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @__init_end to i32))
  %cmp3.i.i.i = icmp ult i32 %addr, ptrtoint (ptr @__init_end to i32)
  %spec.select.i.i.i = and i1 %cmp2.not.i.i.i, %cmp3.i.i.i
  br i1 %spec.select.i.i.i, label %__is_kernel.exit.i.i.if.then_crit_edge, label %is_ksym_addr.exit

__is_kernel.exit.i.i.if.then_crit_edge:           ; preds = %__is_kernel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

is_ksym_addr.exit:                                ; preds = %__is_kernel.exit.i.i
  %call1.i.i = tail call i32 @in_gate_area_no_mm(i32 noundef %addr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not, label %if.end, label %is_ksym_addr.exit.if.then_crit_edge

is_ksym_addr.exit.if.then_crit_edge:              ; preds = %is_ksym_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %is_ksym_addr.exit.if.then_crit_edge, %__is_kernel.exit.i.i.if.then_crit_edge, %entry.if.then_crit_edge
  br i1 icmp eq (ptr @kallsyms_offsets, ptr null), label %do.body1.i, label %do.end6.i, !prof !43

do.body1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/kallsyms.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 263, 0\0A.popsection", ""() #9, !srcloc !44
  unreachable

do.end6.i:                                        ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kallsyms_num_syms to i32))
  %2 = load i32, ptr @kallsyms_num_syms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp77.i = icmp ugt i32 %2, 1
  br i1 %cmp77.i, label %while.body.lr.ph.i, label %do.end6.i.while.cond11.i.preheader_crit_edge

do.end6.i.while.cond11.i.preheader_crit_edge:     ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond11.i.preheader

while.body.lr.ph.i:                               ; preds = %do.end6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kallsyms_relative_base to i32))
  %3 = load i32, ptr @kallsyms_relative_base, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %sub80.i = phi i32 [ %2, %while.body.lr.ph.i ], [ %sub.i, %while.body.i.while.body.i_crit_edge ]
  %high.079.i = phi i32 [ %2, %while.body.lr.ph.i ], [ %add.high.0.i, %while.body.i.while.body.i_crit_edge ]
  %low.078.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %low.0.add.i, %while.body.i.while.body.i_crit_edge ]
  %div64.i = lshr i32 %sub80.i, 1
  %add.i = add i32 %low.078.i, %div64.i
  %arrayidx.i.i = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %add.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %5, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %addr)
  %cmp8.not.i = icmp ugt i32 %add.i.i, %addr
  %low.0.add.i = select i1 %cmp8.not.i, i32 %low.078.i, i32 %add.i
  %add.high.0.i = select i1 %cmp8.not.i, i32 %add.i, i32 %high.079.i
  %sub.i = sub i32 %add.high.0.i, %low.0.add.i
  %cmp.i = icmp ugt i32 %sub.i, 1
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.cond11.i.preheader_crit_edge

while.body.i.while.cond11.i.preheader_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond11.i.preheader

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.cond11.i.preheader:                         ; preds = %while.body.i.while.cond11.i.preheader_crit_edge, %do.end6.i.while.cond11.i.preheader_crit_edge
  %low.2.i.ph = phi i32 [ 0, %do.end6.i.while.cond11.i.preheader_crit_edge ], [ %low.0.add.i, %while.body.i.while.cond11.i.preheader_crit_edge ]
  br label %while.cond11.i

while.cond11.i:                                   ; preds = %land.rhs.i.while.cond11.i_crit_edge, %while.cond11.i.preheader
  %low.2.i = phi i32 [ %sub13.i, %land.rhs.i.while.cond11.i_crit_edge ], [ %low.2.i.ph, %while.cond11.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %low.2.i)
  %tobool12.not.i = icmp eq i32 %low.2.i, 0
  br i1 %tobool12.not.i, label %while.end18.i.thread, label %land.rhs.i

while.end18.i.thread:                             ; preds = %while.cond11.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kallsyms_markers to i32))
  %6 = load i32, ptr @kallsyms_markers, align 4
  %arrayidx1.i34 = getelementptr [0 x i8], ptr @kallsyms_names, i32 0, i32 %6
  br label %get_symbol_offset.exit

land.rhs.i:                                       ; preds = %while.cond11.i
  %sub13.i = add i32 %low.2.i, -1
  %arrayidx.i65.i = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %sub13.i
  %7 = ptrtoint ptr %arrayidx.i65.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i65.i, align 4
  %arrayidx.i67.i = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %low.2.i
  %9 = ptrtoint ptr %arrayidx.i67.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i67.i, align 4
  %cmp16.i = icmp eq i32 %8, %10
  br i1 %cmp16.i, label %land.rhs.i.while.cond11.i_crit_edge, label %while.end18.i

land.rhs.i.while.cond11.i_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond11.i

while.end18.i:                                    ; preds = %land.rhs.i
  %shr.i = lshr i32 %low.2.i, 8
  %arrayidx.i = getelementptr [0 x i32], ptr @kallsyms_markers, i32 0, i32 %shr.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [0 x i8], ptr @kallsyms_names, i32 0, i32 %12
  %and.i = and i32 %low.2.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp7.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp7.not.i, label %while.end18.i.get_symbol_offset.exit_crit_edge, label %while.end18.i.for.body.i17_crit_edge

while.end18.i.for.body.i17_crit_edge:             ; preds = %while.end18.i
  br label %for.body.i17

while.end18.i.get_symbol_offset.exit_crit_edge:   ; preds = %while.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_symbol_offset.exit

for.body.i17:                                     ; preds = %for.body.i17.for.body.i17_crit_edge, %while.end18.i.for.body.i17_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i17.for.body.i17_crit_edge ], [ 0, %while.end18.i.for.body.i17_crit_edge ]
  %name.08.i = phi ptr [ %add.ptr2.i, %for.body.i17.for.body.i17_crit_edge ], [ %arrayidx1.i, %while.end18.i.for.body.i17_crit_edge ]
  %13 = ptrtoint ptr %name.08.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %name.08.i, align 1
  %conv.i = zext i8 %14 to i32
  %add.ptr.i = getelementptr i8, ptr %name.08.i, i32 1
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %and.i
  br i1 %exitcond.not.i, label %for.body.i17.get_symbol_offset.exit_crit_edge, label %for.body.i17.for.body.i17_crit_edge

for.body.i17.for.body.i17_crit_edge:              ; preds = %for.body.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i17

for.body.i17.get_symbol_offset.exit_crit_edge:    ; preds = %for.body.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_symbol_offset.exit

get_symbol_offset.exit:                           ; preds = %for.body.i17.get_symbol_offset.exit_crit_edge, %while.end18.i.get_symbol_offset.exit_crit_edge, %while.end18.i.thread
  %name.0.lcssa.i = phi ptr [ %arrayidx1.i, %while.end18.i.get_symbol_offset.exit_crit_edge ], [ %arrayidx1.i34, %while.end18.i.thread ], [ %add.ptr2.i, %for.body.i17.get_symbol_offset.exit_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %name.0.lcssa.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, ptrtoint (ptr @kallsyms_names to i32)
  %arrayidx.i18 = getelementptr [0 x i8], ptr @kallsyms_names, i32 0, i32 %sub.ptr.sub.i
  %15 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not15.i = icmp eq i8 %16, 0
  br i1 %tobool.not15.i, label %get_symbol_offset.exit.if.then18.i_crit_edge, label %while.body.i20.preheader

get_symbol_offset.exit.if.then18.i_crit_edge:     ; preds = %get_symbol_offset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18.i

while.body.i20.preheader:                         ; preds = %get_symbol_offset.exit
  %conv.i19 = zext i8 %16 to i32
  br label %while.body.i20

while.cond.loopexit.i:                            ; preds = %if.end14.i.while.cond.loopexit.i_crit_edge, %while.body.i20.while.cond.loopexit.i_crit_edge
  %result.addr.1.lcssa.i = phi ptr [ %result.addr.016.i, %while.body.i20.while.cond.loopexit.i_crit_edge ], [ %result.addr.2.i, %if.end14.i.while.cond.loopexit.i_crit_edge ]
  %maxlen.addr.1.lcssa.i = phi i32 [ %maxlen.addr.017.i, %while.body.i20.while.cond.loopexit.i_crit_edge ], [ %maxlen.addr.2.i, %if.end14.i.while.cond.loopexit.i_crit_edge ]
  %skipped_first.1.lcssa.i = phi i32 [ %skipped_first.019.i, %while.body.i20.while.cond.loopexit.i_crit_edge ], [ 1, %if.end14.i.while.cond.loopexit.i_crit_edge ]
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.cond.loopexit.i.tail.i_crit_edge, label %while.cond.loopexit.i.while.body.i20_crit_edge

while.cond.loopexit.i.while.body.i20_crit_edge:   ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i20

while.cond.loopexit.i.tail.i_crit_edge:           ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tail.i

while.body.i20:                                   ; preds = %while.cond.loopexit.i.while.body.i20_crit_edge, %while.body.i20.preheader
  %data.020.pn.i = phi ptr [ %data.020.i, %while.cond.loopexit.i.while.body.i20_crit_edge ], [ %arrayidx.i18, %while.body.i20.preheader ]
  %skipped_first.019.i = phi i32 [ %skipped_first.1.lcssa.i, %while.cond.loopexit.i.while.body.i20_crit_edge ], [ 0, %while.body.i20.preheader ]
  %len.018.i = phi i32 [ %dec.i, %while.cond.loopexit.i.while.body.i20_crit_edge ], [ %conv.i19, %while.body.i20.preheader ]
  %maxlen.addr.017.i = phi i32 [ %maxlen.addr.1.lcssa.i, %while.cond.loopexit.i.while.body.i20_crit_edge ], [ 128, %while.body.i20.preheader ]
  %result.addr.016.i = phi ptr [ %result.addr.1.lcssa.i, %while.cond.loopexit.i.while.body.i20_crit_edge ], [ %symname, %while.body.i20.preheader ]
  %data.020.i = getelementptr i8, ptr %data.020.pn.i, i32 1
  %17 = ptrtoint ptr %data.020.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %data.020.i, align 1
  %idxprom.i = zext i8 %18 to i32
  %arrayidx2.i = getelementptr [0 x i16], ptr @kallsyms_token_index, i32 0, i32 %idxprom.i
  %19 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx2.i, align 2
  %idxprom3.i = zext i16 %20 to i32
  %arrayidx4.i = getelementptr [0 x i8], ptr @kallsyms_token_table, i32 0, i32 %idxprom3.i
  %dec.i = add nsw i32 %len.018.i, -1
  %21 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool7.not7.i = icmp eq i8 %22, 0
  br i1 %tobool7.not7.i, label %while.body.i20.while.cond.loopexit.i_crit_edge, label %while.body.i20.while.body8.i_crit_edge

while.body.i20.while.body8.i_crit_edge:           ; preds = %while.body.i20
  br label %while.body8.i

while.body.i20.while.cond.loopexit.i_crit_edge:   ; preds = %while.body.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit.i

while.body8.i:                                    ; preds = %if.end14.i.while.body8.i_crit_edge, %while.body.i20.while.body8.i_crit_edge
  %23 = phi i8 [ %26, %if.end14.i.while.body8.i_crit_edge ], [ %22, %while.body.i20.while.body8.i_crit_edge ]
  %tptr.011.i = phi ptr [ %incdec.ptr15.i, %if.end14.i.while.body8.i_crit_edge ], [ %arrayidx4.i, %while.body.i20.while.body8.i_crit_edge ]
  %skipped_first.110.i = phi i32 [ 1, %if.end14.i.while.body8.i_crit_edge ], [ %skipped_first.019.i, %while.body.i20.while.body8.i_crit_edge ]
  %maxlen.addr.19.i = phi i32 [ %maxlen.addr.2.i, %if.end14.i.while.body8.i_crit_edge ], [ %maxlen.addr.017.i, %while.body.i20.while.body8.i_crit_edge ]
  %result.addr.18.i = phi ptr [ %result.addr.2.i, %if.end14.i.while.body8.i_crit_edge ], [ %result.addr.016.i, %while.body.i20.while.body8.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skipped_first.110.i)
  %tobool9.not.i = icmp eq i32 %skipped_first.110.i, 0
  br i1 %tobool9.not.i, label %while.body8.i.if.end14.i_crit_edge, label %if.then.i

while.body8.i.if.end14.i_crit_edge:               ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then.i:                                        ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %maxlen.addr.19.i)
  %cmp.i21 = icmp ult i32 %maxlen.addr.19.i, 2
  br i1 %cmp.i21, label %if.then.i.tail.i_crit_edge, label %if.end.i

if.then.i.tail.i_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tail.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %result.addr.18.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %result.addr.18.i, align 1
  %incdec.ptr12.i = getelementptr i8, ptr %result.addr.18.i, i32 1
  %dec13.i = add i32 %maxlen.addr.19.i, -1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end.i, %while.body8.i.if.end14.i_crit_edge
  %result.addr.2.i = phi ptr [ %incdec.ptr12.i, %if.end.i ], [ %result.addr.18.i, %while.body8.i.if.end14.i_crit_edge ]
  %maxlen.addr.2.i = phi i32 [ %dec13.i, %if.end.i ], [ %maxlen.addr.19.i, %while.body8.i.if.end14.i_crit_edge ]
  %incdec.ptr15.i = getelementptr i8, ptr %tptr.011.i, i32 1
  %25 = ptrtoint ptr %incdec.ptr15.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %incdec.ptr15.i, align 1
  %tobool7.not.i = icmp eq i8 %26, 0
  br i1 %tobool7.not.i, label %if.end14.i.while.cond.loopexit.i_crit_edge, label %if.end14.i.while.body8.i_crit_edge

if.end14.i.while.body8.i_crit_edge:               ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body8.i

if.end14.i.while.cond.loopexit.i_crit_edge:       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit.i

tail.i:                                           ; preds = %if.then.i.tail.i_crit_edge, %while.cond.loopexit.i.tail.i_crit_edge
  %result.addr.3.i = phi ptr [ %result.addr.18.i, %if.then.i.tail.i_crit_edge ], [ %result.addr.1.lcssa.i, %while.cond.loopexit.i.tail.i_crit_edge ]
  %maxlen.addr.3.i = phi i32 [ %maxlen.addr.19.i, %if.then.i.tail.i_crit_edge ], [ %maxlen.addr.1.lcssa.i, %while.cond.loopexit.i.tail.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen.addr.3.i)
  %tobool17.not.i = icmp eq i32 %maxlen.addr.3.i, 0
  br i1 %tobool17.not.i, label %tail.i.found_crit_edge, label %tail.i.if.then18.i_crit_edge

tail.i.if.then18.i_crit_edge:                     ; preds = %tail.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18.i

tail.i.found_crit_edge:                           ; preds = %tail.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %found

if.then18.i:                                      ; preds = %tail.i.if.then18.i_crit_edge, %get_symbol_offset.exit.if.then18.i_crit_edge
  %result.addr.329.i = phi ptr [ %result.addr.3.i, %tail.i.if.then18.i_crit_edge ], [ %symname, %get_symbol_offset.exit.if.then18.i_crit_edge ]
  %27 = ptrtoint ptr %result.addr.329.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %result.addr.329.i, align 1
  br label %found

if.end:                                           ; preds = %is_ksym_addr.exit
  %call5 = tail call i32 @lookup_module_symbol_name(i32 noundef %addr, ptr noundef %symname) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.found_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.found_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %found

found:                                            ; preds = %if.end.found_crit_edge, %if.then18.i, %tail.i.found_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %found, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %found ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lookup_module_symbol_name(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lookup_symbol_attrs(i32 noundef %addr, ptr noundef %size, ptr noundef %offset, ptr noundef %modname, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %name, align 1
  %arrayidx1 = getelementptr i8, ptr %name, i32 127
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @_stext to i32))
  %cmp.not.i.i.i = icmp uge i32 %addr, ptrtoint (ptr @_stext to i32)
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @_end to i32))
  %cmp1.i.i.i = icmp ult i32 %addr, ptrtoint (ptr @_end to i32)
  %or.cond.i.i.i = and i1 %cmp.not.i.i.i, %cmp1.i.i.i
  br i1 %or.cond.i.i.i, label %entry.if.then_crit_edge, label %__is_kernel.exit.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

__is_kernel.exit.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @__init_begin to i32))
  %cmp2.not.i.i.i = icmp uge i32 %addr, ptrtoint (ptr @__init_begin to i32)
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @__init_end to i32))
  %cmp3.i.i.i = icmp ult i32 %addr, ptrtoint (ptr @__init_end to i32)
  %spec.select.i.i.i = and i1 %cmp2.not.i.i.i, %cmp3.i.i.i
  br i1 %spec.select.i.i.i, label %__is_kernel.exit.i.i.if.then_crit_edge, label %is_ksym_addr.exit

__is_kernel.exit.i.i.if.then_crit_edge:           ; preds = %__is_kernel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

is_ksym_addr.exit:                                ; preds = %__is_kernel.exit.i.i
  %call1.i.i = tail call i32 @in_gate_area_no_mm(i32 noundef %addr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not, label %if.end, label %is_ksym_addr.exit.if.then_crit_edge

is_ksym_addr.exit.if.then_crit_edge:              ; preds = %is_ksym_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %is_ksym_addr.exit.if.then_crit_edge, %__is_kernel.exit.i.i.if.then_crit_edge, %entry.if.then_crit_edge
  br i1 icmp eq (ptr @kallsyms_offsets, ptr null), label %do.body1.i, label %do.end6.i, !prof !43

do.body1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/kallsyms.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 263, 0\0A.popsection", ""() #9, !srcloc !44
  unreachable

do.end6.i:                                        ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kallsyms_num_syms to i32))
  %2 = load i32, ptr @kallsyms_num_syms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp77.i = icmp ugt i32 %2, 1
  br i1 %cmp77.i, label %while.body.lr.ph.i, label %do.end6.i.while.cond11.i.preheader_crit_edge

do.end6.i.while.cond11.i.preheader_crit_edge:     ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond11.i.preheader

while.body.lr.ph.i:                               ; preds = %do.end6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kallsyms_relative_base to i32))
  %3 = load i32, ptr @kallsyms_relative_base, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %sub80.i = phi i32 [ %2, %while.body.lr.ph.i ], [ %sub.i, %while.body.i.while.body.i_crit_edge ]
  %high.079.i = phi i32 [ %2, %while.body.lr.ph.i ], [ %add.high.0.i, %while.body.i.while.body.i_crit_edge ]
  %low.078.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %low.0.add.i, %while.body.i.while.body.i_crit_edge ]
  %div64.i = lshr i32 %sub80.i, 1
  %add.i = add i32 %low.078.i, %div64.i
  %arrayidx.i.i = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %add.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %5, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %addr)
  %cmp8.not.i = icmp ugt i32 %add.i.i, %addr
  %low.0.add.i = select i1 %cmp8.not.i, i32 %low.078.i, i32 %add.i
  %add.high.0.i = select i1 %cmp8.not.i, i32 %add.i, i32 %high.079.i
  %sub.i = sub i32 %add.high.0.i, %low.0.add.i
  %cmp.i = icmp ugt i32 %sub.i, 1
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.cond11.i.preheader_crit_edge

while.body.i.while.cond11.i.preheader_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond11.i.preheader

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.cond11.i.preheader:                         ; preds = %while.body.i.while.cond11.i.preheader_crit_edge, %do.end6.i.while.cond11.i.preheader_crit_edge
  %low.2.i.ph = phi i32 [ 0, %do.end6.i.while.cond11.i.preheader_crit_edge ], [ %low.0.add.i, %while.body.i.while.cond11.i.preheader_crit_edge ]
  br label %while.cond11.i

while.cond11.i:                                   ; preds = %land.rhs.i.while.cond11.i_crit_edge, %while.cond11.i.preheader
  %low.2.i = phi i32 [ %sub13.i, %land.rhs.i.while.cond11.i_crit_edge ], [ %low.2.i.ph, %while.cond11.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %low.2.i)
  %tobool12.not.i = icmp eq i32 %low.2.i, 0
  br i1 %tobool12.not.i, label %while.cond11.i.while.end18.i_crit_edge, label %land.rhs.i

while.cond11.i.while.end18.i_crit_edge:           ; preds = %while.cond11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end18.i

land.rhs.i:                                       ; preds = %while.cond11.i
  %sub13.i = add i32 %low.2.i, -1
  %arrayidx.i65.i = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %sub13.i
  %6 = ptrtoint ptr %arrayidx.i65.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i65.i, align 4
  %arrayidx.i67.i = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %low.2.i
  %8 = ptrtoint ptr %arrayidx.i67.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i67.i, align 4
  %cmp16.i = icmp eq i32 %7, %9
  br i1 %cmp16.i, label %land.rhs.i.while.cond11.i_crit_edge, label %land.rhs.i.while.end18.i_crit_edge

land.rhs.i.while.end18.i_crit_edge:               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end18.i

land.rhs.i.while.cond11.i_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond11.i

while.end18.i:                                    ; preds = %land.rhs.i.while.end18.i_crit_edge, %while.cond11.i.while.end18.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kallsyms_relative_base to i32))
  %10 = load i32, ptr @kallsyms_relative_base, align 4
  %arrayidx.i69.i = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %low.2.i
  %11 = ptrtoint ptr %arrayidx.i69.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i69.i, align 4
  %add.i70.i = add i32 %12, %10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %while.end18.i
  %i.0.in.i = phi i32 [ %low.2.i, %while.end18.i ], [ %i.0.i, %for.body.i.for.cond.i_crit_edge ]
  %i.0.i = add i32 %i.0.in.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %2)
  %cmp21.i = icmp ult i32 %i.0.i, %2
  br i1 %cmp21.i, label %for.body.i, label %if.then28.i

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i71.i = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %i.0.i
  %13 = ptrtoint ptr %arrayidx.i71.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i71.i, align 4
  %add.i72.i = add i32 %14, %10
  %cmp23.i = icmp ugt i32 %add.i72.i, %add.i70.i
  br i1 %cmp23.i, label %for.body.i.if.end33.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.body.i.if.end33.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

if.then28.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @_sinittext to i32))
  %cmp.not.i.i = icmp uge i32 %addr, ptrtoint (ptr @_sinittext to i32)
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @_einittext to i32))
  %cmp1.i.i = icmp ult i32 %addr, ptrtoint (ptr @_einittext to i32)
  %spec.select.i.i = and i1 %cmp.not.i.i, %cmp1.i.i
  %..i = select i1 %spec.select.i.i, i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_end to i32)
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then28.i, %for.body.i.if.end33.i_crit_edge
  %symbol_end.1.i = phi i32 [ %..i, %if.then28.i ], [ %add.i72.i, %for.body.i.if.end33.i_crit_edge ]
  %tobool34.not.i = icmp eq ptr %size, null
  br i1 %tobool34.not.i, label %if.end33.i.if.end37.i_crit_edge, label %if.then35.i

if.end33.i.if.end37.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

if.then35.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub36.i = sub i32 %symbol_end.1.i, %add.i70.i
  %15 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub36.i, ptr %size, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then35.i, %if.end33.i.if.end37.i_crit_edge
  %tobool38.not.i = icmp eq ptr %offset, null
  br i1 %tobool38.not.i, label %if.end37.i.get_symbol_pos.exit_crit_edge, label %if.then39.i

if.end37.i.get_symbol_pos.exit_crit_edge:         ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_symbol_pos.exit

if.then39.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub40.i = sub i32 %addr, %add.i70.i
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub40.i, ptr %offset, align 4
  br label %get_symbol_pos.exit

get_symbol_pos.exit:                              ; preds = %if.then39.i, %if.end37.i.get_symbol_pos.exit_crit_edge
  %shr.i = lshr i32 %low.2.i, 8
  %arrayidx.i = getelementptr [0 x i32], ptr @kallsyms_markers, i32 0, i32 %shr.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr [0 x i8], ptr @kallsyms_names, i32 0, i32 %18
  %and.i = and i32 %low.2.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp7.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp7.not.i, label %get_symbol_pos.exit.get_symbol_offset.exit_crit_edge, label %get_symbol_pos.exit.for.body.i21_crit_edge

get_symbol_pos.exit.for.body.i21_crit_edge:       ; preds = %get_symbol_pos.exit
  br label %for.body.i21

get_symbol_pos.exit.get_symbol_offset.exit_crit_edge: ; preds = %get_symbol_pos.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_symbol_offset.exit

for.body.i21:                                     ; preds = %for.body.i21.for.body.i21_crit_edge, %get_symbol_pos.exit.for.body.i21_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i21.for.body.i21_crit_edge ], [ 0, %get_symbol_pos.exit.for.body.i21_crit_edge ]
  %name.08.i = phi ptr [ %add.ptr2.i, %for.body.i21.for.body.i21_crit_edge ], [ %arrayidx1.i, %get_symbol_pos.exit.for.body.i21_crit_edge ]
  %19 = ptrtoint ptr %name.08.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %name.08.i, align 1
  %conv.i = zext i8 %20 to i32
  %add.ptr.i = getelementptr i8, ptr %name.08.i, i32 1
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %and.i
  br i1 %exitcond.not.i, label %for.body.i21.get_symbol_offset.exit_crit_edge, label %for.body.i21.for.body.i21_crit_edge

for.body.i21.for.body.i21_crit_edge:              ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i21

for.body.i21.get_symbol_offset.exit_crit_edge:    ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_symbol_offset.exit

get_symbol_offset.exit:                           ; preds = %for.body.i21.get_symbol_offset.exit_crit_edge, %get_symbol_pos.exit.get_symbol_offset.exit_crit_edge
  %name.0.lcssa.i = phi ptr [ %arrayidx1.i, %get_symbol_pos.exit.get_symbol_offset.exit_crit_edge ], [ %add.ptr2.i, %for.body.i21.get_symbol_offset.exit_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %name.0.lcssa.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, ptrtoint (ptr @kallsyms_names to i32)
  %arrayidx.i22 = getelementptr [0 x i8], ptr @kallsyms_names, i32 0, i32 %sub.ptr.sub.i
  %21 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not15.i = icmp eq i8 %22, 0
  br i1 %tobool.not15.i, label %get_symbol_offset.exit.if.then18.i_crit_edge, label %while.body.i24.preheader

get_symbol_offset.exit.if.then18.i_crit_edge:     ; preds = %get_symbol_offset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18.i

while.body.i24.preheader:                         ; preds = %get_symbol_offset.exit
  %conv.i23 = zext i8 %22 to i32
  br label %while.body.i24

while.cond.loopexit.i:                            ; preds = %if.end14.i.while.cond.loopexit.i_crit_edge, %while.body.i24.while.cond.loopexit.i_crit_edge
  %result.addr.1.lcssa.i = phi ptr [ %result.addr.016.i, %while.body.i24.while.cond.loopexit.i_crit_edge ], [ %result.addr.2.i, %if.end14.i.while.cond.loopexit.i_crit_edge ]
  %maxlen.addr.1.lcssa.i = phi i32 [ %maxlen.addr.017.i, %while.body.i24.while.cond.loopexit.i_crit_edge ], [ %maxlen.addr.2.i, %if.end14.i.while.cond.loopexit.i_crit_edge ]
  %skipped_first.1.lcssa.i = phi i32 [ %skipped_first.019.i, %while.body.i24.while.cond.loopexit.i_crit_edge ], [ 1, %if.end14.i.while.cond.loopexit.i_crit_edge ]
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.cond.loopexit.i.tail.i_crit_edge, label %while.cond.loopexit.i.while.body.i24_crit_edge

while.cond.loopexit.i.while.body.i24_crit_edge:   ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i24

while.cond.loopexit.i.tail.i_crit_edge:           ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tail.i

while.body.i24:                                   ; preds = %while.cond.loopexit.i.while.body.i24_crit_edge, %while.body.i24.preheader
  %data.020.pn.i = phi ptr [ %data.020.i, %while.cond.loopexit.i.while.body.i24_crit_edge ], [ %arrayidx.i22, %while.body.i24.preheader ]
  %skipped_first.019.i = phi i32 [ %skipped_first.1.lcssa.i, %while.cond.loopexit.i.while.body.i24_crit_edge ], [ 0, %while.body.i24.preheader ]
  %len.018.i = phi i32 [ %dec.i, %while.cond.loopexit.i.while.body.i24_crit_edge ], [ %conv.i23, %while.body.i24.preheader ]
  %maxlen.addr.017.i = phi i32 [ %maxlen.addr.1.lcssa.i, %while.cond.loopexit.i.while.body.i24_crit_edge ], [ 128, %while.body.i24.preheader ]
  %result.addr.016.i = phi ptr [ %result.addr.1.lcssa.i, %while.cond.loopexit.i.while.body.i24_crit_edge ], [ %name, %while.body.i24.preheader ]
  %data.020.i = getelementptr i8, ptr %data.020.pn.i, i32 1
  %23 = ptrtoint ptr %data.020.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data.020.i, align 1
  %idxprom.i = zext i8 %24 to i32
  %arrayidx2.i = getelementptr [0 x i16], ptr @kallsyms_token_index, i32 0, i32 %idxprom.i
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx2.i, align 2
  %idxprom3.i = zext i16 %26 to i32
  %arrayidx4.i = getelementptr [0 x i8], ptr @kallsyms_token_table, i32 0, i32 %idxprom3.i
  %dec.i = add nsw i32 %len.018.i, -1
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool7.not7.i = icmp eq i8 %28, 0
  br i1 %tobool7.not7.i, label %while.body.i24.while.cond.loopexit.i_crit_edge, label %while.body.i24.while.body8.i_crit_edge

while.body.i24.while.body8.i_crit_edge:           ; preds = %while.body.i24
  br label %while.body8.i

while.body.i24.while.cond.loopexit.i_crit_edge:   ; preds = %while.body.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit.i

while.body8.i:                                    ; preds = %if.end14.i.while.body8.i_crit_edge, %while.body.i24.while.body8.i_crit_edge
  %29 = phi i8 [ %32, %if.end14.i.while.body8.i_crit_edge ], [ %28, %while.body.i24.while.body8.i_crit_edge ]
  %tptr.011.i = phi ptr [ %incdec.ptr15.i, %if.end14.i.while.body8.i_crit_edge ], [ %arrayidx4.i, %while.body.i24.while.body8.i_crit_edge ]
  %skipped_first.110.i = phi i32 [ 1, %if.end14.i.while.body8.i_crit_edge ], [ %skipped_first.019.i, %while.body.i24.while.body8.i_crit_edge ]
  %maxlen.addr.19.i = phi i32 [ %maxlen.addr.2.i, %if.end14.i.while.body8.i_crit_edge ], [ %maxlen.addr.017.i, %while.body.i24.while.body8.i_crit_edge ]
  %result.addr.18.i = phi ptr [ %result.addr.2.i, %if.end14.i.while.body8.i_crit_edge ], [ %result.addr.016.i, %while.body.i24.while.body8.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skipped_first.110.i)
  %tobool9.not.i = icmp eq i32 %skipped_first.110.i, 0
  br i1 %tobool9.not.i, label %while.body8.i.if.end14.i_crit_edge, label %if.then.i

while.body8.i.if.end14.i_crit_edge:               ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then.i:                                        ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %maxlen.addr.19.i)
  %cmp.i25 = icmp ult i32 %maxlen.addr.19.i, 2
  br i1 %cmp.i25, label %if.then.i.tail.i_crit_edge, label %if.end.i

if.then.i.tail.i_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tail.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %result.addr.18.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %result.addr.18.i, align 1
  %incdec.ptr12.i = getelementptr i8, ptr %result.addr.18.i, i32 1
  %dec13.i = add i32 %maxlen.addr.19.i, -1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end.i, %while.body8.i.if.end14.i_crit_edge
  %result.addr.2.i = phi ptr [ %incdec.ptr12.i, %if.end.i ], [ %result.addr.18.i, %while.body8.i.if.end14.i_crit_edge ]
  %maxlen.addr.2.i = phi i32 [ %dec13.i, %if.end.i ], [ %maxlen.addr.19.i, %while.body8.i.if.end14.i_crit_edge ]
  %incdec.ptr15.i = getelementptr i8, ptr %tptr.011.i, i32 1
  %31 = ptrtoint ptr %incdec.ptr15.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %incdec.ptr15.i, align 1
  %tobool7.not.i = icmp eq i8 %32, 0
  br i1 %tobool7.not.i, label %if.end14.i.while.cond.loopexit.i_crit_edge, label %if.end14.i.while.body8.i_crit_edge

if.end14.i.while.body8.i_crit_edge:               ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body8.i

if.end14.i.while.cond.loopexit.i_crit_edge:       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit.i

tail.i:                                           ; preds = %if.then.i.tail.i_crit_edge, %while.cond.loopexit.i.tail.i_crit_edge
  %result.addr.3.i = phi ptr [ %result.addr.18.i, %if.then.i.tail.i_crit_edge ], [ %result.addr.1.lcssa.i, %while.cond.loopexit.i.tail.i_crit_edge ]
  %maxlen.addr.3.i = phi i32 [ %maxlen.addr.19.i, %if.then.i.tail.i_crit_edge ], [ %maxlen.addr.1.lcssa.i, %while.cond.loopexit.i.tail.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen.addr.3.i)
  %tobool17.not.i = icmp eq i32 %maxlen.addr.3.i, 0
  br i1 %tobool17.not.i, label %tail.i.kallsyms_expand_symbol.exit_crit_edge, label %tail.i.if.then18.i_crit_edge

tail.i.if.then18.i_crit_edge:                     ; preds = %tail.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18.i

tail.i.kallsyms_expand_symbol.exit_crit_edge:     ; preds = %tail.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kallsyms_expand_symbol.exit

if.then18.i:                                      ; preds = %tail.i.if.then18.i_crit_edge, %get_symbol_offset.exit.if.then18.i_crit_edge
  %result.addr.329.i = phi ptr [ %result.addr.3.i, %tail.i.if.then18.i_crit_edge ], [ %name, %get_symbol_offset.exit.if.then18.i_crit_edge ]
  %33 = ptrtoint ptr %result.addr.329.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %result.addr.329.i, align 1
  br label %kallsyms_expand_symbol.exit

kallsyms_expand_symbol.exit:                      ; preds = %if.then18.i, %tail.i.kallsyms_expand_symbol.exit_crit_edge
  %34 = ptrtoint ptr %modname to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %modname, align 1
  br label %found

if.end:                                           ; preds = %is_ksym_addr.exit
  %call6 = tail call i32 @lookup_module_symbol_attrs(i32 noundef %addr, ptr noundef %size, ptr noundef %offset, ptr noundef %modname, ptr noundef %name) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.found_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.found_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %found

found:                                            ; preds = %if.end.found_crit_edge, %kallsyms_expand_symbol.exit
  br label %cleanup

cleanup:                                          ; preds = %found, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %found ], [ %call6, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lookup_module_symbol_attrs(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sprint_symbol(ptr noundef %buffer, i32 noundef %address) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__sprint_symbol(ptr noundef %buffer, i32 noundef %address, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__sprint_symbol(ptr noundef %buffer, i32 noundef %address, i32 noundef %symbol_offset, i32 noundef %add_offset, i32 noundef %add_buildid) unnamed_addr #0 align 64 {
entry:
  %modname = alloca ptr, align 4
  %buildid = alloca ptr, align 4
  %offset = alloca i32, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %modname) #9
  %0 = ptrtoint ptr %modname to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %modname, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buildid) #9
  %1 = ptrtoint ptr %buildid to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %buildid, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #9
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %offset, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #9
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %size, align 4, !annotation !45
  %add = add i32 %symbol_offset, %address
  %call = call fastcc ptr @kallsyms_lookup_buildid(i32 noundef %add, ptr noundef nonnull %size, ptr noundef nonnull %offset, ptr noundef nonnull %modname, ptr noundef nonnull %buildid, ptr noundef %buffer)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buffer, ptr noundef nonnull @.str, i32 noundef %address)
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.not = icmp eq ptr %call, %buffer
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = call ptr @strcpy(ptr noundef %buffer, ptr noundef nonnull %call) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %call5 = call i32 @strlen(ptr noundef %buffer) #12
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %sub6 = sub i32 %5, %symbol_offset
  store i32 %sub6, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add_offset)
  %tobool7.not = icmp eq i32 %add_offset, 0
  br i1 %tobool7.not, label %if.end4.if.end11_crit_edge, label %if.then8

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %buffer, i32 %call5
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %call9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.1, i32 noundef %sub6, i32 noundef %7)
  %add10 = add i32 %call9, %call5
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end4.if.end11_crit_edge
  %len.0 = phi i32 [ %add10, %if.then8 ], [ %call5, %if.end4.if.end11_crit_edge ]
  %8 = ptrtoint ptr %modname to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %modname, align 4
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.then13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  %add.ptr14 = getelementptr i8, ptr %buffer, i32 %len.0
  %call15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr14, ptr noundef nonnull @.str.2, ptr noundef nonnull %9)
  %add16 = add i32 %call15, %len.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add_buildid)
  %tobool17.not = icmp eq i32 %add_buildid, 0
  br i1 %tobool17.not, label %if.then13.if.end23_crit_edge, label %land.lhs.true

if.then13.if.end23_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true:                                    ; preds = %if.then13
  %10 = ptrtoint ptr %buildid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buildid, align 4
  %tobool18.not = icmp eq ptr %11, null
  br i1 %tobool18.not, label %land.lhs.true.if.end23_crit_edge, label %if.then19

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr20 = getelementptr i8, ptr %buffer, i32 %add16
  %call21 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20, ptr noundef nonnull @.str.3, ptr noundef nonnull %11)
  %add22 = add i32 %call21, %add16
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %land.lhs.true.if.end23_crit_edge, %if.then13.if.end23_crit_edge
  %len.1 = phi i32 [ %add22, %if.then19 ], [ %add16, %land.lhs.true.if.end23_crit_edge ], [ %add16, %if.then13.if.end23_crit_edge ]
  %add.ptr24 = getelementptr i8, ptr %buffer, i32 %len.1
  %12 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 23808, ptr %add.ptr24, align 1
  %add26 = add i32 %len.1, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end11.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %add26, %if.end23 ], [ %len.0, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buildid) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %modname) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sprint_symbol_build_id(ptr noundef %buffer, i32 noundef %address) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__sprint_symbol(ptr noundef %buffer, i32 noundef %address, i32 noundef 0, i32 noundef 1, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sprint_symbol_no_offset(ptr noundef %buffer, i32 noundef %address) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__sprint_symbol(ptr noundef %buffer, i32 noundef %address, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sprint_backtrace(ptr noundef %buffer, i32 noundef %address) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__sprint_symbol(ptr noundef %buffer, i32 noundef %address, i32 noundef -1, i32 noundef 1, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sprint_backtrace_build_id(ptr noundef %buffer, i32 noundef %address) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__sprint_symbol(ptr noundef %buffer, i32 noundef %address, i32 noundef -1, i32 noundef 1, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @arch_get_kallsym(i32 noundef %symnum, ptr noundef %value, ptr noundef %type, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @kallsyms_show_value(ptr noundef %cred) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kptr_restrict to i32))
  %0 = load i32, ptr @kptr_restrict, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %entry.sw.default_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb1_crit_edge
  ]

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_perf_event_paranoid to i32))
  %2 = load i32, ptr @sysctl_perf_event_paranoid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.i = icmp sgt i32 %2, 1
  br i1 %cmp.i, label %sw.bb.sw.bb1_crit_edge, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb.sw.bb1_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

sw.bb1:                                           ; preds = %sw.bb.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge
  %call2 = tail call i32 @security_capable(ptr noundef %cred, ptr noundef nonnull @init_user_ns, i32 noundef 34, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %sw.bb1.return_crit_edge, label %sw.bb1.sw.default_crit_edge

sw.bb1.sw.default_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.default:                                       ; preds = %sw.bb1.sw.default_crit_edge, %entry.sw.default_crit_edge
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1.return_crit_edge, %sw.bb.return_crit_edge
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %sw.bb.return_crit_edge ], [ true, %sw.bb1.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_capable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kdb_walk_kallsyms(ptr nocapture noundef %pos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %entry.while.body.preheader_crit_edge

entry.while.body.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = call ptr @memset(ptr getelementptr inbounds (%struct.kallsym_iter, ptr @kdb_walk_kallsyms.kdb_walk_kallsyms_iter, i32 0, i32 5), i32 0, i32 208)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kallsyms_markers to i32))
  %3 = load i32, ptr @kallsyms_markers, align 4
  store i32 %3, ptr getelementptr inbounds (%struct.kallsym_iter, ptr @kdb_walk_kallsyms.kdb_walk_kallsyms_iter, i32 0, i32 6), align 4
  %4 = call ptr @memset(ptr @kdb_walk_kallsyms.kdb_walk_kallsyms_iter, i32 0, i32 40)
  br label %while.body.preheader

while.body.preheader:                             ; preds = %if.then, %entry.while.body.preheader_crit_edge
  br label %while.body

while.body:                                       ; preds = %if.end2.while.body_crit_edge, %while.body.preheader
  %5 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %pos, align 8
  %call = tail call fastcc i32 @update_iter(ptr noundef nonnull @kdb_walk_kallsyms.kdb_walk_kallsyms_iter, i64 noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body.return_crit_edge, label %if.end2

while.body.return_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end2:                                          ; preds = %while.body
  %7 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %pos, align 8
  %inc = add i64 %8, 1
  store i64 %inc, ptr %pos, align 8
  %9 = load i8, ptr getelementptr inbounds (%struct.kallsym_iter, ptr @kdb_walk_kallsyms.kdb_walk_kallsyms_iter, i32 0, i32 8), align 1
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.end2.while.body_crit_edge, label %if.end2.return_crit_edge

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end2.while.body_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

return:                                           ; preds = %if.end2.return_crit_edge, %while.body.return_crit_edge
  %retval.0 = phi ptr [ null, %while.body.return_crit_edge ], [ getelementptr inbounds (%struct.kallsym_iter, ptr @kdb_walk_kallsyms.kdb_walk_kallsyms_iter, i32 0, i32 8), %if.end2.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_iter(ptr noundef %iter, i64 noundef %pos) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kallsyms_num_syms to i32))
  %0 = load i32, ptr @kallsyms_num_syms, align 4
  %conv = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %pos)
  %cmp.not = icmp sgt i64 %conv, %pos
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %iter to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %pos, ptr %iter, align 8
  %pos_arch_end.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 1
  %2 = ptrtoint ptr %pos_arch_end.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos_arch_end.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not.i = icmp eq i64 %3, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %pos)
  %cmp.i = icmp sgt i64 %3, %pos
  %or.cond.i = or i1 %tobool.not.i, %cmp.i
  br i1 %or.cond.i, label %land.lhs.true.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then
  %4 = trunc i64 %pos to i32
  %conv1.i.i = sub i32 %4, %0
  %value.i.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 5
  %type.i.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 7
  %name.i.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 8
  %call.i.i = tail call i32 @arch_get_kallsym(i32 noundef %conv1.i.i, ptr noundef %value.i.i, ptr noundef %type.i.i, ptr noundef %name.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %get_ksymbol_arch.exit.thread.i, label %land.lhs.true.i.return_crit_edge

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

get_ksymbol_arch.exit.thread.i:                   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %iter to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %iter, align 8
  %7 = ptrtoint ptr %pos_arch_end.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %pos_arch_end.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %get_ksymbol_arch.exit.thread.i, %if.then.if.end.i_crit_edge
  %pos_mod_end.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 2
  %8 = ptrtoint ptr %pos_mod_end.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pos_mod_end.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool4.not.i = icmp eq i64 %9, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %pos)
  %cmp7.i = icmp sgt i64 %9, %pos
  %or.cond52.i = or i1 %tobool4.not.i, %cmp7.i
  br i1 %or.cond52.i, label %land.lhs.true8.i, label %if.end.i.if.end12.i_crit_edge

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

land.lhs.true8.i:                                 ; preds = %if.end.i
  %10 = ptrtoint ptr %iter to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %iter, align 8
  %12 = ptrtoint ptr %pos_arch_end.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %pos_arch_end.i, align 8
  %sub.i.i = sub i64 %11, %13
  %conv.i.i = trunc i64 %sub.i.i to i32
  %value.i56.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 5
  %type.i57.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 7
  %name.i58.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 8
  %module_name.i.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 9
  %exported.i.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 10
  %call.i59.i = tail call i32 @module_get_kallsym(i32 noundef %conv.i.i, ptr noundef %value.i56.i, ptr noundef %type.i57.i, ptr noundef %name.i58.i, ptr noundef %module_name.i.i, ptr noundef %exported.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59.i)
  %cmp.i60.i = icmp slt i32 %call.i59.i, 0
  br i1 %cmp.i60.i, label %get_ksymbol_mod.exit.thread.i, label %land.lhs.true8.i.return_crit_edge

land.lhs.true8.i.return_crit_edge:                ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

get_ksymbol_mod.exit.thread.i:                    ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %iter to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %iter, align 8
  %16 = ptrtoint ptr %pos_mod_end.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %pos_mod_end.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %get_ksymbol_mod.exit.thread.i, %if.end.i.if.end12.i_crit_edge
  %pos_ftrace_mod_end.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 3
  %17 = ptrtoint ptr %pos_ftrace_mod_end.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %pos_ftrace_mod_end.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool13.not.i = icmp eq i64 %18, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %pos)
  %cmp16.i = icmp sgt i64 %18, %pos
  %or.cond53.i = or i1 %tobool13.not.i, %cmp16.i
  br i1 %or.cond53.i, label %land.lhs.true17.i, label %if.end12.i.if.end21.i_crit_edge

if.end12.i.if.end21.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

land.lhs.true17.i:                                ; preds = %if.end12.i
  %19 = ptrtoint ptr %iter to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %iter, align 8
  %21 = ptrtoint ptr %pos_mod_end.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %pos_mod_end.i, align 8
  %sub.i64.i = sub i64 %20, %22
  %conv.i65.i = trunc i64 %sub.i64.i to i32
  %value.i66.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 5
  %type.i67.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 7
  %name.i68.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 8
  %module_name.i69.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 9
  %exported.i70.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 10
  %call.i71.i = tail call i32 @ftrace_mod_get_kallsym(i32 noundef %conv.i65.i, ptr noundef %value.i66.i, ptr noundef %type.i67.i, ptr noundef %name.i68.i, ptr noundef %module_name.i69.i, ptr noundef %exported.i70.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71.i)
  %cmp.i72.i = icmp slt i32 %call.i71.i, 0
  br i1 %cmp.i72.i, label %get_ksymbol_ftrace_mod.exit.thread.i, label %land.lhs.true17.i.return_crit_edge

land.lhs.true17.i.return_crit_edge:               ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

get_ksymbol_ftrace_mod.exit.thread.i:             ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %iter to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %iter, align 8
  %25 = ptrtoint ptr %pos_ftrace_mod_end.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %pos_ftrace_mod_end.i, align 8
  br label %if.end21.i

if.end21.i:                                       ; preds = %get_ksymbol_ftrace_mod.exit.thread.i, %if.end12.i.if.end21.i_crit_edge
  %pos_bpf_end.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 4
  %26 = ptrtoint ptr %pos_bpf_end.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pos_bpf_end.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool22.not.i = icmp eq i64 %27, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %pos)
  %cmp25.i = icmp sgt i64 %27, %pos
  %or.cond54.i = or i1 %tobool22.not.i, %cmp25.i
  br i1 %or.cond54.i, label %land.lhs.true26.i, label %if.end21.i.if.end30.i_crit_edge

if.end21.i.if.end30.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

land.lhs.true26.i:                                ; preds = %if.end21.i
  %module_name.i75.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 9
  %call.i76.i = tail call i32 @strlcpy(ptr noundef %module_name.i75.i, ptr noundef nonnull @.str.5, i32 noundef 60) #9
  %exported.i77.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 10
  %28 = ptrtoint ptr %exported.i77.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %exported.i77.i, align 8
  %29 = ptrtoint ptr %iter to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %iter, align 8
  %31 = ptrtoint ptr %pos_ftrace_mod_end.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %pos_ftrace_mod_end.i, align 8
  %sub.i79.i = sub i64 %30, %32
  %conv.i80.i = trunc i64 %sub.i79.i to i32
  %value.i81.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 5
  %type.i82.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 7
  %name.i83.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 8
  %call2.i.i = tail call i32 @bpf_get_kallsym(i32 noundef %conv.i80.i, ptr noundef %value.i81.i, ptr noundef %type.i82.i, ptr noundef %name.i83.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i84.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i84.i, label %get_ksymbol_bpf.exit.thread.i, label %land.lhs.true26.i.return_crit_edge

land.lhs.true26.i.return_crit_edge:               ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

get_ksymbol_bpf.exit.thread.i:                    ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %iter to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %iter, align 8
  %35 = ptrtoint ptr %pos_bpf_end.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %pos_bpf_end.i, align 8
  br label %if.end30.i

if.end30.i:                                       ; preds = %get_ksymbol_bpf.exit.thread.i, %if.end21.i.if.end30.i_crit_edge
  %module_name.i87.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 9
  %call.i88.i = tail call i32 @strlcpy(ptr noundef %module_name.i87.i, ptr noundef nonnull @.str.6, i32 noundef 60) #9
  %exported.i89.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 10
  %36 = ptrtoint ptr %exported.i89.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %exported.i89.i, align 8
  %37 = ptrtoint ptr %iter to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %iter, align 8
  %39 = ptrtoint ptr %pos_bpf_end.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %pos_bpf_end.i, align 8
  %sub.i91.i = sub i64 %38, %40
  %conv.i92.i = trunc i64 %sub.i91.i to i32
  %value.i93.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 5
  %type.i94.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 7
  %name.i95.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 8
  %call2.i96.i = tail call i32 @kprobe_get_kallsym(i32 noundef %conv.i92.i, ptr noundef %value.i93.i, ptr noundef %type.i94.i, ptr noundef %name.i95.i) #9
  %41 = xor i32 %call2.i96.i, -1
  %call2.lobit.not.i.i = lshr i32 %41, 31
  br label %return

if.end:                                           ; preds = %entry
  %42 = ptrtoint ptr %iter to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %iter, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %pos)
  %cmp3.not = icmp eq i64 %43, %pos
  br i1 %cmp3.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end
  %name.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 8
  %44 = ptrtoint ptr %name.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %name.i, align 1
  %conv.i = trunc i64 %pos to i32
  %shr.i.i = lshr i32 %conv.i, 8
  %arrayidx.i.i = getelementptr [0 x i32], ptr @kallsyms_markers, i32 0, i32 %shr.i.i
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx1.i.i = getelementptr [0 x i8], ptr @kallsyms_names, i32 0, i32 %46
  %and.i.i = and i32 %conv.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp7.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp7.not.i.i, label %if.then5.get_symbol_offset.exit.i_crit_edge, label %if.then5.for.body.i.i_crit_edge

if.then5.for.body.i.i_crit_edge:                  ; preds = %if.then5
  br label %for.body.i.i

if.then5.get_symbol_offset.exit.i_crit_edge:      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_symbol_offset.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then5.for.body.i.i_crit_edge
  %i.09.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then5.for.body.i.i_crit_edge ]
  %name.08.i.i = phi ptr [ %add.ptr2.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %arrayidx1.i.i, %if.then5.for.body.i.i_crit_edge ]
  %47 = ptrtoint ptr %name.08.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %name.08.i.i, align 1
  %conv.i.i17 = zext i8 %48 to i32
  %add.ptr.i.i = getelementptr i8, ptr %name.08.i.i, i32 1
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv.i.i17
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %and.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.get_symbol_offset.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.get_symbol_offset.exit.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_symbol_offset.exit.i

get_symbol_offset.exit.i:                         ; preds = %for.body.i.i.get_symbol_offset.exit.i_crit_edge, %if.then5.get_symbol_offset.exit.i_crit_edge
  %name.0.lcssa.i.i = phi ptr [ %arrayidx1.i.i, %if.then5.get_symbol_offset.exit.i_crit_edge ], [ %add.ptr2.i.i, %for.body.i.i.get_symbol_offset.exit.i_crit_edge ]
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %name.0.lcssa.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, ptrtoint (ptr @kallsyms_names to i32)
  %nameoff.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 6
  %49 = ptrtoint ptr %nameoff.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub.ptr.sub.i.i, ptr %nameoff.i, align 4
  %50 = ptrtoint ptr %iter to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %pos, ptr %iter, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos)
  %cmp.i18 = icmp eq i64 %pos, 0
  br i1 %cmp.i18, label %if.then.i, label %get_symbol_offset.exit.i.if.end6_crit_edge

get_symbol_offset.exit.i.if.end6_crit_edge:       ; preds = %get_symbol_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then.i:                                        ; preds = %get_symbol_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %pos_arch_end.i19 = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 1
  %51 = call ptr @memset(ptr %pos_arch_end.i19, i32 0, i32 32)
  br label %if.end6

if.end6:                                          ; preds = %if.then.i, %get_symbol_offset.exit.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %nameoff.i21 = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 6
  %52 = ptrtoint ptr %nameoff.i21 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nameoff.i21, align 4
  %module_name.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 9
  %54 = ptrtoint ptr %module_name.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %module_name.i, align 1
  %55 = ptrtoint ptr %iter to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %iter, align 8
  %conv.i22 = trunc i64 %56 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kallsyms_relative_base to i32))
  %57 = load i32, ptr @kallsyms_relative_base, align 4
  %arrayidx.i.i23 = getelementptr [0 x i32], ptr @kallsyms_offsets, i32 0, i32 %conv.i22
  %58 = ptrtoint ptr %arrayidx.i.i23 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.i23, align 4
  %add.i.i = add i32 %59, %57
  %value.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 5
  %60 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add.i.i, ptr %value.i, align 8
  %add.i12.i = add i32 %53, 1
  %arrayidx.i13.i = getelementptr [0 x i8], ptr @kallsyms_names, i32 0, i32 %add.i12.i
  %61 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i13.i, align 1
  %idxprom.i.i = zext i8 %62 to i32
  %arrayidx1.i.i24 = getelementptr [0 x i16], ptr @kallsyms_token_index, i32 0, i32 %idxprom.i.i
  %63 = ptrtoint ptr %arrayidx1.i.i24 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx1.i.i24, align 2
  %idxprom2.i.i = zext i16 %64 to i32
  %arrayidx3.i.i = getelementptr [0 x i8], ptr @kallsyms_token_table, i32 0, i32 %idxprom2.i.i
  %65 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx3.i.i, align 1
  %type.i = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 7
  %67 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %type.i, align 8
  %name.i25 = getelementptr inbounds %struct.kallsym_iter, ptr %iter, i32 0, i32 8
  %arrayidx.i14.i = getelementptr [0 x i8], ptr @kallsyms_names, i32 0, i32 %53
  %68 = ptrtoint ptr %arrayidx.i14.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i14.i, align 1
  %conv.i.i26 = zext i8 %69 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not15.i.i = icmp eq i8 %69, 0
  br i1 %tobool.not15.i.i, label %if.end6.if.then18.i.i_crit_edge, label %if.end6.while.body.i.i_crit_edge

if.end6.while.body.i.i_crit_edge:                 ; preds = %if.end6
  br label %while.body.i.i

if.end6.if.then18.i.i_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18.i.i

while.cond.loopexit.i.i:                          ; preds = %if.end14.i.i.while.cond.loopexit.i.i_crit_edge, %while.body.i.i.while.cond.loopexit.i.i_crit_edge
  %result.addr.1.lcssa.i.i = phi ptr [ %result.addr.016.i.i, %while.body.i.i.while.cond.loopexit.i.i_crit_edge ], [ %result.addr.2.i.i, %if.end14.i.i.while.cond.loopexit.i.i_crit_edge ]
  %maxlen.addr.1.lcssa.i.i = phi i32 [ %maxlen.addr.017.i.i, %while.body.i.i.while.cond.loopexit.i.i_crit_edge ], [ %maxlen.addr.2.i.i, %if.end14.i.i.while.cond.loopexit.i.i_crit_edge ]
  %skipped_first.1.lcssa.i.i = phi i32 [ %skipped_first.019.i.i, %while.body.i.i.while.cond.loopexit.i.i_crit_edge ], [ 1, %if.end14.i.i.while.cond.loopexit.i.i_crit_edge ]
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.cond.loopexit.i.i.tail.i.i_crit_edge, label %while.cond.loopexit.i.i.while.body.i.i_crit_edge

while.cond.loopexit.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.cond.loopexit.i.i.tail.i.i_crit_edge:       ; preds = %while.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tail.i.i

while.body.i.i:                                   ; preds = %while.cond.loopexit.i.i.while.body.i.i_crit_edge, %if.end6.while.body.i.i_crit_edge
  %data.020.pn.i.i = phi ptr [ %data.020.i.i, %while.cond.loopexit.i.i.while.body.i.i_crit_edge ], [ %arrayidx.i14.i, %if.end6.while.body.i.i_crit_edge ]
  %skipped_first.019.i.i = phi i32 [ %skipped_first.1.lcssa.i.i, %while.cond.loopexit.i.i.while.body.i.i_crit_edge ], [ 0, %if.end6.while.body.i.i_crit_edge ]
  %len.018.i.i = phi i32 [ %dec.i.i, %while.cond.loopexit.i.i.while.body.i.i_crit_edge ], [ %conv.i.i26, %if.end6.while.body.i.i_crit_edge ]
  %maxlen.addr.017.i.i = phi i32 [ %maxlen.addr.1.lcssa.i.i, %while.cond.loopexit.i.i.while.body.i.i_crit_edge ], [ 128, %if.end6.while.body.i.i_crit_edge ]
  %result.addr.016.i.i = phi ptr [ %result.addr.1.lcssa.i.i, %while.cond.loopexit.i.i.while.body.i.i_crit_edge ], [ %name.i25, %if.end6.while.body.i.i_crit_edge ]
  %data.020.i.i = getelementptr i8, ptr %data.020.pn.i.i, i32 1
  %70 = ptrtoint ptr %data.020.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %data.020.i.i, align 1
  %idxprom.i15.i = zext i8 %71 to i32
  %arrayidx2.i.i = getelementptr [0 x i16], ptr @kallsyms_token_index, i32 0, i32 %idxprom.i15.i
  %72 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx2.i.i, align 2
  %idxprom3.i.i = zext i16 %73 to i32
  %arrayidx4.i.i = getelementptr [0 x i8], ptr @kallsyms_token_table, i32 0, i32 %idxprom3.i.i
  %dec.i.i = add nsw i32 %len.018.i.i, -1
  %74 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool7.not7.i.i = icmp eq i8 %75, 0
  br i1 %tobool7.not7.i.i, label %while.body.i.i.while.cond.loopexit.i.i_crit_edge, label %while.body.i.i.while.body8.i.i_crit_edge

while.body.i.i.while.body8.i.i_crit_edge:         ; preds = %while.body.i.i
  br label %while.body8.i.i

while.body.i.i.while.cond.loopexit.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit.i.i

while.body8.i.i:                                  ; preds = %if.end14.i.i.while.body8.i.i_crit_edge, %while.body.i.i.while.body8.i.i_crit_edge
  %76 = phi i8 [ %79, %if.end14.i.i.while.body8.i.i_crit_edge ], [ %75, %while.body.i.i.while.body8.i.i_crit_edge ]
  %tptr.011.i.i = phi ptr [ %incdec.ptr15.i.i, %if.end14.i.i.while.body8.i.i_crit_edge ], [ %arrayidx4.i.i, %while.body.i.i.while.body8.i.i_crit_edge ]
  %skipped_first.110.i.i = phi i32 [ 1, %if.end14.i.i.while.body8.i.i_crit_edge ], [ %skipped_first.019.i.i, %while.body.i.i.while.body8.i.i_crit_edge ]
  %maxlen.addr.19.i.i = phi i32 [ %maxlen.addr.2.i.i, %if.end14.i.i.while.body8.i.i_crit_edge ], [ %maxlen.addr.017.i.i, %while.body.i.i.while.body8.i.i_crit_edge ]
  %result.addr.18.i.i = phi ptr [ %result.addr.2.i.i, %if.end14.i.i.while.body8.i.i_crit_edge ], [ %result.addr.016.i.i, %while.body.i.i.while.body8.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skipped_first.110.i.i)
  %tobool9.not.i.i = icmp eq i32 %skipped_first.110.i.i, 0
  br i1 %tobool9.not.i.i, label %while.body8.i.i.if.end14.i.i_crit_edge, label %if.then.i.i

while.body8.i.i.if.end14.i.i_crit_edge:           ; preds = %while.body8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i.i

if.then.i.i:                                      ; preds = %while.body8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %maxlen.addr.19.i.i)
  %cmp.i.i27 = icmp ult i32 %maxlen.addr.19.i.i, 2
  br i1 %cmp.i.i27, label %if.then.i.i.tail.i.i_crit_edge, label %if.end.i.i

if.then.i.i.tail.i.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tail.i.i

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %result.addr.18.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %result.addr.18.i.i, align 1
  %incdec.ptr12.i.i = getelementptr i8, ptr %result.addr.18.i.i, i32 1
  %dec13.i.i = add i32 %maxlen.addr.19.i.i, -1
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.end.i.i, %while.body8.i.i.if.end14.i.i_crit_edge
  %result.addr.2.i.i = phi ptr [ %incdec.ptr12.i.i, %if.end.i.i ], [ %result.addr.18.i.i, %while.body8.i.i.if.end14.i.i_crit_edge ]
  %maxlen.addr.2.i.i = phi i32 [ %dec13.i.i, %if.end.i.i ], [ %maxlen.addr.19.i.i, %while.body8.i.i.if.end14.i.i_crit_edge ]
  %incdec.ptr15.i.i = getelementptr i8, ptr %tptr.011.i.i, i32 1
  %78 = ptrtoint ptr %incdec.ptr15.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %incdec.ptr15.i.i, align 1
  %tobool7.not.i.i = icmp eq i8 %79, 0
  br i1 %tobool7.not.i.i, label %if.end14.i.i.while.cond.loopexit.i.i_crit_edge, label %if.end14.i.i.while.body8.i.i_crit_edge

if.end14.i.i.while.body8.i.i_crit_edge:           ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body8.i.i

if.end14.i.i.while.cond.loopexit.i.i_crit_edge:   ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.loopexit.i.i

tail.i.i:                                         ; preds = %if.then.i.i.tail.i.i_crit_edge, %while.cond.loopexit.i.i.tail.i.i_crit_edge
  %result.addr.3.i.i = phi ptr [ %result.addr.18.i.i, %if.then.i.i.tail.i.i_crit_edge ], [ %result.addr.1.lcssa.i.i, %while.cond.loopexit.i.i.tail.i.i_crit_edge ]
  %maxlen.addr.3.i.i = phi i32 [ %maxlen.addr.19.i.i, %if.then.i.i.tail.i.i_crit_edge ], [ %maxlen.addr.1.lcssa.i.i, %while.cond.loopexit.i.i.tail.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen.addr.3.i.i)
  %tobool17.not.i.i = icmp eq i32 %maxlen.addr.3.i.i, 0
  br i1 %tobool17.not.i.i, label %tail.i.i.get_ksymbol_core.exit_crit_edge, label %tail.i.i.if.then18.i.i_crit_edge

tail.i.i.if.then18.i.i_crit_edge:                 ; preds = %tail.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18.i.i

tail.i.i.get_ksymbol_core.exit_crit_edge:         ; preds = %tail.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_ksymbol_core.exit

if.then18.i.i:                                    ; preds = %tail.i.i.if.then18.i.i_crit_edge, %if.end6.if.then18.i.i_crit_edge
  %result.addr.329.i.i = phi ptr [ %result.addr.3.i.i, %tail.i.i.if.then18.i.i_crit_edge ], [ %name.i25, %if.end6.if.then18.i.i_crit_edge ]
  %80 = ptrtoint ptr %result.addr.329.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %result.addr.329.i.i, align 1
  br label %get_ksymbol_core.exit

get_ksymbol_core.exit:                            ; preds = %if.then18.i.i, %tail.i.i.get_ksymbol_core.exit_crit_edge
  %add1.i.i = add i32 %add.i12.i, %conv.i.i26
  %81 = ptrtoint ptr %nameoff.i21 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add1.i.i, ptr %nameoff.i21, align 4
  %82 = ptrtoint ptr %iter to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %iter, align 8
  %inc = add i64 %83, 1
  store i64 %inc, ptr %iter, align 8
  br label %return

return:                                           ; preds = %get_ksymbol_core.exit, %if.end30.i, %land.lhs.true26.i.return_crit_edge, %land.lhs.true17.i.return_crit_edge, %land.lhs.true8.i.return_crit_edge, %land.lhs.true.i.return_crit_edge
  %retval.0 = phi i32 [ 1, %get_ksymbol_core.exit ], [ %call2.lobit.not.i.i, %if.end30.i ], [ 1, %land.lhs.true.i.return_crit_edge ], [ 1, %land.lhs.true8.i.return_crit_edge ], [ 1, %land.lhs.true17.i.return_crit_edge ], [ 1, %land.lhs.true26.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kallsyms_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_create(ptr noundef nonnull @.str.7, i16 noundef zeroext 292, ptr noundef null, ptr noundef nonnull @kallsyms_proc_ops) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_gate_area_no_mm(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ftrace_mod_address_lookup(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @module_get_kallsym(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ftrace_mod_get_kallsym(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_get_kallsym(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kprobe_get_kallsym(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kallsyms_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__seq_open_private(ptr noundef %file, ptr noundef nonnull @kallsyms_op, i32 noundef 248) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %name.i = getelementptr inbounds %struct.kallsym_iter, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %name.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %name.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kallsyms_markers to i32))
  %1 = load i32, ptr @kallsyms_markers, align 4
  %nameoff.i = getelementptr inbounds %struct.kallsym_iter, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %nameoff.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %nameoff.i, align 4
  %f_cred = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 12
  %3 = call ptr @memset(ptr %call, i32 0, i32 40)
  %4 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_cred, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kptr_restrict to i32))
  %6 = load i32, ptr @kptr_restrict, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %6, label %if.end.sw.default.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %if.end.sw.bb1.i_crit_edge
  ]

if.end.sw.bb1.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

if.end.sw.default.i_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default.i

sw.bb.i:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_perf_event_paranoid to i32))
  %8 = load i32, ptr @sysctl_perf_event_paranoid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i.i = icmp sgt i32 %8, 1
  br i1 %cmp.i.i, label %sw.bb.i.sw.bb1.i_crit_edge, label %sw.bb.i.kallsyms_show_value.exit_crit_edge

sw.bb.i.kallsyms_show_value.exit_crit_edge:       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kallsyms_show_value.exit

sw.bb.i.sw.bb1.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

sw.bb1.i:                                         ; preds = %sw.bb.i.sw.bb1.i_crit_edge, %if.end.sw.bb1.i_crit_edge
  %call2.i = tail call i32 @security_capable(ptr noundef %5, ptr noundef nonnull @init_user_ns, i32 noundef 34, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %sw.bb1.i.kallsyms_show_value.exit_crit_edge, label %sw.bb1.i.sw.default.i_crit_edge

sw.bb1.i.sw.default.i_crit_edge:                  ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default.i

sw.bb1.i.kallsyms_show_value.exit_crit_edge:      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kallsyms_show_value.exit

sw.default.i:                                     ; preds = %sw.bb1.i.sw.default.i_crit_edge, %if.end.sw.default.i_crit_edge
  br label %kallsyms_show_value.exit

kallsyms_show_value.exit:                         ; preds = %sw.default.i, %sw.bb1.i.kallsyms_show_value.exit_crit_edge, %sw.bb.i.kallsyms_show_value.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.default.i ], [ 1, %sw.bb.i.kallsyms_show_value.exit_crit_edge ], [ 1, %sw.bb1.i.kallsyms_show_value.exit_crit_edge ]
  %show_value = getelementptr inbounds %struct.kallsym_iter, ptr %call, i32 0, i32 11
  %9 = ptrtoint ptr %show_value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %retval.0.i, ptr %show_value, align 4
  br label %cleanup

cleanup:                                          ; preds = %kallsyms_show_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %kallsyms_show_value.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release_private(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__seq_open_private(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @s_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %call = tail call fastcc i32 @update_iter(ptr noundef %1, i64 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %5, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @s_stop(ptr nocapture noundef %m, ptr nocapture noundef %p) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @s_next(ptr nocapture noundef readonly %m, ptr noundef readnone %p, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %call = tail call fastcc i32 @update_iter(ptr noundef %3, i64 noundef %inc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %.p = select i1 %tobool.not, ptr null, ptr %p
  ret ptr %.p
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s_show(ptr noundef %m, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %name = getelementptr inbounds %struct.kallsym_iter, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %show_value = getelementptr inbounds %struct.kallsym_iter, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %show_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %show_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %value2 = getelementptr inbounds %struct.kallsym_iter, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value2, align 8
  %8 = inttoptr i32 %7 to ptr
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %8, %cond.true ], [ null, %if.end.cond.end_crit_edge ]
  %module_name = getelementptr inbounds %struct.kallsym_iter, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %module_name to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %module_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %exported = getelementptr inbounds %struct.kallsym_iter, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %exported to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %exported, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not = icmp eq i32 %12, 0
  %type10 = getelementptr inbounds %struct.kallsym_iter, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %type10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type10, align 8
  %conv.i39 = zext i8 %14 to i32
  %arrayidx.i40 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i39
  %15 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i40, align 1
  %. = select i1 %tobool6.not, i8 1, i8 2
  %.46 = select i1 %tobool6.not, i8 32, i8 -32
  %17 = and i8 %16, %.
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.not.i41 = icmp eq i8 %17, 0
  %sub.i42 = select i1 %cmp.not.i41, i8 0, i8 %.46
  %spec.select.i43 = add i8 %14, %sub.i42
  %conv16 = zext i8 %spec.select.i43 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, ptr noundef %cond, i32 noundef %conv16, ptr noundef %name, ptr noundef %module_name) #9
  br label %cleanup

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %type20 = getelementptr inbounds %struct.kallsym_iter, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %type20 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %type20, align 8
  %conv21 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.9, ptr noundef %cond, i32 noundef %conv21, ptr noundef %name) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then5, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__ksymtab_sprint_symbol, !1, !"__ksymtab_sprint_symbol", i1 false, i1 false}
!1 = !{!"../kernel/kallsyms.c", i32 496, i32 1}
!2 = !{ptr @__ksymtab_sprint_symbol_build_id, !3, !"__ksymtab_sprint_symbol_build_id", i1 false, i1 false}
!3 = !{!"../kernel/kallsyms.c", i32 513, i32 1}
!4 = !{ptr @__ksymtab_sprint_symbol_no_offset, !5, !"__ksymtab_sprint_symbol_no_offset", i1 false, i1 false}
!5 = !{!"../kernel/kallsyms.c", i32 530, i32 1}
!6 = !{ptr @kdb_walk_kallsyms.kdb_walk_kallsyms_iter, !7, !"kdb_walk_kallsyms_iter", i1 false, i1 false}
!7 = !{!"../kernel/kallsyms.c", i32 858, i32 29}
!8 = !{ptr @__initcall__kmod_kallsyms__404_887_kallsyms_init6, !9, !"__initcall__kmod_kallsyms__404_887_kallsyms_init6", i1 false, i1 false}
!9 = !{!"../kernel/kallsyms.c", i32 887, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/kallsyms.c", i32 454, i32 26}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/kallsyms.c", i32 462, i32 32}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../kernel/kallsyms.c", i32 465, i32 32}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/kallsyms.c", i32 472, i32 33}
!18 = distinct !{null, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/kallsyms.c", i32 475, i32 32}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/kallsyms.c", i32 644, i32 29}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/kallsyms.c", i32 664, i32 29}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/kallsyms.c", i32 884, i32 14}
!26 = !{ptr @kallsyms_proc_ops, !27, !"kallsyms_proc_ops", i1 false, i1 false}
!27 = !{!"../kernel/kallsyms.c", i32 875, i32 30}
!28 = !{ptr @kallsyms_op, !29, !"kallsyms_op", i1 false, i1 false}
!29 = !{!"../kernel/kallsyms.c", i32 792, i32 36}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/kallsyms.c", i32 784, i32 17}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/kallsyms.c", i32 787, i32 17}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{i64 2157244450, i64 2157244932, i64 2157244487, i64 2157244543, i64 2157244577, i64 2157244601, i64 2157244642, i64 2157244663, i64 2157244691, i64 2157244725}
!45 = !{!"auto-init"}
