; ModuleID = '/llk/IR_all_yes/sound/soc/sof/intel/cnl.c_pt.bc'
source_filename = "../sound/soc/sof/intel/cnl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sof_cnl_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_sof_cnl_ops\09\09\09\09"
module asm "\09.long\09__crc_sof_cnl_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sof_cnl_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22sof_cnl_ops\22\09\09\09\09\09"
module asm "__kstrtabns_sof_cnl_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_INTEL_HDA_COMMON\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cnl_chip_info\22, \22a\22\09"
module asm "\09.weak\09__crc_cnl_chip_info\09\09\09\09"
module asm "\09.long\09__crc_cnl_chip_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cnl_chip_info:\09\09\09\09\09"
module asm "\09.asciz \09\22cnl_chip_info\22\09\09\09\09\09"
module asm "__kstrtabns_cnl_chip_info:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_INTEL_HDA_COMMON\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+jsl_chip_info\22, \22a\22\09"
module asm "\09.weak\09__crc_jsl_chip_info\09\09\09\09"
module asm "\09.long\09__crc_jsl_chip_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jsl_chip_info:\09\09\09\09\09"
module asm "\09.asciz \09\22jsl_chip_info\22\09\09\09\09\09"
module asm "__kstrtabns_jsl_chip_info:\09\09\09\09\09"
module asm "\09.asciz \09\22SND_SOC_SOF_INTEL_HDA_COMMON\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.snd_sof_dev = type { ptr, %struct.spinlock, %struct.spinlock, %struct.snd_soc_component_driver, %struct.sof_dsp_power_state, %struct.mutex, i32, %struct.wait_queue_head, i32, i8, %struct.work_struct, i8, ptr, ptr, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, ptr, i32, i32, [8 x ptr], i32, i32, i32, ptr, %struct.list_head, i8, i8, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_version, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.wait_queue_head, i32, i8, i8, i8, i8, i8, i32, [8 x i32], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.sof_dsp_power_state = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.sof_dev_desc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_sof_ipc_msg = type { i32, ptr, ptr, i32, i32, i32, %struct.wait_queue_head, i8 }
%struct.sof_ipc_pm_gate = type { %struct.sof_ipc_cmd_hdr, i32, [5 x i32] }
%struct.sof_intel_hda_dev = type { i32, %struct.hda_bus, ptr, ptr, i32, i32, i8, ptr, %struct.delayed_work, %struct.sdw_intel_acpi_info, ptr, i8 }
%struct.hda_bus = type { %struct.hdac_bus, ptr, ptr, ptr, %struct.mutex, [8 x i32], i8, i32, i32 }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sdw_intel_acpi_info = type { ptr, i32, i32 }

