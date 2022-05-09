; ModuleID = '/llk/IR_all_yes/sound/soc/sof/pcm.c_pt.bc'
source_filename = "../sound/soc/sof/pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_sof_pcm_period_elapsed\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_sof_pcm_period_elapsed\09\09\09\09"
module asm "\09.long\09__crc_snd_sof_pcm_period_elapsed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_sof_pcm_period_elapsed:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_sof_pcm_period_elapsed\22\09\09\09\09\09"
module asm "__kstrtabns_snd_sof_pcm_period_elapsed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sof_pcm_dai_link_fixup\22, \22a\22\09"
module asm "\09.weak\09__crc_sof_pcm_dai_link_fixup\09\09\09\09"
module asm "\09.long\09__crc_sof_pcm_dai_link_fixup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sof_pcm_dai_link_fixup:\09\09\09\09\09"
module asm "\09.asciz \09\22sof_pcm_dai_link_fixup\22\09\09\09\09\09"
module asm "__kstrtabns_sof_pcm_dai_link_fixup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_compress_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.snd_sof_dev = type { ptr, %struct.spinlock, %struct.spinlock, %struct.snd_soc_component_driver, %struct.sof_dsp_power_state, %struct.mutex, i32, %struct.wait_queue_head, i32, i8, %struct.work_struct, i8, ptr, ptr, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, ptr, i32, i32, [8 x ptr], i32, i32, i32, ptr, %struct.list_head, i8, i8, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_version, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.wait_queue_head, i32, i8, i8, i8, i8, i8, i32, [8 x i32], ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.sof_dsp_power_state = type { i32, i32 }
%struct.snd_sof_mailbox = type { i32, i32 }
%struct.sof_ipc_fw_ready = type <{ %struct.sof_ipc_cmd_hdr, i32, i32, i32, i32, %struct.sof_ipc_fw_version, i64, [4 x i32] }>
%struct.sof_ipc_cmd_hdr = type { i32, i32 }
%struct.sof_ipc_fw_version = type { %struct.sof_ipc_hdr, i16, i16, i16, i16, [12 x i8], [10 x i8], [6 x i8], i32, i32, [3 x i32] }
%struct.sof_ipc_hdr = type { i32 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_sof_pcm = type { ptr, %struct.snd_soc_tplg_pcm, [2 x %struct.snd_sof_pcm_stream], %struct.list_head, [2 x %struct.snd_pcm_hw_params], [2 x i8] }
%struct.snd_soc_tplg_pcm = type <{ i32, [44 x i8], [44 x i8], i32, i32, i32, i32, i32, [8 x %struct.snd_soc_tplg_stream], i32, [2 x %struct.snd_soc_tplg_stream_caps], i32, i32, %struct.snd_soc_tplg_private }>
%struct.snd_soc_tplg_stream = type { i32, [44 x i8], i64, i32, i32, i32, i32 }
%struct.snd_soc_tplg_stream_caps = type { i32, [44 x i8], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_tplg_private = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.anon.88 }
%struct.anon.88 = type { %struct.anon.89, [0 x %struct.snd_soc_tplg_vendor_array] }
%struct.anon.89 = type {}
%struct.snd_soc_tplg_vendor_array = type { i32, i32, i32, %union.anon.90 }
%union.anon.90 = type { [0 x %struct.snd_soc_tplg_vendor_uuid_elem] }
%struct.snd_soc_tplg_vendor_uuid_elem = type { i32, [16 x i8] }
%struct.snd_sof_pcm_stream = type { i32, %struct.snd_dma_buffer, %struct.sof_ipc_stream_posn, ptr, ptr, %struct.work_struct, ptr, i8, i8 }
%struct.sof_ipc_stream_posn = type <{ %struct.sof_ipc_reply, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32 }>
%struct.sof_ipc_reply = type { %struct.sof_ipc_cmd_hdr, i32 }
%struct.sof_ipc_stream = type { %struct.sof_ipc_cmd_hdr, i32 }
%struct.snd_sof_dai = type { ptr, ptr, %struct.sof_ipc_comp_dai, i32, i32, i8, ptr, %struct.list_head }
%struct.sof_ipc_comp_dai = type { %struct.sof_ipc_comp, %struct.sof_ipc_comp_config, i32, i32, i32, i32 }
%struct.sof_ipc_comp = type { %struct.sof_ipc_cmd_hdr, i32, i32, i32, i32, i32 }
%struct.sof_ipc_comp_config = type { %struct.sof_ipc_cmd_hdr, i32, i32, i32, i32, i32, [2 x i32] }
%struct.sof_ipc_dai_config = type { %struct.sof_ipc_cmd_hdr, i32, i32, i16, i8, i8, [8 x i32], %union.anon.92 }
%union.anon.92 = type { %struct.sof_ipc_dai_dmic_params }
%struct.sof_ipc_dai_dmic_params = type { %struct.sof_ipc_hdr, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, [5 x i32], [4 x %struct.sof_ipc_dai_dmic_pdm_ctrl] }
%struct.sof_ipc_dai_dmic_pdm_ctrl = type { %struct.sof_ipc_hdr, i16, i16, i16, i16, i16, i16, i16, [3 x i16] }
%struct.snd_sof_pdata = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_acpi_mach = type { [9 x i8], ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_acpi_mach_params, ptr, ptr }
%struct.snd_soc_acpi_mach_params = type { i32, ptr, i32, i32, i8, i32, ptr, i32, ptr }
%struct.sof_dev_desc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_sof_dsp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.sof_ipc_pcm_params = type { %struct.sof_ipc_cmd_hdr, i32, i32, [2 x i32], %struct.sof_ipc_stream_params }
%struct.sof_ipc_stream_params = type { %struct.sof_ipc_hdr, %struct.sof_ipc_host_buffer, i32, i32, i32, i32, i16, i16, i16, i16, i32, i16, [3 x i16], [8 x i16] }
%struct.sof_ipc_host_buffer = type { %struct.sof_ipc_hdr, i32, i32, i32, [3 x i32] }
%struct.sof_ipc_pcm_params_reply = type { %struct.sof_ipc_reply, i32, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }

@snd_sof_pcm_init_elapsed_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(work_completion)(work)\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sof-audio-component\00", [44 x i8] zeroinitializer }, align 32
@snd_sof_pcm_period_elapsed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 87, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"error: period elapsed for unknown stream!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snd_sof_pcm_period_elapsed\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sound/soc/sof/pcm.c\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_sof_pcm_period_elapsed._entry_ptr = internal global ptr @snd_sof_pcm_period_elapsed._entry, section ".printk_index", align 4
@__kstrtab_snd_sof_pcm_period_elapsed = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_sof_pcm_period_elapsed = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_sof_pcm_period_elapsed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_sof_pcm_period_elapsed to i32), ptr @__kstrtab_snd_sof_pcm_period_elapsed, ptr @__kstrtabns_snd_sof_pcm_period_elapsed }, section "___ksymtab+snd_sof_pcm_period_elapsed", align 4
@sof_pcm_dai_link_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 704, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"warning: no topology found for BE DAI %s config\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sof_pcm_dai_link_fixup\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sof_pcm_dai_link_fixup._entry_ptr = internal global ptr @sof_pcm_dai_link_fixup._entry, section ".printk_index", align 4
@sof_pcm_dai_link_fixup._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.4, i32 733, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error: No available DAI format!\0A\00", [63 x i8] zeroinitializer }, align 32
@sof_pcm_dai_link_fixup._entry_ptr.12 = internal global ptr @sof_pcm_dai_link_fixup._entry.10, section ".printk_index", align 4
@sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.8, ptr @.str.4, ptr @.str.14, i8 0, i8 -69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"snd_sof\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rate_min: %d rate_max: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.8, ptr @.str.4, ptr @.str.15, i8 0, i8 -68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"channels_min: %d channels_max: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@sof_pcm_dai_link_fixup._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.4, i32 761, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error: invalid fmt %d for DAI type %d\0A\00", [57 x i8] zeroinitializer }, align 32
@sof_pcm_dai_link_fixup._entry_ptr.18 = internal global ptr @sof_pcm_dai_link_fixup._entry.16, section ".printk_index", align 4
@sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.8, ptr @.str.4, ptr @.str.14, i8 0, i8 -59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.8, ptr @.str.4, ptr @.str.15, i8 0, i8 -58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.8, ptr @.str.4, ptr @.str.14, i8 0, i8 -56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.8, ptr @.str.4, ptr @.str.15, i8 0, i8 -55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.8, ptr @.str.4, ptr @.str.14, i8 0, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.8, ptr @.str.4, ptr @.str.15, i8 0, i8 -52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.8, ptr @.str.4, ptr @.str.19, i8 0, i8 -50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AMD_BT rate_min: %d rate_max: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.8, ptr @.str.4, ptr @.str.20, i8 0, i8 -49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"AMD_BT channels_min: %d channels_max: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.8, ptr @.str.4, ptr @.str.21, i8 0, i8 -47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AMD_SP rate_min: %d rate_max: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.8, ptr @.str.4, ptr @.str.22, i8 0, i8 -46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"AMD_SP channels_min: %d channels_max: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.8, ptr @.str.4, ptr @.str.23, i8 0, i8 -44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"AMD_DMIC rate_min: %d rate_max: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.8, ptr @.str.4, ptr @.str.24, i8 0, i8 -43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"AMD_DMIC channels_min: %d channels_max: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@sof_pcm_dai_link_fixup._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.8, ptr @.str.4, i32 858, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error: invalid DAI type %d\0A\00", [36 x i8] zeroinitializer }, align 32
@sof_pcm_dai_link_fixup._entry_ptr.27 = internal global ptr @sof_pcm_dai_link_fixup._entry.25, section ".printk_index", align 4
@__kstrtab_sof_pcm_dai_link_fixup = external dso_local constant [0 x i8], align 1
@__kstrtabns_sof_pcm_dai_link_fixup = external dso_local constant [0 x i8], align 1
@__ksymtab_sof_pcm_dai_link_fixup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sof_pcm_dai_link_fixup to i32), ptr @__kstrtab_sof_pcm_dai_link_fixup, ptr @__kstrtabns_sof_pcm_dai_link_fixup }, section "___ksymtab+sof_pcm_dai_link_fixup", align 4
@sof_probe_compressed_ops = external dso_local constant %struct.snd_compress_ops, align 4
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sof\00", [28 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ssp_dai_config_pcm_params_match.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.29, ptr @.str.4, ptr @.str.30, i8 0, i8 -87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ssp_dai_config_pcm_params_match\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DAI config %d matches pcm hw params\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s/%s\00", [26 x i8] zeroinitializer }, align 32
@sof_pcm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 886, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error: failed to load DSP topology %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sof_pcm_probe\00", [18 x i8] zeroinitializer }, align 32
@sof_pcm_probe._entry_ptr = internal global ptr @sof_pcm_probe._entry, section ".printk_index", align 4
@sof_pcm_open.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.34, ptr @.str.4, ptr @.str.35, i8 0, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sof_pcm_open\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pcm: open stream %d dir %d\0A\00", [36 x i8] zeroinitializer }, align 32
@sof_pcm_open.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.34, ptr @.str.4, ptr @.str.36, i8 0, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"period min %zd max %zd bytes\0A\00", [34 x i8] zeroinitializer }, align 32
@sof_pcm_open.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.34, ptr @.str.4, ptr @.str.37, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"period count %d max %d\0A\00", [40 x i8] zeroinitializer }, align 32
@sof_pcm_open.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.34, ptr @.str.4, ptr @.str.38, i8 0, i8 -121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"buffer max %zd bytes\0A\00", [42 x i8] zeroinitializer }, align 32
@sof_pcm_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.4, i32 554, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error: pcm open failed %d\0A\00", [37 x i8] zeroinitializer }, align 32
@sof_pcm_open._entry_ptr = internal global ptr @sof_pcm_open._entry, section ".printk_index", align 4
@sof_pcm_close.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.40, ptr @.str.4, ptr @.str.41, i8 0, i8 -112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sof_pcm_close\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pcm: close stream %d dir %d\0A\00", [35 x i8] zeroinitializer }, align 32
@sof_pcm_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.4, i32 581, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error: pcm close failed %d\0A\00", [36 x i8] zeroinitializer }, align 32
@sof_pcm_close._entry_ptr = internal global ptr @sof_pcm_close._entry, section ".printk_index", align 4
@sof_pcm_hw_params.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.43, ptr @.str.4, ptr @.str.44, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sof_pcm_hw_params\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pcm: hw params stream %d dir %d\0A\00", [63 x i8] zeroinitializer }, align 32
@sof_pcm_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.4, i32 249, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error: platform hw params failed\0A\00", [62 x i8] zeroinitializer }, align 32
@sof_pcm_hw_params._entry_ptr = internal global ptr @sof_pcm_hw_params._entry, section ".printk_index", align 4
@sof_pcm_hw_params.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.43, ptr @.str.4, ptr @.str.46, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stream_tag %d\00", [18 x i8] zeroinitializer }, align 32
@sof_pcm_hw_params._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.4, i32 267, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"error: hw params ipc failed for stream %d\0A\00", [53 x i8] zeroinitializer }, align 32
@sof_pcm_hw_params._entry_ptr.49 = internal global ptr @sof_pcm_hw_params._entry.47, section ".printk_index", align 4
@sof_pcm_setup_connected_widgets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 141, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error: dai %s has no valid %s path\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sof_pcm_setup_connected_widgets\00", [32 x i8] zeroinitializer }, align 32
@sof_pcm_setup_connected_widgets._entry_ptr = internal global ptr @sof_pcm_setup_connected_widgets._entry, section ".printk_index", align 4
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"playback\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"capture\00", [24 x i8] zeroinitializer }, align 32
@sof_pcm_setup_connected_widgets._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.51, ptr @.str.4, i32 150, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"error: failed widget list set up for pcm %d dir %d\0A\00", [44 x i8] zeroinitializer }, align 32
@sof_pcm_setup_connected_widgets._entry_ptr.56 = internal global ptr @sof_pcm_setup_connected_widgets._entry.54, section ".printk_index", align 4
@sof_pcm_dsp_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 52, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error: got wrong reply for PCM %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sof_pcm_dsp_params\00", [45 x i8] zeroinitializer }, align 32
@sof_pcm_dsp_params._entry_ptr = internal global ptr @sof_pcm_dsp_params._entry, section ".printk_index", align 4
@sof_pcm_prepare.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.59, ptr @.str.4, ptr @.str.60, i8 0, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sof_pcm_prepare\00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pcm: prepare stream %d dir %d\0A\00", [33 x i8] zeroinitializer }, align 32
@sof_pcm_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.4, i32 351, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error: set pcm hw_params after resume\0A\00", [57 x i8] zeroinitializer }, align 32
@sof_pcm_prepare._entry_ptr = internal global ptr @sof_pcm_prepare._entry, section ".printk_index", align 4
@sof_pcm_hw_free.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.62, ptr @.str.4, ptr @.str.63, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sof_pcm_hw_free\00", [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pcm: free stream %d dir %d\0A\00", [36 x i8] zeroinitializer }, align 32
@sof_pcm_hw_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.4, i32 311, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error: platform hw free failed\0A\00", [32 x i8] zeroinitializer }, align 32
@sof_pcm_hw_free._entry_ptr = internal global ptr @sof_pcm_hw_free._entry, section ".printk_index", align 4
@sof_pcm_trigger.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.65, ptr @.str.4, ptr @.str.66, i8 0, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sof_pcm_trigger\00", [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pcm: trigger stream %d dir %d cmd %d\0A\00", [58 x i8] zeroinitializer }, align 32
@sof_pcm_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.4, i32 431, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error: unhandled trigger cmd %d\0A\00", [63 x i8] zeroinitializer }, align 32
@sof_pcm_trigger._entry_ptr = internal global ptr @sof_pcm_trigger._entry, section ".printk_index", align 4
@sof_pcm_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.4, i32 609, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"warn: can't find PCM with DAI ID %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sof_pcm_new\00", [20 x i8] zeroinitializer }, align 32
@sof_pcm_new._entry_ptr = internal global ptr @sof_pcm_new._entry, section ".printk_index", align 4
@sof_pcm_new.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.69, ptr @.str.4, ptr @.str.70, i8 0, i8 -103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"creating new PCM %s\0A\00", [43 x i8] zeroinitializer }, align 32
@sof_pcm_new.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.69, ptr @.str.4, ptr @.str.71, i8 0, i8 -100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"spcm: allocate %s playback DMA buffer size 0x%x max 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@sof_pcm_new._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.69, ptr @.str.4, i32 627, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error: NULL playback substream!\0A\00", [63 x i8] zeroinitializer }, align 32
@sof_pcm_new._entry_ptr.74 = internal global ptr @sof_pcm_new._entry.72, section ".printk_index", align 4
@sof_pcm_new.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.69, ptr @.str.4, ptr @.str.75, i8 0, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"spcm: allocate %s capture DMA buffer size 0x%x max 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@sof_pcm_new._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.69, ptr @.str.4, i32 649, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error: NULL capture substream!\0A\00", [32 x i8] zeroinitializer }, align 32
@sof_pcm_new._entry_ptr.78 = internal global ptr @sof_pcm_new._entry.76, section ".printk_index", align 4
@switch.table.sof_pcm_dai_link_fixup = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 64, i32 1024], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.79 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5]
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 71, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 81, i32 30 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 86, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 702, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 733, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 748, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 750, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 758, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 826, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 828, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 838, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 840, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 850, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 852, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 857, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 935, i32 29 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 677, i32 5 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 877, i32 12 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 885, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 513, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 535, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 538, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 541, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 554, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 575, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 580, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 188, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 249, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 253, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 266, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 140, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 149, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 51, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 343, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 350, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 299, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 311, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 383, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 430, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 608, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 613, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 622, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 627, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 644, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.332 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.333 = private constant [23 x i8] c"../sound/soc/sof/pcm.c\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 649, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant [36 x i8] c"switch.table.sof_pcm_dai_link_fixup\00", align 1
@llvm.compiler.used = appending global [107 x ptr] [ptr @__ksymtab_snd_sof_pcm_period_elapsed, ptr @__ksymtab_sof_pcm_dai_link_fixup, ptr @snd_sof_pcm_period_elapsed._entry, ptr @snd_sof_pcm_period_elapsed._entry_ptr, ptr @sof_pcm_close._entry, ptr @sof_pcm_close._entry_ptr, ptr @sof_pcm_dai_link_fixup._entry, ptr @sof_pcm_dai_link_fixup._entry.10, ptr @sof_pcm_dai_link_fixup._entry.16, ptr @sof_pcm_dai_link_fixup._entry.25, ptr @sof_pcm_dai_link_fixup._entry_ptr, ptr @sof_pcm_dai_link_fixup._entry_ptr.12, ptr @sof_pcm_dai_link_fixup._entry_ptr.18, ptr @sof_pcm_dai_link_fixup._entry_ptr.27, ptr @sof_pcm_dsp_params._entry, ptr @sof_pcm_dsp_params._entry_ptr, ptr @sof_pcm_hw_free._entry, ptr @sof_pcm_hw_free._entry_ptr, ptr @sof_pcm_hw_params._entry, ptr @sof_pcm_hw_params._entry.47, ptr @sof_pcm_hw_params._entry_ptr, ptr @sof_pcm_hw_params._entry_ptr.49, ptr @sof_pcm_new._entry, ptr @sof_pcm_new._entry.72, ptr @sof_pcm_new._entry.76, ptr @sof_pcm_new._entry_ptr, ptr @sof_pcm_new._entry_ptr.74, ptr @sof_pcm_new._entry_ptr.78, ptr @sof_pcm_open._entry, ptr @sof_pcm_open._entry_ptr, ptr @sof_pcm_prepare._entry, ptr @sof_pcm_prepare._entry_ptr, ptr @sof_pcm_probe._entry, ptr @sof_pcm_probe._entry_ptr, ptr @sof_pcm_setup_connected_widgets._entry, ptr @sof_pcm_setup_connected_widgets._entry.54, ptr @sof_pcm_setup_connected_widgets._entry_ptr, ptr @sof_pcm_setup_connected_widgets._entry_ptr.56, ptr @sof_pcm_trigger._entry, ptr @sof_pcm_trigger._entry_ptr, ptr @snd_sof_pcm_init_elapsed_work.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @switch.table.sof_pcm_dai_link_fixup], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_pcm_init_elapsed_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_pcm_period_elapsed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_pcm_dai_link_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_pcm_dai_link_fixup._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_pcm_dai_link_fixup._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_pcm_dai_link_fixup._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_pcm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_pcm_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_pcm_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_pcm_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_pcm_hw_params._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_pcm_setup_connected_widgets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_pcm_setup_connected_widgets._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_pcm_dsp_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_pcm_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_pcm_hw_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_pcm_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_pcm_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_pcm_new._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_pcm_new._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sof_pcm_dai_link_fixup to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_sof_pcm_init_elapsed_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #7
  %0 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %work, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @snd_sof_pcm_init_elapsed_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry1 = getelementptr inbounds %struct.work_struct, ptr %work, i32 0, i32 1
  %1 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry1, ptr %entry1, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %work, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry1, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.work_struct, ptr %work, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @snd_sof_pcm_period_elapsed_work, ptr %func, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_sof_pcm_period_elapsed_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %substream = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_sof_pcm_period_elapsed(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call ptr @snd_soc_rtdcom_lookup(ptr noundef %1, ptr noundef nonnull @.str.1) #7
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %pcm_list.i = getelementptr inbounds %struct.snd_sof_dev, ptr %5, i32 0, i32 35
  %dai_link.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %pcm_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %pcm_list.i
  br i1 %cmp.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %dai_id.i = getelementptr i8, ptr %.pn.i, i32 -1160
  %7 = ptrtoint ptr %dai_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dai_id.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  %10 = ptrtoint ptr %dai_link.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dai_link.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 4
  %cmp2.i = icmp eq i32 %9, %13
  br i1 %cmp2.i, label %snd_sof_find_spcm_dai.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

snd_sof_find_spcm_dai.exit:                       ; preds = %for.body.i
  %spcm.0.le.i = getelementptr i8, ptr %.pn.i, i32 -1260
  %tobool.not = icmp eq ptr %spcm.0.le.i, null
  br i1 %tobool.not, label %snd_sof_find_spcm_dai.exit.do.end_crit_edge, label %if.end

snd_sof_find_spcm_dai.exit.do.end_crit_edge:      ; preds = %snd_sof_find_spcm_dai.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %snd_sof_find_spcm_dai.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end:                                           ; preds = %snd_sof_find_spcm_dai.exit
  call void @__sanitizer_cov_trace_pc() #9
  %stream2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %14 = ptrtoint ptr %stream2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream2, align 4
  %period_elapsed_work = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 2, i32 %15, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %period_elapsed_work) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_rtdcom_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sof_pcm_dsp_pcm_free(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %sdev, ptr nocapture noundef %spcm) local_unnamed_addr #0 align 64 {
