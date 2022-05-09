; ModuleID = '/llk/IR_all_yes/sound/soc/sof/sof-acpi-dev.c_pt.bc'
source_filename = "../sound/soc/sof/sof-acpi-dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sof_acpi_pm\22, \22a\22\09"
module asm "\09.weak\09__crc_sof_acpi_pm\09\09\09\09"
module asm "\09.long\09__crc_sof_acpi_pm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sof_acpi_pm:\09\09\09\09\09"
module asm "\09.asciz \09\22sof_acpi_pm\22\09\09\09\09\09"
module asm "__kstrtabns_sof_acpi_pm:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_ACPI_DEV\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sof_acpi_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_sof_acpi_probe\09\09\09\09"
module asm "\09.long\09__crc_sof_acpi_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sof_acpi_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22sof_acpi_probe\22\09\09\09\09\09"
module asm "__kstrtabns_sof_acpi_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_ACPI_DEV\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sof_acpi_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_sof_acpi_remove\09\09\09\09"
module asm "\09.long\09__crc_sof_acpi_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sof_acpi_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22sof_acpi_remove\22\09\09\09\09\09"
module asm "__kstrtabns_sof_acpi_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_ACPI_DEV\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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

@__param_str_fw_path = internal constant [21 x i8] c"snd_sof_acpi.fw_path\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@fw_path = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_fw_path = internal constant %struct.kernel_param { ptr @__param_str_fw_path, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @fw_path } }, section "__param", align 4
@__UNIQUE_ID_fw_pathtype247 = internal constant [36 x i8] c"snd_sof_acpi.parmtype=fw_path:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_fw_path248 = internal constant [59 x i8] c"snd_sof_acpi.parm=fw_path:alternate path for SOF firmware.\00", section ".modinfo", align 1
@__param_str_tplg_path = internal constant [23 x i8] c"snd_sof_acpi.tplg_path\00", align 1
@tplg_path = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_tplg_path = internal constant %struct.kernel_param { ptr @__param_str_tplg_path, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @tplg_path } }, section "__param", align 4
@__UNIQUE_ID_tplg_pathtype249 = internal constant [38 x i8] c"snd_sof_acpi.parmtype=tplg_path:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_tplg_path250 = internal constant [61 x i8] c"snd_sof_acpi.parm=tplg_path:alternate path for SOF topology.\00", section ".modinfo", align 1
@__param_str_sof_acpi_debug = internal constant [28 x i8] c"snd_sof_acpi.sof_acpi_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@sof_acpi_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_sof_acpi_debug = internal constant %struct.kernel_param { ptr @__param_str_sof_acpi_debug, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @sof_acpi_debug } }, section "__param", align 4
@__UNIQUE_ID_sof_acpi_debugtype251 = internal constant [41 x i8] c"snd_sof_acpi.parmtype=sof_acpi_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_sof_acpi_debug252 = internal constant [70 x i8] c"snd_sof_acpi.parm=sof_acpi_debug:SOF ACPI debug options (0x0 all off)\00", section ".modinfo", align 1
@sof_acpi_pm = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @snd_sof_suspend, ptr @snd_sof_resume, ptr @snd_sof_suspend, ptr @snd_sof_resume, ptr @snd_sof_suspend, ptr @snd_sof_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_sof_runtime_suspend, ptr @snd_sof_runtime_resume, ptr @snd_sof_runtime_idle }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_sof_acpi_pm = external dso_local constant [0 x i8], align 1
@__kstrtabns_sof_acpi_pm = external dso_local constant [0 x i8], align 1
@__ksymtab_sof_acpi_pm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sof_acpi_pm to i32), ptr @__kstrtab_sof_acpi_pm, ptr @__kstrtabns_sof_acpi_pm }, section "___ksymtab+sof_acpi_pm", align 4
@sof_acpi_probe.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snd_sof_acpi\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sof_acpi_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/soc/sof/sof-acpi-dev.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ACPI DSP detected\00", [46 x i8] zeroinitializer }, align 32
@sof_acpi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 71, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error: no matching ACPI descriptor ops\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sof_acpi_probe._entry_ptr = internal global ptr @sof_acpi_probe._entry, section ".printk_index", align 4
@__kstrtab_sof_acpi_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_sof_acpi_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_sof_acpi_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sof_acpi_probe to i32), ptr @__kstrtab_sof_acpi_probe, ptr @__kstrtabns_sof_acpi_probe }, section "___ksymtab+sof_acpi_probe", align 4
@__kstrtab_sof_acpi_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_sof_acpi_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_sof_acpi_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sof_acpi_remove to i32), ptr @__kstrtab_sof_acpi_remove, ptr @__kstrtabns_sof_acpi_remove }, section "___ksymtab+sof_acpi_remove", align 4
@__UNIQUE_ID_file255 = internal constant [45 x i8] c"snd_sof_acpi.file=sound/soc/sof/snd-sof-acpi\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [34 x i8] c"snd_sof_acpi.license=Dual BSD/GPL\00", section ".modinfo", align 1
@sof_acpi_probe_complete.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sof_acpi_probe_complete\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Completing SOF ACPI probe\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [8 x i8] c"fw_path\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 25, i32 14 }
@___asan_gen_.12 = private unnamed_addr constant [10 x i8] c"tplg_path\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 29, i32 14 }
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"sof_acpi_debug\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 33, i32 12 }
@___asan_gen_.18 = private unnamed_addr constant [12 x i8] c"sof_acpi_pm\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 39, i32 25 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 64, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 71, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [32 x i8] c"../sound/soc/sof/sof-acpi-dev.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 48, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_fw_path248, ptr @__UNIQUE_ID_fw_pathtype247, ptr @__UNIQUE_ID_license256, ptr @__UNIQUE_ID_sof_acpi_debug252, ptr @__UNIQUE_ID_sof_acpi_debugtype251, ptr @__UNIQUE_ID_tplg_path250, ptr @__UNIQUE_ID_tplg_pathtype249, ptr @__ksymtab_sof_acpi_pm, ptr @__ksymtab_sof_acpi_probe, ptr @__ksymtab_sof_acpi_remove, ptr @__param_fw_path, ptr @__param_sof_acpi_debug, ptr @__param_tplg_path, ptr @sof_acpi_probe._entry, ptr @sof_acpi_probe._entry_ptr, ptr @fw_path, ptr @tplg_path, ptr @sof_acpi_debug, ptr @sof_acpi_pm, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_path to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tplg_path to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_acpi_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_acpi_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_acpi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_suspend(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_resume(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_runtime_suspend(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_runtime_resume(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_runtime_idle(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sof_acpi_probe(ptr noundef %pdev, ptr noundef %desc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_acpi_probe.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_acpi_probe, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !60

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_acpi_probe.__UNIQUE_ID_ddebug254, ptr noundef %dev1, ptr noundef nonnull @.str.3) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 56, i32 noundef 3520) #3
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %ops = getelementptr inbounds %struct.sof_dev_desc, ptr %desc, i32 0, i32 14
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %do.end12, label %if.end13

do.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %desc14 = getelementptr inbounds %struct.snd_sof_pdata, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %desc14 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %desc, ptr %desc14, align 4
  %dev16 = getelementptr inbounds %struct.snd_sof_pdata, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev16, align 4
  %default_fw_filename = getelementptr inbounds %struct.sof_dev_desc, ptr %desc, i32 0, i32 13
  %4 = ptrtoint ptr %default_fw_filename to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %default_fw_filename, align 4
  %fw_filename = getelementptr inbounds %struct.snd_sof_pdata, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %fw_filename to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %fw_filename, align 4
  %7 = load ptr, ptr @fw_path, align 4
  %tobool17.not = icmp eq ptr %7, null
  br i1 %tobool17.not, label %if.else, label %if.end13.if.end21_crit_edge

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  %default_fw_path = getelementptr inbounds %struct.sof_dev_desc, ptr %desc, i32 0, i32 11
  %8 = ptrtoint ptr %default_fw_path to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %default_fw_path, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.end13.if.end21_crit_edge
  %.sink = phi ptr [ %9, %if.else ], [ %7, %if.end13.if.end21_crit_edge ]
  %10 = getelementptr inbounds %struct.snd_sof_pdata, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %.sink, ptr %10, align 4
  %12 = load ptr, ptr @tplg_path, align 4
  %tobool22.not = icmp eq ptr %12, null
  br i1 %tobool22.not, label %if.else24, label %if.end21.if.end27_crit_edge

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

if.else24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %desc14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %desc14, align 4
  %default_tplg_path = getelementptr inbounds %struct.sof_dev_desc, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %default_tplg_path to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %default_tplg_path, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else24, %if.end21.if.end27_crit_edge
  %.sink49 = phi ptr [ %16, %if.else24 ], [ %12, %if.end21.if.end27_crit_edge ]
  %17 = getelementptr inbounds %struct.snd_sof_pdata, ptr %call.i, i32 0, i32 9
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %.sink49, ptr %17, align 4
  %sof_probe_complete = getelementptr inbounds %struct.snd_sof_pdata, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %sof_probe_complete to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @sof_acpi_probe_complete, ptr %sof_probe_complete, align 4
  %call28 = tail call i32 @snd_sof_device_probe(ptr noundef %dev1, ptr noundef nonnull %call.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end12, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.end27 ], [ -19, %do.end12 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sof_acpi_probe_complete(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_acpi_probe_complete.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_acpi_probe_complete, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !60

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_acpi_probe_complete.__UNIQUE_ID_ddebug253, ptr noundef %dev, ptr noundef nonnull @.str.8) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = load i32, ptr @sof_acpi_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %do.end.return_crit_edge

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #3
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #3
  tail call void @pm_runtime_enable(ptr noundef %dev) #3
  br label %return

return:                                           ; preds = %if.end5, %do.end.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_device_probe(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sof_acpi_remove(ptr noundef %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %0 = load i32, ptr @sof_acpi_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @snd_sof_device_remove(ptr noundef %dev1) #3
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
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !33, !35, !37, !38, !40, !42, !44, !45, !46, !47, !49, !50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__param_fw_path, !1, !"__param_fw_path", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/sof-acpi-dev.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_fw_pathtype247, !1, !"__UNIQUE_ID_fw_pathtype247", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_fw_path248, !4, !"__UNIQUE_ID_fw_path248", i1 false, i1 false}
!4 = !{!"../sound/soc/sof/sof-acpi-dev.c", i32 27, i32 1}
!5 = !{ptr @__param_tplg_path, !6, !"__param_tplg_path", i1 false, i1 false}
!6 = !{!"../sound/soc/sof/sof-acpi-dev.c", i32 30, i32 1}
!7 = !{ptr @__UNIQUE_ID_tplg_pathtype249, !6, !"__UNIQUE_ID_tplg_pathtype249", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_tplg_path250, !9, !"__UNIQUE_ID_tplg_path250", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/sof-acpi-dev.c", i32 31, i32 1}
!10 = !{ptr @__param_sof_acpi_debug, !11, !"__param_sof_acpi_debug", i1 false, i1 false}
!11 = !{!"../sound/soc/sof/sof-acpi-dev.c", i32 34, i32 1}
!12 = !{ptr @__UNIQUE_ID_sof_acpi_debugtype251, !11, !"__UNIQUE_ID_sof_acpi_debugtype251", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_sof_acpi_debug252, !14, !"__UNIQUE_ID_sof_acpi_debug252", i1 false, i1 false}
!14 = !{!"../sound/soc/sof/sof-acpi-dev.c", i32 35, i32 1}
!15 = !{ptr @sof_acpi_pm, !16, !"sof_acpi_pm", i1 false, i1 false}
!16 = !{!"../sound/soc/sof/sof-acpi-dev.c", i32 39, i32 25}
!17 = !{ptr @__ksymtab_sof_acpi_pm, !18, !"__ksymtab_sof_acpi_pm", i1 false, i1 false}
!18 = !{!"../sound/soc/sof/sof-acpi-dev.c", i32 44, i32 1}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/sof/sof-acpi-dev.c", i32 64, i32 2}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sof_acpi_probe.__UNIQUE_ID_ddebug254, !20, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/sof/sof-acpi-dev.c", i32 71, i32 3}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @sof_acpi_probe._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @sof_acpi_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @__ksymtab_sof_acpi_probe, !32, !"__ksymtab_sof_acpi_probe", i1 false, i1 false}
!32 = !{!"../sound/soc/sof/sof-acpi-dev.c", i32 98, i32 1}
!33 = !{ptr @__ksymtab_sof_acpi_remove, !34, !"__ksymtab_sof_acpi_remove", i1 false, i1 false}
!34 = !{!"../sound/soc/sof/sof-acpi-dev.c", i32 112, i32 1}
!35 = !{ptr @__UNIQUE_ID_file255, !36, !"__UNIQUE_ID_file255", i1 false, i1 false}
!36 = !{!"../sound/soc/sof/sof-acpi-dev.c", i32 114, i32 1}
!37 = !{ptr @__UNIQUE_ID_license256, !36, !"__UNIQUE_ID_license256", i1 false, i1 false}
!38 = !{ptr @fw_path, !39, !"fw_path", i1 false, i1 false}
!39 = !{!"../sound/soc/sof/sof-acpi-dev.c", i32 25, i32 14}
!40 = !{ptr @tplg_path, !41, !"tplg_path", i1 false, i1 false}
!41 = !{!"../sound/soc/sof/sof-acpi-dev.c", i32 29, i32 14}
!42 = !{ptr @sof_acpi_debug, !43, !"sof_acpi_debug", i1 false, i1 false}
!43 = !{!"../sound/soc/sof/sof-acpi-dev.c", i32 33, i32 12}
!44 = !{ptr @__param_str_fw_path, !1, !"__param_str_fw_path", i1 false, i1 false}
!45 = !{ptr @__param_str_tplg_path, !6, !"__param_str_tplg_path", i1 false, i1 false}
!46 = !{ptr @__param_str_sof_acpi_debug, !11, !"__param_str_sof_acpi_debug", i1 false, i1 false}
!47 = !{ptr @.str.7, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/sof/sof-acpi-dev.c", i32 48, i32 2}
!49 = !{ptr @.str.8, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @sof_acpi_probe_complete.__UNIQUE_ID_ddebug253, !48, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 2148948994, i64 2148948999, i64 2148949012, i64 2148949056, i64 2148949090, i64 2148949111}
