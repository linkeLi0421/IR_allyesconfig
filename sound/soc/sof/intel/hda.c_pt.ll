; ModuleID = '/llk/IR_all_yes/sound/soc/sof/intel/hda.c_pt.bc'
source_filename = "../sound/soc/sof/intel/hda.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+hda_pci_intel_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_hda_pci_intel_probe\09\09\09\09"
module asm "\09.long\09__crc_hda_pci_intel_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hda_pci_intel_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22hda_pci_intel_probe\22\09\09\09\09\09"
module asm "__kstrtabns_hda_pci_intel_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_INTEL_HDA_COMMON\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.hda_dsp_msg_code = type { i32, ptr }
%struct.sof_ipc_reply = type { %struct.sof_ipc_cmd_hdr, i32 }
%struct.sof_ipc_cmd_hdr = type { i32, i32 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.snd_sof_widget = type { ptr, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.list_head, ptr, %struct.sof_ipc_comp_ext, ptr }
%struct.sof_ipc_comp_ext = type { [16 x i8] }
%struct.snd_sof_dai = type { ptr, ptr, %struct.sof_ipc_comp_dai, i32, i32, i8, ptr, %struct.list_head }
%struct.sof_ipc_comp_dai = type { %struct.sof_ipc_comp, %struct.sof_ipc_comp_config, i32, i32, i32, i32 }
%struct.sof_ipc_comp = type { %struct.sof_ipc_cmd_hdr, i32, i32, i32, i32, i32 }
%struct.sof_ipc_comp_config = type { %struct.sof_ipc_cmd_hdr, i32, i32, i32, i32, i32, [2 x i32] }
%struct.sof_ipc_dai_config = type { %struct.sof_ipc_cmd_hdr, i32, i32, i16, i8, i8, [8 x i32], %union.anon.92 }
%union.anon.92 = type { %struct.sof_ipc_dai_dmic_params }
%struct.sof_ipc_dai_dmic_params = type { %struct.sof_ipc_hdr, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, [5 x i32], [4 x %struct.sof_ipc_dai_dmic_pdm_ctrl] }
%struct.sof_ipc_hdr = type { i32 }
%struct.sof_ipc_dai_dmic_pdm_ctrl = type { %struct.sof_ipc_hdr, i16, i16, i16, i16, i16, i16, i16, [3 x i16] }
%struct.snd_sof_dev = type { ptr, %struct.spinlock, %struct.spinlock, %struct.snd_soc_component_driver, %struct.sof_dsp_power_state, %struct.mutex, i32, %struct.wait_queue_head, i32, i8, %struct.work_struct, i8, ptr, ptr, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, ptr, i32, i32, [8 x ptr], i32, i32, i32, ptr, %struct.list_head, i8, i8, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_version, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.wait_queue_head, i32, i8, i8, i8, i8, i8, i32, [8 x i32], ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.sof_dsp_power_state = type { i32, i32 }
%struct.snd_sof_mailbox = type { i32, i32 }
%struct.sof_ipc_fw_ready = type <{ %struct.sof_ipc_cmd_hdr, i32, i32, i32, i32, %struct.sof_ipc_fw_version, i64, [4 x i32] }>
%struct.sof_ipc_fw_version = type { %struct.sof_ipc_hdr, i16, i16, i16, i16, [12 x i8], [10 x i8], [6 x i8], i32, i32, [3 x i32] }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.sof_ipc_dsp_oops_xtensa = type { %struct.sof_ipc_dsp_oops_arch_hdr, %struct.sof_ipc_dsp_oops_plat_hdr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i32] }
%struct.sof_ipc_dsp_oops_arch_hdr = type { i32, i32 }
%struct.sof_ipc_dsp_oops_plat_hdr = type { i32, i32, i32, i32, i32 }
%struct.sof_ipc_panic_info = type { %struct.sof_ipc_hdr, i32, [32 x i8], i32 }
%struct.snd_sof_pdata = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sof_dev_desc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_sof_dsp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.sof_intel_hda_dev = type { i32, %struct.hda_bus, ptr, ptr, i32, i32, i8, ptr, %struct.delayed_work, %struct.sdw_intel_acpi_info, ptr, i8 }
%struct.hda_bus = type { %struct.hdac_bus, ptr, ptr, ptr, %struct.mutex, [8 x i32], i8, i32, i32 }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.sdw_intel_acpi_info = type { ptr, i32, i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.sof_intel_dsp_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.snd_soc_acpi_mach = type { [9 x i8], ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_acpi_mach_params, ptr, ptr }
%struct.snd_soc_acpi_mach_params = type { i32, ptr, i32, i32, i8, i32, ptr, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.93, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.93 = type { ptr }

@hda_ctrl_dai_widget_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 57, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No config for DAI %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hda_ctrl_dai_widget_setup\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/sof/intel/hda.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hda_ctrl_dai_widget_setup._entry_ptr = internal global ptr @hda_ctrl_dai_widget_setup._entry, section ".printk_index", align 4
@hda_ctrl_dai_widget_setup._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 77, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error: failed setting up DAI widget %s\0A\00", [56 x i8] zeroinitializer }, align 32
@hda_ctrl_dai_widget_setup._entry_ptr.7 = internal global ptr @hda_ctrl_dai_widget_setup._entry.5, section ".printk_index", align 4
@hda_ctrl_dai_widget_setup._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 90, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error: failed setting DAI config for %s\0A\00", [55 x i8] zeroinitializer }, align 32
@hda_ctrl_dai_widget_setup._entry_ptr.10 = internal global ptr @hda_ctrl_dai_widget_setup._entry.8, section ".printk_index", align 4
@hda_ctrl_dai_widget_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 112, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error: No config to free DAI %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hda_ctrl_dai_widget_free\00", [39 x i8] zeroinitializer }, align 32
@hda_ctrl_dai_widget_free._entry_ptr = internal global ptr @hda_ctrl_dai_widget_free._entry, section ".printk_index", align 4
@hda_ctrl_dai_widget_free._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 129, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"error: failed resetting DAI config for %s\0A\00", [53 x i8] zeroinitializer }, align 32
@hda_ctrl_dai_widget_free._entry_ptr.15 = internal global ptr @hda_ctrl_dai_widget_free._entry.13, section ".printk_index", align 4
@__param_str_use_msi = internal constant [33 x i8] c"snd_sof_intel_hda_common.use_msi\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@hda_use_msi = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_use_msi = internal constant %struct.kernel_param { ptr @__param_str_use_msi, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @hda_use_msi } }, section "__param", align 4
@__UNIQUE_ID_use_msitype247 = internal constant [47 x i8] c"snd_sof_intel_hda_common.parmtype=use_msi:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_msi248 = internal constant [63 x i8] c"snd_sof_intel_hda_common.parm=use_msi:SOF HDA use PCI MSI mode\00", section ".modinfo", align 1
@sof_hda_position_quirk = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_str_position_quirk = internal constant [40 x i8] c"snd_sof_intel_hda_common.position_quirk\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_position_quirk = internal constant %struct.kernel_param { ptr @__param_str_position_quirk, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @sof_hda_position_quirk } }, section "__param", align 4
@__UNIQUE_ID_position_quirktype249 = internal constant [53 x i8] c"snd_sof_intel_hda_common.parmtype=position_quirk:int\00", section ".modinfo", align 1
@__UNIQUE_ID_position_quirk250 = internal constant [72 x i8] c"snd_sof_intel_hda_common.parm=position_quirk:SOF HDaudio position quirk\00", section ".modinfo", align 1
@__param_str_hda_model = internal constant [35 x i8] c"snd_sof_intel_hda_common.hda_model\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@hda_model = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_hda_model = internal constant %struct.kernel_param { ptr @__param_str_hda_model, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @hda_model } }, section "__param", align 4
@__UNIQUE_ID_hda_modeltype251 = internal constant [50 x i8] c"snd_sof_intel_hda_common.parmtype=hda_model:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_hda_model252 = internal constant [71 x i8] c"snd_sof_intel_hda_common.parm=hda_model:Use the given HDA board model.\00", section ".modinfo", align 1
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@hda_ipc_irq_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 575, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"hda irq intsts 0x%8.8x intlctl 0x%8.8x rirb %2.2x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hda_ipc_irq_dump\00", [47 x i8] zeroinitializer }, align 32
@hda_ipc_irq_dump._entry_ptr = internal global ptr @hda_ipc_irq_dump._entry, section ".printk_index", align 4
@hda_ipc_irq_dump._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 576, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"dsp irq ppsts 0x%8.8x adspis 0x%8.8x\0A\00", [58 x i8] zeroinitializer }, align 32
@hda_ipc_irq_dump._entry_ptr.21 = internal global ptr @hda_ipc_irq_dump._entry.19, section ".printk_index", align 4
@hda_ipc_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 595, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"host status 0x%8.8x dsp status 0x%8.8x mask 0x%8.8x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hda_ipc_dump\00", [19 x i8] zeroinitializer }, align 32
@hda_ipc_dump._entry_ptr = internal global ptr @hda_ipc_dump._entry, section ".printk_index", align 4
@hda_dsp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 895, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"error: the DSP is not enabled on this platform, aborting probe\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hda_dsp_probe\00", [18 x i8] zeroinitializer }, align 32
@hda_dsp_probe._entry_ptr = internal global ptr @hda_dsp_probe._entry, section ".printk_index", align 4
@hda_dsp_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 898, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"error: unknown PCI class/subclass/prog-if 0x%06x found, aborting probe\0A\00", [56 x i8] zeroinitializer }, align 32
@hda_dsp_probe._entry_ptr.28 = internal global ptr @hda_dsp_probe._entry.26, section ".printk_index", align 4
@hda_dsp_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 901, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"DSP detected with PCI class/subclass/prog-if 0x%06x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hda_dsp_probe._entry_ptr.32 = internal global ptr @hda_dsp_probe._entry.29, section ".printk_index", align 4
@hda_dsp_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.25, ptr @.str.2, i32 906, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"error: no such device supported, chip id:%x\0A\00", [51 x i8] zeroinitializer }, align 32
@hda_dsp_probe._entry_ptr.35 = internal global ptr @hda_dsp_probe._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dmic-codec\00", [21 x i8] zeroinitializer }, align 32
@hda_dsp_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.25, ptr @.str.2, i32 923, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error: failed to create DMIC device\0A\00", [59 x i8] zeroinitializer }, align 32
@hda_dsp_probe._entry_ptr.39 = internal global ptr @hda_dsp_probe._entry.37, section ".printk_index", align 4
@hda_dsp_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.25, ptr @.str.2, i32 946, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error: ioremap error\0A\00", [42 x i8] zeroinitializer }, align 32
@hda_dsp_probe._entry_ptr.42 = internal global ptr @hda_dsp_probe._entry.40, section ".printk_index", align 4
@hda_dsp_probe.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.25, ptr @.str.2, ptr @.str.44, i8 0, i8 -17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_sof_intel_hda_common\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DMA mask is 32 bit\0A\00", [44 x i8] zeroinitializer }, align 32
@hda_dsp_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.25, ptr @.str.2, i32 964, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error: failed to init streams\0A\00", [33 x i8] zeroinitializer }, align 32
@hda_dsp_probe._entry_ptr.47 = internal global ptr @hda_dsp_probe._entry.45, section ".printk_index", align 4
@hda_dsp_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.25, ptr @.str.2, i32 979, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"use msi interrupt mode\0A\00", [40 x i8] zeroinitializer }, align 32
@hda_dsp_probe._entry_ptr.50 = internal global ptr @hda_dsp_probe._entry.48, section ".printk_index", align 4
@hda_dsp_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.25, ptr @.str.2, i32 986, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"use legacy interrupt mode\0A\00", [37 x i8] zeroinitializer }, align 32
@hda_dsp_probe._entry_ptr.53 = internal global ptr @hda_dsp_probe._entry.51, section ".printk_index", align 4
@hda_dsp_probe.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.25, ptr @.str.2, ptr @.str.54, i8 0, i8 -8, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"using IPC IRQ %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AudioDSP\00", [23 x i8] zeroinitializer }, align 32
@hda_dsp_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.25, ptr @.str.2, i32 1000, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error: failed to register IPC IRQ %d\0A\00", [58 x i8] zeroinitializer }, align 32
@hda_dsp_probe._entry_ptr.58 = internal global ptr @hda_dsp_probe._entry.56, section ".printk_index", align 4
@hda_dsp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&hdev->d0i3_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@hda_dsp_probe.__key.60 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&hdev->d0i3_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@hda_machine_select._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 1408, ptr @.str.64, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"warning: No matching ASoC machine driver found\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hda_machine_select\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hda_machine_select._entry_ptr = internal global ptr @hda_machine_select._entry, section ".printk_index", align 4
@hda_pci_intel_probe.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 1, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hda_pci_intel_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"SOF PCI driver not selected, aborting probe\0A\00", [51 x i8] zeroinitializer }, align 32
@__kstrtab_hda_pci_intel_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_hda_pci_intel_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_hda_pci_intel_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hda_pci_intel_probe to i32), ptr @__kstrtab_hda_pci_intel_probe, ptr @__kstrtabns_hda_pci_intel_probe }, section "___ksymtab+hda_pci_intel_probe", align 4
@__UNIQUE_ID_file260 = internal constant [75 x i8] c"snd_sof_intel_hda_common.file=sound/soc/sof/intel/snd-sof-intel-hda-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license261 = internal constant [46 x i8] c"snd_sof_intel_hda_common.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns262 = internal constant [55 x i8] c"snd_sof_intel_hda_common.import_ns=SND_SOC_SOF_PCI_DEV\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns263 = internal constant [63 x i8] c"snd_sof_intel_hda_common.import_ns=SND_SOC_SOF_HDA_AUDIO_CODEC\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns264 = internal constant [68 x i8] c"snd_sof_intel_hda_common.import_ns=SND_SOC_SOF_HDA_AUDIO_CODEC_I915\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns265 = internal constant [54 x i8] c"snd_sof_intel_hda_common.import_ns=SND_SOC_SOF_XTENSA\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns266 = internal constant [60 x i8] c"snd_sof_intel_hda_common.import_ns=SND_INTEL_SOUNDWIRE_ACPI\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns267 = internal constant [56 x i8] c"snd_sof_intel_hda_common.import_ns=SOUNDWIRE_INTEL_INIT\00", section ".modinfo", align 1
@hda_dsp_rom_msg = internal constant { [19 x %struct.hda_dsp_msg_code], [40 x i8] } { [19 x %struct.hda_dsp_msg_code] [%struct.hda_dsp_msg_code { i32 3, ptr @.str.70 }, %struct.hda_dsp_msg_code { i32 4, ptr @.str.71 }, %struct.hda_dsp_msg_code { i32 5, ptr @.str.72 }, %struct.hda_dsp_msg_code { i32 40, ptr @.str.73 }, %struct.hda_dsp_msg_code { i32 41, ptr @.str.74 }, %struct.hda_dsp_msg_code { i32 42, ptr @.str.75 }, %struct.hda_dsp_msg_code { i32 43, ptr @.str.76 }, %struct.hda_dsp_msg_code { i32 44, ptr @.str.77 }, %struct.hda_dsp_msg_code { i32 45, ptr @.str.78 }, %struct.hda_dsp_msg_code { i32 46, ptr @.str.79 }, %struct.hda_dsp_msg_code { i32 47, ptr @.str.80 }, %struct.hda_dsp_msg_code { i32 50, ptr @.str.81 }, %struct.hda_dsp_msg_code { i32 51, ptr @.str.82 }, %struct.hda_dsp_msg_code { i32 -1092616192, ptr @.str.83 }, %struct.hda_dsp_msg_code { i32 -322961408, ptr @.str.84 }, %struct.hda_dsp_msg_code { i32 -889323520, ptr @.str.85 }, %struct.hda_dsp_msg_code { i32 -1091633152, ptr @.str.86 }, %struct.hda_dsp_msg_code { i32 -557125632, ptr @.str.87 }, %struct.hda_dsp_msg_code { i32 1280069205, ptr @.str.88 }], [40 x i8] zeroinitializer }, align 32
@hda_dsp_get_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 480, ptr null, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - code %8.8x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hda_dsp_get_status\00", [45 x i8] zeroinitializer }, align 32
@hda_dsp_get_status._entry_ptr = internal global ptr @hda_dsp_get_status._entry, section ".printk_index", align 4
@hda_dsp_get_status.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 0, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unknown ROM status value %8.8x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"status: manifest loaded\00", [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"status: fw loaded\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"status: fw entered\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"error: cse error\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error: cse wrong response\00", [38 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error: IMR too small\00", [43 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error: base fw not found\00", [39 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error: signature verification failed\00", [59 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error: ipc fatal error\00", [41 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error: L2 cache error\00", [42 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error: load offset too small\00", [35 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error: API ptr invalid\00", [41 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error: base fw incompatible\00", [36 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error: unhandled interrupt\00", [37 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error: ECC memory hole\00", [41 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error: kernel exception\00", [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error: user exception\00", [42 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error: unexpected reset\00", [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error: null FW entry point\00", [37 x i8] zeroinitializer }, align 32
@snd_sof_dsp_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.91, i32 319, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error: %s not defined\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_sof_dsp_read\00", [47 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/soc/sof/intel/../ops.h\00", [35 x i8] zeroinitializer }, align 32
@snd_sof_dsp_read._entry_ptr = internal global ptr @snd_sof_dsp_read._entry, section ".printk_index", align 4
@hda_dsp_get_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 504, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"invalid header size 0x%x. FW oops is bogus\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hda_dsp_get_registers\00", [42 x i8] zeroinitializer }, align 32
@hda_dsp_get_registers._entry_ptr = internal global ptr @hda_dsp_get_registers._entry, section ".printk_index", align 4
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" 0x%x\00", [26 x i8] zeroinitializer }, align 32
@hda_dsp_dump_ext_rom_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 531, ptr null, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"extended rom status: %s\00", [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hda_dsp_dump_ext_rom_status\00", [36 x i8] zeroinitializer }, align 32
@hda_dsp_dump_ext_rom_status._entry_ptr = internal global ptr @hda_dsp_dump_ext_rom_status._entry, section ".printk_index", align 4
@hda_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&hbus->prepare_mutex\00", [43 x i8] zeroinitializer }, align 32
@hda_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.98, ptr @.str.2, i32 627, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hda_init\00", [23 x i8] zeroinitializer }, align 32
@hda_init._entry_ptr = internal global ptr @hda_init._entry, section ".printk_index", align 4
@hda_init._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 637, ptr @.str.64, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"init of i915 and HDMI codec failed\0A\00", [60 x i8] zeroinitializer }, align 32
@hda_init._entry_ptr.101 = internal global ptr @hda_init._entry.99, section ".printk_index", align 4
@hda_init._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.98, ptr @.str.2, i32 642, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error: get caps error\0A\00", [41 x i8] zeroinitializer }, align 32
@hda_init._entry_ptr.104 = internal global ptr @hda_init._entry.102, section ".printk_index", align 4
@hda_init_caps.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.105, ptr @.str.2, ptr @.str.106, i8 0, i8 -67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hda_init_caps\00", [18 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PP capability, will probe DSP later.\0A\00", [58 x i8] zeroinitializer }, align 32
@hda_init_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.2, i32 762, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error: init chip failed with ret: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@hda_init_caps._entry_ptr = internal global ptr @hda_init_caps._entry, section ".printk_index", align 4
@hda_init_caps.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.105, ptr @.str.2, ptr @.str.109, i8 0, i8 -63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"skipping SoundWire, no links enabled\0A\00", [58 x i8] zeroinitializer }, align 32
@hda_init_caps._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.105, ptr @.str.2, i32 788, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error: SoundWire probe error\0A\00", [34 x i8] zeroinitializer }, align 32
@hda_init_caps._entry_ptr.112 = internal global ptr @hda_init_caps._entry.110, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [21 x i64] [i64 19, i64 32, i64 3, i64 4, i64 5, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 50, i64 51, i64 1280069205, i64 3202351104, i64 3203334144, i64 3405643776, i64 3737841664, i64 3972005888]
@__sancov_gen_cov_switch_values.113 = internal global [5 x i64] [i64 3, i64 32, i64 262400, i64 262912, i64 263040]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 57, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 77, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 90, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 112, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 129, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [12 x i8] c"hda_use_msi\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 420, i32 13 }
@___asan_gen_.163 = private unnamed_addr constant [23 x i8] c"sof_hda_position_quirk\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 427, i32 5 }
@___asan_gen_.166 = private unnamed_addr constant [10 x i8] c"hda_model\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 431, i32 14 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 537, i32 48 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 574, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 576, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 594, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 895, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 898, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 901, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 905, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 919, i32 60 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 923, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 946, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 956, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 964, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 979, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 986, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 994, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 997, i32 21 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 999, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1025, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1408, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 1419, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant [16 x i8] c"hda_dsp_rom_msg\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 447, i32 38 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 479, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 486, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 448, i32 35 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 449, i32 29 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 450, i32 27 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 451, i32 26 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 452, i32 35 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 453, i32 29 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 454, i32 34 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 455, i32 38 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 456, i32 32 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 457, i32 31 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 458, i32 37 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 459, i32 32 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 460, i32 32 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 461, i32 36 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 462, i32 32 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 463, i32 33 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 464, i32 31 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 465, i32 33 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 466, i32 30 }
@___asan_gen_.389 = private unnamed_addr constant [32 x i8] c"../sound/soc/sof/intel/../ops.h\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 319, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 503, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 528, i32 49 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 531, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 618, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 627, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 637, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 642, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 756, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 761, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 775, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.454 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.455 = private constant [29 x i8] c"../sound/soc/sof/intel/hda.c\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.455, i32 788, i32 3 }
@llvm.compiler.used = appending global [160 x ptr] [ptr @__UNIQUE_ID_file260, ptr @__UNIQUE_ID_hda_model252, ptr @__UNIQUE_ID_hda_modeltype251, ptr @__UNIQUE_ID_import_ns262, ptr @__UNIQUE_ID_import_ns263, ptr @__UNIQUE_ID_import_ns264, ptr @__UNIQUE_ID_import_ns265, ptr @__UNIQUE_ID_import_ns266, ptr @__UNIQUE_ID_import_ns267, ptr @__UNIQUE_ID_license261, ptr @__UNIQUE_ID_position_quirk250, ptr @__UNIQUE_ID_position_quirktype249, ptr @__UNIQUE_ID_use_msi248, ptr @__UNIQUE_ID_use_msitype247, ptr @__ksymtab_hda_pci_intel_probe, ptr @__param_hda_model, ptr @__param_position_quirk, ptr @__param_use_msi, ptr @hda_ctrl_dai_widget_free._entry, ptr @hda_ctrl_dai_widget_free._entry.13, ptr @hda_ctrl_dai_widget_free._entry_ptr, ptr @hda_ctrl_dai_widget_free._entry_ptr.15, ptr @hda_ctrl_dai_widget_setup._entry, ptr @hda_ctrl_dai_widget_setup._entry.5, ptr @hda_ctrl_dai_widget_setup._entry.8, ptr @hda_ctrl_dai_widget_setup._entry_ptr, ptr @hda_ctrl_dai_widget_setup._entry_ptr.10, ptr @hda_ctrl_dai_widget_setup._entry_ptr.7, ptr @hda_dsp_dump_ext_rom_status._entry, ptr @hda_dsp_dump_ext_rom_status._entry_ptr, ptr @hda_dsp_get_registers._entry, ptr @hda_dsp_get_registers._entry_ptr, ptr @hda_dsp_get_status._entry, ptr @hda_dsp_get_status._entry_ptr, ptr @hda_dsp_probe._entry, ptr @hda_dsp_probe._entry.26, ptr @hda_dsp_probe._entry.29, ptr @hda_dsp_probe._entry.33, ptr @hda_dsp_probe._entry.37, ptr @hda_dsp_probe._entry.40, ptr @hda_dsp_probe._entry.45, ptr @hda_dsp_probe._entry.48, ptr @hda_dsp_probe._entry.51, ptr @hda_dsp_probe._entry.56, ptr @hda_dsp_probe._entry_ptr, ptr @hda_dsp_probe._entry_ptr.28, ptr @hda_dsp_probe._entry_ptr.32, ptr @hda_dsp_probe._entry_ptr.35, ptr @hda_dsp_probe._entry_ptr.39, ptr @hda_dsp_probe._entry_ptr.42, ptr @hda_dsp_probe._entry_ptr.47, ptr @hda_dsp_probe._entry_ptr.50, ptr @hda_dsp_probe._entry_ptr.53, ptr @hda_dsp_probe._entry_ptr.58, ptr @hda_init._entry, ptr @hda_init._entry.102, ptr @hda_init._entry.99, ptr @hda_init._entry_ptr, ptr @hda_init._entry_ptr.101, ptr @hda_init._entry_ptr.104, ptr @hda_init_caps._entry, ptr @hda_init_caps._entry.110, ptr @hda_init_caps._entry_ptr, ptr @hda_init_caps._entry_ptr.112, ptr @hda_ipc_dump._entry, ptr @hda_ipc_dump._entry_ptr, ptr @hda_ipc_irq_dump._entry, ptr @hda_ipc_irq_dump._entry.19, ptr @hda_ipc_irq_dump._entry_ptr, ptr @hda_ipc_irq_dump._entry_ptr.21, ptr @hda_machine_select._entry, ptr @hda_machine_select._entry_ptr, ptr @snd_sof_dsp_read._entry, ptr @snd_sof_dsp_read._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @hda_use_msi, ptr @sof_hda_position_quirk, ptr @hda_model, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @hda_dsp_probe.__key, ptr @.str.59, ptr @hda_dsp_probe.__key.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @hda_dsp_rom_msg, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @hda_init.__key, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.111], section "llvm.metadata"
@0 = internal global [114 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_ctrl_dai_widget_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_ctrl_dai_widget_setup._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_ctrl_dai_widget_setup._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_ctrl_dai_widget_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_ctrl_dai_widget_free._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_use_msi to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_hda_position_quirk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_model to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_ipc_irq_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_ipc_irq_dump._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_ipc_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_probe.__key.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_machine_select._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_rom_msg to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_get_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_get_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_dump_ext_rom_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_init._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_init._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_init_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_init_caps._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_ctrl_dai_widget_setup(ptr nocapture noundef readonly %w, i32 noundef %quirk_flags) local_unnamed_addr #0 align 64 {
entry:
  %reply = alloca %struct.sof_ipc_reply, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 21, i32 5
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reply) #6
  %8 = ptrtoint ptr %reply to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %reply, align 4, !annotation !258
  %9 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %reply, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !258
  %11 = getelementptr inbounds %struct.sof_ipc_reply, ptr %reply, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !258
  %private1 = getelementptr inbounds %struct.snd_sof_widget, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %private1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private1, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %dai_config = getelementptr inbounds %struct.snd_sof_dai, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %dai_config to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dai_config, align 4
  %tobool2.not = icmp eq ptr %16, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %7, align 4
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str, ptr noundef %20) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %configured = getelementptr inbounds %struct.snd_sof_dai, ptr %14, i32 0, i32 5
  %21 = ptrtoint ptr %configured to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %configured, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool3.not = icmp eq i8 %22, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @hda_ctrl_dai_widget_free(ptr noundef %w, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then4.cleanup_crit_edge, label %if.then4.if.end8_crit_edge

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.then4.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %23 = ptrtoint ptr %dai_config to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dai_config, align 4
  %current_config = getelementptr inbounds %struct.snd_sof_dai, ptr %14, i32 0, i32 4
  %25 = ptrtoint ptr %current_config to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %current_config, align 4
  %call10 = tail call i32 @sof_widget_setup(ptr noundef %7, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %7, align 4
  %name17 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %29 = ptrtoint ptr %name17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.6, ptr noundef %30) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  %arrayidx = getelementptr %struct.sof_ipc_dai_config, ptr %24, i32 %26
  %quirk_flags.tr = trunc i32 %quirk_flags to i8
  %31 = shl i8 %quirk_flags.tr, 4
  %conv = or i8 %31, 1
  %flags = getelementptr %struct.sof_ipc_dai_config, ptr %24, i32 %26, i32 5
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv, ptr %flags, align 1
  %ipc = getelementptr inbounds %struct.snd_sof_dev, ptr %7, i32 0, i32 13
  %33 = ptrtoint ptr %ipc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ipc, align 4
  %cmd = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %arrayidx, i32 0, i32 1
  %35 = ptrtoint ptr %cmd to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %cmd, align 1
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %arrayidx, align 1
  %call20 = call i32 @sof_ipc_tx_message(ptr noundef %34, i32 noundef %36, ptr noundef %arrayidx, i32 noundef %38, ptr noundef nonnull %reply, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end26, label %if.end29

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %7, align 4
  %name28 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %41 = ptrtoint ptr %name28 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name28, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.9, ptr noundef %42) #9
  br label %cleanup

if.end29:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %configured to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %configured, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end26, %do.end15, %if.then4.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call10, %do.end15 ], [ %call20, %do.end26 ], [ 0, %if.end29 ], [ -22, %do.end ], [ %call5, %if.then4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_ctrl_dai_widget_free(ptr nocapture noundef readonly %w, i32 noundef %quirk_flags) local_unnamed_addr #0 align 64 {
entry:
  %reply = alloca %struct.sof_ipc_reply, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 21, i32 5
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reply) #6
  %8 = ptrtoint ptr %reply to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %reply, align 4, !annotation !258
  %9 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %reply, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !258
  %11 = getelementptr inbounds %struct.sof_ipc_reply, ptr %reply, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !258
  %private1 = getelementptr inbounds %struct.snd_sof_widget, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %private1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private1, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %dai_config = getelementptr inbounds %struct.snd_sof_dai, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %dai_config to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dai_config, align 4
  %tobool2.not = icmp eq ptr %16, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %7, align 4
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.11, ptr noundef %20) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %configured = getelementptr inbounds %struct.snd_sof_dai, ptr %14, i32 0, i32 5
  %21 = ptrtoint ptr %configured to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %configured, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool3.not = icmp eq i8 %22, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %current_config = getelementptr inbounds %struct.snd_sof_dai, ptr %14, i32 0, i32 4
  %23 = ptrtoint ptr %current_config to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %current_config, align 4
  %arrayidx = getelementptr %struct.sof_ipc_dai_config, ptr %16, i32 %24
  %quirk_flags.tr = trunc i32 %quirk_flags to i8
  %25 = shl i8 %quirk_flags.tr, 4
  %conv = or i8 %25, 2
  %flags = getelementptr %struct.sof_ipc_dai_config, ptr %16, i32 %24, i32 5
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv, ptr %flags, align 1
  %ipc = getelementptr inbounds %struct.snd_sof_dev, ptr %7, i32 0, i32 13
  %27 = ptrtoint ptr %ipc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ipc, align 4
  %cmd = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %arrayidx, i32 0, i32 1
  %29 = ptrtoint ptr %cmd to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %cmd, align 1
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %arrayidx, align 1
  %call8 = call i32 @sof_ipc_tx_message(ptr noundef %28, i32 noundef %30, ptr noundef %arrayidx, i32 noundef %32, ptr noundef nonnull %reply, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end13, label %if.end5.if.end16_crit_edge

if.end5.if.end16_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.end13:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %7, align 4
  %name15 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %35 = ptrtoint ptr %name15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.14, ptr noundef %36) #9
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.end5.if.end16_crit_edge
  %37 = ptrtoint ptr %configured to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %configured, align 4
  %call18 = call i32 @sof_widget_free(ptr noundef %7, ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call18, %if.end16 ], [ -22, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_widget_setup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_ipc_tx_message(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_widget_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hda_dsp_dump(ptr noundef %sdev, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca [128 x i8], align 1
  %xoops = alloca %struct.sof_ipc_dsp_oops_xtensa, align 1
  %panic_info = alloca %struct.sof_ipc_panic_info, align 1
  %stack = alloca [32 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.3, ptr @.str.16
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %xoops) #6
  %0 = call ptr @memset(ptr %xoops, i32 255, i32 124)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %panic_info) #6
  %1 = call ptr @memset(ptr %panic_info, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %stack) #6
  %2 = call ptr @memset(ptr %stack, i32 255, i32 128)
  tail call fastcc void @hda_dsp_get_status(ptr noundef %sdev, ptr noundef nonnull %cond)
  %and1 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %3 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %read.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 524292
  %call.i = tail call i32 %10(ptr noundef %sdev, ptr noundef %add.ptr.i) #6
  br label %snd_sof_dsp_read.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #9
  br label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit:                            ; preds = %do.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ -524, %do.end.i ]
  %15 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdata.i, align 4
  %desc.i15 = getelementptr inbounds %struct.snd_sof_pdata, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %desc.i15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc.i15, align 4
  %ops.i16 = getelementptr inbounds %struct.sof_dev_desc, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %ops.i16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i16, align 4
  %read.i17 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %read.i17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read.i17, align 4
  %tobool.not.i18 = icmp eq ptr %22, null
  br i1 %tobool.not.i18, label %do.end.i23, label %if.then.i22

if.then.i22:                                      ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i19 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  %23 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i19, align 4
  %add.ptr.i20 = getelementptr i8, ptr %24, i32 524296
  %call.i21 = tail call i32 %22(ptr noundef %sdev, ptr noundef %add.ptr.i20) #6
  br label %snd_sof_dsp_read.exit25

do.end.i23:                                       ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #9
  br label %snd_sof_dsp_read.exit25

snd_sof_dsp_read.exit25:                          ; preds = %do.end.i23, %if.then.i22
  %retval.0.i24 = phi i32 [ %call.i21, %if.then.i22 ], [ -524, %do.end.i23 ]
  %dsp_oops_offset.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 24
  %27 = ptrtoint ptr %dsp_oops_offset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dsp_oops_offset.i, align 4
  call void @sof_mailbox_read(ptr noundef %sdev, i32 noundef %28, ptr noundef nonnull %xoops, i32 noundef 124) #6
  %totalsize.i = getelementptr inbounds %struct.sof_ipc_dsp_oops_arch_hdr, ptr %xoops, i32 0, i32 1
  %29 = ptrtoint ptr %totalsize.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %totalsize.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %30)
  %cmp.i = icmp ugt i32 %30, 1024
  br i1 %cmp.i, label %do.end.i26, label %if.end.i