entry:
  %stream = alloca %struct.sof_ipc_stream, align 4
  %reply = alloca %struct.sof_ipc_reply, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %stream) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reply) #7
  %0 = ptrtoint ptr %reply to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reply, align 4, !annotation !196
  %1 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %reply, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !196
  %3 = getelementptr inbounds %struct.sof_ipc_reply, ptr %reply, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !196
  %stream1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %5 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stream1, align 4
  %arrayidx = getelementptr %struct.snd_sof_pcm, ptr %spcm, i32 0, i32 5, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds %struct.sof_ipc_stream, ptr %stream, i32 0, i32 1
  %10 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %stream, i32 0, i32 1
  %11 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 12, ptr %stream, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1610809344, ptr %10, align 4
  %arrayidx5 = getelementptr %struct.snd_sof_pcm, ptr %spcm, i32 0, i32 2, i32 %6
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx5, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %9, align 4
  %ipc = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 13
  %16 = ptrtoint ptr %ipc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ipc, align 4
  %call = call i32 @sof_ipc_tx_message(ptr noundef %17, i32 noundef 1610809344, ptr noundef nonnull %stream, i32 noundef 12, ptr noundef nonnull %reply, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.then10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stream1, align 4
  %arrayidx13 = getelementptr %struct.snd_sof_pcm, ptr %spcm, i32 0, i32 5, i32 %19
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx13, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then10 ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %stream) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_ipc_tx_message(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sof_pcm_dai_link_fixup(ptr noundef %rtd, ptr noundef %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %arrayidx.i600 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %arrayidx.i601 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %call3 = tail call ptr @snd_soc_rtdcom_lookup(ptr noundef %rtd, ptr noundef nonnull @.str.1) #7
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 2
  %0 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dai_link, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call4 = tail call ptr @snd_sof_find_dai(ptr noundef %call3, ptr noundef %3) #7
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %call3, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dai_link, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef %11) #10
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 48000, ptr %arrayidx.i, align 4
  %max = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  %13 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 48000, ptr %max, align 4
  %14 = ptrtoint ptr %arrayidx.i600 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %arrayidx.i600, align 4
  %max9 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 1
  %15 = ptrtoint ptr %max9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %max9, align 4
  %16 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %17 = call ptr @memset(ptr %16, i32 0, i32 28)
  %18 = ptrtoint ptr %arrayidx.i601 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %arrayidx.i601, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = call ptr @memset(ptr %arrayidx.i601, i32 0, i32 32)
  %frame_fmt = getelementptr inbounds %struct.snd_sof_dai, ptr %call4, i32 0, i32 2, i32 1, i32 4
  %20 = ptrtoint ptr %frame_fmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %frame_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %22 = icmp ult i32 %21, 3
  br i1 %22, label %switch.lookup, label %do.end14

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.11) #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.sof_pcm_dai_link_fixup, i32 0, i32 %21
  %25 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load = load i32, ptr %switch.gep, align 4
  %26 = ptrtoint ptr %arrayidx.i601 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i601, align 4
  %or.i.i604 = or i32 %27, %switch.load
  store i32 %or.i.i604, ptr %arrayidx.i601, align 4
  %dai_config = getelementptr inbounds %struct.snd_sof_dai, ptr %call4, i32 0, i32 6
  %28 = ptrtoint ptr %dai_config to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dai_config, align 4
  %type = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %type, align 1
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %31, label %do.end415 [
    i32 1, label %sw.bb16
    i32 2, label %sw.bb66
    i32 3, label %sw.bb81
    i32 4, label %sw.bb99
    i32 6, label %sw.bb106
    i32 10, label %sw.bb157
    i32 5, label %sw.bb208
    i32 7, label %sw.bb259
    i32 8, label %sw.bb310
    i32 9, label %sw.bb361
  ]

sw.bb16:                                          ; preds = %switch.lookup
  %33 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dai_link, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %dai_list.i = getelementptr inbounds %struct.snd_sof_dev, ptr %7, i32 0, i32 38
  %37 = ptrtoint ptr %dai_list.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn43.i = load ptr, ptr %dai_list.i, align 4
  %cmp.not44.i = icmp eq ptr %.pn43.i, %dai_list.i
  br i1 %cmp.not44.i, label %sw.bb16.ssp_dai_config_pcm_params_match.exit_crit_edge, label %sw.bb16.for.body.i_crit_edge

sw.bb16.for.body.i_crit_edge:                     ; preds = %sw.bb16
  br label %for.body.i

sw.bb16.ssp_dai_config_pcm_params_match.exit_crit_edge: ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  br label %ssp_dai_config_pcm_params_match.exit

for.body.i:                                       ; preds = %for.inc19.i.for.body.i_crit_edge, %sw.bb16.for.body.i_crit_edge
  %.pn45.i = phi ptr [ %.pn.i, %for.inc19.i.for.body.i_crit_edge ], [ %.pn43.i, %sw.bb16.for.body.i_crit_edge ]
  %name.i = getelementptr i8, ptr %.pn45.i, i32 -100
  %38 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name.i, align 4
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %for.body.i.for.inc19.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc19.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc19.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %call.i = tail call i32 @strcmp(ptr noundef %36, ptr noundef nonnull %39) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %for.cond4.preheader.i, label %lor.lhs.false.i.for.inc19.i_crit_edge

lor.lhs.false.i.for.inc19.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc19.i

for.cond4.preheader.i:                            ; preds = %lor.lhs.false.i
  %number_configs.i = getelementptr i8, ptr %.pn45.i, i32 -16
  %40 = ptrtoint ptr %number_configs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %number_configs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp541.i = icmp sgt i32 %41, 0
  br i1 %cmp541.i, label %for.body6.lr.ph.i, label %for.cond4.preheader.i.for.inc19.i_crit_edge

for.cond4.preheader.i.for.inc19.i_crit_edge:      ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc19.i

for.body6.lr.ph.i:                                ; preds = %for.cond4.preheader.i
  %dai_config.i = getelementptr i8, ptr %.pn45.i, i32 -4
  %42 = ptrtoint ptr %dai_config.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dai_config.i, align 4
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i, align 4
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.inc.i.for.body6.i_crit_edge, %for.body6.lr.ph.i
  %i.042.i = phi i32 [ 0, %for.body6.lr.ph.i ], [ %inc.i, %for.inc.i.for.body6.i_crit_edge ]
  %fsync_rate.i = getelementptr %struct.sof_ipc_dai_config, ptr %43, i32 %i.042.i, i32 7, i32 0, i32 3
  %46 = ptrtoint ptr %fsync_rate.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %fsync_rate.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %45)
  %cmp8.i = icmp eq i32 %47, %45
  br i1 %cmp8.i, label %do.body.i, label %for.inc.i

do.body.i:                                        ; preds = %for.body6.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssp_dai_config_pcm_params_match.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_dai_link_fixup, %if.then16.i)) #7
          to label %do.end.i [label %if.then16.i], !srcloc !198

if.then16.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssp_dai_config_pcm_params_match.__UNIQUE_ID_ddebug260, ptr noundef %49, ptr noundef nonnull @.str.30, i32 noundef %i.042.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then16.i, %do.body.i
  %current_config.i = getelementptr i8, ptr %.pn45.i, i32 -12
  %50 = ptrtoint ptr %current_config.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %i.042.i, ptr %current_config.i, align 4
  br label %for.inc19.i

for.inc.i:                                        ; preds = %for.body6.i
  %inc.i = add nuw nsw i32 %i.042.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %41
  br i1 %exitcond.not.i, label %for.inc.i.for.inc19.i_crit_edge, label %for.inc.i.for.body6.i_crit_edge

for.inc.i.for.body6.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6.i

for.inc.i.for.inc19.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc19.i

for.inc19.i:                                      ; preds = %for.inc.i.for.inc19.i_crit_edge, %do.end.i, %for.cond4.preheader.i.for.inc19.i_crit_edge, %lor.lhs.false.i.for.inc19.i_crit_edge, %for.body.i.for.inc19.i_crit_edge
  %51 = ptrtoint ptr %.pn45.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn.i = load ptr, ptr %.pn45.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %dai_list.i
  br i1 %cmp.not.i, label %for.inc19.i.ssp_dai_config_pcm_params_match.exit_crit_edge, label %for.inc19.i.for.body.i_crit_edge

for.inc19.i.for.body.i_crit_edge:                 ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc19.i.ssp_dai_config_pcm_params_match.exit_crit_edge: ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ssp_dai_config_pcm_params_match.exit

ssp_dai_config_pcm_params_match.exit:             ; preds = %for.inc19.i.ssp_dai_config_pcm_params_match.exit_crit_edge, %sw.bb16.ssp_dai_config_pcm_params_match.exit_crit_edge
  %52 = ptrtoint ptr %dai_config to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dai_config, align 4
  %current_config = getelementptr inbounds %struct.snd_sof_dai, ptr %call4, i32 0, i32 4
  %54 = ptrtoint ptr %current_config to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %current_config, align 4
  %fsync_rate = getelementptr %struct.sof_ipc_dai_config, ptr %53, i32 %55, i32 7, i32 0, i32 3
  %56 = ptrtoint ptr %fsync_rate to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %fsync_rate, align 1
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx.i, align 4
  %59 = load ptr, ptr %dai_config, align 4
  %60 = load i32, ptr %current_config, align 4
  %fsync_rate24 = getelementptr %struct.sof_ipc_dai_config, ptr %59, i32 %60, i32 7, i32 0, i32 3
  %61 = ptrtoint ptr %fsync_rate24 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %fsync_rate24, align 1
  %max25 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  %63 = ptrtoint ptr %max25 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %max25, align 4
  %64 = load ptr, ptr %dai_config, align 4
  %65 = load i32, ptr %current_config, align 4
  %tdm_slots = getelementptr %struct.sof_ipc_dai_config, ptr %64, i32 %65, i32 7, i32 0, i32 5
  %66 = ptrtoint ptr %tdm_slots to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %tdm_slots, align 1
  %68 = ptrtoint ptr %arrayidx.i600 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %arrayidx.i600, align 4
  %69 = load ptr, ptr %dai_config, align 4
  %70 = load i32, ptr %current_config, align 4
  %tdm_slots33 = getelementptr %struct.sof_ipc_dai_config, ptr %69, i32 %70, i32 7, i32 0, i32 5
  %71 = ptrtoint ptr %tdm_slots33 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %tdm_slots33, align 1
  %max34 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 1
  %73 = ptrtoint ptr %max34 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %max34, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_dai_link_fixup, %if.then40)) #7
          to label %do.body47 [label %if.then40], !srcloc !198

