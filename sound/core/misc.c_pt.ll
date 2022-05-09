; ModuleID = '/llk/IR_all_yes/sound/core/misc.c_pt.bc'
source_filename = "../sound/core/misc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+release_and_free_resource\22, \22a\22\09"
module asm "\09.weak\09__crc_release_and_free_resource\09\09\09\09"
module asm "\09.long\09__crc_release_and_free_resource\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_release_and_free_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22release_and_free_resource\22\09\09\09\09\09"
module asm "__kstrtabns_release_and_free_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__snd_printk\22, \22a\22\09"
module asm "\09.weak\09__crc___snd_printk\09\09\09\09"
module asm "\09.long\09__crc___snd_printk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___snd_printk:\09\09\09\09\09"
module asm "\09.asciz \09\22__snd_printk\22\09\09\09\09\09"
module asm "__kstrtabns___snd_printk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_pci_quirk_lookup_id\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_pci_quirk_lookup_id\09\09\09\09"
module asm "\09.long\09__crc_snd_pci_quirk_lookup_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pci_quirk_lookup_id:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pci_quirk_lookup_id\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pci_quirk_lookup_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_pci_quirk_lookup\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_pci_quirk_lookup\09\09\09\09"
module asm "\09.long\09__crc_snd_pci_quirk_lookup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_pci_quirk_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_pci_quirk_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_snd_pci_quirk_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.__va_list = type { ptr }
%struct.va_format = type { ptr, ptr }
%struct.snd_pci_quirk = type { i16, i16, i16, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }

@__param_str_debug = internal constant [10 x i8] c"snd.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.41 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype185 = internal constant [23 x i8] c"snd.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug186 = internal constant [41 x i8] c"snd.parm=debug:Debug level (0 = disable)\00", section ".modinfo", align 1
@__kstrtab_release_and_free_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_release_and_free_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_release_and_free_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @release_and_free_resource to i32), ptr @__kstrtab_release_and_free_resource, ptr @__kstrtabns_release_and_free_resource }, section "___ksymtab+release_and_free_resource", align 4
@__const.__snd_printk.verbose_fmt = private unnamed_addr constant [15 x i8] c"ALSA %s:%d %pV\00", align 1
@__snd_printk._entry = internal constant %struct.pi_entry { ptr null, ptr @.str.1, ptr @.str.2, i32 86, ptr null, ptr null }, align 1
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__snd_printk\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sound/core/misc.c\00", [46 x i8] zeroinitializer }, align 32
@__snd_printk._entry_ptr = internal global ptr @__snd_printk._entry, section ".printk_index", align 4
@__kstrtab___snd_printk = external dso_local constant [0 x i8], align 1
@__kstrtabns___snd_printk = external dso_local constant [0 x i8], align 1
@__ksymtab___snd_printk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__snd_printk to i32), ptr @__kstrtab___snd_printk, ptr @__kstrtabns___snd_printk }, section "___ksymtab_gpl+__snd_printk", align 4
@__kstrtab_snd_pci_quirk_lookup_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pci_quirk_lookup_id = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pci_quirk_lookup_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pci_quirk_lookup_id to i32), ptr @__kstrtab_snd_pci_quirk_lookup_id, ptr @__kstrtabns_snd_pci_quirk_lookup_id }, section "___ksymtab+snd_pci_quirk_lookup_id", align 4
@__kstrtab_snd_pci_quirk_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_pci_quirk_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_pci_quirk_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_pci_quirk_lookup to i32), ptr @__kstrtab_snd_pci_quirk_lookup, ptr @__kstrtabns_snd_pci_quirk_lookup }, section "___ksymtab+snd_pci_quirk_lookup", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 8, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 99]
@___asan_gen_.3 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 23, i32 12 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [21 x i8] c"../sound/core/misc.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 86, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_debug186, ptr @__UNIQUE_ID_debugtype185, ptr @__ksymtab___snd_printk, ptr @__ksymtab_release_and_free_resource, ptr @__ksymtab_snd_pci_quirk_lookup, ptr @__ksymtab_snd_pci_quirk_lookup_id, ptr @__param_debug, ptr @__snd_printk._entry, ptr @__snd_printk._entry_ptr, ptr @debug, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @release_and_free_resource(ptr noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %res, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @release_resource(ptr noundef nonnull %res) #7
  tail call void @kfree(ptr noundef nonnull %res) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__snd_printk(i32 noundef %level, ptr noundef %path, i32 noundef %line, ptr noundef %format, ...) #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  %vaf = alloca %struct.va_format, align 4
  %verbose_fmt = alloca [15 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #7
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #7
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %verbose_fmt) #7
  %1 = call ptr @memcpy(ptr %verbose_fmt, ptr @__const.__snd_printk.verbose_fmt, i32 15)
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %level)
  %cmp = icmp ult i32 %2, %level
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.va_start(ptr nonnull %args)
  %4 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %format, ptr %vaf, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %args, ptr %3, align 4
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %format, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.i37 = icmp eq i8 %7, 1
  br i1 %cmp.i37, label %land.lhs.true.i.preheader, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

