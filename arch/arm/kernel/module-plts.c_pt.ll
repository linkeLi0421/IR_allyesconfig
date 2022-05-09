; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/module-plts.c_pt.bc'
source_filename = "../arch/arm/kernel/module-plts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.elf32_shdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.plt_entries = type { [32 x i32], [32 x i32] }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf32_rel = type { i32, i32 }
%struct.elf32_sym = type { i32, i32, i32, i8, i8, i16 }

@constinit = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493, i32 2029035493], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c".plt\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c".init.plt\00", [22 x i8] zeroinitializer }, align 32
@module_frob_arch_sections._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: module PLT section(s) missing\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"module_frob_arch_sections\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"arch/arm/kernel/module-plts.c\00", [34 x i8] zeroinitializer }, align 32
@module_frob_arch_sections._entry_ptr = internal global ptr @module_frob_arch_sections._entry, section ".printk_index", align 4
@module_frob_arch_sections._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: module symtab section missing\0A\00", [59 x i8] zeroinitializer }, align 32
@module_frob_arch_sections._entry_ptr.7 = internal global ptr @module_frob_arch_sections._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c".init\00", [26 x i8] zeroinitializer }, align 32
@module_frob_arch_sections.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.3, ptr @.str.4, ptr @.str.10, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"module_plts\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: plt=%x, init.plt=%x\0A\00", [39 x i8] zeroinitializer }, align 32
@fixed_plts = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 ptrtoint (ptr @ftrace_caller to i32), i32 ptrtoint (ptr @__gnu_mcount_nc to i32)], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 10, i64 28, i64 29, i64 30]
@__sancov_gen_cov_switch_values.11 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 10, i64 28, i64 29, i64 30]
@__sancov_gen_cov_switch_values.12 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 10, i64 28, i64 29, i64 30]
@___asan_gen_.13 = private unnamed_addr constant [10 x i8] c"constinit\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 227, i32 14 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 229, i32 19 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 236, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 240, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 259, i32 45 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 283, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [11 x i8] c"fixed_plts\00", align 1
@___asan_gen_.48 = private constant [33 x i8] c"../arch/arm/kernel/module-plts.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 24, i32 18 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @module_frob_arch_sections._entry, ptr @module_frob_arch_sections._entry.5, ptr @module_frob_arch_sections._entry_ptr, ptr @module_frob_arch_sections._entry_ptr.7, ptr @constinit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @fixed_plts], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @constinit to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @module_frob_arch_sections._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @module_frob_arch_sections._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixed_plts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_module_plt(ptr nocapture noundef %mod, i32 noundef %loc, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %init_layout.i = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 26
  %0 = ptrtoint ptr %init_layout.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_layout.i, align 16
  %2 = ptrtoint ptr %1 to i32
  %sub.i = sub i32 %loc, %2
  %size.i = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 26, i32 1
  %3 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %4)
  %cmp.i = icmp ult i32 %sub.i, %4
  %core = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 27, i32 1
  %init = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 27, i32 2
  %cond = select i1 %cmp.i, ptr %init, ptr %core
  %plt_ent = getelementptr inbounds %struct.mod_plt_sec, ptr %cond, i32 0, i32 1
  %5 = ptrtoint ptr %plt_ent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %plt_ent, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cond, align 4
  %sh_addr = getelementptr inbounds %struct.elf32_shdr, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %sh_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sh_addr, align 4
  %11 = inttoptr i32 %10 to ptr
  %12 = ptrtoint ptr %plt_ent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %plt_ent, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %plt_ent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %plt_ent, align 4
  %plt_count.i = getelementptr inbounds %struct.mod_plt_sec, ptr %cond, i32 0, i32 2
  %15 = ptrtoint ptr %plt_count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %plt_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.prealloc_fixed.exit_crit_edge