if.then40:                                        ; preds = %ssp_dai_config_pcm_params_match.exit
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i, align 4
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i, align 4
  %78 = ptrtoint ptr %max25 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max25, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug261, ptr noundef %75, ptr noundef nonnull @.str.14, i32 noundef %77, i32 noundef %79) #7
  br label %do.body47

do.body47:                                        ; preds = %if.then40, %ssp_dai_config_pcm_params_match.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_dai_link_fixup, %if.then59)) #7
          to label %cleanup [label %if.then59], !srcloc !198

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i, align 4
  %82 = ptrtoint ptr %arrayidx.i600 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i600, align 4
  %84 = ptrtoint ptr %max34 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %max34, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug262, ptr noundef %81, ptr noundef nonnull @.str.15, i32 noundef %83, i32 noundef %85) #7
  br label %cleanup

sw.bb66:                                          ; preds = %switch.lookup
  %86 = ptrtoint ptr %frame_fmt to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %frame_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp = icmp eq i32 %87, 1
  br i1 %cmp, label %do.end73, label %sw.bb66.cleanup_crit_edge

sw.bb66.cleanup_crit_edge:                        ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end73:                                         ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.17, i32 noundef 1, i32 noundef 2) #10
  br label %cleanup

sw.bb81:                                          ; preds = %switch.lookup
  %fe_clients = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 5, i32 0, i32 1
  %90 = ptrtoint ptr %fe_clients to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pn620 = load ptr, ptr %fe_clients, align 4
  %cmp88.not621 = icmp eq ptr %.pn620, %fe_clients
  br i1 %cmp88.not621, label %sw.bb81.cleanup_crit_edge, label %sw.bb81.for.body_crit_edge

sw.bb81.for.body_crit_edge:                       ; preds = %sw.bb81
  br label %for.body

sw.bb81.cleanup_crit_edge:                        ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.bb81.for.body_crit_edge
  %.pn622 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn620, %sw.bb81.for.body_crit_edge ]
  %fe91 = getelementptr i8, ptr %.pn622, i32 -16
  %91 = ptrtoint ptr %fe91 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %fe91, align 4
  %dai_link92 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %dai_link92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dai_link92, align 4
  %trigger = getelementptr inbounds %struct.snd_soc_dai_link, ptr %94, i32 0, i32 12
  %95 = ptrtoint ptr %trigger to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1, ptr %trigger, align 4
  %96 = ptrtoint ptr %.pn622 to i32
  call void @__asan_load4_noabort(i32 %96)
  %.pn = load ptr, ptr %.pn622, align 4
  %cmp88.not = icmp eq ptr %.pn, %fe_clients
  br i1 %cmp88.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb99:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %channels101 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %29, i32 0, i32 7, i32 0, i32 3
  %97 = ptrtoint ptr %channels101 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %channels101, align 1
  %99 = ptrtoint ptr %arrayidx.i600 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %arrayidx.i600, align 4
  %100 = ptrtoint ptr %dai_config to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dai_config, align 4
  %channels104 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %101, i32 0, i32 7, i32 0, i32 3
  %102 = ptrtoint ptr %channels104 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %channels104, align 1
  %max105 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 1
  %104 = ptrtoint ptr %max105 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %max105, align 4
  br label %cleanup

sw.bb106:                                         ; preds = %switch.lookup
  %fsync_rate108 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %29, i32 0, i32 7, i32 0, i32 4
  %105 = ptrtoint ptr %fsync_rate108 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %fsync_rate108, align 1
  %107 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %arrayidx.i, align 4
  %108 = ptrtoint ptr %dai_config to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dai_config, align 4
  %fsync_rate111 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %109, i32 0, i32 7, i32 0, i32 4
  %110 = ptrtoint ptr %fsync_rate111 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %fsync_rate111, align 1
  %max112 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  %112 = ptrtoint ptr %max112 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %max112, align 4
  %113 = load ptr, ptr %dai_config, align 4
  %tdm_slots114 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %113, i32 0, i32 7, i32 0, i32 6
  %114 = ptrtoint ptr %tdm_slots114 to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %115 = load i32, ptr %tdm_slots114, align 1
  %116 = ptrtoint ptr %arrayidx.i600 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %arrayidx.i600, align 4
  %117 = load ptr, ptr %dai_config, align 4
  %tdm_slots117 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %117, i32 0, i32 7, i32 0, i32 6
  %118 = ptrtoint ptr %tdm_slots117 to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %tdm_slots117, align 1
  %max118 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 1
  %120 = ptrtoint ptr %max118 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %max118, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_dai_link_fixup, %if.then131)) #7
          to label %do.body138 [label %if.then131], !srcloc !198

if.then131:                                       ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev.i, align 4
  %123 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx.i, align 4
  %125 = ptrtoint ptr %max112 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %max112, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug263, ptr noundef %122, ptr noundef nonnull @.str.14, i32 noundef %124, i32 noundef %126) #7
  br label %do.body138

do.body138:                                       ; preds = %if.then131, %sw.bb106
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_dai_link_fixup, %if.then150)) #7
          to label %cleanup [label %if.then150], !srcloc !198

if.then150:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #9
  %127 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev.i, align 4
  %129 = ptrtoint ptr %arrayidx.i600 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx.i600, align 4
  %131 = ptrtoint ptr %max118 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %max118, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug264, ptr noundef %128, ptr noundef nonnull @.str.15, i32 noundef %130, i32 noundef %132) #7
  br label %cleanup

sw.bb157:                                         ; preds = %switch.lookup
  %rate159 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %29, i32 0, i32 7, i32 0, i32 2
  %133 = ptrtoint ptr %rate159 to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %134 = load i32, ptr %rate159, align 1
  %135 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %arrayidx.i, align 4
  %136 = ptrtoint ptr %dai_config to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dai_config, align 4
  %rate162 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %137, i32 0, i32 7, i32 0, i32 2
  %138 = ptrtoint ptr %rate162 to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %rate162, align 1
  %max163 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  %140 = ptrtoint ptr %max163 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %max163, align 4
  %141 = load ptr, ptr %dai_config, align 4
  %channels165 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %141, i32 0, i32 7, i32 0, i32 1
  %142 = ptrtoint ptr %channels165 to i32
  call void @__asan_loadN_noabort(i32 %142, i32 4)
  %143 = load i32, ptr %channels165, align 1
  %144 = ptrtoint ptr %arrayidx.i600 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %arrayidx.i600, align 4
  %145 = load ptr, ptr %dai_config, align 4
  %channels168 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %145, i32 0, i32 7, i32 0, i32 1
  %146 = ptrtoint ptr %channels168 to i32
  call void @__asan_loadN_noabort(i32 %146, i32 4)
  %147 = load i32, ptr %channels168, align 1
  %max169 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 1
  %148 = ptrtoint ptr %max169 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %max169, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_dai_link_fixup, %if.then182)) #7
          to label %do.body189 [label %if.then182], !srcloc !198

if.then182:                                       ; preds = %sw.bb157
  call void @__sanitizer_cov_trace_pc() #9
  %149 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev.i, align 4
  %151 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx.i, align 4
  %153 = ptrtoint ptr %max163 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %max163, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug265, ptr noundef %150, ptr noundef nonnull @.str.14, i32 noundef %152, i32 noundef %154) #7
  br label %do.body189

do.body189:                                       ; preds = %if.then182, %sw.bb157
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_dai_link_fixup, %if.then201)) #7
          to label %cleanup [label %if.then201], !srcloc !198

if.then201:                                       ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #9
  %155 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev.i, align 4
  %157 = ptrtoint ptr %arrayidx.i600 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx.i600, align 4
  %159 = ptrtoint ptr %max169 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %max169, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug266, ptr noundef %156, ptr noundef nonnull @.str.15, i32 noundef %158, i32 noundef %160) #7
  br label %cleanup

sw.bb208:                                         ; preds = %switch.lookup
  %fsync_rate210 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %29, i32 0, i32 7, i32 0, i32 4
  %161 = ptrtoint ptr %fsync_rate210 to i32
  call void @__asan_loadN_noabort(i32 %161, i32 4)
  %162 = load i32, ptr %fsync_rate210, align 1
  %163 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %arrayidx.i, align 4
  %164 = ptrtoint ptr %dai_config to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dai_config, align 4
  %fsync_rate213 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %165, i32 0, i32 7, i32 0, i32 4
  %166 = ptrtoint ptr %fsync_rate213 to i32
  call void @__asan_loadN_noabort(i32 %166, i32 4)
  %167 = load i32, ptr %fsync_rate213, align 1
  %max214 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  %168 = ptrtoint ptr %max214 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %max214, align 4
  %169 = load ptr, ptr %dai_config, align 4
  %tdm_slots216 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %169, i32 0, i32 7, i32 0, i32 6
  %170 = ptrtoint ptr %tdm_slots216 to i32
  call void @__asan_loadN_noabort(i32 %170, i32 4)
  %171 = load i32, ptr %tdm_slots216, align 1
  %172 = ptrtoint ptr %arrayidx.i600 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %arrayidx.i600, align 4
  %173 = load ptr, ptr %dai_config, align 4
  %tdm_slots219 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %173, i32 0, i32 7, i32 0, i32 6
  %174 = ptrtoint ptr %tdm_slots219 to i32
  call void @__asan_loadN_noabort(i32 %174, i32 4)
  %175 = load i32, ptr %tdm_slots219, align 1
  %max220 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 1
  %176 = ptrtoint ptr %max220 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %max220, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_dai_link_fixup, %if.then233)) #7
          to label %do.body240 [label %if.then233], !srcloc !198

if.then233:                                       ; preds = %sw.bb208
  call void @__sanitizer_cov_trace_pc() #9
  %177 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev.i, align 4
  %179 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx.i, align 4
  %181 = ptrtoint ptr %max214 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %max214, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug267, ptr noundef %178, ptr noundef nonnull @.str.14, i32 noundef %180, i32 noundef %182) #7
  br label %do.body240

do.body240:                                       ; preds = %if.then233, %sw.bb208
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_dai_link_fixup, %if.then252)) #7
          to label %cleanup [label %if.then252], !srcloc !198

if.then252:                                       ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #9
  %183 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev.i, align 4
  %185 = ptrtoint ptr %arrayidx.i600 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx.i600, align 4
  %187 = ptrtoint ptr %max220 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %max220, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug268, ptr noundef %184, ptr noundef nonnull @.str.15, i32 noundef %186, i32 noundef %188) #7
  br label %cleanup

sw.bb259:                                         ; preds = %switch.lookup
  %fsync_rate261 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %29, i32 0, i32 7, i32 0, i32 1
  %189 = ptrtoint ptr %fsync_rate261 to i32
  call void @__asan_loadN_noabort(i32 %189, i32 4)
  %190 = load i32, ptr %fsync_rate261, align 1
  %191 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %arrayidx.i, align 4
  %192 = ptrtoint ptr %dai_config to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dai_config, align 4
  %fsync_rate264 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %193, i32 0, i32 7, i32 0, i32 1
  %194 = ptrtoint ptr %fsync_rate264 to i32
  call void @__asan_loadN_noabort(i32 %194, i32 4)
  %195 = load i32, ptr %fsync_rate264, align 1
  %max265 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  %196 = ptrtoint ptr %max265 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %max265, align 4
  %197 = load ptr, ptr %dai_config, align 4
  %tdm_slots267 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %197, i32 0, i32 7, i32 0, i32 2
  %198 = ptrtoint ptr %tdm_slots267 to i32
  call void @__asan_loadN_noabort(i32 %198, i32 4)
  %199 = load i32, ptr %tdm_slots267, align 1
  %200 = ptrtoint ptr %arrayidx.i600 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %arrayidx.i600, align 4
  %201 = load ptr, ptr %dai_config, align 4
  %tdm_slots270 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %201, i32 0, i32 7, i32 0, i32 2
  %202 = ptrtoint ptr %tdm_slots270 to i32
  call void @__asan_loadN_noabort(i32 %202, i32 4)
  %203 = load i32, ptr %tdm_slots270, align 1
  %max271 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 1
  %204 = ptrtoint ptr %max271 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %max271, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_dai_link_fixup, %if.then284)) #7
          to label %do.body291 [label %if.then284], !srcloc !198

if.then284:                                       ; preds = %sw.bb259
  call void @__sanitizer_cov_trace_pc() #9
  %205 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dev.i, align 4
  %207 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx.i, align 4
  %209 = ptrtoint ptr %max265 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %max265, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug269, ptr noundef %206, ptr noundef nonnull @.str.19, i32 noundef %208, i32 noundef %210) #7
  br label %do.body291

do.body291:                                       ; preds = %if.then284, %sw.bb259
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_dai_link_fixup, %if.then303)) #7
          to label %cleanup [label %if.then303], !srcloc !198

if.then303:                                       ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #9
  %211 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dev.i, align 4
  %213 = ptrtoint ptr %arrayidx.i600 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx.i600, align 4
  %215 = ptrtoint ptr %max271 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %max271, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug270, ptr noundef %212, ptr noundef nonnull @.str.20, i32 noundef %214, i32 noundef %216) #7
  br label %cleanup

sw.bb310:                                         ; preds = %switch.lookup
  %fsync_rate312 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %29, i32 0, i32 7, i32 0, i32 1
  %217 = ptrtoint ptr %fsync_rate312 to i32
  call void @__asan_loadN_noabort(i32 %217, i32 4)
  %218 = load i32, ptr %fsync_rate312, align 1
  %219 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %arrayidx.i, align 4
  %220 = ptrtoint ptr %dai_config to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %dai_config, align 4
  %fsync_rate315 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %221, i32 0, i32 7, i32 0, i32 1
  %222 = ptrtoint ptr %fsync_rate315 to i32
  call void @__asan_loadN_noabort(i32 %222, i32 4)
  %223 = load i32, ptr %fsync_rate315, align 1
  %max316 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  %224 = ptrtoint ptr %max316 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %max316, align 4
  %225 = load ptr, ptr %dai_config, align 4
  %tdm_slots318 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %225, i32 0, i32 7, i32 0, i32 2
  %226 = ptrtoint ptr %tdm_slots318 to i32
  call void @__asan_loadN_noabort(i32 %226, i32 4)
  %227 = load i32, ptr %tdm_slots318, align 1
  %228 = ptrtoint ptr %arrayidx.i600 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %227, ptr %arrayidx.i600, align 4
  %229 = load ptr, ptr %dai_config, align 4
  %tdm_slots321 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %229, i32 0, i32 7, i32 0, i32 2
  %230 = ptrtoint ptr %tdm_slots321 to i32
  call void @__asan_loadN_noabort(i32 %230, i32 4)
  %231 = load i32, ptr %tdm_slots321, align 1
  %max322 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 1
  %232 = ptrtoint ptr %max322 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %231, ptr %max322, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_dai_link_fixup, %if.then335)) #7
          to label %do.body342 [label %if.then335], !srcloc !198

if.then335:                                       ; preds = %sw.bb310
  call void @__sanitizer_cov_trace_pc() #9
  %233 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dev.i, align 4
  %235 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %arrayidx.i, align 4
  %237 = ptrtoint ptr %max316 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %max316, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug271, ptr noundef %234, ptr noundef nonnull @.str.21, i32 noundef %236, i32 noundef %238) #7
  br label %do.body342

do.body342:                                       ; preds = %if.then335, %sw.bb310
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_dai_link_fixup, %if.then354)) #7
          to label %cleanup [label %if.then354], !srcloc !198

if.then354:                                       ; preds = %do.body342
  call void @__sanitizer_cov_trace_pc() #9
  %239 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dev.i, align 4
  %241 = ptrtoint ptr %arrayidx.i600 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx.i600, align 4
  %243 = ptrtoint ptr %max322 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %max322, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug272, ptr noundef %240, ptr noundef nonnull @.str.22, i32 noundef %242, i32 noundef %244) #7
  br label %cleanup