@cnl_ipc_irq_thread._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@cnl_ipc_irq_thread.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_sof_intel_hda_common\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cnl_ipc_irq_thread\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/sof/intel/cnl.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nothing to do in IPC IRQ thread\0A\00", [63 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@cnl_ipc_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 245, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"error: host status 0x%8.8x dsp status 0x%8.8x mask 0x%8.8x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cnl_ipc_dump\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cnl_ipc_dump._entry_ptr = internal global ptr @cnl_ipc_dump._entry, section ".printk_index", align 4
@cnl_dsp_debugfs = internal constant { [3 x %struct.snd_sof_debugfs_map], [36 x i8] } { [3 x %struct.snd_sof_debugfs_map] [%struct.snd_sof_debugfs_map { ptr @.str.12, i32 0, i32 0, i32 16384, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.13, i32 1, i32 0, i32 4096, i32 0 }, %struct.snd_sof_debugfs_map { ptr @.str.14, i32 4, i32 0, i32 65536, i32 0 }], [36 x i8] zeroinitializer }, align 32
@skl_dai = external dso_local global [0 x %struct.snd_soc_dai_driver], align 8
@sof_xtensa_arch_ops = external dso_local constant %struct.dsp_arch_ops, align 4
@sof_cnl_ops = dso_local constant { %struct.snd_sof_dsp_ops, [88 x i8] } { %struct.snd_sof_dsp_ops { ptr @hda_dsp_probe, ptr @hda_dsp_remove, ptr @hda_dsp_shutdown, ptr @hda_dsp_cl_boot_firmware, ptr null, ptr null, ptr @hda_dsp_core_get, ptr null, ptr @sof_io_write, ptr @sof_io_read, ptr @sof_io_write64, ptr @sof_io_read64, ptr @sof_block_read, ptr @sof_block_write, ptr @sof_mailbox_read, ptr @sof_mailbox_write, ptr null, ptr @cnl_ipc_irq_thread, ptr @cnl_ipc_send_msg, ptr @snd_sof_load_firmware_raw, ptr null, ptr @sof_fw_ready, ptr @hda_dsp_pcm_open, ptr @hda_dsp_pcm_close, ptr @hda_dsp_pcm_hw_params, ptr @hda_dsp_stream_hw_free, ptr @hda_dsp_pcm_trigger, ptr @hda_dsp_pcm_pointer, ptr @hda_dsp_pcm_ack, ptr @hda_probe_compr_assign, ptr @hda_probe_compr_free, ptr @hda_probe_compr_set_params, ptr @hda_probe_compr_trigger, ptr @hda_probe_compr_pointer, ptr @hda_ipc_msg_data, ptr @hda_ipc_pcm_params, ptr @hda_dsp_pre_fw_run, ptr @hda_dsp_post_fw_run, ptr @hda_dsp_ext_man_get_cavs_config_data, ptr @hda_dsp_suspend, ptr @hda_dsp_resume, ptr @hda_dsp_runtime_suspend, ptr @hda_dsp_runtime_resume, ptr @hda_dsp_runtime_idle, ptr @hda_dsp_set_hw_params_upon_resume, ptr @hda_dsp_set_power_state, ptr null, ptr @cnl_dsp_debugfs, i32 3, ptr @hda_dsp_dump, ptr @cnl_ipc_dump, ptr @snd_sof_debugfs_add_region_item_iomem, ptr @hda_dsp_trace_init, ptr @hda_dsp_trace_release, ptr @hda_dsp_trace_trigger, ptr null, ptr @hda_dsp_ipc_get_mailbox_offset, ptr @hda_dsp_ipc_get_window_offset, ptr @sof_machine_register, ptr @sof_machine_unregister, ptr @hda_machine_select, ptr @hda_set_mach_params, ptr @skl_dai, i32 8, i32 8913155, ptr @sof_xtensa_arch_ops }, [88 x i8] zeroinitializer }, align 32
@__kstrtab_sof_cnl_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_sof_cnl_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_sof_cnl_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sof_cnl_ops to i32), ptr @__kstrtab_sof_cnl_ops, ptr @__kstrtabns_sof_cnl_ops }, section "___ksymtab+sof_cnl_ops", align 4
@cnl_chip_info = dso_local constant { %struct.sof_intel_dsp_desc, [36 x i8] } { %struct.sof_intel_dsp_desc { i32 4, i32 15, i32 1, i32 208, i32 -2147483648, i32 212, i32 -2147483648, i32 232, i32 300, i32 3, i32 65536, i32 180224, i32 182272, i32 0, ptr @hda_common_check_sdw_irq }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_cnl_chip_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_cnl_chip_info = external dso_local constant [0 x i8], align 1
@__ksymtab_cnl_chip_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cnl_chip_info to i32), ptr @__kstrtab_cnl_chip_info, ptr @__kstrtabns_cnl_chip_info }, section "___ksymtab+cnl_chip_info", align 4
@jsl_chip_info = dso_local constant { %struct.sof_intel_dsp_desc, [36 x i8] } { %struct.sof_intel_dsp_desc { i32 2, i32 3, i32 1, i32 208, i32 -2147483648, i32 212, i32 -2147483648, i32 232, i32 300, i32 6, i32 65536, i32 180224, i32 182272, i32 0, ptr @hda_common_check_sdw_irq }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_jsl_chip_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_jsl_chip_info = external dso_local constant [0 x i8], align 1
@__ksymtab_jsl_chip_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jsl_chip_info to i32), ptr @__kstrtab_jsl_chip_info, ptr @__kstrtabns_jsl_chip_info }, section "___ksymtab+jsl_chip_info", align 4
@snd_sof_dsp_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 319, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error: %s not defined\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_sof_dsp_read\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/soc/sof/intel/../ops.h\00", [35 x i8] zeroinitializer }, align 32
@snd_sof_dsp_read._entry_ptr = internal global ptr @snd_sof_dsp_read._entry, section ".printk_index", align 4
@snd_sof_dsp_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.snd_sof_dsp_write = private unnamed_addr constant [18 x i8] c"snd_sof_dsp_write\00", align 1
@snd_sof_dsp_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.snd_sof_dsp_write, ptr @.str.11, i32 299, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@snd_sof_dsp_write._entry_ptr = internal global ptr @snd_sof_dsp_write._entry, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hda\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pp\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dsp\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 116, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 243, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"cnl_dsp_debugfs\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 23, i32 41 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"sof_cnl_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 249, i32 30 }
@___asan_gen_.54 = private unnamed_addr constant [14 x i8] c"cnl_chip_info\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 357, i32 33 }
@___asan_gen_.57 = private unnamed_addr constant [14 x i8] c"jsl_chip_info\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 383, i32 33 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 319, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [32 x i8] c"../sound/soc/sof/intel/../ops.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 299, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 24, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 25, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [29 x i8] c"../sound/soc/sof/intel/cnl.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 26, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__ksymtab_cnl_chip_info, ptr @__ksymtab_jsl_chip_info, ptr @__ksymtab_sof_cnl_ops, ptr @cnl_ipc_dump._entry, ptr @cnl_ipc_dump._entry_ptr, ptr @snd_sof_dsp_read._entry, ptr @snd_sof_dsp_read._entry_ptr, ptr @snd_sof_dsp_write._entry, ptr @snd_sof_dsp_write._entry_ptr, ptr @cnl_ipc_irq_thread._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @cnl_dsp_debugfs, ptr @sof_cnl_ops, ptr @cnl_chip_info, ptr @jsl_chip_info, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @snd_sof_dsp_write._rs, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cnl_ipc_irq_thread._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cnl_ipc_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cnl_dsp_debugfs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_cnl_ops to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cnl_chip_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jsl_chip_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cnl_ipc_irq_thread(i32 %irq, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr %struct.snd_sof_dev, ptr %context, i32 0, i32 21, i32 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 212
  %call.i = tail call i32 %7(ptr noundef %context, ptr noundef %add.ptr.i) #4
  br label %snd_sof_dsp_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #7
  br label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit:                            ; preds = %do.end.i, %if.then.i
  %retval.0.i53 = phi i32 [ %call.i, %if.then.i ], [ -524, %do.end.i ]
  %12 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata.i, align 4
  %desc.i55 = getelementptr inbounds %struct.snd_sof_pdata, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %desc.i55 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc.i55, align 4
  %ops.i56 = getelementptr inbounds %struct.sof_dev_desc, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %ops.i56 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i56, align 4
  %read.i57 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %read.i57 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read.i57, align 4
  %tobool.not.i58 = icmp eq ptr %19, null
  br i1 %tobool.not.i58, label %do.end.i63, label %if.then.i62