if.end.prealloc_fixed.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %prealloc_fixed.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %plt_count.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %plt_count.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2029035493, ptr %14, align 4
  %arrayidx.1.i = getelementptr [32 x i32], ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2029035493, ptr %arrayidx.1.i, align 4
  %arrayidx.2.i = getelementptr [32 x i32], ptr %14, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2029035493, ptr %arrayidx.2.i, align 4
  %arrayidx.3.i = getelementptr [32 x i32], ptr %14, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2029035493, ptr %arrayidx.3.i, align 4
  %arrayidx.4.i = getelementptr [32 x i32], ptr %14, i32 0, i32 4
  %22 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2029035493, ptr %arrayidx.4.i, align 4
  %arrayidx.5.i = getelementptr [32 x i32], ptr %14, i32 0, i32 5
  %23 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2029035493, ptr %arrayidx.5.i, align 4
  %arrayidx.6.i = getelementptr [32 x i32], ptr %14, i32 0, i32 6
  %24 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2029035493, ptr %arrayidx.6.i, align 4
  %arrayidx.7.i = getelementptr [32 x i32], ptr %14, i32 0, i32 7
  %25 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2029035493, ptr %arrayidx.7.i, align 4
  %arrayidx.8.i = getelementptr [32 x i32], ptr %14, i32 0, i32 8
  %26 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2029035493, ptr %arrayidx.8.i, align 4
  %arrayidx.9.i = getelementptr [32 x i32], ptr %14, i32 0, i32 9
  %27 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2029035493, ptr %arrayidx.9.i, align 4
  %arrayidx.10.i = getelementptr [32 x i32], ptr %14, i32 0, i32 10
  %28 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2029035493, ptr %arrayidx.10.i, align 4
  %arrayidx.11.i = getelementptr [32 x i32], ptr %14, i32 0, i32 11
  %29 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2029035493, ptr %arrayidx.11.i, align 4
  %arrayidx.12.i = getelementptr [32 x i32], ptr %14, i32 0, i32 12
  %30 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2029035493, ptr %arrayidx.12.i, align 4
  %arrayidx.13.i = getelementptr [32 x i32], ptr %14, i32 0, i32 13
  %31 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2029035493, ptr %arrayidx.13.i, align 4
  %arrayidx.14.i = getelementptr [32 x i32], ptr %14, i32 0, i32 14
  %32 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2029035493, ptr %arrayidx.14.i, align 4
  %arrayidx.15.i = getelementptr [32 x i32], ptr %14, i32 0, i32 15
  %33 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2029035493, ptr %arrayidx.15.i, align 4
  %arrayidx.16.i = getelementptr [32 x i32], ptr %14, i32 0, i32 16
  %34 = ptrtoint ptr %arrayidx.16.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2029035493, ptr %arrayidx.16.i, align 4
  %arrayidx.17.i = getelementptr [32 x i32], ptr %14, i32 0, i32 17
  %35 = ptrtoint ptr %arrayidx.17.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2029035493, ptr %arrayidx.17.i, align 4
  %arrayidx.18.i = getelementptr [32 x i32], ptr %14, i32 0, i32 18
  %36 = ptrtoint ptr %arrayidx.18.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2029035493, ptr %arrayidx.18.i, align 4
  %arrayidx.19.i = getelementptr [32 x i32], ptr %14, i32 0, i32 19
  %37 = ptrtoint ptr %arrayidx.19.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2029035493, ptr %arrayidx.19.i, align 4
  %arrayidx.20.i = getelementptr [32 x i32], ptr %14, i32 0, i32 20
  %38 = ptrtoint ptr %arrayidx.20.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2029035493, ptr %arrayidx.20.i, align 4
  %arrayidx.21.i = getelementptr [32 x i32], ptr %14, i32 0, i32 21
  %39 = ptrtoint ptr %arrayidx.21.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2029035493, ptr %arrayidx.21.i, align 4
  %arrayidx.22.i = getelementptr [32 x i32], ptr %14, i32 0, i32 22
  %40 = ptrtoint ptr %arrayidx.22.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2029035493, ptr %arrayidx.22.i, align 4
  %arrayidx.23.i = getelementptr [32 x i32], ptr %14, i32 0, i32 23
  %41 = ptrtoint ptr %arrayidx.23.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2029035493, ptr %arrayidx.23.i, align 4
  %arrayidx.24.i = getelementptr [32 x i32], ptr %14, i32 0, i32 24
  %42 = ptrtoint ptr %arrayidx.24.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2029035493, ptr %arrayidx.24.i, align 4
  %arrayidx.25.i = getelementptr [32 x i32], ptr %14, i32 0, i32 25
  %43 = ptrtoint ptr %arrayidx.25.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2029035493, ptr %arrayidx.25.i, align 4
  %arrayidx.26.i = getelementptr [32 x i32], ptr %14, i32 0, i32 26
  %44 = ptrtoint ptr %arrayidx.26.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2029035493, ptr %arrayidx.26.i, align 4
  %arrayidx.27.i = getelementptr [32 x i32], ptr %14, i32 0, i32 27
  %45 = ptrtoint ptr %arrayidx.27.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2029035493, ptr %arrayidx.27.i, align 4
  %arrayidx.28.i = getelementptr [32 x i32], ptr %14, i32 0, i32 28
  %46 = ptrtoint ptr %arrayidx.28.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2029035493, ptr %arrayidx.28.i, align 4
  %arrayidx.29.i = getelementptr [32 x i32], ptr %14, i32 0, i32 29
  %47 = ptrtoint ptr %arrayidx.29.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2029035493, ptr %arrayidx.29.i, align 4
  %arrayidx.30.i = getelementptr [32 x i32], ptr %14, i32 0, i32 30
  %48 = ptrtoint ptr %arrayidx.30.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2029035493, ptr %arrayidx.30.i, align 4
  %arrayidx.31.i = getelementptr [32 x i32], ptr %14, i32 0, i32 31
  %49 = ptrtoint ptr %arrayidx.31.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2029035493, ptr %arrayidx.31.i, align 4
  %lit.i = getelementptr inbounds %struct.plt_entries, ptr %14, i32 0, i32 1
  %50 = load i64, ptr @fixed_plts, align 8
  %51 = ptrtoint ptr %lit.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 8)
  store i64 %50, ptr %lit.i, align 4
  br label %prealloc_fixed.exit

prealloc_fixed.exit:                              ; preds = %if.end.i, %if.end.prealloc_fixed.exit_crit_edge
  %arrayidx = getelementptr %struct.plt_entries, ptr %14, i32 0, i32 1, i32 0
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %val)
  %cmp5 = icmp eq i32 %53, %val
  br i1 %cmp5, label %prealloc_fixed.exit.if.then6_crit_edge, label %for.inc

prealloc_fixed.exit.if.then6_crit_edge:           ; preds = %prealloc_fixed.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