sw.bb361:                                         ; preds = %switch.lookup
  %fsync_rate363 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %29, i32 0, i32 7, i32 0, i32 1
  %245 = ptrtoint ptr %fsync_rate363 to i32
  call void @__asan_loadN_noabort(i32 %245, i32 4)
  %246 = load i32, ptr %fsync_rate363, align 1
  %247 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %246, ptr %arrayidx.i, align 4
  %248 = ptrtoint ptr %dai_config to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %dai_config, align 4
  %fsync_rate366 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %249, i32 0, i32 7, i32 0, i32 1
  %250 = ptrtoint ptr %fsync_rate366 to i32
  call void @__asan_loadN_noabort(i32 %250, i32 4)
  %251 = load i32, ptr %fsync_rate366, align 1
  %max367 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  %252 = ptrtoint ptr %max367 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %251, ptr %max367, align 4
  %253 = load ptr, ptr %dai_config, align 4
  %tdm_slots369 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %253, i32 0, i32 7, i32 0, i32 2
  %254 = ptrtoint ptr %tdm_slots369 to i32
  call void @__asan_loadN_noabort(i32 %254, i32 4)
  %255 = load i32, ptr %tdm_slots369, align 1
  %256 = ptrtoint ptr %arrayidx.i600 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %255, ptr %arrayidx.i600, align 4
  %257 = load ptr, ptr %dai_config, align 4
  %tdm_slots372 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %257, i32 0, i32 7, i32 0, i32 2
  %258 = ptrtoint ptr %tdm_slots372 to i32
  call void @__asan_loadN_noabort(i32 %258, i32 4)
  %259 = load i32, ptr %tdm_slots372, align 1
  %max373 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 1
  %260 = ptrtoint ptr %max373 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %259, ptr %max373, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_dai_link_fixup, %if.then386)) #7
          to label %do.body393 [label %if.then386], !srcloc !198

if.then386:                                       ; preds = %sw.bb361
  call void @__sanitizer_cov_trace_pc() #9
  %261 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %dev.i, align 4
  %263 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %arrayidx.i, align 4
  %265 = ptrtoint ptr %max367 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %max367, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug273, ptr noundef %262, ptr noundef nonnull @.str.23, i32 noundef %264, i32 noundef %266) #7
  br label %do.body393

do.body393:                                       ; preds = %if.then386, %sw.bb361
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_dai_link_fixup, %if.then405)) #7
          to label %cleanup [label %if.then405], !srcloc !198

if.then405:                                       ; preds = %do.body393
  call void @__sanitizer_cov_trace_pc() #9
  %267 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %dev.i, align 4
  %269 = ptrtoint ptr %arrayidx.i600 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %arrayidx.i600, align 4
  %271 = ptrtoint ptr %max373 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %max373, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug274, ptr noundef %268, ptr noundef nonnull @.str.24, i32 noundef %270, i32 noundef %272) #7
  br label %cleanup

do.end415:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %273 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %274, ptr noundef nonnull @.str.26, i32 noundef %31) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end415, %if.then405, %do.body393, %if.then354, %do.body342, %if.then303, %do.body291, %if.then252, %do.body240, %if.then201, %do.body189, %if.then150, %do.body138, %sw.bb99, %for.body.cleanup_crit_edge, %sw.bb81.cleanup_crit_edge, %do.end73, %sw.bb66.cleanup_crit_edge, %if.then59, %do.body47, %do.end14, %do.end
  %retval.0 = phi i32 [ -22, %do.end14 ], [ 0, %do.end ], [ 0, %if.then405 ], [ 0, %if.then354 ], [ 0, %if.then303 ], [ 0, %if.then252 ], [ 0, %if.then201 ], [ 0, %if.then150 ], [ 0, %sw.bb66.cleanup_crit_edge ], [ 0, %do.end73 ], [ 0, %if.then59 ], [ 0, %do.end415 ], [ 0, %sw.bb99 ], [ 0, %do.body47 ], [ 0, %do.body138 ], [ 0, %do.body189 ], [ 0, %do.body240 ], [ 0, %do.body291 ], [ 0, %do.body342 ], [ 0, %do.body393 ], [ 0, %sw.bb81.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_sof_find_dai(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @snd_sof_new_platform_drv(ptr nocapture noundef %sdev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_drv = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 3
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %machine = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %machine to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %machine, align 4
  %drv_name1 = getelementptr inbounds %struct.snd_soc_acpi_mach, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %drv_name1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_name1, align 4
  %6 = ptrtoint ptr %plat_drv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.1, ptr %plat_drv, align 4
  %probe = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 3, i32 7
  %7 = ptrtoint ptr %probe to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @sof_pcm_probe, ptr %probe, align 4
  %remove = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %remove to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sof_pcm_remove, ptr %remove, align 4
  %open = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 3, i32 23
  %9 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sof_pcm_open, ptr %open, align 4
  %close = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 3, i32 24
  %10 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @sof_pcm_close, ptr %close, align 4
  %hw_params = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 3, i32 26
  %11 = ptrtoint ptr %hw_params to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sof_pcm_hw_params, ptr %hw_params, align 4
  %prepare = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 3, i32 28
  %12 = ptrtoint ptr %prepare to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @sof_pcm_prepare, ptr %prepare, align 4
  %hw_free = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 3, i32 27
  %13 = ptrtoint ptr %hw_free to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @sof_pcm_hw_free, ptr %hw_free, align 4
  %trigger = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 3, i32 29
  %14 = ptrtoint ptr %trigger to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @sof_pcm_trigger, ptr %trigger, align 4
  %pointer = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 3, i32 31
  %15 = ptrtoint ptr %pointer to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @sof_pcm_pointer, ptr %pointer, align 4
  %ack = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 3, i32 36
  %16 = ptrtoint ptr %ack to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @sof_pcm_ack, ptr %ack, align 4
  %compress_ops = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 3, i32 38
  %17 = ptrtoint ptr %compress_ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sof_probe_compressed_ops, ptr %compress_ops, align 4
  %pcm_construct = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 3, i32 13
  %18 = ptrtoint ptr %pcm_construct to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @sof_pcm_new, ptr %pcm_construct, align 4
  %ignore_machine = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 3, i32 42
  %19 = ptrtoint ptr %ignore_machine to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %5, ptr %ignore_machine, align 4
  %be_hw_params_fixup = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 3, i32 44
  %20 = ptrtoint ptr %be_hw_params_fixup to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @sof_pcm_dai_link_fixup, ptr %be_hw_params_fixup, align 4
  %be_pcm_base = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 3, i32 46
  %21 = ptrtoint ptr %be_pcm_base to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16, ptr %be_pcm_base, align 4
  %use_dai_pcm_id = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 3, i32 45
  %22 = ptrtoint ptr %use_dai_pcm_id to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %use_dai_pcm_id, align 4
  %topology_name_prefix = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 3, i32 43
  %23 = ptrtoint ptr %topology_name_prefix to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.28, ptr %topology_name_prefix, align 4
  %module_get_upon_open = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 3, i32 41
  %24 = ptrtoint ptr %module_get_upon_open to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %module_get_upon_open, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %module_get_upon_open, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_pcm_probe(ptr noundef %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %component1 = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 40
  %6 = ptrtoint ptr %component1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %component, ptr %component1, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %tplg_filename_prefix = getelementptr inbounds %struct.snd_sof_pdata, ptr %5, i32 0, i32 9
  %9 = ptrtoint ptr %tplg_filename_prefix to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tplg_filename_prefix, align 4
  %tplg_filename2 = getelementptr inbounds %struct.snd_sof_pdata, ptr %5, i32 0, i32 10
  %11 = ptrtoint ptr %tplg_filename2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tplg_filename2, align 4
  %call3 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %8, i32 noundef 3264, ptr noundef nonnull @.str.31, ptr noundef %10, ptr noundef %12) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @snd_sof_load_topology(ptr noundef %component, ptr noundef nonnull %call3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.32, i32 noundef %call4) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sof_pcm_remove(ptr noundef %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_soc_tplg_component_remove(ptr noundef %component) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_pcm_open(ptr nocapture noundef readonly %component, ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdata, align 4
  %desc = getelementptr inbounds %struct.snd_sof_pdata, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 4
  %ops2 = getelementptr inbounds %struct.sof_dev_desc, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %ops2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops2, align 4
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dai_link, align 4
  %no_pcm = getelementptr inbounds %struct.snd_soc_dai_link, ptr %15, i32 0, i32 18
  %16 = ptrtoint ptr %no_pcm to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load = load i32, ptr %no_pcm, align 4
  %17 = and i32 %bf.load, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcm_list.i = getelementptr inbounds %struct.snd_sof_dev, ptr %7, i32 0, i32 35
  %id.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %15, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %pcm_list.i, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %18 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %pcm_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %dai_id.i = getelementptr i8, ptr %.pn.i, i32 -1160
  %19 = ptrtoint ptr %dai_id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dai_id.i, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  %22 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id.i, align 4
  %cmp2.i = icmp eq i32 %21, %23
  br i1 %cmp2.i, label %snd_sof_find_spcm_dai.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

snd_sof_find_spcm_dai.exit:                       ; preds = %for.body.i
  %spcm.0.le.i = getelementptr i8, ptr %.pn.i, i32 -1260
  %tobool4.not = icmp eq ptr %spcm.0.le.i, null
  br i1 %tobool4.not, label %snd_sof_find_spcm_dai.exit.cleanup_crit_edge, label %do.body

snd_sof_find_spcm_dai.exit.cleanup_crit_edge:     ; preds = %snd_sof_find_spcm_dai.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %snd_sof_find_spcm_dai.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_open.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_open, %if.then11)) #7
          to label %do.end [label %if.then11], !srcloc !198

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %pcm_id = getelementptr i8, ptr %.pn.i, i32 -1164
  %26 = ptrtoint ptr %pcm_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pcm_id, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %28 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stream, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_open.__UNIQUE_ID_ddebug252, ptr noundef %25, ptr noundef nonnull @.str.35, i32 noundef %27, i32 noundef %29) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %stream15 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %30 = ptrtoint ptr %stream15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stream15, align 4
  %hw_info = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %13, i32 0, i32 64
  %32 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hw_info, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %hw, align 8
  %formats = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 1, i32 10, i32 %31, i32 2
  %35 = ptrtoint ptr %formats to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %36 = load i64, ptr %formats, align 1
  %37 = tail call i64 @llvm.bswap.i64(i64 %36)
  %formats17 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 1
  %38 = ptrtoint ptr %formats17 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %formats17, align 8
  %period_size_min = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 1, i32 10, i32 %31, i32 10
  %39 = ptrtoint ptr %period_size_min to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %period_size_min, align 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %period_bytes_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 8
  %42 = ptrtoint ptr %period_bytes_min to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %period_bytes_min, align 8
  %period_size_max = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 1, i32 10, i32 %31, i32 11
  %43 = ptrtoint ptr %period_size_max to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %period_size_max, align 1
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %period_bytes_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 9
  %46 = ptrtoint ptr %period_bytes_max to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %period_bytes_max, align 4
  %periods_min = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 1, i32 10, i32 %31, i32 8
  %47 = ptrtoint ptr %periods_min to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %periods_min, align 1
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %periods_min21 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 10
  %50 = ptrtoint ptr %periods_min21 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %periods_min21, align 8
  %periods_max = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 1, i32 10, i32 %31, i32 9
  %51 = ptrtoint ptr %periods_max to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %periods_max, align 1
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %periods_max23 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 11
  %54 = ptrtoint ptr %periods_max23 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %periods_max23, align 4
  %buffer_size_max = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 1, i32 10, i32 %31, i32 13
  %55 = ptrtoint ptr %buffer_size_max to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %buffer_size_max, align 1
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %buffer_bytes_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 7
  %58 = ptrtoint ptr %buffer_bytes_max to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %buffer_bytes_max, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_open.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_open, %if.then37)) #7
          to label %do.body46 [label %if.then37], !srcloc !198

if.then37:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 4
  %61 = ptrtoint ptr %period_bytes_min to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %period_bytes_min, align 8
  %63 = ptrtoint ptr %period_bytes_max to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %period_bytes_max, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_open.__UNIQUE_ID_ddebug253, ptr noundef %60, ptr noundef nonnull @.str.36, i32 noundef %62, i32 noundef %64) #7
  br label %do.body46

do.body46:                                        ; preds = %if.then37, %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_open.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_open, %if.then58)) #7
          to label %do.body67 [label %if.then58], !srcloc !198

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i, align 4
  %67 = ptrtoint ptr %periods_min21 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %periods_min21, align 8
  %69 = ptrtoint ptr %periods_max23 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %periods_max23, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_open.__UNIQUE_ID_ddebug254, ptr noundef %66, ptr noundef nonnull @.str.37, i32 noundef %68, i32 noundef %70) #7
  br label %do.body67

do.body67:                                        ; preds = %if.then58, %do.body46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_open.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_open, %if.then79)) #7
          to label %do.end85 [label %if.then79], !srcloc !198

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i, align 4
  %73 = ptrtoint ptr %buffer_bytes_max to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %buffer_bytes_max, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_open.__UNIQUE_ID_ddebug255, ptr noundef %72, ptr noundef nonnull @.str.38, i32 noundef %74) #7
  br label %do.end85

do.end85:                                         ; preds = %if.then79, %do.body67
  %wait_time = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 14
  %75 = ptrtoint ptr %wait_time to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 500, ptr %wait_time, align 4
  %76 = ptrtoint ptr %stream15 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %stream15, align 4
  %host_posn = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 2, i32 %77, i32 2, i32 5
  %78 = ptrtoint ptr %host_posn to i32
  call void @__asan_storeN_noabort(i32 %78, i32 8)
  store i64 0, ptr %host_posn, align 4
  %79 = load i32, ptr %stream15, align 4
  %dai_posn = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 2, i32 %79, i32 2, i32 6
  %80 = ptrtoint ptr %dai_posn to i32
  call void @__asan_storeN_noabort(i32 %80, i32 8)
  store i64 0, ptr %dai_posn, align 4
  %81 = load i32, ptr %stream15, align 4
  %substream96 = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 2, i32 %81, i32 3
  %82 = ptrtoint ptr %substream96 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %substream, ptr %substream96, align 4
  %83 = load i32, ptr %stream15, align 4
  %arrayidx98 = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 5, i32 %83
  %84 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %arrayidx98, align 1
  %85 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pdata, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %86, i32 0, i32 6
  %87 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %88, i32 0, i32 14
  %89 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %90, null
  br i1 %tobool.not.i, label %do.end85.cleanup_crit_edge, label %land.lhs.true.i

do.end85.cleanup_crit_edge:                       ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %do.end85
  %pcm_open.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %90, i32 0, i32 22
  %91 = ptrtoint ptr %pcm_open.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pcm_open.i, align 4
  %tobool4.not.i = icmp eq ptr %92, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %snd_sof_pcm_platform_open.exit

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

snd_sof_pcm_platform_open.exit:                   ; preds = %land.lhs.true.i
  %call.i = tail call i32 %92(ptr noundef %7, ptr noundef %substream) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end103, label %snd_sof_pcm_platform_open.exit.cleanup_crit_edge

snd_sof_pcm_platform_open.exit.cleanup_crit_edge: ; preds = %snd_sof_pcm_platform_open.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end103:                                        ; preds = %snd_sof_pcm_platform_open.exit
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.39, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end103, %snd_sof_pcm_platform_open.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %do.end85.cleanup_crit_edge, %snd_sof_find_spcm_dai.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %snd_sof_find_spcm_dai.exit.cleanup_crit_edge ], [ %call.i, %do.end103 ], [ %call.i, %snd_sof_pcm_platform_open.exit.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %do.end85.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_pcm_close(ptr nocapture noundef readonly %component, ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dai_link, align 4
  %no_pcm = getelementptr inbounds %struct.snd_soc_dai_link, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %no_pcm to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %no_pcm, align 4
  %9 = and i32 %bf.load, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcm_list.i = getelementptr inbounds %struct.snd_sof_dev, ptr %5, i32 0, i32 35
  %id.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %7, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %pcm_list.i, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %pcm_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %dai_id.i = getelementptr i8, ptr %.pn.i, i32 -1160
  %11 = ptrtoint ptr %dai_id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dai_id.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i, align 4
  %cmp2.i = icmp eq i32 %13, %15
  br i1 %cmp2.i, label %snd_sof_find_spcm_dai.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

snd_sof_find_spcm_dai.exit:                       ; preds = %for.body.i
  %spcm.0.le.i = getelementptr i8, ptr %.pn.i, i32 -1260
  %tobool2.not = icmp eq ptr %spcm.0.le.i, null
  br i1 %tobool2.not, label %snd_sof_find_spcm_dai.exit.cleanup_crit_edge, label %do.body

snd_sof_find_spcm_dai.exit.cleanup_crit_edge:     ; preds = %snd_sof_find_spcm_dai.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %snd_sof_find_spcm_dai.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_close.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_close, %if.then9)) #7
          to label %do.end [label %if.then9], !srcloc !198

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %pcm_id = getelementptr i8, ptr %.pn.i, i32 -1164
  %18 = ptrtoint ptr %pcm_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pcm_id, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %20 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stream, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_close.__UNIQUE_ID_ddebug256, ptr noundef %17, ptr noundef nonnull @.str.41, i32 noundef %19, i32 noundef %21) #7
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %5, i32 0, i32 12
  %22 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %25, i32 0, i32 14
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %land.lhs.true.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %do.end
  %pcm_close.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %27, i32 0, i32 23
  %28 = ptrtoint ptr %pcm_close.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pcm_close.i, align 4
  %tobool4.not.i = icmp eq ptr %29, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %snd_sof_pcm_platform_close.exit

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

