; ModuleID = '/llk/IR_all_yes/sound/hda/intel-dsp-config.c_pt.bc'
source_filename = "../sound/hda/intel-dsp-config.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+snd_intel_dsp_driver_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_intel_dsp_driver_probe\09\09\09\09"
module asm "\09.long\09__crc_snd_intel_dsp_driver_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_intel_dsp_driver_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_intel_dsp_driver_probe\22\09\09\09\09\09"
module asm "__kstrtabns_snd_intel_dsp_driver_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_intel_acpi_dsp_driver_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_intel_acpi_dsp_driver_probe\09\09\09\09"
module asm "\09.long\09__crc_snd_intel_acpi_dsp_driver_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_intel_acpi_dsp_driver_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_intel_acpi_dsp_driver_probe\22\09\09\09\09\09"
module asm "__kstrtabns_snd_intel_acpi_dsp_driver_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.config_entry = type { i32, i16, [9 x i8], ptr, [9 x i8] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
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

@__param_str_dsp_driver = internal constant [28 x i8] c"snd_intel_dspcfg.dsp_driver\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dsp_driver = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_dsp_driver = internal constant %struct.kernel_param { ptr @__param_str_dsp_driver, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @dsp_driver } }, section "__param", align 4
@__UNIQUE_ID_dsp_drivertype238 = internal constant [41 x i8] c"snd_intel_dspcfg.parmtype=dsp_driver:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dsp_driver239 = internal constant [101 x i8] c"snd_intel_dspcfg.parm=dsp_driver:Force the DSP driver for Intel DSP (0=auto, 1=legacy, 2=SST, 3=SOF)\00", section ".modinfo", align 1
@snd_intel_dsp_driver_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 495, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"Unknown PCI class/subclass/prog-if information (0x%06x) found, selecting HDAudio legacy driver\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snd_intel_dsp_driver_probe\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/hda/intel-dsp-config.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_intel_dsp_driver_probe._entry_ptr = internal global ptr @snd_intel_dsp_driver_probe._entry, section ".printk_index", align 4
@snd_intel_dsp_driver_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 499, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"DSP detected with PCI class/subclass/prog-if info 0x%06x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@snd_intel_dsp_driver_probe._entry_ptr.8 = internal global ptr @snd_intel_dsp_driver_probe._entry.5, section ".printk_index", align 4
@config_table = internal constant { [32 x %struct.config_entry], [256 x i8] } { [32 x %struct.config_entry] [%struct.config_entry { i32 2, i16 4506, [9 x i8] zeroinitializer, ptr null, [9 x i8] zeroinitializer }, %struct.config_entry { i32 2, i16 6808, [9 x i8] zeroinitializer, ptr null, [9 x i8] zeroinitializer }, %struct.config_entry { i32 2, i16 23192, [9 x i8] zeroinitializer, ptr @.compoundliteral, [9 x i8] zeroinitializer }, %struct.config_entry { i32 2, i16 23192, [9 x i8] zeroinitializer, ptr null, [9 x i8] c"ESSX8336\00" }, %struct.config_entry { i32 2, i16 12696, [9 x i8] zeroinitializer, ptr @.compoundliteral.23, [9 x i8] zeroinitializer }, %struct.config_entry { i32 2, i16 12696, [9 x i8] zeroinitializer, ptr null, [9 x i8] c"ESSX8336\00" }, %struct.config_entry { i32 2, i16 -25144, [9 x i8] zeroinitializer, ptr @.compoundliteral.24, [9 x i8] zeroinitializer }, %struct.config_entry { i32 196610, i16 -25144, [9 x i8] zeroinitializer, ptr null, [9 x i8] zeroinitializer }, %struct.config_entry { i32 2, i16 -23736, [9 x i8] zeroinitializer, ptr @.compoundliteral.25, [9 x i8] zeroinitializer }, %struct.config_entry { i32 196610, i16 -23736, [9 x i8] zeroinitializer, ptr null, [9 x i8] zeroinitializer }, %struct.config_entry { i32 2, i16 712, [9 x i8] zeroinitializer, ptr @.compoundliteral.26, [9 x i8] zeroinitializer }, %struct.config_entry { i32 2, i16 712, [9 x i8] zeroinitializer, ptr null, [9 x i8] c"ESSX8336\00" }, %struct.config_entry { i32 196610, i16 712, [9 x i8] zeroinitializer, ptr null, [9 x i8] zeroinitializer }, %struct.config_entry { i32 2, i16 1736, [9 x i8] zeroinitializer, ptr @.compoundliteral.27, [9 x i8] zeroinitializer }, %struct.config_entry { i32 2, i16 1736, [9 x i8] zeroinitializer, ptr null, [9 x i8] c"ESSX8336\00" }, %struct.config_entry { i32 196610, i16 1736, [9 x i8] zeroinitializer, ptr null, [9 x i8] zeroinitializer }, %struct.config_entry { i32 2, i16 13512, [9 x i8] zeroinitializer, ptr @.compoundliteral.28, [9 x i8] zeroinitializer }, %struct.config_entry { i32 196610, i16 13512, [9 x i8] zeroinitializer, ptr null, [9 x i8] zeroinitializer }, %struct.config_entry { i32 2, i16 19912, [9 x i8] zeroinitializer, ptr @.compoundliteral.29, [9 x i8] zeroinitializer }, %struct.config_entry { i32 2, i16 19912, [9 x i8] zeroinitializer, ptr null, [9 x i8] c"ESSX8336\00" }, %struct.config_entry { i32 65538, i16 19912, [9 x i8] zeroinitializer, ptr null, [9 x i8] zeroinitializer }, %struct.config_entry { i32 2, i16 -24376, [9 x i8] zeroinitializer, ptr @.compoundliteral.30, [9 x i8] zeroinitializer }, %struct.config_entry { i32 2, i16 -24376, [9 x i8] zeroinitializer, ptr null, [9 x i8] c"ESSX8336\00" }, %struct.config_entry { i32 196610, i16 -24376, [9 x i8] zeroinitializer, ptr null, [9 x i8] zeroinitializer }, %struct.config_entry { i32 196610, i16 17352, [9 x i8] zeroinitializer, ptr null, [9 x i8] zeroinitializer }, %struct.config_entry { i32 65538, i16 19285, [9 x i8] zeroinitializer, ptr null, [9 x i8] zeroinitializer }, %struct.config_entry { i32 65538, i16 19288, [9 x i8] zeroinitializer, ptr null, [9 x i8] zeroinitializer }, %struct.config_entry { i32 196610, i16 31440, [9 x i8] zeroinitializer, ptr null, [9 x i8] zeroinitializer }, %struct.config_entry { i32 196610, i16 20936, [9 x i8] zeroinitializer, ptr null, [9 x i8] zeroinitializer }, %struct.config_entry { i32 196610, i16 20940, [9 x i8] zeroinitializer, ptr null, [9 x i8] zeroinitializer }, %struct.config_entry { i32 196610, i16 20941, [9 x i8] zeroinitializer, ptr null, [9 x i8] zeroinitializer }, %struct.config_entry { i32 196610, i16 21704, [9 x i8] zeroinitializer, ptr null, [9 x i8] zeroinitializer }], [256 x i8] zeroinitializer }, align 32
@snd_intel_dsp_driver_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 509, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"SoundWire enabled on CannonLake+ platform, using SOF driver\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_intel_dsp_driver_probe._entry_ptr.11 = internal global ptr @snd_intel_dsp_driver_probe._entry.9, section ".printk_index", align 4
@snd_intel_dsp_driver_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 514, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Digital mics found on Skylake+ platform, using SOF driver\0A\00", [37 x i8] zeroinitializer }, align 32
@snd_intel_dsp_driver_probe._entry_ptr.14 = internal global ptr @snd_intel_dsp_driver_probe._entry.12, section ".printk_index", align 4
@snd_intel_dsp_driver_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 525, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Digital mics found on Skylake+ platform, using SST driver\0A\00", [37 x i8] zeroinitializer }, align 32
@snd_intel_dsp_driver_probe._entry_ptr.17 = internal global ptr @snd_intel_dsp_driver_probe._entry.15, section ".printk_index", align 4
@__kstrtab_snd_intel_dsp_driver_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_intel_dsp_driver_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_intel_dsp_driver_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_intel_dsp_driver_probe to i32), ptr @__kstrtab_snd_intel_dsp_driver_probe, ptr @__kstrtabns_snd_intel_dsp_driver_probe }, section "___ksymtab_gpl+snd_intel_dsp_driver_probe", align 4
@snd_intel_acpi_dsp_driver_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 609, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"dsp_driver parameter %d not supported, using automatic detection\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"snd_intel_acpi_dsp_driver_probe\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@snd_intel_acpi_dsp_driver_probe._entry_ptr = internal global ptr @snd_intel_acpi_dsp_driver_probe._entry, section ".printk_index", align 4
@acpi_config_table = internal constant { [3 x %struct.config_entry], [32 x i8] } { [3 x %struct.config_entry] [%struct.config_entry { i32 2, i16 0, [9 x i8] c"80860F28\00", ptr null, [9 x i8] zeroinitializer }, %struct.config_entry { i32 2, i16 0, [9 x i8] c"808622A8\00", ptr null, [9 x i8] zeroinitializer }, %struct.config_entry { i32 2, i16 0, [9 x i8] c"INT3438\00\00", ptr null, [9 x i8] zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@__kstrtab_snd_intel_acpi_dsp_driver_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_intel_acpi_dsp_driver_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_intel_acpi_dsp_driver_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_intel_acpi_dsp_driver_probe to i32), ptr @__kstrtab_snd_intel_acpi_dsp_driver_probe, ptr @__kstrtabns_snd_intel_acpi_dsp_driver_probe }, section "___ksymtab_gpl+snd_intel_acpi_dsp_driver_probe", align 4
@__UNIQUE_ID_file240 = internal constant [49 x i8] c"snd_intel_dspcfg.file=sound/hda/snd-intel-dspcfg\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [32 x i8] c"snd_intel_dspcfg.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [53 x i8] c"snd_intel_dspcfg.description=Intel DSP config driver\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns243 = internal constant [52 x i8] c"snd_intel_dspcfg.import_ns=SND_INTEL_SOUNDWIRE_ACPI\00", section ".modinfo", align 1
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Up Squared\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { [2 x %struct.dmi_system_id], [168 x i8] } { [2 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr @.str.21, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 12, [79 x i8] c"AAEON\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 28, [79 x i8] c"UP-APL01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], [168 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Google Chromebooks\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal constant { [2 x %struct.dmi_system_id], [168 x i8] } { [2 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr @.str.22, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 12, [79 x i8] c"Google\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], [168 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal constant { [2 x %struct.dmi_system_id], [168 x i8] } { [2 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr @.str.22, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 12, [79 x i8] c"Google\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], [168 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal constant { [2 x %struct.dmi_system_id], [168 x i8] } { [2 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr @.str.22, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 12, [79 x i8] c"Google\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], [168 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal constant { [4 x %struct.dmi_system_id], [336 x i8] } { [4 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr @.str.22, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 12, [79 x i8] c"Google\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 12, [79 x i8] c"Dell Inc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 23, [79 x i8] c"09C6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 12, [79 x i8] c"Dell Inc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 23, [79 x i8] c"0983\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], [336 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal constant { [3 x %struct.dmi_system_id], [252 x i8] } { [3 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 12, [79 x i8] c"Dell Inc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 23, [79 x i8] c"098F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 12, [79 x i8] c"Dell Inc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 23, [79 x i8] c"0990\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], [252 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal constant { [2 x %struct.dmi_system_id], [168 x i8] } { [2 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr @.str.22, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 12, [79 x i8] c"Google\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], [168 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal constant { [2 x %struct.dmi_system_id], [168 x i8] } { [2 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr @.str.22, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 12, [79 x i8] c"Google\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], [168 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal constant { [2 x %struct.dmi_system_id], [168 x i8] } { [2 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr @.str.22, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 12, [79 x i8] c"Google\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], [168 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 2572, i64 3084, i64 3340, i64 3844, i64 5644, i64 8836]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 262400, i64 262912, i64 263040]
@___asan_gen_.32 = private unnamed_addr constant [11 x i8] c"dsp_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 15, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 495, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 499, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [13 x i8] c"config_table\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 42, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 509, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 514, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 525, i32 5 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 608, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [18 x i8] c"acpi_config_table\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 550, i32 34 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 68, i32 14 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [32 x i8] c"../sound/hda/intel-dsp-config.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 155, i32 14 }
@___asan_gen_.105 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_dsp_driver239, ptr @__UNIQUE_ID_dsp_drivertype238, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_import_ns243, ptr @__UNIQUE_ID_license241, ptr @__ksymtab_snd_intel_acpi_dsp_driver_probe, ptr @__ksymtab_snd_intel_dsp_driver_probe, ptr @__param_dsp_driver, ptr @snd_intel_acpi_dsp_driver_probe._entry, ptr @snd_intel_acpi_dsp_driver_probe._entry_ptr, ptr @snd_intel_dsp_driver_probe._entry, ptr @snd_intel_dsp_driver_probe._entry.12, ptr @snd_intel_dsp_driver_probe._entry.15, ptr @snd_intel_dsp_driver_probe._entry.5, ptr @snd_intel_dsp_driver_probe._entry.9, ptr @snd_intel_dsp_driver_probe._entry_ptr, ptr @snd_intel_dsp_driver_probe._entry_ptr.11, ptr @snd_intel_dsp_driver_probe._entry_ptr.14, ptr @snd_intel_dsp_driver_probe._entry_ptr.17, ptr @snd_intel_dsp_driver_probe._entry_ptr.8, ptr @dsp_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @config_table, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @acpi_config_table, ptr @.str.21, ptr @.compoundliteral, ptr @.str.22, ptr @.compoundliteral.23, ptr @.compoundliteral.24, ptr @.compoundliteral.25, ptr @.compoundliteral.26, ptr @.compoundliteral.27, ptr @.compoundliteral.28, ptr @.compoundliteral.29, ptr @.compoundliteral.30], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_driver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel_dsp_driver_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel_dsp_driver_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_table to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel_dsp_driver_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel_dsp_driver_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel_dsp_driver_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel_acpi_dsp_driver_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acpi_config_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 664, i32 832, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 664, i32 832, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 664, i32 832, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 664, i32 832, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 1328, i32 1664, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 996, i32 1248, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 664, i32 832, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 664, i32 832, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 664, i32 832, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_intel_dsp_driver_probe(ptr noundef %pci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 7
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %1)
  %cmp.not = icmp eq i16 %1, -32634
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %sw.epilog [
    i16 5644, label %if.end.cleanup_crit_edge
    i16 2572, label %if.end.cleanup_crit_edge112
    i16 3084, label %if.end.cleanup_crit_edge113
    i16 3340, label %if.end.cleanup_crit_edge114
    i16 3844, label %if.end.cleanup_crit_edge115
    i16 8836, label %if.end.cleanup_crit_edge116
  ]

if.end.cleanup_crit_edge116:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.cleanup_crit_edge115:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.cleanup_crit_edge114:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.cleanup_crit_edge113:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.cleanup_crit_edge112:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  %5 = load i32, ptr @dsp_driver, align 4
  %6 = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %sw.epilog.cleanup_crit_edge, label %if.end8

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8:                                          ; preds = %sw.epilog
  %class = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 11
  %8 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %class, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %9, label %do.end [
    i32 262912, label %if.end8.cleanup_crit_edge
    i32 262400, label %if.end8.do.end25_crit_edge
    i32 263040, label %if.end8.do.end25_crit_edge117
  ]

if.end8.do.end25_crit_edge117:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end25

if.end8.do.end25_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end25

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %9) #6
  br label %cleanup

do.end25:                                         ; preds = %if.end8.do.end25_crit_edge, %if.end8.do.end25_crit_edge117
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev26, ptr noundef nonnull @.str.6, i32 noundef %9) #6
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %device, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end25
  %len.addr.03.i = phi i32 [ 32, %do.end25 ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %table.addr.01.i = phi ptr [ @config_table, %do.end25 ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %device2.i = getelementptr inbounds %struct.config_entry, ptr %table.addr.01.i, i32 0, i32 1
  %13 = ptrtoint ptr %device2.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %device2.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %12)
  %cmp4.not.i = icmp eq i16 %14, %12
  br i1 %cmp4.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %dmi_table.i = getelementptr inbounds %struct.config_entry, ptr %table.addr.01.i, i32 0, i32 3
  %15 = ptrtoint ptr %dmi_table.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dmi_table.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end9.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.end9.i:                                        ; preds = %if.end.i
  %codec_hid.i = getelementptr inbounds %struct.config_entry, ptr %table.addr.01.i, i32 0, i32 4
  %17 = ptrtoint ptr %codec_hid.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %codec_hid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool11.not.i = icmp eq i8 %18, 0
  br i1 %tobool11.not.i, label %snd_intel_dsp_find_config.exit, label %if.end9.i.for.inc.i_crit_edge

if.end9.i.for.inc.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end9.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %dec.i = add nsw i32 %len.addr.03.i, -1
  %incdec.ptr.i = getelementptr %struct.config_entry, ptr %table.addr.01.i, i32 1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

snd_intel_dsp_find_config.exit:                   ; preds = %if.end9.i
  %tobool.not = icmp eq ptr %table.addr.01.i, null
  br i1 %tobool.not, label %snd_intel_dsp_find_config.exit.cleanup_crit_edge, label %if.end29

snd_intel_dsp_find_config.exit.cleanup_crit_edge: ; preds = %snd_intel_dsp_find_config.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end29:                                         ; preds = %snd_intel_dsp_find_config.exit
  %19 = ptrtoint ptr %table.addr.01.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %table.addr.01.i, align 4
  %21 = and i32 %20, 196610
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %if.end29.cleanup_crit_edge, label %if.end62

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end62:                                         ; preds = %if.end29
  %and64 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end62.cleanup_crit_edge, label %if.then66

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #5
  %and68 = and i32 %20, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  %spec.select = select i1 %tobool69.not, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.then66, %if.end62.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %snd_intel_dsp_find_config.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %do.end, %if.end8.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge112, %if.end.cleanup_crit_edge113, %if.end.cleanup_crit_edge114, %if.end.cleanup_crit_edge115, %if.end.cleanup_crit_edge116, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge112 ], [ 0, %if.end.cleanup_crit_edge113 ], [ 0, %if.end.cleanup_crit_edge114 ], [ 0, %if.end.cleanup_crit_edge115 ], [ 0, %if.end.cleanup_crit_edge116 ], [ %5, %sw.epilog.cleanup_crit_edge ], [ 1, %if.end8.cleanup_crit_edge ], [ 0, %snd_intel_dsp_find_config.exit.cleanup_crit_edge ], [ 1, %if.end62.cleanup_crit_edge ], [ 3, %if.end29.cleanup_crit_edge ], [ %spec.select, %if.then66 ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_intel_acpi_dsp_driver_probe(ptr noundef %dev, ptr nocapture noundef readonly %acpi_hid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dsp_driver, align 4
  %1 = and i32 %0, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %2 = icmp eq i32 %1, 2
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp2 = icmp eq i32 %0, 1
  br i1 %cmp2, label %do.end, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef 1) #6
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end.if.end4_crit_edge
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(9) getelementptr inbounds ([3 x %struct.config_entry], ptr @acpi_config_table, i32 0, i32 0, i32 2), ptr noundef dereferenceable(9) %acpi_hid, i32 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.end4.if.end6_crit_edge, label %for.inc.i

if.end4.if.end6_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

for.inc.i:                                        ; preds = %if.end4
  %bcmp.1.i = tail call i32 @bcmp(ptr noundef dereferenceable(9) getelementptr inbounds ([3 x %struct.config_entry], ptr @acpi_config_table, i32 0, i32 1, i32 2), ptr noundef dereferenceable(9) %acpi_hid, i32 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1.i)
  %tobool.not.1.i = icmp eq i32 %bcmp.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.if.end6_crit_edge, label %for.inc.1.i

for.inc.i.if.end6_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

for.inc.1.i:                                      ; preds = %for.inc.i
  %bcmp.2.i = tail call i32 @bcmp(ptr noundef dereferenceable(9) getelementptr inbounds ([3 x %struct.config_entry], ptr @acpi_config_table, i32 0, i32 2, i32 2), ptr noundef dereferenceable(9) %acpi_hid, i32 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.2.i)
  %tobool.not.2.i = icmp eq i32 %bcmp.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.if.end6_crit_edge, label %for.inc.1.i.cleanup_crit_edge

for.inc.1.i.cleanup_crit_edge:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.inc.1.i.if.end6_crit_edge:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.end6:                                          ; preds = %for.inc.1.i.if.end6_crit_edge, %for.inc.i.if.end6_crit_edge, %if.end4.if.end6_crit_edge
  %retval.0.i.ph = phi ptr [ getelementptr inbounds ([3 x %struct.config_entry], ptr @acpi_config_table, i32 0, i32 1), %for.inc.i.if.end6_crit_edge ], [ @acpi_config_table, %if.end4.if.end6_crit_edge ], [ getelementptr inbounds ([3 x %struct.config_entry], ptr @acpi_config_table, i32 0, i32 2), %for.inc.1.i.if.end6_crit_edge ]
  %3 = ptrtoint ptr %retval.0.i.ph to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %retval.0.i.ph, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  %and11 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %. = select i1 %tobool12.not, i32 2, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end6.cleanup_crit_edge, %for.inc.1.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %entry.cleanup_crit_edge ], [ 2, %if.end6.cleanup_crit_edge ], [ %., %if.end9 ], [ 0, %for.inc.1.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind readonly willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }
attributes #7 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !37, !38, !40, !42, !43, !45, !47, !49, !50, !52, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__param_dsp_driver, !1, !"__param_dsp_driver", i1 false, i1 false}
!1 = !{!"../sound/hda/intel-dsp-config.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_dsp_drivertype238, !1, !"__UNIQUE_ID_dsp_drivertype238", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_dsp_driver239, !4, !"__UNIQUE_ID_dsp_driver239", i1 false, i1 false}
!4 = !{!"../sound/hda/intel-dsp-config.c", i32 18, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../sound/hda/intel-dsp-config.c", i32 495, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @snd_intel_dsp_driver_probe._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @snd_intel_dsp_driver_probe._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/hda/intel-dsp-config.c", i32 499, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @snd_intel_dsp_driver_probe._entry.5, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @snd_intel_dsp_driver_probe._entry_ptr.8, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/hda/intel-dsp-config.c", i32 509, i32 4}
!20 = !{ptr @snd_intel_dsp_driver_probe._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @snd_intel_dsp_driver_probe._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/hda/intel-dsp-config.c", i32 514, i32 4}
!24 = !{ptr @snd_intel_dsp_driver_probe._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @snd_intel_dsp_driver_probe._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/hda/intel-dsp-config.c", i32 525, i32 5}
!28 = !{ptr @snd_intel_dsp_driver_probe._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @snd_intel_dsp_driver_probe._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__ksymtab_snd_intel_dsp_driver_probe, !31, !"__ksymtab_snd_intel_dsp_driver_probe", i1 false, i1 false}
!31 = !{!"../sound/hda/intel-dsp-config.c", i32 535, i32 1}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/hda/intel-dsp-config.c", i32 608, i32 3}
!34 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @snd_intel_acpi_dsp_driver_probe._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @snd_intel_acpi_dsp_driver_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @__ksymtab_snd_intel_acpi_dsp_driver_probe, !39, !"__ksymtab_snd_intel_acpi_dsp_driver_probe", i1 false, i1 false}
!39 = !{!"../sound/hda/intel-dsp-config.c", i32 626, i32 1}
!40 = !{ptr @__UNIQUE_ID_file240, !41, !"__UNIQUE_ID_file240", i1 false, i1 false}
!41 = !{!"../sound/hda/intel-dsp-config.c", i32 628, i32 1}
!42 = !{ptr @__UNIQUE_ID_license241, !41, !"__UNIQUE_ID_license241", i1 false, i1 false}
!43 = !{ptr @__UNIQUE_ID_description242, !44, !"__UNIQUE_ID_description242", i1 false, i1 false}
!44 = !{!"../sound/hda/intel-dsp-config.c", i32 629, i32 1}
!45 = !{ptr @__UNIQUE_ID_import_ns243, !46, !"__UNIQUE_ID_import_ns243", i1 false, i1 false}
!46 = !{!"../sound/hda/intel-dsp-config.c", i32 630, i32 1}
!47 = !{ptr @dsp_driver, !48, !"dsp_driver", i1 false, i1 false}
!48 = !{!"../sound/hda/intel-dsp-config.c", i32 15, i32 12}
!49 = !{ptr @__param_str_dsp_driver, !1, !"__param_str_dsp_driver", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/hda/intel-dsp-config.c", i32 68, i32 14}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/hda/intel-dsp-config.c", i32 155, i32 14}
!54 = !{ptr @config_table, !55, !"config_table", i1 false, i1 false}
!55 = !{!"../sound/hda/intel-dsp-config.c", i32 42, i32 34}
!56 = !{ptr @acpi_config_table, !57, !"acpi_config_table", i1 false, i1 false}
!57 = !{!"../sound/hda/intel-dsp-config.c", i32 550, i32 34}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