if.then6:                                         ; preds = %for.inc.if.then6_crit_edge, %prealloc_fixed.exit.if.then6_crit_edge
  %idx.0105.lcssa = phi i32 [ 0, %prealloc_fixed.exit.if.then6_crit_edge ], [ 1, %for.inc.if.then6_crit_edge ]
  %arrayidx7 = getelementptr [32 x i32], ptr %14, i32 0, i32 %idx.0105.lcssa
  br label %cleanup

for.inc:                                          ; preds = %prealloc_fixed.exit
  %arrayidx.1 = getelementptr %struct.plt_entries, ptr %14, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %val)
  %cmp5.1 = icmp eq i32 %55, %val
  br i1 %cmp5.1, label %for.inc.if.then6_crit_edge, label %for.inc.1

for.inc.if.then6_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

for.inc.1:                                        ; preds = %for.inc
  %56 = ptrtoint ptr %plt_count.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %plt_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp9 = icmp sgt i32 %57, 0
  br i1 %cmp9, label %if.then10, label %if.end25.thread

if.then10:                                        ; preds = %for.inc.1
  %sub = add nsw i32 %57, -1
  %div87 = lshr i32 %sub, 5
  %add.ptr = getelementptr %struct.plt_entries, ptr %14, i32 %div87
  %rem = and i32 %sub, 31
  %arrayidx15 = getelementptr %struct.plt_entries, ptr %14, i32 %div87, i32 1, i32 %rem
  %58 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %val)
  %cmp16 = icmp eq i32 %59, %val
  br i1 %cmp16, label %if.then17, label %if.end25

if.then17:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx19 = getelementptr [32 x i32], ptr %add.ptr, i32 0, i32 %rem
  br label %cleanup

if.end25:                                         ; preds = %if.then10
  %rem21 = and i32 %57, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem21)
  %tobool22.not = icmp eq i32 %rem21, 0
  %spec.select.idx = zext i1 %tobool22.not to i32
  %spec.select = getelementptr %struct.plt_entries, ptr %add.ptr, i32 %spec.select.idx
  %inc27 = add nuw i32 %57, 1
  %60 = ptrtoint ptr %plt_count.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %inc27, ptr %plt_count.i, align 4
  %mul = shl i32 %inc27, 3
  %61 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cond, align 4
  %sh_size = getelementptr inbounds %struct.elf32_shdr, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %sh_size to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sh_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %64)
  %cmp30 = icmp ugt i32 %mul, %64
  br i1 %cmp30, label %if.end25.do.body34_crit_edge, label %do.end40, !prof !31

if.end25.do.body34_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body34

if.end25.thread:                                  ; preds = %for.inc.1
  %inc2791 = add nsw i32 %57, 1
  %65 = ptrtoint ptr %plt_count.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %inc2791, ptr %plt_count.i, align 4
  %mul92 = shl i32 %inc2791, 3
  %66 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cond, align 4
  %sh_size93 = getelementptr inbounds %struct.elf32_shdr, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %sh_size93 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sh_size93, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul92, i32 %69)
  %cmp3094 = icmp ugt i32 %mul92, %69
  br i1 %cmp3094, label %if.end25.thread.do.body34_crit_edge, label %if.end25.thread.if.then42_crit_edge, !prof !31

if.end25.thread.if.then42_crit_edge:              ; preds = %if.end25.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42

if.end25.thread.do.body34_crit_edge:              ; preds = %if.end25.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body34

do.body34:                                        ; preds = %if.end25.thread.do.body34_crit_edge, %if.end25.do.body34_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/module-plts.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 88, 0\0A.popsection", ""() #5, !srcloc !32
  unreachable

do.end40:                                         ; preds = %if.end25
  br i1 %tobool22.not, label %do.end40.if.then42_crit_edge, label %if.else

do.end40.if.then42_crit_edge:                     ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42

if.then42:                                        ; preds = %do.end40.if.then42_crit_edge, %if.end25.thread.if.then42_crit_edge
  %plt.095103 = phi ptr [ %spec.select, %do.end40.if.then42_crit_edge ], [ %14, %if.end25.thread.if.then42_crit_edge ]
  %70 = call ptr @memcpy(ptr %plt.095103, ptr @constinit, i32 128)
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %plt.095103, i32 128
  %71 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %val, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %plt.095103, i32 132
  %72 = call ptr @memset(ptr %.compoundliteral.sroa.4.0..sroa_idx, i32 0, i32 124)
  br label %if.end48