snd_sof_pcm_platform_close.exit:                  ; preds = %land.lhs.true.i
  %call.i = tail call i32 %29(ptr noundef %5, ptr noundef %substream) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end15, label %snd_sof_pcm_platform_close.exit.cleanup_crit_edge

snd_sof_pcm_platform_close.exit.cleanup_crit_edge: ; preds = %snd_sof_pcm_platform_close.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end15:                                         ; preds = %snd_sof_pcm_platform_close.exit
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.42, i32 noundef %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %snd_sof_pcm_platform_close.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %do.end.cleanup_crit_edge, %snd_sof_find_spcm_dai.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %snd_sof_find_spcm_dai.exit.cleanup_crit_edge ], [ 0, %do.end15 ], [ 0, %snd_sof_pcm_platform_close.exit.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_pcm_hw_params(ptr nocapture noundef readonly %component, ptr noundef %substream, ptr noundef %params) #0 align 64 {
entry:
  %list.i = alloca ptr, align 4
  %stream.i = alloca %struct.sof_ipc_stream, align 4
  %reply.i = alloca %struct.sof_ipc_reply, align 4
  %pcm = alloca %struct.sof_ipc_pcm_params, align 4
  %ipc_params_reply = alloca %struct.sof_ipc_pcm_params_reply, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %pcm) #7
  %8 = call ptr @memset(ptr %pcm, i32 255, i32 108)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ipc_params_reply) #7
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  %9 = call ptr @memset(ptr %ipc_params_reply, i32 255, i32 20)
  %10 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dai_link, align 4
  %no_pcm = getelementptr inbounds %struct.snd_soc_dai_link, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %no_pcm to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load = load i32, ptr %no_pcm, align 4
  %13 = and i32 %bf.load, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcm_list.i = getelementptr inbounds %struct.snd_sof_dev, ptr %7, i32 0, i32 35
  %id.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %11, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %pcm_list.i, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %14 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %pcm_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %dai_id.i = getelementptr i8, ptr %.pn.i, i32 -1160
  %15 = ptrtoint ptr %dai_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dai_id.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id.i, align 4
  %cmp2.i = icmp eq i32 %17, %19
  br i1 %cmp2.i, label %snd_sof_find_spcm_dai.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

snd_sof_find_spcm_dai.exit:                       ; preds = %for.body.i
  %spcm.0.le.i = getelementptr i8, ptr %.pn.i, i32 -1260
  %tobool3.not = icmp eq ptr %spcm.0.le.i, null
  br i1 %tobool3.not, label %snd_sof_find_spcm_dai.exit.cleanup_crit_edge, label %if.end5

snd_sof_find_spcm_dai.exit.cleanup_crit_edge:     ; preds = %snd_sof_find_spcm_dai.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %snd_sof_find_spcm_dai.exit
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %stream.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reply.i) #7
  %20 = ptrtoint ptr %reply.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %reply.i, align 4, !annotation !196
  %21 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %reply.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %21, align 4, !annotation !196
  %23 = getelementptr inbounds %struct.sof_ipc_reply, ptr %reply.i, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %23, align 4, !annotation !196
  %stream1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %25 = ptrtoint ptr %stream1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %stream1.i, align 4
  %arrayidx.i = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 5, i32 %26
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 1, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %if.end5.sof_pcm_dsp_pcm_free.exit.thread_crit_edge, label %if.end.i

if.end5.sof_pcm_dsp_pcm_free.exit.thread_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sof_pcm_dsp_pcm_free.exit.thread

if.end.i:                                         ; preds = %if.end5
  %29 = getelementptr inbounds %struct.sof_ipc_stream, ptr %stream.i, i32 0, i32 1
  %30 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %stream.i, i32 0, i32 1
  %31 = ptrtoint ptr %stream.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 12, ptr %stream.i, align 4
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1610809344, ptr %30, align 4
  %arrayidx5.i = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 2, i32 %26
  %33 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx5.i, align 4
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %29, align 4
  %ipc.i = getelementptr inbounds %struct.snd_sof_dev, ptr %7, i32 0, i32 13
  %36 = ptrtoint ptr %ipc.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ipc.i, align 4
  %call.i = call i32 @sof_ipc_tx_message(ptr noundef %37, i32 noundef 1610809344, ptr noundef nonnull %stream.i, i32 noundef 12, ptr noundef nonnull %reply.i, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %sof_pcm_dsp_pcm_free.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %stream1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %stream1.i, align 4
  %arrayidx13.i = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 5, i32 %39
  %40 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %arrayidx13.i, align 1
  br label %sof_pcm_dsp_pcm_free.exit.thread

sof_pcm_dsp_pcm_free.exit.thread:                 ; preds = %if.then10.i, %if.end5.sof_pcm_dsp_pcm_free.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %stream.i) #7
  br label %do.body

sof_pcm_dsp_pcm_free.exit:                        ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %stream.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %sof_pcm_dsp_pcm_free.exit.cleanup_crit_edge, label %sof_pcm_dsp_pcm_free.exit.do.body_crit_edge

sof_pcm_dsp_pcm_free.exit.do.body_crit_edge:      ; preds = %sof_pcm_dsp_pcm_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sof_pcm_dsp_pcm_free.exit.cleanup_crit_edge:      ; preds = %sof_pcm_dsp_pcm_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %sof_pcm_dsp_pcm_free.exit.do.body_crit_edge, %sof_pcm_dsp_pcm_free.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_hw_params.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_hw_params, %if.then13)) #7
          to label %do.end [label %if.then13], !srcloc !198

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  %pcm_id = getelementptr i8, ptr %.pn.i, i32 -1164
  %43 = ptrtoint ptr %pcm_id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pcm_id, align 4
  %45 = ptrtoint ptr %stream1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %stream1.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_hw_params.__UNIQUE_ID_ddebug247, ptr noundef %42, ptr noundef nonnull @.str.44, i32 noundef %44, i32 noundef %46) #7
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %47 = call ptr @memset(ptr %pcm, i32 0, i32 108)
  %buffer_changed = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 54
  %48 = ptrtoint ptr %buffer_changed to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load16 = load i8, ptr %buffer_changed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load16)
  %tobool18.not = icmp sgt i8 %bf.load16, -1
  br i1 %tobool18.not, label %do.end.if.end24_crit_edge, label %if.then19

do.end.if.end24_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then19:                                        ; preds = %do.end
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 52
  %49 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma_bytes, align 4
  %51 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %private_data, align 4
  %53 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %runtime1, align 4
  %dma_buffer_p.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %54, i32 0, i32 53
  %55 = ptrtoint ptr %dma_buffer_p.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dma_buffer_p.i, align 8
  %57 = ptrtoint ptr %stream1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %stream1.i, align 4
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 8
  %61 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %pcm_list.i.i = getelementptr inbounds %struct.snd_sof_dev, ptr %62, i32 0, i32 35
  %dai_link.i.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %52, i32 0, i32 2
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then19
  %.pn.in.i.i = phi ptr [ %pcm_list.i.i, %if.then19 ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %63 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %pcm_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.cleanup_crit_edge, label %for.body.i.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i.i:                                     ; preds = %for.cond.i.i
  %dai_id.i.i = getelementptr i8, ptr %.pn.i.i, i32 -1160
  %64 = ptrtoint ptr %dai_id.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dai_id.i.i, align 4
  %66 = call i32 @llvm.bswap.i32(i32 %65) #7
  %67 = ptrtoint ptr %dai_link.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dai_link.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %68, i32 0, i32 8
  %69 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %id.i.i, align 4
  %cmp2.i.i = icmp eq i32 %66, %70
  br i1 %cmp2.i.i, label %snd_sof_find_spcm_dai.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

snd_sof_find_spcm_dai.exit.i:                     ; preds = %for.body.i.i
  %spcm.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -1260
  %tobool.not.i212 = icmp eq ptr %spcm.0.le.i.i, null
  br i1 %tobool.not.i212, label %snd_sof_find_spcm_dai.exit.i.cleanup_crit_edge, label %create_page_table.exit

snd_sof_find_spcm_dai.exit.i.cleanup_crit_edge:   ; preds = %snd_sof_find_spcm_dai.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

create_page_table.exit:                           ; preds = %snd_sof_find_spcm_dai.exit.i
  %area.i = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i.i, i32 0, i32 2, i32 %58, i32 1, i32 1
  %71 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %area.i, align 4
  %call3.i = call i32 @snd_sof_create_page_table(ptr noundef %60, ptr noundef %56, ptr noundef %72, i32 noundef %50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp21 = icmp slt i32 %call3.i, 0
  br i1 %cmp21, label %create_page_table.exit.cleanup_crit_edge, label %create_page_table.exit.if.end24_crit_edge

create_page_table.exit.if.end24_crit_edge:        ; preds = %create_page_table.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

create_page_table.exit.cleanup_crit_edge:         ; preds = %create_page_table.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %create_page_table.exit.if.end24_crit_edge, %do.end.if.end24_crit_edge
  %dma_bytes25 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 52
  %73 = ptrtoint ptr %dma_bytes25 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dma_bytes25, align 4
  %sub = add i32 %74, 4095
  %shr = lshr i32 %sub, 12
  %params26 = getelementptr inbounds %struct.sof_ipc_pcm_params, ptr %pcm, i32 0, i32 4
  %pages = getelementptr inbounds %struct.sof_ipc_pcm_params, ptr %pcm, i32 0, i32 4, i32 1, i32 2
  %75 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %shr, ptr %pages, align 4
  %76 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 108, ptr %pcm, align 4
  %cmd = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %pcm, i32 0, i32 1
  %77 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1610678272, ptr %cmd, align 4
  %78 = ptrtoint ptr %stream1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %stream1.i, align 4
  %arrayidx = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 2, i32 %79
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx, align 4
  %comp_id30 = getelementptr inbounds %struct.sof_ipc_pcm_params, ptr %pcm, i32 0, i32 1
  %82 = ptrtoint ptr %comp_id30 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %comp_id30, align 4
  %83 = ptrtoint ptr %params26 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 84, ptr %params26, align 4
  %addr = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 2, i32 %79, i32 1, i32 2
  %84 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %addr, align 4
  %phy_addr = getelementptr inbounds %struct.sof_ipc_pcm_params, ptr %pcm, i32 0, i32 4, i32 1, i32 1
  %86 = ptrtoint ptr %phy_addr to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %phy_addr, align 4
  %size42 = getelementptr inbounds %struct.sof_ipc_pcm_params, ptr %pcm, i32 0, i32 4, i32 1, i32 3
  %87 = ptrtoint ptr %size42 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %74, ptr %size42, align 4
  %direction = getelementptr inbounds %struct.sof_ipc_pcm_params, ptr %pcm, i32 0, i32 4, i32 2
  %88 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %79, ptr %direction, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %89 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i.i.i = icmp eq i32 %90, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end24.if.then.i.i.i_crit_edge

if.end24.if.then.i.i.i_crit_edge:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.end24.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end24.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %90, %if.end24.if.then.i.i.i_crit_edge ], [ %93, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %91 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !199
  %add.i.i.i = or i32 %91, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.end24
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %92 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.1.i.i.i = icmp eq i32 %93, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #7
  %94 = lshr i32 %call1.i, 3
  %conv = trunc i32 %94 to i16
  %sample_valid_bytes = getelementptr inbounds %struct.sof_ipc_pcm_params, ptr %pcm, i32 0, i32 4, i32 8
  %95 = ptrtoint ptr %sample_valid_bytes to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv, ptr %sample_valid_bytes, align 4
  %buffer_fmt = getelementptr inbounds %struct.sof_ipc_pcm_params, ptr %pcm, i32 0, i32 4, i32 4
  %96 = ptrtoint ptr %buffer_fmt to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %buffer_fmt, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %97 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.i.i, align 4
  %rate = getelementptr inbounds %struct.sof_ipc_pcm_params, ptr %pcm, i32 0, i32 4, i32 5
  %99 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %rate, align 4
  %arrayidx.i.i215 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %100 = ptrtoint ptr %arrayidx.i.i215 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i.i215, align 4
  %conv52 = trunc i32 %101 to i16
  %channels = getelementptr inbounds %struct.sof_ipc_pcm_params, ptr %pcm, i32 0, i32 4, i32 7
  %102 = ptrtoint ptr %channels to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %conv52, ptr %channels, align 2
  %arrayidx.i.i216 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 6
  %103 = ptrtoint ptr %arrayidx.i.i216 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.i.i216, align 4
  %host_period_bytes = getelementptr inbounds %struct.sof_ipc_pcm_params, ptr %pcm, i32 0, i32 4, i32 10
  %105 = ptrtoint ptr %host_period_bytes to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %host_period_bytes, align 4
  %106 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.not.i.i = icmp eq i32 %107, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %params_width.exit.if.then.i.i_crit_edge

params_width.exit.if.then.i.i_crit_edge:          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %params_width.exit.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %params_width.exit.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %107, %params_width.exit.if.then.i.i_crit_edge ], [ %110, %for.inc.i.i.if.then.i.i_crit_edge ]
  %108 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #7, !range !199
  %add.i.i = or i32 %108, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %params_width.exit
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %109 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not.1.i.i = icmp eq i32 %110, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %call57 = call i32 @snd_pcm_format_physical_width(i32 noundef %retval.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %params_format.exit.cleanup_crit_edge, label %if.end61

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end61:                                         ; preds = %params_format.exit
  %111 = lshr i32 %call57, 3
  %conv63 = trunc i32 %111 to i16
  %sample_container_bytes = getelementptr inbounds %struct.sof_ipc_pcm_params, ptr %pcm, i32 0, i32 4, i32 9
  %112 = ptrtoint ptr %sample_container_bytes to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv63, ptr %sample_container_bytes, align 2
  %113 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.i.i219 = icmp eq i32 %114, 0
  br i1 %tobool.not.i.i219, label %for.inc.i.i226, label %if.end61.if.then.i.i223_crit_edge

if.end61.if.then.i.i223_crit_edge:                ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i223

if.then.i.i223:                                   ; preds = %for.inc.i.i226.if.then.i.i223_crit_edge, %if.end61.if.then.i.i223_crit_edge
  %i.09.lcssa.i.i220 = phi i32 [ -3, %if.end61.if.then.i.i223_crit_edge ], [ 29, %for.inc.i.i226.if.then.i.i223_crit_edge ]
  %.lcssa.i.i221 = phi i32 [ %114, %if.end61.if.then.i.i223_crit_edge ], [ %117, %for.inc.i.i226.if.then.i.i223_crit_edge ]
  %115 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i221, i1 true) #7, !range !199
  %phi.bo = add nsw i32 %i.09.lcssa.i.i220, %115
  br label %params_format.exit228

for.inc.i.i226:                                   ; preds = %if.end61
  %arrayidx.1.i.i224 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %116 = ptrtoint ptr %arrayidx.1.i.i224 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx.1.i.i224, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool.not.1.i.i225 = icmp eq i32 %117, 0
  br i1 %tobool.not.1.i.i225, label %for.inc.i.i226.params_format.exit228_crit_edge, label %for.inc.i.i226.if.then.i.i223_crit_edge

for.inc.i.i226.if.then.i.i223_crit_edge:          ; preds = %for.inc.i.i226
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i223

for.inc.i.i226.params_format.exit228_crit_edge:   ; preds = %for.inc.i.i226
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit228

params_format.exit228:                            ; preds = %for.inc.i.i226.params_format.exit228_crit_edge, %if.then.i.i223
  %retval.0.i.i227 = phi i32 [ %phi.bo, %if.then.i.i223 ], [ -3, %for.inc.i.i226.params_format.exit228_crit_edge ]
  %118 = call i32 @llvm.fshl.i32(i32 %retval.0.i.i227, i32 %retval.0.i.i227, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %118)
  %switch = icmp ult i32 %118, 4
  br i1 %switch, label %sw.epilog, label %params_format.exit228.cleanup_crit_edge

params_format.exit228.cleanup_crit_edge:          ; preds = %params_format.exit228
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %params_format.exit228
  %frame_fmt75 = getelementptr inbounds %struct.sof_ipc_pcm_params, ptr %pcm, i32 0, i32 4, i32 3
  %119 = ptrtoint ptr %frame_fmt75 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %frame_fmt75, align 4
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %7, i32 0, i32 12
  %120 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %121, i32 0, i32 6
  %122 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %123, i32 0, i32 14
  %124 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ops.i, align 4
  %tobool.not.i229 = icmp eq ptr %125, null
  br i1 %tobool.not.i229, label %sw.epilog.do.body86_crit_edge, label %land.lhs.true.i

sw.epilog.do.body86_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body86

land.lhs.true.i:                                  ; preds = %sw.epilog
  %pcm_hw_params.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %125, i32 0, i32 24
  %126 = ptrtoint ptr %pcm_hw_params.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pcm_hw_params.i, align 4
  %tobool4.not.i = icmp eq ptr %127, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.body86_crit_edge, label %snd_sof_pcm_platform_hw_params.exit

land.lhs.true.i.do.body86_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body86

snd_sof_pcm_platform_hw_params.exit:              ; preds = %land.lhs.true.i
  %call.i230 = call i32 %127(ptr noundef %7, ptr noundef %substream, ptr noundef %params, ptr noundef %params26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i230)
  %cmp78 = icmp slt i32 %call.i230, 0
  br i1 %cmp78, label %do.end83, label %snd_sof_pcm_platform_hw_params.exit.do.body86_crit_edge

snd_sof_pcm_platform_hw_params.exit.do.body86_crit_edge: ; preds = %snd_sof_pcm_platform_hw_params.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body86

do.end83:                                         ; preds = %snd_sof_pcm_platform_hw_params.exit
  call void @__sanitizer_cov_trace_pc() #9
  %128 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %129, ptr noundef nonnull @.str.45) #10
  br label %cleanup