do.end.i26:                                       ; preds = %snd_sof_dsp_read.exit25
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.92, i32 noundef %30) #9
  br label %hda_dsp_get_registers.exit

if.end.i:                                         ; preds = %snd_sof_dsp_read.exit25
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add i32 %30, %28
  %mmio_bar.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 22
  %33 = ptrtoint ptr %mmio_bar.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mmio_bar.i, align 4
  %call.i27 = call i32 @sof_block_read(ptr noundef %sdev, i32 noundef %34, i32 noundef %add.i, ptr noundef nonnull %panic_info, i32 noundef 44) #6
  %add5.i = add i32 %add.i, 44
  %35 = ptrtoint ptr %mmio_bar.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mmio_bar.i, align 4
  %call7.i = call i32 @sof_block_read(ptr noundef %sdev, i32 noundef %36, i32 noundef %add5.i, ptr noundef nonnull %stack, i32 noundef 128) #6
  br label %hda_dsp_get_registers.exit

hda_dsp_get_registers.exit:                       ; preds = %if.end.i, %do.end.i26
  call void @sof_print_oops_and_stack(ptr noundef %sdev, ptr noundef nonnull %cond, i32 noundef %retval.0.i, i32 noundef %retval.0.i24, ptr noundef nonnull %xoops, ptr noundef nonnull %panic_info, ptr noundef nonnull %stack, i32 noundef 32) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %msg.i) #6
  %37 = call ptr @memset(ptr %msg.i, i32 255, i32 128)
  %pdata.i.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %arrayidx.i.i = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %snd_sof_dsp_read.exit.i.for.body.i_crit_edge, %if.else
  %i.02.i = phi i32 [ 0, %if.else ], [ %inc.i, %snd_sof_dsp_read.exit.i.for.body.i_crit_edge ]
  %len.01.i = phi i32 [ 0, %if.else ], [ %add2.i, %snd_sof_dsp_read.exit.i.for.body.i_crit_edge ]
  %38 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdata.i.i, align 4
  %desc.i.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %desc.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.sof_dev_desc, ptr %41, i32 0, i32 14
  %42 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i.i, align 4
  %read.i.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = shl i32 %i.02.i, 2
  %add.i28 = add nuw nsw i32 %mul.i, 524288
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 %add.i28
  %call.i.i = tail call i32 %45(ptr noundef %sdev, ptr noundef %add.ptr.i.i) #6
  br label %snd_sof_dsp_read.exit.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #9
  br label %snd_sof_dsp_read.exit.i