if.then.i62:                                      ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i59 = getelementptr %struct.snd_sof_dev, ptr %context, i32 0, i32 21, i32 4
  %20 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i59, align 4
  %add.ptr.i60 = getelementptr i8, ptr %21, i32 192
  %call.i61 = tail call i32 %19(ptr noundef %context, ptr noundef %add.ptr.i60) #4
  br label %snd_sof_dsp_read.exit65

do.end.i63:                                       ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #7
  br label %snd_sof_dsp_read.exit65

snd_sof_dsp_read.exit65:                          ; preds = %do.end.i63, %if.then.i62
  %retval.0.i64 = phi i32 [ %call.i61, %if.then.i62 ], [ -524, %do.end.i63 ]
  %24 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdata.i, align 4
  %desc.i67 = getelementptr inbounds %struct.snd_sof_pdata, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %desc.i67 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %desc.i67, align 4
  %ops.i68 = getelementptr inbounds %struct.sof_dev_desc, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %ops.i68 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i68, align 4
  %read.i69 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %read.i69 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read.i69, align 4
  %tobool.not.i70 = icmp eq ptr %31, null
  br i1 %tobool.not.i70, label %do.end.i75, label %if.then.i74

if.then.i74:                                      ; preds = %snd_sof_dsp_read.exit65
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i71 = getelementptr %struct.snd_sof_dev, ptr %context, i32 0, i32 21, i32 4
  %32 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i71, align 4
  %add.ptr.i72 = getelementptr i8, ptr %33, i32 200
  %call.i73 = tail call i32 %31(ptr noundef %context, ptr noundef %add.ptr.i72) #4
  %phi.bo = and i32 %call.i73, 16777215
  %phi.bo92 = add nuw nsw i32 %phi.bo, 524288
  br label %snd_sof_dsp_read.exit77