if.else:                                          ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx47 = getelementptr %struct.plt_entries, ptr %spec.select, i32 0, i32 1, i32 %rem21
  %73 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %val, ptr %arrayidx47, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then42
  %idx.197101 = phi i32 [ %rem21, %if.else ], [ 0, %if.then42 ]
  %plt.096 = phi ptr [ %spec.select, %if.else ], [ %plt.095103, %if.then42 ]
  %arrayidx50 = getelementptr [32 x i32], ptr %plt.096, i32 0, i32 %idx.197101
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then17, %if.then6
  %retval.0.in = phi ptr [ %arrayidx7, %if.then6 ], [ %arrayidx19, %if.then17 ], [ %arrayidx50, %if.end48 ]
  %retval.0 = ptrtoint ptr %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @module_frob_arch_sections(ptr noundef %ehdr, ptr noundef %sechdrs, ptr nocapture noundef readonly %secstrings, ptr noundef %mod) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %e_shnum = getelementptr inbounds %struct.elf32_hdr, ptr %ehdr, i32 0, i32 12
  %0 = ptrtoint ptr %e_shnum to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %e_shnum, align 4
  %conv = zext i16 %1 to i32
  %add.ptr = getelementptr %struct.elf32_shdr, ptr %sechdrs, i32 %conv
  %cmp197 = icmp ugt ptr %add.ptr, %sechdrs
  br i1 %cmp197, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %init = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 27, i32 2
  %core = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 27, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %s.0199 = phi ptr [ %sechdrs, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %syms.0198 = phi ptr [ null, %for.body.lr.ph ], [ %syms.1, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %s.0199 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s.0199, align 4
  %add.ptr2 = getelementptr i8, ptr %secstrings, i32 %3
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str, ptr noundef %add.ptr2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %s.0199, ptr %core, align 4
  br label %for.inc

if.else:                                          ; preds = %for.body
  %call7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.1, ptr noundef %add.ptr2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.else13

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %s.0199, ptr %init, align 8
  br label %for.inc

if.else13:                                        ; preds = %if.else
  %sh_type = getelementptr inbounds %struct.elf32_shdr, ptr %s.0199, i32 0, i32 1
  %6 = ptrtoint ptr %sh_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sh_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp14 = icmp eq i32 %7, 2
  br i1 %cmp14, label %if.then16, label %if.else13.for.inc_crit_edge

if.else13.for.inc_crit_edge:                      ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then16:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #7
  %sh_addr = getelementptr inbounds %struct.elf32_shdr, ptr %s.0199, i32 0, i32 3
  %8 = ptrtoint ptr %sh_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sh_addr, align 4
  %10 = inttoptr i32 %9 to ptr
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %if.else13.for.inc_crit_edge, %if.then10, %if.then
  %syms.1 = phi ptr [ %syms.0198, %if.then ], [ %syms.0198, %if.then10 ], [ %10, %if.then16 ], [ %syms.0198, %if.else13.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.elf32_shdr, ptr %s.0199, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %syms.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %syms.1, %for.inc.for.end_crit_edge ]
  %core20 = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 27, i32 1
  %11 = ptrtoint ptr %core20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %core20, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %for.end.do.end_crit_edge, label %lor.lhs.false

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %for.end
  %init23 = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 27, i32 2
  %13 = ptrtoint ptr %init23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init23, align 8
  %tobool25.not = icmp eq ptr %14, null
  br i1 %tobool25.not, label %lor.lhs.false.do.end_crit_edge, label %if.end28

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %for.end.do.end_crit_edge
  %name = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 2
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name) #9
  br label %cleanup138

if.end28:                                         ; preds = %lor.lhs.false
  %tobool29.not = icmp eq ptr %syms.0.lcssa, null
  br i1 %tobool29.not, label %do.end33, label %for.cond40.preheader

for.cond40.preheader:                             ; preds = %if.end28
  %s.1201 = getelementptr %struct.elf32_shdr, ptr %sechdrs, i32 1
  %cmp41202 = icmp ult ptr %s.1201, %add.ptr
  br i1 %cmp41202, label %for.cond40.preheader.for.body43_crit_edge, label %for.cond40.preheader.for.end73_crit_edge

for.cond40.preheader.for.end73_crit_edge:         ; preds = %for.cond40.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end73

for.cond40.preheader.for.body43_crit_edge:        ; preds = %for.cond40.preheader
  br label %for.body43

do.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %name35 = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 2
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name35) #9
  br label %cleanup138

for.body43:                                       ; preds = %cleanup.for.body43_crit_edge, %for.cond40.preheader.for.body43_crit_edge
  %s.1206 = phi ptr [ %s.1, %cleanup.for.body43_crit_edge ], [ %s.1201, %for.cond40.preheader.for.body43_crit_edge ]
  %core_plts.0205 = phi i32 [ %core_plts.2, %cleanup.for.body43_crit_edge ], [ 2, %for.cond40.preheader.for.body43_crit_edge ]
  %init_plts.0204 = phi i32 [ %init_plts.2, %cleanup.for.body43_crit_edge ], [ 2, %for.cond40.preheader.for.body43_crit_edge ]
  %sechdrs.pn203 = phi ptr [ %s.1206, %cleanup.for.body43_crit_edge ], [ %sechdrs, %for.cond40.preheader.for.body43_crit_edge ]
  %sh_offset = getelementptr %struct.elf32_shdr, ptr %sechdrs.pn203, i32 1, i32 4
  %15 = ptrtoint ptr %sh_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sh_offset, align 4
  %add.ptr44 = getelementptr i8, ptr %ehdr, i32 %16
  %sh_size = getelementptr %struct.elf32_shdr, ptr %sechdrs.pn203, i32 1, i32 5
  %17 = ptrtoint ptr %sh_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sh_size, align 4
  %div195 = lshr i32 %18, 3
  %sh_info = getelementptr %struct.elf32_shdr, ptr %sechdrs.pn203, i32 1, i32 7
  %19 = ptrtoint ptr %sh_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sh_info, align 4
  %add.ptr45 = getelementptr %struct.elf32_shdr, ptr %sechdrs, i32 %20
  %sh_type46 = getelementptr %struct.elf32_shdr, ptr %sechdrs.pn203, i32 1, i32 1
  %21 = ptrtoint ptr %sh_type46 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sh_type46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %22)
  %cmp47.not = icmp eq i32 %22, 9
  br i1 %cmp47.not, label %if.end50, label %for.body43.cleanup_crit_edge

