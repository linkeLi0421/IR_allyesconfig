; ModuleID = '/llk/IR_all_yes/sound/soc/sof/intel/pci-tgl.c_pt.bc'
source_filename = "../sound/soc/sof/intel/pci-tgl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sof_dev_desc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_acpi_mach = type { [9 x i8], ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_acpi_mach_params, ptr, ptr }
%struct.snd_soc_acpi_mach_params = type { i32, ptr, i32, i32, i8, i32, ptr, i32, ptr }
%struct.sof_intel_dsp_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.snd_sof_dsp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }

@__initcall__kmod_snd_sof_pci_intel_tgl__247_136_snd_sof_pci_intel_tgl_driver_init6 = internal global ptr @snd_sof_pci_intel_tgl_driver_init, section ".initcall6.init", align 4
@snd_sof_pci_intel_tgl_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @sof_pci_ids, ptr @hda_pci_intel_probe, ptr @sof_pci_remove, ptr null, ptr null, ptr @sof_pci_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sof_pci_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_snd_sof_pci_intel_tgl_driver_exit = internal global ptr @snd_sof_pci_intel_tgl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file248 = internal constant [69 x i8] c"snd_sof_pci_intel_tgl.file=sound/soc/sof/intel/snd-sof-pci-intel-tgl\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [43 x i8] c"snd_sof_pci_intel_tgl.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns250 = internal constant [61 x i8] c"snd_sof_pci_intel_tgl.import_ns=SND_SOC_SOF_INTEL_HDA_COMMON\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns251 = internal constant [52 x i8] c"snd_sof_pci_intel_tgl.import_ns=SND_SOC_SOF_PCI_DEV\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_sof_pci_intel_tgl\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sof-audio-pci-intel-tgl\00", [40 x i8] zeroinitializer }, align 32
@sof_pci_ids = internal constant { [10 x %struct.pci_device_id], [64 x i8] } { [10 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 41160, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @tgl_desc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 17352, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @tglh_desc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19285, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @ehl_desc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 19288, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @ehl_desc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 31440, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @adls_desc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 20936, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @adl_desc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 20941, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @adl_desc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 20940, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @adl_desc to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 21704, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @adl_desc to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@sof_pci_pm = external dso_local constant %struct.dev_pm_ops, align 4
@tgl_desc = internal constant { %struct.sof_dev_desc, [36 x i8] } { %struct.sof_dev_desc { ptr @snd_soc_acpi_intel_tgl_machines, ptr @snd_soc_acpi_intel_tgl_sdw_machines, i8 1, i32 0, i32 -1, i32 -1, i32 -1, i32 0, i32 0, ptr @tgl_chip_info, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sof_tgl_ops }, [36 x i8] zeroinitializer }, align 32
@tglh_desc = internal constant { %struct.sof_dev_desc, [36 x i8] } { %struct.sof_dev_desc { ptr @snd_soc_acpi_intel_tgl_machines, ptr @snd_soc_acpi_intel_tgl_sdw_machines, i8 1, i32 0, i32 -1, i32 -1, i32 -1, i32 0, i32 0, ptr @tglh_chip_info, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @sof_tgl_ops }, [36 x i8] zeroinitializer }, align 32
@ehl_desc = internal constant { %struct.sof_dev_desc, [36 x i8] } { %struct.sof_dev_desc { ptr @snd_soc_acpi_intel_ehl_machines, ptr null, i8 1, i32 0, i32 -1, i32 -1, i32 -1, i32 0, i32 0, ptr @ehl_chip_info, ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.8, ptr @sof_tgl_ops }, [36 x i8] zeroinitializer }, align 32
@adls_desc = internal constant { %struct.sof_dev_desc, [36 x i8] } { %struct.sof_dev_desc { ptr @snd_soc_acpi_intel_adl_machines, ptr @snd_soc_acpi_intel_adl_sdw_machines, i8 1, i32 0, i32 -1, i32 -1, i32 -1, i32 0, i32 0, ptr @adls_chip_info, ptr @.str.9, ptr @.str.3, ptr @.str.4, ptr @.str.10, ptr @sof_tgl_ops }, [36 x i8] zeroinitializer }, align 32
@adl_desc = internal constant { %struct.sof_dev_desc, [36 x i8] } { %struct.sof_dev_desc { ptr @snd_soc_acpi_intel_adl_machines, ptr @snd_soc_acpi_intel_adl_sdw_machines, i8 1, i32 0, i32 -1, i32 -1, i32 -1, i32 0, i32 0, ptr @tgl_chip_info, ptr @.str.9, ptr @.str.3, ptr @.str.4, ptr @.str.11, ptr @sof_tgl_ops }, [36 x i8] zeroinitializer }, align 32
@snd_soc_acpi_intel_tgl_machines = external dso_local global [0 x %struct.snd_soc_acpi_mach], align 4
@snd_soc_acpi_intel_tgl_sdw_machines = external dso_local global [0 x %struct.snd_soc_acpi_mach], align 4
@tgl_chip_info = external dso_local constant %struct.sof_intel_dsp_desc, align 4
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sof-tgl-nocodec.tplg\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"intel/sof\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"intel/sof-tplg\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sof-tgl.ri\00", [21 x i8] zeroinitializer }, align 32
@sof_tgl_ops = external dso_local constant %struct.snd_sof_dsp_ops, align 4
@tglh_chip_info = external dso_local constant %struct.sof_intel_dsp_desc, align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sof-tgl-h.ri\00", [19 x i8] zeroinitializer }, align 32
@snd_soc_acpi_intel_ehl_machines = external dso_local global [0 x %struct.snd_soc_acpi_mach], align 4
@ehl_chip_info = external dso_local constant %struct.sof_intel_dsp_desc, align 4
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sof-ehl-nocodec.tplg\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sof-ehl.ri\00", [21 x i8] zeroinitializer }, align 32
@snd_soc_acpi_intel_adl_machines = external dso_local global [0 x %struct.snd_soc_acpi_mach], align 4
@snd_soc_acpi_intel_adl_sdw_machines = external dso_local global [0 x %struct.snd_soc_acpi_mach], align 4
@adls_chip_info = external dso_local constant %struct.sof_intel_dsp_desc, align 4
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sof-adl-nocodec.tplg\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sof-adl-s.ri\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sof-adl.ri\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [29 x i8] c"snd_sof_pci_intel_tgl_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 126, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 136, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 127, i32 10 }
@___asan_gen_.21 = private unnamed_addr constant [12 x i8] c"sof_pci_ids\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 102, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [9 x i8] c"tgl_desc\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 22, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [10 x i8] c"tglh_desc\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 38, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [9 x i8] c"ehl_desc\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 54, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [10 x i8] c"adls_desc\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 69, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [9 x i8] c"adl_desc\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 85, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 34, i32 27 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 31, i32 21 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 32, i32 23 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 33, i32 25 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 49, i32 25 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 65, i32 27 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 64, i32 25 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 81, i32 27 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 80, i32 25 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [33 x i8] c"../sound/soc/sof/intel/pci-tgl.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 96, i32 25 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_import_ns250, ptr @__UNIQUE_ID_import_ns251, ptr @__UNIQUE_ID_license249, ptr @__exitcall_snd_sof_pci_intel_tgl_driver_exit, ptr @__initcall__kmod_snd_sof_pci_intel_tgl__247_136_snd_sof_pci_intel_tgl_driver_init6, ptr @snd_sof_pci_intel_tgl_driver_exit, ptr @snd_sof_pci_intel_tgl_driver, ptr @.str, ptr @.str.1, ptr @sof_pci_ids, ptr @tgl_desc, ptr @tglh_desc, ptr @ehl_desc, ptr @adls_desc, ptr @adl_desc, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_pci_intel_tgl_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_pci_ids to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgl_desc to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tglh_desc to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehl_desc to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adls_desc to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adl_desc to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sof_pci_intel_tgl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @snd_sof_pci_intel_tgl_driver, ptr noundef null, ptr noundef nonnull @.str) #2
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snd_sof_pci_intel_tgl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @pci_unregister_driver(ptr noundef nonnull @snd_sof_pci_intel_tgl_driver) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_pci_intel_probe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_pci_remove(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_pci_shutdown(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__initcall__kmod_snd_sof_pci_intel_tgl__247_136_snd_sof_pci_intel_tgl_driver_init6, !1, !"__initcall__kmod_snd_sof_pci_intel_tgl__247_136_snd_sof_pci_intel_tgl_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/intel/pci-tgl.c", i32 136, i32 1}
!2 = !{ptr @__exitcall_snd_sof_pci_intel_tgl_driver_exit, !1, !"__exitcall_snd_sof_pci_intel_tgl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file248, !4, !"__UNIQUE_ID_file248", i1 false, i1 false}
!4 = !{!"../sound/soc/sof/intel/pci-tgl.c", i32 138, i32 1}
!5 = !{ptr @__UNIQUE_ID_license249, !4, !"__UNIQUE_ID_license249", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_import_ns250, !7, !"__UNIQUE_ID_import_ns250", i1 false, i1 false}
!7 = !{!"../sound/soc/sof/intel/pci-tgl.c", i32 139, i32 1}
!8 = !{ptr @__UNIQUE_ID_import_ns251, !9, !"__UNIQUE_ID_import_ns251", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/intel/pci-tgl.c", i32 140, i32 1}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/soc/sof/intel/pci-tgl.c", i32 127, i32 10}
!13 = !{ptr @snd_sof_pci_intel_tgl_driver, !14, !"snd_sof_pci_intel_tgl_driver", i1 false, i1 false}
!14 = !{!"../sound/soc/sof/intel/pci-tgl.c", i32 126, i32 26}
!15 = !{ptr @sof_pci_ids, !16, !"sof_pci_ids", i1 false, i1 false}
!16 = !{!"../sound/soc/sof/intel/pci-tgl.c", i32 102, i32 35}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/sof/intel/pci-tgl.c", i32 34, i32 27}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/sof/intel/pci-tgl.c", i32 31, i32 21}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/sof/intel/pci-tgl.c", i32 32, i32 23}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/sof/intel/pci-tgl.c", i32 33, i32 25}
!25 = !{ptr @tgl_desc, !26, !"tgl_desc", i1 false, i1 false}
!26 = !{!"../sound/soc/sof/intel/pci-tgl.c", i32 22, i32 34}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/sof/intel/pci-tgl.c", i32 49, i32 25}
!29 = !{ptr @tglh_desc, !30, !"tglh_desc", i1 false, i1 false}
!30 = !{!"../sound/soc/sof/intel/pci-tgl.c", i32 38, i32 34}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/sof/intel/pci-tgl.c", i32 65, i32 27}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/sof/intel/pci-tgl.c", i32 64, i32 25}
!35 = !{ptr @ehl_desc, !36, !"ehl_desc", i1 false, i1 false}
!36 = !{!"../sound/soc/sof/intel/pci-tgl.c", i32 54, i32 34}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/sof/intel/pci-tgl.c", i32 81, i32 27}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/sof/intel/pci-tgl.c", i32 80, i32 25}
!41 = !{ptr @adls_desc, !42, !"adls_desc", i1 false, i1 false}
!42 = !{!"../sound/soc/sof/intel/pci-tgl.c", i32 69, i32 34}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/sof/intel/pci-tgl.c", i32 96, i32 25}
!45 = !{ptr @adl_desc, !46, !"adl_desc", i1 false, i1 false}
!46 = !{!"../sound/soc/sof/intel/pci-tgl.c", i32 85, i32 34}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