snd_sof_dsp_read.exit.i:                          ; preds = %do.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ -524, %do.end.i.i ]
  %add.ptr.i29 = getelementptr i8, ptr %msg.i, i32 %len.01.i
  %sub.i = sub i32 128, %len.01.i
  %call1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i29, i32 noundef %sub.i, ptr noundef nonnull @.str.94, i32 noundef %retval.0.i.i) #6
  %add2.i = add i32 %call1.i, %len.01.i
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %hda_dsp_dump_ext_rom_status.exit, label %snd_sof_dsp_read.exit.i.for.body.i_crit_edge

snd_sof_dsp_read.exit.i.for.body.i_crit_edge:     ; preds = %snd_sof_dsp_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

hda_dsp_dump_ext_rom_status.exit:                 ; preds = %snd_sof_dsp_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull %cond, ptr noundef %51, ptr noundef nonnull @.str.95, ptr noundef nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %msg.i) #6
  br label %if.end

if.end:                                           ; preds = %hda_dsp_dump_ext_rom_status.exit, %hda_dsp_get_registers.exit
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %stack) #6
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %panic_info) #6
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %xoops) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hda_dsp_get_status(ptr noundef %sdev, ptr noundef %level) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.inc.17.thread, label %snd_sof_dsp_read.exit