for.body43.cleanup_crit_edge:                     ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end50:                                         ; preds = %for.body43
  %sh_flags = getelementptr %struct.elf32_shdr, ptr %sechdrs, i32 %20, i32 2
  %23 = ptrtoint ptr %sh_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sh_flags, align 4
  %and = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  br i1 %tobool51.not, label %if.end50.cleanup_crit_edge, label %if.end53

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end53:                                         ; preds = %if.end50
  tail call void @sort(ptr noundef %add.ptr44, i32 noundef %div195, i32 noundef 8, ptr noundef nonnull @cmp_rel, ptr noundef null) #5
  %25 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr45, align 4
  %add.ptr55 = getelementptr i8, ptr %secstrings, i32 %26
  %call56 = tail call i32 @strncmp(ptr noundef %add.ptr55, ptr noundef nonnull dereferenceable(6) @.str.8, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57.not = icmp eq i32 %call56, 0
  %sh_addr64 = getelementptr %struct.elf32_shdr, ptr %sechdrs, i32 %20, i32 3
  %27 = ptrtoint ptr %sh_addr64 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sh_addr64, align 4
  %29 = ptrtoint ptr %sh_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sh_info, align 4
  %call66 = tail call fastcc i32 @count_plts(ptr noundef nonnull %syms.0.lcssa, i32 noundef %28, ptr noundef %add.ptr44, i32 noundef %div195, i32 noundef %30)
  br i1 %cmp57.not, label %if.else63, label %if.then59

if.then59:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %add = add i32 %call66, %core_plts.0205
  br label %cleanup

if.else63:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %add67 = add i32 %call66, %init_plts.0204
  br label %cleanup

cleanup:                                          ; preds = %if.else63, %if.then59, %if.end50.cleanup_crit_edge, %for.body43.cleanup_crit_edge
  %init_plts.2 = phi i32 [ %init_plts.0204, %for.body43.cleanup_crit_edge ], [ %init_plts.0204, %if.end50.cleanup_crit_edge ], [ %init_plts.0204, %if.then59 ], [ %add67, %if.else63 ]
  %core_plts.2 = phi i32 [ %core_plts.0205, %for.body43.cleanup_crit_edge ], [ %core_plts.0205, %if.end50.cleanup_crit_edge ], [ %add, %if.then59 ], [ %core_plts.0205, %if.else63 ]
  %s.1 = getelementptr %struct.elf32_shdr, ptr %s.1206, i32 1
  %cmp41 = icmp ult ptr %s.1, %add.ptr
  br i1 %cmp41, label %cleanup.for.body43_crit_edge, label %cleanup.for.end73_crit_edge

cleanup.for.end73_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end73

cleanup.for.body43_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body43

for.end73:                                        ; preds = %cleanup.for.end73_crit_edge, %for.cond40.preheader.for.end73_crit_edge
  %init_plts.0.lcssa = phi i32 [ 2, %for.cond40.preheader.for.end73_crit_edge ], [ %init_plts.2, %cleanup.for.end73_crit_edge ]
  %core_plts.0.lcssa = phi i32 [ 2, %for.cond40.preheader.for.end73_crit_edge ], [ %core_plts.2, %cleanup.for.end73_crit_edge ]
  %31 = ptrtoint ptr %core20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %core20, align 4
  %sh_type77 = getelementptr inbounds %struct.elf32_shdr, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %sh_type77 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %sh_type77, align 4
  %34 = load ptr, ptr %core20, align 4
  %sh_flags81 = getelementptr inbounds %struct.elf32_shdr, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %sh_flags81 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 6, ptr %sh_flags81, align 4
  %36 = load ptr, ptr %core20, align 4
  %sh_addralign = getelementptr inbounds %struct.elf32_shdr, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %sh_addralign to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 128, ptr %sh_addralign, align 4
  %mul = shl i32 %core_plts.0.lcssa, 3
  %sub = add i32 %mul, -1
  %or = or i32 %sub, 255
  %add85 = add i32 %or, 1
  %38 = load ptr, ptr %core20, align 4
  %sh_size89 = getelementptr inbounds %struct.elf32_shdr, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %sh_size89 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add85, ptr %sh_size89, align 4
  %plt_count = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 27, i32 1, i32 2
  %40 = ptrtoint ptr %plt_count to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %plt_count, align 4
  %plt_ent = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 27, i32 1, i32 1
  %41 = ptrtoint ptr %plt_ent to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %plt_ent, align 4
  %42 = ptrtoint ptr %init23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %init23, align 8
  %sh_type97 = getelementptr inbounds %struct.elf32_shdr, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %sh_type97 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 8, ptr %sh_type97, align 4
  %45 = load ptr, ptr %init23, align 8
  %sh_flags101 = getelementptr inbounds %struct.elf32_shdr, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %sh_flags101 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 6, ptr %sh_flags101, align 4
  %47 = load ptr, ptr %init23, align 8
  %sh_addralign105 = getelementptr inbounds %struct.elf32_shdr, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %sh_addralign105 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 128, ptr %sh_addralign105, align 4
  %mul106 = shl i32 %init_plts.0.lcssa, 3
  %sub107 = add i32 %mul106, -1
  %or108 = or i32 %sub107, 255
  %add109 = add i32 %or108, 1
  %49 = load ptr, ptr %init23, align 8
  %sh_size113 = getelementptr inbounds %struct.elf32_shdr, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %sh_size113 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add109, ptr %sh_size113, align 4
  %plt_count116 = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 27, i32 2, i32 2
  %51 = ptrtoint ptr %plt_count116 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %plt_count116, align 8
  %plt_ent119 = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 27, i32 2, i32 1
  %52 = ptrtoint ptr %plt_ent119 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %plt_ent119, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @module_frob_arch_sections.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@module_frob_arch_sections, %if.then126)) #5
          to label %cleanup138 [label %if.then126], !srcloc !33