land.lhs.true.i.preheader:                        ; preds = %if.end
  %8 = ptrtoint ptr %verbose_fmt to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %verbose_fmt.promoted = load i16, ptr %verbose_fmt, align 1
  %9 = ptrtoint ptr %vaf to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %vaf.promoted = load ptr, ptr %vaf, align 1
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end10.land.lhs.true.i_crit_edge, %land.lhs.true.i.preheader
  %add.ptr.i41 = phi ptr [ %add.ptr.i, %if.end10.land.lhs.true.i_crit_edge ], [ %vaf.promoted, %land.lhs.true.i.preheader ]
  %10 = phi i16 [ %17, %if.end10.land.lhs.true.i_crit_edge ], [ %verbose_fmt.promoted, %land.lhs.true.i.preheader ]
  %11 = phi ptr [ %add.ptr.i, %if.end10.land.lhs.true.i_crit_edge ], [ %format, %land.lhs.true.i.preheader ]
  %level_found.0.off038 = phi i1 [ %level_found.1.off0, %if.end10.land.lhs.true.i_crit_edge ], [ false, %land.lhs.true.i.preheader ]
  %arrayidx2.i = getelementptr i8, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx2.i, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %13, label %land.lhs.true.i.while.end.loopexit_crit_edge [
    i8 55, label %land.lhs.true.i.printk_get_level.exit.i_crit_edge
    i8 99, label %land.lhs.true.i.printk_get_level.exit.i_crit_edge42
    i8 48, label %land.lhs.true.i.printk_get_level.exit.i_crit_edge43
    i8 49, label %land.lhs.true.i.printk_get_level.exit.i_crit_edge44
    i8 50, label %land.lhs.true.i.printk_get_level.exit.i_crit_edge45
    i8 51, label %land.lhs.true.i.printk_get_level.exit.i_crit_edge46
    i8 52, label %land.lhs.true.i.printk_get_level.exit.i_crit_edge47
    i8 53, label %land.lhs.true.i.printk_get_level.exit.i_crit_edge48
    i8 54, label %land.lhs.true.i.printk_get_level.exit.i_crit_edge49
  ]

land.lhs.true.i.printk_get_level.exit.i_crit_edge49: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %printk_get_level.exit.i

land.lhs.true.i.printk_get_level.exit.i_crit_edge48: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %printk_get_level.exit.i

land.lhs.true.i.printk_get_level.exit.i_crit_edge47: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %printk_get_level.exit.i

land.lhs.true.i.printk_get_level.exit.i_crit_edge46: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %printk_get_level.exit.i

land.lhs.true.i.printk_get_level.exit.i_crit_edge45: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %printk_get_level.exit.i

land.lhs.true.i.printk_get_level.exit.i_crit_edge44: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %printk_get_level.exit.i

land.lhs.true.i.printk_get_level.exit.i_crit_edge43: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %printk_get_level.exit.i

land.lhs.true.i.printk_get_level.exit.i_crit_edge42: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %printk_get_level.exit.i

land.lhs.true.i.printk_get_level.exit.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %printk_get_level.exit.i

land.lhs.true.i.while.end.loopexit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.loopexit

printk_get_level.exit.i:                          ; preds = %land.lhs.true.i.printk_get_level.exit.i_crit_edge, %land.lhs.true.i.printk_get_level.exit.i_crit_edge42, %land.lhs.true.i.printk_get_level.exit.i_crit_edge43, %land.lhs.true.i.printk_get_level.exit.i_crit_edge44, %land.lhs.true.i.printk_get_level.exit.i_crit_edge45, %land.lhs.true.i.printk_get_level.exit.i_crit_edge46, %land.lhs.true.i.printk_get_level.exit.i_crit_edge47, %land.lhs.true.i.printk_get_level.exit.i_crit_edge48, %land.lhs.true.i.printk_get_level.exit.i_crit_edge49
  %add.ptr.i = getelementptr i8, ptr %11, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 56, i8 %13)
  %cmp6 = icmp ult i8 %13, 56
  br i1 %cmp6, label %if.then7, label %printk_get_level.exit.i.if.end10_crit_edge

