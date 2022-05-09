; ModuleID = '/llk/IR_all_yes/arch/arm/mach-zynq/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-zynq/platsmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+zynq_cpun_start\22, \22a\22\09"
module asm "\09.weak\09__crc_zynq_cpun_start\09\09\09\09"
module asm "\09.long\09__crc_zynq_cpun_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zynq_cpun_start:\09\09\09\09\09"
module asm "\09.asciz \09\22zynq_cpun_start\22\09\09\09\09\09"
module asm "__kstrtabns_zynq_cpun_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@zynq_secondary_trampoline_end = external dso_local global i8, align 1
@zynq_secondary_trampoline = external dso_local global i8, align 1
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@zynq_cpun_start.zero = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@zynq_secondary_trampoline_jump = external dso_local global i8, align 1
@zynq_cpun_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014BOOTUP jump vectors not accessible\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zynq_cpun_start\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"arch/arm/mach-zynq/platsmp.c\00", [35 x i8] zeroinitializer }, align 32
@zynq_cpun_start._entry_ptr = internal global ptr @zynq_cpun_start._entry, section ".printk_index", align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@zynq_cpun_start._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014Can't start CPU%d: Wrong starting address %x\0A\00", [48 x i8] zeroinitializer }, align 32
@zynq_cpun_start._entry_ptr.5 = internal global ptr @zynq_cpun_start._entry.3, section ".printk_index", align 4
@__kstrtab_zynq_cpun_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_zynq_cpun_start = external dso_local constant [0 x i8], align 1
@__ksymtab_zynq_cpun_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zynq_cpun_start to i32), ptr @__kstrtab_zynq_cpun_start, ptr @__kstrtabns_zynq_cpun_start }, section "___ksymtab+zynq_cpun_start", align 4
@zynq_smp_ops = dso_local local_unnamed_addr constant %struct.smp_operations { ptr @zynq_smp_init_cpus, ptr @zynq_smp_prepare_cpus, ptr @zynq_secondary_init, ptr @zynq_boot_secondary, ptr @zynq_cpu_kill, ptr @zynq_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@zynq_scu_base = external dso_local local_unnamed_addr global ptr, align 4
@ncores = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@___asan_gen_.7 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 40, i32 22 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 49, i32 6 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 78, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"ncores\00", align 1
@___asan_gen_.29 = private constant [32 x i8] c"../arch/arm/mach-zynq/platsmp.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 28, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 108, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_zynq_cpun_start, ptr @zynq_cpun_start._entry, ptr @zynq_cpun_start._entry.3, ptr @zynq_cpun_start._entry_ptr, ptr @zynq_cpun_start._entry_ptr.5, ptr @zynq_cpun_start.zero, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @ncores, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_cpun_start.zero to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_cpun_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_cpun_start._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncores to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zynq_cpun_start(i32 noundef %address, i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %address, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end28_crit_edge

entry.do.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %address)
  %tobool1.not = icmp eq i32 %address, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %address, i32 sub (i32 ptrtoint (ptr @zynq_secondary_trampoline_end to i32), i32 ptrtoint (ptr @zynq_secondary_trampoline to i32)))
  %cmp.not = icmp uge i32 %address, sub (i32 ptrtoint (ptr @zynq_secondary_trampoline_end to i32), i32 ptrtoint (ptr @zynq_secondary_trampoline to i32))
  %2 = or i1 %tobool1.not, %cmp.not
  br i1 %2, label %if.then, label %land.lhs.true.do.end28_crit_edge

land.lhs.true.do.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28

if.then:                                          ; preds = %land.lhs.true
  tail call void @zynq_slcr_cpu_stop(i32 noundef %1) #7
  br i1 %tobool1.not, label %if.then.if.end24_crit_edge, label %if.then3

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then3:                                         ; preds = %if.then
  %call = tail call i32 @__virt_to_phys(i32 noundef -1073741824) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then3
  %call6 = tail call ptr @ioremap(i32 noundef 0, i32 noundef sub (i32 ptrtoint (ptr @zynq_secondary_trampoline_end to i32), i32 ptrtoint (ptr @zynq_secondary_trampoline to i32))) #7
  store ptr %call6, ptr @zynq_cpun_start.zero, align 4
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %cleanup31

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  store ptr inttoptr (i32 -1073741824 to ptr), ptr @zynq_cpun_start.zero, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5.if.end10_crit_edge
  %3 = load ptr, ptr @zynq_cpun_start.zero, align 4
  tail call void @mmiocpy(ptr noundef %3, ptr noundef nonnull @zynq_secondary_trampoline, i32 noundef sub (i32 ptrtoint (ptr @zynq_secondary_trampoline_jump to i32), i32 ptrtoint (ptr @zynq_secondary_trampoline to i32))) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !31
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %address)
  %5 = load ptr, ptr @zynq_cpun_start.zero, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 sub (i32 ptrtoint (ptr @zynq_secondary_trampoline_jump to i32), i32 ptrtoint (ptr @zynq_secondary_trampoline to i32))
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #7, !srcloc !32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %6() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end10.outer_flush_range.exit_crit_edge, label %if.then.i

if.end10.outer_flush_range.exit_crit_edge:        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %outer_flush_range.exit

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %7(i32 noundef 0, i32 noundef sub (i32 ptrtoint (ptr @zynq_secondary_trampoline_end to i32), i32 ptrtoint (ptr @zynq_secondary_trampoline to i32))) #7
  br label %outer_flush_range.exit

