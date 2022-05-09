; ModuleID = '/llk/IR_all_yes/sound/soc/sof/intel/icl.c_pt.bc'
source_filename = "../sound/soc/sof/intel/icl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sof_icl_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_sof_icl_ops\09\09\09\09"
module asm "\09.long\09__crc_sof_icl_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sof_icl_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22sof_icl_ops\22\09\09\09\09\09"
module asm "__kstrtabns_sof_icl_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_INTEL_HDA_COMMON\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+icl_chip_info\22, \22a\22\09"
module asm "\09.weak\09__crc_icl_chip_info\09\09\09\09"
module asm "\09.long\09__crc_icl_chip_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icl_chip_info:\09\09\09\09\09"
module asm "\09.asciz \09\22icl_chip_info\22\09\09\09\09\09"
module asm "__kstrtabns_icl_chip_info:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_INTEL_HDA_COMMON\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_sof_debugfs_map = type { ptr, i32, i32, i32, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.dsp_arch_ops = type { ptr, ptr }
%struct.snd_sof_dsp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sof_intel_dsp_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_sof_dev = type { ptr, %struct.spinlock, %struct.spinlock, %struct.snd_soc_component_driver, %struct.sof_dsp_power_state, %struct.mutex, i32, %struct.wait_queue_head, i32, i8, %struct.work_struct, i8, ptr, ptr, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, ptr, i32, i32, [8 x ptr], i32, i32, i32, ptr, %struct.list_head, i8, i8, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_version, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.wait_queue_head, i32, i8, i8, i8, i8, i8, i32, [8 x i32], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.sof_dsp_power_state = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_sof_mailbox = type { i32, i32 }
%struct.sof_ipc_fw_ready = type <{ %struct.sof_ipc_cmd_hdr, i32, i32, i32, i32, %struct.sof_ipc_fw_version, i64, [4 x i32] }>
%struct.sof_ipc_cmd_hdr = type { i32, i32 }
%struct.sof_ipc_fw_version = type { %struct.sof_ipc_hdr, i16, i16, i16, i16, [12 x i8], [10 x i8], [6 x i8], i32, i32, [3 x i32] }
%struct.sof_ipc_hdr = type { i32 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_sof_pdata = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sof_intel_hda_dev = type { i32, %struct.hda_bus, ptr, ptr, i32, i32, i8, ptr, %struct.delayed_work, %struct.sdw_intel_acpi_info, ptr, i8 }
%struct.hda_bus = type { %struct.hdac_bus, ptr, ptr, ptr, %struct.mutex, [8 x i32], i8, i32, i32 }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sdw_intel_acpi_info = type { ptr, i32, i32 }
%struct.sof_dev_desc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }

@icl_dsp_debugfs = internal constant { [3 x %struct.snd_sof_debugfs_map], [36 x i8] } { [3 x %struct.snd_sof_debugfs_map] [%struct.snd_sof_debugfs_map { ptr @.str.10, i32 0, i32 0, i32 16384, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.11, i32 1, i32 0, i32 4096, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.12, i32 4, i32 0, i32 65536, i32 0 }], [36 x i8] zeroinitializer }, align 32
@skl_dai = external dso_local global [0 x %struct.snd_soc_dai_driver], align 8
@sof_xtensa_arch_ops = external dso_local constant %struct.dsp_arch_ops, align 4
@sof_icl_ops = dso_local constant { %struct.snd_sof_dsp_ops, [88 x i8] } { %struct.snd_sof_dsp_ops { ptr @hda_dsp_probe, ptr @hda_dsp_remove, ptr @hda_dsp_shutdown, ptr @hda_dsp_cl_boot_firmware_iccmax, ptr @icl_dsp_core_stall, ptr null, ptr @hda_dsp_core_get, ptr null, ptr @sof_io_write, ptr @sof_io_read, ptr @sof_io_write64, ptr @sof_io_read64, ptr @sof_block_read, ptr @sof_block_write, ptr @sof_mailbox_read, ptr @sof_mailbox_write, ptr null, ptr @cnl_ipc_irq_thread, ptr @cnl_ipc_send_msg, ptr @snd_sof_load_firmware_raw, ptr null, ptr @sof_fw_ready, ptr @hda_dsp_pcm_open, ptr @hda_dsp_pcm_close, ptr @hda_dsp_pcm_hw_params, ptr @hda_dsp_stream_hw_free, ptr @hda_dsp_pcm_trigger, ptr @hda_dsp_pcm_pointer, ptr @hda_dsp_pcm_ack, ptr @hda_probe_compr_assign, ptr @hda_probe_compr_free, ptr @hda_probe_compr_set_params, ptr @hda_probe_compr_trigger, ptr @hda_probe_compr_pointer, ptr @hda_ipc_msg_data, ptr @hda_ipc_pcm_params, ptr @hda_dsp_pre_fw_run, ptr @icl_dsp_post_fw_run, ptr @hda_dsp_ext_man_get_cavs_config_data, ptr @hda_dsp_suspend, ptr @hda_dsp_resume, ptr @hda_dsp_runtime_suspend, ptr @hda_dsp_runtime_resume, ptr @hda_dsp_runtime_idle, ptr @hda_dsp_set_hw_params_upon_resume, ptr @hda_dsp_set_power_state, ptr null, ptr @icl_dsp_debugfs, i32 3, ptr @hda_dsp_dump, ptr @cnl_ipc_dump, ptr @snd_sof_debugfs_add_region_item_iomem, ptr @hda_dsp_trace_init, ptr @hda_dsp_trace_release, ptr @hda_dsp_trace_trigger, ptr null, ptr @hda_dsp_ipc_get_mailbox_offset, ptr @hda_dsp_ipc_get_window_offset, ptr @sof_machine_register, ptr @sof_machine_unregister, ptr @hda_machine_select, ptr @hda_set_mach_params, ptr @skl_dai, i32 8, i32 8913155, ptr @sof_xtensa_arch_ops }, [88 x i8] zeroinitializer }, align 32
@__kstrtab_sof_icl_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_sof_icl_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_sof_icl_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sof_icl_ops to i32), ptr @__kstrtab_sof_icl_ops, ptr @__kstrtabns_sof_icl_ops }, section "___ksymtab+sof_icl_ops", align 4
@icl_chip_info = dso_local constant { %struct.sof_intel_dsp_desc, [36 x i8] } { %struct.sof_intel_dsp_desc { i32 4, i32 15, i32 1, i32 208, i32 -2147483648, i32 212, i32 -2147483648, i32 232, i32 300, i32 6, i32 65536, i32 180224, i32 182272, i32 0, ptr @hda_common_check_sdw_irq }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_icl_chip_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_icl_chip_info = external dso_local constant [0 x i8], align 1
@__ksymtab_icl_chip_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icl_chip_info to i32), ptr @__kstrtab_icl_chip_info, ptr @__kstrtabns_icl_chip_info }, section "___ksymtab+icl_chip_info", align 4
@icl_dsp_core_stall._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 37, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"error: core_mask is not in host managed cores\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"icl_dsp_core_stall\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/sof/intel/icl.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@icl_dsp_core_stall._entry_ptr = internal global ptr @icl_dsp_core_stall._entry, section ".printk_index", align 4
@icl_dsp_post_fw_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 61, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"error: could not startup SoundWire links\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"icl_dsp_post_fw_run\00", [44 x i8] zeroinitializer }, align 32
@icl_dsp_post_fw_run._entry_ptr = internal global ptr @icl_dsp_post_fw_run._entry, section ".printk_index", align 4
@icl_dsp_post_fw_run._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 76, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"error: dsp core power up failed on core %d\0A\00", [52 x i8] zeroinitializer }, align 32
@icl_dsp_post_fw_run._entry_ptr.9 = internal global ptr @icl_dsp_post_fw_run._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hda\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pp\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dsp\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"icl_dsp_debugfs\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 23, i32 41 }
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"sof_icl_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 91, i32 30 }
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"icl_chip_info\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 200, i32 33 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 37, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 61, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 75, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 24, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 25, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [29 x i8] c"../sound/soc/sof/intel/icl.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 26, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__ksymtab_icl_chip_info, ptr @__ksymtab_sof_icl_ops, ptr @icl_dsp_core_stall._entry, ptr @icl_dsp_core_stall._entry_ptr, ptr @icl_dsp_post_fw_run._entry, ptr @icl_dsp_post_fw_run._entry.7, ptr @icl_dsp_post_fw_run._entry_ptr, ptr @icl_dsp_post_fw_run._entry_ptr.9, ptr @icl_dsp_debugfs, ptr @sof_icl_ops, ptr @icl_chip_info, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icl_dsp_debugfs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_icl_ops to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icl_chip_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icl_dsp_core_stall._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icl_dsp_post_fw_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icl_dsp_post_fw_run._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_probe(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_remove(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_shutdown(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_cl_boot_firmware_iccmax(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icl_dsp_core_stall(ptr noundef %sdev, i32 noundef %core_mask) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %host_managed_cores_mask = getelementptr inbounds %struct.sof_intel_dsp_desc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %host_managed_cores_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %host_managed_cores_mask, align 4
  %and = and i32 %7, %core_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %shl = shl i32 %and, 8
  %call = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %sdev, i32 noundef 4, i32 noundef 4, i32 noundef %shl, i32 noundef %shl) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_core_get(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_io_write(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_io_read(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_io_write64(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sof_io_read64(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_block_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_block_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_mailbox_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_mailbox_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cnl_ipc_irq_thread(i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cnl_ipc_send_msg(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_load_firmware_raw(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_fw_ready(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_pcm_open(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_pcm_close(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_pcm_hw_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_stream_hw_free(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_pcm_trigger(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_pcm_pointer(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_pcm_ack(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_probe_compr_assign(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_probe_compr_free(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_probe_compr_set_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_probe_compr_trigger(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_probe_compr_pointer(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_ipc_msg_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_ipc_pcm_params(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_pre_fw_run(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icl_dsp_post_fw_run(ptr noundef %sdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata, align 4
  %clk_config_lpro = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %clk_config_lpro to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %clk_config_lpro, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.then4, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then4:                                         ; preds = %entry
  %call5 = tail call i32 @hda_dsp_enable_core(ptr noundef %sdev, i32 noundef 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.8, i32 noundef 3) #7
  br label %cleanup

if.end12:                                         ; preds = %if.then4
  %enabled_cores_mask = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 41
  %8 = ptrtoint ptr %enabled_cores_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enabled_cores_mask, align 4
  %or = or i32 %9, 8
  store i32 %or, ptr %enabled_cores_mask, align 4
  %arrayidx = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 57, i32 3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %stall.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %stall.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stall.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end12.if.end14_crit_edge, label %if.then.i

if.end12.if.end14_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 %19(ptr noundef %sdev, i32 noundef 8) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then.i, %if.end12.if.end14_crit_edge, %entry.if.end14_crit_edge
  %call15 = tail call i32 @hda_dsp_ctrl_clock_power_gating(ptr noundef %sdev, i1 noundef zeroext true) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end10
  %retval.0 = phi i32 [ %call15, %if.end14 ], [ %call5, %do.end10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_ext_man_get_cavs_config_data(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_suspend(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_resume(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_runtime_suspend(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_runtime_resume(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_runtime_idle(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_set_hw_params_upon_resume(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_set_power_state(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_dsp_dump(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnl_ipc_dump(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_debugfs_add_region_item_iomem(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_trace_init(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_trace_release(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_trace_trigger(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_ipc_get_mailbox_offset(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_ipc_get_window_offset(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_machine_register(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_machine_unregister(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hda_machine_select(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_set_mach_params(ptr noundef, ptr noundef) #0

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @hda_common_check_sdw_irq(ptr nocapture noundef readnone %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  ret i1 false
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_enable_core(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_ctrl_clock_power_gating(ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @sof_icl_ops, !1, !"sof_icl_ops", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/intel/icl.c", i32 91, i32 30}
!2 = !{ptr @__ksymtab_sof_icl_ops, !3, !"__ksymtab_sof_icl_ops", i1 false, i1 false}
!3 = !{!"../sound/soc/sof/intel/icl.c", i32 198, i32 1}
!4 = !{ptr @icl_chip_info, !5, !"icl_chip_info", i1 false, i1 false}
!5 = !{!"../sound/soc/sof/intel/icl.c", i32 200, i32 33}
!6 = !{ptr @__ksymtab_icl_chip_info, !7, !"__ksymtab_icl_chip_info", i1 false, i1 false}
!7 = !{!"../sound/soc/sof/intel/icl.c", i32 217, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/intel/icl.c", i32 37, i32 3}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @icl_dsp_core_stall._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @icl_dsp_core_stall._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/sof/intel/icl.c", i32 61, i32 4}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @icl_dsp_post_fw_run._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @icl_dsp_post_fw_run._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/sof/intel/icl.c", i32 75, i32 4}
!23 = !{ptr @icl_dsp_post_fw_run._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @icl_dsp_post_fw_run._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/sof/intel/icl.c", i32 24, i32 3}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/sof/intel/icl.c", i32 25, i32 3}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/sof/intel/icl.c", i32 26, i32 3}
!31 = !{ptr @icl_dsp_debugfs, !32, !"icl_dsp_debugfs", i1 false, i1 false}
!32 = !{!"../sound/soc/sof/intel/icl.c", i32 23, i32 41}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i8 0, i8 2}