do.end.i75:                                       ; preds = %snd_sof_dsp_read.exit65
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #7
  br label %snd_sof_dsp_read.exit77

snd_sof_dsp_read.exit77:                          ; preds = %do.end.i75, %if.then.i74
  %retval.0.i76 = phi i32 [ %phi.bo92, %if.then.i74 ], [ 17300980, %do.end.i75 ]
  %36 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdata.i, align 4
  %desc.i79 = getelementptr inbounds %struct.snd_sof_pdata, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %desc.i79 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %desc.i79, align 4
  %ops.i80 = getelementptr inbounds %struct.sof_dev_desc, ptr %39, i32 0, i32 14
  %40 = ptrtoint ptr %ops.i80 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i80, align 4
  %read.i81 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %read.i81 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read.i81, align 4
  %tobool.not.i82 = icmp eq ptr %43, null
  br i1 %tobool.not.i82, label %do.end.i87, label %if.then.i86

if.then.i86:                                      ; preds = %snd_sof_dsp_read.exit77
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i83 = getelementptr %struct.snd_sof_dev, ptr %context, i32 0, i32 21, i32 4
  %44 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i83, align 4
  %add.ptr.i84 = getelementptr i8, ptr %45, i32 208
  %call.i85 = tail call i32 %43(ptr noundef %context, ptr noundef %add.ptr.i84) #4
  br label %snd_sof_dsp_read.exit89

do.end.i87:                                       ; preds = %snd_sof_dsp_read.exit77
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #7
  br label %snd_sof_dsp_read.exit89

snd_sof_dsp_read.exit89:                          ; preds = %do.end.i87, %if.then.i86
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i53)
  %tobool.not = icmp sgt i32 %retval.0.i53, -1
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %snd_sof_dsp_read.exit89
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i64)
  %tobool9.not = icmp sgt i32 %retval.0.i64, -1
  br i1 %tobool9.not, label %do.body, label %if.end.if.then10_crit_edge

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then10

if.end.thread:                                    ; preds = %snd_sof_dsp_read.exit89
  %and5 = and i32 %retval.0.i53, 2147483647
  %call6 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %context, i32 noundef 4, i32 noundef 232, i32 noundef 2, i32 noundef 0) #4
  %ipc_lock = getelementptr inbounds %struct.snd_sof_dev, ptr %context, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %ipc_lock) #4
  tail call void @hda_dsp_ipc_get_reply(ptr noundef %context) #4
  tail call void @snd_sof_ipc_reply(ptr noundef %context, i32 noundef %and5) #4
  tail call void @snd_sof_dsp_update_bits_forced(ptr noundef %context, i32 noundef 4, i32 noundef 212, i32 noundef -2147483648, i32 noundef -2147483648) #4
  %call.i90 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %context, i32 noundef 4, i32 noundef 232, i32 noundef 2, i32 noundef 2) #4
  tail call void @_raw_spin_unlock_irq(ptr noundef %ipc_lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i64)
  %tobool9.not93 = icmp sgt i32 %retval.0.i64, -1
  br i1 %tobool9.not93, label %if.end.thread.if.end34_crit_edge, label %if.end.thread.if.then10_crit_edge

if.end.thread.if.then10_crit_edge:                ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then10

if.end.thread.if.end34_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then10:                                        ; preds = %if.end.thread.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %and13 = and i32 %retval.0.i64, 268431360
  call void @__sanitizer_cov_trace_const_cmp4(i32 233492480, i32 %and13)
  %cmp = icmp eq i32 %and13, 233492480
  br i1 %cmp, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then10
  %fw_state = getelementptr inbounds %struct.snd_sof_dev, ptr %context, i32 0, i32 8
  %48 = ptrtoint ptr %fw_state to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fw_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp15 = icmp eq i32 %49, 2
  br i1 %cmp15, label %land.lhs.true, label %if.then14.if.end18_crit_edge

if.then14.if.end18_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