for.inc.17.thread:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #9
  br label %for.inc.18

snd_sof_dsp_read.exit:                            ; preds = %entry
  %arrayidx.i = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 524288
  %call.i = tail call i32 %7(ptr noundef %sdev, ptr noundef %add.ptr.i) #6
  %12 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %snd_sof_dsp_read.exit.for.inc.18_crit_edge [
    i32 3, label %snd_sof_dsp_read.exit.do.end_crit_edge
    i32 4, label %do.end.fold.split
    i32 5, label %do.end.fold.split85
    i32 40, label %do.end.fold.split86
    i32 41, label %do.end.fold.split87
    i32 42, label %do.end.fold.split88
    i32 43, label %do.end.fold.split89
    i32 44, label %do.end.fold.split90
    i32 45, label %do.end.fold.split91
    i32 46, label %do.end.fold.split92
    i32 47, label %do.end.fold.split93
    i32 50, label %do.end.fold.split94
    i32 51, label %do.end.fold.split95
    i32 -1092616192, label %do.end.fold.split96
    i32 -322961408, label %do.end.fold.split97
    i32 -889323520, label %do.end.fold.split98
    i32 -1091633152, label %do.end.fold.split99
    i32 -557125632, label %do.end.fold.split100
    i32 1280069205, label %do.end.fold.split101
  ]

snd_sof_dsp_read.exit.do.end_crit_edge:           ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

snd_sof_dsp_read.exit.for.inc.18_crit_edge:       ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.18

do.end.fold.split:                                ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.fold.split85:                              ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.fold.split86:                              ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.fold.split87:                              ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.fold.split88:                              ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.fold.split89:                              ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.fold.split90:                              ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.fold.split91:                              ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.fold.split92:                              ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.fold.split93:                              ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.fold.split94:                              ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.fold.split95:                              ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.fold.split96:                              ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.fold.split97:                              ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.fold.split98:                              ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.fold.split99:                              ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.fold.split100:                             ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end.fold.split101:                             ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %do.end.fold.split101, %do.end.fold.split100, %do.end.fold.split99, %do.end.fold.split98, %do.end.fold.split97, %do.end.fold.split96, %do.end.fold.split95, %do.end.fold.split94, %do.end.fold.split93, %do.end.fold.split92, %do.end.fold.split91, %do.end.fold.split90, %do.end.fold.split89, %do.end.fold.split88, %do.end.fold.split87, %do.end.fold.split86, %do.end.fold.split85, %do.end.fold.split, %snd_sof_dsp_read.exit.do.end_crit_edge
  %i.025.lcssa = phi i32 [ 0, %snd_sof_dsp_read.exit.do.end_crit_edge ], [ 1, %do.end.fold.split ], [ 2, %do.end.fold.split85 ], [ 3, %do.end.fold.split86 ], [ 4, %do.end.fold.split87 ], [ 5, %do.end.fold.split88 ], [ 6, %do.end.fold.split89 ], [ 7, %do.end.fold.split90 ], [ 8, %do.end.fold.split91 ], [ 9, %do.end.fold.split92 ], [ 10, %do.end.fold.split93 ], [ 11, %do.end.fold.split94 ], [ 12, %do.end.fold.split95 ], [ 13, %do.end.fold.split96 ], [ 14, %do.end.fold.split97 ], [ 15, %do.end.fold.split98 ], [ 16, %do.end.fold.split99 ], [ 17, %do.end.fold.split100 ], [ 18, %do.end.fold.split101 ]
  %13 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdev, align 4
  %msg = getelementptr [19 x %struct.hda_dsp_msg_code], ptr @hda_dsp_rom_msg, i32 0, i32 %i.025.lcssa, i32 1
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %msg, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %level, ptr noundef %14, ptr noundef nonnull @.str.67, ptr noundef %16, i32 noundef %call.i) #9
  br label %cleanup

for.inc.18:                                       ; preds = %snd_sof_dsp_read.exit.for.inc.18_crit_edge, %for.inc.17.thread
  %retval.0.i2229333639424548515457606366697275788184 = phi i32 [ -524, %for.inc.17.thread ], [ %call.i, %snd_sof_dsp_read.exit.for.inc.18_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_get_status.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_get_status, %if.then9)) #6
          to label %cleanup [label %if.then9], !srcloc !260