do.body86:                                        ; preds = %snd_sof_pcm_platform_hw_params.exit.do.body86_crit_edge, %land.lhs.true.i.do.body86_crit_edge, %sw.epilog.do.body86_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_hw_params.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_hw_params, %if.then98)) #7
          to label %do.end104 [label %if.then98], !srcloc !198

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #9
  %130 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev.i, align 4
  %stream_tag = getelementptr inbounds %struct.sof_ipc_pcm_params, ptr %pcm, i32 0, i32 4, i32 6
  %132 = ptrtoint ptr %stream_tag to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %stream_tag, align 4
  %conv101 = zext i16 %133 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_hw_params.__UNIQUE_ID_ddebug248, ptr noundef %131, ptr noundef nonnull @.str.46, i32 noundef %conv101) #7
  br label %do.end104

do.end104:                                        ; preds = %if.then98, %do.body86
  %134 = ptrtoint ptr %stream1.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %stream1.i, align 4
  %list = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 2, i32 %135, i32 6
  %136 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %list, align 4
  %tobool108.not = icmp eq ptr %137, null
  br i1 %tobool108.not, label %if.then109, label %do.end104.if.end116_crit_edge

do.end104.if.end116_crit_edge:                    ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

if.then109:                                       ; preds = %do.end104
  %num_cpus.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  %138 = ptrtoint ptr %num_cpus.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %num_cpus.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp41.not.i = icmp eq i32 %139, 0
  br i1 %cmp41.not.i, label %if.then109.if.end116_crit_edge, label %land.rhs.lr.ph.i

if.then109.if.end116_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

land.rhs.lr.ph.i:                                 ; preds = %if.then109
  %dais.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %j.042.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc.i, %for.inc.i.land.rhs.i_crit_edge ]
  %140 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dais.i, align 4
  %arrayidx.i232 = getelementptr ptr, ptr %141, i32 %j.042.i
  %142 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx.i232, align 4
  %tobool.not.i233 = icmp eq ptr %143, null
  br i1 %tobool.not.i233, label %land.rhs.i.if.end116_crit_edge, label %for.body.i235

land.rhs.i.if.end116_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

for.body.i235:                                    ; preds = %land.rhs.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %list.i) #7
  %144 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr inttoptr (i32 -1 to ptr), ptr %list.i, align 4, !annotation !196
  %call.i234 = call i32 @snd_soc_dapm_dai_get_connected_widgets(ptr noundef nonnull %143, i32 noundef %135, ptr noundef nonnull %list.i, ptr noundef nonnull @dpcm_end_walk_at_be) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234)
  %cmp1.i = icmp slt i32 %call.i234, 0
  br i1 %cmp1.i, label %do.end.i, label %if.end.i237

do.end.i:                                         ; preds = %for.body.i235
  call void @__sanitizer_cov_trace_pc() #9
  %145 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %7, align 4
  %147 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp2.i236 = icmp eq i32 %135, 0
  %cond.i = select i1 %cmp2.i236, ptr @.str.52, ptr @.str.53
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.50, ptr noundef %148, ptr noundef nonnull %cond.i) #10
  br label %sof_pcm_setup_connected_widgets.exit

if.end.i237:                                      ; preds = %for.body.i235
  %149 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %list.i, align 4
  %151 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %150, ptr %list, align 4
  %call5.i = call i32 @sof_widget_list_setup(ptr noundef %7, ptr noundef nonnull %spcm.0.le.i, i32 noundef %135) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %do.end10.i, label %for.inc.i

do.end10.i:                                       ; preds = %if.end.i237
  call void @__sanitizer_cov_trace_pc() #9
  %152 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %7, align 4
  %pcm_id.i = getelementptr i8, ptr %.pn.i, i32 -1164
  %154 = ptrtoint ptr %pcm_id.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %pcm_id.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.55, i32 noundef %155, i32 noundef %135) #10
  %156 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr null, ptr %list, align 4
  call void @snd_soc_dapm_dai_free_widgets(ptr noundef nonnull %list.i) #7
  br label %sof_pcm_setup_connected_widgets.exit

for.inc.i:                                        ; preds = %if.end.i237
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %list.i) #7
  %inc.i = add nuw i32 %j.042.i, 1
  %157 = ptrtoint ptr %num_cpus.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %num_cpus.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %158
  br i1 %cmp.i, label %for.inc.i.land.rhs.i_crit_edge, label %for.inc.i.if.end116_crit_edge

for.inc.i.if.end116_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

sof_pcm_setup_connected_widgets.exit:             ; preds = %do.end10.i, %do.end.i
  %retval.1.ph.i = phi i32 [ %call5.i, %do.end10.i ], [ %call.i234, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %list.i) #7
  br label %cleanup

if.end116:                                        ; preds = %for.inc.i.if.end116_crit_edge, %land.rhs.i.if.end116_crit_edge, %if.then109.if.end116_crit_edge, %do.end104.if.end116_crit_edge
  %ipc = getelementptr inbounds %struct.snd_sof_dev, ptr %7, i32 0, i32 13
  %159 = ptrtoint ptr %ipc to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ipc, align 4
  %161 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %cmd, align 4
  %call119 = call i32 @sof_ipc_tx_message(ptr noundef %160, i32 noundef %162, ptr noundef nonnull %pcm, i32 noundef 108, ptr noundef nonnull %ipc_params_reply, i32 noundef 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120 = icmp slt i32 %call119, 0
  br i1 %cmp120, label %do.end125, label %if.end130

do.end125:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  %163 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev.i, align 4
  %stream_tag128 = getelementptr inbounds %struct.sof_ipc_pcm_params, ptr %pcm, i32 0, i32 4, i32 6
  %165 = ptrtoint ptr %stream_tag128 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %stream_tag128, align 4
  %conv129 = zext i16 %166 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.48, i32 noundef %conv129) #10
  br label %cleanup

if.end130:                                        ; preds = %if.end116
  %167 = ptrtoint ptr %spcm.0.le.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %spcm.0.le.i, align 4
  %dev.i.i238 = getelementptr inbounds %struct.snd_soc_component, ptr %168, i32 0, i32 3
  %169 = ptrtoint ptr %dev.i.i238 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev.i.i238, align 4
  %driver_data.i.i.i239 = getelementptr inbounds %struct.device, ptr %170, i32 0, i32 8
  %171 = ptrtoint ptr %driver_data.i.i.i239 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %driver_data.i.i.i239, align 4
  %pdata.i.i = getelementptr inbounds %struct.snd_sof_dev, ptr %172, i32 0, i32 12
  %173 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %pdata.i.i, align 4
  %desc.i.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %174, i32 0, i32 6
  %175 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %desc.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.sof_dev_desc, ptr %176, i32 0, i32 14
  %177 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %ops.i.i, align 4
  %ipc_pcm_params.i.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %178, i32 0, i32 35
  %179 = ptrtoint ptr %ipc_pcm_params.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %ipc_pcm_params.i.i, align 4
  %call.i.i = call i32 %180(ptr noundef %172, ptr noundef %substream, ptr noundef nonnull %ipc_params_reply) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i240 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i240, label %sof_pcm_dsp_params.exit.thread, label %if.end135

sof_pcm_dsp_params.exit.thread:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  %181 = ptrtoint ptr %dev.i.i238 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev.i.i238, align 4
  %pcm_id.i241 = getelementptr i8, ptr %.pn.i, i32 -1164
  %183 = ptrtoint ptr %pcm_id.i241 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %pcm_id.i241, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %182, ptr noundef nonnull @.str.57, i32 noundef %184) #10
  br label %cleanup

if.end135:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  %185 = ptrtoint ptr %stream1.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %stream1.i, align 4
  %arrayidx137 = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 5, i32 %186
  %187 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 1, ptr %arrayidx137, align 1
  %188 = load i32, ptr %stream1.i, align 4
  %arrayidx140 = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 4, i32 %188
  %189 = call ptr @memcpy(ptr %arrayidx140, ptr %params, i32 604)
  br label %cleanup

cleanup:                                          ; preds = %if.end135, %sof_pcm_dsp_params.exit.thread, %do.end125, %sof_pcm_setup_connected_widgets.exit, %do.end83, %params_format.exit228.cleanup_crit_edge, %params_format.exit.cleanup_crit_edge, %create_page_table.exit.cleanup_crit_edge, %snd_sof_find_spcm_dai.exit.i.cleanup_crit_edge, %for.cond.i.i.cleanup_crit_edge, %sof_pcm_dsp_pcm_free.exit.cleanup_crit_edge, %snd_sof_find_spcm_dai.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i230, %do.end83 ], [ %call119, %do.end125 ], [ %call.i.i, %if.end135 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %snd_sof_find_spcm_dai.exit.cleanup_crit_edge ], [ %call.i, %sof_pcm_dsp_pcm_free.exit.cleanup_crit_edge ], [ %call3.i, %create_page_table.exit.cleanup_crit_edge ], [ %call57, %params_format.exit.cleanup_crit_edge ], [ -22, %params_format.exit228.cleanup_crit_edge ], [ %retval.1.ph.i, %sof_pcm_setup_connected_widgets.exit ], [ %call.i.i, %sof_pcm_dsp_params.exit.thread ], [ -22, %snd_sof_find_spcm_dai.exit.i.cleanup_crit_edge ], [ -22, %for.cond.i.i.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ipc_params_reply) #7
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %pcm) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_pcm_prepare(ptr nocapture noundef readonly %component, ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dai_link, align 4
  %no_pcm = getelementptr inbounds %struct.snd_soc_dai_link, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %no_pcm to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %no_pcm, align 4
  %5 = and i32 %bf.load, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %pcm_list.i = getelementptr inbounds %struct.snd_sof_dev, ptr %9, i32 0, i32 35
  %id.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %3, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %pcm_list.i, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %pcm_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %dai_id.i = getelementptr i8, ptr %.pn.i, i32 -1160
  %11 = ptrtoint ptr %dai_id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dai_id.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i, align 4
  %cmp2.i = icmp eq i32 %13, %15
  br i1 %cmp2.i, label %snd_sof_find_spcm_dai.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

snd_sof_find_spcm_dai.exit:                       ; preds = %for.body.i
  %spcm.0.le.i = getelementptr i8, ptr %.pn.i, i32 -1260
  %tobool1.not = icmp eq ptr %spcm.0.le.i, null
  br i1 %tobool1.not, label %snd_sof_find_spcm_dai.exit.cleanup_crit_edge, label %if.end3

snd_sof_find_spcm_dai.exit.cleanup_crit_edge:     ; preds = %snd_sof_find_spcm_dai.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %snd_sof_find_spcm_dai.exit
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %16 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream, align 4
  %arrayidx = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 5, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool4.not = icmp eq i8 %19, 0
  br i1 %tobool4.not, label %do.body, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_prepare.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_prepare, %if.then11)) #7
          to label %do.end [label %if.then11], !srcloc !198

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i.i, align 4
  %pcm_id = getelementptr i8, ptr %.pn.i, i32 -1164
  %22 = ptrtoint ptr %pcm_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pcm_id, align 4
  %24 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stream, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_prepare.__UNIQUE_ID_ddebug250, ptr noundef %21, ptr noundef nonnull @.str.60, i32 noundef %23, i32 noundef %25) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %26 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stream, align 4
  %arrayidx15 = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 4, i32 %27
  %call16 = tail call i32 @sof_pcm_hw_params(ptr noundef %component, ptr noundef %substream, ptr noundef %arrayidx15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %do.end20, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end20:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.61) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %do.end.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %snd_sof_find_spcm_dai.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %do.end20 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %snd_sof_find_spcm_dai.exit.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_pcm_hw_free(ptr nocapture noundef readonly %component, ptr noundef %substream) #0 align 64 {
entry:
  %stream.i = alloca %struct.sof_ipc_stream, align 4
  %reply.i = alloca %struct.sof_ipc_reply, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dai_link, align 4
  %no_pcm = getelementptr inbounds %struct.snd_soc_dai_link, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %no_pcm to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %no_pcm, align 4
  %9 = and i32 %bf.load, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcm_list.i = getelementptr inbounds %struct.snd_sof_dev, ptr %5, i32 0, i32 35
  %id.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %7, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %pcm_list.i, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %pcm_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %dai_id.i = getelementptr i8, ptr %.pn.i, i32 -1160
  %11 = ptrtoint ptr %dai_id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dai_id.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i, align 4
  %cmp2.i = icmp eq i32 %13, %15
  br i1 %cmp2.i, label %snd_sof_find_spcm_dai.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

snd_sof_find_spcm_dai.exit:                       ; preds = %for.body.i
  %spcm.0.le.i = getelementptr i8, ptr %.pn.i, i32 -1260
  %tobool2.not = icmp eq ptr %spcm.0.le.i, null
  br i1 %tobool2.not, label %snd_sof_find_spcm_dai.exit.cleanup_crit_edge, label %do.body

snd_sof_find_spcm_dai.exit.cleanup_crit_edge:     ; preds = %snd_sof_find_spcm_dai.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %snd_sof_find_spcm_dai.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_hw_free.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_hw_free, %if.then9)) #7
          to label %do.end [label %if.then9], !srcloc !198

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %pcm_id = getelementptr i8, ptr %.pn.i, i32 -1164
  %18 = ptrtoint ptr %pcm_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pcm_id, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %20 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stream, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_hw_free.__UNIQUE_ID_ddebug249, ptr noundef %17, ptr noundef nonnull @.str.63, i32 noundef %19, i32 noundef %21) #7
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %stream.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reply.i) #7
  %22 = ptrtoint ptr %reply.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %reply.i, align 4, !annotation !196
  %23 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %reply.i, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %23, align 4, !annotation !196
  %25 = getelementptr inbounds %struct.sof_ipc_reply, ptr %reply.i, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %25, align 4, !annotation !196
  %stream1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %27 = ptrtoint ptr %stream1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stream1.i, align 4
  %arrayidx.i = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 5, i32 %28
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i, align 1, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %do.end.sof_pcm_dsp_pcm_free.exit.thread_crit_edge, label %if.end.i