land.lhs.true:                                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdata.i, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %51, i32 0, i32 13
  %52 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw_pdata, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp16 = icmp sgt i32 %55, 2
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true, %if.then14.if.end18_crit_edge
  %non_recoverable.0.off0 = phi i1 [ true, %if.then14.if.end18_crit_edge ], [ %cmp16, %land.lhs.true ]
  tail call void @snd_sof_dsp_panic(ptr noundef %context, i32 noundef %retval.0.i76, i1 noundef zeroext %non_recoverable.0.off0) #4
  br label %if.end21

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @snd_sof_ipc_msgs_rx(ptr noundef %context) #4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.end18
  tail call void @snd_sof_dsp_update_bits_forced(ptr noundef %context, i32 noundef 4, i32 noundef 192, i32 noundef -2147483648, i32 noundef -2147483648) #4
  tail call void @snd_sof_dsp_update_bits_forced(ptr noundef %context, i32 noundef 4, i32 noundef 196, i32 noundef -2147483648, i32 noundef -2147483648) #4
  br label %if.end34

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cnl_ipc_irq_thread.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cnl_ipc_irq_thread, %land.lhs.true29)) #4
          to label %if.end34 [label %land.lhs.true29], !srcloc !55

land.lhs.true29:                                  ; preds = %do.body
  %call30 = tail call i32 @___ratelimit(ptr noundef nonnull @cnl_ipc_irq_thread._rs, ptr noundef nonnull @.str.2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true29.if.end34_crit_edge, label %if.then32

land.lhs.true29.if.end34_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then32:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #6
  %56 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cnl_ipc_irq_thread.descriptor, ptr noundef %57, ptr noundef nonnull @.str.4) #4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %land.lhs.true29.if.end34_crit_edge, %do.body, %if.end21, %if.end.thread.if.end34_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_sof_dsp_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_dsp_ipc_get_reply(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_ipc_reply(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_dsp_panic(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_ipc_msgs_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cnl_ipc_send_msg(ptr noundef %sdev, ptr nocapture noundef readonly %msg) #0 align 64 {
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
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074266112, i32 %5)
  %cmp.i = icmp eq i32 %5, 1074266112
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i17

if.then.i17:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %msg_data.i = getelementptr inbounds %struct.snd_sof_ipc_msg, ptr %msg, i32 0, i32 1
  %12 = ptrtoint ptr %msg_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msg_data.i, align 4
  %flags.i = getelementptr inbounds %struct.sof_ipc_pm_gate, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %flags.i, align 1
  %arrayidx.i = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 216
  tail call void %11(ptr noundef %sdev, ptr noundef %add.ptr.i, i32 noundef %15) #4
  br label %snd_sof_dsp_write.exit

do.body.i:                                        ; preds = %if.then
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %do.body.i.snd_sof_dsp_write.exit_crit_edge, label %do.end.i

do.body.i.snd_sof_dsp_write.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_write.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit

snd_sof_dsp_write.exit:                           ; preds = %do.end.i, %do.body.i.snd_sof_dsp_write.exit_crit_edge, %if.then.i17
  %20 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdata, align 4
  %desc.i19 = getelementptr inbounds %struct.snd_sof_pdata, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %desc.i19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %desc.i19, align 4
  %ops.i20 = getelementptr inbounds %struct.sof_dev_desc, ptr %23, i32 0, i32 14
  %24 = ptrtoint ptr %ops.i20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i20, align 4
  %write.i21 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %write.i21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write.i21, align 4
  %tobool.not.i22 = icmp eq ptr %27, null
  br i1 %tobool.not.i22, label %do.body.i28, label %if.then.i25

if.then.i25:                                      ; preds = %snd_sof_dsp_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i23 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  %28 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i23, align 4
  %add.ptr.i24 = getelementptr i8, ptr %29, i32 208
  tail call void %27(ptr noundef %sdev, ptr noundef %add.ptr.i24, i32 noundef -939524096) #4
  br label %cleanup

do.body.i28:                                      ; preds = %snd_sof_dsp_write.exit
  %call.i26 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool6.not.i27 = icmp eq i32 %call.i26, 0
  br i1 %tobool6.not.i27, label %do.body.i28.cleanup_crit_edge, label %do.end.i29