if.then9:                                         ; preds = %for.inc.18
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_get_status.__UNIQUE_ID_ddebug253, ptr noundef %18, ptr noundef nonnull @.str.69, i32 noundef %retval.0.i2229333639424548515457606366697275788184) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %for.inc.18, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_print_oops_and_stack(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hda_ipc_irq_dump(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %hw_pdata.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %read.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 12
  %call.i = tail call i32 %9(ptr noundef %sdev, ptr noundef %add.ptr.i) #6
  br label %snd_sof_dsp_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #9
  br label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit:                            ; preds = %do.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ -524, %do.end.i ]
  %14 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata.i, align 4
  %desc.i19 = getelementptr inbounds %struct.snd_sof_pdata, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %desc.i19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc.i19, align 4
  %ops.i20 = getelementptr inbounds %struct.sof_dev_desc, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %ops.i20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i20, align 4
  %read.i21 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %read.i21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read.i21, align 4
  %tobool.not.i22 = icmp eq ptr %21, null
  br i1 %tobool.not.i22, label %do.end.i27, label %if.then.i26

if.then.i26:                                      ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i23 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 0
  %22 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i23, align 4
  %add.ptr.i24 = getelementptr i8, ptr %23, i32 36
  %call.i25 = tail call i32 %21(ptr noundef %sdev, ptr noundef %add.ptr.i24) #6
  br label %snd_sof_dsp_read.exit29

do.end.i27:                                       ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #9
  br label %snd_sof_dsp_read.exit29

snd_sof_dsp_read.exit29:                          ; preds = %do.end.i27, %if.then.i26
  %retval.0.i28 = phi i32 [ %call.i25, %if.then.i26 ], [ -524, %do.end.i27 ]
  %26 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdata.i, align 4
  %desc.i31 = getelementptr inbounds %struct.snd_sof_pdata, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %desc.i31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc.i31, align 4
  %ops.i32 = getelementptr inbounds %struct.sof_dev_desc, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %ops.i32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i32, align 4
  %read.i33 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %read.i33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read.i33, align 4
  %tobool.not.i34 = icmp eq ptr %33, null
  br i1 %tobool.not.i34, label %do.end.i39, label %if.then.i38

if.then.i38:                                      ; preds = %snd_sof_dsp_read.exit29
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i35 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 0
  %34 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i35, align 4
  %add.ptr.i36 = getelementptr i8, ptr %35, i32 32
  %call.i37 = tail call i32 %33(ptr noundef %sdev, ptr noundef %add.ptr.i36) #6
  br label %snd_sof_dsp_read.exit41

do.end.i39:                                       ; preds = %snd_sof_dsp_read.exit29
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #9
  br label %snd_sof_dsp_read.exit41

snd_sof_dsp_read.exit41:                          ; preds = %do.end.i39, %if.then.i38
  %retval.0.i40 = phi i32 [ %call.i37, %if.then.i38 ], [ -524, %do.end.i39 ]
  %38 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdata.i, align 4
  %desc.i43 = getelementptr inbounds %struct.snd_sof_pdata, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %desc.i43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %desc.i43, align 4
  %ops.i44 = getelementptr inbounds %struct.sof_dev_desc, ptr %41, i32 0, i32 14
  %42 = ptrtoint ptr %ops.i44 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i44, align 4
  %read.i45 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %read.i45 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read.i45, align 4
  %tobool.not.i46 = icmp eq ptr %45, null
  br i1 %tobool.not.i46, label %do.end.i51, label %if.then.i50

if.then.i50:                                      ; preds = %snd_sof_dsp_read.exit41
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i47 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 1
  %46 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i47, align 4
  %add.ptr.i48 = getelementptr i8, ptr %47, i32 8
  %call.i49 = tail call i32 %45(ptr noundef %sdev, ptr noundef %add.ptr.i48) #6
  br label %snd_sof_dsp_read.exit53

do.end.i51:                                       ; preds = %snd_sof_dsp_read.exit41
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #9
  br label %snd_sof_dsp_read.exit53

snd_sof_dsp_read.exit53:                          ; preds = %do.end.i51, %if.then.i50
  %retval.0.i52 = phi i32 [ %call.i49, %if.then.i50 ], [ -524, %do.end.i51 ]
  %remap_addr = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 4
  %50 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %51, i32 93
  %aligned_mmio.i = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 28
  %52 = ptrtoint ptr %aligned_mmio.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load.i = load i16, ptr %aligned_mmio.i, align 4
  %53 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %bf.cast.not.i = icmp eq i16 %53, 0
  br i1 %bf.cast.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %snd_sof_dsp_read.exit53
  call void @__sanitizer_cov_trace_pc() #8
  %call.i54 = tail call i32 @snd_hdac_aligned_read(ptr noundef %add.ptr, i32 noundef 255) #6
  br label %snd_hdac_reg_readb.exit

cond.false.i:                                     ; preds = %snd_sof_dsp_read.exit53
  call void @__sanitizer_cov_trace_pc() #8
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !262
  %conv.i = zext i8 %54 to i32
  br label %snd_hdac_reg_readb.exit

snd_hdac_reg_readb.exit:                          ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i54, %cond.true.i ], [ %conv.i, %cond.false.i ]
  %55 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sdev, align 4
  %conv = and i32 %cond.i, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.17, i32 noundef %retval.0.i28, i32 noundef %retval.0.i40, i32 noundef %conv) #9
  %57 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.20, i32 noundef %retval.0.i52, i32 noundef %retval.0.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hda_ipc_dump(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @hda_ipc_irq_dump(ptr noundef %sdev)
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 76
  %call.i = tail call i32 %7(ptr noundef %sdev, ptr noundef %add.ptr.i) #6
  br label %snd_sof_dsp_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #9
  br label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit:                            ; preds = %do.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ -524, %do.end.i ]
  %12 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata.i, align 4
  %desc.i8 = getelementptr inbounds %struct.snd_sof_pdata, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %desc.i8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc.i8, align 4
  %ops.i9 = getelementptr inbounds %struct.sof_dev_desc, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %ops.i9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i9, align 4
  %read.i10 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %read.i10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read.i10, align 4
  %tobool.not.i11 = icmp eq ptr %19, null
  br i1 %tobool.not.i11, label %do.end.i16, label %if.then.i15

if.then.i15:                                      ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i12 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  %20 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i12, align 4
  %add.ptr.i13 = getelementptr i8, ptr %21, i32 64
  %call.i14 = tail call i32 %19(ptr noundef %sdev, ptr noundef %add.ptr.i13) #6
  br label %snd_sof_dsp_read.exit18

do.end.i16:                                       ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #9
  br label %snd_sof_dsp_read.exit18

snd_sof_dsp_read.exit18:                          ; preds = %do.end.i16, %if.then.i15
  %retval.0.i17 = phi i32 [ %call.i14, %if.then.i15 ], [ -524, %do.end.i16 ]
  %24 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdata.i, align 4
  %desc.i20 = getelementptr inbounds %struct.snd_sof_pdata, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %desc.i20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %desc.i20, align 4
  %ops.i21 = getelementptr inbounds %struct.sof_dev_desc, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %ops.i21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i21, align 4
  %read.i22 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %read.i22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read.i22, align 4
  %tobool.not.i23 = icmp eq ptr %31, null
  br i1 %tobool.not.i23, label %do.end.i28, label %if.then.i27

if.then.i27:                                      ; preds = %snd_sof_dsp_read.exit18
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i24 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  %32 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i24, align 4
  %add.ptr.i25 = getelementptr i8, ptr %33, i32 80
  %call.i26 = tail call i32 %31(ptr noundef %sdev, ptr noundef %add.ptr.i25) #6
  br label %snd_sof_dsp_read.exit30

do.end.i28:                                       ; preds = %snd_sof_dsp_read.exit18
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #9
  br label %snd_sof_dsp_read.exit30

snd_sof_dsp_read.exit30:                          ; preds = %do.end.i28, %if.then.i27
  %retval.0.i29 = phi i32 [ %call.i26, %if.then.i27 ], [ -524, %do.end.i28 ]
  %36 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.22, i32 noundef %retval.0.i, i32 noundef %retval.0.i17, i32 noundef %retval.0.i29) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_probe(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  %class = getelementptr i8, ptr %1, i32 -96
  %2 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %class, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %3, label %do.end9 [
    i32 262912, label %do.end
    i32 262400, label %entry.do.end15_crit_edge
    i32 263040, label %entry.do.end15_crit_edge274
  ]

entry.do.end15_crit_edge274:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.24) #9
  br label %cleanup

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %3) #9
  br label %cleanup

do.end15:                                         ; preds = %entry.do.end15_crit_edge, %entry.do.end15_crit_edge274
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.30, i32 noundef %3) #9
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %5 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdata, align 4
  %desc1.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %desc1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %desc1.i, align 4
  %chip_info.i = getelementptr inbounds %struct.sof_dev_desc, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip_info.i, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %do.end21, label %if.end23

do.end21:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdev, align 4
  %device = getelementptr i8, ptr %1, i32 -102
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %device, align 2
  %conv = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.34, i32 noundef %conv) #9
  br label %cleanup

if.end23:                                         ; preds = %do.end15
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %10, align 4
  %num_cores = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 56
  %17 = ptrtoint ptr %num_cores to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %num_cores, align 4
  %18 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %19, i32 noundef 1580, i32 noundef 3520) #6
  %tobool26.not = icmp eq ptr %call.i, null
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %20 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %hw_pdata, align 4
  %desc = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %10, ptr %desc, align 4
  %24 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sdev, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #6
  %26 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %27 = call ptr @memset(ptr %26, i32 255, i32 48)
  %28 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %fwnode.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %26, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.36, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %32 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %33 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %properties.i.i, align 8
  %34 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #6
  %dmic_dev = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %call.i, i32 0, i32 7
  %35 = ptrtoint ptr %dmic_dev to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i.i, ptr %dmic_dev, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end37, label %if.end41

do.end37:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.38) #9
  %38 = ptrtoint ptr %dmic_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dmic_dev, align 4
  %40 = ptrtoint ptr %39 to i32
  br label %cleanup

if.end41:                                         ; preds = %if.end28
  %no_ipc_position = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %call.i, i32 0, i32 4
  %41 = ptrtoint ptr %no_ipc_position to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %no_ipc_position, align 4
  %42 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdata, align 4
  %hw_pdata.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %43, i32 0, i32 13
  %44 = ptrtoint ptr %hw_pdata.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw_pdata.i, align 4
  %hbus.i = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sdev, align 4
  %add.ptr.i = getelementptr i8, ptr %47, i32 -136
  call void @sof_hda_bus_init(ptr noundef %hbus.i, ptr noundef %47) #6
  %48 = load i32, ptr @sof_hda_position_quirk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp.i258 = icmp eq i32 %48, 1
  %use_posbuf.i = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %45, i32 0, i32 1, i32 0, i32 28
  %49 = ptrtoint ptr %use_posbuf.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load.i = load i16, ptr %use_posbuf.i, align 4
  %bf.clear.i = and i16 %bf.load.i, -12289
  %masksel.i = select i1 %cmp.i258, i16 0, i16 4096
  %bf.set6.sink.i = or i16 %bf.clear.i, %masksel.i
  %bdl_pos_adj.i = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %45, i32 0, i32 1, i32 0, i32 30
  %50 = ptrtoint ptr %bdl_pos_adj.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %bdl_pos_adj.i, align 4
  %bf.set9.i = or i16 %bf.set6.sink.i, 8192
  store i16 %bf.set9.i, ptr %use_posbuf.i, align 4
  %prepare_mutex.i = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %45, i32 0, i32 1, i32 4
  call void @__mutex_init(ptr noundef %prepare_mutex.i, ptr noundef nonnull @.str.97, ptr noundef nonnull @hda_init.__key) #6
  %pci10.i = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %45, i32 0, i32 1, i32 2
  %51 = ptrtoint ptr %pci10.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr.i, ptr %pci10.i, align 4
  %mixer_assigned.i = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %45, i32 0, i32 1, i32 8
  %52 = ptrtoint ptr %mixer_assigned.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %mixer_assigned.i, align 4
  %53 = load ptr, ptr @hda_model, align 4
  %modelname.i = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %45, i32 0, i32 1, i32 3
  %54 = ptrtoint ptr %modelname.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %modelname.i, align 4
  %resource.i = getelementptr i8, ptr %47, i32 936
  %55 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %resource.i, align 8
  %addr.i = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %45, i32 0, i32 1, i32 0, i32 3
  %57 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %addr.i, align 4
  %call11.i = call ptr @pci_ioremap_bar(ptr noundef %add.ptr.i, i32 noundef 0) #6
  %remap_addr.i = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %45, i32 0, i32 1, i32 0, i32 4
  %58 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call11.i, ptr %remap_addr.i, align 4
  %tobool.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool.not.i, label %if.end41.hda_init.exit.thread_crit_edge, label %if.end18.i

if.end41.hda_init.exit.thread_crit_edge:          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %hda_init.exit.thread

