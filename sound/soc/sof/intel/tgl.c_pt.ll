; ModuleID = '/llk/IR_all_yes/sound/soc/sof/intel/tgl.c_pt.bc'
source_filename = "../sound/soc/sof/intel/tgl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sof_tgl_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_sof_tgl_ops\09\09\09\09"
module asm "\09.long\09__crc_sof_tgl_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sof_tgl_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22sof_tgl_ops\22\09\09\09\09\09"
module asm "__kstrtabns_sof_tgl_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_INTEL_HDA_COMMON\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tgl_chip_info\22, \22a\22\09"
module asm "\09.weak\09__crc_tgl_chip_info\09\09\09\09"
module asm "\09.long\09__crc_tgl_chip_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tgl_chip_info:\09\09\09\09\09"
module asm "\09.asciz \09\22tgl_chip_info\22\09\09\09\09\09"
module asm "__kstrtabns_tgl_chip_info:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_INTEL_HDA_COMMON\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tglh_chip_info\22, \22a\22\09"
module asm "\09.weak\09__crc_tglh_chip_info\09\09\09\09"
module asm "\09.long\09__crc_tglh_chip_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tglh_chip_info:\09\09\09\09\09"
module asm "\09.asciz \09\22tglh_chip_info\22\09\09\09\09\09"
module asm "__kstrtabns_tglh_chip_info:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_INTEL_HDA_COMMON\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ehl_chip_info\22, \22a\22\09"
module asm "\09.weak\09__crc_ehl_chip_info\09\09\09\09"
module asm "\09.long\09__crc_ehl_chip_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ehl_chip_info:\09\09\09\09\09"
module asm "\09.asciz \09\22ehl_chip_info\22\09\09\09\09\09"
module asm "__kstrtabns_ehl_chip_info:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_INTEL_HDA_COMMON\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+adls_chip_info\22, \22a\22\09"
module asm "\09.weak\09__crc_adls_chip_info\09\09\09\09"
module asm "\09.long\09__crc_adls_chip_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adls_chip_info:\09\09\09\09\09"
module asm "\09.asciz \09\22adls_chip_info\22\09\09\09\09\09"
module asm "__kstrtabns_adls_chip_info:\09\09\09\09\09"
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
%struct.sof_ipc_pm_core_config = type { %struct.sof_ipc_cmd_hdr, i32 }
%struct.sof_ipc_cmd_hdr = type { i32, i32 }
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
%struct.sof_ipc_fw_version = type { %struct.sof_ipc_hdr, i16, i16, i16, i16, [12 x i8], [10 x i8], [6 x i8], i32, i32, [3 x i32] }
%struct.sof_ipc_hdr = type { i32 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@tgl_dsp_debugfs = internal constant { [3 x %struct.snd_sof_debugfs_map], [36 x i8] } { [3 x %struct.snd_sof_debugfs_map] [%struct.snd_sof_debugfs_map { ptr @.str, i32 0, i32 0, i32 16384, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.1, i32 1, i32 0, i32 4096, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.2, i32 4, i32 0, i32 65536, i32 0 }], [36 x i8] zeroinitializer }, align 32
@skl_dai = external dso_local global [0 x %struct.snd_soc_dai_driver], align 8
@sof_xtensa_arch_ops = external dso_local constant %struct.dsp_arch_ops, align 4
@sof_tgl_ops = dso_local constant { %struct.snd_sof_dsp_ops, [88 x i8] } { %struct.snd_sof_dsp_ops { ptr @hda_dsp_probe, ptr @hda_dsp_remove, ptr @hda_dsp_shutdown, ptr @hda_dsp_cl_boot_firmware_iccmax, ptr null, ptr null, ptr @tgl_dsp_core_get, ptr @tgl_dsp_core_put, ptr @sof_io_write, ptr @sof_io_read, ptr @sof_io_write64, ptr @sof_io_read64, ptr @sof_block_read, ptr @sof_block_write, ptr @sof_mailbox_read, ptr @sof_mailbox_write, ptr null, ptr @cnl_ipc_irq_thread, ptr @cnl_ipc_send_msg, ptr @snd_sof_load_firmware_raw, ptr null, ptr @sof_fw_ready, ptr @hda_dsp_pcm_open, ptr @hda_dsp_pcm_close, ptr @hda_dsp_pcm_hw_params, ptr @hda_dsp_stream_hw_free, ptr @hda_dsp_pcm_trigger, ptr @hda_dsp_pcm_pointer, ptr @hda_dsp_pcm_ack, ptr @hda_probe_compr_assign, ptr @hda_probe_compr_free, ptr @hda_probe_compr_set_params, ptr @hda_probe_compr_trigger, ptr @hda_probe_compr_pointer, ptr @hda_ipc_msg_data, ptr @hda_ipc_pcm_params, ptr @hda_dsp_pre_fw_run, ptr @hda_dsp_post_fw_run, ptr @hda_dsp_ext_man_get_cavs_config_data, ptr @hda_dsp_suspend, ptr @hda_dsp_resume, ptr @hda_dsp_runtime_suspend, ptr @hda_dsp_runtime_resume, ptr @hda_dsp_runtime_idle, ptr @hda_dsp_set_hw_params_upon_resume, ptr @hda_dsp_set_power_state, ptr null, ptr @tgl_dsp_debugfs, i32 3, ptr @hda_dsp_dump, ptr @cnl_ipc_dump, ptr @snd_sof_debugfs_add_region_item_iomem, ptr @hda_dsp_trace_init, ptr @hda_dsp_trace_release, ptr @hda_dsp_trace_trigger, ptr null, ptr @hda_dsp_ipc_get_mailbox_offset, ptr @hda_dsp_ipc_get_window_offset, ptr @sof_machine_register, ptr @sof_machine_unregister, ptr @hda_machine_select, ptr @hda_set_mach_params, ptr @skl_dai, i32 8, i32 8913155, ptr @sof_xtensa_arch_ops }, [88 x i8] zeroinitializer }, align 32
@__kstrtab_sof_tgl_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_sof_tgl_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_sof_tgl_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sof_tgl_ops to i32), ptr @__kstrtab_sof_tgl_ops, ptr @__kstrtabns_sof_tgl_ops }, section "___ksymtab+sof_tgl_ops", align 4
@tgl_chip_info = dso_local constant { %struct.sof_intel_dsp_desc, [36 x i8] } { %struct.sof_intel_dsp_desc { i32 4, i32 1, i32 1, i32 208, i32 -2147483648, i32 212, i32 -2147483648, i32 232, i32 300, i32 6, i32 65536, i32 180224, i32 182272, i32 0, ptr @hda_common_check_sdw_irq }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_tgl_chip_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_tgl_chip_info = external dso_local constant [0 x i8], align 1
@__ksymtab_tgl_chip_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tgl_chip_info to i32), ptr @__kstrtab_tgl_chip_info, ptr @__kstrtabns_tgl_chip_info }, section "___ksymtab+tgl_chip_info", align 4
@tglh_chip_info = dso_local constant { %struct.sof_intel_dsp_desc, [36 x i8] } { %struct.sof_intel_dsp_desc { i32 2, i32 1, i32 1, i32 208, i32 -2147483648, i32 212, i32 -2147483648, i32 232, i32 300, i32 6, i32 65536, i32 180224, i32 182272, i32 0, ptr @hda_common_check_sdw_irq }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_tglh_chip_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_tglh_chip_info = external dso_local constant [0 x i8], align 1
@__ksymtab_tglh_chip_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tglh_chip_info to i32), ptr @__kstrtab_tglh_chip_info, ptr @__kstrtabns_tglh_chip_info }, section "___ksymtab+tglh_chip_info", align 4
@ehl_chip_info = dso_local constant { %struct.sof_intel_dsp_desc, [36 x i8] } { %struct.sof_intel_dsp_desc { i32 4, i32 1, i32 1, i32 208, i32 -2147483648, i32 212, i32 -2147483648, i32 232, i32 300, i32 6, i32 65536, i32 180224, i32 182272, i32 0, ptr @hda_common_check_sdw_irq }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_ehl_chip_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_ehl_chip_info = external dso_local constant [0 x i8], align 1
@__ksymtab_ehl_chip_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ehl_chip_info to i32), ptr @__kstrtab_ehl_chip_info, ptr @__kstrtabns_ehl_chip_info }, section "___ksymtab+ehl_chip_info", align 4
@adls_chip_info = dso_local constant { %struct.sof_intel_dsp_desc, [36 x i8] } { %struct.sof_intel_dsp_desc { i32 2, i32 1, i32 1, i32 208, i32 -2147483648, i32 212, i32 -2147483648, i32 232, i32 300, i32 6, i32 65536, i32 180224, i32 182272, i32 0, ptr @hda_common_check_sdw_irq }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_adls_chip_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_adls_chip_info = external dso_local constant [0 x i8], align 1
@__ksymtab_adls_chip_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adls_chip_info to i32), ptr @__kstrtab_adls_chip_info, ptr @__kstrtabns_adls_chip_info }, section "___ksymtab+adls_chip_info", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hda\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pp\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dsp\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [16 x i8] c"tgl_dsp_debugfs\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 17, i32 41 }
@___asan_gen_.6 = private unnamed_addr constant [12 x i8] c"sof_tgl_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 64, i32 30 }
@___asan_gen_.9 = private unnamed_addr constant [14 x i8] c"tgl_chip_info\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 173, i32 33 }
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"tglh_chip_info\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 192, i32 33 }
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"ehl_chip_info\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 211, i32 33 }
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"adls_chip_info\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 230, i32 33 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 18, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 19, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [29 x i8] c"../sound/soc/sof/intel/tgl.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 20, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_adls_chip_info, ptr @__ksymtab_ehl_chip_info, ptr @__ksymtab_sof_tgl_ops, ptr @__ksymtab_tgl_chip_info, ptr @__ksymtab_tglh_chip_info, ptr @tgl_dsp_debugfs, ptr @sof_tgl_ops, ptr @tgl_chip_info, ptr @tglh_chip_info, ptr @ehl_chip_info, ptr @adls_chip_info, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgl_dsp_debugfs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_tgl_ops to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgl_chip_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tglh_chip_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehl_chip_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adls_chip_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
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
define internal i32 @tgl_dsp_core_get(ptr noundef %sdev, i32 noundef %core) #1 align 64 {
entry:
  %pm_core_config = alloca %struct.sof_ipc_pm_core_config, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pm_core_config) #4
  %0 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %pm_core_config, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sof_ipc_pm_core_config, ptr %pm_core_config, i32 0, i32 1
  %2 = ptrtoint ptr %pm_core_config to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12, ptr %pm_core_config, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1074200576, ptr %0, align 4
  %enabled_cores_mask = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 41
  %4 = ptrtoint ptr %enabled_cores_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enabled_cores_mask, align 4
  %shl = shl nuw i32 1, %core
  %or = or i32 %5, %shl
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %core)
  %cmp = icmp eq i32 %core, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @hda_dsp_enable_core(ptr noundef %sdev, i32 noundef %shl) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ipc = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 13
  %7 = ptrtoint ptr %ipc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ipc, align 4
  %call4 = call i32 @sof_ipc_tx_message(ptr noundef %8, i32 noundef 1074200576, ptr noundef nonnull %pm_core_config, i32 noundef 12, ptr noundef nonnull %pm_core_config, i32 noundef 12) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pm_core_config) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tgl_dsp_core_put(ptr noundef %sdev, i32 noundef %core) #1 align 64 {