if.then126:                                       ; preds = %for.end73
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %core20 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %core20, align 4
  %sh_size130 = getelementptr inbounds %struct.elf32_shdr, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %sh_size130 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sh_size130, align 4
  %57 = ptrtoint ptr %init23 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %init23, align 8
  %sh_size134 = getelementptr inbounds %struct.elf32_shdr, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %sh_size134 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sh_size134, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @module_frob_arch_sections.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef %56, i32 noundef %60) #5
  br label %cleanup138

cleanup138:                                       ; preds = %if.then126, %for.end73, %do.end33, %do.end
  %retval.0 = phi i32 [ -8, %do.end33 ], [ -8, %do.end ], [ 0, %if.then126 ], [ 0, %for.end73 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmp_rel(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %r_info = getelementptr inbounds %struct.elf32_rel, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %r_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %r_info, align 4
  %and = and i32 %1, 255
  %r_info1 = getelementptr inbounds %struct.elf32_rel, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %r_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r_info1, align 4
  %and2 = and i32 %3, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and2)
  %cmp = icmp ult i32 %and, %and2
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and2)
  %cmp7 = icmp ugt i32 %and, %and2
  %conv = zext i1 %cmp7 to i32
  %cond = select i1 %cmp, i32 -1, i32 %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp8 = icmp eq i32 %cond, 0
  br i1 %cmp8, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shr = lshr i32 %1, 8
  %shr12 = lshr i32 %3, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr12)
  %cmp13 = icmp ult i32 %shr, %shr12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr12)
  %cmp21 = icmp ugt i32 %shr, %shr12
  %conv22 = zext i1 %cmp21 to i32
  %cond24 = select i1 %cmp13, i32 -1, i32 %conv22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i.0 = phi i32 [ %cond24, %if.then ], [ %cond, %entry.if.end_crit_edge ]
  ret i32 %i.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @count_plts(ptr nocapture noundef readonly %syms, i32 noundef %base, ptr nocapture noundef readonly %rel, i32 noundef %num, i32 noundef %dstidx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp28 = icmp sgt i32 %num, 0
  br i1 %cmp28, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.031 = phi i32 [ %inc9, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %ret.029 = phi i32 [ %ret.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.elf32_rel, ptr %rel, i32 %i.031
  %r_info = getelementptr %struct.elf32_rel, ptr %rel, i32 %i.031, i32 1
  %0 = ptrtoint ptr %r_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %r_info, align 4
  %trunc = trunc i32 %1 to i8
  %2 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %for.body.for.inc_crit_edge [
    i8 28, label %for.body.sw.bb_crit_edge
    i8 1, label %for.body.sw.bb_crit_edge35
    i8 29, label %for.body.sw.bb_crit_edge36
    i8 10, label %for.body.sw.bb_crit_edge37
    i8 30, label %for.body.sw.bb_crit_edge38
  ]

for.body.sw.bb_crit_edge38:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

for.body.sw.bb_crit_edge37:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

for.body.sw.bb_crit_edge36:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

for.body.sw.bb_crit_edge35:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

for.body.sw.bb_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb:                                            ; preds = %for.body.sw.bb_crit_edge, %for.body.sw.bb_crit_edge35, %for.body.sw.bb_crit_edge36, %for.body.sw.bb_crit_edge37, %for.body.sw.bb_crit_edge38
  %shr = lshr i32 %1, 8
  %st_shndx = getelementptr %struct.elf32_sym, ptr %syms, i32 %shr, i32 5
  %3 = ptrtoint ptr %st_shndx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %st_shndx, align 2
  %conv = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %dstidx)
  %cmp3 = icmp eq i32 %conv, %dstidx
  br i1 %cmp3, label %sw.bb.for.inc_crit_edge, label %if.end

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %sw.bb
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add.i = add i32 %6, %base
  %7 = inttoptr i32 %add.i to ptr
  %8 = ptrtoint ptr %r_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %r_info, align 4
  %trunc.i = trunc i32 %9 to i8
  %10 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %trunc.i, label %do.body.i [
    i8 10, label %if.end.sw.bb.i_crit_edge
    i8 30, label %if.end.sw.bb.i_crit_edge39
    i8 28, label %if.end.sw.bb8.i_crit_edge
    i8 1, label %if.end.sw.bb8.i_crit_edge40
    i8 29, label %if.end.sw.bb8.i_crit_edge41
  ]

if.end.sw.bb8.i_crit_edge41:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8.i

if.end.sw.bb8.i_crit_edge40:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8.i

if.end.sw.bb8.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8.i

if.end.sw.bb.i_crit_edge39:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge39
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %7, align 2
  %13 = and i16 %12, -249
  call void @__sanitizer_cov_trace_const_cmp2(i16 -249, i16 %13)
  %cmp.i = icmp eq i16 %13, -249
  br i1 %cmp.i, label %is_zero_addend_relocation.exit, label %sw.bb.i.if.then7_crit_edge

sw.bb.i.if.then7_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

sw.bb8.i:                                         ; preds = %if.end.sw.bb8.i_crit_edge, %if.end.sw.bb8.i_crit_edge40, %if.end.sw.bb8.i_crit_edge41
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %7, align 4
  %16 = and i32 %15, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777472, i32 %16)
  %cmp10.i = icmp ne i32 %16, -16777472
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.031)
  %tobool.not.i = icmp eq i32 %i.031, 0
  %or.cond = select i1 %cmp10.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond, label %sw.bb8.i.if.then7_crit_edge, label %sw.bb8.i.if.end.i_crit_edge