do.end.sof_pcm_dsp_pcm_free.exit.thread_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sof_pcm_dsp_pcm_free.exit.thread

if.end.i:                                         ; preds = %do.end
  %31 = getelementptr inbounds %struct.sof_ipc_stream, ptr %stream.i, i32 0, i32 1
  %32 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %stream.i, i32 0, i32 1
  %33 = ptrtoint ptr %stream.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 12, ptr %stream.i, align 4
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1610809344, ptr %32, align 4
  %arrayidx5.i = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 2, i32 %28
  %35 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx5.i, align 4
  %37 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %31, align 4
  %ipc.i = getelementptr inbounds %struct.snd_sof_dev, ptr %5, i32 0, i32 13
  %38 = ptrtoint ptr %ipc.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ipc.i, align 4
  %call.i = call i32 @sof_ipc_tx_message(ptr noundef %39, i32 noundef 1610809344, ptr noundef nonnull %stream.i, i32 noundef 12, ptr noundef nonnull %reply.i, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %sof_pcm_dsp_pcm_free.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %stream1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %stream1.i, align 4
  %arrayidx13.i = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 5, i32 %41
  %42 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx13.i, align 1
  br label %sof_pcm_dsp_pcm_free.exit.thread

sof_pcm_dsp_pcm_free.exit.thread:                 ; preds = %if.then10.i, %do.end.sof_pcm_dsp_pcm_free.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %stream.i) #7
  br label %44

sof_pcm_dsp_pcm_free.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %stream.i) #7
  %43 = call i32 @llvm.smin.i32(i32 %call.i, i32 0)
  br label %44

44:                                               ; preds = %sof_pcm_dsp_pcm_free.exit, %sof_pcm_dsp_pcm_free.exit.thread
  %45 = phi i32 [ 0, %sof_pcm_dsp_pcm_free.exit.thread ], [ %43, %sof_pcm_dsp_pcm_free.exit ]
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %5, i32 0, i32 12
  %46 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %49, i32 0, i32 14
  %50 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i, align 4
  %tobool.not.i57 = icmp eq ptr %51, null
  br i1 %tobool.not.i57, label %.if.end21_crit_edge, label %land.lhs.true.i

.if.end21_crit_edge:                              ; preds = %44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true.i:                                  ; preds = %44
  %pcm_hw_free.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %51, i32 0, i32 25
  %52 = ptrtoint ptr %pcm_hw_free.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pcm_hw_free.i, align 4
  %tobool4.not.i = icmp eq ptr %53, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end21_crit_edge, label %snd_sof_pcm_platform_hw_free.exit

land.lhs.true.i.if.end21_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

snd_sof_pcm_platform_hw_free.exit:                ; preds = %land.lhs.true.i
  %call.i58 = call i32 %53(ptr noundef %5, ptr noundef %substream) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %cmp15 = icmp slt i32 %call.i58, 0
  br i1 %cmp15, label %do.end19, label %snd_sof_pcm_platform_hw_free.exit.if.end21_crit_edge

snd_sof_pcm_platform_hw_free.exit.if.end21_crit_edge: ; preds = %snd_sof_pcm_platform_hw_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

do.end19:                                         ; preds = %snd_sof_pcm_platform_hw_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.64) #10
  br label %if.end21

if.end21:                                         ; preds = %do.end19, %snd_sof_pcm_platform_hw_free.exit.if.end21_crit_edge, %land.lhs.true.i.if.end21_crit_edge, %.if.end21_crit_edge
  %err.1 = phi i32 [ %call.i58, %do.end19 ], [ %45, %snd_sof_pcm_platform_hw_free.exit.if.end21_crit_edge ], [ %45, %land.lhs.true.i.if.end21_crit_edge ], [ %45, %.if.end21_crit_edge ]
  %56 = ptrtoint ptr %stream1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %stream1.i, align 4
  %call23 = call i32 @sof_widget_list_free(ptr noundef %5, ptr noundef nonnull %spcm.0.le.i, i32 noundef %57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  %spec.select54 = select i1 %cmp24, i32 %call23, i32 %err.1
  %58 = ptrtoint ptr %stream1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %stream1.i, align 4
  %period_elapsed_work = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 2, i32 %59, i32 5
  %call29 = call zeroext i1 @cancel_work_sync(ptr noundef %period_elapsed_work) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %snd_sof_find_spcm_dai.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select54, %if.end21 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %snd_sof_find_spcm_dai.exit.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_pcm_trigger(ptr nocapture noundef readonly %component, ptr noundef %substream, i32 noundef %cmd) #0 align 64 {
entry:
  %stream = alloca %struct.sof_ipc_stream, align 4
  %reply = alloca %struct.sof_ipc_reply, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %stream) #7
  %6 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %stream, i32 0, i32 1
  %7 = getelementptr inbounds %struct.sof_ipc_stream, ptr %stream, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reply) #7
  %8 = ptrtoint ptr %reply to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %reply, align 4, !annotation !196
  %9 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %reply, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !196
  %11 = getelementptr inbounds %struct.sof_ipc_reply, ptr %reply, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !196
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dai_link, align 4
  %no_pcm = getelementptr inbounds %struct.snd_soc_dai_link, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %no_pcm to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load = load i32, ptr %no_pcm, align 4
  %16 = and i32 %bf.load, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcm_list.i = getelementptr inbounds %struct.snd_sof_dev, ptr %5, i32 0, i32 35
  %id.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %14, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %pcm_list.i, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %17 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %pcm_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %dai_id.i = getelementptr i8, ptr %.pn.i, i32 -1160
  %18 = ptrtoint ptr %dai_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dai_id.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  %21 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id.i, align 4
  %cmp2.i = icmp eq i32 %20, %22
  br i1 %cmp2.i, label %snd_sof_find_spcm_dai.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

snd_sof_find_spcm_dai.exit:                       ; preds = %for.body.i
  %spcm.0.le.i = getelementptr i8, ptr %.pn.i, i32 -1260
  %tobool2.not = icmp eq ptr %spcm.0.le.i, null
  br i1 %tobool2.not, label %snd_sof_find_spcm_dai.exit.cleanup_crit_edge, label %do.body

snd_sof_find_spcm_dai.exit.cleanup_crit_edge:     ; preds = %snd_sof_find_spcm_dai.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %snd_sof_find_spcm_dai.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_trigger.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_trigger, %if.then9)) #7
          to label %do.end [label %if.then9], !srcloc !198

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %pcm_id = getelementptr i8, ptr %.pn.i, i32 -1164
  %25 = ptrtoint ptr %pcm_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pcm_id, align 4
  %stream10 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %27 = ptrtoint ptr %stream10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stream10, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_trigger.__UNIQUE_ID_ddebug251, ptr noundef %24, ptr noundef nonnull @.str.66, i32 noundef %26, i32 noundef %28, i32 noundef %cmd) #7
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %29 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 12, ptr %stream, align 4
  %stream15 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %30 = ptrtoint ptr %stream15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stream15, align 4
  %arrayidx = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 2, i32 %31
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  %34 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %7, align 4
  %35 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %cmd, label %do.end54 [
    i32 3, label %do.end.if.then64_crit_edge
    i32 4, label %do.end.if.then57_crit_edge
    i32 1, label %sw.bb23
    i32 5, label %sw.bb37
    i32 0, label %do.end.sw.bb48_crit_edge
  ]

do.end.sw.bb48_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb48

do.end.if.then57_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

do.end.if.then64_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then64

sw.bb23:                                          ; preds = %do.end
  %suspend_ignored = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 2, i32 %31, i32 8
  %36 = ptrtoint ptr %suspend_ignored to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %suspend_ignored, align 1, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool27.not = icmp eq i8 %37, 0
  br i1 %tobool27.not, label %sw.bb23.if.then57_crit_edge, label %if.then28

sw.bb23.if.then57_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

if.then28:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %suspend_ignored to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %suspend_ignored, align 1
  br label %cleanup

sw.bb37:                                          ; preds = %do.end
  %system_suspend_target = getelementptr inbounds %struct.snd_sof_dev, ptr %5, i32 0, i32 6
  %39 = ptrtoint ptr %system_suspend_target to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %system_suspend_target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp = icmp eq i32 %40, 1
  br i1 %cmp, label %land.lhs.true, label %sw.bb37.sw.bb48_crit_edge

sw.bb37.sw.bb48_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb48

land.lhs.true:                                    ; preds = %sw.bb37
  %d0i3_compatible = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 2, i32 %31, i32 7
  %41 = ptrtoint ptr %d0i3_compatible to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %d0i3_compatible, align 4, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool41.not = icmp eq i8 %42, 0
  br i1 %tobool41.not, label %land.lhs.true.sw.bb48_crit_edge, label %if.then42

land.lhs.true.sw.bb48_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb48

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %suspend_ignored46 = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 2, i32 %31, i32 8
  %43 = ptrtoint ptr %suspend_ignored46 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %suspend_ignored46, align 1
  br label %cleanup

sw.bb48:                                          ; preds = %land.lhs.true.sw.bb48_crit_edge, %sw.bb37.sw.bb48_crit_edge, %do.end.sw.bb48_crit_edge
  %free_widget_list.0.off0 = phi i1 [ false, %do.end.sw.bb48_crit_edge ], [ true, %land.lhs.true.sw.bb48_crit_edge ], [ true, %sw.bb37.sw.bb48_crit_edge ]
  br label %if.then64

do.end54:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.67, i32 noundef %cmd) #10
  br label %cleanup

if.then57:                                        ; preds = %sw.bb23.if.then57_crit_edge, %do.end.if.then57_crit_edge
  %storemerge163 = phi i32 [ 1611071488, %do.end.if.then57_crit_edge ], [ 1610874880, %sw.bb23.if.then57_crit_edge ]
  %46 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %storemerge163, ptr %6, align 4
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %5, i32 0, i32 12
  %47 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %50, i32 0, i32 14
  %51 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %52, null
  br i1 %tobool.not.i, label %if.then57.if.end66.thread_crit_edge, label %land.lhs.true.i

if.then57.if.end66.thread_crit_edge:              ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66.thread

land.lhs.true.i:                                  ; preds = %if.then57
  %pcm_trigger.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %52, i32 0, i32 26
  %53 = ptrtoint ptr %pcm_trigger.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pcm_trigger.i, align 4
  %tobool4.not.i = icmp eq ptr %54, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end66.thread_crit_edge, label %if.then.i

land.lhs.true.i.if.end66.thread_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66.thread

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %54(ptr noundef %5, ptr noundef %substream, i32 noundef %cmd) #7
  br label %if.end66.thread

if.end66.thread:                                  ; preds = %if.then.i, %land.lhs.true.i.if.end66.thread_crit_edge, %if.then57.if.end66.thread_crit_edge
  %ipc148 = getelementptr inbounds %struct.snd_sof_dev, ptr %5, i32 0, i32 13
  %55 = ptrtoint ptr %ipc148 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ipc148, align 4
  %57 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %6, align 4
  %call62149 = call i32 @sof_ipc_tx_message(ptr noundef %56, i32 noundef %58, ptr noundef nonnull %stream, i32 noundef 12, ptr noundef nonnull %reply, i32 noundef 12) #7
  br label %cleanup

if.then64:                                        ; preds = %sw.bb48, %do.end.if.then64_crit_edge
  %storemerge = phi i32 [ 1610940416, %sw.bb48 ], [ 1611005952, %do.end.if.then64_crit_edge ]
  %reset_hw_params.0.off0.ph = phi i1 [ false, %sw.bb48 ], [ true, %do.end.if.then64_crit_edge ]
  %free_widget_list.1.off0.ph = phi i1 [ %free_widget_list.0.off0, %sw.bb48 ], [ false, %do.end.if.then64_crit_edge ]
  %59 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %storemerge, ptr %6, align 4
  %ipc = getelementptr inbounds %struct.snd_sof_dev, ptr %5, i32 0, i32 13
  %60 = ptrtoint ptr %ipc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ipc, align 4
  %call62 = call i32 @sof_ipc_tx_message(ptr noundef %61, i32 noundef %storemerge, ptr noundef nonnull %stream, i32 noundef 12, ptr noundef nonnull %reply, i32 noundef 12) #7
  %pdata.i120 = getelementptr inbounds %struct.snd_sof_dev, ptr %5, i32 0, i32 12
  %62 = ptrtoint ptr %pdata.i120 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdata.i120, align 4
  %desc.i121 = getelementptr inbounds %struct.snd_sof_pdata, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %desc.i121 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %desc.i121, align 4
  %ops.i122 = getelementptr inbounds %struct.sof_dev_desc, ptr %65, i32 0, i32 14
  %66 = ptrtoint ptr %ops.i122 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i122, align 4
  %tobool.not.i123 = icmp eq ptr %67, null
  br i1 %tobool.not.i123, label %if.then64.if.end66_crit_edge, label %land.lhs.true.i126

if.then64.if.end66_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

land.lhs.true.i126:                               ; preds = %if.then64
  %pcm_trigger.i124 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %67, i32 0, i32 26
  %68 = ptrtoint ptr %pcm_trigger.i124 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pcm_trigger.i124, align 4
  %tobool4.not.i125 = icmp eq ptr %69, null
  br i1 %tobool4.not.i125, label %land.lhs.true.i126.if.end66_crit_edge, label %if.then.i128

land.lhs.true.i126.if.end66_crit_edge:            ; preds = %land.lhs.true.i126
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then.i128:                                     ; preds = %land.lhs.true.i126
  call void @__sanitizer_cov_trace_pc() #9
  %call.i127 = call i32 %69(ptr noundef %5, ptr noundef %substream, i32 noundef %cmd) #7
  br label %if.end66

