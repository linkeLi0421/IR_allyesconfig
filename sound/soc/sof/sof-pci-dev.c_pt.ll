; ModuleID = '/llk/IR_all_yes/sound/soc/sof/sof-pci-dev.c_pt.bc'
source_filename = "../sound/soc/sof/sof-pci-dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sof_pci_pm\22, \22a\22\09"
module asm "\09.weak\09__crc_sof_pci_pm\09\09\09\09"
module asm "\09.long\09__crc_sof_pci_pm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sof_pci_pm:\09\09\09\09\09"
module asm "\09.asciz \09\22sof_pci_pm\22\09\09\09\09\09"
module asm "__kstrtabns_sof_pci_pm:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_PCI_DEV\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sof_pci_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_sof_pci_probe\09\09\09\09"
module asm "\09.long\09__crc_sof_pci_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sof_pci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22sof_pci_probe\22\09\09\09\09\09"
module asm "__kstrtabns_sof_pci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_PCI_DEV\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sof_pci_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_sof_pci_remove\09\09\09\09"
module asm "\09.long\09__crc_sof_pci_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sof_pci_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22sof_pci_remove\22\09\09\09\09\09"
module asm "__kstrtabns_sof_pci_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_PCI_DEV\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sof_pci_shutdown\22, \22a\22\09"
module asm "\09.weak\09__crc_sof_pci_shutdown\09\09\09\09"
module asm "\09.long\09__crc_sof_pci_shutdown\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sof_pci_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22sof_pci_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_sof_pci_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_PCI_DEV\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.72, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.72 = type { ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sof_dev_desc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_sof_pdata = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_fw_path = internal constant [20 x i8] c"snd_sof_pci.fw_path\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@fw_path = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_fw_path = internal constant %struct.kernel_param { ptr @__param_str_fw_path, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @fw_path } }, section "__param", align 4
@__UNIQUE_ID_fw_pathtype247 = internal constant [35 x i8] c"snd_sof_pci.parmtype=fw_path:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_fw_path248 = internal constant [58 x i8] c"snd_sof_pci.parm=fw_path:alternate path for SOF firmware.\00", section ".modinfo", align 1
@__param_str_tplg_path = internal constant [22 x i8] c"snd_sof_pci.tplg_path\00", align 1
@tplg_path = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_tplg_path = internal constant %struct.kernel_param { ptr @__param_str_tplg_path, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @tplg_path } }, section "__param", align 4
@__UNIQUE_ID_tplg_pathtype249 = internal constant [37 x i8] c"snd_sof_pci.parmtype=tplg_path:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_tplg_path250 = internal constant [60 x i8] c"snd_sof_pci.parm=tplg_path:alternate path for SOF topology.\00", section ".modinfo", align 1
@__param_str_sof_pci_debug = internal constant [26 x i8] c"snd_sof_pci.sof_pci_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@sof_pci_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_sof_pci_debug = internal constant %struct.kernel_param { ptr @__param_str_sof_pci_debug, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @sof_pci_debug } }, section "__param", align 4
@__UNIQUE_ID_sof_pci_debugtype251 = internal constant [39 x i8] c"snd_sof_pci.parmtype=sof_pci_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_sof_pci_debug252 = internal constant [67 x i8] c"snd_sof_pci.parm=sof_pci_debug:SOF PCI debug options (0x0 all off)\00", section ".modinfo", align 1
@sof_pci_pm = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @snd_sof_prepare, ptr @snd_sof_complete, ptr @snd_sof_suspend, ptr @snd_sof_resume, ptr @snd_sof_suspend, ptr @snd_sof_resume, ptr @snd_sof_suspend, ptr @snd_sof_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_sof_runtime_suspend, ptr @snd_sof_runtime_resume, ptr @snd_sof_runtime_idle }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_sof_pci_pm = external dso_local constant [0 x i8], align 1
@__kstrtabns_sof_pci_pm = external dso_local constant [0 x i8], align 1
@__ksymtab_sof_pci_pm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sof_pci_pm to i32), ptr @__kstrtab_sof_pci_pm, ptr @__kstrtabns_sof_pci_pm }, section "___ksymtab+sof_pci_pm", align 4
@sof_pci_probe.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_sof_pci\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sof_pci_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/sof/sof-pci-dev.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PCI DSP detected\00", [47 x i8] zeroinitializer }, align 32
@sof_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 134, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error: no matching PCI descriptor ops\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sof_pci_probe._entry_ptr = internal global ptr @sof_pci_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Audio DSP\00", [22 x i8] zeroinitializer }, align 32
@sof_pci_probe.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Module parameter used, changed fw path to %s\0A\00", [50 x i8] zeroinitializer }, align 32
@__kstrtab_sof_pci_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_sof_pci_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_sof_pci_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sof_pci_probe to i32), ptr @__kstrtab_sof_pci_probe, ptr @__kstrtabns_sof_pci_probe }, section "___ksymtab+sof_pci_probe", align 4
@__kstrtab_sof_pci_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_sof_pci_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_sof_pci_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sof_pci_remove to i32), ptr @__kstrtab_sof_pci_remove, ptr @__kstrtabns_sof_pci_remove }, section "___ksymtab+sof_pci_remove", align 4
@__kstrtab_sof_pci_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_sof_pci_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_sof_pci_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sof_pci_shutdown to i32), ptr @__kstrtab_sof_pci_shutdown, ptr @__kstrtabns_sof_pci_shutdown }, section "___ksymtab+sof_pci_shutdown", align 4
@__UNIQUE_ID_file257 = internal constant [43 x i8] c"snd_sof_pci.file=sound/soc/sof/snd-sof-pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license258 = internal constant [33 x i8] c"snd_sof_pci.license=Dual BSD/GPL\00", section ".modinfo", align 1
@sof_pci_probe_complete.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sof_pci_probe_complete\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Completing SOF PCI probe\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant [8 x i8] c"fw_path\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 22, i32 14 }
@___asan_gen_.22 = private unnamed_addr constant [10 x i8] c"tplg_path\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 26, i32 14 }
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"sof_pci_debug\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 30, i32 12 }
@___asan_gen_.28 = private unnamed_addr constant [11 x i8] c"sof_pci_pm\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 90, i32 25 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 131, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 134, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 146, i32 33 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 166, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [31 x i8] c"../sound/soc/sof/sof-pci-dev.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 101, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_file257, ptr @__UNIQUE_ID_fw_path248, ptr @__UNIQUE_ID_fw_pathtype247, ptr @__UNIQUE_ID_license258, ptr @__UNIQUE_ID_sof_pci_debug252, ptr @__UNIQUE_ID_sof_pci_debugtype251, ptr @__UNIQUE_ID_tplg_path250, ptr @__UNIQUE_ID_tplg_pathtype249, ptr @__ksymtab_sof_pci_pm, ptr @__ksymtab_sof_pci_probe, ptr @__ksymtab_sof_pci_remove, ptr @__ksymtab_sof_pci_shutdown, ptr @__param_fw_path, ptr @__param_sof_pci_debug, ptr @__param_tplg_path, ptr @sof_pci_probe._entry, ptr @sof_pci_probe._entry_ptr, ptr @fw_path, ptr @tplg_path, ptr @sof_pci_debug, ptr @sof_pci_pm, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_path to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tplg_path to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_pci_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_pci_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_runtime_idle(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sof_pci_probe(ptr noundef %pci, ptr nocapture noundef readonly %pci_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %pci_id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pci_probe.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pci_probe, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pci_probe.__UNIQUE_ID_ddebug254, ptr noundef %dev1, ptr noundef nonnull @.str.3) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ops = getelementptr inbounds %struct.sof_dev_desc, ptr %2, i32 0, i32 14
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %tobool5.not = icmp eq ptr %4, null
  br i1 %tobool5.not, label %do.end9, label %if.end10

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #7
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 56, i32 noundef 3520) #4
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @pcim_enable_device(ptr noundef %pci) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.end14.cleanup_crit_edge, label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %call18 = tail call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str.7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end21.pci_name.exit_crit_edge

