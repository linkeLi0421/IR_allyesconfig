; ModuleID = '/llk/IR_all_yes/sound/soc/sof/sof-of-dev.c_pt.bc'
source_filename = "../sound/soc/sof/sof-of-dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sof_of_pm\22, \22a\22\09"
module asm "\09.weak\09__crc_sof_of_pm\09\09\09\09"
module asm "\09.long\09__crc_sof_of_pm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sof_of_pm:\09\09\09\09\09"
module asm "\09.asciz \09\22sof_of_pm\22\09\09\09\09\09"
module asm "__kstrtabns_sof_of_pm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sof_of_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_sof_of_probe\09\09\09\09"
module asm "\09.long\09__crc_sof_of_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sof_of_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22sof_of_probe\22\09\09\09\09\09"
module asm "__kstrtabns_sof_of_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sof_of_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_sof_of_remove\09\09\09\09"
module asm "\09.long\09__crc_sof_of_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sof_of_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22sof_of_remove\22\09\09\09\09\09"
module asm "__kstrtabns_sof_of_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sof_dev_desc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_sof_pdata = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_fw_path = internal constant [19 x i8] c"snd_sof_of.fw_path\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@fw_path = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_fw_path = internal constant %struct.kernel_param { ptr @__param_str_fw_path, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @fw_path } }, section "__param", align 4
@__UNIQUE_ID_fw_pathtype247 = internal constant [34 x i8] c"snd_sof_of.parmtype=fw_path:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_fw_path248 = internal constant [57 x i8] c"snd_sof_of.parm=fw_path:alternate path for SOF firmware.\00", section ".modinfo", align 1
@__param_str_tplg_path = internal constant [21 x i8] c"snd_sof_of.tplg_path\00", align 1
@tplg_path = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_tplg_path = internal constant %struct.kernel_param { ptr @__param_str_tplg_path, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @tplg_path } }, section "__param", align 4
@__UNIQUE_ID_tplg_pathtype249 = internal constant [36 x i8] c"snd_sof_of.parmtype=tplg_path:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_tplg_path250 = internal constant [59 x i8] c"snd_sof_of.parm=tplg_path:alternate path for SOF topology.\00", section ".modinfo", align 1
@sof_of_pm = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @snd_sof_prepare, ptr @snd_sof_complete, ptr @snd_sof_suspend, ptr @snd_sof_resume, ptr @snd_sof_suspend, ptr @snd_sof_resume, ptr @snd_sof_suspend, ptr @snd_sof_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_sof_runtime_suspend, ptr @snd_sof_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_sof_of_pm = external dso_local constant [0 x i8], align 1
@__kstrtabns_sof_of_pm = external dso_local constant [0 x i8], align 1
@__ksymtab_sof_of_pm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sof_of_pm to i32), ptr @__kstrtab_sof_of_pm, ptr @__kstrtabns_sof_of_pm }, section "___ksymtab+sof_of_pm", align 4
@sof_of_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 50, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DT DSP detected\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sof_of_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/sof/sof-of-dev.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sof_of_probe._entry_ptr = internal global ptr @sof_of_probe._entry, section ".printk_index", align 4
@sof_of_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 61, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error: no matching DT descriptor ops\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sof_of_probe._entry_ptr.8 = internal global ptr @sof_of_probe._entry.5, section ".printk_index", align 4
@__kstrtab_sof_of_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_sof_of_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_sof_of_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sof_of_probe to i32), ptr @__kstrtab_sof_of_probe, ptr @__kstrtabns_sof_of_probe }, section "___ksymtab+sof_of_probe", align 4
@__kstrtab_sof_of_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_sof_of_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_sof_of_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sof_of_remove to i32), ptr @__kstrtab_sof_of_remove, ptr @__kstrtabns_sof_of_remove }, section "___ksymtab+sof_of_remove", align 4
@__UNIQUE_ID_file251 = internal constant [41 x i8] c"snd_sof_of.file=sound/soc/sof/snd-sof-of\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [32 x i8] c"snd_sof_of.license=Dual BSD/GPL\00", section ".modinfo", align 1
@___asan_gen_.9 = private unnamed_addr constant [8 x i8] c"fw_path\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 17, i32 14 }
@___asan_gen_.12 = private unnamed_addr constant [10 x i8] c"tplg_path\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 21, i32 14 }
@___asan_gen_.15 = private unnamed_addr constant [10 x i8] c"sof_of_pm\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 25, i32 25 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 50, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [30 x i8] c"../sound/soc/sof/sof-of-dev.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 61, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_fw_path248, ptr @__UNIQUE_ID_fw_pathtype247, ptr @__UNIQUE_ID_license252, ptr @__UNIQUE_ID_tplg_path250, ptr @__UNIQUE_ID_tplg_pathtype249, ptr @__ksymtab_sof_of_pm, ptr @__ksymtab_sof_of_probe, ptr @__ksymtab_sof_of_remove, ptr @__param_fw_path, ptr @__param_tplg_path, ptr @sof_of_probe._entry, ptr @sof_of_probe._entry.5, ptr @sof_of_probe._entry_ptr, ptr @sof_of_probe._entry_ptr.8, ptr @fw_path, ptr @tplg_path, ptr @sof_of_pm, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_path to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tplg_path to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_of_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_of_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_of_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_prepare(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_complete(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_suspend(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_resume(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_runtime_suspend(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_runtime_resume(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sof_of_probe(ptr noundef %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str) #6
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 56, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @device_get_match_data(ptr noundef %dev1) #3
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.sof_dev_desc, ptr %call3, i32 0, i32 14
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %do.end11, label %if.end12

do.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6) #6
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %desc13 = getelementptr inbounds %struct.snd_sof_pdata, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %desc13 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %desc13, align 4
  %dev15 = getelementptr inbounds %struct.snd_sof_pdata, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %dev15 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev15, align 4
  %default_fw_filename = getelementptr inbounds %struct.sof_dev_desc, ptr %call3, i32 0, i32 13
  %4 = ptrtoint ptr %default_fw_filename to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %default_fw_filename, align 4
  %fw_filename = getelementptr inbounds %struct.snd_sof_pdata, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %fw_filename to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %fw_filename, align 4
  %7 = load ptr, ptr @fw_path, align 4
  %tobool16.not = icmp eq ptr %7, null
  br i1 %tobool16.not, label %if.else, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  %default_fw_path = getelementptr inbounds %struct.sof_dev_desc, ptr %call3, i32 0, i32 11
  %8 = ptrtoint ptr %default_fw_path to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %default_fw_path, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.end12.if.end20_crit_edge
  %.sink = phi ptr [ %9, %if.else ], [ %7, %if.end12.if.end20_crit_edge ]
  %10 = getelementptr inbounds %struct.snd_sof_pdata, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %.sink, ptr %10, align 4
  %12 = load ptr, ptr @tplg_path, align 4
  %tobool21.not = icmp eq ptr %12, null
  br i1 %tobool21.not, label %if.else23, label %if.end20.if.end26_crit_edge

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

if.else23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %desc13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %desc13, align 4
  %default_tplg_path = getelementptr inbounds %struct.sof_dev_desc, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %default_tplg_path to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %default_tplg_path, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else23, %if.end20.if.end26_crit_edge
  %.sink50 = phi ptr [ %16, %if.else23 ], [ %12, %if.end20.if.end26_crit_edge ]
  %17 = getelementptr inbounds %struct.snd_sof_pdata, ptr %call.i, i32 0, i32 9
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %.sink50, ptr %17, align 4
  %sof_probe_complete = getelementptr inbounds %struct.snd_sof_pdata, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %sof_probe_complete to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @sof_of_probe_complete, ptr %sof_probe_complete, align 4
  %call27 = tail call i32 @snd_sof_device_probe(ptr noundef %dev1, ptr noundef nonnull %call.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.end26 ], [ -19, %do.end11 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sof_of_probe_complete(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #3
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #3
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #3
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %0 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %call.i5 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #3
  tail call void @pm_runtime_enable(ptr noundef %dev) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_device_probe(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sof_of_remove(ptr noundef %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #3
  %call = tail call i32 @snd_sof_device_remove(ptr noundef %dev) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_device_remove(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !31, !33, !34, !36, !38, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__param_fw_path, !1, !"__param_fw_path", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/sof-of-dev.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_fw_pathtype247, !1, !"__UNIQUE_ID_fw_pathtype247", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_fw_path248, !4, !"__UNIQUE_ID_fw_path248", i1 false, i1 false}
!4 = !{!"../sound/soc/sof/sof-of-dev.c", i32 19, i32 1}
!5 = !{ptr @__param_tplg_path, !6, !"__param_tplg_path", i1 false, i1 false}
!6 = !{!"../sound/soc/sof/sof-of-dev.c", i32 22, i32 1}
!7 = !{ptr @__UNIQUE_ID_tplg_pathtype249, !6, !"__UNIQUE_ID_tplg_pathtype249", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_tplg_path250, !9, !"__UNIQUE_ID_tplg_path250", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/sof-of-dev.c", i32 23, i32 1}
!10 = !{ptr @sof_of_pm, !11, !"sof_of_pm", i1 false, i1 false}
!11 = !{!"../sound/soc/sof/sof-of-dev.c", i32 25, i32 25}
!12 = !{ptr @__ksymtab_sof_of_pm, !13, !"__ksymtab_sof_of_pm", i1 false, i1 false}
!13 = !{!"../sound/soc/sof/sof-of-dev.c", i32 32, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/sof/sof-of-dev.c", i32 50, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sof_of_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sof_of_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/sof/sof-of-dev.c", i32 61, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sof_of_probe._entry.5, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @sof_of_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @__ksymtab_sof_of_probe, !28, !"__ksymtab_sof_of_probe", i1 false, i1 false}
!28 = !{!"../sound/soc/sof/sof-of-dev.c", i32 85, i32 1}
!29 = !{ptr @__ksymtab_sof_of_remove, !30, !"__ksymtab_sof_of_remove", i1 false, i1 false}
!30 = !{!"../sound/soc/sof/sof-of-dev.c", i32 96, i32 1}
!31 = !{ptr @__UNIQUE_ID_file251, !32, !"__UNIQUE_ID_file251", i1 false, i1 false}
!32 = !{!"../sound/soc/sof/sof-of-dev.c", i32 98, i32 1}
!33 = !{ptr @__UNIQUE_ID_license252, !32, !"__UNIQUE_ID_license252", i1 false, i1 false}
!34 = !{ptr @fw_path, !35, !"fw_path", i1 false, i1 false}
!35 = !{!"../sound/soc/sof/sof-of-dev.c", i32 17, i32 14}
!36 = !{ptr @tplg_path, !37, !"tplg_path", i1 false, i1 false}
!37 = !{!"../sound/soc/sof/sof-of-dev.c", i32 21, i32 14}
!38 = !{ptr @__param_str_fw_path, !1, !"__param_str_fw_path", i1 false, i1 false}
!39 = !{ptr @__param_str_tplg_path, !6, !"__param_str_tplg_path", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