if.end18.i:                                       ; preds = %if.end41
  %bar.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21
  %59 = ptrtoint ptr %bar.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call11.i, ptr %bar.i, align 4
  %call29.i = call i32 @hda_dsp_ctrl_get_caps(ptr noundef %sdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %if.end18.i.hda_init.exit.thread_crit_edge, label %if.end47

if.end18.i.hda_init.exit.thread_crit_edge:        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hda_init.exit.thread

hda_init.exit.thread:                             ; preds = %if.end18.i.hda_init.exit.thread_crit_edge, %if.end41.hda_init.exit.thread_crit_edge
  %sdev.sink.i = phi ptr [ %hbus.i, %if.end41.hda_init.exit.thread_crit_edge ], [ %sdev, %if.end18.i.hda_init.exit.thread_crit_edge ]
  %.str.103.sink.i = phi ptr [ @.str.41, %if.end41.hda_init.exit.thread_crit_edge ], [ @.str.103, %if.end18.i.hda_init.exit.thread_crit_edge ]
  %retval.0.ph.i = phi i32 [ -6, %if.end41.hda_init.exit.thread_crit_edge ], [ %call29.i, %if.end18.i.hda_init.exit.thread_crit_edge ]
  %60 = ptrtoint ptr %sdev.sink.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sdev.sink.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull %.str.103.sink.i) #9
  br label %hdac_bus_unmap

if.end47:                                         ; preds = %if.end18.i
  %call48 = call ptr @pci_ioremap_bar(ptr noundef %add.ptr, i32 noundef 4) #6
  %arrayidx = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call48, ptr %arrayidx, align 4
  %tobool51.not = icmp eq ptr %call48, null
  br i1 %tobool51.not, label %do.end55, label %if.end57

do.end55:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.41) #9
  br label %hdac_bus_unmap

if.end57:                                         ; preds = %if.end47
  %mmio_bar = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 22
  %65 = ptrtoint ptr %mmio_bar to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 4, ptr %mmio_bar, align 4
  %mailbox_bar = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 23
  %66 = ptrtoint ptr %mailbox_bar to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 4, ptr %mailbox_bar, align 4
  %call.i260 = call i32 @dma_set_mask(ptr noundef %1, i64 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i260)
  %cmp.i261 = icmp eq i32 %call.i260, 0
  br i1 %cmp.i261, label %if.end57.if.end75.sink.split_crit_edge, label %do.body62

if.end57.if.end75.sink.split_crit_edge:           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75.sink.split

do.body62:                                        ; preds = %if.end57
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_probe.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_probe, %if.then68)) #6
          to label %do.end72 [label %if.then68], !srcloc !260

if.then68:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_probe.__UNIQUE_ID_ddebug257, ptr noundef %68, ptr noundef nonnull @.str.44) #6
  br label %do.end72

do.end72:                                         ; preds = %if.then68, %do.body62
  %call.i262 = call i32 @dma_set_mask(ptr noundef %1, i64 noundef 4294967295) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i262)
  %cmp.i263 = icmp eq i32 %call.i262, 0
  br i1 %cmp.i263, label %do.end72.if.end75.sink.split_crit_edge, label %do.end72.if.end75_crit_edge

do.end72.if.end75_crit_edge:                      ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

do.end72.if.end75.sink.split_crit_edge:           ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75.sink.split

if.end75.sink.split:                              ; preds = %do.end72.if.end75.sink.split_crit_edge, %if.end57.if.end75.sink.split_crit_edge
  %.sink = phi i64 [ -1, %if.end57.if.end75.sink.split_crit_edge ], [ 4294967295, %do.end72.if.end75.sink.split_crit_edge ]
  %call1.i264 = call i32 @dma_set_coherent_mask(ptr noundef %1, i64 noundef %.sink) #6
  br label %if.end75

if.end75:                                         ; preds = %if.end75.sink.split, %do.end72.if.end75_crit_edge
  %dma_parms.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 22
  %69 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i267 = icmp eq ptr %70, null
  br i1 %tobool.not.i267, label %if.end75.dma_set_max_seg_size.exit_crit_edge, label %if.then.i268

if.end75.dma_set_max_seg_size.exit_crit_edge:     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_set_max_seg_size.exit

if.then.i268:                                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %70, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i268, %if.end75.dma_set_max_seg_size.exit_crit_edge
  %call78 = call i32 @hda_dsp_stream_init(ptr noundef %sdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %do.end84, label %if.end86

do.end84:                                         ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.46) #9
  br label %free_streams

if.end86:                                         ; preds = %dma_set_max_seg_size.exit
  %74 = load i8, ptr @hda_use_msi, align 1, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool87.not = icmp eq i8 %74, 0
  br i1 %tobool87.not, label %if.end86.if.end99_crit_edge, label %land.lhs.true89

if.end86.if.end99_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

land.lhs.true89:                                  ; preds = %if.end86
  %call.i269 = call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 1, i32 noundef 2, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i269)
  %cmp91 = icmp sgt i32 %call.i269, 0
  br i1 %cmp91, label %do.end96, label %land.lhs.true89.if.end99_crit_edge

land.lhs.true89.if.end99_crit_edge:               ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

do.end96:                                         ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %76, ptr noundef nonnull @.str.49) #9
  %call98 = call i32 @pci_irq_vector(ptr noundef %add.ptr, i32 noundef 0) #6
  %ipc_irq = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 19
  %77 = ptrtoint ptr %ipc_irq to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call98, ptr %ipc_irq, align 4
  %msi_enabled = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 55
  %78 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %msi_enabled, align 4
  br label %if.end99

if.end99:                                         ; preds = %do.end96, %land.lhs.true89.if.end99_crit_edge, %if.end86.if.end99_crit_edge
  %msi_enabled100 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 55
  %79 = ptrtoint ptr %msi_enabled100 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %msi_enabled100, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool101.not = icmp eq i8 %80, 0
  br i1 %tobool101.not, label %do.end105, label %if.end99.do.body109_crit_edge

if.end99.do.body109_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body109

do.end105:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sdev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %82, ptr noundef nonnull @.str.52) #9
  %irq = getelementptr i8, ptr %1, i32 932
  %83 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %irq, align 4
  %ipc_irq107 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 19
  %85 = ptrtoint ptr %ipc_irq107 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %ipc_irq107, align 4
  br label %do.body109

do.body109:                                       ; preds = %do.end105, %if.end99.do.body109_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_probe.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_probe, %if.then121)) #6
          to label %do.end126 [label %if.then121], !srcloc !260

if.then121:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sdev, align 4
  %ipc_irq123 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 19
  %88 = ptrtoint ptr %ipc_irq123 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ipc_irq123, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_probe.__UNIQUE_ID_ddebug258, ptr noundef %87, ptr noundef nonnull @.str.54, i32 noundef %89) #6
  br label %do.end126

do.end126:                                        ; preds = %if.then121, %do.body109
  %ipc_irq127 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 19
  %90 = ptrtoint ptr %ipc_irq127 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ipc_irq127, align 4
  %call128 = call i32 @request_threaded_irq(i32 noundef %91, ptr noundef nonnull @hda_dsp_interrupt_handler, ptr noundef nonnull @hda_dsp_interrupt_thread, i32 noundef 128, ptr noundef nonnull @.str.55, ptr noundef %sdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129 = icmp slt i32 %call128, 0
  br i1 %cmp129, label %do.end134, label %if.end137

do.end134:                                        ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sdev, align 4
  %94 = ptrtoint ptr %ipc_irq127 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ipc_irq127, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.57, i32 noundef %95) #9
  br label %free_irq_vector

if.end137:                                        ; preds = %do.end126
  call void @pci_set_master(ptr noundef %add.ptr) #6
  %irq138 = getelementptr i8, ptr %1, i32 932
  %96 = ptrtoint ptr %irq138 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %irq138, align 4
  call void @synchronize_irq(i32 noundef %97) #6
  %call139 = call zeroext i1 @snd_sof_pci_update_bits(ptr noundef %sdev, i32 noundef 68, i32 noundef 7, i32 noundef 0) #6
  %call140 = call fastcc i32 @hda_init_caps(ptr noundef %sdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %cmp141 = icmp slt i32 %call140, 0
  br i1 %cmp141, label %free_ipc_irq, label %if.end144

if.end144:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #8
  call void @hda_dsp_ctrl_ppcap_enable(ptr noundef %sdev, i1 noundef zeroext true) #6
  call void @hda_dsp_ctrl_ppcap_int_enable(ptr noundef %sdev, i1 noundef zeroext true) #6
  %dsp_box = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 14
  %98 = ptrtoint ptr %dsp_box to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 528384, ptr %dsp_box, align 4
  %d0i3_work = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %call.i, i32 0, i32 8
  call void @__init_work(ptr noundef %d0i3_work, i32 noundef 0) #6
  %99 = ptrtoint ptr %d0i3_work to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -64, ptr %d0i3_work, align 4
  %lockdep_map = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %call.i, i32 0, i32 8, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.59, ptr noundef nonnull @hda_dsp_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry153 = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %call.i, i32 0, i32 8, i32 0, i32 1
  %100 = ptrtoint ptr %entry153 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %entry153, ptr %entry153, align 4
  %prev.i = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %call.i, i32 0, i32 8, i32 0, i32 1, i32 1
  %101 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %entry153, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %call.i, i32 0, i32 8, i32 0, i32 2
  %102 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @hda_dsp_d0i3_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %call.i, i32 0, i32 8, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.61, ptr noundef nonnull @hda_dsp_probe.__key.60) #6
  br label %cleanup

free_ipc_irq:                                     ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #8
  %103 = ptrtoint ptr %ipc_irq127 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ipc_irq127, align 4
  %call165 = call ptr @free_irq(i32 noundef %104, ptr noundef %sdev) #6
  br label %free_irq_vector

free_irq_vector:                                  ; preds = %free_ipc_irq, %do.end134
  %ret.0 = phi i32 [ %call128, %do.end134 ], [ %call140, %free_ipc_irq ]
  %105 = ptrtoint ptr %msi_enabled100 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %msi_enabled100, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool167.not = icmp eq i8 %106, 0
  br i1 %tobool167.not, label %free_irq_vector.free_streams_crit_edge, label %if.then168

free_irq_vector.free_streams_crit_edge:           ; preds = %free_irq_vector
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_streams

if.then168:                                       ; preds = %free_irq_vector
  call void @__sanitizer_cov_trace_pc() #8
  call void @pci_free_irq_vectors(ptr noundef %add.ptr) #6
  br label %free_streams

free_streams:                                     ; preds = %if.then168, %free_irq_vector.free_streams_crit_edge, %do.end84
  %ret.1 = phi i32 [ %call78, %do.end84 ], [ %ret.0, %if.then168 ], [ %ret.0, %free_irq_vector.free_streams_crit_edge ]
  call void @hda_dsp_stream_free(ptr noundef %sdev) #6
  %107 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx, align 4
  call void @iounmap(ptr noundef %108) #6
  br label %hdac_bus_unmap

hdac_bus_unmap:                                   ; preds = %free_streams, %do.end55, %hda_init.exit.thread
  %ret.2 = phi i32 [ %ret.1, %free_streams ], [ -6, %do.end55 ], [ %retval.0.ph.i, %hda_init.exit.thread ]
  %109 = ptrtoint ptr %dmic_dev to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dmic_dev, align 4
  call void @platform_device_unregister(ptr noundef %110) #6
  %111 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %remap_addr.i, align 4
  call void @iounmap(ptr noundef %112) #6
  br label %cleanup