printk_get_level.exit.i.if.end10_crit_edge:       ; preds = %printk_get_level.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then7:                                         ; preds = %printk_get_level.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %11, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %printk_get_level.exit.i.if.end10_crit_edge
  %17 = phi i16 [ %16, %if.then7 ], [ %10, %printk_get_level.exit.i.if.end10_crit_edge ]
  %level_found.1.off0 = phi i1 [ true, %if.then7 ], [ %level_found.0.off038, %printk_get_level.exit.i.if.end10_crit_edge ]
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr.i, align 1
  %cmp.i = icmp eq i8 %19, 1
  br i1 %cmp.i, label %if.end10.land.lhs.true.i_crit_edge, label %if.end10.while.end.loopexit_crit_edge

if.end10.while.end.loopexit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.loopexit

if.end10.land.lhs.true.i_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

while.end.loopexit:                               ; preds = %if.end10.while.end.loopexit_crit_edge, %land.lhs.true.i.while.end.loopexit_crit_edge
  %add.ptr.i40 = phi ptr [ %add.ptr.i, %if.end10.while.end.loopexit_crit_edge ], [ %add.ptr.i41, %land.lhs.true.i.while.end.loopexit_crit_edge ]
  %20 = phi i16 [ %17, %if.end10.while.end.loopexit_crit_edge ], [ %10, %land.lhs.true.i.while.end.loopexit_crit_edge ]
  %level_found.0.off0.lcssa.ph = phi i1 [ %level_found.1.off0, %if.end10.while.end.loopexit_crit_edge ], [ %level_found.0.off038, %land.lhs.true.i.while.end.loopexit_crit_edge ]
  %21 = ptrtoint ptr %verbose_fmt to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %20, ptr %verbose_fmt, align 1
  %22 = ptrtoint ptr %vaf to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store ptr %add.ptr.i40, ptr %vaf, align 1
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end.while.end_crit_edge
  %level_found.0.off0.lcssa = phi i1 [ false, %if.end.while.end_crit_edge ], [ %level_found.0.off0.lcssa.ph, %while.end.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %tobool13.not = icmp eq i32 %level, 0
  %or.cond31 = or i1 %tobool13.not, %level_found.0.off0.lcssa
  br i1 %or.cond31, label %while.end.do.end_crit_edge, label %if.then14

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then14:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %verbose_fmt to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 311, ptr %verbose_fmt, align 2
  br label %do.end

do.end:                                           ; preds = %if.then14, %while.end.do.end_crit_edge
  %24 = ptrtoint ptr %path to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %path, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %25)
  %cmp.i32 = icmp eq i8 %25, 47
  br i1 %cmp.i32, label %if.then.i, label %do.end.sanity_file_name.exit_crit_edge

do.end.sanity_file_name.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sanity_file_name.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call ptr @strrchr(ptr noundef %path, i32 noundef 47) #7
  %add.ptr.i33 = getelementptr i8, ptr %call.i, i32 1
  br label %sanity_file_name.exit

sanity_file_name.exit:                            ; preds = %if.then.i, %do.end.sanity_file_name.exit_crit_edge
  %retval.0.i34 = phi ptr [ %add.ptr.i33, %if.then.i ], [ %path, %do.end.sanity_file_name.exit_crit_edge ]
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %verbose_fmt, ptr noundef %retval.0.i34, i32 noundef %line, ptr noundef nonnull %vaf) #10
  call void @llvm.va_end(ptr nonnull %args)
  br label %cleanup

cleanup:                                          ; preds = %sanity_file_name.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %verbose_fmt) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_pci_quirk_lookup_id(i16 noundef zeroext %vendor, i16 noundef zeroext %device, ptr noundef readonly %list) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %q.0 = phi ptr [ %list, %entry ], [ %incdec.ptr, %for.inc ]
  %0 = ptrtoint ptr %q.0 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %q.0, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %lor.rhs, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

lor.rhs:                                          ; preds = %for.cond
  %subdevice = getelementptr inbounds %struct.snd_pci_quirk, ptr %q.0, i32 0, i32 1
  %2 = ptrtoint ptr %subdevice to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %subdevice, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool2.not = icmp eq i16 %3, 0
  br i1 %tobool2.not, label %lor.rhs.cleanup_crit_edge, label %lor.rhs.for.body_crit_edge

lor.rhs.for.body_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %lor.rhs.for.body_crit_edge, %for.cond.for.body_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %vendor)
  %cmp.not = icmp eq i16 %1, %vendor
  br i1 %cmp.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %subdevice7 = getelementptr inbounds %struct.snd_pci_quirk, ptr %q.0, i32 0, i32 1
  %4 = ptrtoint ptr %subdevice7 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %subdevice7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool8.not = icmp eq i16 %5, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %subdevice_mask = getelementptr inbounds %struct.snd_pci_quirk, ptr %q.0, i32 0, i32 2
  %6 = ptrtoint ptr %subdevice_mask to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subdevice_mask, align 4
  %and24 = and i16 %7, %device
  call void @__sanitizer_cov_trace_cmp2(i16 %and24, i16 %5)
  %cmp13 = icmp eq i16 %and24, %5
  br i1 %cmp13, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.snd_pci_quirk, ptr %q.0, i32 1
  br label %for.cond