entry:
  %pm_core_config = alloca %struct.sof_ipc_pm_core_config, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pm_core_config) #4
  %0 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %pm_core_config, i32 0, i32 1
  %1 = getelementptr inbounds %struct.sof_ipc_pm_core_config, ptr %pm_core_config, i32 0, i32 1
  %2 = ptrtoint ptr %pm_core_config to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12, ptr %pm_core_config, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1074200576, ptr %0, align 4
  %enabled_cores_mask = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 41
  %4 = ptrtoint ptr %enabled_cores_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enabled_cores_mask, align 4
  %shl = shl nuw i32 1, %core
  %neg = xor i32 %shl, -1
  %and = and i32 %5, %neg
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %core)
  %cmp = icmp eq i32 %core, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @hda_dsp_core_reset_power_down(ptr noundef %sdev, i32 noundef %shl) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ipc = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 13
  %7 = ptrtoint ptr %ipc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ipc, align 4
  %call4 = call i32 @sof_ipc_tx_message(ptr noundef %8, i32 noundef 1074200576, ptr noundef nonnull %pm_core_config, i32 noundef 12, ptr noundef nonnull %pm_core_config, i32 noundef 12) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pm_core_config) #4
  ret i32 %retval.0
}

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_post_fw_run(ptr noundef) #0

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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_enable_core(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_ipc_tx_message(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_core_reset_power_down(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @sof_tgl_ops, !1, !"sof_tgl_ops", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/intel/tgl.c", i32 64, i32 30}
!2 = !{ptr @__ksymtab_sof_tgl_ops, !3, !"__ksymtab_sof_tgl_ops", i1 false, i1 false}
!3 = !{!"../sound/soc/sof/intel/tgl.c", i32 171, i32 1}
!4 = !{ptr @tgl_chip_info, !5, !"tgl_chip_info", i1 false, i1 false}
!5 = !{!"../sound/soc/sof/intel/tgl.c", i32 173, i32 33}
!6 = !{ptr @__ksymtab_tgl_chip_info, !7, !"__ksymtab_tgl_chip_info", i1 false, i1 false}
!7 = !{!"../sound/soc/sof/intel/tgl.c", i32 190, i32 1}
!8 = !{ptr @tglh_chip_info, !9, !"tglh_chip_info", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/intel/tgl.c", i32 192, i32 33}
!10 = !{ptr @__ksymtab_tglh_chip_info, !11, !"__ksymtab_tglh_chip_info", i1 false, i1 false}
!11 = !{!"../sound/soc/sof/intel/tgl.c", i32 209, i32 1}
!12 = !{ptr @ehl_chip_info, !13, !"ehl_chip_info", i1 false, i1 false}
!13 = !{!"../sound/soc/sof/intel/tgl.c", i32 211, i32 33}
!14 = !{ptr @__ksymtab_ehl_chip_info, !15, !"__ksymtab_ehl_chip_info", i1 false, i1 false}
!15 = !{!"../sound/soc/sof/intel/tgl.c", i32 228, i32 1}
!16 = !{ptr @adls_chip_info, !17, !"adls_chip_info", i1 false, i1 false}
!17 = !{!"../sound/soc/sof/intel/tgl.c", i32 230, i32 33}
!18 = !{ptr @__ksymtab_adls_chip_info, !19, !"__ksymtab_adls_chip_info", i1 false, i1 false}
!19 = !{!"../sound/soc/sof/intel/tgl.c", i32 247, i32 1}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/sof/intel/tgl.c", i32 18, i32 3}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/sof/intel/tgl.c", i32 19, i32 3}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/sof/intel/tgl.c", i32 20, i32 3}
!26 = !{ptr @tgl_dsp_debugfs, !27, !"tgl_dsp_debugfs", i1 false, i1 false}
!27 = !{!"../sound/soc/sof/intel/tgl.c", i32 17, i32 41}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