cleanup:                                          ; preds = %hdac_bus_unmap, %if.end144, %do.end37, %if.end23.cleanup_crit_edge, %do.end21, %do.end9, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end9 ], [ %40, %do.end37 ], [ 0, %if.end144 ], [ -12, %if.end23.cleanup_crit_edge ], [ %ret.2, %hdac_bus_unmap ], [ -5, %do.end21 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_stream_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hda_dsp_interrupt_handler(i32 noundef %irq, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %context, i32 0, i32 12
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %snd_sof_dsp_read.exit.thread, label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #9
  br label %if.then

snd_sof_dsp_read.exit:                            ; preds = %entry
  %arrayidx.i = getelementptr %struct.snd_sof_dev, ptr %context, i32 0, i32 21, i32 0
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 36
  %call.i = tail call i32 %7(ptr noundef %context, ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %snd_sof_dsp_read.exit.cleanup_crit_edge, label %snd_sof_dsp_read.exit.if.then_crit_edge

snd_sof_dsp_read.exit.if.then_crit_edge:          ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

snd_sof_dsp_read.exit.cleanup_crit_edge:          ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %snd_sof_dsp_read.exit.if.then_crit_edge, %snd_sof_dsp_read.exit.thread
  %call1 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %context, i32 noundef 0, i32 noundef 32, i32 noundef -2147483648, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %snd_sof_dsp_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.then ], [ 0, %snd_sof_dsp_read.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hda_dsp_interrupt_thread(i32 noundef %irq, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %context, i32 0, i32 12
  %call = tail call zeroext i1 @hda_dsp_check_stream_irq(ptr noundef %context) #6
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @hda_dsp_stream_threaded_handler(i32 noundef %irq, ptr noundef %context) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call zeroext i1 @hda_dsp_check_ipc_irq(ptr noundef %context) #6
  br i1 %call2, label %if.then3, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %desc = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %ops = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %irq_thread = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %irq_thread to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_thread, align 4
  %call5 = tail call i32 %7(i32 noundef %irq, ptr noundef %context) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %call14 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %context, i32 noundef 0, i32 noundef 32, i32 noundef -2147483648, i32 noundef -2147483648) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_sof_pci_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hda_init_caps(ptr noundef %sdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %hw_pdata.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata.i, align 4
  %hbus.i = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1
  %ppcap = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 6
  %4 = ptrtoint ptr %ppcap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ppcap, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %do.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_init_caps.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_init_caps, %if.then6)) #6
          to label %if.end7 [label %if.then6], !srcloc !260

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_init_caps.__UNIQUE_ID_ddebug254, ptr noundef %7, ptr noundef nonnull @.str.106) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.body, %entry.if.end7_crit_edge
  %call8 = tail call i32 @hda_dsp_ctrl_init_chip(ptr noundef %sdev, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %hbus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hbus.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.107, i32 noundef %call8) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %link_mask36 = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 9, i32 2
  %10 = ptrtoint ptr %link_mask36 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %link_mask36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool37.not = icmp eq i32 %11, 0
  br i1 %tobool37.not, label %do.body39, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body39:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_init_caps.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_init_caps, %if.then51)) #6
          to label %cleanup [label %if.then51], !srcloc !260

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_init_caps.__UNIQUE_ID_ddebug256, ptr noundef %13, ptr noundef nonnull @.str.109) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %do.body39, %if.end14.cleanup_crit_edge, %do.end12
  %retval.0 = phi i32 [ %call8, %do.end12 ], [ 0, %if.then51 ], [ 0, %do.body39 ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_dsp_ctrl_ppcap_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_dsp_ctrl_ppcap_int_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_dsp_d0i3_work(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_dsp_stream_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_remove(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata, align 4
  %desc = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %6 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 -136
  %d0i3_work = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 8
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %d0i3_work) #6
  %dmic_dev = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %dmic_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dmic_dev, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %cmp.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_device_unregister(ptr noundef nonnull %9) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call5 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 1, i32 noundef 4, i32 noundef -2147483648, i32 noundef 0) #6
  %call6 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef 32, i32 noundef -1073741824, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %host_managed_cores_mask = getelementptr inbounds %struct.sof_intel_dsp_desc, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %host_managed_cores_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %host_managed_cores_mask, align 4
  %call8 = tail call i32 @hda_dsp_core_reset_power_down(ptr noundef %sdev, i32 noundef %11) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %call10 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 1, i32 noundef 4, i32 noundef 1073741824, i32 noundef 0) #6
  %ipc_irq = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 19
  %12 = ptrtoint ptr %ipc_irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ipc_irq, align 4
  %call11 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %sdev) #6
  %msi_enabled = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 55
  %14 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %msi_enabled, align 4, !range !259
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool12.not = icmp eq i8 %15, 0
  br i1 %tobool12.not, label %if.end9.if.end14_crit_edge, label %if.then13

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_free_irq_vectors(ptr noundef %add.ptr) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end9.if.end14_crit_edge
  tail call void @hda_dsp_stream_free(ptr noundef %sdev) #6
  %arrayidx = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  tail call void @iounmap(ptr noundef %17) #6
  %remap_addr = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 4
  %18 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %remap_addr, align 4
  tail call void @iounmap(ptr noundef %19) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_sof_dsp_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_core_reset_power_down(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @hda_set_mach_params(ptr nocapture noundef writeonly %mach, ptr nocapture noundef readonly %sdev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 4
  %desc2 = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc2, align 4
  %4 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %entry.dev_name.exit_crit_edge ]
  %platform = getelementptr inbounds %struct.snd_soc_acpi_mach, ptr %mach, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %platform to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i, ptr %platform, align 4
  %ops = getelementptr inbounds %struct.sof_dev_desc, ptr %3, i32 0, i32 14
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %num_drv = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %12, i32 0, i32 63
  %13 = ptrtoint ptr %num_drv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_drv, align 4
  %num_dai_drivers = getelementptr inbounds %struct.snd_soc_acpi_mach, ptr %mach, i32 0, i32 10, i32 7
  %15 = ptrtoint ptr %num_dai_drivers to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %num_dai_drivers, align 4
  %16 = load ptr, ptr %ops, align 4
  %drv = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %16, i32 0, i32 62
  %17 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %drv, align 4
  %dai_drivers = getelementptr inbounds %struct.snd_soc_acpi_mach, ptr %mach, i32 0, i32 10, i32 8
  %19 = ptrtoint ptr %dai_drivers to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %dai_drivers, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hda_machine_select(ptr nocapture noundef readonly %sdev) local_unnamed_addr #0 align 64 {
if.end19:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.62) #9
  ret ptr null
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_pci_intel_probe(ptr noundef %pci, ptr noundef %pci_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_intel_dsp_driver_probe(ptr noundef %pci) #6
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %call, label %do.body [
    i32 0, label %entry.if.end6_crit_edge
    i32 3, label %entry.if.end6_crit_edge12
  ]

entry.if.end6_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_pci_intel_probe.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_pci_intel_probe, %if.then5)) #6
          to label %cleanup [label %if.then5], !srcloc !260

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_pci_intel_probe.__UNIQUE_ID_ddebug259, ptr noundef %dev, ptr noundef nonnull @.str.66) #6
  br label %cleanup