if.end21.pci_name.exit_crit_edge:                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end21.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %if.end21.pci_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.snd_sof_pdata, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %retval.0.i.i, ptr %name, align 4
  %desc23 = getelementptr inbounds %struct.snd_sof_pdata, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %desc23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %2, ptr %desc23, align 4
  %dev24 = getelementptr inbounds %struct.snd_sof_pdata, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %dev24 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev1, ptr %dev24, align 4
  %default_fw_filename = getelementptr inbounds %struct.sof_dev_desc, ptr %2, i32 0, i32 13
  %12 = ptrtoint ptr %default_fw_filename to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %default_fw_filename, align 4
  %fw_filename = getelementptr inbounds %struct.snd_sof_pdata, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %fw_filename to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %fw_filename, align 4
  %15 = load ptr, ptr @fw_path, align 4
  %tobool25.not = icmp eq ptr %15, null
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  %fw_filename_prefix = getelementptr inbounds %struct.snd_sof_pdata, ptr %call.i, i32 0, i32 7
  %16 = ptrtoint ptr %fw_filename_prefix to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %fw_filename_prefix, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pci_probe.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pci_probe, %if.then39)) #4
          to label %if.end72 [label %if.then39], !srcloc !90

if.then39:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %fw_filename_prefix to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw_filename_prefix, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pci_probe.__UNIQUE_ID_ddebug255, ptr noundef %dev1, ptr noundef nonnull @.str.8, ptr noundef %18) #4
  br label %if.end72