cleanup:                                          ; preds = %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge
  %retval.0 = phi ptr [ %q.0, %lor.lhs.false.cleanup_crit_edge ], [ %q.0, %if.end.cleanup_crit_edge ], [ null, %lor.rhs.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_pci_quirk_lookup(ptr noundef readonly %pci, ptr noundef readonly %list) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pci, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 9
  %0 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %subsystem_vendor, align 4
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 10
  %2 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %subsystem_device, align 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %if.end
  %q.0.i = phi ptr [ %list, %if.end ], [ %incdec.ptr.i, %for.inc.i ]
  %4 = ptrtoint ptr %q.0.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %q.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

lor.rhs.i:                                        ; preds = %for.cond.i
  %subdevice.i = getelementptr inbounds %struct.snd_pci_quirk, ptr %q.0.i, i32 0, i32 1
  %6 = ptrtoint ptr %subdevice.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subdevice.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool2.not.i = icmp eq i16 %7, 0
  br i1 %tobool2.not.i, label %lor.rhs.i.return_crit_edge, label %lor.rhs.i.for.body.i_crit_edge

lor.rhs.i.for.body.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

lor.rhs.i.return_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

for.body.i:                                       ; preds = %lor.rhs.i.for.body.i_crit_edge, %for.cond.i.for.body.i_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %1)
  %cmp.not.i = icmp eq i16 %5, %1
  br i1 %cmp.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %subdevice7.i = getelementptr inbounds %struct.snd_pci_quirk, ptr %q.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %subdevice7.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %subdevice7.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool8.not.i = icmp eq i16 %9, 0
  br i1 %tobool8.not.i, label %if.end.i.return_crit_edge, label %lor.lhs.false.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false.i:                                  ; preds = %if.end.i
  %subdevice_mask.i = getelementptr inbounds %struct.snd_pci_quirk, ptr %q.0.i, i32 0, i32 2
  %10 = ptrtoint ptr %subdevice_mask.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %subdevice_mask.i, align 4
  %and24.i = and i16 %11, %3
  call void @__sanitizer_cov_trace_cmp2(i16 %and24.i, i16 %9)
  %cmp13.i = icmp eq i16 %and24.i, %9
  br i1 %cmp13.i, label %lor.lhs.false.i.return_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.snd_pci_quirk, ptr %q.0.i, i32 1
  br label %for.cond.i

return:                                           ; preds = %lor.lhs.false.i.return_crit_edge, %if.end.i.return_crit_edge, %lor.rhs.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ null, %lor.rhs.i.return_crit_edge ], [ %q.0.i, %if.end.i.return_crit_edge ], [ %q.0.i, %lor.lhs.false.i.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !16, !18, !20, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../sound/core/misc.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype185, !1, !"__UNIQUE_ID_debugtype185", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug186, !4, !"__UNIQUE_ID_debug186", i1 false, i1 false}
!4 = !{!"../sound/core/misc.c", i32 25, i32 1}
!5 = !{ptr @__ksymtab_release_and_free_resource, !6, !"__ksymtab_release_and_free_resource", i1 false, i1 false}
!6 = !{!"../sound/core/misc.c", i32 36, i32 1}
!7 = distinct !{null, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../sound/core/misc.c", i32 84, i32 23}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/core/misc.c", i32 86, i32 2}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__snd_printk._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @__snd_printk._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab___snd_printk, !15, !"__ksymtab___snd_printk", i1 false, i1 false}
!15 = !{!"../sound/core/misc.c", i32 92, i32 1}
!16 = !{ptr @__ksymtab_snd_pci_quirk_lookup_id, !17, !"__ksymtab_snd_pci_quirk_lookup_id", i1 false, i1 false}
!17 = !{!"../sound/core/misc.c", i32 124, i32 1}
!18 = !{ptr @__ksymtab_snd_pci_quirk_lookup, !19, !"__ksymtab_snd_pci_quirk_lookup", i1 false, i1 false}
!19 = !{!"../sound/core/misc.c", i32 146, i32 1}
!20 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!21 = !{ptr @debug, !22, !"debug", i1 false, i1 false}
!22 = !{!"../sound/core/misc.c", i32 23, i32 12}
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