if.end6:                                          ; preds = %entry.if.end6_crit_edge, %entry.if.end6_crit_edge12
  %call7 = tail call i32 @sof_pci_probe(ptr noundef %pci, ptr noundef %pci_id) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %do.body
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ -19, %if.then5 ], [ -19, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_intel_dsp_driver_probe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_pci_probe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_mailbox_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_block_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_aligned_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_hda_bus_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_ctrl_get_caps(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hda_dsp_check_stream_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_stream_threaded_handler(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hda_dsp_check_ipc_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_ctrl_init_chip(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !30, !32, !34, !35, !37, !39, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !121, !122, !124, !125, !126, !128, !130, !131, !133, !135, !137, !139, !141, !143, !145, !146, !148, !149, !150, !152, !153, !154, !155, !157, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !201, !202, !203, !204, !206, !207, !208, !209, !211, !213, !214, !215, !216, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !244, !245, !247, !248}
!llvm.module.flags = !{!249, !250, !251, !252, !253, !254, !255, !256}
!llvm.ident = !{!257}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/intel/hda.c", i32 57, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hda_ctrl_dai_widget_setup._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hda_ctrl_dai_widget_setup._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/intel/hda.c", i32 77, i32 3}
!10 = !{ptr @hda_ctrl_dai_widget_setup._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @hda_ctrl_dai_widget_setup._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/sof/intel/hda.c", i32 90, i32 3}
!14 = !{ptr @hda_ctrl_dai_widget_setup._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @hda_ctrl_dai_widget_setup._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/sof/intel/hda.c", i32 112, i32 3}
!18 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @hda_ctrl_dai_widget_free._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @hda_ctrl_dai_widget_free._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/sof/intel/hda.c", i32 129, i32 3}
!23 = !{ptr @hda_ctrl_dai_widget_free._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @hda_ctrl_dai_widget_free._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @__param_use_msi, !26, !"__param_use_msi", i1 false, i1 false}
!26 = !{!"../sound/soc/sof/intel/hda.c", i32 421, i32 1}
!27 = !{ptr @__UNIQUE_ID_use_msitype247, !26, !"__UNIQUE_ID_use_msitype247", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_use_msi248, !29, !"__UNIQUE_ID_use_msi248", i1 false, i1 false}
!29 = !{!"../sound/soc/sof/intel/hda.c", i32 422, i32 1}
!30 = !{ptr @sof_hda_position_quirk, !31, !"sof_hda_position_quirk", i1 false, i1 false}
!31 = !{!"../sound/soc/sof/intel/hda.c", i32 427, i32 5}
!32 = !{ptr @__param_position_quirk, !33, !"__param_position_quirk", i1 false, i1 false}
!33 = !{!"../sound/soc/sof/intel/hda.c", i32 428, i32 1}
!34 = !{ptr @__UNIQUE_ID_position_quirktype249, !33, !"__UNIQUE_ID_position_quirktype249", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_position_quirk250, !36, !"__UNIQUE_ID_position_quirk250", i1 false, i1 false}
!36 = !{!"../sound/soc/sof/intel/hda.c", i32 429, i32 1}
!37 = !{ptr @__param_hda_model, !38, !"__param_hda_model", i1 false, i1 false}
!38 = !{!"../sound/soc/sof/intel/hda.c", i32 432, i32 1}
!39 = !{ptr @__UNIQUE_ID_hda_modeltype251, !38, !"__UNIQUE_ID_hda_modeltype251", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_hda_model252, !41, !"__UNIQUE_ID_hda_model252", i1 false, i1 false}
!41 = !{!"../sound/soc/sof/intel/hda.c", i32 433, i32 1}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/sof/intel/hda.c", i32 537, i32 48}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/sof/intel/hda.c", i32 574, i32 2}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @hda_ipc_irq_dump._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @hda_ipc_irq_dump._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/sof/intel/hda.c", i32 576, i32 2}
!51 = !{ptr @hda_ipc_irq_dump._entry.19, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @hda_ipc_irq_dump._entry_ptr.21, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/sof/intel/hda.c", i32 594, i32 2}
!55 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @hda_ipc_dump._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @hda_ipc_dump._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/sof/intel/hda.c", i32 895, i32 3}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @hda_dsp_probe._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @hda_dsp_probe._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/sof/intel/hda.c", i32 898, i32 3}
!65 = !{ptr @hda_dsp_probe._entry.26, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @hda_dsp_probe._entry_ptr.28, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/sof/intel/hda.c", i32 901, i32 2}
!69 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @hda_dsp_probe._entry.29, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @hda_dsp_probe._entry_ptr.32, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/sof/intel/hda.c", i32 905, i32 3}
!74 = !{ptr @hda_dsp_probe._entry.33, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @hda_dsp_probe._entry_ptr.35, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/sof/intel/hda.c", i32 919, i32 60}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/sof/intel/hda.c", i32 923, i32 3}
!80 = !{ptr @hda_dsp_probe._entry.37, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @hda_dsp_probe._entry_ptr.39, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/sof/intel/hda.c", i32 946, i32 3}
!84 = !{ptr @hda_dsp_probe._entry.40, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @hda_dsp_probe._entry_ptr.42, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/sof/intel/hda.c", i32 956, i32 3}
!88 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @hda_dsp_probe.__UNIQUE_ID_ddebug257, !87, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/sof/intel/hda.c", i32 964, i32 3}
!92 = !{ptr @hda_dsp_probe._entry.45, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @hda_dsp_probe._entry_ptr.47, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/sof/intel/hda.c", i32 979, i32 3}
!96 = !{ptr @hda_dsp_probe._entry.48, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @hda_dsp_probe._entry_ptr.50, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/sof/intel/hda.c", i32 986, i32 3}
!100 = !{ptr @hda_dsp_probe._entry.51, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @hda_dsp_probe._entry_ptr.53, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/sof/intel/hda.c", i32 994, i32 2}
!104 = !{ptr @hda_dsp_probe.__UNIQUE_ID_ddebug258, !103, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/sof/intel/hda.c", i32 997, i32 21}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/sof/intel/hda.c", i32 999, i32 3}
!109 = !{ptr @hda_dsp_probe._entry.56, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @hda_dsp_probe._entry_ptr.58, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @hda_dsp_probe.__key, !112, !"__key", i1 false, i1 false}
!112 = !{!"../sound/soc/sof/intel/hda.c", i32 1025, i32 2}
!113 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @hda_dsp_probe.__key.60, !112, !"__key", i1 false, i1 false}
!115 = !{ptr @.str.61, !112, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.62, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/sof/intel/hda.c", i32 1408, i32 3}
!118 = !{ptr @.str.63, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.64, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @hda_machine_select._entry, !117, !"_entry", i1 false, i1 false}
!121 = !{ptr @hda_machine_select._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.65, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/sof/intel/hda.c", i32 1419, i32 3}
!124 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @hda_pci_intel_probe.__UNIQUE_ID_ddebug259, !123, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!126 = !{ptr @__ksymtab_hda_pci_intel_probe, !127, !"__ksymtab_hda_pci_intel_probe", i1 false, i1 false}
!127 = !{!"../sound/soc/sof/intel/hda.c", i32 1425, i32 1}
!128 = !{ptr @__UNIQUE_ID_file260, !129, !"__UNIQUE_ID_file260", i1 false, i1 false}
!129 = !{!"../sound/soc/sof/intel/hda.c", i32 1427, i32 1}
!130 = !{ptr @__UNIQUE_ID_license261, !129, !"__UNIQUE_ID_license261", i1 false, i1 false}
!131 = !{ptr @__UNIQUE_ID_import_ns262, !132, !"__UNIQUE_ID_import_ns262", i1 false, i1 false}
!132 = !{!"../sound/soc/sof/intel/hda.c", i32 1428, i32 1}
!133 = !{ptr @__UNIQUE_ID_import_ns263, !134, !"__UNIQUE_ID_import_ns263", i1 false, i1 false}
!134 = !{!"../sound/soc/sof/intel/hda.c", i32 1429, i32 1}
!135 = !{ptr @__UNIQUE_ID_import_ns264, !136, !"__UNIQUE_ID_import_ns264", i1 false, i1 false}
!136 = !{!"../sound/soc/sof/intel/hda.c", i32 1430, i32 1}
!137 = !{ptr @__UNIQUE_ID_import_ns265, !138, !"__UNIQUE_ID_import_ns265", i1 false, i1 false}
!138 = !{!"../sound/soc/sof/intel/hda.c", i32 1431, i32 1}
!139 = !{ptr @__UNIQUE_ID_import_ns266, !140, !"__UNIQUE_ID_import_ns266", i1 false, i1 false}
!140 = !{!"../sound/soc/sof/intel/hda.c", i32 1432, i32 1}
!141 = !{ptr @__UNIQUE_ID_import_ns267, !142, !"__UNIQUE_ID_import_ns267", i1 false, i1 false}
!142 = !{!"../sound/soc/sof/intel/hda.c", i32 1433, i32 1}
!143 = !{ptr @hda_model, !144, !"hda_model", i1 false, i1 false}
!144 = !{!"../sound/soc/sof/intel/hda.c", i32 431, i32 14}
!145 = !{ptr @__param_str_use_msi, !26, !"__param_str_use_msi", i1 false, i1 false}
!146 = !{ptr @hda_use_msi, !147, !"hda_use_msi", i1 false, i1 false}
!147 = !{!"../sound/soc/sof/intel/hda.c", i32 420, i32 13}
!148 = !{ptr @__param_str_position_quirk, !33, !"__param_str_position_quirk", i1 false, i1 false}
!149 = !{ptr @__param_str_hda_model, !38, !"__param_str_hda_model", i1 false, i1 false}
!150 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/sof/intel/hda.c", i32 479, i32 4}
!152 = !{ptr @.str.68, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @hda_dsp_get_status._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @hda_dsp_get_status._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/sof/intel/hda.c", i32 486, i32 2}
!157 = !{ptr @hda_dsp_get_status.__UNIQUE_ID_ddebug253, !156, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!158 = !{ptr @.str.70, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/sof/intel/hda.c", i32 448, i32 35}
!160 = !{ptr @.str.71, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/sof/intel/hda.c", i32 449, i32 29}
!162 = !{ptr @.str.72, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/sof/intel/hda.c", i32 450, i32 27}
!164 = !{ptr @.str.73, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/sof/intel/hda.c", i32 451, i32 26}
!166 = !{ptr @.str.74, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/sof/intel/hda.c", i32 452, i32 35}
!168 = !{ptr @.str.75, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/sof/intel/hda.c", i32 453, i32 29}
!170 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/sof/intel/hda.c", i32 454, i32 34}
!172 = !{ptr @.str.77, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/sof/intel/hda.c", i32 455, i32 38}
!174 = !{ptr @.str.78, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/sof/intel/hda.c", i32 456, i32 32}
!176 = !{ptr @.str.79, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/sof/intel/hda.c", i32 457, i32 31}
!178 = !{ptr @.str.80, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/sof/intel/hda.c", i32 458, i32 37}
!180 = !{ptr @.str.81, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/sof/intel/hda.c", i32 459, i32 32}
!182 = !{ptr @.str.82, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/sof/intel/hda.c", i32 460, i32 32}
!184 = !{ptr @.str.83, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/sof/intel/hda.c", i32 461, i32 36}
!186 = !{ptr @.str.84, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/sof/intel/hda.c", i32 462, i32 32}
!188 = !{ptr @.str.85, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/sof/intel/hda.c", i32 463, i32 33}
!190 = !{ptr @.str.86, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/sof/intel/hda.c", i32 464, i32 31}
!192 = !{ptr @.str.87, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/sof/intel/hda.c", i32 465, i32 33}
!194 = !{ptr @.str.88, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/sof/intel/hda.c", i32 466, i32 30}
!196 = !{ptr @hda_dsp_rom_msg, !197, !"hda_dsp_rom_msg", i1 false, i1 false}
!197 = !{!"../sound/soc/sof/intel/hda.c", i32 447, i32 38}
!198 = !{ptr @.str.89, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/sof/intel/../ops.h", i32 319, i32 2}
!200 = !{ptr @.str.90, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.91, !199, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @snd_sof_dsp_read._entry, !199, !"_entry", i1 false, i1 false}
!203 = !{ptr @snd_sof_dsp_read._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.92, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/sof/intel/hda.c", i32 503, i32 3}
!206 = !{ptr @.str.93, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @hda_dsp_get_registers._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @hda_dsp_get_registers._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.94, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/sof/intel/hda.c", i32 528, i32 49}
!211 = !{ptr @.str.95, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/sof/intel/hda.c", i32 531, i32 2}
!213 = !{ptr @.str.96, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @hda_dsp_dump_ext_rom_status._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @hda_dsp_dump_ext_rom_status._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @hda_init.__key, !217, !"__key", i1 false, i1 false}
!217 = !{!"../sound/soc/sof/intel/hda.c", i32 618, i32 2}
!218 = !{ptr @.str.97, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.98, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/sof/intel/hda.c", i32 627, i32 3}
!221 = !{ptr @hda_init._entry, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @hda_init._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.100, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/sof/intel/hda.c", i32 637, i32 3}
!225 = !{ptr @hda_init._entry.99, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @hda_init._entry_ptr.101, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.103, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/sof/intel/hda.c", i32 642, i32 3}
!229 = !{ptr @hda_init._entry.102, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @hda_init._entry_ptr.104, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.105, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/sof/intel/hda.c", i32 756, i32 3}
!233 = !{ptr @.str.106, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @hda_init_caps.__UNIQUE_ID_ddebug254, !232, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!235 = !{ptr @.str.107, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/sof/intel/hda.c", i32 761, i32 3}
!237 = !{ptr @hda_init_caps._entry, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @hda_init_caps._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!239 = distinct !{null, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/sof/intel/hda.c", i32 769, i32 3}
!241 = distinct !{null, !240, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!242 = !{ptr @.str.109, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/sof/intel/hda.c", i32 775, i32 3}
!244 = !{ptr @hda_init_caps.__UNIQUE_ID_ddebug256, !243, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!245 = !{ptr @.str.111, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/sof/intel/hda.c", i32 788, i32 3}
!247 = !{ptr @hda_init_caps._entry.110, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @hda_init_caps._entry_ptr.112, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{i32 1, !"wchar_size", i32 2}
!250 = !{i32 1, !"min_enum_size", i32 4}
!251 = !{i32 8, !"branch-target-enforcement", i32 0}
!252 = !{i32 8, !"sign-return-address", i32 0}
!253 = !{i32 8, !"sign-return-address-all", i32 0}
!254 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!255 = !{i32 7, !"uwtable", i32 1}
!256 = !{i32 7, !"frame-pointer", i32 2}
!257 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!258 = !{!"auto-init"}
!259 = !{i8 0, i8 2}
!260 = !{i64 2148340641, i64 2148340646, i64 2148340659, i64 2148340703, i64 2148340737, i64 2148340758}
!261 = !{i64 4922092}
!262 = !{i64 2154326560}