if.else:                                          ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  %default_fw_path69 = getelementptr inbounds %struct.sof_dev_desc, ptr %2, i32 0, i32 11
  %19 = ptrtoint ptr %default_fw_path69 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %default_fw_path69, align 4
  %fw_filename_prefix70 = getelementptr inbounds %struct.snd_sof_pdata, ptr %call.i, i32 0, i32 7
  %21 = ptrtoint ptr %fw_filename_prefix70 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %fw_filename_prefix70, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.else, %if.then39, %if.then26
  %22 = load ptr, ptr @tplg_path, align 4
  %tobool73.not = icmp eq ptr %22, null
  br i1 %tobool73.not, label %if.else75, label %if.end72.if.end78_crit_edge

if.end72.if.end78_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end78

if.else75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %desc23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %desc23, align 4
  %default_tplg_path = getelementptr inbounds %struct.sof_dev_desc, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %default_tplg_path to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %default_tplg_path, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.else75, %if.end72.if.end78_crit_edge
  %.sink = phi ptr [ %26, %if.else75 ], [ %22, %if.end72.if.end78_crit_edge ]
  %27 = getelementptr inbounds %struct.snd_sof_pdata, ptr %call.i, i32 0, i32 9
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %.sink, ptr %27, align 4
  %sof_probe_complete = getelementptr inbounds %struct.snd_sof_pdata, ptr %call.i, i32 0, i32 5
  %29 = ptrtoint ptr %sof_probe_complete to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @sof_pci_probe_complete, ptr %sof_probe_complete, align 4
  %call83 = tail call i32 @snd_sof_device_probe(ptr noundef %dev1, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end78.cleanup_crit_edge, label %if.then85

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then85:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pci_release_regions(ptr noundef %pci) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then85, %if.end78.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end9
  %retval.0 = phi i32 [ -19, %do.end9 ], [ -12, %if.end10.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ %call83, %if.then85 ], [ 0, %if.end78.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sof_pci_probe_complete(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pci_probe_complete.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pci_probe_complete, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pci_probe_complete.__UNIQUE_ID_ddebug253, ptr noundef %dev, ptr noundef nonnull @.str.18) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = load i32, ptr @sof_pci_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %do.end.return_crit_edge

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end5:                                          ; preds = %do.end
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #4
  tail call void @pm_runtime_allow(ptr noundef %dev) #4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #4
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %1 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !91
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #4
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #4, !srcloc !92
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end5.return_crit_edge, label %do.end11.i.i.i.i

if.end5.return_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end11.i.i.i.i:                                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !93
  br label %return

return:                                           ; preds = %do.end11.i.i.i.i, %if.end5.return_crit_edge, %do.end.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_device_probe(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sof_pci_remove(ptr noundef %pci) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %call = tail call i32 @snd_sof_device_remove(ptr noundef %dev) #4
  %call2 = tail call zeroext i1 @snd_sof_device_probe_completed(ptr noundef %dev) #4
  br i1 %call2, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = load i32, ptr @sof_pci_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %usage_count.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #4
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #4, !srcloc !94
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @pci_release_regions(ptr noundef %pci) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_device_remove(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_sof_device_probe_completed(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sof_pci_shutdown(ptr noundef %pci) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %call = tail call i32 @snd_sof_device_shutdown(ptr noundef %dev) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_device_shutdown(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !33, !35, !36, !38, !40, !42, !43, !45, !47, !49, !51, !52, !54, !56, !58, !60, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__param_fw_path, !1, !"__param_fw_path", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_fw_pathtype247, !1, !"__UNIQUE_ID_fw_pathtype247", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_fw_path248, !4, !"__UNIQUE_ID_fw_path248", i1 false, i1 false}
!4 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 24, i32 1}
!5 = !{ptr @__param_tplg_path, !6, !"__param_tplg_path", i1 false, i1 false}
!6 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 27, i32 1}
!7 = !{ptr @__UNIQUE_ID_tplg_pathtype249, !6, !"__UNIQUE_ID_tplg_pathtype249", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_tplg_path250, !9, !"__UNIQUE_ID_tplg_path250", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 28, i32 1}
!10 = !{ptr @__param_sof_pci_debug, !11, !"__param_sof_pci_debug", i1 false, i1 false}
!11 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 31, i32 1}
!12 = !{ptr @__UNIQUE_ID_sof_pci_debugtype251, !11, !"__UNIQUE_ID_sof_pci_debugtype251", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_sof_pci_debug252, !14, !"__UNIQUE_ID_sof_pci_debug252", i1 false, i1 false}
!14 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 32, i32 1}
!15 = !{ptr @sof_pci_pm, !16, !"sof_pci_pm", i1 false, i1 false}
!16 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 90, i32 25}
!17 = !{ptr @__ksymtab_sof_pci_pm, !18, !"__ksymtab_sof_pci_pm", i1 false, i1 false}
!18 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 97, i32 1}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 131, i32 2}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sof_pci_probe.__UNIQUE_ID_ddebug254, !20, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 134, i32 3}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @sof_pci_probe._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @sof_pci_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 146, i32 33}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 166, i32 3}
!35 = !{ptr @sof_pci_probe.__UNIQUE_ID_ddebug255, !34, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!36 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 172, i32 36}
!38 = distinct !{null, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 174, i32 12}
!40 = distinct !{null, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 176, i32 3}
!42 = distinct !{null, !41, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!43 = !{ptr @__ksymtab_sof_pci_probe, !44, !"__ksymtab_sof_pci_probe", i1 false, i1 false}
!44 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 204, i32 1}
!45 = !{ptr @__ksymtab_sof_pci_remove, !46, !"__ksymtab_sof_pci_remove", i1 false, i1 false}
!46 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 219, i32 1}
!47 = !{ptr @__ksymtab_sof_pci_shutdown, !48, !"__ksymtab_sof_pci_shutdown", i1 false, i1 false}
!48 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 225, i32 1}
!49 = !{ptr @__UNIQUE_ID_file257, !50, !"__UNIQUE_ID_file257", i1 false, i1 false}
!50 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 227, i32 1}
!51 = !{ptr @__UNIQUE_ID_license258, !50, !"__UNIQUE_ID_license258", i1 false, i1 false}
!52 = !{ptr @fw_path, !53, !"fw_path", i1 false, i1 false}
!53 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 22, i32 14}
!54 = !{ptr @tplg_path, !55, !"tplg_path", i1 false, i1 false}
!55 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 26, i32 14}
!56 = !{ptr @sof_pci_debug, !57, !"sof_pci_debug", i1 false, i1 false}
!57 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 30, i32 12}
!58 = distinct !{null, !59, !"sof_override_tplg_name", i1 false, i1 false}
!59 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 34, i32 20}
!60 = !{ptr @__param_str_fw_path, !1, !"__param_str_fw_path", i1 false, i1 false}
!61 = !{ptr @__param_str_tplg_path, !6, !"__param_str_tplg_path", i1 false, i1 false}
!62 = !{ptr @__param_str_sof_pci_debug, !11, !"__param_str_sof_pci_debug", i1 false, i1 false}
!63 = distinct !{null, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 76, i32 12}
!65 = distinct !{null, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 82, i32 12}
!67 = distinct !{null, !68, !"community_key_platforms", i1 false, i1 false}
!68 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 74, i32 35}
!69 = distinct !{null, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 51, i32 18}
!71 = distinct !{null, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 60, i32 18}
!73 = distinct !{null, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 68, i32 18}
!75 = distinct !{null, !76, !"sof_tplg_table", i1 false, i1 false}
!76 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 44, i32 35}
!77 = !{ptr @.str.17, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/sof/sof-pci-dev.c", i32 101, i32 2}
!79 = !{ptr @.str.18, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @sof_pci_probe_complete.__UNIQUE_ID_ddebug253, !78, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i64 2148184450, i64 2148184455, i64 2148184468, i64 2148184512, i64 2148184546, i64 2148184567}
!91 = !{i64 2148563143}
!92 = !{i64 1049743, i64 1049768, i64 1049790, i64 1049806, i64 1049818, i64 1049838, i64 1049862, i64 1049878, i64 1049890}
!93 = !{i64 2148563331}
!94 = !{i64 2148563724, i64 2148563750, i64 2148563779, i64 2148563813, i64 2148563844, i64 2148563867}