sw.bb8.i.if.end.i_crit_edge:                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

sw.bb8.i.if.then7_crit_edge:                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/module-plts.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #5, !srcloc !34
  unreachable

is_zero_addend_relocation.exit:                   ; preds = %sw.bb.i
  %arrayidx1.i = getelementptr i16, ptr %7, i32 1
  %17 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx1.i, align 2
  %19 = and i16 %18, -209
  call void @__sanitizer_cov_trace_const_cmp2(i16 -465, i16 %19)
  %cmp6.i = icmp ne i16 %19, -465
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.031)
  %tobool.not.i.old = icmp eq i32 %i.031, 0
  %or.cond25 = select i1 %cmp6.i, i1 true, i1 %tobool.not.i.old
  br i1 %or.cond25, label %is_zero_addend_relocation.exit.if.then7_crit_edge, label %is_zero_addend_relocation.exit.if.end.i_crit_edge

is_zero_addend_relocation.exit.if.end.i_crit_edge: ; preds = %is_zero_addend_relocation.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

is_zero_addend_relocation.exit.if.then7_crit_edge: ; preds = %is_zero_addend_relocation.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

if.end.i:                                         ; preds = %is_zero_addend_relocation.exit.if.end.i_crit_edge, %sw.bb8.i.if.end.i_crit_edge
  %add.ptr1.i = getelementptr %struct.elf32_rel, ptr %arrayidx, i32 -1
  %and.i.i = and i32 %1, 255
  %r_info1.i.i = getelementptr inbounds %struct.elf32_rel, ptr %add.ptr1.i, i32 0, i32 1
  %20 = ptrtoint ptr %r_info1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %r_info1.i.i, align 4
  %and2.i.i = and i32 %21, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %and2.i.i)
  %cmp.i.i = icmp ult i32 %and.i.i, %and2.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %and2.i.i)
  %cmp7.i.i = icmp ugt i32 %and.i.i, %and2.i.i
  %conv.i.i = zext i1 %cmp7.i.i to i32
  %cond.i.i = select i1 %cmp.i.i, i32 -1, i32 %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %cmp8.i.i = icmp eq i32 %cond.i.i, 0
  br i1 %cmp8.i.i, label %if.then.i.i, label %if.end.i.cmp_rel.exit.i_crit_edge

if.end.i.cmp_rel.exit.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cmp_rel.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  %shr12.i.i = lshr i32 %21, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr12.i.i)
  %cmp13.i.i = icmp ult i32 %shr, %shr12.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr12.i.i)
  %cmp21.i.i = icmp ugt i32 %shr, %shr12.i.i
  %conv22.i.i = zext i1 %cmp21.i.i to i32
  br i1 %cmp13.i.i, label %if.then.i.i.if.then7_crit_edge, label %if.then.i.i.cmp_rel.exit.i_crit_edge

if.then.i.i.cmp_rel.exit.i_crit_edge:             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cmp_rel.exit.i

if.then.i.i.if.then7_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

cmp_rel.exit.i:                                   ; preds = %if.then.i.i.cmp_rel.exit.i_crit_edge, %if.end.i.cmp_rel.exit.i_crit_edge
  %i.0.i.i = phi i32 [ %conv22.i.i, %if.then.i.i.cmp_rel.exit.i_crit_edge ], [ %cond.i.i, %if.end.i.cmp_rel.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i)
  %cmp.i20 = icmp eq i32 %i.0.i.i, 0
  br i1 %cmp.i20, label %land.rhs.i21, label %cmp_rel.exit.i.if.then7_crit_edge

cmp_rel.exit.i.if.then7_crit_edge:                ; preds = %cmp_rel.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

land.rhs.i21:                                     ; preds = %cmp_rel.exit.i
  %22 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr1.i, align 4
  %add.i.i = add i32 %23, %base
  %24 = inttoptr i32 %add.i.i to ptr
  %trunc.i.i = trunc i32 %21 to i8
  %25 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %trunc.i.i, label %do.body.i.i [
    i8 10, label %land.rhs.i21.sw.bb.i.i_crit_edge
    i8 30, label %land.rhs.i21.sw.bb.i.i_crit_edge42
    i8 28, label %land.rhs.i21.sw.bb8.i.i_crit_edge
    i8 1, label %land.rhs.i21.sw.bb8.i.i_crit_edge43
    i8 29, label %land.rhs.i21.sw.bb8.i.i_crit_edge44
  ]