if.end66:                                         ; preds = %if.then.i128, %land.lhs.true.i126.if.end66_crit_edge, %if.then64.if.end66_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool67.not = icmp ne i32 %call62, 0
  %brmerge = or i1 %reset_hw_params.0.off0.ph, %tobool67.not
  br i1 %brmerge, label %if.end66.cleanup_crit_edge, label %if.then70

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %stream15 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %stream15, align 4
  %call73 = call i32 @sof_pcm_stream_free(ptr noundef %5, ptr noundef %substream, ptr noundef nonnull %spcm.0.le.i, i32 noundef %71, i1 noundef zeroext %free_widget_list.1.off0.ph) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %if.end66.cleanup_crit_edge, %if.end66.thread, %do.end54, %if.then42, %if.then28, %snd_sof_find_spcm_dai.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end54 ], [ 0, %if.then42 ], [ 0, %if.then28 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %snd_sof_find_spcm_dai.exit.cleanup_crit_edge ], [ %call62, %if.end66.cleanup_crit_edge ], [ %call73, %if.then70 ], [ %call62149, %if.end66.thread ], [ -22, %for.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %stream) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_pcm_pointer(ptr nocapture noundef readonly %component, ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dai_link, align 4
  %no_pcm = getelementptr inbounds %struct.snd_soc_dai_link, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %no_pcm to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %no_pcm, align 4
  %9 = and i32 %bf.load, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %5, i32 0, i32 12
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata, align 4
  %desc = getelementptr inbounds %struct.snd_sof_pdata, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %ops = getelementptr inbounds %struct.sof_dev_desc, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %pcm_pointer = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %pcm_pointer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcm_pointer, align 4
  %tobool1.not = icmp eq ptr %17, null
  br i1 %tobool1.not, label %if.end8, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 %17(ptr noundef %5, ptr noundef %substream) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %pcm_list.i = getelementptr inbounds %struct.snd_sof_dev, ptr %5, i32 0, i32 35
  %id.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %7, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end8
  %.pn.in.i = phi ptr [ %pcm_list.i, %if.end8 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %18 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %pcm_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %dai_id.i = getelementptr i8, ptr %.pn.i, i32 -1160
  %19 = ptrtoint ptr %dai_id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dai_id.i, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  %22 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id.i, align 4
  %cmp2.i = icmp eq i32 %21, %23
  br i1 %cmp2.i, label %snd_sof_find_spcm_dai.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

snd_sof_find_spcm_dai.exit:                       ; preds = %for.body.i
  %spcm.0.le.i = getelementptr i8, ptr %.pn.i, i32 -1260
  %tobool10.not = icmp eq ptr %spcm.0.le.i, null
  br i1 %tobool10.not, label %snd_sof_find_spcm_dai.exit.cleanup_crit_edge, label %if.end12

snd_sof_find_spcm_dai.exit.cleanup_crit_edge:     ; preds = %snd_sof_find_spcm_dai.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %snd_sof_find_spcm_dai.exit
  call void @__sanitizer_cov_trace_pc() #9
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %24 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %runtime, align 4
  %stream13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %26 = ptrtoint ptr %stream13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stream13, align 4
  %host_posn = getelementptr %struct.snd_sof_pcm, ptr %spcm.0.le.i, i32 0, i32 2, i32 %27, i32 2, i32 5
  %28 = ptrtoint ptr %host_posn to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %host_posn, align 4
  %conv = trunc i64 %29 to i32
  %mul.i = shl i32 %conv, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 21
  %30 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %31
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %snd_sof_find_spcm_dai.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then2 ], [ %div.i, %if.end12 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %snd_sof_find_spcm_dai.exit.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_pcm_ack(ptr nocapture noundef readonly %component, ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.snd_sof_pcm_platform_ack.exit_crit_edge, label %land.lhs.true.i

entry.snd_sof_pcm_platform_ack.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_sof_pcm_platform_ack.exit

land.lhs.true.i:                                  ; preds = %entry
  %pcm_ack.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %9, i32 0, i32 28
  %10 = ptrtoint ptr %pcm_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcm_ack.i, align 4
  %tobool4.not.i = icmp eq ptr %11, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.snd_sof_pcm_platform_ack.exit_crit_edge, label %if.then.i

land.lhs.true.i.snd_sof_pcm_platform_ack.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_sof_pcm_platform_ack.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %11(ptr noundef %3, ptr noundef %substream) #7
  br label %snd_sof_pcm_platform_ack.exit

snd_sof_pcm_platform_ack.exit:                    ; preds = %if.then.i, %land.lhs.true.i.snd_sof_pcm_platform_ack.exit_crit_edge, %entry.snd_sof_pcm_platform_ack.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ 0, %land.lhs.true.i.snd_sof_pcm_platform_ack.exit_crit_edge ], [ 0, %entry.snd_sof_pcm_platform_ack.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_pcm_new(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %rtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pcm1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %4 = ptrtoint ptr %pcm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcm1, align 4
  %pcm_list.i = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 35
  %dai_link.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %pcm_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %pcm_list.i
  br i1 %cmp.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %dai_id.i = getelementptr i8, ptr %.pn.i, i32 -1160
  %7 = ptrtoint ptr %dai_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dai_id.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  %10 = ptrtoint ptr %dai_link.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dai_link.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 4
  %cmp2.i = icmp eq i32 %9, %13
  br i1 %cmp2.i, label %snd_sof_find_spcm_dai.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

snd_sof_find_spcm_dai.exit:                       ; preds = %for.body.i
  %spcm.0.le.i = getelementptr i8, ptr %.pn.i, i32 -1260
  %tobool.not = icmp eq ptr %spcm.0.le.i, null
  br i1 %tobool.not, label %snd_sof_find_spcm_dai.exit.do.end_crit_edge, label %do.body3

snd_sof_find_spcm_dai.exit.do.end_crit_edge:      ; preds = %snd_sof_find_spcm_dai.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %snd_sof_find_spcm_dai.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge
  %14 = ptrtoint ptr %dai_link.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dai_link.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai_link, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.68, i32 noundef %17) #10
  br label %cleanup

do.body3:                                         ; preds = %snd_sof_find_spcm_dai.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_new.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_new, %if.then8)) #7
          to label %do.end13 [label %if.then8], !srcloc !198

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %pcm_name = getelementptr i8, ptr %.pn.i, i32 -1252
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_new.__UNIQUE_ID_ddebug257, ptr noundef %19, ptr noundef nonnull @.str.70, ptr noundef %pcm_name) #7
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %do.body3
  %playback = getelementptr i8, ptr %.pn.i, i32 -1156
  %20 = ptrtoint ptr %playback to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %playback, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool15.not = icmp eq i32 %21, 0
  br i1 %tobool15.not, label %do.end13.capture_crit_edge, label %if.end17

do.end13.capture_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %capture

if.end17:                                         ; preds = %do.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_new.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_new, %if.then32)) #7
          to label %do.end37 [label %if.then32], !srcloc !198

if.then32:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %name = getelementptr i8, ptr %.pn.i, i32 -560
  %buffer_size_min = getelementptr i8, ptr %.pn.i, i32 -472
  %24 = ptrtoint ptr %buffer_size_min to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %buffer_size_min, align 1
  %buffer_size_max = getelementptr i8, ptr %.pn.i, i32 -468
  %26 = ptrtoint ptr %buffer_size_max to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %buffer_size_max, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_new.__UNIQUE_ID_ddebug258, ptr noundef %23, ptr noundef nonnull @.str.71, ptr noundef %name, i32 noundef %25, i32 noundef %27) #7
  br label %do.end37

do.end37:                                         ; preds = %if.then32, %if.end17
  %substream = getelementptr inbounds %struct.snd_pcm, ptr %5, i32 0, i32 8, i32 0, i32 4
  %28 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %substream, align 8
  %tobool39.not = icmp eq ptr %29, null
  br i1 %tobool39.not, label %do.end43, label %if.end45

do.end43:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.73) #10
  br label %cleanup

if.end45:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  %buffer_size_max50 = getelementptr i8, ptr %.pn.i, i32 -468
  %34 = ptrtoint ptr %buffer_size_max50 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %buffer_size_max50, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %call51 = tail call i32 @snd_pcm_set_managed_buffer(ptr noundef nonnull %29, i32 noundef 2, ptr noundef %33, i32 noundef 0, i32 noundef %36) #7
  br label %capture

capture:                                          ; preds = %if.end45, %do.end13.capture_crit_edge
  %capture53 = getelementptr i8, ptr %.pn.i, i32 -1152
  %37 = ptrtoint ptr %capture53 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %capture53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool54.not = icmp eq i32 %38, 0
  br i1 %tobool54.not, label %capture.cleanup_crit_edge, label %if.end56

capture.cleanup_crit_edge:                        ; preds = %capture
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end56:                                         ; preds = %capture
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_pcm_new.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_pcm_new, %if.then72)) #7
          to label %do.end80 [label %if.then72], !srcloc !198

if.then72:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  %name74 = getelementptr i8, ptr %.pn.i, i32 -456
  %buffer_size_min76 = getelementptr i8, ptr %.pn.i, i32 -368
  %41 = ptrtoint ptr %buffer_size_min76 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %buffer_size_min76, align 1
  %buffer_size_max77 = getelementptr i8, ptr %.pn.i, i32 -364
  %43 = ptrtoint ptr %buffer_size_max77 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %buffer_size_max77, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_pcm_new.__UNIQUE_ID_ddebug259, ptr noundef %40, ptr noundef nonnull @.str.75, ptr noundef %name74, i32 noundef %42, i32 noundef %44) #7
  br label %do.end80

do.end80:                                         ; preds = %if.then72, %if.end56
  %substream83 = getelementptr %struct.snd_pcm, ptr %5, i32 0, i32 8, i32 1, i32 4
  %45 = ptrtoint ptr %substream83 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %substream83, align 8
  %tobool84.not = icmp eq ptr %46, null
  br i1 %tobool84.not, label %do.end88, label %if.end90

do.end88:                                         ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.77) #10
  br label %cleanup

if.end90:                                         ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %3, align 4
  %buffer_size_max95 = getelementptr i8, ptr %.pn.i, i32 -364
  %51 = ptrtoint ptr %buffer_size_max95 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %buffer_size_max95, align 1
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %call96 = tail call i32 @snd_pcm_set_managed_buffer(ptr noundef nonnull %46, i32 noundef 2, ptr noundef %50, i32 noundef 0, i32 noundef %53) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %do.end88, %capture.cleanup_crit_edge, %do.end43, %do.end
  %retval.0 = phi i32 [ 0, %if.end90 ], [ -22, %do.end88 ], [ -22, %do.end43 ], [ 0, %do.end ], [ 0, %capture.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_load_topology(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_tplg_component_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_create_page_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_dai_get_connected_widgets(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dpcm_end_walk_at_be(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_widget_list_setup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_dapm_dai_free_widgets(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_widget_list_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_pcm_stream_free(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !70, !72, !74, !76, !77, !78, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !123, !124, !125, !127, !128, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !172, !173, !175, !176, !178, !179, !180, !182, !183, !185, !186}
!llvm.module.flags = !{!187, !188, !189, !190, !191, !192, !193, !194}
!llvm.ident = !{!195}

!0 = !{ptr @snd_sof_pcm_init_elapsed_work.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/pcm.c", i32 71, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../sound/soc/sof/pcm.c", i32 81, i32 30}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../sound/soc/sof/pcm.c", i32 86, i32 3}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @snd_sof_pcm_period_elapsed._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @snd_sof_pcm_period_elapsed._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_snd_sof_pcm_period_elapsed, !14, !"__ksymtab_snd_sof_pcm_period_elapsed", i1 false, i1 false}
!14 = !{!"../sound/soc/sof/pcm.c", i32 101, i32 1}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/soc/sof/pcm.c", i32 702, i32 3}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @sof_pcm_dai_link_fixup._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @sof_pcm_dai_link_fixup._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/sof/pcm.c", i32 733, i32 3}
!23 = !{ptr @sof_pcm_dai_link_fixup._entry.10, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @sof_pcm_dai_link_fixup._entry_ptr.12, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/sof/pcm.c", i32 748, i32 3}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug261, !26, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/sof/pcm.c", i32 750, i32 3}
!31 = !{ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug262, !30, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/sof/pcm.c", i32 758, i32 4}
!34 = !{ptr @sof_pcm_dai_link_fixup._entry.16, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sof_pcm_dai_link_fixup._entry_ptr.18, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug263, !37, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!37 = !{!"../sound/soc/sof/pcm.c", i32 790, i32 3}
!38 = !{ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug264, !39, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!39 = !{!"../sound/soc/sof/pcm.c", i32 792, i32 3}
!40 = !{ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug265, !41, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!41 = !{!"../sound/soc/sof/pcm.c", i32 802, i32 3}
!42 = !{ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug266, !43, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!43 = !{!"../sound/soc/sof/pcm.c", i32 804, i32 3}
!44 = !{ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug267, !45, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!45 = !{!"../sound/soc/sof/pcm.c", i32 814, i32 3}
!46 = !{ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug268, !47, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!47 = !{!"../sound/soc/sof/pcm.c", i32 816, i32 3}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/sof/pcm.c", i32 826, i32 3}
!50 = !{ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug269, !49, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/sof/pcm.c", i32 828, i32 3}
!53 = !{ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug270, !52, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/sof/pcm.c", i32 838, i32 3}
!56 = !{ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug271, !55, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/sof/pcm.c", i32 840, i32 3}
!59 = !{ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug272, !58, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/sof/pcm.c", i32 850, i32 3}
!62 = !{ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug273, !61, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/sof/pcm.c", i32 852, i32 3}
!65 = !{ptr @sof_pcm_dai_link_fixup.__UNIQUE_ID_ddebug274, !64, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/sof/pcm.c", i32 857, i32 3}
!68 = !{ptr @sof_pcm_dai_link_fixup._entry.25, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @sof_pcm_dai_link_fixup._entry_ptr.27, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @__ksymtab_sof_pcm_dai_link_fixup, !71, !"__ksymtab_sof_pcm_dai_link_fixup", i1 false, i1 false}
!71 = !{!"../sound/soc/sof/pcm.c", i32 864, i32 1}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/sof/pcm.c", i32 935, i32 29}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/sof/pcm.c", i32 677, i32 5}
!76 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ssp_dai_config_pcm_params_match.__UNIQUE_ID_ddebug260, !75, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/sof/pcm.c", i32 877, i32 12}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/sof/pcm.c", i32 885, i32 3}
!82 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @sof_pcm_probe._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @sof_pcm_probe._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/sof/pcm.c", i32 513, i32 2}
!87 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @sof_pcm_open.__UNIQUE_ID_ddebug252, !86, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/sof/pcm.c", i32 535, i32 2}
!91 = !{ptr @sof_pcm_open.__UNIQUE_ID_ddebug253, !90, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/sof/pcm.c", i32 538, i32 2}
!94 = !{ptr @sof_pcm_open.__UNIQUE_ID_ddebug254, !93, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/sof/pcm.c", i32 541, i32 2}
!97 = !{ptr @sof_pcm_open.__UNIQUE_ID_ddebug255, !96, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/sof/pcm.c", i32 554, i32 3}
!100 = !{ptr @sof_pcm_open._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @sof_pcm_open._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/sof/pcm.c", i32 575, i32 2}
!104 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @sof_pcm_close.__UNIQUE_ID_ddebug256, !103, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/sof/pcm.c", i32 580, i32 3}
!108 = !{ptr @sof_pcm_close._entry, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @sof_pcm_close._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/sof/pcm.c", i32 188, i32 2}
!112 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @sof_pcm_hw_params.__UNIQUE_ID_ddebug247, !111, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/sof/pcm.c", i32 249, i32 3}
!116 = !{ptr @sof_pcm_hw_params._entry, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @sof_pcm_hw_params._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.46, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/sof/pcm.c", i32 253, i32 2}
!120 = !{ptr @sof_pcm_hw_params.__UNIQUE_ID_ddebug248, !119, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!121 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/sof/pcm.c", i32 266, i32 3}
!123 = !{ptr @sof_pcm_hw_params._entry.47, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @sof_pcm_hw_params._entry_ptr.49, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.50, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/sof/pcm.c", i32 140, i32 4}
!127 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @sof_pcm_setup_connected_widgets._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @sof_pcm_setup_connected_widgets._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/sof/pcm.c", i32 149, i32 4}
!134 = !{ptr @sof_pcm_setup_connected_widgets._entry.54, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @sof_pcm_setup_connected_widgets._entry_ptr.56, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/sof/pcm.c", i32 51, i32 3}
!138 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @sof_pcm_dsp_params._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @sof_pcm_dsp_params._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/sof/pcm.c", i32 343, i32 2}
!143 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @sof_pcm_prepare.__UNIQUE_ID_ddebug250, !142, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/sof/pcm.c", i32 350, i32 3}
!147 = !{ptr @sof_pcm_prepare._entry, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @sof_pcm_prepare._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.62, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/sof/pcm.c", i32 299, i32 2}
!151 = !{ptr @.str.63, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @sof_pcm_hw_free.__UNIQUE_ID_ddebug249, !150, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!153 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/sof/pcm.c", i32 311, i32 3}
!155 = !{ptr @sof_pcm_hw_free._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @sof_pcm_hw_free._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.65, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/sof/pcm.c", i32 383, i32 2}
!159 = !{ptr @.str.66, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @sof_pcm_trigger.__UNIQUE_ID_ddebug251, !158, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!161 = !{ptr @.str.67, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/sof/pcm.c", i32 430, i32 3}
!163 = !{ptr @sof_pcm_trigger._entry, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @sof_pcm_trigger._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.68, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/sof/pcm.c", i32 608, i32 3}
!167 = !{ptr @.str.69, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @sof_pcm_new._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @sof_pcm_new._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.70, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/sof/pcm.c", i32 613, i32 2}
!172 = !{ptr @sof_pcm_new.__UNIQUE_ID_ddebug257, !171, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!173 = !{ptr @.str.71, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/sof/pcm.c", i32 622, i32 2}
!175 = !{ptr @sof_pcm_new.__UNIQUE_ID_ddebug258, !174, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!176 = !{ptr @.str.73, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/sof/pcm.c", i32 627, i32 3}
!178 = !{ptr @sof_pcm_new._entry.72, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @sof_pcm_new._entry_ptr.74, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.75, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/sof/pcm.c", i32 644, i32 2}
!182 = !{ptr @sof_pcm_new.__UNIQUE_ID_ddebug259, !181, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!183 = !{ptr @.str.77, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/sof/pcm.c", i32 649, i32 3}
!185 = !{ptr @sof_pcm_new._entry.76, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @sof_pcm_new._entry_ptr.78, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{i32 1, !"wchar_size", i32 2}
!188 = !{i32 1, !"min_enum_size", i32 4}
!189 = !{i32 8, !"branch-target-enforcement", i32 0}
!190 = !{i32 8, !"sign-return-address", i32 0}
!191 = !{i32 8, !"sign-return-address-all", i32 0}
!192 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!193 = !{i32 7, !"uwtable", i32 1}
!194 = !{i32 7, !"frame-pointer", i32 2}
!195 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!196 = !{!"auto-init"}
!197 = !{i8 0, i8 2}
!198 = !{i64 2148323001, i64 2148323006, i64 2148323019, i64 2148323063, i64 2148323097, i64 2148323118}
!199 = !{i32 0, i32 33}