do.body.i28.cleanup_crit_edge:                    ; preds = %do.body.i28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end.i29:                                       ; preds = %do.body.i28
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %host_box = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 15
  %32 = ptrtoint ptr %host_box to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %host_box, align 4
  %msg_data = getelementptr inbounds %struct.snd_sof_ipc_msg, ptr %msg, i32 0, i32 1
  %34 = ptrtoint ptr %msg_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %msg_data, align 4
  %msg_size = getelementptr inbounds %struct.snd_sof_ipc_msg, ptr %msg, i32 0, i32 3
  %36 = ptrtoint ptr %msg_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_size, align 4
  tail call void @sof_mailbox_write(ptr noundef %sdev, i32 noundef %33, ptr noundef %35, i32 noundef %37) #4
  %38 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdata, align 4
  %desc.i32 = getelementptr inbounds %struct.snd_sof_pdata, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %desc.i32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %desc.i32, align 4
  %ops.i33 = getelementptr inbounds %struct.sof_dev_desc, ptr %41, i32 0, i32 14
  %42 = ptrtoint ptr %ops.i33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i33, align 4
  %write.i34 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %write.i34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write.i34, align 4
  %tobool.not.i35 = icmp eq ptr %45, null
  br i1 %tobool.not.i35, label %do.body.i41, label %if.then.i38

if.then.i38:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i36 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  %46 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i36, align 4
  %add.ptr.i37 = getelementptr i8, ptr %47, i32 208
  tail call void %45(ptr noundef %sdev, ptr noundef %add.ptr.i37, i32 noundef -2147483648) #4
  br label %snd_sof_dsp_write.exit43

do.body.i41:                                      ; preds = %if.end
  %call.i39 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool6.not.i40 = icmp eq i32 %call.i39, 0
  br i1 %tobool6.not.i40, label %do.body.i41.snd_sof_dsp_write.exit43_crit_edge, label %do.end.i42

do.body.i41.snd_sof_dsp_write.exit43_crit_edge:   ; preds = %do.body.i41
  call void @__sanitizer_cov_trace_pc() #6
  br label %snd_sof_dsp_write.exit43

do.end.i42:                                       ; preds = %do.body.i41
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.snd_sof_dsp_write) #7
  br label %snd_sof_dsp_write.exit43

snd_sof_dsp_write.exit43:                         ; preds = %do.end.i42, %do.body.i41.snd_sof_dsp_write.exit43_crit_edge, %if.then.i38
  %50 = ptrtoint ptr %msg_data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %msg_data, align 4
  %cmd = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %cmd to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %cmd, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073807360, i32 %53)
  %cmp.not = icmp eq i32 %53, 1073807360
  br i1 %cmp.not, label %snd_sof_dsp_write.exit43.cleanup_crit_edge, label %if.then2