land.rhs.i21.sw.bb8.i.i_crit_edge44:              ; preds = %land.rhs.i21
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8.i.i

land.rhs.i21.sw.bb8.i.i_crit_edge43:              ; preds = %land.rhs.i21
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8.i.i

land.rhs.i21.sw.bb8.i.i_crit_edge:                ; preds = %land.rhs.i21
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8.i.i

land.rhs.i21.sw.bb.i.i_crit_edge42:               ; preds = %land.rhs.i21
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i.i

land.rhs.i21.sw.bb.i.i_crit_edge:                 ; preds = %land.rhs.i21
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %land.rhs.i21.sw.bb.i.i_crit_edge, %land.rhs.i21.sw.bb.i.i_crit_edge42
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %24, align 2
  %28 = and i16 %27, -249
  call void @__sanitizer_cov_trace_const_cmp2(i16 -249, i16 %28)
  %cmp.i9.i = icmp eq i16 %28, -249
  br i1 %cmp.i9.i, label %duplicate_rel.exit, label %sw.bb.i.i.if.then7_crit_edge

sw.bb.i.i.if.then7_crit_edge:                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

sw.bb8.i.i:                                       ; preds = %land.rhs.i21.sw.bb8.i.i_crit_edge, %land.rhs.i21.sw.bb8.i.i_crit_edge43, %land.rhs.i21.sw.bb8.i.i_crit_edge44
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %24, align 4
  %31 = and i32 %30, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777472, i32 %31)
  %cmp10.i.i = icmp eq i32 %31, -16777472
  br i1 %cmp10.i.i, label %sw.bb8.i.i.for.inc_crit_edge, label %sw.bb8.i.i.if.then7_crit_edge

sw.bb8.i.i.if.then7_crit_edge:                    ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

sw.bb8.i.i.for.inc_crit_edge:                     ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body.i.i:                                      ; preds = %land.rhs.i21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/kernel/module-plts.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #5, !srcloc !34
  unreachable

duplicate_rel.exit:                               ; preds = %sw.bb.i.i
  %arrayidx1.i.i = getelementptr i16, ptr %24, i32 1
  %32 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx1.i.i, align 2
  %34 = and i16 %33, -209
  call void @__sanitizer_cov_trace_const_cmp2(i16 -465, i16 %34)
  %cmp6.i.i = icmp eq i16 %34, -465
  br i1 %cmp6.i.i, label %duplicate_rel.exit.for.inc_crit_edge, label %duplicate_rel.exit.if.then7_crit_edge

duplicate_rel.exit.if.then7_crit_edge:            ; preds = %duplicate_rel.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

duplicate_rel.exit.for.inc_crit_edge:             ; preds = %duplicate_rel.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then7:                                         ; preds = %duplicate_rel.exit.if.then7_crit_edge, %sw.bb8.i.i.if.then7_crit_edge, %sw.bb.i.i.if.then7_crit_edge, %cmp_rel.exit.i.if.then7_crit_edge, %if.then.i.i.if.then7_crit_edge, %is_zero_addend_relocation.exit.if.then7_crit_edge, %sw.bb8.i.if.then7_crit_edge, %sw.bb.i.if.then7_crit_edge
  %inc = add i32 %ret.029, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %duplicate_rel.exit.for.inc_crit_edge, %sw.bb8.i.i.for.inc_crit_edge, %sw.bb.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.029, %for.body.for.inc_crit_edge ], [ %ret.029, %sw.bb.for.inc_crit_edge ], [ %ret.029, %duplicate_rel.exit.for.inc_crit_edge ], [ %inc, %if.then7 ], [ %ret.029, %sw.bb8.i.i.for.inc_crit_edge ]
  %inc9 = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc9, %num
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_caller() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gnu_mcount_nc() #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/module-plts.c", i32 227, i32 14}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/kernel/module-plts.c", i32 229, i32 19}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/kernel/module-plts.c", i32 236, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @module_frob_arch_sections._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @module_frob_arch_sections._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/kernel/module-plts.c", i32 240, i32 3}
!12 = !{ptr @module_frob_arch_sections._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @module_frob_arch_sections._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/kernel/module-plts.c", i32 259, i32 45}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/kernel/module-plts.c", i32 283, i32 2}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @module_frob_arch_sections.__UNIQUE_ID_ddebug236, !17, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!20 = !{ptr @fixed_plts, !21, !"fixed_plts", i1 false, i1 false}
!21 = !{!"../arch/arm/kernel/module-plts.c", i32 24, i32 18}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{i64 2153964534, i64 2153965027, i64 2153964571, i64 2153964627, i64 2153964661, i64 2153964685, i64 2153964726, i64 2153964747, i64 2153964775, i64 2153964809}
!33 = !{i64 2148866003, i64 2148866008, i64 2148866021, i64 2148866065, i64 2148866099, i64 2148866120}
!34 = !{i64 2153967297, i64 2153967791, i64 2153967334, i64 2153967390, i64 2153967424, i64 2153967448, i64 2153967489, i64 2153967510, i64 2153967538, i64 2153967572}