outer_flush_range.exit:                           ; preds = %if.then.i, %if.end10.outer_flush_range.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !33
  %call20 = tail call i32 @__virt_to_phys(i32 noundef -1073741824) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %outer_flush_range.exit.if.end24_crit_edge, label %if.then22

outer_flush_range.exit.if.end24_crit_edge:        ; preds = %outer_flush_range.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then22:                                        ; preds = %outer_flush_range.exit
  call void @__sanitizer_cov_trace_pc() #9
  %8 = load ptr, ptr @zynq_cpun_start.zero, align 4
  tail call void @iounmap(ptr noundef %8) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %outer_flush_range.exit.if.end24_crit_edge, %if.then.if.end24_crit_edge
  tail call void @zynq_slcr_cpu_start(i32 noundef %1) #7
  br label %cleanup31

do.end28:                                         ; preds = %land.lhs.true.do.end28_crit_edge, %entry.do.end28_crit_edge
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %cpu, i32 noundef %address) #10
  br label %cleanup31

cleanup31:                                        ; preds = %do.end28, %if.end24, %do.end
  %retval.1 = phi i32 [ -1, %do.end28 ], [ 0, %if.end24 ], [ -1, %do.end ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @zynq_slcr_cpu_stop(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zynq_slcr_cpu_start(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zynq_smp_init_cpus() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @zynq_scu_base to i32))
  %0 = load ptr, ptr @zynq_scu_base, align 4
  %call = tail call i32 @scu_get_core_count(ptr noundef %0) #7
  store i32 %call, ptr @ncores, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp sgt i32 %call, 0
  br i1 %cmp5, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %set_cpu_possible.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %set_cpu_possible.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %i.06)
  %cmp.not.i.i.i.i = icmp ugt i32 %1, %i.06
  br i1 %cmp.not.i.i.i.i, label %for.body.set_cpu_possible.exit_crit_edge, label %land.rhs.i.i.i.i

for.body.set_cpu_possible.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_cpu_possible.exit

land.rhs.i.i.i.i:                                 ; preds = %for.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.set_cpu_possible.exit_crit_edge, label %if.then.i.i.i.i, !prof !34

land.rhs.i.i.i.i.set_cpu_possible.exit_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_cpu_possible.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %set_cpu_possible.exit

set_cpu_possible.exit:                            ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.set_cpu_possible.exit_crit_edge, %for.body.set_cpu_possible.exit_crit_edge
  tail call void @_set_bit(i32 noundef %i.06, ptr noundef nonnull @__cpu_possible_mask) #7
  %inc = add nuw nsw i32 %i.06, 1
  %2 = load i32, ptr @ncores, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %2)
  %cmp = icmp slt i32 %inc, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.06)
  %cmp1 = icmp ult i32 %i.06, 3
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %set_cpu_possible.exit.for.body_crit_edge, label %set_cpu_possible.exit.for.end_crit_edge

set_cpu_possible.exit.for.end_crit_edge:          ; preds = %set_cpu_possible.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

set_cpu_possible.exit.for.body_crit_edge:         ; preds = %set_cpu_possible.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %set_cpu_possible.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zynq_smp_prepare_cpus(i32 noundef %max_cpus) #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @zynq_scu_base to i32))
  %0 = load ptr, ptr @zynq_scu_base, align 4
  tail call void @scu_enable(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zynq_secondary_init(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mrc  p15, 0, r12, c15, c0, 0\0Aorr  r12, r12, #1\0Amcr  p15, 0, r12, c15, c0, 0\0A", "~{r12}"() #7, !srcloc !35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_boot_secondary(i32 noundef %cpu, ptr nocapture noundef readnone %idle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @secondary_startup_arm to i32)) #7
  %call1 = tail call i32 @zynq_cpun_start(i32 noundef %call, i32 noundef %cpu)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_cpu_kill(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 5
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %call1 = tail call zeroext i1 @zynq_slcr_cpu_state_read(i32 noundef %cpu) #7
  br i1 %call1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %1
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %while.body.cleanup_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @zynq_slcr_cpu_stop(i32 noundef %cpu) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %while.end ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zynq_cpu_die(i32 noundef %cpu) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @zynq_slcr_cpu_state_write(i32 noundef %cpu, i1 noundef zeroext true) #7
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !21) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %_do_idle = getelementptr inbounds %struct.processor, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %_do_idle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_do_idle, align 4
  %call2 = tail call i32 %7() #7
  br label %for.cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scu_get_core_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scu_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup_arm() #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zynq_slcr_cpu_state_read(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zynq_slcr_cpu_state_write(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20}
!llvm.named.register.sp = !{!21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @zynq_cpun_start.zero, !1, !"zero", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-zynq/platsmp.c", i32 40, i32 22}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-zynq/platsmp.c", i32 49, i32 6}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @zynq_cpun_start._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @zynq_cpun_start._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-zynq/platsmp.c", i32 78, i32 2}
!10 = !{ptr @zynq_cpun_start._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @zynq_cpun_start._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_zynq_cpun_start, !13, !"__ksymtab_zynq_cpun_start", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-zynq/platsmp.c", i32 82, i32 1}
!14 = !{ptr @zynq_smp_ops, !15, !"zynq_smp_ops", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-zynq/platsmp.c", i32 154, i32 29}
!16 = !{ptr @ncores, !17, !"ncores", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-zynq/platsmp.c", i32 28, i32 12}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{!"sp"}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 2153968313}
!32 = !{i64 1299660}
!33 = !{i64 2153968710}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 6482094, i64 6482136, i64 6482166}