snd_sof_dsp_write.exit43.cleanup_crit_edge:       ; preds = %snd_sof_dsp_write.exit43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2:                                         ; preds = %snd_sof_dsp_write.exit43
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %54 = load ptr, ptr @system_wq, align 4
  %d0i3_work = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 8
  %call.i44 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %54, ptr noundef %d0i3_work, i32 noundef 500) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %snd_sof_dsp_write.exit43.cleanup_crit_edge, %do.end.i29, %do.body.i28.cleanup_crit_edge, %if.then.i25
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_mailbox_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cnl_ipc_dump(ptr noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @hda_ipc_irq_dump(ptr noundef %sdev) #4
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
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 212
  %call.i = tail call i32 %7(ptr noundef %sdev, ptr noundef %add.ptr.i) #4
  br label %snd_sof_dsp_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #7
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
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i12 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  %20 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i12, align 4
  %add.ptr.i13 = getelementptr i8, ptr %21, i32 232
  %call.i14 = tail call i32 %19(ptr noundef %sdev, ptr noundef %add.ptr.i13) #4
  br label %snd_sof_dsp_read.exit18

do.end.i16:                                       ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #7
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
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i24 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  %32 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i24, align 4
  %add.ptr.i25 = getelementptr i8, ptr %33, i32 192
  %call.i26 = tail call i32 %31(ptr noundef %sdev, ptr noundef %add.ptr.i25) #4
  br label %snd_sof_dsp_read.exit30

do.end.i28:                                       ; preds = %snd_sof_dsp_read.exit18
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #7
  br label %snd_sof_dsp_read.exit30

snd_sof_dsp_read.exit30:                          ; preds = %do.end.i28, %if.then.i27
  %retval.0.i29 = phi i32 [ %call.i26, %if.then.i27 ], [ -524, %do.end.i28 ]
  %36 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.5, i32 noundef %retval.0.i, i32 noundef %retval.0.i29, i32 noundef %retval.0.i17) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_ipc_irq_dump(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_remove(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_shutdown(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_cl_boot_firmware(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_core_get(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_io_write(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_io_read(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_io_write64(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sof_io_read64(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_block_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_block_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_mailbox_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_load_firmware_raw(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_fw_ready(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_pcm_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_pcm_close(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_pcm_hw_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_stream_hw_free(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_pcm_trigger(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_pcm_pointer(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_pcm_ack(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_probe_compr_assign(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_probe_compr_free(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_probe_compr_set_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_probe_compr_trigger(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_probe_compr_pointer(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_ipc_msg_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_ipc_pcm_params(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_pre_fw_run(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_post_fw_run(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_ext_man_get_cavs_config_data(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_suspend(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_runtime_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_runtime_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_runtime_idle(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_set_hw_params_upon_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_set_power_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_dsp_dump(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_debugfs_add_region_item_iomem(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_trace_init(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_trace_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_trace_trigger(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_ipc_get_mailbox_offset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_ipc_get_window_offset(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_machine_register(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sof_machine_unregister(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hda_machine_select(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_set_mach_params(ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @hda_common_check_sdw_irq(ptr nocapture noundef readnone %sdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_dsp_update_bits_forced(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !35, !36, !37, !38, !40, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/intel/cnl.c", i32 116, i32 3}
!2 = !{ptr @cnl_ipc_irq_thread._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @cnl_ipc_irq_thread.descriptor, !1, !"descriptor", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/intel/cnl.c", i32 243, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @cnl_ipc_dump._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @cnl_ipc_dump._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @sof_cnl_ops, !16, !"sof_cnl_ops", i1 false, i1 false}
!16 = !{!"../sound/soc/sof/intel/cnl.c", i32 249, i32 30}
!17 = !{ptr @__ksymtab_sof_cnl_ops, !18, !"__ksymtab_sof_cnl_ops", i1 false, i1 false}
!18 = !{!"../sound/soc/sof/intel/cnl.c", i32 355, i32 1}
!19 = !{ptr @cnl_chip_info, !20, !"cnl_chip_info", i1 false, i1 false}
!20 = !{!"../sound/soc/sof/intel/cnl.c", i32 357, i32 33}
!21 = !{ptr @__ksymtab_cnl_chip_info, !22, !"__ksymtab_cnl_chip_info", i1 false, i1 false}
!22 = !{!"../sound/soc/sof/intel/cnl.c", i32 374, i32 1}
!23 = !{ptr @jsl_chip_info, !24, !"jsl_chip_info", i1 false, i1 false}
!24 = !{!"../sound/soc/sof/intel/cnl.c", i32 383, i32 33}
!25 = !{ptr @__ksymtab_jsl_chip_info, !26, !"__ksymtab_jsl_chip_info", i1 false, i1 false}
!26 = !{!"../sound/soc/sof/intel/cnl.c", i32 400, i32 1}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/sof/intel/../ops.h", i32 319, i32 2}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @snd_sof_dsp_read._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @snd_sof_dsp_read._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @snd_sof_dsp_write._rs, !34, !"_rs", i1 false, i1 false}
!34 = !{!"../sound/soc/sof/intel/../ops.h", i32 299, i32 2}
!35 = !{ptr @__func__.snd_sof_dsp_write, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @snd_sof_dsp_write._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @snd_sof_dsp_write._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/sof/intel/cnl.c", i32 24, i32 3}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/sof/intel/cnl.c", i32 25, i32 3}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/sof/intel/cnl.c", i32 26, i32 3}
!44 = !{ptr @cnl_dsp_debugfs, !45, !"cnl_dsp_debugfs", i1 false, i1 false}
!45 = !{!"../sound/soc/sof/intel/cnl.c", i32 23, i32 41}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 2148303806, i64 2148303811, i64 2148303824, i64 2148303868, i64 2148303902, i64 2148303923}
