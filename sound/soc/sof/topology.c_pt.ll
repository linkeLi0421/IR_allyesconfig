; ModuleID = '/llk/IR_all_yes/sound/soc/sof/topology.c_pt.bc'
source_filename = "../sound/soc/sof/topology.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_sof_load_topology\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_sof_load_topology\09\09\09\09"
module asm "\09.long\09__crc_snd_sof_load_topology\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_sof_load_topology:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_sof_load_topology\22\09\09\09\09\09"
module asm "__kstrtabns_snd_sof_load_topology:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_tplg_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_soc_tplg_kcontrol_ops = type { i32, ptr, ptr, ptr }
%struct.snd_soc_tplg_bytes_ext_ops = type { i32, ptr, ptr }
%struct.sof_topology_token = type { i32, i32, ptr, i32, i32 }
%struct.sof_dai_types = type { ptr, i32 }
%struct.sof_frame_types = type { ptr, i32 }
%struct.sof_process_types = type { ptr, i32, i32 }
%struct.snd_soc_tplg_widget_events = type { i16, ptr }
%struct.sof_ipc_pipe_ready = type { %struct.sof_ipc_cmd_hdr, i32 }
%struct.sof_ipc_cmd_hdr = type { i32, i32 }
%struct.sof_ipc_reply = type { %struct.sof_ipc_cmd_hdr, i32 }
%struct.snd_sof_widget = type { ptr, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.list_head, ptr, %struct.sof_ipc_comp_ext, ptr }
%struct.list_head = type { ptr, ptr }
%struct.sof_ipc_comp_ext = type { [16 x i8] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_sof_mailbox = type { i32, i32 }
%struct.sof_ipc_fw_ready = type <{ %struct.sof_ipc_cmd_hdr, i32, i32, i32, i32, %struct.sof_ipc_fw_version, i64, [4 x i32] }>
%struct.sof_ipc_fw_version = type { %struct.sof_ipc_hdr, i16, i16, i16, i16, [12 x i8], [10 x i8], [6 x i8], i32, i32, [3 x i32] }
%struct.sof_ipc_hdr = type { i32 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.snd_soc_tplg_ctl_hdr = type { i32, i32, [44 x i8], i32, %struct.snd_soc_tplg_io_ops, %struct.snd_soc_tplg_ctl_tlv }
%struct.snd_soc_tplg_io_ops = type { i32, i32, i32 }
%struct.snd_soc_tplg_ctl_tlv = type { i32, i32, %union.anon.84 }
%union.anon.84 = type { [32 x i32] }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.snd_sof_control = type { ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, %struct.list_head, %struct.snd_sof_led_control, i8 }
%struct.snd_sof_led_control = type { i32, i32, i32 }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_bytes_ext = type { i32, %struct.snd_soc_dobj, ptr, ptr }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_soc_tplg_enum_control = type { %struct.snd_soc_tplg_ctl_hdr, i32, i32, [8 x %struct.snd_soc_tplg_channel], i32, i32, i32, [16 x [44 x i8]], [176 x i32], %struct.snd_soc_tplg_private }
%struct.snd_soc_tplg_channel = type { i32, i32, i32, i32 }
%struct.snd_soc_tplg_private = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.anon.88 }
%struct.anon.88 = type { %struct.anon.89, [0 x %struct.snd_soc_tplg_vendor_array] }
%struct.anon.89 = type {}
%struct.snd_soc_tplg_vendor_array = type { i32, i32, i32, %union.anon.90 }
%union.anon.90 = type { [0 x %struct.snd_soc_tplg_vendor_uuid_elem] }
%struct.snd_soc_tplg_vendor_uuid_elem = type { i32, [16 x i8] }
%struct.sof_ipc_ctrl_data = type { %struct.sof_ipc_reply, i32, i32, i32, i32, %struct.sof_ipc_host_buffer, i32, i32, i32, [6 x i32], %union.anon.93 }
%struct.sof_ipc_host_buffer = type { %struct.sof_ipc_hdr, i32, i32, i32, [3 x i32] }
%union.anon.93 = type { [0 x %struct.sof_ipc_ctrl_value_chan] }
%struct.sof_ipc_ctrl_value_chan = type { i32, i32 }
%struct.sof_ipc_free = type { %struct.sof_ipc_cmd_hdr, i32 }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.sof_ipc_pipe_comp_connect = type { %struct.sof_ipc_cmd_hdr, i32, i32 }
%struct.snd_sof_route = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, ptr }
%struct.sof_ipc_comp_process = type { %struct.sof_ipc_comp, %struct.sof_ipc_comp_config, i32, i32, [7 x i32], [0 x i8] }
%struct.sof_ipc_comp = type { %struct.sof_ipc_cmd_hdr, i32, i32, i32, i32, i32 }
%struct.sof_ipc_comp_config = type { %struct.sof_ipc_cmd_hdr, i32, i32, i32, i32, i32, [2 x i32] }
%struct.snd_soc_tplg_dapm_widget = type { i32, i32, [44 x i8], [44 x i8], i32, i32, i32, i32, i32, i32, i16, i16, i32, %struct.snd_soc_tplg_private }
%struct.snd_sof_dai = type { ptr, ptr, %struct.sof_ipc_comp_dai, i32, i32, i8, ptr, %struct.list_head }
%struct.sof_ipc_comp_dai = type { %struct.sof_ipc_comp, %struct.sof_ipc_comp_config, i32, i32, i32, i32 }
%struct.snd_soc_tplg_pcm = type <{ i32, [44 x i8], [44 x i8], i32, i32, i32, i32, i32, [8 x %struct.snd_soc_tplg_stream], i32, [2 x %struct.snd_soc_tplg_stream_caps], i32, i32, %struct.snd_soc_tplg_private }>
%struct.snd_soc_tplg_stream = type { i32, [44 x i8], i64, i32, i32, i32, i32 }
%struct.snd_soc_tplg_stream_caps = type { i32, [44 x i8], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_sof_pcm = type { ptr, %struct.snd_soc_tplg_pcm, [2 x %struct.snd_sof_pcm_stream], %struct.list_head, [2 x %struct.snd_pcm_hw_params], [2 x i8] }
%struct.snd_sof_pcm_stream = type { i32, %struct.snd_dma_buffer, %struct.sof_ipc_stream_posn, ptr, ptr, %struct.work_struct, ptr, i8, i8 }
%struct.sof_ipc_stream_posn = type <{ %struct.sof_ipc_reply, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32 }>
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.sof_ipc_dai_config = type { %struct.sof_ipc_cmd_hdr, i32, i32, i16, i8, i8, [8 x i32], %union.anon.95 }
%union.anon.95 = type { %struct.sof_ipc_dai_dmic_params }
%struct.sof_ipc_dai_dmic_params = type { %struct.sof_ipc_hdr, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, [5 x i32], [4 x %struct.sof_ipc_dai_dmic_pdm_ctrl] }
%struct.sof_ipc_dai_dmic_pdm_ctrl = type { %struct.sof_ipc_hdr, i16, i16, i16, i16, i16, i16, i16, [3 x i16] }
%struct.snd_soc_tplg_link_config = type { i32, i32, [44 x i8], [44 x i8], [8 x %struct.snd_soc_tplg_stream], i32, [8 x %struct.snd_soc_tplg_hw_config], i32, i32, i32, i32, %struct.snd_soc_tplg_private }
%struct.snd_soc_tplg_hw_config = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, [8 x i32] }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.sof_ipc_dai_sai_params = type { %struct.sof_ipc_hdr, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16 }
%struct.sof_ipc_dai_esai_params = type { %struct.sof_ipc_hdr, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16 }
%struct.snd_soc_tplg_manifest = type { i32, i32, i32, i32, i32, i32, i32, [20 x i32], %struct.snd_soc_tplg_private }
%struct.snd_soc_tplg_mixer_control = type { %struct.snd_soc_tplg_ctl_hdr, i32, i32, i32, i32, i32, i32, [8 x %struct.snd_soc_tplg_channel], %struct.snd_soc_tplg_private }
%struct.snd_soc_tplg_bytes_control = type { %struct.snd_soc_tplg_ctl_hdr, i32, i32, i32, i32, i32, %struct.snd_soc_tplg_io_ops, %struct.snd_soc_tplg_private }
%struct.snd_soc_tplg_vendor_string_elem = type { i32, [44 x i8] }
%struct.snd_soc_tplg_vendor_value_elem = type { i32, i32 }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.sof_ipc_comp_mixer = type { %struct.sof_ipc_comp, %struct.sof_ipc_comp_config }
%struct.sof_ipc_comp_volume = type { %struct.sof_ipc_comp, %struct.sof_ipc_comp_config, i32, i32, i32, i32, i32 }
%struct.sof_ipc_buffer = type { %struct.sof_ipc_comp, i32, i32, i32, i32 }
%struct.sof_ipc_pipe_new = type { %struct.sof_ipc_cmd_hdr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sof_ipc_comp_host = type { %struct.sof_ipc_comp, %struct.sof_ipc_comp_config, i32, i32, i32 }
%struct.sof_ipc_comp_src = type { %struct.sof_ipc_comp, %struct.sof_ipc_comp_config, i32, i32, i32 }
%struct.sof_ipc_comp_asrc = type { %struct.sof_ipc_comp, %struct.sof_ipc_comp_config, i32, i32, i32, i32, [4 x i32] }
%struct.sof_ipc_comp_tone = type { %struct.sof_ipc_comp, %struct.sof_ipc_comp_config, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sof_ipc_comp_mux = type { %struct.sof_ipc_comp, %struct.sof_ipc_comp_config }
%struct.sof_widget_data = type { i32, i32, ptr, ptr }
%struct.sof_abi_hdr = type { i32, i32, i32, i32, [4 x i32], [0 x i32] }
%struct.sof_ipc_stream = type { %struct.sof_ipc_cmd_hdr, i32 }
%struct.sof_ipc_pcm_params_reply = type { %struct.sof_ipc_reply, i32, i32 }
%struct.sof_ipc_pcm_params = type { %struct.sof_ipc_cmd_hdr, i32, i32, [2 x i32], %struct.sof_ipc_stream_params }
%struct.sof_ipc_stream_params = type { %struct.sof_ipc_hdr, %struct.sof_ipc_host_buffer, i32, i32, i32, i32, i16, i16, i16, i16, i32, i16, [3 x i16], [8 x i16] }
%struct.sof_ipc_dai_ssp_params = type { %struct.sof_ipc_hdr, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32 }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }

@snd_sof_complete_pipeline.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 3, i8 99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"snd_sof\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_sof_complete_pipeline\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/soc/sof/topology.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tplg: complete pipeline %s id %d\0A\00", [62 x i8] zeroinitializer }, align 32
@snd_sof_load_topology.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 3, i8 -108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_sof_load_topology\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"loading topology:%s\0A\00", [43 x i8] zeroinitializer }, align 32
@snd_sof_load_topology._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 3670, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"error: tplg request firmware %s failed err: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_sof_load_topology._entry_ptr = internal global ptr @snd_sof_load_topology._entry, section ".printk_index", align 4
@snd_sof_load_topology._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.2, i32 3672, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"you may need to download the firmware from https://github.com/thesofproject/sof-bin/\0A\00", [42 x i8] zeroinitializer }, align 32
@snd_sof_load_topology._entry_ptr.11 = internal global ptr @snd_sof_load_topology._entry.9, section ".printk_index", align 4
@sof_tplg_ops = internal global { %struct.snd_soc_tplg_ops, [52 x i8] } { %struct.snd_soc_tplg_ops { ptr @sof_control_load, ptr @sof_control_unload, ptr @sof_route_load, ptr @sof_route_unload, ptr null, ptr @sof_widget_ready, ptr @sof_widget_unload, ptr @sof_dai_load, ptr @sof_dai_unload, ptr @sof_link_load, ptr null, ptr null, ptr null, ptr @sof_complete, ptr @sof_manifest, ptr @sof_io_ops, i32 4, ptr @sof_bytes_ext_ops, i32 2 }, [52 x i8] zeroinitializer }, align 32
@snd_sof_load_topology._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.2, i32 3679, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error: tplg component load failed %d\0A\00", [58 x i8] zeroinitializer }, align 32
@snd_sof_load_topology._entry_ptr.14 = internal global ptr @snd_sof_load_topology._entry.12, section ".printk_index", align 4
@__kstrtab_snd_sof_load_topology = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_sof_load_topology = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_sof_load_topology = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_sof_load_topology to i32), ptr @__kstrtab_snd_sof_load_topology, ptr @__kstrtabns_snd_sof_load_topology }, section "___ksymtab+snd_sof_load_topology", align 4
@sof_io_ops = internal constant { [4 x %struct.snd_soc_tplg_kcontrol_ops], [32 x i8] } { [4 x %struct.snd_soc_tplg_kcontrol_ops] [%struct.snd_soc_tplg_kcontrol_ops { i32 256, ptr @snd_sof_volume_get, ptr @snd_sof_volume_put, ptr null }, %struct.snd_soc_tplg_kcontrol_ops { i32 258, ptr @snd_sof_bytes_get, ptr @snd_sof_bytes_put, ptr null }, %struct.snd_soc_tplg_kcontrol_ops { i32 257, ptr @snd_sof_enum_get, ptr @snd_sof_enum_put, ptr null }, %struct.snd_soc_tplg_kcontrol_ops { i32 259, ptr @snd_sof_switch_get, ptr @snd_sof_switch_put, ptr null }], [32 x i8] zeroinitializer }, align 32
@sof_bytes_ext_ops = internal constant { [2 x %struct.snd_soc_tplg_bytes_ext_ops], [40 x i8] } { [2 x %struct.snd_soc_tplg_bytes_ext_ops] [%struct.snd_soc_tplg_bytes_ext_ops { i32 258, ptr @snd_sof_bytes_ext_get, ptr @snd_sof_bytes_ext_put }, %struct.snd_soc_tplg_bytes_ext_ops { i32 260, ptr @snd_sof_bytes_ext_volatile_get, ptr null }], [40 x i8] zeroinitializer }, align 32
@sof_control_load.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 1, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sof_control_load\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"tplg: load control type %d name : %s\0A\00", [58 x i8] zeroinitializer }, align 32
@sof_control_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 1306, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"control type not supported %d:%d:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sof_control_load._entry_ptr = internal global ptr @sof_control_load._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sof_control_load_volume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 1101, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error: invalid TLV data\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sof_control_load_volume\00", [40 x i8] zeroinitializer }, align 32
@sof_control_load_volume._entry_ptr = internal global ptr @sof_control_load_volume._entry, section ".printk_index", align 4
@sof_control_load_volume._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 1109, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error: setting up volume table\0A\00", [32 x i8] zeroinitializer }, align 32
@sof_control_load_volume._entry_ptr.23 = internal global ptr @sof_control_load_volume._entry.21, section ".printk_index", align 4
@led_tokens = internal constant { [2 x %struct.sof_topology_token], [56 x i8] } { [2 x %struct.sof_topology_token] [%struct.sof_topology_token { i32 1300, i32 4, ptr @get_token_u32, i32 0, i32 0 }, %struct.sof_topology_token { i32 1301, i32 4, ptr @get_token_u32, i32 4, i32 0 }], [56 x i8] zeroinitializer }, align 32
@sof_control_load_volume._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 1127, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error: parse led tokens failed %d\0A\00", [61 x i8] zeroinitializer }, align 32
@sof_control_load_volume._entry_ptr.26 = internal global ptr @sof_control_load_volume._entry.24, section ".printk_index", align 4
@sof_control_load_volume.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.27, i8 1, i8 27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"tplg: load kcontrol index %d chans %d\0A\00", [57 x i8] zeroinitializer }, align 32
@sof_parse_token_sets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 969, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error: invalid array size 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sof_parse_token_sets\00", [43 x i8] zeroinitializer }, align 32
@sof_parse_token_sets._entry_ptr = internal global ptr @sof_parse_token_sets._entry, section ".printk_index", align 4
@sof_parse_token_sets._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 977, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@sof_parse_token_sets._entry_ptr.31 = internal global ptr @sof_parse_token_sets._entry.30, section ".printk_index", align 4
@sof_parse_token_sets._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.29, ptr @.str.2, i32 1000, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error: unknown token type %d\0A\00", [34 x i8] zeroinitializer }, align 32
@sof_parse_token_sets._entry_ptr.34 = internal global ptr @sof_parse_token_sets._entry.32, section ".printk_index", align 4
@sof_control_load_bytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 1199, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"err: bytes data size %zu exceeds max %zu.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sof_control_load_bytes\00", [41 x i8] zeroinitializer }, align 32
@sof_control_load_bytes._entry_ptr = internal global ptr @sof_control_load_bytes._entry, section ".printk_index", align 4
@sof_control_load_bytes.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.27, i8 1, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sof_control_load_bytes._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 1226, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error: Wrong ABI magic 0x%08x.\0A\00", [32 x i8] zeroinitializer }, align 32
@sof_control_load_bytes._entry_ptr.39 = internal global ptr @sof_control_load_bytes._entry.37, section ".printk_index", align 4
@sof_control_load_bytes._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.2, i32 1234, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error: Incompatible ABI version 0x%08x.\0A\00", [55 x i8] zeroinitializer }, align 32
@sof_control_load_bytes._entry_ptr.42 = internal global ptr @sof_control_load_bytes._entry.40, section ".printk_index", align 4
@sof_control_load_bytes._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.36, ptr @.str.2, i32 1241, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error: Conflict in bytes vs. priv size.\0A\00", [55 x i8] zeroinitializer }, align 32
@sof_control_load_bytes._entry_ptr.45 = internal global ptr @sof_control_load_bytes._entry.43, section ".printk_index", align 4
@sof_control_load_enum.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 1, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sof_control_load_enum\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"tplg: load kcontrol index %d chans %d comp_id %d\0A\00", [46 x i8] zeroinitializer }, align 32
@sof_control_unload.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 1, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sof_control_unload\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tplg: unload control name : %s\0A\00", [32 x i8] zeroinitializer }, align 32
@sof_route_load.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 3, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sof_route_load\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sink %s control %s source %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@sof_route_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.50, ptr @.str.2, i32 3394, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error: source %s not found\0A\00", [36 x i8] zeroinitializer }, align 32
@sof_route_load._entry_ptr = internal global ptr @sof_route_load._entry, section ".printk_index", align 4
@sof_route_load._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.2, i32 3415, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error: sink %s not found\0A\00", [38 x i8] zeroinitializer }, align 32
@sof_route_load._entry_ptr.56 = internal global ptr @sof_route_load._entry.54, section ".printk_index", align 4
@sof_route_load.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.57, i8 3, i8 91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"warning: neither Linked source component %s nor sink component %s is of buffer type, ignoring link\0A\00", [60 x i8] zeroinitializer }, align 32
@sof_widget_ready.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 2, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sof_widget_ready\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"tplg: ready widget id %d pipe %d type %d name : %s stream %s\0A\00", [34 x i8] zeroinitializer }, align 32
@core_tokens = internal constant { [1 x %struct.sof_topology_token], [44 x i8] } { [1 x %struct.sof_topology_token] [%struct.sof_topology_token { i32 404, i32 4, ptr @get_token_u32, i32 20, i32 0 }], [44 x i8] zeroinitializer }, align 32
@sof_widget_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 2293, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error: parsing core tokens failed %d\0A\00", [58 x i8] zeroinitializer }, align 32
@sof_widget_ready._entry_ptr = internal global ptr @sof_widget_ready._entry, section ".printk_index", align 4
@comp_ext_tokens = internal constant { [1 x %struct.sof_topology_token], [44 x i8] } { [1 x %struct.sof_topology_token] [%struct.sof_topology_token { i32 405, i32 0, ptr @get_token_uuid, i32 0, i32 0 }], [44 x i8] zeroinitializer }, align 32
@sof_widget_ready._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.58, ptr @.str.2, i32 2308, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"error: parsing comp_ext_tokens failed %d\0A\00", [54 x i8] zeroinitializer }, align 32
@sof_widget_ready._entry_ptr.63 = internal global ptr @sof_widget_ready._entry.61, section ".printk_index", align 4
@sof_widget_ready.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.64, i8 2, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"widget type %d name %s not handled\0A\00", [60 x i8] zeroinitializer }, align 32
@sof_widget_ready._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.58, ptr @.str.2, i32 2383, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"error: failed to add widget id %d type %d name : %s stream %s\0A\00", [33 x i8] zeroinitializer }, align 32
@sof_widget_ready._entry_ptr.67 = internal global ptr @sof_widget_ready._entry.65, section ".printk_index", align 4
@sof_widget_ready._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.58, ptr @.str.2, i32 2393, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error: widget event binding failed\0A\00", [60 x i8] zeroinitializer }, align 32
@sof_widget_ready._entry_ptr.70 = internal global ptr @sof_widget_ready._entry.68, section ".printk_index", align 4
@dai_tokens = internal constant { [3 x %struct.sof_topology_token], [36 x i8] } { [3 x %struct.sof_topology_token] [%struct.sof_topology_token { i32 154, i32 1, ptr @get_token_dai_type, i32 72, i32 0 }, %struct.sof_topology_token { i32 155, i32 4, ptr @get_token_u32, i32 68, i32 0 }, %struct.sof_topology_token { i32 156, i32 4, ptr @get_token_u32, i32 64, i32 0 }], [36 x i8] zeroinitializer }, align 32
@sof_widget_load_dai._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 1497, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error: parse dai tokens failed %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sof_widget_load_dai\00", [44 x i8] zeroinitializer }, align 32
@sof_widget_load_dai._entry_ptr = internal global ptr @sof_widget_load_dai._entry, section ".printk_index", align 4
@comp_tokens = internal constant { [3 x %struct.sof_topology_token], [36 x i8] } { [3 x %struct.sof_topology_token] [%struct.sof_topology_token { i32 400, i32 4, ptr @get_token_u32, i32 8, i32 0 }, %struct.sof_topology_token { i32 401, i32 4, ptr @get_token_u32, i32 12, i32 0 }, %struct.sof_topology_token { i32 402, i32 1, ptr @get_token_comp_format, i32 20, i32 0 }], [36 x i8] zeroinitializer }, align 32
@sof_widget_load_dai._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.2, i32 1506, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error: parse dai.cfg tokens failed %d\0A\00", [57 x i8] zeroinitializer }, align 32
@sof_widget_load_dai._entry_ptr.75 = internal global ptr @sof_widget_load_dai._entry.73, section ".printk_index", align 4
@sof_widget_load_dai.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.76, i8 1, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dai %s: type %d index %d\0A\00", [38 x i8] zeroinitializer }, align 32
@sof_dais = internal constant { [10 x %struct.sof_dai_types], [48 x i8] } { [10 x %struct.sof_dai_types] [%struct.sof_dai_types { ptr @.str.77, i32 1 }, %struct.sof_dai_types { ptr @.str.78, i32 3 }, %struct.sof_dai_types { ptr @.str.79, i32 2 }, %struct.sof_dai_types { ptr @.str.80, i32 4 }, %struct.sof_dai_types { ptr @.str.81, i32 5 }, %struct.sof_dai_types { ptr @.str.82, i32 6 }, %struct.sof_dai_types { ptr @.str.83, i32 7 }, %struct.sof_dai_types { ptr @.str.84, i32 8 }, %struct.sof_dai_types { ptr @.str.85, i32 9 }, %struct.sof_dai_types { ptr @.str.86, i32 10 }], [48 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SSP\00", [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HDA\00", [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMIC\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ALH\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SAI\00", [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ESAI\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ACP\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ACPSP\00", [26 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ACPDMIC\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AFE\00", [28 x i8] zeroinitializer }, align 32
@sof_frames = internal constant { [4 x %struct.sof_frame_types], [32 x i8] } { [4 x %struct.sof_frame_types] [%struct.sof_frame_types { ptr @.str.87, i32 0 }, %struct.sof_frame_types { ptr @.str.88, i32 1 }, %struct.sof_frame_types { ptr @.str.89, i32 2 }, %struct.sof_frame_types { ptr @.str.90, i32 3 }], [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"s16le\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"s24le\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"s32le\00", [26 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"float\00", [26 x i8] zeroinitializer }, align 32
@sof_dbg_comp_config.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.2, ptr @.str.92, i8 1, i8 4, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sof_dbg_comp_config\00", [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" config: periods snk %d src %d fmt %d\0A\00", [57 x i8] zeroinitializer }, align 32
@sof_connect_dai_widget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 1385, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error: can't find BE for DAI %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sof_connect_dai_widget\00", [41 x i8] zeroinitializer }, align 32
@sof_connect_dai_widget._entry_ptr = internal global ptr @sof_connect_dai_widget._entry, section ".printk_index", align 4
@sof_connect_dai_widget.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.95, i8 1, i8 91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"tplg: connected widget %s -> DAI link %s\0A\00", [54 x i8] zeroinitializer }, align 32
@sof_connect_dai_widget._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 1407, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@sof_connect_dai_widget._entry_ptr.97 = internal global ptr @sof_connect_dai_widget._entry.96, section ".printk_index", align 4
@sof_connect_dai_widget.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.95, i8 1, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sof_connect_dai_widget._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.94, ptr @.str.2, i32 1423, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error: can't connect DAI %s stream %s\0A\00", [57 x i8] zeroinitializer }, align 32
@sof_connect_dai_widget._entry_ptr.100 = internal global ptr @sof_connect_dai_widget._entry.98, section ".printk_index", align 4
@sof_widget_load_mixer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.2, i32 1745, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error: parse mixer.cfg tokens failed %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sof_widget_load_mixer\00", [42 x i8] zeroinitializer }, align 32
@sof_widget_load_mixer._entry_ptr = internal global ptr @sof_widget_load_mixer._entry, section ".printk_index", align 4
@sof_widget_load_pga._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 1819, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"error: invalid kcontrol count %d for volume\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sof_widget_load_pga\00", [44 x i8] zeroinitializer }, align 32
@sof_widget_load_pga._entry_ptr = internal global ptr @sof_widget_load_pga._entry, section ".printk_index", align 4
@volume_tokens = internal constant { [2 x %struct.sof_topology_token], [56 x i8] } { [2 x %struct.sof_topology_token] [%struct.sof_topology_token { i32 250, i32 4, ptr @get_token_u32, i32 76, i32 0 }, %struct.sof_topology_token { i32 251, i32 4, ptr @get_token_u32, i32 80, i32 0 }], [56 x i8] zeroinitializer }, align 32
@sof_widget_load_pga._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.104, ptr @.str.2, i32 1833, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error: parse volume tokens failed %d\0A\00", [58 x i8] zeroinitializer }, align 32
@sof_widget_load_pga._entry_ptr.107 = internal global ptr @sof_widget_load_pga._entry.105, section ".printk_index", align 4
@sof_widget_load_pga._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.104, ptr @.str.2, i32 1841, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"error: parse volume.cfg tokens failed %d\0A\00", [54 x i8] zeroinitializer }, align 32
@sof_widget_load_pga._entry_ptr.110 = internal global ptr @sof_widget_load_pga._entry.108, section ".printk_index", align 4
@buffer_tokens = internal constant { [2 x %struct.sof_topology_token], [56 x i8] } { [2 x %struct.sof_topology_token] [%struct.sof_topology_token { i32 100, i32 4, ptr @get_token_u32, i32 28, i32 0 }, %struct.sof_topology_token { i32 101, i32 4, ptr @get_token_u32, i32 32, i32 0 }], [56 x i8] zeroinitializer }, align 32
@sof_widget_load_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 1559, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error: parse buffer tokens failed %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sof_widget_load_buffer\00", [41 x i8] zeroinitializer }, align 32
@sof_widget_load_buffer._entry_ptr = internal global ptr @sof_widget_load_buffer._entry, section ".printk_index", align 4
@sof_widget_load_buffer.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.112, ptr @.str.2, ptr @.str.113, i8 1, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"buffer %s: size %d caps 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@sof_widget_load_pipeline._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.2, i32 1670, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"error: widget %s refers to non existent widget %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sof_widget_load_pipeline\00", [39 x i8] zeroinitializer }, align 32
@sof_widget_load_pipeline._entry_ptr = internal global ptr @sof_widget_load_pipeline._entry, section ".printk_index", align 4
@sof_widget_load_pipeline.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.115, ptr @.str.2, ptr @.str.116, i8 1, i8 -93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"tplg: pipeline id %d comp %d scheduling comp id %d\0A\00", [44 x i8] zeroinitializer }, align 32
@sched_tokens = internal constant { [6 x %struct.sof_topology_token], [40 x i8] } { [6 x %struct.sof_topology_token] [%struct.sof_topology_token { i32 200, i32 4, ptr @get_token_u32, i32 24, i32 0 }, %struct.sof_topology_token { i32 201, i32 4, ptr @get_token_u32, i32 28, i32 0 }, %struct.sof_topology_token { i32 202, i32 4, ptr @get_token_u32, i32 32, i32 0 }, %struct.sof_topology_token { i32 203, i32 4, ptr @get_token_u32, i32 20, i32 0 }, %struct.sof_topology_token { i32 204, i32 4, ptr @get_token_u32, i32 36, i32 0 }, %struct.sof_topology_token { i32 205, i32 4, ptr @get_token_u32, i32 44, i32 0 }], [40 x i8] zeroinitializer }, align 32
@sof_widget_load_pipeline._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.115, ptr @.str.2, i32 1685, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error: parse pipeline tokens failed %d\0A\00", [56 x i8] zeroinitializer }, align 32
@sof_widget_load_pipeline._entry_ptr.119 = internal global ptr @sof_widget_load_pipeline._entry.117, section ".printk_index", align 4
@pipeline_tokens = internal constant { [1 x %struct.sof_topology_token], [44 x i8] } { [1 x %struct.sof_topology_token] [%struct.sof_topology_token { i32 206, i32 2, ptr @get_token_u16, i32 28, i32 0 }], [44 x i8] zeroinitializer }, align 32
@sof_widget_load_pipeline._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.115, ptr @.str.2, i32 1694, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"error: parse dynamic pipeline token failed %d\0A\00", [49 x i8] zeroinitializer }, align 32
@sof_widget_load_pipeline._entry_ptr.122 = internal global ptr @sof_widget_load_pipeline._entry.120, section ".printk_index", align 4
@sof_widget_load_pipeline.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.115, ptr @.str.2, ptr @.str.123, i8 1, i8 -85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"pipeline %s: period %d pri %d mips %d core %d frames %d dynamic %d\0A\00", [60 x i8] zeroinitializer }, align 32
@pcm_tokens = internal constant { [1 x %struct.sof_topology_token], [44 x i8] } { [1 x %struct.sof_topology_token] [%struct.sof_topology_token { i32 353, i32 4, ptr @get_token_u32, i32 72, i32 0 }], [44 x i8] zeroinitializer }, align 32
@sof_widget_load_pcm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.2, i32 1620, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error: parse host tokens failed %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sof_widget_load_pcm\00", [44 x i8] zeroinitializer }, align 32
@sof_widget_load_pcm._entry_ptr = internal global ptr @sof_widget_load_pcm._entry, section ".printk_index", align 4
@sof_widget_load_pcm._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.125, ptr @.str.2, i32 1629, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error: parse host.cfg tokens failed %d\0A\00", [56 x i8] zeroinitializer }, align 32
@sof_widget_load_pcm._entry_ptr.128 = internal global ptr @sof_widget_load_pcm._entry.126, section ".printk_index", align 4
@sof_widget_load_pcm.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.125, ptr @.str.2, ptr @.str.129, i8 1, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"loaded host %s\0A\00", [16 x i8] zeroinitializer }, align 32
@src_tokens = internal constant { [2 x %struct.sof_topology_token], [56 x i8] } { [2 x %struct.sof_topology_token] [%struct.sof_topology_token { i32 300, i32 4, ptr @get_token_u32, i32 64, i32 0 }, %struct.sof_topology_token { i32 301, i32 4, ptr @get_token_u32, i32 68, i32 0 }], [56 x i8] zeroinitializer }, align 32
@sof_widget_load_src._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.2, i32 1894, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error: parse src tokens failed %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sof_widget_load_src\00", [44 x i8] zeroinitializer }, align 32
@sof_widget_load_src._entry_ptr = internal global ptr @sof_widget_load_src._entry, section ".printk_index", align 4
@sof_widget_load_src._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.2, i32 1903, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error: parse src.cfg tokens failed %d\0A\00", [57 x i8] zeroinitializer }, align 32
@sof_widget_load_src._entry_ptr.134 = internal global ptr @sof_widget_load_src._entry.132, section ".printk_index", align 4
@sof_widget_load_src.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.131, ptr @.str.2, ptr @.str.135, i8 1, i8 -35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"src %s: source rate %d sink rate %d\0A\00", [59 x i8] zeroinitializer }, align 32
@asrc_tokens = internal constant { [4 x %struct.sof_topology_token], [48 x i8] } { [4 x %struct.sof_topology_token] [%struct.sof_topology_token { i32 320, i32 4, ptr @get_token_u32, i32 64, i32 0 }, %struct.sof_topology_token { i32 321, i32 4, ptr @get_token_u32, i32 68, i32 0 }, %struct.sof_topology_token { i32 322, i32 4, ptr @get_token_u32, i32 72, i32 0 }, %struct.sof_topology_token { i32 323, i32 4, ptr @get_token_u32, i32 76, i32 0 }], [48 x i8] zeroinitializer }, align 32
@sof_widget_load_asrc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.2, i32 1946, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error: parse asrc tokens failed %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sof_widget_load_asrc\00", [43 x i8] zeroinitializer }, align 32
@sof_widget_load_asrc._entry_ptr = internal global ptr @sof_widget_load_asrc._entry, section ".printk_index", align 4
@sof_widget_load_asrc._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.137, ptr @.str.2, i32 1955, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error: parse asrc.cfg tokens failed %d\0A\00", [56 x i8] zeroinitializer }, align 32
@sof_widget_load_asrc._entry_ptr.140 = internal global ptr @sof_widget_load_asrc._entry.138, section ".printk_index", align 4
@sof_widget_load_asrc.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.137, ptr @.str.2, ptr @.str.141, i8 1, i8 -22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"asrc %s: source rate %d sink rate %d asynch %d operation %d\0A\00", [35 x i8] zeroinitializer }, align 32
@sof_widget_load_siggen._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.2, i32 2000, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error: parse tone tokens failed %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sof_widget_load_siggen\00", [41 x i8] zeroinitializer }, align 32
@sof_widget_load_siggen._entry_ptr = internal global ptr @sof_widget_load_siggen._entry, section ".printk_index", align 4
@sof_widget_load_siggen._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.143, ptr @.str.2, i32 2009, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error: parse tone.cfg tokens failed %d\0A\00", [56 x i8] zeroinitializer }, align 32
@sof_widget_load_siggen._entry_ptr.146 = internal global ptr @sof_widget_load_siggen._entry.144, section ".printk_index", align 4
@sof_widget_load_siggen.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.143, ptr @.str.2, ptr @.str.147, i8 1, i8 -9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.147 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tone %s: frequency %d amplitude %d\0A\00", [60 x i8] zeroinitializer }, align 32
@sof_widget_load_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.2, i32 2199, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error: process tokens not found\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sof_widget_load_process\00", [40 x i8] zeroinitializer }, align 32
@sof_widget_load_process._entry_ptr = internal global ptr @sof_widget_load_process._entry, section ".printk_index", align 4
@process_tokens = internal constant { [1 x %struct.sof_topology_token], [44 x i8] } { [1 x %struct.sof_topology_token] [%struct.sof_topology_token { i32 900, i32 1, ptr @get_token_process_type, i32 68, i32 0 }], [44 x i8] zeroinitializer }, align 32
@sof_widget_load_process._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.149, ptr @.str.2, i32 2212, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error: parse process tokens failed %d\0A\00", [57 x i8] zeroinitializer }, align 32
@sof_widget_load_process._entry_ptr.152 = internal global ptr @sof_widget_load_process._entry.150, section ".printk_index", align 4
@sof_widget_load_process._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.149, ptr @.str.2, i32 2219, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error: process loading failed\0A\00", [33 x i8] zeroinitializer }, align 32
@sof_widget_load_process._entry_ptr.155 = internal global ptr @sof_widget_load_process._entry.153, section ".printk_index", align 4
@sof_process = internal constant { [9 x %struct.sof_process_types], [52 x i8] } { [9 x %struct.sof_process_types] [%struct.sof_process_types { ptr @.str.156, i32 1, i32 14 }, %struct.sof_process_types { ptr @.str.157, i32 2, i32 13 }, %struct.sof_process_types { ptr @.str.158, i32 3, i32 15 }, %struct.sof_process_types { ptr @.str.159, i32 4, i32 16 }, %struct.sof_process_types { ptr @.str.160, i32 5, i32 17 }, %struct.sof_process_types { ptr @.str.161, i32 6, i32 7 }, %struct.sof_process_types { ptr @.str.162, i32 7, i32 18 }, %struct.sof_process_types { ptr @.str.163, i32 8, i32 20 }, %struct.sof_process_types { ptr @.str.164, i32 9, i32 21 }], [52 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EQFIR\00", [26 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EQIIR\00", [26 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"KEYWORD_DETECT\00", [17 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"KPB\00", [28 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CHAN_SELECTOR\00", [18 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MUX\00", [28 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DEMUX\00", [26 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DCBLOCK\00", [24 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SMART_AMP\00", [22 x i8] zeroinitializer }, align 32
@sof_process_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.166, ptr @.str.2, i32 2154, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"error: parse process.cfg tokens failed %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sof_process_load\00", [47 x i8] zeroinitializer }, align 32
@sof_process_load._entry_ptr = internal global ptr @sof_process_load._entry, section ".printk_index", align 4
@sof_get_control_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.2, i32 2057, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"error: unknown kcontrol type %u in widget %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sof_get_control_data\00", [43 x i8] zeroinitializer }, align 32
@sof_get_control_data._entry_ptr = internal global ptr @sof_get_control_data._entry, section ".printk_index", align 4
@sof_get_control_data._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.168, ptr @.str.2, i32 2063, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error: no scontrol for widget %s\0A\00", [62 x i8] zeroinitializer }, align 32
@sof_get_control_data._entry_ptr.171 = internal global ptr @sof_get_control_data._entry.169, section ".printk_index", align 4
@sof_widget_load_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.173, ptr @.str.2, i32 1783, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error: parse mux.cfg tokens failed %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sof_widget_load_mux\00", [44 x i8] zeroinitializer }, align 32
@sof_widget_load_mux._entry_ptr = internal global ptr @sof_widget_load_mux._entry, section ".printk_index", align 4
@sof_kwd_events = internal constant { [1 x %struct.snd_soc_tplg_widget_events], [24 x i8] } { [1 x %struct.snd_soc_tplg_widget_events] [%struct.snd_soc_tplg_widget_events { i16 1, ptr @sof_keyword_dapm_event }], [24 x i8] zeroinitializer }, align 32
@sof_widget_bind_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.175, ptr @.str.2, i32 2254, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"error: invalid event type %d for widget %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sof_widget_bind_event\00", [42 x i8] zeroinitializer }, align 32
@sof_widget_bind_event._entry_ptr = internal global ptr @sof_widget_bind_event._entry, section ".printk_index", align 4
@sof_keyword_dapm_event.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.176, ptr @.str.2, ptr @.str.177, i8 0, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.176 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sof_keyword_dapm_event\00", [41 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"received event %d for widget %s\0A\00", [63 x i8] zeroinitializer }, align 32
@sof_keyword_dapm_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.176, ptr @.str.2, i32 162, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error: cannot find PCM for %s\0A\00", [33 x i8] zeroinitializer }, align 32
@sof_keyword_dapm_event._entry_ptr = internal global ptr @sof_keyword_dapm_event._entry, section ".printk_index", align 4
@sof_keyword_dapm_event.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.176, ptr @.str.2, ptr @.str.179, i8 0, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.179 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"PRE_PMU event ignored, KWD pipeline is already RUNNING\0A\00", [40 x i8] zeroinitializer }, align 32
@sof_keyword_dapm_event._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.176, ptr @.str.2, i32 179, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"error: failed to set pcm params for widget %s\0A\00", [49 x i8] zeroinitializer }, align 32
@sof_keyword_dapm_event._entry_ptr.182 = internal global ptr @sof_keyword_dapm_event._entry.180, section ".printk_index", align 4
@sof_keyword_dapm_event._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.176, ptr @.str.2, i32 188, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error: failed to trigger widget %s\0A\00", [60 x i8] zeroinitializer }, align 32
@sof_keyword_dapm_event._entry_ptr.185 = internal global ptr @sof_keyword_dapm_event._entry.183, section ".printk_index", align 4
@sof_keyword_dapm_event.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.176, ptr @.str.2, ptr @.str.186, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.186 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"POST_PMD even ignored, KWD pipeline will remain RUNNING\0A\00", [39 x i8] zeroinitializer }, align 32
@sof_keyword_dapm_event._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.176, ptr @.str.2, i32 201, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@sof_keyword_dapm_event._entry_ptr.188 = internal global ptr @sof_keyword_dapm_event._entry.187, section ".printk_index", align 4
@sof_keyword_dapm_event._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.176, ptr @.str.2, i32 208, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@sof_keyword_dapm_event._entry_ptr.190 = internal global ptr @sof_keyword_dapm_event._entry.189, section ".printk_index", align 4
@ipc_pcm_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.191, ptr @.str.2, i32 74, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ipc_pcm_params\00", [17 x i8] zeroinitializer }, align 32
@ipc_pcm_params._entry_ptr = internal global ptr @ipc_pcm_params._entry, section ".printk_index", align 4
@ipc_pcm_params._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.191, ptr @.str.2, i32 112, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error: pcm params failed for %s\0A\00", [63 x i8] zeroinitializer }, align 32
@ipc_pcm_params._entry_ptr.194 = internal global ptr @ipc_pcm_params._entry.192, section ".printk_index", align 4
@ipc_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.196, ptr @.str.2, i32 136, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error: failed to trigger %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ipc_trigger\00", [20 x i8] zeroinitializer }, align 32
@ipc_trigger._entry_ptr = internal global ptr @ipc_trigger._entry, section ".printk_index", align 4
@sof_widget_unload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.198, ptr @.str.2, i32 2474, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unsupported kcontrol_type\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sof_widget_unload\00", [46 x i8] zeroinitializer }, align 32
@sof_widget_unload._entry_ptr = internal global ptr @sof_widget_unload._entry, section ".printk_index", align 4
@sof_dai_load.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.199, ptr @.str.2, ptr @.str.200, i8 2, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.199 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sof_dai_load\00", [19 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tplg: load pcm %s\0A\00", [45 x i8] zeroinitializer }, align 32
@stream_tokens = internal constant { [2 x %struct.sof_topology_token], [56 x i8] } { [2 x %struct.sof_topology_token] [%struct.sof_topology_token { i32 1200, i32 2, ptr @get_token_u16, i32 1084, i32 0 }, %struct.sof_topology_token { i32 1201, i32 2, ptr @get_token_u16, i32 1256, i32 0 }], [56 x i8] zeroinitializer }, align 32
@sof_dai_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.199, ptr @.str.2, i32 2538, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error: parse stream tokens failed %d\0A\00", [58 x i8] zeroinitializer }, align 32
@sof_dai_load._entry_ptr = internal global ptr @sof_dai_load._entry, section ".printk_index", align 4
@sof_dai_load._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.199, ptr @.str.2, i32 2558, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error: can't alloc page table for %s %d\0A\00", [55 x i8] zeroinitializer }, align 32
@sof_dai_load._entry_ptr.204 = internal global ptr @sof_dai_load._entry.202, section ".printk_index", align 4
@sof_dai_load._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.199, ptr @.str.2, i32 2567, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error: can't bind pcm to host\0A\00", [33 x i8] zeroinitializer }, align 32
@sof_dai_load._entry_ptr.207 = internal global ptr @sof_dai_load._entry.205, section ".printk_index", align 4
@sof_dai_load._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.199, ptr @.str.2, i32 2588, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@sof_dai_load._entry_ptr.209 = internal global ptr @sof_dai_load._entry.208, section ".printk_index", align 4
@sof_dai_load._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.199, ptr @.str.2, i32 2596, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@sof_dai_load._entry_ptr.211 = internal global ptr @sof_dai_load._entry.210, section ".printk_index", align 4
@spcm_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.213, ptr @.str.2, i32 1582, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"can't find host comp to bind pcm\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spcm_bind\00", [22 x i8] zeroinitializer }, align 32
@spcm_bind._entry_ptr = internal global ptr @spcm_bind._entry, section ".printk_index", align 4
@sof_link_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.2, i32 3227, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error: no platforms\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sof_link_load\00", [18 x i8] zeroinitializer }, align 32
@sof_link_load._entry_ptr = internal global ptr @sof_link_load._entry, section ".printk_index", align 4
@sof_link_load._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.215, ptr @.str.2, i32 3257, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"error: expected tokens for DAI, none found\0A\00", [52 x i8] zeroinitializer }, align 32
@sof_link_load._entry_ptr.218 = internal global ptr @sof_link_load._entry.216, section ".printk_index", align 4
@dai_link_tokens = internal constant { [2 x %struct.sof_topology_token], [56 x i8] } { [2 x %struct.sof_topology_token] [%struct.sof_topology_token { i32 154, i32 1, ptr @get_token_dai_type, i32 8, i32 0 }, %struct.sof_topology_token { i32 155, i32 4, ptr @get_token_u32, i32 12, i32 0 }], [56 x i8] zeroinitializer }, align 32
@sof_link_load._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.215, ptr @.str.2, i32 3268, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error: parse link tokens failed %d\0A\00", [60 x i8] zeroinitializer }, align 32
@sof_link_load._entry_ptr.221 = internal global ptr @sof_link_load._entry.219, section ".printk_index", align 4
@sof_link_load._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.215, ptr @.str.2, i32 3281, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error: unexpected DAI config count %d!\0A\00", [56 x i8] zeroinitializer }, align 32
@sof_link_load._entry_ptr.224 = internal global ptr @sof_link_load._entry.222, section ".printk_index", align 4
@sof_link_load.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.215, ptr @.str.2, ptr @.str.225, i8 3, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.225 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"tplg: %d hw_configs found, default id: %d!\0A\00", [52 x i8] zeroinitializer }, align 32
@sof_link_load._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.215, ptr @.str.2, i32 3297, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"error: default hw_config id: %d not found!\0A\00", [52 x i8] zeroinitializer }, align 32
@sof_link_load._entry_ptr.228 = internal global ptr @sof_link_load._entry.226, section ".printk_index", align 4
@sof_link_load._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.215, ptr @.str.2, i32 3349, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error: invalid DAI type %d\0A\00", [36 x i8] zeroinitializer }, align 32
@sof_link_load._entry_ptr.231 = internal global ptr @sof_link_load._entry.229, section ".printk_index", align 4
@ssp_tokens = internal constant { [7 x %struct.sof_topology_token], [52 x i8] } { [7 x %struct.sof_topology_token] [%struct.sof_topology_token { i32 500, i32 4, ptr @get_token_u32, i32 48, i32 0 }, %struct.sof_topology_token { i32 501, i32 5, ptr @get_token_u16, i32 6, i32 0 }, %struct.sof_topology_token { i32 502, i32 4, ptr @get_token_u32, i32 32, i32 0 }, %struct.sof_topology_token { i32 503, i32 5, ptr @get_token_u16, i32 44, i32 0 }, %struct.sof_topology_token { i32 504, i32 4, ptr @get_token_u32, i32 52, i32 0 }, %struct.sof_topology_token { i32 505, i32 2, ptr @get_token_u16, i32 46, i32 0 }, %struct.sof_topology_token { i32 506, i32 4, ptr @get_token_u32, i32 56, i32 0 }], [52 x i8] zeroinitializer }, align 32
@sof_link_ssp_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.233, ptr @.str.2, i32 2745, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error: parse ssp tokens failed %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sof_link_ssp_load\00", [46 x i8] zeroinitializer }, align 32
@sof_link_ssp_load._entry_ptr = internal global ptr @sof_link_ssp_load._entry, section ".printk_index", align 4
@sof_link_ssp_load.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.233, ptr @.str.2, ptr @.str.234, i8 2, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.234 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"tplg: config SSP%d fmt %#x mclk %d bclk %d fclk %d width (%d)%d slots %d mclk id %d quirks %d clks_control %#x\0A\00", [48 x i8] zeroinitializer }, align 32
@sof_link_ssp_load._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.233, ptr @.str.2, i32 2777, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error: invalid fsync rate for SSP%d\0A\00", [59 x i8] zeroinitializer }, align 32
@sof_link_ssp_load._entry_ptr.237 = internal global ptr @sof_link_ssp_load._entry.235, section ".printk_index", align 4
@sof_link_ssp_load._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.233, ptr @.str.2, i32 2783, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error: invalid channel count for SSP%d\0A\00", [56 x i8] zeroinitializer }, align 32
@sof_link_ssp_load._entry_ptr.240 = internal global ptr @sof_link_ssp_load._entry.238, section ".printk_index", align 4
@sof_link_ssp_load._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.233, ptr @.str.2, i32 2792, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"error: failed to save DAI config for SSP%d\0A\00", [52 x i8] zeroinitializer }, align 32
@sof_link_ssp_load._entry_ptr.243 = internal global ptr @sof_link_ssp_load._entry.241, section ".printk_index", align 4
@sof_set_dai_config_multi.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.244, ptr @.str.2, ptr @.str.245, i8 2, i8 -96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.244 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sof_set_dai_config_multi\00", [39 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"set DAI config for %s index %d\0A\00", [32 x i8] zeroinitializer }, align 32
@sof_set_dai_config_multi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.244, ptr @.str.2, i32 2709, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"warning: failed to find dai for dai link %s\00", [52 x i8] zeroinitializer }, align 32
@sof_set_dai_config_multi._entry_ptr = internal global ptr @sof_set_dai_config_multi._entry, section ".printk_index", align 4
@dmic_tokens = internal constant { [9 x %struct.sof_topology_token], [44 x i8] } { [9 x %struct.sof_topology_token] [%struct.sof_topology_token { i32 600, i32 4, ptr @get_token_u32, i32 4, i32 0 }, %struct.sof_topology_token { i32 601, i32 4, ptr @get_token_u32, i32 8, i32 0 }, %struct.sof_topology_token { i32 602, i32 4, ptr @get_token_u32, i32 12, i32 0 }, %struct.sof_topology_token { i32 608, i32 4, ptr @get_token_u32, i32 16, i32 0 }, %struct.sof_topology_token { i32 603, i32 5, ptr @get_token_u16, i32 28, i32 0 }, %struct.sof_topology_token { i32 604, i32 5, ptr @get_token_u16, i32 30, i32 0 }, %struct.sof_topology_token { i32 605, i32 4, ptr @get_token_u32, i32 32, i32 0 }, %struct.sof_topology_token { i32 609, i32 5, ptr @get_token_u16, i32 24, i32 0 }, %struct.sof_topology_token { i32 610, i32 4, ptr @get_token_u32, i32 44, i32 0 }], [44 x i8] zeroinitializer }, align 32
@sof_link_dmic_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.248, ptr @.str.2, i32 3072, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error: parse dmic tokens failed %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sof_link_dmic_load\00", [45 x i8] zeroinitializer }, align 32
@sof_link_dmic_load._entry_ptr = internal global ptr @sof_link_dmic_load._entry, section ".printk_index", align 4
@dmic_pdm_tokens = internal constant { [7 x %struct.sof_topology_token], [52 x i8] } { [7 x %struct.sof_topology_token] [%struct.sof_topology_token { i32 700, i32 5, ptr @get_token_u16, i32 4, i32 0 }, %struct.sof_topology_token { i32 701, i32 5, ptr @get_token_u16, i32 6, i32 0 }, %struct.sof_topology_token { i32 702, i32 5, ptr @get_token_u16, i32 8, i32 0 }, %struct.sof_topology_token { i32 703, i32 5, ptr @get_token_u16, i32 10, i32 0 }, %struct.sof_topology_token { i32 704, i32 5, ptr @get_token_u16, i32 12, i32 0 }, %struct.sof_topology_token { i32 705, i32 5, ptr @get_token_u16, i32 14, i32 0 }, %struct.sof_topology_token { i32 706, i32 5, ptr @get_token_u16, i32 16, i32 0 }], [52 x i8] zeroinitializer }, align 32
@sof_link_dmic_load._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.248, ptr @.str.2, i32 3085, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error: parse dmic pdm tokens failed %d\0A\00", [56 x i8] zeroinitializer }, align 32
@sof_link_dmic_load._entry_ptr.251 = internal global ptr @sof_link_dmic_load._entry.249, section ".printk_index", align 4
@sof_link_dmic_load.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.248, ptr @.str.2, ptr @.str.252, i8 3, i8 5, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.252 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"tplg: config DMIC%d driver version %d\0A\00", [57 x i8] zeroinitializer }, align 32
@sof_link_dmic_load.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.248, ptr @.str.2, ptr @.str.253, i8 3, i8 6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.253 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"pdmclk_min %d pdm_clkmax %d duty_min %hd\0A\00", [54 x i8] zeroinitializer }, align 32
@sof_link_dmic_load.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.248, ptr @.str.2, ptr @.str.254, i8 3, i8 7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.254 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"duty_max %hd fifo_fs %d num_pdms active %d\0A\00", [52 x i8] zeroinitializer }, align 32
@sof_link_dmic_load.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.248, ptr @.str.2, ptr @.str.255, i8 3, i8 7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.255 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fifo word length %hd\0A\00", [42 x i8] zeroinitializer }, align 32
@sof_link_dmic_load.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.248, ptr @.str.2, ptr @.str.256, i8 3, i8 8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.256 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pdm %hd mic a %hd mic b %hd\0A\00", [35 x i8] zeroinitializer }, align 32
@sof_link_dmic_load.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.248, ptr @.str.2, ptr @.str.257, i8 3, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.257 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"pdm %hd polarity a %hd polarity b %hd\0A\00", [57 x i8] zeroinitializer }, align 32
@sof_link_dmic_load.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.248, ptr @.str.2, ptr @.str.258, i8 3, i8 10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.258 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pdm %hd clk_edge %hd skew %hd\0A\00", [33 x i8] zeroinitializer }, align 32
@sof_link_dmic_load._entry.259 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.248, ptr @.str.2, i32 3129, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"error: failed to save DAI config for DMIC%d\0A\00", [51 x i8] zeroinitializer }, align 32
@sof_link_dmic_load._entry_ptr.261 = internal global ptr @sof_link_dmic_load._entry.259, section ".printk_index", align 4
@hda_tokens = internal constant { [2 x %struct.sof_topology_token], [56 x i8] } { [2 x %struct.sof_topology_token] [%struct.sof_topology_token { i32 1500, i32 4, ptr @get_token_u32, i32 8, i32 0 }, %struct.sof_topology_token { i32 1501, i32 4, ptr @get_token_u32, i32 12, i32 0 }], [56 x i8] zeroinitializer }, align 32
@sof_link_hda_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.263, ptr @.str.2, i32 3156, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error: parse hda tokens failed %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sof_link_hda_load\00", [46 x i8] zeroinitializer }, align 32
@sof_link_hda_load._entry_ptr = internal global ptr @sof_link_hda_load._entry, section ".printk_index", align 4
@sof_link_hda_load.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.263, ptr @.str.2, ptr @.str.264, i8 3, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.264 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HDA config rate %d channels %d\0A\00", [32 x i8] zeroinitializer }, align 32
@sof_link_hda_load._entry.265 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.266, ptr @.str.263, ptr @.str.2, i32 3166, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error: failed to find dai %s in %s\00", [61 x i8] zeroinitializer }, align 32
@sof_link_hda_load._entry_ptr.267 = internal global ptr @sof_link_hda_load._entry.265, section ".printk_index", align 4
@sof_link_hda_load._entry.268 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.269, ptr @.str.263, ptr @.str.2, i32 3175, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error: failed to process hda dai link %s\00", [55 x i8] zeroinitializer }, align 32
@sof_link_hda_load._entry_ptr.270 = internal global ptr @sof_link_hda_load._entry.268, section ".printk_index", align 4
@alh_tokens = internal constant { [2 x %struct.sof_topology_token], [56 x i8] } { [2 x %struct.sof_topology_token] [%struct.sof_topology_token { i32 1400, i32 4, ptr @get_token_u32, i32 8, i32 0 }, %struct.sof_topology_token { i32 1401, i32 4, ptr @get_token_u32, i32 12, i32 0 }], [56 x i8] zeroinitializer }, align 32
@sof_link_alh_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.271, ptr @.str.272, ptr @.str.2, i32 3196, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error: parse alh tokens failed %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sof_link_alh_load\00", [46 x i8] zeroinitializer }, align 32
@sof_link_alh_load._entry_ptr = internal global ptr @sof_link_alh_load._entry, section ".printk_index", align 4
@sof_link_alh_load._entry.273 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.274, ptr @.str.272, ptr @.str.2, i32 3207, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"error: failed to save DAI config for ALH %d\0A\00", [51 x i8] zeroinitializer }, align 32
@sof_link_alh_load._entry_ptr.275 = internal global ptr @sof_link_alh_load._entry.273, section ".printk_index", align 4
@sai_tokens = internal constant { [1 x %struct.sof_topology_token], [44 x i8] } { [1 x %struct.sof_topology_token] [%struct.sof_topology_token { i32 1000, i32 5, ptr @get_token_u16, i32 6, i32 0 }], [44 x i8] zeroinitializer }, align 32
@sof_link_sai_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @.str.277, ptr @.str.2, i32 2820, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error: parse sai tokens failed %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sof_link_sai_load\00", [46 x i8] zeroinitializer }, align 32
@sof_link_sai_load._entry_ptr = internal global ptr @sof_link_sai_load._entry, section ".printk_index", align 4
@sof_link_sai_load._entry.278 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.279, ptr @.str.277, ptr @.str.2, i32 2838, ptr @.str.280, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"tplg: config SAI%d fmt 0x%x mclk %d width %d slots %d mclk id %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sof_link_sai_load._entry_ptr.281 = internal global ptr @sof_link_sai_load._entry.278, section ".printk_index", align 4
@sof_link_sai_load._entry.282 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.283, ptr @.str.277, ptr @.str.2, i32 2842, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error: invalid channel count for SAI%d\0A\00", [56 x i8] zeroinitializer }, align 32
@sof_link_sai_load._entry_ptr.284 = internal global ptr @sof_link_sai_load._entry.282, section ".printk_index", align 4
@sof_link_sai_load._entry.285 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.286, ptr @.str.277, ptr @.str.2, i32 2850, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"error: failed to save DAI config for SAI%d\0A\00", [52 x i8] zeroinitializer }, align 32
@sof_link_sai_load._entry_ptr.287 = internal global ptr @sof_link_sai_load._entry.285, section ".printk_index", align 4
@esai_tokens = internal constant { [1 x %struct.sof_topology_token], [44 x i8] } { [1 x %struct.sof_topology_token] [%struct.sof_topology_token { i32 1100, i32 5, ptr @get_token_u16, i32 6, i32 0 }], [44 x i8] zeroinitializer }, align 32
@sof_link_esai_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.288, ptr @.str.289, ptr @.str.2, i32 2878, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error: parse esai tokens failed %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sof_link_esai_load\00", [45 x i8] zeroinitializer }, align 32
@sof_link_esai_load._entry_ptr = internal global ptr @sof_link_esai_load._entry, section ".printk_index", align 4
@sof_link_esai_load._entry.290 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.291, ptr @.str.289, ptr @.str.2, i32 2895, ptr @.str.280, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"tplg: config ESAI%d fmt 0x%x mclk %d width %d slots %d mclk id %d\0A\00", [61 x i8] zeroinitializer }, align 32
@sof_link_esai_load._entry_ptr.292 = internal global ptr @sof_link_esai_load._entry.290, section ".printk_index", align 4
@sof_link_esai_load._entry.293 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.294, ptr @.str.289, ptr @.str.2, i32 2899, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error: invalid channel count for ESAI%d\0A\00", [55 x i8] zeroinitializer }, align 32
@sof_link_esai_load._entry_ptr.295 = internal global ptr @sof_link_esai_load._entry.293, section ".printk_index", align 4
@sof_link_esai_load._entry.296 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.297, ptr @.str.289, ptr @.str.2, i32 2907, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"error: failed to save DAI config for ESAI%d\0A\00", [51 x i8] zeroinitializer }, align 32
@sof_link_esai_load._entry_ptr.298 = internal global ptr @sof_link_esai_load._entry.296, section ".printk_index", align 4
@sof_link_acp_bt_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.299, ptr @.str.300, ptr @.str.2, i32 2966, ptr @.str.280, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ACP_BT config ACP%d channel %d rate %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sof_link_acp_bt_load\00", [43 x i8] zeroinitializer }, align 32
@sof_link_acp_bt_load._entry_ptr = internal global ptr @sof_link_acp_bt_load._entry, section ".printk_index", align 4
@sof_link_acp_bt_load._entry.301 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.302, ptr @.str.300, ptr @.str.2, i32 2972, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ACP_BT failed to save DAI config for ACP%d\0A\00", [52 x i8] zeroinitializer }, align 32
@sof_link_acp_bt_load._entry_ptr.303 = internal global ptr @sof_link_acp_bt_load._entry.301, section ".printk_index", align 4
@sof_link_acp_sp_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.304, ptr @.str.305, ptr @.str.2, i32 2998, ptr @.str.280, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ACP_SP config ACP%d channel %d rate %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sof_link_acp_sp_load\00", [43 x i8] zeroinitializer }, align 32
@sof_link_acp_sp_load._entry_ptr = internal global ptr @sof_link_acp_sp_load._entry, section ".printk_index", align 4
@sof_link_acp_sp_load._entry.306 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.307, ptr @.str.305, ptr @.str.2, i32 3004, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ACP_SP failed to save DAI config for ACP%d\0A\00", [52 x i8] zeroinitializer }, align 32
@sof_link_acp_sp_load._entry_ptr.308 = internal global ptr @sof_link_acp_sp_load._entry.306, section ".printk_index", align 4
@sof_link_acp_dmic_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.309, ptr @.str.310, ptr @.str.2, i32 2934, ptr @.str.280, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ACP_DMIC config ACP%d channel %d rate %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sof_link_acp_dmic_load\00", [41 x i8] zeroinitializer }, align 32
@sof_link_acp_dmic_load._entry_ptr = internal global ptr @sof_link_acp_dmic_load._entry, section ".printk_index", align 4
@sof_link_acp_dmic_load._entry.311 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.312, ptr @.str.310, ptr @.str.2, i32 2940, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ACP_DMIC failed to save DAI config for ACP%d\0A\00", [50 x i8] zeroinitializer }, align 32
@sof_link_acp_dmic_load._entry_ptr.313 = internal global ptr @sof_link_acp_dmic_load._entry.311, section ".printk_index", align 4
@afe_tokens = internal constant { [3 x %struct.sof_topology_token], [36 x i8] } { [3 x %struct.sof_topology_token] [%struct.sof_topology_token { i32 1600, i32 4, ptr @get_token_u32, i32 8, i32 0 }, %struct.sof_topology_token { i32 1601, i32 4, ptr @get_token_u32, i32 4, i32 0 }, %struct.sof_topology_token { i32 1602, i32 1, ptr @get_token_comp_format, i32 12, i32 0 }], [36 x i8] zeroinitializer }, align 32
@sof_link_afe_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.314, ptr @.str.315, ptr @.str.2, i32 3028, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"parse afe tokens failed %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sof_link_afe_load\00", [46 x i8] zeroinitializer }, align 32
@sof_link_afe_load._entry_ptr = internal global ptr @sof_link_afe_load._entry, section ".printk_index", align 4
@sof_link_afe_load.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.315, ptr @.str.2, ptr @.str.316, i8 2, i8 -10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.316 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"AFE config rate %d channels %d format:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@sof_link_afe_load._entry.317 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.318, ptr @.str.315, ptr @.str.2, i32 3037, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: failed to find dai %s\00", [38 x i8] zeroinitializer }, align 32
@sof_link_afe_load._entry_ptr.319 = internal global ptr @sof_link_afe_load._entry.317, section ".printk_index", align 4
@sof_link_afe_load._entry.320 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.321, ptr @.str.315, ptr @.str.2, i32 3045, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to process afe dai link %s\00", [62 x i8] zeroinitializer }, align 32
@sof_link_afe_load._entry_ptr.322 = internal global ptr @sof_link_afe_load._entry.320, section ".printk_index", align 4
@sof_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.323, ptr @.str.324, ptr @.str.2, i32 3548, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error: topology verification failed %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sof_complete\00", [19 x i8] zeroinitializer }, align 32
@sof_complete._entry_ptr = internal global ptr @sof_complete._entry, section ".printk_index", align 4
@sof_complete._entry.325 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.326, ptr @.str.324, ptr @.str.2, i32 3554, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"error: topology tear down pipelines failed %d\0A\00", [49 x i8] zeroinitializer }, align 32
@sof_complete._entry_ptr.327 = internal global ptr @sof_complete._entry.325, section ".printk_index", align 4
@sof_set_pipe_widget._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.328, ptr @.str.329, ptr @.str.2, i32 3505, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"error: volatile control found for dynamic widget %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sof_set_pipe_widget\00", [44 x i8] zeroinitializer }, align 32
@sof_set_pipe_widget._entry_ptr = internal global ptr @sof_set_pipe_widget._entry, section ".printk_index", align 4
@sof_manifest.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.330, ptr @.str.2, ptr @.str.331, i8 3, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.330 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sof_manifest\00", [19 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No topology ABI info\0A\00", [42 x i8] zeroinitializer }, align 32
@sof_manifest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.332, ptr @.str.330, ptr @.str.2, i32 3579, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error: invalid topology ABI size\0A\00", [62 x i8] zeroinitializer }, align 32
@sof_manifest._entry_ptr = internal global ptr @sof_manifest._entry, section ".printk_index", align 4
@sof_manifest._entry.333 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.334, ptr @.str.330, ptr @.str.2, i32 3587, ptr @.str.280, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Topology: ABI %d:%d:%d Kernel ABI %d:%d:%d\0A\00", [52 x i8] zeroinitializer }, align 32
@sof_manifest._entry_ptr.335 = internal global ptr @sof_manifest._entry.333, section ".printk_index", align 4
@sof_manifest._entry.336 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.337, ptr @.str.330, ptr @.str.2, i32 3594, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"error: incompatible topology ABI version\0A\00", [54 x i8] zeroinitializer }, align 32
@sof_manifest._entry_ptr.338 = internal global ptr @sof_manifest._entry.336, section ".printk_index", align 4
@sof_manifest._entry.339 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.340, ptr @.str.330, ptr @.str.2, i32 3602, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"error: topology ABI is more recent than kernel\0A\00", [48 x i8] zeroinitializer }, align 32
@sof_manifest._entry_ptr.341 = internal global ptr @sof_manifest._entry.339, section ".printk_index", align 4
@switch.table.sof_process_load = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 65536, i32 65536, i32 65536, i32 196608], [16 x i8] zeroinitializer }, align 32
@switch.table.sof_process_load.342 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 1, i32 1, i32 5], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.343 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 7]
@__sancov_gen_cov_switch_values.344 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 7]
@__sancov_gen_cov_switch_values.345 = internal global [16 x i64] [i64 14, i64 32, i64 2, i64 3, i64 4, i64 6, i64 23, i64 24, i64 25, i64 27, i64 28, i64 31, i64 32, i64 33, i64 34, i64 35]
@__sancov_gen_cov_switch_values.346 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.347 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.348 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 50331648]
@__sancov_gen_cov_switch_values.349 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.350 = internal global [4 x i64] [i64 2, i64 32, i64 27, i64 28]
@__sancov_gen_cov_switch_values.351 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.352 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.353 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 7, i64 11]
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3467, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3665, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3669, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3671, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant [13 x i8] c"sof_tplg_ops\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3624, i32 32 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3678, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant [11 x i8] c"sof_io_ops\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3611, i32 47 }
@___asan_gen_.402 = private unnamed_addr constant [18 x i8] c"sof_bytes_ext_ops\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3619, i32 48 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1268, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1305, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1101, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1109, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant [11 x i8] c"led_tokens\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 803, i32 40 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1126, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1131, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 968, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 976, i32 4 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 999, i32 4 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1198, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1225, i32 4 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1232, i32 4 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1240, i32 4 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1170, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1330, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3386, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3393, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3414, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3438, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2283, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant [12 x i8] c"core_tokens\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 742, i32 40 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2292, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant [16 x i8] c"comp_ext_tokens\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 749, i32 40 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2307, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2373, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2379, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2393, i32 4 }
@___asan_gen_.567 = private unnamed_addr constant [11 x i8] c"dai_tokens\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 546, i32 40 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1496, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant [12 x i8] c"comp_tokens\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 644, i32 40 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1505, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1510, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant [9 x i8] c"sof_dais\00", align 1
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 372, i32 35 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 373, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 374, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 375, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 376, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 377, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 378, i32 3 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 379, i32 3 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 380, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 381, i32 3 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 382, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant [11 x i8] c"sof_frames\00", align 1
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 406, i32 37 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 407, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 408, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 409, i32 3 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 410, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1039, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1384, i32 5 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1390, i32 4 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1406, i32 5 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1422, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1744, i32 3 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1818, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant [14 x i8] c"volume_tokens\00", align 1
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 586, i32 40 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1832, i32 3 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1840, i32 3 }
@___asan_gen_.699 = private unnamed_addr constant [14 x i8] c"buffer_tokens\00", align 1
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 538, i32 40 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1558, i32 3 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1564, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1669, i32 3 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1677, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant [13 x i8] c"sched_tokens\00", align 1
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 564, i32 40 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1684, i32 3 }
@___asan_gen_.735 = private unnamed_addr constant [16 x i8] c"pipeline_tokens\00", align 1
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 579, i32 40 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1693, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1705, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant [11 x i8] c"pcm_tokens\00", align 1
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 628, i32 40 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1619, i32 3 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1628, i32 3 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1633, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant [11 x i8] c"src_tokens\00", align 1
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 595, i32 40 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1893, i32 3 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1902, i32 3 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1907, i32 2 }
@___asan_gen_.789 = private unnamed_addr constant [12 x i8] c"asrc_tokens\00", align 1
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 603, i32 40 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1945, i32 3 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1954, i32 3 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1959, i32 2 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1999, i32 3 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2008, i32 3 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2013, i32 2 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2199, i32 3 }
@___asan_gen_.837 = private unnamed_addr constant [15 x i8] c"process_tokens\00", align 1
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 621, i32 40 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2211, i32 3 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2219, i32 3 }
@___asan_gen_.852 = private unnamed_addr constant [12 x i8] c"sof_process\00", align 1
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 432, i32 39 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 433, i32 3 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 434, i32 3 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 435, i32 3 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 436, i32 3 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 437, i32 3 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 438, i32 3 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 439, i32 3 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 440, i32 3 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 441, i32 3 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2153, i32 3 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2055, i32 4 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2062, i32 4 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1782, i32 3 }
@___asan_gen_.915 = private unnamed_addr constant [15 x i8] c"sof_kwd_events\00", align 1
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 218, i32 48 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2252, i32 2 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 155, i32 2 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 161, i32 3 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 170, i32 4 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 177, i32 4 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 186, i32 4 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 192, i32 4 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 199, i32 4 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 206, i32 4 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 73, i32 3 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 111, i32 3 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 135, i32 3 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2474, i32 4 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2528, i32 2 }
@___asan_gen_.999 = private unnamed_addr constant [14 x i8] c"stream_tokens\00", align 1
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 634, i32 40 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2537, i32 3 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2557, i32 3 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2566, i32 3 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2587, i32 3 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2595, i32 3 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 1582, i32 3 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3227, i32 3 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3257, i32 3 }
@___asan_gen_.1050 = private unnamed_addr constant [16 x i8] c"dai_link_tokens\00", align 1
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 556, i32 40 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3267, i32 3 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3280, i32 4 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3287, i32 3 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3296, i32 4 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3349, i32 3 }
@___asan_gen_.1080 = private unnamed_addr constant [11 x i8] c"ssp_tokens\00", align 1
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 657, i32 40 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2744, i32 3 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2767, i32 3 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2776, i32 4 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2782, i32 4 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2791, i32 3 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2689, i32 4 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2708, i32 3 }
@___asan_gen_.1125 = private unnamed_addr constant [12 x i8] c"dmic_tokens\00", align 1
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 694, i32 40 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3071, i32 3 }
@___asan_gen_.1137 = private unnamed_addr constant [16 x i8] c"dmic_pdm_tokens\00", align 1
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 761, i32 40 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3084, i32 3 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3093, i32 2 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3095, i32 2 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3098, i32 2 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3101, i32 2 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3104, i32 3 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3108, i32 3 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3112, i32 3 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3128, i32 3 }
@___asan_gen_.1173 = private unnamed_addr constant [11 x i8] c"hda_tokens\00", align 1
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 793, i32 40 }
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3155, i32 3 }
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3160, i32 2 }
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3165, i32 3 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3174, i32 3 }
@___asan_gen_.1200 = private unnamed_addr constant [11 x i8] c"alh_tokens\00", align 1
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 684, i32 40 }
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3195, i32 3 }
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3206, i32 3 }
@___asan_gen_.1218 = private unnamed_addr constant [11 x i8] c"sai_tokens\00", align 1
@___asan_gen_.1220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 735, i32 40 }
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2819, i32 3 }
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2834, i32 2 }
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2841, i32 3 }
@___asan_gen_.1250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2849, i32 3 }
@___asan_gen_.1251 = private unnamed_addr constant [12 x i8] c"esai_tokens\00", align 1
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 728, i32 40 }
@___asan_gen_.1262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2877, i32 3 }
@___asan_gen_.1268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2891, i32 2 }
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2898, i32 3 }
@___asan_gen_.1280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2906, i32 3 }
@___asan_gen_.1289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2964, i32 2 }
@___asan_gen_.1295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2971, i32 3 }
@___asan_gen_.1304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2996, i32 2 }
@___asan_gen_.1310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3003, i32 3 }
@___asan_gen_.1319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2932, i32 2 }
@___asan_gen_.1325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 2939, i32 3 }
@___asan_gen_.1326 = private unnamed_addr constant [11 x i8] c"afe_tokens\00", align 1
@___asan_gen_.1328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 811, i32 40 }
@___asan_gen_.1337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3027, i32 3 }
@___asan_gen_.1340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3032, i32 2 }
@___asan_gen_.1346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3037, i32 3 }
@___asan_gen_.1352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3045, i32 3 }
@___asan_gen_.1361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3548, i32 4 }
@___asan_gen_.1367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3554, i32 4 }
@___asan_gen_.1376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3503, i32 5 }
@___asan_gen_.1382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3574, i32 3 }
@___asan_gen_.1388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3579, i32 3 }
@___asan_gen_.1394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3583, i32 2 }
@___asan_gen_.1400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3594, i32 3 }
@___asan_gen_.1401 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1404 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1405 = private constant [28 x i8] c"../sound/soc/sof/topology.c\00", align 1
@___asan_gen_.1406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1405, i32 3602, i32 4 }
@___asan_gen_.1407 = private unnamed_addr constant [30 x i8] c"switch.table.sof_process_load\00", align 1
@___asan_gen_.1408 = private unnamed_addr constant [34 x i8] c"switch.table.sof_process_load.342\00", align 1
@llvm.compiler.used = appending global [461 x ptr] [ptr @__ksymtab_snd_sof_load_topology, ptr @ipc_pcm_params._entry, ptr @ipc_pcm_params._entry.192, ptr @ipc_pcm_params._entry_ptr, ptr @ipc_pcm_params._entry_ptr.194, ptr @ipc_trigger._entry, ptr @ipc_trigger._entry_ptr, ptr @snd_sof_load_topology._entry, ptr @snd_sof_load_topology._entry.12, ptr @snd_sof_load_topology._entry.9, ptr @snd_sof_load_topology._entry_ptr, ptr @snd_sof_load_topology._entry_ptr.11, ptr @snd_sof_load_topology._entry_ptr.14, ptr @sof_complete._entry, ptr @sof_complete._entry.325, ptr @sof_complete._entry_ptr, ptr @sof_complete._entry_ptr.327, ptr @sof_connect_dai_widget._entry, ptr @sof_connect_dai_widget._entry.96, ptr @sof_connect_dai_widget._entry.98, ptr @sof_connect_dai_widget._entry_ptr, ptr @sof_connect_dai_widget._entry_ptr.100, ptr @sof_connect_dai_widget._entry_ptr.97, ptr @sof_control_load._entry, ptr @sof_control_load._entry_ptr, ptr @sof_control_load_bytes._entry, ptr @sof_control_load_bytes._entry.37, ptr @sof_control_load_bytes._entry.40, ptr @sof_control_load_bytes._entry.43, ptr @sof_control_load_bytes._entry_ptr, ptr @sof_control_load_bytes._entry_ptr.39, ptr @sof_control_load_bytes._entry_ptr.42, ptr @sof_control_load_bytes._entry_ptr.45, ptr @sof_control_load_volume._entry, ptr @sof_control_load_volume._entry.21, ptr @sof_control_load_volume._entry.24, ptr @sof_control_load_volume._entry_ptr, ptr @sof_control_load_volume._entry_ptr.23, ptr @sof_control_load_volume._entry_ptr.26, ptr @sof_dai_load._entry, ptr @sof_dai_load._entry.202, ptr @sof_dai_load._entry.205, ptr @sof_dai_load._entry.208, ptr @sof_dai_load._entry.210, ptr @sof_dai_load._entry_ptr, ptr @sof_dai_load._entry_ptr.204, ptr @sof_dai_load._entry_ptr.207, ptr @sof_dai_load._entry_ptr.209, ptr @sof_dai_load._entry_ptr.211, ptr @sof_get_control_data._entry, ptr @sof_get_control_data._entry.169, ptr @sof_get_control_data._entry_ptr, ptr @sof_get_control_data._entry_ptr.171, ptr @sof_keyword_dapm_event._entry, ptr @sof_keyword_dapm_event._entry.180, ptr @sof_keyword_dapm_event._entry.183, ptr @sof_keyword_dapm_event._entry.187, ptr @sof_keyword_dapm_event._entry.189, ptr @sof_keyword_dapm_event._entry_ptr, ptr @sof_keyword_dapm_event._entry_ptr.182, ptr @sof_keyword_dapm_event._entry_ptr.185, ptr @sof_keyword_dapm_event._entry_ptr.188, ptr @sof_keyword_dapm_event._entry_ptr.190, ptr @sof_link_acp_bt_load._entry, ptr @sof_link_acp_bt_load._entry.301, ptr @sof_link_acp_bt_load._entry_ptr, ptr @sof_link_acp_bt_load._entry_ptr.303, ptr @sof_link_acp_dmic_load._entry, ptr @sof_link_acp_dmic_load._entry.311, ptr @sof_link_acp_dmic_load._entry_ptr, ptr @sof_link_acp_dmic_load._entry_ptr.313, ptr @sof_link_acp_sp_load._entry, ptr @sof_link_acp_sp_load._entry.306, ptr @sof_link_acp_sp_load._entry_ptr, ptr @sof_link_acp_sp_load._entry_ptr.308, ptr @sof_link_afe_load._entry, ptr @sof_link_afe_load._entry.317, ptr @sof_link_afe_load._entry.320, ptr @sof_link_afe_load._entry_ptr, ptr @sof_link_afe_load._entry_ptr.319, ptr @sof_link_afe_load._entry_ptr.322, ptr @sof_link_alh_load._entry, ptr @sof_link_alh_load._entry.273, ptr @sof_link_alh_load._entry_ptr, ptr @sof_link_alh_load._entry_ptr.275, ptr @sof_link_dmic_load._entry, ptr @sof_link_dmic_load._entry.249, ptr @sof_link_dmic_load._entry.259, ptr @sof_link_dmic_load._entry_ptr, ptr @sof_link_dmic_load._entry_ptr.251, ptr @sof_link_dmic_load._entry_ptr.261, ptr @sof_link_esai_load._entry, ptr @sof_link_esai_load._entry.290, ptr @sof_link_esai_load._entry.293, ptr @sof_link_esai_load._entry.296, ptr @sof_link_esai_load._entry_ptr, ptr @sof_link_esai_load._entry_ptr.292, ptr @sof_link_esai_load._entry_ptr.295, ptr @sof_link_esai_load._entry_ptr.298, ptr @sof_link_hda_load._entry, ptr @sof_link_hda_load._entry.265, ptr @sof_link_hda_load._entry.268, ptr @sof_link_hda_load._entry_ptr, ptr @sof_link_hda_load._entry_ptr.267, ptr @sof_link_hda_load._entry_ptr.270, ptr @sof_link_load._entry, ptr @sof_link_load._entry.216, ptr @sof_link_load._entry.219, ptr @sof_link_load._entry.222, ptr @sof_link_load._entry.226, ptr @sof_link_load._entry.229, ptr @sof_link_load._entry_ptr, ptr @sof_link_load._entry_ptr.218, ptr @sof_link_load._entry_ptr.221, ptr @sof_link_load._entry_ptr.224, ptr @sof_link_load._entry_ptr.228, ptr @sof_link_load._entry_ptr.231, ptr @sof_link_sai_load._entry, ptr @sof_link_sai_load._entry.278, ptr @sof_link_sai_load._entry.282, ptr @sof_link_sai_load._entry.285, ptr @sof_link_sai_load._entry_ptr, ptr @sof_link_sai_load._entry_ptr.281, ptr @sof_link_sai_load._entry_ptr.284, ptr @sof_link_sai_load._entry_ptr.287, ptr @sof_link_ssp_load._entry, ptr @sof_link_ssp_load._entry.235, ptr @sof_link_ssp_load._entry.238, ptr @sof_link_ssp_load._entry.241, ptr @sof_link_ssp_load._entry_ptr, ptr @sof_link_ssp_load._entry_ptr.237, ptr @sof_link_ssp_load._entry_ptr.240, ptr @sof_link_ssp_load._entry_ptr.243, ptr @sof_manifest._entry, ptr @sof_manifest._entry.333, ptr @sof_manifest._entry.336, ptr @sof_manifest._entry.339, ptr @sof_manifest._entry_ptr, ptr @sof_manifest._entry_ptr.335, ptr @sof_manifest._entry_ptr.338, ptr @sof_manifest._entry_ptr.341, ptr @sof_parse_token_sets._entry, ptr @sof_parse_token_sets._entry.30, ptr @sof_parse_token_sets._entry.32, ptr @sof_parse_token_sets._entry_ptr, ptr @sof_parse_token_sets._entry_ptr.31, ptr @sof_parse_token_sets._entry_ptr.34, ptr @sof_process_load._entry, ptr @sof_process_load._entry_ptr, ptr @sof_route_load._entry, ptr @sof_route_load._entry.54, ptr @sof_route_load._entry_ptr, ptr @sof_route_load._entry_ptr.56, ptr @sof_set_dai_config_multi._entry, ptr @sof_set_dai_config_multi._entry_ptr, ptr @sof_set_pipe_widget._entry, ptr @sof_set_pipe_widget._entry_ptr, ptr @sof_widget_bind_event._entry, ptr @sof_widget_bind_event._entry_ptr, ptr @sof_widget_load_asrc._entry, ptr @sof_widget_load_asrc._entry.138, ptr @sof_widget_load_asrc._entry_ptr, ptr @sof_widget_load_asrc._entry_ptr.140, ptr @sof_widget_load_buffer._entry, ptr @sof_widget_load_buffer._entry_ptr, ptr @sof_widget_load_dai._entry, ptr @sof_widget_load_dai._entry.73, ptr @sof_widget_load_dai._entry_ptr, ptr @sof_widget_load_dai._entry_ptr.75, ptr @sof_widget_load_mixer._entry, ptr @sof_widget_load_mixer._entry_ptr, ptr @sof_widget_load_mux._entry, ptr @sof_widget_load_mux._entry_ptr, ptr @sof_widget_load_pcm._entry, ptr @sof_widget_load_pcm._entry.126, ptr @sof_widget_load_pcm._entry_ptr, ptr @sof_widget_load_pcm._entry_ptr.128, ptr @sof_widget_load_pga._entry, ptr @sof_widget_load_pga._entry.105, ptr @sof_widget_load_pga._entry.108, ptr @sof_widget_load_pga._entry_ptr, ptr @sof_widget_load_pga._entry_ptr.107, ptr @sof_widget_load_pga._entry_ptr.110, ptr @sof_widget_load_pipeline._entry, ptr @sof_widget_load_pipeline._entry.117, ptr @sof_widget_load_pipeline._entry.120, ptr @sof_widget_load_pipeline._entry_ptr, ptr @sof_widget_load_pipeline._entry_ptr.119, ptr @sof_widget_load_pipeline._entry_ptr.122, ptr @sof_widget_load_process._entry, ptr @sof_widget_load_process._entry.150, ptr @sof_widget_load_process._entry.153, ptr @sof_widget_load_process._entry_ptr, ptr @sof_widget_load_process._entry_ptr.152, ptr @sof_widget_load_process._entry_ptr.155, ptr @sof_widget_load_siggen._entry, ptr @sof_widget_load_siggen._entry.144, ptr @sof_widget_load_siggen._entry_ptr, ptr @sof_widget_load_siggen._entry_ptr.146, ptr @sof_widget_load_src._entry, ptr @sof_widget_load_src._entry.132, ptr @sof_widget_load_src._entry_ptr, ptr @sof_widget_load_src._entry_ptr.134, ptr @sof_widget_ready._entry, ptr @sof_widget_ready._entry.61, ptr @sof_widget_ready._entry.65, ptr @sof_widget_ready._entry.68, ptr @sof_widget_ready._entry_ptr, ptr @sof_widget_ready._entry_ptr.63, ptr @sof_widget_ready._entry_ptr.67, ptr @sof_widget_ready._entry_ptr.70, ptr @sof_widget_unload._entry, ptr @sof_widget_unload._entry_ptr, ptr @spcm_bind._entry, ptr @spcm_bind._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @sof_tplg_ops, ptr @.str.13, ptr @sof_io_ops, ptr @sof_bytes_ext_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @led_tokens, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @core_tokens, ptr @.str.60, ptr @comp_ext_tokens, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @dai_tokens, ptr @.str.71, ptr @.str.72, ptr @comp_tokens, ptr @.str.74, ptr @.str.76, ptr @sof_dais, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @sof_frames, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @volume_tokens, ptr @.str.106, ptr @.str.109, ptr @buffer_tokens, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @sched_tokens, ptr @.str.118, ptr @pipeline_tokens, ptr @.str.121, ptr @.str.123, ptr @pcm_tokens, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.129, ptr @src_tokens, ptr @.str.130, ptr @.str.131, ptr @.str.133, ptr @.str.135, ptr @asrc_tokens, ptr @.str.136, ptr @.str.137, ptr @.str.139, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.145, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @process_tokens, ptr @.str.151, ptr @.str.154, ptr @sof_process, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.170, ptr @.str.172, ptr @.str.173, ptr @sof_kwd_events, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.181, ptr @.str.184, ptr @.str.186, ptr @.str.191, ptr @.str.193, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @stream_tokens, ptr @.str.201, ptr @.str.203, ptr @.str.206, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.217, ptr @dai_link_tokens, ptr @.str.220, ptr @.str.223, ptr @.str.225, ptr @.str.227, ptr @.str.230, ptr @ssp_tokens, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.236, ptr @.str.239, ptr @.str.242, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @dmic_tokens, ptr @.str.247, ptr @.str.248, ptr @dmic_pdm_tokens, ptr @.str.250, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.260, ptr @hda_tokens, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.266, ptr @.str.269, ptr @alh_tokens, ptr @.str.271, ptr @.str.272, ptr @.str.274, ptr @sai_tokens, ptr @.str.276, ptr @.str.277, ptr @.str.279, ptr @.str.280, ptr @.str.283, ptr @.str.286, ptr @esai_tokens, ptr @.str.288, ptr @.str.289, ptr @.str.291, ptr @.str.294, ptr @.str.297, ptr @.str.299, ptr @.str.300, ptr @.str.302, ptr @.str.304, ptr @.str.305, ptr @.str.307, ptr @.str.309, ptr @.str.310, ptr @.str.312, ptr @afe_tokens, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.318, ptr @.str.321, ptr @.str.323, ptr @.str.324, ptr @.str.326, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.334, ptr @.str.337, ptr @.str.340, ptr @switch.table.sof_process_load, ptr @switch.table.sof_process_load.342], section "llvm.metadata"
@0 = internal global [353 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_load_topology._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_load_topology._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_tplg_ops to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_load_topology._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_io_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_bytes_ext_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_control_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_control_load_volume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_control_load_volume._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_tokens to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_control_load_volume._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_parse_token_sets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_parse_token_sets._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_parse_token_sets._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_control_load_bytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_control_load_bytes._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_control_load_bytes._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_control_load_bytes._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_route_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_route_load._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_tokens to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_ext_tokens to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_ready._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_ready._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_ready._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dai_tokens to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_load_dai._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_tokens to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_load_dai._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_dais to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_frames to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_connect_dai_widget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_connect_dai_widget._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_connect_dai_widget._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_load_mixer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_load_pga._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @volume_tokens to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_load_pga._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_load_pga._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_tokens to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_load_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_load_pipeline._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_tokens to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_load_pipeline._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipeline_tokens to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_load_pipeline._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_tokens to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_load_pcm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_load_pcm._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @src_tokens to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_load_src._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_load_src._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asrc_tokens to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_load_asrc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_load_asrc._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_load_siggen._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_load_siggen._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_load_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_tokens to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_load_process._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_load_process._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_process to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_process_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_get_control_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_get_control_data._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_load_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_kwd_events to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_bind_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_keyword_dapm_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_keyword_dapm_event._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_keyword_dapm_event._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_keyword_dapm_event._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_keyword_dapm_event._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipc_pcm_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipc_pcm_params._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipc_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_widget_unload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stream_tokens to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_dai_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_dai_load._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_dai_load._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_dai_load._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_dai_load._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spcm_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_load._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dai_link_tokens to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_load._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_load._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_load._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_load._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_tokens to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_ssp_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_ssp_load._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_ssp_load._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_ssp_load._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_set_dai_config_multi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic_tokens to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_dmic_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic_pdm_tokens to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_dmic_load._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_dmic_load._entry.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_tokens to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_hda_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_hda_load._entry.265 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_hda_load._entry.268 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alh_tokens to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_alh_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_alh_load._entry.273 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sai_tokens to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_sai_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_sai_load._entry.278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_sai_load._entry.282 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_sai_load._entry.285 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esai_tokens to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_esai_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_esai_load._entry.290 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_esai_load._entry.293 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_esai_load._entry.296 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_acp_bt_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_acp_bt_load._entry.301 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_acp_sp_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_acp_sp_load._entry.306 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_acp_dmic_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_acp_dmic_load._entry.311 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe_tokens to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_afe_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_afe_load._entry.317 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_link_afe_load._entry.320 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_complete._entry.325 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_set_pipe_widget._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_manifest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_manifest._entry.333 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_manifest._entry.336 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sof_manifest._entry.339 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sof_process_load to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sof_process_load.342 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sof_complete_pipeline(ptr nocapture noundef readonly %sdev, ptr nocapture noundef readonly %swidget) local_unnamed_addr #0 align 64 {
entry:
  %ready = alloca %struct.sof_ipc_pipe_ready, align 4
  %reply = alloca %struct.sof_ipc_reply, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ready) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reply) #11
  %0 = ptrtoint ptr %reply to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reply, align 4, !annotation !709
  %1 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %reply, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !709
  %3 = getelementptr inbounds %struct.sof_ipc_reply, ptr %reply, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !709
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_sof_complete_pipeline.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_sof_complete_pipeline, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !710

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev, align 4
  %widget = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 8
  %7 = ptrtoint ptr %widget to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %widget, align 4
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  %comp_id = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 1
  %11 = ptrtoint ptr %comp_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %comp_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_sof_complete_pipeline.__UNIQUE_ID_ddebug283, ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef %10, i32 noundef %12) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %13 = getelementptr inbounds %struct.sof_ipc_pipe_ready, ptr %ready, i32 0, i32 1
  %14 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %ready, i32 0, i32 1
  %15 = ptrtoint ptr %ready to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 12, ptr %ready, align 4
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 806551552, ptr %14, align 4
  %comp_id4 = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 1
  %17 = ptrtoint ptr %comp_id4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %comp_id4, align 4
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %13, align 4
  %ipc = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 13
  %20 = ptrtoint ptr %ipc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ipc, align 4
  %call8 = call i32 @sof_ipc_tx_message(ptr noundef %21, i32 noundef 806551552, ptr noundef nonnull %ready, i32 noundef 12, ptr noundef nonnull %reply, i32 noundef 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  %call8. = select i1 %cmp, i32 %call8, i32 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ready) #11
  ret i32 %call8.
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_ipc_tx_message(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_sof_load_topology(ptr noundef %scomp, ptr noundef %file) #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #11
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !709
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_sof_load_topology.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_sof_load_topology, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !710

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_sof_load_topology.__UNIQUE_ID_ddebug285, ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef %file) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev3 = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %3 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev3, align 4
  %call4 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %file, ptr noundef %4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end8, label %if.end14

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef %file, i32 noundef %call4) #14
  %7 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.10) #14
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %9 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw, align 4
  %call15 = call i32 @snd_soc_tplg_component_load(ptr noundef %scomp, ptr noundef nonnull @sof_tplg_ops, ptr noundef %10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.end20, label %if.end14.if.end22_crit_edge

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.13, i32 noundef %call15) #14
  br label %if.end22

if.end22:                                         ; preds = %do.end20, %if.end14.if.end22_crit_edge
  %ret.0 = phi i32 [ -22, %do.end20 ], [ %call15, %if.end14.if.end22_crit_edge ]
  %13 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %14) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end8
  %retval.0 = phi i32 [ %call4, %do.end8 ], [ %ret.0, %if.end22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_tplg_component_load(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_control_load(ptr noundef %scomp, i32 noundef %index, ptr nocapture noundef %kc, ptr noundef %hdr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_control_load.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_control_load, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !710

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %type = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %hdr, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %type, align 1
  %name = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %hdr, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_control_load.__UNIQUE_ID_ddebug254, ptr noundef %5, ptr noundef nonnull @.str.16, i32 noundef %7, ptr noundef %name) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 64) #15
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %scomp, ptr %call7.i.i, align 8
  %access = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 5
  %10 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %access, align 4
  %access9 = getelementptr inbounds %struct.snd_sof_control, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %access9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %access9, align 4
  %info = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %hdr, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %info to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %info, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %do.end23 [
    i32 1, label %if.end7.sw.bb_crit_edge
    i32 2, label %if.end7.sw.bb_crit_edge79
    i32 3, label %if.end7.sw.bb_crit_edge80
    i32 5, label %sw.bb12
    i32 4, label %if.end7.sw.bb16_crit_edge
    i32 6, label %if.end7.sw.bb16_crit_edge81
  ]

if.end7.sw.bb16_crit_edge81:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb16

if.end7.sw.bb16_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb16

if.end7.sw.bb_crit_edge80:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end7.sw.bb_crit_edge79:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end7.sw.bb_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end7.sw.bb_crit_edge, %if.end7.sw.bb_crit_edge79, %if.end7.sw.bb_crit_edge80
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 11
  %17 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %private_value, align 4
  %19 = inttoptr i32 %18 to ptr
  %dobj10 = getelementptr inbounds %struct.soc_mixer_control, ptr %19, i32 0, i32 9
  %call11 = tail call fastcc i32 @sof_control_load_volume(ptr noundef %scomp, ptr noundef nonnull %call7.i.i, ptr noundef %kc, ptr noundef %hdr)
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %private_value13 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 11
  %20 = ptrtoint ptr %private_value13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %private_value13, align 4
  %22 = inttoptr i32 %21 to ptr
  %dobj14 = getelementptr inbounds %struct.soc_bytes_ext, ptr %22, i32 0, i32 1
  %call15 = tail call fastcc i32 @sof_control_load_bytes(ptr noundef %scomp, ptr noundef nonnull %call7.i.i, ptr noundef %kc, ptr noundef %hdr)
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end7.sw.bb16_crit_edge, %if.end7.sw.bb16_crit_edge81
  %private_value17 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 11
  %23 = ptrtoint ptr %private_value17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %private_value17, align 4
  %25 = inttoptr i32 %24 to ptr
  %dobj18 = getelementptr inbounds %struct.soc_enum, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_channels.i = getelementptr inbounds %struct.snd_soc_tplg_enum_control, ptr %hdr, i32 0, i32 2
  %30 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %num_channels.i, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %32)
  %cmp.i = icmp ugt i32 %32, 8
  br i1 %cmp.i, label %sw.bb16.if.then29_crit_edge, label %if.end.i

sw.bb16.if.then29_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

if.end.i:                                         ; preds = %sw.bb16
  %33 = shl nuw nsw i32 %32, 3
  %spec.select.i39.i = add nuw nsw i32 %33, 92
  %size.i = getelementptr inbounds %struct.snd_sof_control, ptr %call7.i.i, i32 0, i32 8
  %34 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %spec.select.i39.i, ptr %size.i, align 8
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i39.i, i32 noundef 3520) #16
  %control_data.i = getelementptr inbounds %struct.snd_sof_control, ptr %call7.i.i, i32 0, i32 7
  %35 = ptrtoint ptr %control_data.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call9.i.i.i, ptr %control_data.i, align 4
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.if.then29_crit_edge, label %if.end7.i

if.end.i.if.then29_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %next_comp_id.i = getelementptr inbounds %struct.snd_sof_dev, ptr %29, i32 0, i32 20
  %36 = ptrtoint ptr %next_comp_id.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %next_comp_id.i, align 4
  %comp_id.i = getelementptr inbounds %struct.snd_sof_control, ptr %call7.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %comp_id.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %comp_id.i, align 4
  %39 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %num_channels.i, align 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #11
  %num_channels9.i = getelementptr inbounds %struct.snd_sof_control, ptr %call7.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %num_channels9.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %num_channels9.i, align 8
  %index.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 4
  %43 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %index.i, align 4
  %index11.i = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %call9.i.i.i, i32 0, i32 4
  %45 = ptrtoint ptr %index11.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %index11.i, align 8
  %cmd.i = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %call9.i.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %cmd.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_control_load_enum.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_control_load, %sw.epilog.thread74)) #11
          to label %sw.epilog [label %sw.epilog.thread74], !srcloc !710

sw.epilog.thread74:                               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  %49 = ptrtoint ptr %comp_id.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %comp_id.i, align 4
  %51 = ptrtoint ptr %num_channels9.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_channels9.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_control_load_enum.__UNIQUE_ID_ddebug252, ptr noundef %48, ptr noundef nonnull @.str.47, i32 noundef %50, i32 noundef %52, i32 noundef %50) #11
  br label %if.end30

do.end23:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %ops = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %hdr, i32 0, i32 4
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i, align 4
  %55 = ptrtoint ptr %ops to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %ops, align 1
  %put = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, ptr %hdr, i32 0, i32 4, i32 1
  %57 = ptrtoint ptr %put to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %put, align 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.17, i32 noundef %56, i32 noundef %58, i32 noundef %14) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

sw.epilog:                                        ; preds = %if.end7.i, %sw.bb12, %sw.bb
  %dobj.0 = phi ptr [ %dobj14, %sw.bb12 ], [ %dobj10, %sw.bb ], [ %dobj18, %if.end7.i ]
  %ret.0 = phi i32 [ %call15, %sw.bb12 ], [ %call11, %sw.bb ], [ 0, %if.end7.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp slt i32 %ret.0, 0
  br i1 %cmp, label %sw.epilog.if.then29_crit_edge, label %sw.epilog.if.end30_crit_edge

sw.epilog.if.end30_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

sw.epilog.if.then29_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

if.then29:                                        ; preds = %sw.epilog.if.then29_crit_edge, %if.end.i.if.then29_crit_edge, %sw.bb16.if.then29_crit_edge
  %ret.073 = phi i32 [ %ret.0, %sw.epilog.if.then29_crit_edge ], [ -12, %if.end.i.if.then29_crit_edge ], [ -22, %sw.bb16.if.then29_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end30:                                         ; preds = %sw.epilog.if.end30_crit_edge, %sw.epilog.thread74
  %dobj.078 = phi ptr [ %dobj18, %sw.epilog.thread74 ], [ %dobj.0, %sw.epilog.if.end30_crit_edge ]
  %led_value = getelementptr inbounds %struct.snd_sof_control, ptr %call7.i.i, i32 0, i32 11, i32 2
  %59 = ptrtoint ptr %led_value to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %led_value, align 8
  %private = getelementptr inbounds %struct.snd_soc_dobj, ptr %dobj.078, i32 0, i32 5
  %60 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call7.i.i, ptr %private, align 4
  %list = getelementptr inbounds %struct.snd_sof_control, ptr %call7.i.i, i32 0, i32 10
  %kcontrol_list = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 36
  %61 = ptrtoint ptr %kcontrol_list to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %kcontrol_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %kcontrol_list, ptr noundef %62) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %list, ptr %prev1.i.i, align 4
  %64 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %62, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.snd_sof_control, ptr %call7.i.i, i32 0, i32 10, i32 1
  %65 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %kcontrol_list, ptr %prev3.i.i, align 4
  %66 = ptrtoint ptr %kcontrol_list to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %list, ptr %kcontrol_list, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end30.cleanup_crit_edge, %if.then29, %do.end23, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end23 ], [ %ret.073, %if.then29 ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_control_unload(ptr nocapture noundef readonly %scomp, ptr nocapture noundef readonly %dobj) #0 align 64 {
entry:
  %fcomp = alloca %struct.sof_ipc_free, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %fcomp) #11
  %4 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %fcomp, i32 0, i32 1
  %5 = getelementptr inbounds %struct.sof_ipc_free, ptr %fcomp, i32 0, i32 1
  %private = getelementptr inbounds %struct.snd_soc_dobj, ptr %dobj, i32 0, i32 5
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_control_unload.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_control_unload, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !710

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %scomp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scomp, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_control_unload.__UNIQUE_ID_ddebug255, ptr noundef %9, ptr noundef nonnull @.str.49, ptr noundef %11) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 805437440, ptr %4, align 4
  %13 = ptrtoint ptr %fcomp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 12, ptr %fcomp, align 4
  %comp_id = getelementptr inbounds %struct.snd_sof_control, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %comp_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %comp_id, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %5, align 4
  %control_data = getelementptr inbounds %struct.snd_sof_control, ptr %7, i32 0, i32 7
  %17 = ptrtoint ptr %control_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %control_data, align 4
  tail call void @kfree(ptr noundef %18) #11
  %list = getelementptr inbounds %struct.snd_sof_control, ptr %7, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.snd_sof_control, ptr %7, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %25 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.snd_sof_control, ptr %7, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %7) #11
  %ipc = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 13
  %27 = ptrtoint ptr %ipc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ipc, align 4
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %4, align 4
  %call7 = call i32 @sof_ipc_tx_message(ptr noundef %28, i32 noundef %30, ptr noundef nonnull %fcomp, i32 noundef 12, ptr noundef null, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %fcomp) #11
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_route_load(ptr noundef %scomp, i32 noundef %index, ptr noundef %route) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 32) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %scomp, ptr %call7.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i129 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 16) #15
  %tobool5.not = icmp eq ptr %call7.i.i129, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %7 = ptrtoint ptr %call7.i.i129 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16, ptr %call7.i.i129, align 8
  %cmd = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %call7.i.i129, i32 0, i32 1
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 805502976, ptr %cmd, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_route_load.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_route_load, %if.then13)) #11
          to label %do.end [label %if.then13], !srcloc !710

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %11 = ptrtoint ptr %route to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %route, align 4
  %control = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %route, i32 0, i32 1
  %13 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %control, align 4
  %tobool14.not = icmp eq ptr %14, null
  %spec.select = select i1 %tobool14.not, ptr @.str.52, ptr %14
  %source = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %route, i32 0, i32 2
  %15 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %source, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_route_load.__UNIQUE_ID_ddebug281, ptr noundef %10, ptr noundef nonnull @.str.51, ptr noundef %12, ptr noundef nonnull %spec.select, ptr noundef %16) #11
  br label %do.end

do.end:                                           ; preds = %if.then13, %if.end7
  %source17 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %route, i32 0, i32 2
  %17 = ptrtoint ptr %source17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %source17, align 4
  %call18 = tail call ptr @snd_sof_find_swidget(ptr noundef %scomp, ptr noundef %18) #11
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %do.end23, label %if.end26

do.end23:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %21 = ptrtoint ptr %source17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %source17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.53, ptr noundef %22) #14
  br label %err

if.end26:                                         ; preds = %do.end
  %id = getelementptr inbounds %struct.snd_sof_widget, ptr %call18, i32 0, i32 6
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.343)
  switch i32 %24, label %if.end30 [
    i32 7, label %if.end26.err_crit_edge
    i32 1, label %if.end26.err_crit_edge132
  ]

if.end26.err_crit_edge132:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end26.err_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end30:                                         ; preds = %if.end26
  %comp_id = getelementptr inbounds %struct.snd_sof_widget, ptr %call18, i32 0, i32 1
  %26 = ptrtoint ptr %comp_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %comp_id, align 4
  %source_id = getelementptr inbounds %struct.sof_ipc_pipe_comp_connect, ptr %call7.i.i129, i32 0, i32 1
  %28 = ptrtoint ptr %source_id to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %source_id, align 8
  %29 = ptrtoint ptr %route to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %route, align 4
  %call32 = tail call ptr @snd_sof_find_swidget(ptr noundef %scomp, ptr noundef %30) #11
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %33 = ptrtoint ptr %route to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %route, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.55, ptr noundef %34) #14
  br label %err

if.end40:                                         ; preds = %if.end30
  %id41 = getelementptr inbounds %struct.snd_sof_widget, ptr %call32, i32 0, i32 6
  %35 = ptrtoint ptr %id41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id41, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.344)
  switch i32 %36, label %if.end47 [
    i32 7, label %if.end40.err_crit_edge
    i32 1, label %if.end40.err_crit_edge133
  ]

if.end40.err_crit_edge133:                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end40.err_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end47:                                         ; preds = %if.end40
  %comp_id48 = getelementptr inbounds %struct.snd_sof_widget, ptr %call32, i32 0, i32 1
  %38 = ptrtoint ptr %comp_id48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %comp_id48, align 4
  %sink_id = getelementptr inbounds %struct.sof_ipc_pipe_comp_connect, ptr %call7.i.i129, i32 0, i32 2
  %40 = ptrtoint ptr %sink_id to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %sink_id, align 4
  %41 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %42)
  %cmp50.not = icmp eq i32 %42, 31
  br i1 %cmp50.not, label %if.end47.if.else_crit_edge, label %land.lhs.true

if.end47.if.else_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.end47
  %43 = ptrtoint ptr %id41 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %44)
  %cmp52.not = icmp eq i32 %44, 31
  br i1 %cmp52.not, label %land.lhs.true.if.else_crit_edge, label %do.body54

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

do.body54:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_route_load.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_route_load, %if.then66)) #11
          to label %err [label %if.then66], !srcloc !710

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 4
  %47 = ptrtoint ptr %source17 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %source17, align 4
  %49 = ptrtoint ptr %route to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %route, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_route_load.__UNIQUE_ID_ddebug282, ptr noundef %46, ptr noundef nonnull @.str.57, ptr noundef %48, ptr noundef %50) #11
  br label %err

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end47.if.else_crit_edge
  %route73 = getelementptr inbounds %struct.snd_sof_route, ptr %call7.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %route73 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %route, ptr %route73, align 4
  %private = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %route, i32 0, i32 4, i32 5
  %52 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i, ptr %private, align 4
  %private74 = getelementptr inbounds %struct.snd_sof_route, ptr %call7.i.i, i32 0, i32 6
  %53 = ptrtoint ptr %private74 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call7.i.i129, ptr %private74, align 4
  %src_widget = getelementptr inbounds %struct.snd_sof_route, ptr %call7.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %src_widget to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call18, ptr %src_widget, align 8
  %sink_widget = getelementptr inbounds %struct.snd_sof_route, ptr %call7.i.i, i32 0, i32 4
  %55 = ptrtoint ptr %sink_widget to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call32, ptr %sink_widget, align 4
  %list = getelementptr inbounds %struct.snd_sof_route, ptr %call7.i.i, i32 0, i32 2
  %route_list = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 39
  %56 = ptrtoint ptr %route_list to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %route_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %route_list, ptr noundef %57) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %list, ptr %prev1.i.i, align 4
  %59 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %57, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.snd_sof_route, ptr %call7.i.i, i32 0, i32 2, i32 1
  %60 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %route_list, ptr %prev3.i.i, align 4
  %61 = ptrtoint ptr %route_list to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %list, ptr %route_list, align 4
  br label %cleanup

err:                                              ; preds = %if.then66, %do.body54, %if.end40.err_crit_edge, %if.end40.err_crit_edge133, %do.end37, %if.end26.err_crit_edge, %if.end26.err_crit_edge132, %do.end23
  %ret.0 = phi i32 [ 0, %if.end26.err_crit_edge ], [ 0, %if.end40.err_crit_edge ], [ 0, %if.then66 ], [ -22, %do.end37 ], [ -22, %do.end23 ], [ 0, %if.end26.err_crit_edge132 ], [ 0, %if.end40.err_crit_edge133 ], [ 0, %do.body54 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i129) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end.i.i, %if.else.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ -12, %if.then6 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_route_unload(ptr nocapture noundef readnone %scomp, ptr nocapture noundef readonly %dobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_soc_dobj, ptr %dobj, i32 0, i32 5
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %private1 = getelementptr inbounds %struct.snd_sof_route, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %private1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private1, align 4
  tail call void @kfree(ptr noundef %3) #11
  %list = getelementptr inbounds %struct.snd_sof_route, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.snd_sof_route, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.snd_sof_route, ptr %1, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %1) #11
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_widget_ready(ptr noundef %scomp, i32 noundef %index, ptr noundef %w, ptr noundef %tw) #0 align 64 {
entry:
  %config.i = alloca %struct.sof_ipc_comp_process, align 1
  %comp = alloca %struct.sof_ipc_comp, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %comp) #11
  %4 = call ptr @memset(ptr %comp, i32 0, i32 28)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 68) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %scomp, ptr %call7.i.i, align 8
  %widget = getelementptr inbounds %struct.snd_sof_widget, ptr %call7.i.i, i32 0, i32 8
  %7 = ptrtoint ptr %widget to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %w, ptr %widget, align 8
  %next_comp_id = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 20
  %8 = ptrtoint ptr %next_comp_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %next_comp_id, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %next_comp_id, align 4
  %comp_id = getelementptr inbounds %struct.snd_sof_widget, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %comp_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %comp_id, align 4
  %complete = getelementptr inbounds %struct.snd_sof_widget, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %complete, align 4
  %12 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %w, align 4
  %id3 = getelementptr inbounds %struct.snd_sof_widget, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %id3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %id3, align 8
  %pipeline_id = getelementptr inbounds %struct.snd_sof_widget, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %pipeline_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %index, ptr %pipeline_id, align 8
  %private = getelementptr inbounds %struct.snd_sof_widget, ptr %call7.i.i, i32 0, i32 12
  %16 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %private, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_widget_ready.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_widget_ready, %if.then8)) #11
          to label %do.end [label %if.then8], !srcloc !710

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %comp_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %comp_id, align 4
  %21 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id3, align 8
  %name = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 0, i32 2
  %sname = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 0, i32 3
  %23 = ptrtoint ptr %sname to i32
  call void @__asan_load1_noabort(i32 %23)
  %char0260 = load i8, ptr %sname, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0260)
  %cmp.not = icmp eq i8 %char0260, 0
  %spec.select = select i1 %cmp.not, ptr @.str.52, ptr %sname
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_widget_ready.__UNIQUE_ID_ddebug266, ptr noundef %18, ptr noundef nonnull @.str.59, i32 noundef %20, i32 noundef %index, i32 noundef %22, ptr noundef %name, ptr noundef %spec.select) #11
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.end
  %priv = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 0, i32 13
  %array = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 1
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %priv, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %call.i = call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef nonnull %comp, ptr noundef nonnull @core_tokens, i32 noundef 1, ptr noundef %array, i32 noundef %26, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp19.not = icmp eq i32 %call.i, 0
  br i1 %cmp19.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.60, i32 noundef %call.i) #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end25:                                         ; preds = %do.end
  %call26 = call zeroext i1 @sof_debug_check_flag(i32 noundef 32) #11
  br i1 %call26, label %if.then27, label %if.end25.if.end28_crit_edge

if.end25.if.end28_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %core = getelementptr inbounds %struct.sof_ipc_comp, ptr %comp, i32 0, i32 4
  %29 = ptrtoint ptr %core to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 0, ptr %core, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end25.if.end28_crit_edge
  %core29 = getelementptr inbounds %struct.sof_ipc_comp, ptr %comp, i32 0, i32 4
  %30 = ptrtoint ptr %core29 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %core29, align 1
  %core30 = getelementptr inbounds %struct.snd_sof_widget, ptr %call7.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %core30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %core30, align 4
  %comp_ext = getelementptr inbounds %struct.snd_sof_widget, ptr %call7.i.i, i32 0, i32 11
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %priv, align 1
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  %call.i265 = call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef %comp_ext, ptr noundef nonnull @comp_ext_tokens, i32 noundef 1, ptr noundef %array, i32 noundef %35, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i265)
  %cmp37.not = icmp eq i32 %call.i265, 0
  br i1 %cmp37.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.62, i32 noundef %call.i265) #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end43:                                         ; preds = %if.end28
  %38 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %w, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.345)
  switch i32 %39, label %do.body81 [
    i32 27, label %if.end43.sw.bb_crit_edge
    i32 28, label %if.end43.sw.bb_crit_edge293
    i32 4, label %sw.bb58
    i32 6, label %sw.bb60
    i32 31, label %sw.bb62
    i32 32, label %sw.bb64
    i32 24, label %sw.bb66
    i32 23, label %sw.bb68
    i32 34, label %sw.bb70
    i32 35, label %sw.bb72
    i32 25, label %sw.bb74
    i32 33, label %sw.bb76
    i32 2, label %if.end43.sw.bb78_crit_edge
    i32 3, label %if.end43.sw.bb78_crit_edge294
  ]

if.end43.sw.bb78_crit_edge294:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb78

if.end43.sw.bb78_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb78

if.end43.sw.bb_crit_edge293:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end43.sw.bb_crit_edge:                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end43.sw.bb_crit_edge, %if.end43.sw.bb_crit_edge293
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i266 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 112) #15
  %tobool46.not = icmp eq ptr %call7.i.i266, null
  br i1 %tobool46.not, label %if.then47, label %if.end48

if.then47:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end48:                                         ; preds = %sw.bb
  %call49 = call fastcc i32 @sof_widget_load_dai(ptr noundef %scomp, i32 noundef %index, ptr noundef nonnull %call7.i.i, ptr noundef %tw, ptr noundef nonnull %call7.i.i266)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then51, label %if.end48.if.end53_crit_edge

if.end48.if.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %call52 = call fastcc i32 @sof_connect_dai_widget(ptr noundef %scomp, ptr noundef %w, ptr noundef nonnull %call7.i.i266)
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end48.if.end53_crit_edge
  %ret.0 = phi i32 [ %call49, %if.end48.if.end53_crit_edge ], [ %call52, %if.then51 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp54 = icmp slt i32 %ret.0, 0
  br i1 %cmp54, label %sw.epilog.thread286, label %if.end56

sw.epilog.thread286:                              ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i266) #11
  br label %do.end105

if.end56:                                         ; preds = %if.end53
  %list = getelementptr inbounds %struct.snd_sof_dai, ptr %call7.i.i266, i32 0, i32 7
  %dai_list = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 38
  %42 = ptrtoint ptr %dai_list to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dai_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %dai_list, ptr noundef %43) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end56.list_add.exit_crit_edge

if.end56.list_add.exit_crit_edge:                 ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %list, ptr %prev1.i.i, align 4
  %45 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.snd_sof_dai, ptr %call7.i.i266, i32 0, i32 7, i32 1
  %46 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %dai_list, ptr %prev3.i.i, align 4
  %47 = ptrtoint ptr %dai_list to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %list, ptr %dai_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end56.list_add.exit_crit_edge
  %48 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i.i266, ptr %private, align 8
  br label %if.end120

sw.bb58:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %call59 = call fastcc i32 @sof_widget_load_mixer(ptr noundef %scomp, i32 noundef %index, ptr noundef nonnull %call7.i.i, ptr noundef %tw)
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %call61 = call fastcc i32 @sof_widget_load_pga(ptr noundef %scomp, i32 noundef %index, ptr noundef nonnull %call7.i.i, ptr noundef %tw)
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %call63 = call fastcc i32 @sof_widget_load_buffer(ptr noundef %scomp, i32 noundef %index, ptr noundef nonnull %call7.i.i, ptr noundef %tw)
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %call65 = call fastcc i32 @sof_widget_load_pipeline(ptr noundef %scomp, i32 noundef %index, ptr noundef nonnull %call7.i.i, ptr noundef %tw)
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %call67 = call fastcc i32 @sof_widget_load_pcm(ptr noundef %scomp, i32 noundef %index, ptr noundef nonnull %call7.i.i, i32 noundef 1, ptr noundef %tw)
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %call69 = call fastcc i32 @sof_widget_load_pcm(ptr noundef %scomp, i32 noundef %index, ptr noundef nonnull %call7.i.i, i32 noundef 0, ptr noundef %tw)
  br label %sw.epilog

sw.bb70:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %call71 = call fastcc i32 @sof_widget_load_src(ptr noundef %scomp, i32 noundef %index, ptr noundef nonnull %call7.i.i, ptr noundef %tw)
  br label %sw.epilog

sw.bb72:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %call73 = call fastcc i32 @sof_widget_load_asrc(ptr noundef %scomp, i32 noundef %index, ptr noundef nonnull %call7.i.i, ptr noundef %tw)
  br label %sw.epilog

sw.bb74:                                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %call75 = call fastcc i32 @sof_widget_load_siggen(ptr noundef %scomp, i32 noundef %index, ptr noundef nonnull %call7.i.i, ptr noundef %tw)
  br label %sw.epilog

sw.bb76:                                          ; preds = %if.end43
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %config.i) #11
  %49 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %priv, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i = icmp eq i32 %50, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.148) #14
  br label %sof_widget_load_process.exit

if.end.i:                                         ; preds = %sw.bb76
  %53 = call ptr @memset(ptr %config.i, i32 0, i32 100)
  %54 = ptrtoint ptr %core30 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %core30, align 4
  %core1.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %config.i, i32 0, i32 4
  %56 = ptrtoint ptr %core1.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %55, ptr %core1.i, align 1
  %57 = call i32 @llvm.bswap.i32(i32 %50) #11
  %call.i.i268 = call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef nonnull %config.i, ptr noundef nonnull @process_tokens, i32 noundef 1, ptr noundef %array, i32 noundef %57, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i268)
  %cmp3.not.i = icmp eq i32 %call.i.i268, 0
  br i1 %cmp3.not.i, label %if.end10.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 4
  %60 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %priv, align 1
  %62 = call i32 @llvm.bswap.i32(i32 %61) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.151, i32 noundef %62) #14
  br label %sof_widget_load_process.exit

if.end10.i:                                       ; preds = %if.end.i
  %type.i = getelementptr inbounds %struct.sof_ipc_comp_process, ptr %config.i, i32 0, i32 3
  %63 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %type.i, align 1
  %switch.tableidx = add i32 %64, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %65 = icmp ult i32 %switch.tableidx, 9
  br i1 %65, label %if.then.i.i, label %if.end10.i.find_process_comp_type.exit.i_crit_edge

if.end10.i.find_process_comp_type.exit.i_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_process_comp_type.exit.i

if.then.i.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %comp_type.i.i = getelementptr [9 x %struct.sof_process_types], ptr @sof_process, i32 0, i32 %switch.tableidx, i32 2
  %66 = ptrtoint ptr %comp_type.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %comp_type.i.i, align 4
  br label %find_process_comp_type.exit.i

find_process_comp_type.exit.i:                    ; preds = %if.then.i.i, %if.end10.i.find_process_comp_type.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %67, %if.then.i.i ], [ 0, %if.end10.i.find_process_comp_type.exit.i_crit_edge ]
  %call12.i = call fastcc i32 @sof_process_load(ptr noundef %scomp, i32 noundef %index, ptr noundef nonnull %call7.i.i, ptr noundef %tw, i32 noundef %retval.0.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %do.end17.i, label %find_process_comp_type.exit.i.sof_widget_load_process.exit_crit_edge

find_process_comp_type.exit.i.sof_widget_load_process.exit_crit_edge: ; preds = %find_process_comp_type.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sof_widget_load_process.exit

do.end17.i:                                       ; preds = %find_process_comp_type.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.154) #14
  br label %sof_widget_load_process.exit

sof_widget_load_process.exit:                     ; preds = %do.end17.i, %find_process_comp_type.exit.i.sof_widget_load_process.exit_crit_edge, %do.end7.i, %do.end.i
  %retval.0.i269 = phi i32 [ -22, %do.end.i ], [ %call.i.i268, %do.end7.i ], [ %call12.i, %do.end17.i ], [ 0, %find_process_comp_type.exit.i.sof_widget_load_process.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %config.i) #11
  br label %sw.epilog

sw.bb78:                                          ; preds = %if.end43.sw.bb78_crit_edge, %if.end43.sw.bb78_crit_edge294
  %call79 = call fastcc i32 @sof_widget_load_mux(ptr noundef %scomp, i32 noundef %index, ptr noundef nonnull %call7.i.i, ptr noundef %tw)
  br label %sw.epilog

do.body81:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_widget_ready.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_widget_ready, %if.then93)) #11
          to label %sw.epilog [label %if.then93], !srcloc !710

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev.i, align 4
  %72 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %id3, align 8
  %name96 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 0, i32 2
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_widget_ready.__UNIQUE_ID_ddebug267, ptr noundef %71, ptr noundef nonnull @.str.64, i32 noundef %73, ptr noundef %name96) #11
  br label %if.end120

sw.epilog:                                        ; preds = %do.body81, %sw.bb78, %sof_widget_load_process.exit, %sw.bb74, %sw.bb72, %sw.bb70, %sw.bb68, %sw.bb66, %sw.bb64, %sw.bb62, %sw.bb60, %sw.bb58
  %ret.1 = phi i32 [ %call79, %sw.bb78 ], [ %retval.0.i269, %sof_widget_load_process.exit ], [ %call75, %sw.bb74 ], [ %call73, %sw.bb72 ], [ %call71, %sw.bb70 ], [ %call69, %sw.bb68 ], [ %call67, %sw.bb66 ], [ %call65, %sw.bb64 ], [ %call63, %sw.bb62 ], [ %call61, %sw.bb60 ], [ %call59, %sw.bb58 ], [ 0, %do.body81 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp101 = icmp slt i32 %ret.1, 0
  br i1 %cmp101, label %sw.epilog.do.end105_crit_edge, label %sw.epilog.if.end120_crit_edge

sw.epilog.if.end120_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end120

sw.epilog.do.end105_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end105

do.end105:                                        ; preds = %sw.epilog.do.end105_crit_edge, %sw.epilog.thread286
  %ret.1289 = phi i32 [ %ret.0, %sw.epilog.thread286 ], [ %ret.1, %sw.epilog.do.end105_crit_edge ]
  %74 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i, align 4
  %shift = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 0, i32 5
  %76 = ptrtoint ptr %shift to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %shift, align 1
  %78 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %id3, align 8
  %name108 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 0, i32 2
  %sname110 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 0, i32 3
  %80 = ptrtoint ptr %sname110 to i32
  call void @__asan_load1_noabort(i32 %80)
  %char0 = load i8, ptr %sname110, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %cmp113.not = icmp eq i8 %char0, 0
  %spec.select261 = select i1 %cmp113.not, ptr @.str.52, ptr %sname110
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.66, i32 noundef %77, i32 noundef %79, ptr noundef %name108, ptr noundef %spec.select261) #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end120:                                        ; preds = %sw.epilog.if.end120_crit_edge, %if.then93, %list_add.exit
  %ret.1285 = phi i32 [ %ret.1, %sw.epilog.if.end120_crit_edge ], [ %ret.0, %list_add.exit ], [ 0, %if.then93 ]
  %event_type = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 0, i32 11
  %81 = ptrtoint ptr %event_type to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %event_type, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool121.not = icmp eq i16 %82, 0
  br i1 %tobool121.not, label %if.end120.if.end133_crit_edge, label %if.then122

if.end120.if.end133_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end133

if.then122:                                       ; preds = %if.end120
  %83 = call i16 @llvm.bswap.i16(i16 %82)
  %conv.i = zext i16 %83 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %82)
  %cond.i = icmp eq i16 %82, 256
  br i1 %cond.i, label %sw.bb.i, label %if.then122.sof_widget_bind_event.exit.thread_crit_edge

if.then122.sof_widget_bind_event.exit.thread_crit_edge: ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #13
  br label %sof_widget_bind_event.exit.thread

sw.bb.i:                                          ; preds = %if.then122
  %84 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %id3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %85)
  %cmp.not.i = icmp eq i32 %85, 33
  br i1 %cmp.not.i, label %if.end.i270, label %sw.bb.i.sof_widget_bind_event.exit.thread_crit_edge

sw.bb.i.sof_widget_bind_event.exit.thread_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sof_widget_bind_event.exit.thread

if.end.i270:                                      ; preds = %sw.bb.i
  %86 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %private, align 8
  %tobool.not.i = icmp eq ptr %87, null
  br i1 %tobool.not.i, label %if.end.i270.sof_widget_bind_event.exit_crit_edge, label %land.lhs.true.i

if.end.i270.sof_widget_bind_event.exit_crit_edge: ; preds = %if.end.i270
  call void @__sanitizer_cov_trace_pc() #13
  br label %sof_widget_bind_event.exit

land.lhs.true.i:                                  ; preds = %if.end.i270
  %type.i271 = getelementptr inbounds %struct.sof_ipc_comp, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %type.i271 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %type.i271, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %89)
  %cmp2.not.i = icmp eq i32 %89, 15
  br i1 %cmp2.not.i, label %land.lhs.true.i.sof_widget_bind_event.exit_crit_edge, label %land.lhs.true.i.sof_widget_bind_event.exit.thread_crit_edge

land.lhs.true.i.sof_widget_bind_event.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sof_widget_bind_event.exit.thread

land.lhs.true.i.sof_widget_bind_event.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sof_widget_bind_event.exit

sof_widget_bind_event.exit.thread:                ; preds = %land.lhs.true.i.sof_widget_bind_event.exit.thread_crit_edge, %sw.bb.i.sof_widget_bind_event.exit.thread_crit_edge, %if.then122.sof_widget_bind_event.exit.thread_crit_edge
  %90 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev.i, align 4
  %92 = ptrtoint ptr %widget to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %widget, align 8
  %name.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %name.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.174, i32 noundef %conv.i, ptr noundef %95) #14
  br label %do.end129

sof_widget_bind_event.exit:                       ; preds = %land.lhs.true.i.sof_widget_bind_event.exit_crit_edge, %if.end.i270.sof_widget_bind_event.exit_crit_edge
  %96 = ptrtoint ptr %widget to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %widget, align 8
  %call.i272 = call i32 @snd_soc_tplg_widget_bind_event(ptr noundef %97, ptr noundef nonnull @sof_kwd_events, i32 noundef 1, i16 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i272)
  %tobool125.not = icmp eq i32 %call.i272, 0
  br i1 %tobool125.not, label %sof_widget_bind_event.exit.if.end133_crit_edge, label %sof_widget_bind_event.exit.do.end129_crit_edge

sof_widget_bind_event.exit.do.end129_crit_edge:   ; preds = %sof_widget_bind_event.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end129

sof_widget_bind_event.exit.if.end133_crit_edge:   ; preds = %sof_widget_bind_event.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end133

do.end129:                                        ; preds = %sof_widget_bind_event.exit.do.end129_crit_edge, %sof_widget_bind_event.exit.thread
  %retval.0.i275292 = phi i32 [ -22, %sof_widget_bind_event.exit.thread ], [ %call.i272, %sof_widget_bind_event.exit.do.end129_crit_edge ]
  %98 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.69) #14
  %100 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %private, align 8
  call void @kfree(ptr noundef %101) #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end133:                                        ; preds = %sof_widget_bind_event.exit.if.end133_crit_edge, %if.end120.if.end133_crit_edge
  %ret.2 = phi i32 [ 0, %sof_widget_bind_event.exit.if.end133_crit_edge ], [ %ret.1285, %if.end120.if.end133_crit_edge ]
  %private134 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 21, i32 5
  %102 = ptrtoint ptr %private134 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call7.i.i, ptr %private134, align 4
  %list135 = getelementptr inbounds %struct.snd_sof_widget, ptr %call7.i.i, i32 0, i32 9
  %widget_list = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 37
  %103 = ptrtoint ptr %widget_list to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %widget_list, align 4
  %call.i.i276 = call zeroext i1 @__list_add_valid(ptr noundef %list135, ptr noundef %widget_list, ptr noundef %104) #11
  br i1 %call.i.i276, label %if.end.i.i279, label %if.end133.cleanup_crit_edge

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i279:                                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i277 = getelementptr inbounds %struct.list_head, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %prev1.i.i277 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %list135, ptr %prev1.i.i277, align 4
  %106 = ptrtoint ptr %list135 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %104, ptr %list135, align 4
  %prev3.i.i278 = getelementptr inbounds %struct.snd_sof_widget, ptr %call7.i.i, i32 0, i32 9, i32 1
  %107 = ptrtoint ptr %prev3.i.i278 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %widget_list, ptr %prev3.i.i278, align 8
  %108 = ptrtoint ptr %widget_list to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %list135, ptr %widget_list, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i279, %if.end133.cleanup_crit_edge, %do.end129, %do.end105, %if.then47, %do.end41, %do.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end23 ], [ %call.i265, %do.end41 ], [ %ret.1289, %do.end105 ], [ %retval.0.i275292, %do.end129 ], [ -12, %if.then47 ], [ -12, %entry.cleanup_crit_edge ], [ %ret.2, %if.end133.cleanup_crit_edge ], [ %ret.2, %if.end.i.i279 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %comp) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_widget_unload(ptr nocapture noundef readonly %scomp, ptr nocapture noundef readonly %dobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_soc_dobj, ptr %dobj, i32 0, i32 5
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %widget1 = getelementptr inbounds %struct.snd_sof_widget, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %widget1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %widget1, align 4
  %id = getelementptr inbounds %struct.snd_sof_widget, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %.off = add i32 %5, -27
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %private2 = getelementptr inbounds %struct.snd_sof_widget, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %private2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private2, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %sw.bb.sw.epilog_crit_edge, label %if.then4

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then4:                                         ; preds = %sw.bb
  %dai_config = getelementptr inbounds %struct.snd_sof_dai, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %dai_config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dai_config, align 4
  tail call void @kfree(ptr noundef %9) #11
  %list = getelementptr inbounds %struct.snd_sof_dai, ptr %7, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then4.list_del.exit_crit_edge

if.then4.list_del.exit_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.snd_sof_dai, ptr %7, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then4.list_del.exit_crit_edge
  %16 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.snd_sof_dai, ptr %7, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %list_del.exit, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %num_kcontrols = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 18
  %18 = ptrtoint ptr %num_kcontrols to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_kcontrols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp68 = icmp sgt i32 %19, 0
  br i1 %cmp68, label %for.body.lr.ph, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.body.lr.ph:                                   ; preds = %sw.epilog
  %kcontrol_news = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 19
  %20 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %3, i32 0, i32 21, i32 4
  br label %for.body

for.body:                                         ; preds = %list_del.exit61.for.body_crit_edge, %for.body.lr.ph
  %i.069 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_del.exit61.for.body_crit_edge ]
  %21 = ptrtoint ptr %kcontrol_news to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %kcontrol_news, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %arrayidx7 = getelementptr i32, ptr %24, i32 %i.069
  %25 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx7, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.346)
  switch i32 %26, label %do.end [
    i32 1, label %sw.bb8
    i32 3, label %sw.bb14
    i32 2, label %sw.bb18
  ]

sw.bb8:                                           ; preds = %for.body
  %private_value = getelementptr %struct.snd_kcontrol_new, ptr %22, i32 %i.069, i32 11
  %28 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %private_value, align 4
  %30 = inttoptr i32 %29 to ptr
  %private10 = getelementptr inbounds %struct.soc_mixer_control, ptr %30, i32 0, i32 9, i32 5
  %31 = ptrtoint ptr %private10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %private10, align 4
  %max = getelementptr inbounds %struct.soc_mixer_control, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp11 = icmp sgt i32 %34, 1
  br i1 %cmp11, label %if.then12, label %sw.bb8.sw.epilog23_crit_edge

sw.bb8.sw.epilog23_crit_edge:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog23

if.then12:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  %volume_table = getelementptr inbounds %struct.snd_sof_control, ptr %32, i32 0, i32 9
  %35 = ptrtoint ptr %volume_table to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %volume_table, align 4
  tail call void @kfree(ptr noundef %36) #11
  br label %sw.epilog23

sw.bb14:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %private_value15 = getelementptr %struct.snd_kcontrol_new, ptr %22, i32 %i.069, i32 11
  %37 = ptrtoint ptr %private_value15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %private_value15, align 4
  %39 = inttoptr i32 %38 to ptr
  %private17 = getelementptr inbounds %struct.soc_enum, ptr %39, i32 0, i32 8, i32 5
  %40 = ptrtoint ptr %private17 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %private17, align 4
  br label %sw.epilog23

sw.bb18:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %private_value19 = getelementptr %struct.snd_kcontrol_new, ptr %22, i32 %i.069, i32 11
  %42 = ptrtoint ptr %private_value19 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %private_value19, align 4
  %44 = inttoptr i32 %43 to ptr
  %private21 = getelementptr inbounds %struct.soc_bytes_ext, ptr %44, i32 0, i32 1, i32 5
  %45 = ptrtoint ptr %private21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %private21, align 4
  br label %sw.epilog23

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.197) #14
  br label %out

sw.epilog23:                                      ; preds = %sw.bb18, %sw.bb14, %if.then12, %sw.bb8.sw.epilog23_crit_edge
  %scontrol.0 = phi ptr [ %46, %sw.bb18 ], [ %41, %sw.bb14 ], [ %32, %if.then12 ], [ %32, %sw.bb8.sw.epilog23_crit_edge ]
  %control_data = getelementptr inbounds %struct.snd_sof_control, ptr %scontrol.0, i32 0, i32 7
  %49 = ptrtoint ptr %control_data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %control_data, align 4
  tail call void @kfree(ptr noundef %50) #11
  %list24 = getelementptr inbounds %struct.snd_sof_control, ptr %scontrol.0, i32 0, i32 10
  %call.i.i56 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list24) #11
  br i1 %call.i.i56, label %if.end.i.i59, label %sw.epilog23.list_del.exit61_crit_edge

sw.epilog23.list_del.exit61_crit_edge:            ; preds = %sw.epilog23
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit61

if.end.i.i59:                                     ; preds = %sw.epilog23
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i57 = getelementptr inbounds %struct.snd_sof_control, ptr %scontrol.0, i32 0, i32 10, i32 1
  %51 = ptrtoint ptr %prev.i.i57 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i57, align 4
  %53 = ptrtoint ptr %list24 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %list24, align 4
  %prev1.i.i.i58 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev1.i.i.i58, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %52, align 4
  br label %list_del.exit61

list_del.exit61:                                  ; preds = %if.end.i.i59, %sw.epilog23.list_del.exit61_crit_edge
  %57 = ptrtoint ptr %list24 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 256 to ptr), ptr %list24, align 4
  %prev.i60 = getelementptr inbounds %struct.snd_sof_control, ptr %scontrol.0, i32 0, i32 10, i32 1
  %58 = ptrtoint ptr %prev.i60 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i60, align 4
  tail call void @kfree(ptr noundef %scontrol.0) #11
  %inc = add nuw nsw i32 %i.069, 1
  %59 = ptrtoint ptr %num_kcontrols to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_kcontrols, align 4
  %cmp = icmp slt i32 %inc, %60
  br i1 %cmp, label %list_del.exit61.for.body_crit_edge, label %list_del.exit61.out_crit_edge

list_del.exit61.out_crit_edge:                    ; preds = %list_del.exit61
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

list_del.exit61.for.body_crit_edge:               ; preds = %list_del.exit61
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

out:                                              ; preds = %list_del.exit61.out_crit_edge, %do.end, %sw.epilog.out_crit_edge
  %private25 = getelementptr inbounds %struct.snd_sof_widget, ptr %1, i32 0, i32 12
  %61 = ptrtoint ptr %private25 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %private25, align 4
  tail call void @kfree(ptr noundef %62) #11
  %list26 = getelementptr inbounds %struct.snd_sof_widget, ptr %1, i32 0, i32 9
  %call.i.i62 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list26) #11
  br i1 %call.i.i62, label %if.end.i.i65, label %out.list_del.exit67_crit_edge

out.list_del.exit67_crit_edge:                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit67

if.end.i.i65:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i63 = getelementptr inbounds %struct.snd_sof_widget, ptr %1, i32 0, i32 9, i32 1
  %63 = ptrtoint ptr %prev.i.i63 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i.i63, align 4
  %65 = ptrtoint ptr %list26 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %list26, align 4
  %prev1.i.i.i64 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %prev1.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev1.i.i.i64, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %66, ptr %64, align 4
  br label %list_del.exit67

list_del.exit67:                                  ; preds = %if.end.i.i65, %out.list_del.exit67_crit_edge
  %69 = ptrtoint ptr %list26 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 256 to ptr), ptr %list26, align 4
  %prev.i66 = getelementptr inbounds %struct.snd_sof_widget, ptr %1, i32 0, i32 9, i32 1
  %70 = ptrtoint ptr %prev.i66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i66, align 4
  tail call void @kfree(ptr noundef nonnull %1) #11
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit67, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_dai_load(ptr noundef %scomp, i32 noundef %index, ptr nocapture noundef writeonly %dai_drv, ptr noundef %pcm, ptr nocapture noundef readnone %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %pcm, i32 0, i32 13
  %tobool.not = icmp eq ptr %pcm, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 2480) #15
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %scomp, ptr %call7.i.i, align 8
  %compress = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %pcm, i32 0, i32 7
  %arrayidx = getelementptr %struct.snd_sof_pcm, ptr %call7.i.i, i32 0, i32 2, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %compress to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %compress, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  %period_elapsed_work13 = getelementptr %struct.snd_sof_pcm, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 5
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @snd_sof_compr_init_elapsed_work(ptr noundef %period_elapsed_work13) #11
  br label %for.inc

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @snd_sof_pcm_init_elapsed_work(ptr noundef %period_elapsed_work13) #11
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then8
  %arrayidx.1 = getelementptr %struct.snd_sof_pcm, ptr %call7.i.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %arrayidx.1, align 8
  %10 = ptrtoint ptr %compress to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %compress, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not.1 = icmp eq i32 %11, 0
  %period_elapsed_work13.1 = getelementptr %struct.snd_sof_pcm, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 5
  br i1 %tobool7.not.1, label %if.else.1, label %if.then8.1

if.then8.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @snd_sof_compr_init_elapsed_work(ptr noundef %period_elapsed_work13.1) #11
  br label %for.inc.1

if.else.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @snd_sof_pcm_init_elapsed_work(ptr noundef %period_elapsed_work13.1) #11
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else.1, %if.then8.1
  %pcm15 = getelementptr inbounds %struct.snd_sof_pcm, ptr %call7.i.i, i32 0, i32 1
  %12 = call ptr @memcpy(ptr %pcm15, ptr %pcm, i32 912)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_dai_load.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_dai_load, %if.then20)) #11
          to label %do.end [label %if.then20], !srcloc !710

if.then20:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %dai_name = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %pcm, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_dai_load.__UNIQUE_ID_ddebug268, ptr noundef %14, ptr noundef nonnull @.str.200, ptr noundef %dai_name) #11
  br label %do.end

do.end:                                           ; preds = %if.then20, %for.inc.1
  %private22 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %dai_drv, i32 0, i32 3, i32 5
  %15 = ptrtoint ptr %private22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %private22, align 4
  %list = getelementptr inbounds %struct.snd_sof_pcm, ptr %call7.i.i, i32 0, i32 3
  %pcm_list = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 35
  %16 = ptrtoint ptr %pcm_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcm_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %pcm_list, ptr noundef %17) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_add.exit_crit_edge

do.end.list_add.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %list, ptr %prev1.i.i, align 4
  %19 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.snd_sof_pcm, ptr %call7.i.i, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pcm_list, ptr %prev3.i.i, align 8
  %21 = ptrtoint ptr %pcm_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %list, ptr %pcm_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.end.list_add.exit_crit_edge
  %array = getelementptr inbounds %struct.snd_soc_tplg_pcm, ptr %pcm, i32 1
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %priv, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %call.i = tail call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @stream_tokens, i32 noundef 2, ptr noundef %array, i32 noundef %24, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  br i1 %tobool25.not, label %if.end32, label %do.end29

do.end29:                                         ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %priv, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.201, i32 noundef %29) #14
  br label %cleanup

if.end32:                                         ; preds = %list_add.exit
  %playback = getelementptr inbounds %struct.snd_sof_pcm, ptr %call7.i.i, i32 0, i32 1, i32 5
  %30 = ptrtoint ptr %playback to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %playback, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool34.not = icmp eq i32 %31, 0
  br i1 %tobool34.not, label %if.end32.capture_crit_edge, label %if.end36

if.end32.capture_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %capture

if.end36:                                         ; preds = %if.end32
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  %page_table = getelementptr inbounds %struct.snd_sof_pcm, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %call.i166 = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %33, i32 noundef 0, i32 noundef 4096, ptr noundef %page_table) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %cmp44 = icmp slt i32 %call.i166, 0
  br i1 %cmp44, label %do.end48, label %if.end51

do.end48:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %name = getelementptr inbounds %struct.snd_sof_pcm, ptr %call7.i.i, i32 0, i32 1, i32 10, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.203, ptr noundef %name, i32 noundef %call.i166) #14
  br label %cleanup

if.end51:                                         ; preds = %if.end36
  %name.i = getelementptr %struct.snd_sof_pcm, ptr %call7.i.i, i32 0, i32 1, i32 10, i32 0, i32 1
  %call.i167 = tail call ptr @snd_sof_find_swidget_sname(ptr noundef %scomp, ptr noundef %name.i, i32 noundef 0) #11
  %tobool.not.i = icmp eq ptr %call.i167, null
  br i1 %tobool.not.i, label %do.end57, label %spcm_bind.exit.thread

spcm_bind.exit.thread:                            ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %comp_id.i = getelementptr inbounds %struct.snd_sof_widget, ptr %call.i167, i32 0, i32 1
  %36 = ptrtoint ptr %comp_id.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %comp_id.i, align 4
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx, align 4
  br label %capture

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.212) #14
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.206) #14
  br label %free_playback_tables

capture:                                          ; preds = %spcm_bind.exit.thread, %if.end32.capture_crit_edge
  %capture61 = getelementptr inbounds %struct.snd_sof_pcm, ptr %call7.i.i, i32 0, i32 1, i32 6
  %43 = ptrtoint ptr %capture61 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %capture61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool62.not = icmp eq i32 %44, 0
  br i1 %tobool62.not, label %capture.cleanup_crit_edge, label %if.end64

capture.cleanup_crit_edge:                        ; preds = %capture
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end64:                                         ; preds = %capture
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 4
  %page_table71 = getelementptr %struct.snd_sof_pcm, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 1
  %call.i170 = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %46, i32 noundef 0, i32 noundef 4096, ptr noundef %page_table71) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170)
  %cmp73 = icmp slt i32 %call.i170, 0
  br i1 %cmp73, label %do.end77, label %if.end81

do.end77:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  %name79 = getelementptr %struct.snd_sof_pcm, ptr %call7.i.i, i32 0, i32 1, i32 10, i32 1, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.203, ptr noundef %name79, i32 noundef %call.i170) #14
  br label %free_playback_tables

if.end81:                                         ; preds = %if.end64
  %name.i171 = getelementptr %struct.snd_sof_pcm, ptr %call7.i.i, i32 0, i32 1, i32 10, i32 1, i32 1
  %call.i172 = tail call ptr @snd_sof_find_swidget_sname(ptr noundef %scomp, ptr noundef %name.i171, i32 noundef 1) #11
  %tobool.not.i173 = icmp eq ptr %call.i172, null
  br i1 %tobool.not.i173, label %do.end87, label %spcm_bind.exit180.thread

spcm_bind.exit180.thread:                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  %comp_id.i176 = getelementptr inbounds %struct.snd_sof_widget, ptr %call.i172, i32 0, i32 1
  %49 = ptrtoint ptr %comp_id.i176 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %comp_id.i176, align 4
  %51 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx.1, align 8
  br label %cleanup

do.end87:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.212) #14
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.206) #14
  tail call void @snd_dma_free_pages(ptr noundef %page_table71) #11
  br label %free_playback_tables

free_playback_tables:                             ; preds = %do.end87, %do.end77, %do.end57
  %ret.1 = phi i32 [ -22, %do.end57 ], [ %call.i170, %do.end77 ], [ -22, %do.end87 ]
  %56 = ptrtoint ptr %playback to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %playback, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool95.not = icmp eq i32 %57, 0
  br i1 %tobool95.not, label %free_playback_tables.cleanup_crit_edge, label %if.then96

free_playback_tables.cleanup_crit_edge:           ; preds = %free_playback_tables
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then96:                                        ; preds = %free_playback_tables
  call void @__sanitizer_cov_trace_pc() #13
  %page_table99 = getelementptr inbounds %struct.snd_sof_pcm, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  tail call void @snd_dma_free_pages(ptr noundef %page_table99) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then96, %free_playback_tables.cleanup_crit_edge, %spcm_bind.exit180.thread, %capture.cleanup_crit_edge, %do.end48, %do.end29, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end29 ], [ %call.i166, %do.end48 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %capture.cleanup_crit_edge ], [ %ret.1, %if.then96 ], [ %ret.1, %free_playback_tables.cleanup_crit_edge ], [ 0, %spcm_bind.exit180.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_dai_unload(ptr nocapture noundef readnone %scomp, ptr nocapture noundef readonly %dobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_soc_dobj, ptr %dobj, i32 0, i32 5
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %playback = getelementptr inbounds %struct.snd_sof_pcm, ptr %1, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %playback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %playback, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %page_table = getelementptr inbounds %struct.snd_sof_pcm, ptr %1, i32 0, i32 2, i32 0, i32 1
  tail call void @snd_dma_free_pages(ptr noundef %page_table) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %capture = getelementptr inbounds %struct.snd_sof_pcm, ptr %1, i32 0, i32 1, i32 6
  %4 = ptrtoint ptr %capture to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capture, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %page_table6 = getelementptr %struct.snd_sof_pcm, ptr %1, i32 0, i32 2, i32 1, i32 1
  tail call void @snd_dma_free_pages(ptr noundef %page_table6) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %list = getelementptr inbounds %struct.snd_sof_pcm, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.list_del.exit_crit_edge

if.end7.list_del.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.snd_sof_pcm, ptr %1, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end7.list_del.exit_crit_edge
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.snd_sof_pcm, ptr %1, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_link_load(ptr nocapture noundef readonly %scomp, i32 noundef %index, ptr nocapture noundef %link, ptr noundef %cfg) #0 align 64 {
entry:
  %common_config = alloca %struct.sof_ipc_dai_config, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.snd_soc_tplg_link_config, ptr %cfg, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %common_config) #11
  %0 = call ptr @memset(ptr %common_config, i32 255, i32 216)
  %platforms = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link, i32 0, i32 6
  %1 = ptrtoint ptr %platforms to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platforms, align 4
  %tobool.not = icmp eq ptr %2, null
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.214) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i235 = phi ptr [ %8, %if.end.i ], [ %6, %if.end.dev_name.exit_crit_edge ]
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %retval.0.i235, ptr %2, align 4
  %no_pcm = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link, i32 0, i32 18
  %10 = ptrtoint ptr %no_pcm to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %no_pcm, align 4
  %11 = and i32 %bf.load, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %if.then4, label %if.end9

if.then4:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %bf.set = or i32 %bf.load, -2147483648
  %12 = ptrtoint ptr %no_pcm to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %bf.set, ptr %no_pcm, align 4
  %trigger = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link, i32 0, i32 12
  %13 = ptrtoint ptr %trigger to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %trigger, align 4
  %arrayidx8 = getelementptr %struct.snd_soc_dai_link, ptr %link, i32 0, i32 12, i32 1
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %arrayidx8, align 4
  br label %cleanup

if.end9:                                          ; preds = %dev_name.exit
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %priv, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.217) #14
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %19 = call ptr @memset(ptr %common_config, i32 0, i32 216)
  %array = getelementptr inbounds %struct.snd_soc_tplg_link_config, ptr %cfg, i32 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %16)
  %call.i = call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef nonnull %common_config, ptr noundef nonnull @dai_link_tokens, i32 noundef 2, ptr noundef %array, i32 noundef %20, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp18.not = icmp eq i32 %call.i, 0
  br i1 %cmp18.not, label %if.end25, label %do.end22

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %priv, align 1
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.220, i32 noundef %25) #14
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %hw_config26 = getelementptr inbounds %struct.snd_soc_tplg_link_config, ptr %cfg, i32 0, i32 6
  %num_hw_configs = getelementptr inbounds %struct.snd_soc_tplg_link_config, ptr %cfg, i32 0, i32 7
  %26 = ptrtoint ptr %num_hw_configs to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %num_hw_configs, align 1
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool28.not = icmp eq i32 %27, 0
  br i1 %tobool28.not, label %if.then29, label %do.body38

if.then29:                                        ; preds = %if.end25
  %type = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %common_config, i32 0, i32 1
  %29 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp30.not = icmp eq i32 %30, 3
  br i1 %cmp30.not, label %if.then29.if.end63_crit_edge, label %do.end34

if.then29.if.end63_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

do.end34:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.223, i32 noundef 0) #14
  br label %cleanup

do.body38:                                        ; preds = %if.end25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_link_load.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_link_load, %if.then43)) #11
          to label %do.end48 [label %if.then43], !srcloc !710

if.then43:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %35 = ptrtoint ptr %num_hw_configs to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %num_hw_configs, align 1
  %default_hw_config_id = getelementptr inbounds %struct.snd_soc_tplg_link_config, ptr %cfg, i32 0, i32 8
  %37 = ptrtoint ptr %default_hw_config_id to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %default_hw_config_id, align 1
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_link_load.__UNIQUE_ID_ddebug280, ptr noundef %34, ptr noundef nonnull @.str.225, i32 noundef %36, i32 noundef %39) #11
  br label %do.end48

do.end48:                                         ; preds = %if.then43, %do.body38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp49416 = icmp sgt i32 %28, 0
  br i1 %cmp49416, label %for.body.lr.ph, label %do.end48.for.end_crit_edge

do.end48.for.end_crit_edge:                       ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end48
  %default_hw_config_id51 = getelementptr inbounds %struct.snd_soc_tplg_link_config, ptr %cfg, i32 0, i32 8
  %40 = ptrtoint ptr %default_hw_config_id51 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %default_hw_config_id51, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %curr_conf.0417 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %id = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.0417, i32 1
  %42 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %id, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %41)
  %cmp52 = icmp eq i32 %43, %41
  br i1 %cmp52, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %curr_conf.0417, 1
  %exitcond.not = icmp eq i32 %inc, %28
  br i1 %exitcond.not, label %for.inc.do.end59_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.end59_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end59

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end48.for.end_crit_edge
  %curr_conf.0.lcssa = phi i32 [ 0, %do.end48.for.end_crit_edge ], [ %curr_conf.0417, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %curr_conf.0.lcssa, i32 %28)
  %cmp55 = icmp eq i32 %curr_conf.0.lcssa, %28
  br i1 %cmp55, label %for.end.do.end59_crit_edge, label %for.end.if.end63_crit_edge

for.end.if.end63_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

for.end.do.end59_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end59

do.end59:                                         ; preds = %for.end.do.end59_crit_edge, %for.inc.do.end59_crit_edge
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  %default_hw_config_id61 = getelementptr inbounds %struct.snd_soc_tplg_link_config, ptr %cfg, i32 0, i32 8
  %46 = ptrtoint ptr %default_hw_config_id61 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %default_hw_config_id61, align 1
  %48 = call i32 @llvm.bswap.i32(i32 %47)
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.227, i32 noundef %48) #14
  br label %cleanup

if.end63:                                         ; preds = %for.end.if.end63_crit_edge, %if.then29.if.end63_crit_edge
  %curr_conf.1 = phi i32 [ %curr_conf.0.lcssa, %for.end.if.end63_crit_edge ], [ 0, %if.then29.if.end63_crit_edge ]
  %num_conf.0 = phi i32 [ %28, %for.end.if.end63_crit_edge ], [ 1, %if.then29.if.end63_crit_edge ]
  %49 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_conf.0, i32 216) #11
  %50 = extractvalue { i32, i1 } %49, 1
  br i1 %50, label %if.end63.cleanup_crit_edge, label %if.end7.i.i, !prof !711

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end63
  %51 = extractvalue { i32, i1 } %49, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %51, i32 noundef 3520) #16
  %tobool65.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool65.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond68.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond68.preheader:                             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_conf.0)
  %cmp69419.not = icmp eq i32 %num_conf.0, 0
  br i1 %cmp69419.not, label %for.cond68.preheader.for.end81_crit_edge, label %for.body70.lr.ph

for.cond68.preheader.for.end81_crit_edge:         ; preds = %for.cond68.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end81

for.body70.lr.ph:                                 ; preds = %for.cond68.preheader
  %type74 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %common_config, i32 0, i32 1
  %52 = ptrtoint ptr %type74 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %type74, align 1
  %dai_index = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %common_config, i32 0, i32 2
  %54 = ptrtoint ptr %dai_index to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %dai_index, align 1
  br label %for.body70

for.body70:                                       ; preds = %for.body70.for.body70_crit_edge, %for.body70.lr.ph
  %i.0420 = phi i32 [ 0, %for.body70.lr.ph ], [ %inc80, %for.body70.for.body70_crit_edge ]
  %cmd = getelementptr %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 %i.0420, i32 0, i32 1
  %56 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -2147418112, ptr %cmd, align 4
  %fmt = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %i.0420, i32 2
  %57 = ptrtoint ptr %fmt to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %fmt, align 1
  %59 = call i32 @llvm.bswap.i32(i32 %58)
  %conv = trunc i32 %59 to i16
  %format = getelementptr %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 %i.0420, i32 3
  %60 = ptrtoint ptr %format to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv, ptr %format, align 8
  %type76 = getelementptr %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 %i.0420, i32 1
  %61 = ptrtoint ptr %type76 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %53, ptr %type76, align 8
  %dai_index78 = getelementptr %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 %i.0420, i32 2
  %62 = ptrtoint ptr %dai_index78 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %55, ptr %dai_index78, align 4
  %inc80 = add nuw nsw i32 %i.0420, 1
  %exitcond421.not = icmp eq i32 %inc80, %num_conf.0
  br i1 %exitcond421.not, label %for.body70.for.end81_crit_edge, label %for.body70.for.body70_crit_edge

for.body70.for.body70_crit_edge:                  ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body70

for.body70.for.end81_crit_edge:                   ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end81

for.end81:                                        ; preds = %for.body70.for.end81_crit_edge, %for.cond68.preheader.for.end81_crit_edge
  %type82 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %common_config, i32 0, i32 1
  %63 = ptrtoint ptr %type82 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %type82, align 1
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.347)
  switch i32 %64, label %do.end112 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb84
    i32 3, label %sw.bb86
    i32 4, label %sw.bb89
    i32 5, label %sw.bb92
    i32 6, label %sw.bb95
    i32 7, label %sw.bb98
    i32 8, label %sw.bb101
    i32 9, label %sw.bb104
    i32 10, label %sw.bb107
  ]

sw.bb:                                            ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #13
  %call83 = call fastcc i32 @sof_link_ssp_load(ptr noundef %scomp, ptr noundef %link, ptr noundef %cfg, ptr noundef %hw_config26, ptr noundef nonnull %call8.i.i, i32 noundef %curr_conf.1)
  br label %sw.epilog

sw.bb84:                                          ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #13
  %call85 = call fastcc i32 @sof_link_dmic_load(ptr noundef %scomp, ptr noundef %link, ptr noundef %cfg, ptr noundef nonnull %call8.i.i)
  br label %sw.epilog

sw.bb86:                                          ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #13
  %call88 = call fastcc i32 @sof_link_hda_load(ptr noundef %scomp, ptr noundef %link, ptr noundef %cfg, ptr noundef nonnull %call8.i.i)
  br label %sw.epilog

sw.bb89:                                          ; preds = %for.end81
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %driver_data.i.i.i, align 4
  %70 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7
  %71 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %priv, align 1
  %73 = call i32 @llvm.bswap.i32(i32 %72) #11
  %call.i.i = call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef %70, ptr noundef nonnull @alh_tokens, i32 noundef 2, ptr noundef %array, i32 noundef %73, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %if.end.i236, label %do.end.i

do.end.i:                                         ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 4
  %76 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %priv, align 1
  %78 = call i32 @llvm.bswap.i32(i32 %77) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.271, i32 noundef %78) #14
  br label %sw.epilog

if.end.i236:                                      ; preds = %sw.bb89
  %79 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 216, ptr %call8.i.i, align 128
  %call.i1.i = call fastcc i32 @sof_set_dai_config_multi(ptr noundef %69, ptr noundef %link, ptr noundef nonnull %call8.i.i, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %cmp6.i = icmp slt i32 %call.i1.i, 0
  br i1 %cmp6.i, label %do.end10.i, label %if.end.i236.sw.epilog_crit_edge

if.end.i236.sw.epilog_crit_edge:                  ; preds = %if.end.i236
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end10.i:                                       ; preds = %if.end.i236
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 4
  %dai_index.i = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 2
  %82 = ptrtoint ptr %dai_index.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dai_index.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.274, i32 noundef %83) #14
  br label %sw.epilog

sw.bb92:                                          ; preds = %for.end81
  %84 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i239 = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 8
  %86 = ptrtoint ptr %driver_data.i.i.i239 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %driver_data.i.i.i239, align 4
  %bclk_provider.i.i = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 6
  %88 = ptrtoint ptr %bclk_provider.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %bclk_provider.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp.i.i = icmp eq i8 %89, 0
  %fsync_provider.i.i = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 7
  %90 = ptrtoint ptr %fsync_provider.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %fsync_provider.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %cmp3.i.i = icmp eq i8 %91, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else12.i.i

if.then.i.i:                                      ; preds = %sw.bb92
  br i1 %cmp3.i.i, label %if.then.i.i.if.end28.i.i_crit_edge, label %if.else.i.i

if.then.i.i.if.end28.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %format8.i.i = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 3
  %92 = ptrtoint ptr %format8.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %format8.i.i, align 16
  %94 = or i16 %93, 12288
  store i16 %94, ptr %format8.i.i, align 16
  br label %if.end28.i.i

if.else12.i.i:                                    ; preds = %sw.bb92
  %format18.i.i = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 3
  %95 = ptrtoint ptr %format18.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %format18.i.i, align 16
  br i1 %cmp3.i.i, label %if.then17.i.i, label %if.else22.i.i

if.then17.i.i:                                    ; preds = %if.else12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %97 = or i16 %96, 8192
  %98 = ptrtoint ptr %format18.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %format18.i.i, align 16
  br label %if.end28.i.i

if.else22.i.i:                                    ; preds = %if.else12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %99 = or i16 %96, 16384
  %100 = ptrtoint ptr %format18.i.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %format18.i.i, align 16
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.else22.i.i, %if.then17.i.i, %if.else.i.i, %if.then.i.i.if.end28.i.i_crit_edge
  %invert_bclk.i.i = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 4
  %101 = ptrtoint ptr %invert_bclk.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %invert_bclk.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i.i = icmp eq i8 %102, 0
  %invert_fsync43.i.i = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 5
  %103 = ptrtoint ptr %invert_fsync43.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %invert_fsync43.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool44.not.i.i = icmp eq i8 %104, 0
  br i1 %tobool.not.i.i, label %if.else42.i.i, label %if.then29.i.i

if.then29.i.i:                                    ; preds = %if.end28.i.i
  %format37.i.i = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 3
  %105 = ptrtoint ptr %format37.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %format37.i.i, align 16
  br i1 %tobool44.not.i.i, label %if.else36.i.i, label %if.then31.i.i

if.then31.i.i:                                    ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %107 = or i16 %106, 1024
  %108 = ptrtoint ptr %format37.i.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %format37.i.i, align 16
  br label %sof_dai_set_format.exit.i

if.else36.i.i:                                    ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %109 = or i16 %106, 768
  %110 = ptrtoint ptr %format37.i.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %format37.i.i, align 16
  br label %sof_dai_set_format.exit.i

if.else42.i.i:                                    ; preds = %if.end28.i.i
  br i1 %tobool44.not.i.i, label %if.else42.i.i.sof_dai_set_format.exit.i_crit_edge, label %if.then45.i.i

if.else42.i.i.sof_dai_set_format.exit.i_crit_edge: ; preds = %if.else42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sof_dai_set_format.exit.i

if.then45.i.i:                                    ; preds = %if.else42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %format46.i.i = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 3
  %111 = ptrtoint ptr %format46.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %format46.i.i, align 16
  %113 = or i16 %112, 512
  store i16 %113, ptr %format46.i.i, align 16
  br label %sof_dai_set_format.exit.i

sof_dai_set_format.exit.i:                        ; preds = %if.then45.i.i, %if.else42.i.i.sof_dai_set_format.exit.i_crit_edge, %if.else36.i.i, %if.then31.i.i
  %114 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7
  %115 = call ptr @memset(ptr %114, i32 0, i32 40)
  %116 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 216, ptr %call8.i.i, align 128
  %117 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %priv, align 1
  %119 = call i32 @llvm.bswap.i32(i32 %118) #11
  %call.i.i242 = call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef %114, ptr noundef nonnull @sai_tokens, i32 noundef 1, ptr noundef %array, i32 noundef %119, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i242)
  %cmp.not.i243 = icmp eq i32 %call.i.i242, 0
  br i1 %cmp.not.i243, label %if.end.i246, label %do.end.i244

do.end.i244:                                      ; preds = %sof_dai_set_format.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %120 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev, align 4
  %122 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %priv, align 1
  %124 = call i32 @llvm.bswap.i32(i32 %123) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.276, i32 noundef %124) #14
  br label %sw.epilog

if.end.i246:                                      ; preds = %sof_dai_set_format.exit.i
  %mclk_rate.i = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 10
  %125 = ptrtoint ptr %mclk_rate.i to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %mclk_rate.i, align 1
  %127 = call i32 @llvm.bswap.i32(i32 %126) #11
  %mclk_rate5.i = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7, i32 0, i32 3
  %128 = ptrtoint ptr %mclk_rate5.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %mclk_rate5.i, align 64
  %bclk_rate.i = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 11
  %129 = ptrtoint ptr %bclk_rate.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %bclk_rate.i, align 1
  %131 = call i32 @llvm.bswap.i32(i32 %130) #11
  %bclk_rate6.i = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7, i32 0, i32 5
  %132 = ptrtoint ptr %bclk_rate6.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %bclk_rate6.i, align 8
  %fsync_rate.i = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 12
  %133 = ptrtoint ptr %fsync_rate.i to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %134 = load i32, ptr %fsync_rate.i, align 1
  %135 = call i32 @llvm.bswap.i32(i32 %134) #11
  %fsync_rate7.i = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7, i32 0, i32 4
  %136 = ptrtoint ptr %fsync_rate7.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %fsync_rate7.i, align 4
  %mclk_direction.i = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 8
  %137 = ptrtoint ptr %mclk_direction.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %mclk_direction.i, align 1
  %conv.i = zext i8 %138 to i32
  %mclk_direction8.i = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7, i32 0, i32 2
  %139 = ptrtoint ptr %mclk_direction8.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %conv.i, ptr %mclk_direction8.i, align 4
  %tdm_slots.i = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 13
  %140 = ptrtoint ptr %tdm_slots.i to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %141 = load i32, ptr %tdm_slots.i, align 1
  %142 = call i32 @llvm.bswap.i32(i32 %141) #11
  %tdm_slots9.i = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7, i32 0, i32 6
  %143 = ptrtoint ptr %tdm_slots9.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %tdm_slots9.i, align 4
  %tdm_slot_width.i = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 14
  %144 = ptrtoint ptr %tdm_slot_width.i to i32
  call void @__asan_loadN_noabort(i32 %144, i32 4)
  %145 = load i32, ptr %tdm_slot_width.i, align 1
  %146 = call i32 @llvm.bswap.i32(i32 %145) #11
  %conv10.i = trunc i32 %146 to i16
  %tdm_slot_width11.i = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7, i32 0, i32 11
  %147 = ptrtoint ptr %tdm_slot_width11.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %conv10.i, ptr %tdm_slot_width11.i, align 8
  %rx_slots.i = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 16
  %148 = ptrtoint ptr %rx_slots.i to i32
  call void @__asan_loadN_noabort(i32 %148, i32 4)
  %149 = load i32, ptr %rx_slots.i, align 1
  %150 = call i32 @llvm.bswap.i32(i32 %149) #11
  %rx_slots12.i = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7, i32 0, i32 8
  %151 = ptrtoint ptr %rx_slots12.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %rx_slots12.i, align 16
  %tx_slots.i = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 15
  %152 = ptrtoint ptr %tx_slots.i to i32
  call void @__asan_loadN_noabort(i32 %152, i32 4)
  %153 = load i32, ptr %tx_slots.i, align 1
  %154 = call i32 @llvm.bswap.i32(i32 %153) #11
  %tx_slots13.i = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7, i32 0, i32 10
  %155 = ptrtoint ptr %tx_slots13.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %tx_slots13.i, align 4
  %156 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev, align 4
  %dai_index.i245 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 2
  %158 = ptrtoint ptr %dai_index.i245 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %dai_index.i245, align 4
  %format.i = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 3
  %160 = ptrtoint ptr %format.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %format.i, align 16
  %conv18.i = zext i16 %161 to i32
  %conv21.i = and i32 %146, 65535
  %mclk_id.i = getelementptr inbounds %struct.sof_ipc_dai_sai_params, ptr %114, i32 0, i32 2
  %162 = ptrtoint ptr %mclk_id.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %mclk_id.i, align 2
  %conv23.i = zext i16 %163 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %157, ptr noundef nonnull @.str.279, i32 noundef %159, i32 noundef %conv18.i, i32 noundef %127, i32 noundef %conv21.i, i32 noundef %142, i32 noundef %conv23.i) #14
  %164 = ptrtoint ptr %tdm_slots9.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %tdm_slots9.i, align 4
  %166 = add i32 %165, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %166)
  %167 = icmp ult i32 %166, -8
  br i1 %167, label %do.end33.i, label %if.end36.i

do.end33.i:                                       ; preds = %if.end.i246
  call void @__sanitizer_cov_trace_pc() #13
  %168 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev, align 4
  %170 = ptrtoint ptr %dai_index.i245 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %dai_index.i245, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %169, ptr noundef nonnull @.str.283, i32 noundef %171) #14
  br label %sw.epilog

if.end36.i:                                       ; preds = %if.end.i246
  %call.i1.i247 = call fastcc i32 @sof_set_dai_config_multi(ptr noundef %87, ptr noundef %link, ptr noundef nonnull %call8.i.i, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i247)
  %cmp38.i = icmp slt i32 %call.i1.i247, 0
  br i1 %cmp38.i, label %do.end43.i, label %if.end36.i.sw.epilog_crit_edge

if.end36.i.sw.epilog_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end43.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #13
  %172 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev, align 4
  %174 = ptrtoint ptr %dai_index.i245 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %dai_index.i245, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %173, ptr noundef nonnull @.str.286, i32 noundef %175) #14
  br label %sw.epilog

sw.bb95:                                          ; preds = %for.end81
  %176 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i250 = getelementptr inbounds %struct.device, ptr %177, i32 0, i32 8
  %178 = ptrtoint ptr %driver_data.i.i.i250 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %driver_data.i.i.i250, align 4
  %bclk_provider.i.i252 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 6
  %180 = ptrtoint ptr %bclk_provider.i.i252 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %bclk_provider.i.i252, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %cmp.i.i253 = icmp eq i8 %181, 0
  %fsync_provider.i.i254 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 7
  %182 = ptrtoint ptr %fsync_provider.i.i254 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %fsync_provider.i.i254, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %cmp3.i.i255 = icmp eq i8 %183, 0
  br i1 %cmp.i.i253, label %if.then.i.i256, label %if.else12.i.i260

if.then.i.i256:                                   ; preds = %sw.bb95
  br i1 %cmp3.i.i255, label %if.then.i.i256.if.end28.i.i267_crit_edge, label %if.else.i.i258

if.then.i.i256.if.end28.i.i267_crit_edge:         ; preds = %if.then.i.i256
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i.i267

if.else.i.i258:                                   ; preds = %if.then.i.i256
  call void @__sanitizer_cov_trace_pc() #13
  %format8.i.i257 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 3
  %184 = ptrtoint ptr %format8.i.i257 to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %format8.i.i257, align 16
  %186 = or i16 %185, 12288
  store i16 %186, ptr %format8.i.i257, align 16
  br label %if.end28.i.i267

if.else12.i.i260:                                 ; preds = %sw.bb95
  %format18.i.i259 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 3
  %187 = ptrtoint ptr %format18.i.i259 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %format18.i.i259, align 16
  br i1 %cmp3.i.i255, label %if.then17.i.i261, label %if.else22.i.i262

if.then17.i.i261:                                 ; preds = %if.else12.i.i260
  call void @__sanitizer_cov_trace_pc() #13
  %189 = or i16 %188, 8192
  %190 = ptrtoint ptr %format18.i.i259 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %189, ptr %format18.i.i259, align 16
  br label %if.end28.i.i267

if.else22.i.i262:                                 ; preds = %if.else12.i.i260
  call void @__sanitizer_cov_trace_pc() #13
  %191 = or i16 %188, 16384
  %192 = ptrtoint ptr %format18.i.i259 to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 %191, ptr %format18.i.i259, align 16
  br label %if.end28.i.i267

if.end28.i.i267:                                  ; preds = %if.else22.i.i262, %if.then17.i.i261, %if.else.i.i258, %if.then.i.i256.if.end28.i.i267_crit_edge
  %invert_bclk.i.i263 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 4
  %193 = ptrtoint ptr %invert_bclk.i.i263 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %invert_bclk.i.i263, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool.not.i.i264 = icmp eq i8 %194, 0
  %invert_fsync43.i.i265 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 5
  %195 = ptrtoint ptr %invert_fsync43.i.i265 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %invert_fsync43.i.i265, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool44.not.i.i266 = icmp eq i8 %196, 0
  br i1 %tobool.not.i.i264, label %if.else42.i.i272, label %if.then29.i.i269

if.then29.i.i269:                                 ; preds = %if.end28.i.i267
  %format37.i.i268 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 3
  %197 = ptrtoint ptr %format37.i.i268 to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %format37.i.i268, align 16
  br i1 %tobool44.not.i.i266, label %if.else36.i.i271, label %if.then31.i.i270

if.then31.i.i270:                                 ; preds = %if.then29.i.i269
  call void @__sanitizer_cov_trace_pc() #13
  %199 = or i16 %198, 1024
  %200 = ptrtoint ptr %format37.i.i268 to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %199, ptr %format37.i.i268, align 16
  br label %sof_dai_set_format.exit.i278

if.else36.i.i271:                                 ; preds = %if.then29.i.i269
  call void @__sanitizer_cov_trace_pc() #13
  %201 = or i16 %198, 768
  %202 = ptrtoint ptr %format37.i.i268 to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %201, ptr %format37.i.i268, align 16
  br label %sof_dai_set_format.exit.i278

if.else42.i.i272:                                 ; preds = %if.end28.i.i267
  br i1 %tobool44.not.i.i266, label %if.else42.i.i272.sof_dai_set_format.exit.i278_crit_edge, label %if.then45.i.i274

if.else42.i.i272.sof_dai_set_format.exit.i278_crit_edge: ; preds = %if.else42.i.i272
  call void @__sanitizer_cov_trace_pc() #13
  br label %sof_dai_set_format.exit.i278

if.then45.i.i274:                                 ; preds = %if.else42.i.i272
  call void @__sanitizer_cov_trace_pc() #13
  %format46.i.i273 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 3
  %203 = ptrtoint ptr %format46.i.i273 to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %format46.i.i273, align 16
  %205 = or i16 %204, 512
  store i16 %205, ptr %format46.i.i273, align 16
  br label %sof_dai_set_format.exit.i278

sof_dai_set_format.exit.i278:                     ; preds = %if.then45.i.i274, %if.else42.i.i272.sof_dai_set_format.exit.i278_crit_edge, %if.else36.i.i271, %if.then31.i.i270
  %206 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7
  %207 = call ptr @memset(ptr %206, i32 0, i32 40)
  %208 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 216, ptr %call8.i.i, align 128
  %209 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %209, i32 4)
  %210 = load i32, ptr %priv, align 1
  %211 = call i32 @llvm.bswap.i32(i32 %210) #11
  %call.i.i276 = call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef %206, ptr noundef nonnull @esai_tokens, i32 noundef 1, ptr noundef %array, i32 noundef %211, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i276)
  %cmp.not.i277 = icmp eq i32 %call.i.i276, 0
  br i1 %cmp.not.i277, label %if.end.i304, label %do.end.i279

do.end.i279:                                      ; preds = %sof_dai_set_format.exit.i278
  call void @__sanitizer_cov_trace_pc() #13
  %212 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev, align 4
  %214 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %214, i32 4)
  %215 = load i32, ptr %priv, align 1
  %216 = call i32 @llvm.bswap.i32(i32 %215) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %213, ptr noundef nonnull @.str.288, i32 noundef %216) #14
  br label %sw.epilog

if.end.i304:                                      ; preds = %sof_dai_set_format.exit.i278
  %mclk_rate.i280 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 10
  %217 = ptrtoint ptr %mclk_rate.i280 to i32
  call void @__asan_loadN_noabort(i32 %217, i32 4)
  %218 = load i32, ptr %mclk_rate.i280, align 1
  %219 = call i32 @llvm.bswap.i32(i32 %218) #11
  %mclk_rate5.i281 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7, i32 0, i32 3
  %220 = ptrtoint ptr %mclk_rate5.i281 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %219, ptr %mclk_rate5.i281, align 64
  %bclk_rate.i282 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 11
  %221 = ptrtoint ptr %bclk_rate.i282 to i32
  call void @__asan_loadN_noabort(i32 %221, i32 4)
  %222 = load i32, ptr %bclk_rate.i282, align 1
  %223 = call i32 @llvm.bswap.i32(i32 %222) #11
  %bclk_rate6.i283 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7, i32 0, i32 5
  %224 = ptrtoint ptr %bclk_rate6.i283 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %bclk_rate6.i283, align 8
  %fsync_rate.i284 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 12
  %225 = ptrtoint ptr %fsync_rate.i284 to i32
  call void @__asan_loadN_noabort(i32 %225, i32 4)
  %226 = load i32, ptr %fsync_rate.i284, align 1
  %227 = call i32 @llvm.bswap.i32(i32 %226) #11
  %fsync_rate7.i285 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7, i32 0, i32 4
  %228 = ptrtoint ptr %fsync_rate7.i285 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %227, ptr %fsync_rate7.i285, align 4
  %mclk_direction.i286 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 8
  %229 = ptrtoint ptr %mclk_direction.i286 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %mclk_direction.i286, align 1
  %conv.i287 = zext i8 %230 to i32
  %mclk_direction8.i288 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7, i32 0, i32 2
  %231 = ptrtoint ptr %mclk_direction8.i288 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %conv.i287, ptr %mclk_direction8.i288, align 4
  %tdm_slots.i289 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 13
  %232 = ptrtoint ptr %tdm_slots.i289 to i32
  call void @__asan_loadN_noabort(i32 %232, i32 4)
  %233 = load i32, ptr %tdm_slots.i289, align 1
  %234 = call i32 @llvm.bswap.i32(i32 %233) #11
  %tdm_slots9.i290 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7, i32 0, i32 6
  %235 = ptrtoint ptr %tdm_slots9.i290 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %234, ptr %tdm_slots9.i290, align 4
  %tdm_slot_width.i291 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 14
  %236 = ptrtoint ptr %tdm_slot_width.i291 to i32
  call void @__asan_loadN_noabort(i32 %236, i32 4)
  %237 = load i32, ptr %tdm_slot_width.i291, align 1
  %238 = call i32 @llvm.bswap.i32(i32 %237) #11
  %conv10.i292 = trunc i32 %238 to i16
  %tdm_slot_width11.i293 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7, i32 0, i32 11
  %239 = ptrtoint ptr %tdm_slot_width11.i293 to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 %conv10.i292, ptr %tdm_slot_width11.i293, align 8
  %rx_slots.i294 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 16
  %240 = ptrtoint ptr %rx_slots.i294 to i32
  call void @__asan_loadN_noabort(i32 %240, i32 4)
  %241 = load i32, ptr %rx_slots.i294, align 1
  %242 = call i32 @llvm.bswap.i32(i32 %241) #11
  %rx_slots12.i295 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7, i32 0, i32 8
  %243 = ptrtoint ptr %rx_slots12.i295 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %242, ptr %rx_slots12.i295, align 16
  %tx_slots.i296 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 15
  %244 = ptrtoint ptr %tx_slots.i296 to i32
  call void @__asan_loadN_noabort(i32 %244, i32 4)
  %245 = load i32, ptr %tx_slots.i296, align 1
  %246 = call i32 @llvm.bswap.i32(i32 %245) #11
  %tx_slots13.i297 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7, i32 0, i32 10
  %247 = ptrtoint ptr %tx_slots13.i297 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %246, ptr %tx_slots13.i297, align 4
  %248 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %dev, align 4
  %dai_index.i298 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 2
  %250 = ptrtoint ptr %dai_index.i298 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %dai_index.i298, align 4
  %format.i299 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 3
  %252 = ptrtoint ptr %format.i299 to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %format.i299, align 16
  %conv18.i300 = zext i16 %253 to i32
  %conv21.i301 = and i32 %238, 65535
  %mclk_id.i302 = getelementptr inbounds %struct.sof_ipc_dai_esai_params, ptr %206, i32 0, i32 2
  %254 = ptrtoint ptr %mclk_id.i302 to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %mclk_id.i302, align 2
  %conv23.i303 = zext i16 %255 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %249, ptr noundef nonnull @.str.291, i32 noundef %251, i32 noundef %conv18.i300, i32 noundef %219, i32 noundef %conv21.i301, i32 noundef %234, i32 noundef %conv23.i303) #14
  %256 = ptrtoint ptr %tdm_slots9.i290 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %tdm_slots9.i290, align 4
  %258 = add i32 %257, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %258)
  %259 = icmp ult i32 %258, -8
  br i1 %259, label %do.end33.i305, label %if.end36.i308

do.end33.i305:                                    ; preds = %if.end.i304
  call void @__sanitizer_cov_trace_pc() #13
  %260 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %dev, align 4
  %262 = ptrtoint ptr %dai_index.i298 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %dai_index.i298, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %261, ptr noundef nonnull @.str.294, i32 noundef %263) #14
  br label %sw.epilog

if.end36.i308:                                    ; preds = %if.end.i304
  %call.i1.i306 = call fastcc i32 @sof_set_dai_config_multi(ptr noundef %179, ptr noundef %link, ptr noundef nonnull %call8.i.i, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i306)
  %cmp38.i307 = icmp slt i32 %call.i1.i306, 0
  br i1 %cmp38.i307, label %do.end43.i309, label %if.end36.i308.sw.epilog_crit_edge

if.end36.i308.sw.epilog_crit_edge:                ; preds = %if.end36.i308
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end43.i309:                                    ; preds = %if.end36.i308
  call void @__sanitizer_cov_trace_pc() #13
  %264 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %dev, align 4
  %266 = ptrtoint ptr %dai_index.i298 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %dai_index.i298, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %265, ptr noundef nonnull @.str.297, i32 noundef %267) #14
  br label %sw.epilog

sw.bb98:                                          ; preds = %for.end81
  %268 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i312 = getelementptr inbounds %struct.device, ptr %269, i32 0, i32 8
  %270 = ptrtoint ptr %driver_data.i.i.i312 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %driver_data.i.i.i312, align 4
  %bclk_provider.i.i313 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 6
  %272 = ptrtoint ptr %bclk_provider.i.i313 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %bclk_provider.i.i313, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %273)
  %cmp.i.i314 = icmp eq i8 %273, 0
  %fsync_provider.i.i315 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 7
  %274 = ptrtoint ptr %fsync_provider.i.i315 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %fsync_provider.i.i315, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %275)
  %cmp3.i.i316 = icmp eq i8 %275, 0
  br i1 %cmp.i.i314, label %if.then.i.i317, label %if.else12.i.i321

if.then.i.i317:                                   ; preds = %sw.bb98
  br i1 %cmp3.i.i316, label %if.then.i.i317.if.end28.i.i328_crit_edge, label %if.else.i.i319

if.then.i.i317.if.end28.i.i328_crit_edge:         ; preds = %if.then.i.i317
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i.i328

if.else.i.i319:                                   ; preds = %if.then.i.i317
  call void @__sanitizer_cov_trace_pc() #13
  %format8.i.i318 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 3
  %276 = ptrtoint ptr %format8.i.i318 to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %format8.i.i318, align 16
  %278 = or i16 %277, 12288
  store i16 %278, ptr %format8.i.i318, align 16
  br label %if.end28.i.i328

if.else12.i.i321:                                 ; preds = %sw.bb98
  %format18.i.i320 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 3
  %279 = ptrtoint ptr %format18.i.i320 to i32
  call void @__asan_load2_noabort(i32 %279)
  %280 = load i16, ptr %format18.i.i320, align 16
  br i1 %cmp3.i.i316, label %if.then17.i.i322, label %if.else22.i.i323

if.then17.i.i322:                                 ; preds = %if.else12.i.i321
  call void @__sanitizer_cov_trace_pc() #13
  %281 = or i16 %280, 8192
  %282 = ptrtoint ptr %format18.i.i320 to i32
  call void @__asan_store2_noabort(i32 %282)
  store i16 %281, ptr %format18.i.i320, align 16
  br label %if.end28.i.i328

if.else22.i.i323:                                 ; preds = %if.else12.i.i321
  call void @__sanitizer_cov_trace_pc() #13
  %283 = or i16 %280, 16384
  %284 = ptrtoint ptr %format18.i.i320 to i32
  call void @__asan_store2_noabort(i32 %284)
  store i16 %283, ptr %format18.i.i320, align 16
  br label %if.end28.i.i328

if.end28.i.i328:                                  ; preds = %if.else22.i.i323, %if.then17.i.i322, %if.else.i.i319, %if.then.i.i317.if.end28.i.i328_crit_edge
  %invert_bclk.i.i324 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 4
  %285 = ptrtoint ptr %invert_bclk.i.i324 to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %invert_bclk.i.i324, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %286)
  %tobool.not.i.i325 = icmp eq i8 %286, 0
  %invert_fsync43.i.i326 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 5
  %287 = ptrtoint ptr %invert_fsync43.i.i326 to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %invert_fsync43.i.i326, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %288)
  %tobool44.not.i.i327 = icmp eq i8 %288, 0
  br i1 %tobool.not.i.i325, label %if.else42.i.i333, label %if.then29.i.i330

if.then29.i.i330:                                 ; preds = %if.end28.i.i328
  %format37.i.i329 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 3
  %289 = ptrtoint ptr %format37.i.i329 to i32
  call void @__asan_load2_noabort(i32 %289)
  %290 = load i16, ptr %format37.i.i329, align 16
  br i1 %tobool44.not.i.i327, label %if.else36.i.i332, label %if.then31.i.i331

if.then31.i.i331:                                 ; preds = %if.then29.i.i330
  call void @__sanitizer_cov_trace_pc() #13
  %291 = or i16 %290, 1024
  %292 = ptrtoint ptr %format37.i.i329 to i32
  call void @__asan_store2_noabort(i32 %292)
  store i16 %291, ptr %format37.i.i329, align 16
  br label %sof_dai_set_format.exit.i340

if.else36.i.i332:                                 ; preds = %if.then29.i.i330
  call void @__sanitizer_cov_trace_pc() #13
  %293 = or i16 %290, 768
  %294 = ptrtoint ptr %format37.i.i329 to i32
  call void @__asan_store2_noabort(i32 %294)
  store i16 %293, ptr %format37.i.i329, align 16
  br label %sof_dai_set_format.exit.i340

if.else42.i.i333:                                 ; preds = %if.end28.i.i328
  br i1 %tobool44.not.i.i327, label %if.else42.i.i333.sof_dai_set_format.exit.i340_crit_edge, label %if.then45.i.i335

if.else42.i.i333.sof_dai_set_format.exit.i340_crit_edge: ; preds = %if.else42.i.i333
  call void @__sanitizer_cov_trace_pc() #13
  br label %sof_dai_set_format.exit.i340

if.then45.i.i335:                                 ; preds = %if.else42.i.i333
  call void @__sanitizer_cov_trace_pc() #13
  %format46.i.i334 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 3
  %295 = ptrtoint ptr %format46.i.i334 to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %format46.i.i334, align 16
  %297 = or i16 %296, 512
  store i16 %297, ptr %format46.i.i334, align 16
  br label %sof_dai_set_format.exit.i340

sof_dai_set_format.exit.i340:                     ; preds = %if.then45.i.i335, %if.else42.i.i333.sof_dai_set_format.exit.i340_crit_edge, %if.else36.i.i332, %if.then31.i.i331
  %298 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7
  %299 = call ptr @memset(ptr %298, i32 0, i32 12)
  %300 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 216, ptr %call8.i.i, align 128
  %fsync_rate.i336 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 12
  %301 = ptrtoint ptr %fsync_rate.i336 to i32
  call void @__asan_loadN_noabort(i32 %301, i32 4)
  %302 = load i32, ptr %fsync_rate.i336, align 1
  %303 = call i32 @llvm.bswap.i32(i32 %302) #11
  %fsync_rate2.i = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7, i32 0, i32 1
  %304 = ptrtoint ptr %fsync_rate2.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %303, ptr %fsync_rate2.i, align 8
  %tdm_slots.i337 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 13
  %305 = ptrtoint ptr %tdm_slots.i337 to i32
  call void @__asan_loadN_noabort(i32 %305, i32 4)
  %306 = load i32, ptr %tdm_slots.i337, align 1
  %307 = call i32 @llvm.bswap.i32(i32 %306) #11
  %tdm_slots3.i = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7, i32 0, i32 2
  %308 = ptrtoint ptr %tdm_slots3.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %307, ptr %tdm_slots3.i, align 4
  %309 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %dev, align 4
  %dai_index.i338 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 2
  %311 = ptrtoint ptr %dai_index.i338 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %dai_index.i338, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %310, ptr noundef nonnull @.str.299, i32 noundef %312, i32 noundef %307, i32 noundef %303) #14
  %call.i.i339 = call fastcc i32 @sof_set_dai_config_multi(ptr noundef %271, ptr noundef %link, ptr noundef nonnull %call8.i.i, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i339)
  %cmp.i = icmp slt i32 %call.i.i339, 0
  br i1 %cmp.i, label %do.end9.i, label %sof_dai_set_format.exit.i340.sw.epilog_crit_edge

sof_dai_set_format.exit.i340.sw.epilog_crit_edge: ; preds = %sof_dai_set_format.exit.i340
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end9.i:                                        ; preds = %sof_dai_set_format.exit.i340
  call void @__sanitizer_cov_trace_pc() #13
  %313 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %dev, align 4
  %315 = ptrtoint ptr %dai_index.i338 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %dai_index.i338, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %314, ptr noundef nonnull @.str.302, i32 noundef %316) #14
  br label %sw.epilog

sw.bb101:                                         ; preds = %for.end81
  %317 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i343 = getelementptr inbounds %struct.device, ptr %318, i32 0, i32 8
  %319 = ptrtoint ptr %driver_data.i.i.i343 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %driver_data.i.i.i343, align 4
  %bclk_provider.i.i344 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 6
  %321 = ptrtoint ptr %bclk_provider.i.i344 to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %bclk_provider.i.i344, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %322)
  %cmp.i.i345 = icmp eq i8 %322, 0
  %fsync_provider.i.i346 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 7
  %323 = ptrtoint ptr %fsync_provider.i.i346 to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %fsync_provider.i.i346, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %324)
  %cmp3.i.i347 = icmp eq i8 %324, 0
  br i1 %cmp.i.i345, label %if.then.i.i348, label %if.else12.i.i352

if.then.i.i348:                                   ; preds = %sw.bb101
  br i1 %cmp3.i.i347, label %if.then.i.i348.if.end28.i.i359_crit_edge, label %if.else.i.i350

if.then.i.i348.if.end28.i.i359_crit_edge:         ; preds = %if.then.i.i348
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i.i359

if.else.i.i350:                                   ; preds = %if.then.i.i348
  call void @__sanitizer_cov_trace_pc() #13
  %format8.i.i349 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 3
  %325 = ptrtoint ptr %format8.i.i349 to i32
  call void @__asan_load2_noabort(i32 %325)
  %326 = load i16, ptr %format8.i.i349, align 16
  %327 = or i16 %326, 12288
  store i16 %327, ptr %format8.i.i349, align 16
  br label %if.end28.i.i359

if.else12.i.i352:                                 ; preds = %sw.bb101
  %format18.i.i351 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 3
  %328 = ptrtoint ptr %format18.i.i351 to i32
  call void @__asan_load2_noabort(i32 %328)
  %329 = load i16, ptr %format18.i.i351, align 16
  br i1 %cmp3.i.i347, label %if.then17.i.i353, label %if.else22.i.i354

if.then17.i.i353:                                 ; preds = %if.else12.i.i352
  call void @__sanitizer_cov_trace_pc() #13
  %330 = or i16 %329, 8192
  %331 = ptrtoint ptr %format18.i.i351 to i32
  call void @__asan_store2_noabort(i32 %331)
  store i16 %330, ptr %format18.i.i351, align 16
  br label %if.end28.i.i359

if.else22.i.i354:                                 ; preds = %if.else12.i.i352
  call void @__sanitizer_cov_trace_pc() #13
  %332 = or i16 %329, 16384
  %333 = ptrtoint ptr %format18.i.i351 to i32
  call void @__asan_store2_noabort(i32 %333)
  store i16 %332, ptr %format18.i.i351, align 16
  br label %if.end28.i.i359

if.end28.i.i359:                                  ; preds = %if.else22.i.i354, %if.then17.i.i353, %if.else.i.i350, %if.then.i.i348.if.end28.i.i359_crit_edge
  %invert_bclk.i.i355 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 4
  %334 = ptrtoint ptr %invert_bclk.i.i355 to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %invert_bclk.i.i355, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %335)
  %tobool.not.i.i356 = icmp eq i8 %335, 0
  %invert_fsync43.i.i357 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 5
  %336 = ptrtoint ptr %invert_fsync43.i.i357 to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %invert_fsync43.i.i357, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %337)
  %tobool44.not.i.i358 = icmp eq i8 %337, 0
  br i1 %tobool.not.i.i356, label %if.else42.i.i364, label %if.then29.i.i361

if.then29.i.i361:                                 ; preds = %if.end28.i.i359
  %format37.i.i360 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 3
  %338 = ptrtoint ptr %format37.i.i360 to i32
  call void @__asan_load2_noabort(i32 %338)
  %339 = load i16, ptr %format37.i.i360, align 16
  br i1 %tobool44.not.i.i358, label %if.else36.i.i363, label %if.then31.i.i362

if.then31.i.i362:                                 ; preds = %if.then29.i.i361
  call void @__sanitizer_cov_trace_pc() #13
  %340 = or i16 %339, 1024
  %341 = ptrtoint ptr %format37.i.i360 to i32
  call void @__asan_store2_noabort(i32 %341)
  store i16 %340, ptr %format37.i.i360, align 16
  br label %sof_dai_set_format.exit.i374

if.else36.i.i363:                                 ; preds = %if.then29.i.i361
  call void @__sanitizer_cov_trace_pc() #13
  %342 = or i16 %339, 768
  %343 = ptrtoint ptr %format37.i.i360 to i32
  call void @__asan_store2_noabort(i32 %343)
  store i16 %342, ptr %format37.i.i360, align 16
  br label %sof_dai_set_format.exit.i374

if.else42.i.i364:                                 ; preds = %if.end28.i.i359
  br i1 %tobool44.not.i.i358, label %if.else42.i.i364.sof_dai_set_format.exit.i374_crit_edge, label %if.then45.i.i366

if.else42.i.i364.sof_dai_set_format.exit.i374_crit_edge: ; preds = %if.else42.i.i364
  call void @__sanitizer_cov_trace_pc() #13
  br label %sof_dai_set_format.exit.i374

if.then45.i.i366:                                 ; preds = %if.else42.i.i364
  call void @__sanitizer_cov_trace_pc() #13
  %format46.i.i365 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 3
  %344 = ptrtoint ptr %format46.i.i365 to i32
  call void @__asan_load2_noabort(i32 %344)
  %345 = load i16, ptr %format46.i.i365, align 16
  %346 = or i16 %345, 512
  store i16 %346, ptr %format46.i.i365, align 16
  br label %sof_dai_set_format.exit.i374

sof_dai_set_format.exit.i374:                     ; preds = %if.then45.i.i366, %if.else42.i.i364.sof_dai_set_format.exit.i374_crit_edge, %if.else36.i.i363, %if.then31.i.i362
  %347 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7
  %348 = call ptr @memset(ptr %347, i32 0, i32 12)
  %349 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 216, ptr %call8.i.i, align 128
  %fsync_rate.i367 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 12
  %350 = ptrtoint ptr %fsync_rate.i367 to i32
  call void @__asan_loadN_noabort(i32 %350, i32 4)
  %351 = load i32, ptr %fsync_rate.i367, align 1
  %352 = call i32 @llvm.bswap.i32(i32 %351) #11
  %fsync_rate2.i368 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7, i32 0, i32 1
  %353 = ptrtoint ptr %fsync_rate2.i368 to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 %352, ptr %fsync_rate2.i368, align 8
  %tdm_slots.i369 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 13
  %354 = ptrtoint ptr %tdm_slots.i369 to i32
  call void @__asan_loadN_noabort(i32 %354, i32 4)
  %355 = load i32, ptr %tdm_slots.i369, align 1
  %356 = call i32 @llvm.bswap.i32(i32 %355) #11
  %tdm_slots3.i370 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7, i32 0, i32 2
  %357 = ptrtoint ptr %tdm_slots3.i370 to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 %356, ptr %tdm_slots3.i370, align 4
  %358 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %dev, align 4
  %dai_index.i371 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 2
  %360 = ptrtoint ptr %dai_index.i371 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %dai_index.i371, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %359, ptr noundef nonnull @.str.304, i32 noundef %361, i32 noundef %356, i32 noundef %352) #14
  %call.i.i372 = call fastcc i32 @sof_set_dai_config_multi(ptr noundef %320, ptr noundef %link, ptr noundef nonnull %call8.i.i, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i372)
  %cmp.i373 = icmp slt i32 %call.i.i372, 0
  br i1 %cmp.i373, label %do.end9.i375, label %sof_dai_set_format.exit.i374.sw.epilog_crit_edge

sof_dai_set_format.exit.i374.sw.epilog_crit_edge: ; preds = %sof_dai_set_format.exit.i374
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end9.i375:                                     ; preds = %sof_dai_set_format.exit.i374
  call void @__sanitizer_cov_trace_pc() #13
  %362 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %dev, align 4
  %364 = ptrtoint ptr %dai_index.i371 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %dai_index.i371, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %363, ptr noundef nonnull @.str.307, i32 noundef %365) #14
  br label %sw.epilog

sw.bb104:                                         ; preds = %for.end81
  %366 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i378 = getelementptr inbounds %struct.device, ptr %367, i32 0, i32 8
  %368 = ptrtoint ptr %driver_data.i.i.i378 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %driver_data.i.i.i378, align 4
  %bclk_provider.i.i379 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 6
  %370 = ptrtoint ptr %bclk_provider.i.i379 to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %bclk_provider.i.i379, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %371)
  %cmp.i.i380 = icmp eq i8 %371, 0
  %fsync_provider.i.i381 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 7
  %372 = ptrtoint ptr %fsync_provider.i.i381 to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %fsync_provider.i.i381, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %373)
  %cmp3.i.i382 = icmp eq i8 %373, 0
  br i1 %cmp.i.i380, label %if.then.i.i383, label %if.else12.i.i387

if.then.i.i383:                                   ; preds = %sw.bb104
  br i1 %cmp3.i.i382, label %if.then.i.i383.if.end28.i.i394_crit_edge, label %if.else.i.i385

if.then.i.i383.if.end28.i.i394_crit_edge:         ; preds = %if.then.i.i383
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i.i394

if.else.i.i385:                                   ; preds = %if.then.i.i383
  call void @__sanitizer_cov_trace_pc() #13
  %format8.i.i384 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 3
  %374 = ptrtoint ptr %format8.i.i384 to i32
  call void @__asan_load2_noabort(i32 %374)
  %375 = load i16, ptr %format8.i.i384, align 16
  %376 = or i16 %375, 12288
  store i16 %376, ptr %format8.i.i384, align 16
  br label %if.end28.i.i394

if.else12.i.i387:                                 ; preds = %sw.bb104
  %format18.i.i386 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 3
  %377 = ptrtoint ptr %format18.i.i386 to i32
  call void @__asan_load2_noabort(i32 %377)
  %378 = load i16, ptr %format18.i.i386, align 16
  br i1 %cmp3.i.i382, label %if.then17.i.i388, label %if.else22.i.i389

if.then17.i.i388:                                 ; preds = %if.else12.i.i387
  call void @__sanitizer_cov_trace_pc() #13
  %379 = or i16 %378, 8192
  %380 = ptrtoint ptr %format18.i.i386 to i32
  call void @__asan_store2_noabort(i32 %380)
  store i16 %379, ptr %format18.i.i386, align 16
  br label %if.end28.i.i394

if.else22.i.i389:                                 ; preds = %if.else12.i.i387
  call void @__sanitizer_cov_trace_pc() #13
  %381 = or i16 %378, 16384
  %382 = ptrtoint ptr %format18.i.i386 to i32
  call void @__asan_store2_noabort(i32 %382)
  store i16 %381, ptr %format18.i.i386, align 16
  br label %if.end28.i.i394

if.end28.i.i394:                                  ; preds = %if.else22.i.i389, %if.then17.i.i388, %if.else.i.i385, %if.then.i.i383.if.end28.i.i394_crit_edge
  %invert_bclk.i.i390 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 4
  %383 = ptrtoint ptr %invert_bclk.i.i390 to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %invert_bclk.i.i390, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %384)
  %tobool.not.i.i391 = icmp eq i8 %384, 0
  %invert_fsync43.i.i392 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 5
  %385 = ptrtoint ptr %invert_fsync43.i.i392 to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %invert_fsync43.i.i392, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %386)
  %tobool44.not.i.i393 = icmp eq i8 %386, 0
  br i1 %tobool.not.i.i391, label %if.else42.i.i399, label %if.then29.i.i396

if.then29.i.i396:                                 ; preds = %if.end28.i.i394
  %format37.i.i395 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 3
  %387 = ptrtoint ptr %format37.i.i395 to i32
  call void @__asan_load2_noabort(i32 %387)
  %388 = load i16, ptr %format37.i.i395, align 16
  br i1 %tobool44.not.i.i393, label %if.else36.i.i398, label %if.then31.i.i397

if.then31.i.i397:                                 ; preds = %if.then29.i.i396
  call void @__sanitizer_cov_trace_pc() #13
  %389 = or i16 %388, 1024
  %390 = ptrtoint ptr %format37.i.i395 to i32
  call void @__asan_store2_noabort(i32 %390)
  store i16 %389, ptr %format37.i.i395, align 16
  br label %sof_dai_set_format.exit.i409

if.else36.i.i398:                                 ; preds = %if.then29.i.i396
  call void @__sanitizer_cov_trace_pc() #13
  %391 = or i16 %388, 768
  %392 = ptrtoint ptr %format37.i.i395 to i32
  call void @__asan_store2_noabort(i32 %392)
  store i16 %391, ptr %format37.i.i395, align 16
  br label %sof_dai_set_format.exit.i409

if.else42.i.i399:                                 ; preds = %if.end28.i.i394
  br i1 %tobool44.not.i.i393, label %if.else42.i.i399.sof_dai_set_format.exit.i409_crit_edge, label %if.then45.i.i401

if.else42.i.i399.sof_dai_set_format.exit.i409_crit_edge: ; preds = %if.else42.i.i399
  call void @__sanitizer_cov_trace_pc() #13
  br label %sof_dai_set_format.exit.i409

if.then45.i.i401:                                 ; preds = %if.else42.i.i399
  call void @__sanitizer_cov_trace_pc() #13
  %format46.i.i400 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 3
  %393 = ptrtoint ptr %format46.i.i400 to i32
  call void @__asan_load2_noabort(i32 %393)
  %394 = load i16, ptr %format46.i.i400, align 16
  %395 = or i16 %394, 512
  store i16 %395, ptr %format46.i.i400, align 16
  br label %sof_dai_set_format.exit.i409

sof_dai_set_format.exit.i409:                     ; preds = %if.then45.i.i401, %if.else42.i.i399.sof_dai_set_format.exit.i409_crit_edge, %if.else36.i.i398, %if.then31.i.i397
  %396 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7
  %397 = call ptr @memset(ptr %396, i32 0, i32 12)
  %398 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 216, ptr %call8.i.i, align 128
  %fsync_rate.i402 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 12
  %399 = ptrtoint ptr %fsync_rate.i402 to i32
  call void @__asan_loadN_noabort(i32 %399, i32 4)
  %400 = load i32, ptr %fsync_rate.i402, align 1
  %401 = call i32 @llvm.bswap.i32(i32 %400) #11
  %fsync_rate2.i403 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7, i32 0, i32 1
  %402 = ptrtoint ptr %fsync_rate2.i403 to i32
  call void @__asan_store4_noabort(i32 %402)
  store i32 %401, ptr %fsync_rate2.i403, align 8
  %tdm_slots.i404 = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config26, i32 %curr_conf.1, i32 13
  %403 = ptrtoint ptr %tdm_slots.i404 to i32
  call void @__asan_loadN_noabort(i32 %403, i32 4)
  %404 = load i32, ptr %tdm_slots.i404, align 1
  %405 = call i32 @llvm.bswap.i32(i32 %404) #11
  %tdm_slots3.i405 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 7, i32 0, i32 2
  %406 = ptrtoint ptr %tdm_slots3.i405 to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 %405, ptr %tdm_slots3.i405, align 4
  %407 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %dev, align 4
  %dai_index.i406 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %call8.i.i, i32 0, i32 2
  %409 = ptrtoint ptr %dai_index.i406 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %dai_index.i406, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %408, ptr noundef nonnull @.str.309, i32 noundef %410, i32 noundef %405, i32 noundef %401) #14
  %call.i.i407 = call fastcc i32 @sof_set_dai_config_multi(ptr noundef %369, ptr noundef %link, ptr noundef nonnull %call8.i.i, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i407)
  %cmp.i408 = icmp slt i32 %call.i.i407, 0
  br i1 %cmp.i408, label %do.end9.i410, label %sof_dai_set_format.exit.i409.sw.epilog_crit_edge

sof_dai_set_format.exit.i409.sw.epilog_crit_edge: ; preds = %sof_dai_set_format.exit.i409
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end9.i410:                                     ; preds = %sof_dai_set_format.exit.i409
  call void @__sanitizer_cov_trace_pc() #13
  %411 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %dev, align 4
  %413 = ptrtoint ptr %dai_index.i406 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %dai_index.i406, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %412, ptr noundef nonnull @.str.312, i32 noundef %414) #14
  br label %sw.epilog

sw.bb107:                                         ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #13
  %call109 = call fastcc i32 @sof_link_afe_load(ptr noundef %scomp, ptr noundef %link, ptr noundef %cfg, ptr noundef nonnull %call8.i.i)
  br label %sw.epilog

do.end112:                                        ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #13
  %415 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %416, ptr noundef nonnull @.str.230, i32 noundef %64) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end112, %sw.bb107, %do.end9.i410, %sof_dai_set_format.exit.i409.sw.epilog_crit_edge, %do.end9.i375, %sof_dai_set_format.exit.i374.sw.epilog_crit_edge, %do.end9.i, %sof_dai_set_format.exit.i340.sw.epilog_crit_edge, %do.end43.i309, %if.end36.i308.sw.epilog_crit_edge, %do.end33.i305, %do.end.i279, %do.end43.i, %if.end36.i.sw.epilog_crit_edge, %do.end33.i, %do.end.i244, %do.end10.i, %if.end.i236.sw.epilog_crit_edge, %do.end.i, %sw.bb86, %sw.bb84, %sw.bb
  %ret.0 = phi i32 [ -22, %do.end112 ], [ %call109, %sw.bb107 ], [ %call88, %sw.bb86 ], [ %call85, %sw.bb84 ], [ %call83, %sw.bb ], [ %call.i.i, %do.end.i ], [ %call.i1.i, %do.end10.i ], [ %call.i1.i, %if.end.i236.sw.epilog_crit_edge ], [ %call.i.i242, %do.end.i244 ], [ -22, %do.end33.i ], [ %call.i1.i247, %do.end43.i ], [ %call.i1.i247, %if.end36.i.sw.epilog_crit_edge ], [ %call.i.i276, %do.end.i279 ], [ -22, %do.end33.i305 ], [ %call.i1.i306, %do.end43.i309 ], [ %call.i1.i306, %if.end36.i308.sw.epilog_crit_edge ], [ %call.i.i339, %sof_dai_set_format.exit.i340.sw.epilog_crit_edge ], [ %call.i.i339, %do.end9.i ], [ %call.i.i372, %sof_dai_set_format.exit.i374.sw.epilog_crit_edge ], [ %call.i.i372, %do.end9.i375 ], [ %call.i.i407, %sof_dai_set_format.exit.i409.sw.epilog_crit_edge ], [ %call.i.i407, %do.end9.i410 ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end7.i.i.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %do.end59, %do.end34, %do.end22, %do.end13, %if.then4, %do.end
  %retval.0 = phi i32 [ -22, %do.end13 ], [ %call.i, %do.end22 ], [ -22, %do.end59 ], [ %ret.0, %sw.epilog ], [ -22, %do.end34 ], [ 0, %if.then4 ], [ -22, %do.end ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.end63.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %common_config) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_complete(ptr nocapture noundef readonly %scomp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %widget_list = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 37
  %4 = ptrtoint ptr %widget_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn82 = load ptr, ptr %widget_list, align 4
  %cmp.not84 = icmp eq ptr %.pn82, %widget_list
  br i1 %cmp.not84, label %entry.for.end30_crit_edge, label %for.body.lr.ph

entry.for.end30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end30

for.body.lr.ph:                                   ; preds = %entry
  %kcontrol_list.i = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %for.inc24.for.body_crit_edge, %for.body.lr.ph
  %.pn85 = phi ptr [ %.pn82, %for.body.lr.ph ], [ %.pn, %for.inc24.for.body_crit_edge ]
  %swidget.086 = getelementptr i8, ptr %.pn85, i32 -36
  %id = getelementptr i8, ptr %.pn85, i32 -12
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %6)
  %cond = icmp eq i32 %6, 32
  br i1 %cond, label %for.cond7.preheader, label %for.body.for.inc24_crit_edge

for.body.for.inc24_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc24

for.cond7.preheader:                              ; preds = %for.body
  %7 = ptrtoint ptr %widget_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn7377 = load ptr, ptr %widget_list, align 4
  %cmp10.not78 = icmp eq ptr %.pn7377, %widget_list
  br i1 %cmp10.not78, label %for.cond7.preheader.for.inc24_crit_edge, label %for.body12.lr.ph

for.cond7.preheader.for.inc24_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc24

for.body12.lr.ph:                                 ; preds = %for.cond7.preheader
  %pipeline_id13 = getelementptr i8, ptr %.pn85, i32 -28
  %dynamic_pipeline_widget.i = getelementptr i8, ptr %.pn85, i32 -8
  br label %for.body12

for.body12:                                       ; preds = %for.inc.for.body12_crit_edge, %for.body12.lr.ph
  %.pn7379 = phi ptr [ %.pn7377, %for.body12.lr.ph ], [ %.pn73, %for.inc.for.body12_crit_edge ]
  %pipeline_id = getelementptr i8, ptr %.pn7379, i32 -28
  %8 = ptrtoint ptr %pipeline_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pipeline_id, align 4
  %10 = ptrtoint ptr %pipeline_id13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pipeline_id13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp14 = icmp eq i32 %9, %11
  br i1 %cmp14, label %if.then, label %for.body12.for.inc_crit_edge

for.body12.for.inc_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body12
  %12 = ptrtoint ptr %dynamic_pipeline_widget.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dynamic_pipeline_widget.i, align 4, !range !712
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.then.sof_set_pipe_widget.exit_crit_edge, label %if.then.i

if.then.sof_set_pipe_widget.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sof_set_pipe_widget.exit

if.then.i:                                        ; preds = %if.then
  %14 = ptrtoint ptr %kcontrol_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn26.i = load ptr, ptr %kcontrol_list.i, align 4
  %cmp.not27.i = icmp eq ptr %.pn26.i, %kcontrol_list.i
  br i1 %cmp.not27.i, label %if.then.i.sof_set_pipe_widget.exit_crit_edge, label %for.body.lr.ph.i

if.then.i.sof_set_pipe_widget.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sof_set_pipe_widget.exit

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %comp_id2.i = getelementptr i8, ptr %.pn7379, i32 -32
  %15 = ptrtoint ptr %comp_id2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %comp_id2.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn28.i = phi ptr [ %.pn26.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %comp_id.i = getelementptr i8, ptr %.pn28.i, i32 -36
  %17 = ptrtoint ptr %comp_id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %comp_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %16)
  %cmp3.i = icmp eq i32 %18, %16
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %access.i = getelementptr i8, ptr %.pn28.i, i32 -20
  %19 = ptrtoint ptr %access.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %access.i, align 4
  %and.i = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %sof_set_pipe_widget.exit.thread

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

sof_set_pipe_widget.exit.thread:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %widget.i = getelementptr i8, ptr %.pn7379, i32 -4
  %23 = ptrtoint ptr %widget.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %widget.i, align 4
  %name.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.328, ptr noundef %26) #14
  br label %cleanup

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %27 = ptrtoint ptr %.pn28.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.i = load ptr, ptr %.pn28.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %kcontrol_list.i
  br i1 %cmp.not.i, label %for.inc.i.sof_set_pipe_widget.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.sof_set_pipe_widget.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sof_set_pipe_widget.exit

sof_set_pipe_widget.exit:                         ; preds = %for.inc.i.sof_set_pipe_widget.exit_crit_edge, %if.then.i.sof_set_pipe_widget.exit_crit_edge, %if.then.sof_set_pipe_widget.exit_crit_edge
  %pipe_widget12.i = getelementptr i8, ptr %.pn7379, i32 8
  %28 = ptrtoint ptr %pipe_widget12.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %swidget.086, ptr %pipe_widget12.i, align 4
  %29 = ptrtoint ptr %dynamic_pipeline_widget.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dynamic_pipeline_widget.i, align 4, !range !712
  %dynamic_pipeline_widget15.i = getelementptr i8, ptr %.pn7379, i32 -8
  %31 = ptrtoint ptr %dynamic_pipeline_widget15.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %dynamic_pipeline_widget15.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %sof_set_pipe_widget.exit, %for.body12.for.inc_crit_edge
  %32 = ptrtoint ptr %.pn7379 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn73 = load ptr, ptr %.pn7379, align 4
  %cmp10.not = icmp eq ptr %.pn73, %widget_list
  br i1 %cmp10.not, label %for.inc.for.inc24_crit_edge, label %for.inc.for.body12_crit_edge

for.inc.for.body12_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body12

for.inc.for.inc24_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc24

for.inc24:                                        ; preds = %for.inc.for.inc24_crit_edge, %for.cond7.preheader.for.inc24_crit_edge, %for.body.for.inc24_crit_edge
  %33 = ptrtoint ptr %.pn85 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn = load ptr, ptr %.pn85, align 4
  %cmp.not = icmp eq ptr %.pn, %widget_list
  br i1 %cmp.not, label %for.inc24.for.end30_crit_edge, label %for.inc24.for.body_crit_edge

for.inc24.for.body_crit_edge:                     ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc24.for.end30_crit_edge:                    ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end30

for.end30:                                        ; preds = %for.inc24.for.end30_crit_edge, %entry.for.end30_crit_edge
  %call31 = tail call zeroext i1 @sof_debug_check_flag(i32 noundef 4) #11
  br i1 %call31, label %if.then32, label %for.end30.if.end45_crit_edge

for.end30.if.end45_crit_edge:                     ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then32:                                        ; preds = %for.end30
  %call33 = tail call i32 @sof_set_up_pipelines(ptr noundef %3, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end, label %if.end36

do.end:                                           ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.323, i32 noundef %call33) #14
  br label %cleanup

if.end36:                                         ; preds = %if.then32
  %call37 = tail call i32 @sof_tear_down_pipelines(ptr noundef %3, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %do.end42, label %if.end36.if.end45_crit_edge

if.end36.if.end45_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.326, i32 noundef %call37) #14
  br label %cleanup

if.end45:                                         ; preds = %if.end36.if.end45_crit_edge, %for.end30.if.end45_crit_edge
  %call46 = tail call i32 @sof_set_up_pipelines(ptr noundef %3, i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %do.end42, %do.end, %sof_set_pipe_widget.exit.thread
  %retval.0 = phi i32 [ %call33, %do.end ], [ %call37, %do.end42 ], [ %call46, %if.end45 ], [ -22, %sof_set_pipe_widget.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_manifest(ptr nocapture noundef readonly %scomp, i32 noundef %index, ptr nocapture noundef readonly %man) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.snd_soc_tplg_manifest, ptr %man, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %priv, align 1
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.348)
  switch i32 %1, label %do.end10 [
    i32 0, label %do.body
    i32 50331648, label %do.end15
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_manifest.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_manifest, %if.then5)) #11
          to label %cleanup [label %if.then5], !srcloc !710

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_manifest.__UNIQUE_ID_ddebug284, ptr noundef %4, ptr noundef nonnull @.str.331) #11
  br label %cleanup

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev11 = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %5 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.332) #14
  br label %cleanup

do.end15:                                         ; preds = %entry
  %dev16 = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %7 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev16, align 4
  %data = getelementptr inbounds %struct.snd_soc_tplg_manifest, ptr %man, i32 1
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data, align 1
  %conv = zext i8 %10 to i32
  %arrayidx20 = getelementptr [0 x i8], ptr %data, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %12 to i32
  %arrayidx24 = getelementptr [0 x i8], ptr %data, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.334, i32 noundef %conv, i32 noundef %conv21, i32 noundef %conv25, i32 noundef 3, i32 noundef 18, i32 noundef 0) #14
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %16)
  %cmp41.not = icmp eq i8 %16, 3
  br i1 %cmp41.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.337) #14
  br label %cleanup

if.end48:                                         ; preds = %do.end15
  %19 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %20)
  %cmp51 = icmp ugt i8 %20, 18
  br i1 %cmp51, label %do.end56, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end56:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.340) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %if.end48.cleanup_crit_edge, %do.end46, %do.end10, %if.then5, %do.body
  %retval.0 = phi i32 [ -22, %do.end10 ], [ -22, %do.end46 ], [ -22, %do.end56 ], [ 0, %if.then5 ], [ 0, %if.end48.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sof_control_load_volume(ptr nocapture noundef readonly %scomp, ptr noundef %scontrol, ptr nocapture noundef %kc, ptr noundef %hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %num_channels = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, ptr %hdr, i32 0, i32 6
  %4 = ptrtoint ptr %num_channels to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %num_channels, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp = icmp ugt i32 %6, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp2 = icmp ugt i32 %6, 2
  br i1 %cmp2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %info = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 7
  %7 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @snd_sof_volume_info, ptr %info, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %8 = ptrtoint ptr %num_channels to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %num_channels, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 8) #11
  %12 = extractvalue { i32, i1 } %11, 1
  %13 = extractvalue { i32, i1 } %11, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %13, i32 92) #11
  %retval.0.i125 = select i1 %12, i32 -1, i32 %spec.select.i
  %size = getelementptr inbounds %struct.snd_sof_control, ptr %scontrol, i32 0, i32 8
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i125, ptr %size, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i125, i32 noundef 3520) #16
  %control_data = getelementptr inbounds %struct.snd_sof_control, ptr %scontrol, i32 0, i32 7
  %15 = ptrtoint ptr %control_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i.i, ptr %control_data, align 4
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end11

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %next_comp_id = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 20
  %16 = ptrtoint ptr %next_comp_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %next_comp_id, align 4
  %comp_id = getelementptr inbounds %struct.snd_sof_control, ptr %scontrol, i32 0, i32 1
  %18 = ptrtoint ptr %comp_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %comp_id, align 4
  %min = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, ptr %hdr, i32 0, i32 2
  %19 = ptrtoint ptr %min to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %min, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %min_volume_step = getelementptr inbounds %struct.snd_sof_control, ptr %scontrol, i32 0, i32 2
  %22 = ptrtoint ptr %min_volume_step to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %min_volume_step, align 4
  %max = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, ptr %hdr, i32 0, i32 3
  %23 = ptrtoint ptr %max to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %max, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %max_volume_step = getelementptr inbounds %struct.snd_sof_control, ptr %scontrol, i32 0, i32 3
  %26 = ptrtoint ptr %max_volume_step to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %max_volume_step, align 4
  %27 = ptrtoint ptr %num_channels to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %num_channels, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %num_channels13 = getelementptr inbounds %struct.snd_sof_control, ptr %scontrol, i32 0, i32 4
  %30 = ptrtoint ptr %num_channels13 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %num_channels13, align 4
  %index = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 4
  %31 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index, align 4
  %index15 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %call9.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %index15 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %index15, align 8
  %34 = ptrtoint ptr %max to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %max, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %35)
  %cmp17 = icmp eq i32 %35, 16777216
  %cmd = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %call9.i.i, i32 0, i32 3
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %cmd, align 4
  br label %skip

if.end20:                                         ; preds = %if.end11
  %37 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %cmd, align 4
  %tlv23 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 10
  %38 = ptrtoint ptr %tlv23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tlv23, align 4
  %tobool24.not = icmp eq ptr %39, null
  br i1 %tobool24.not, label %if.end20.do.end_crit_edge, label %lor.lhs.false

if.end20.do.end_crit_edge:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end20
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp.not.i = icmp eq i32 %41, 1
  br i1 %cmp.not.i, label %if.end29, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end20.do.end_crit_edge
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.19) #14
  br label %out_free

if.end29:                                         ; preds = %lor.lhs.false
  %arrayidx1.i = getelementptr i32, ptr %39, i32 2
  %44 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx1.i, align 4
  %div.i = sdiv i32 %45, 100
  %arrayidx3.i = getelementptr i32, ptr %39, i32 3
  %46 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx3.i, align 4
  %and.i = and i32 %47, 65535
  %48 = tail call i32 @llvm.bswap.i32(i32 %35)
  %add = add i32 %48, 1
  %49 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #11
  %50 = extractvalue { i32, i1 } %49, 1
  br i1 %50, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !711

kcalloc.exit.thread.i:                            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %volume_table13.i = getelementptr inbounds %struct.snd_sof_control, ptr %scontrol, i32 0, i32 9
  %51 = ptrtoint ptr %volume_table13.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %volume_table13.i, align 4
  br label %do.end37

if.end7.i.i.i:                                    ; preds = %if.end29
  %52 = extractvalue { i32, i1 } %49, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %52, i32 noundef 3520) #16
  %volume_table.i = getelementptr inbounds %struct.snd_sof_control, ptr %scontrol, i32 0, i32 9
  %53 = ptrtoint ptr %volume_table.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call8.i.i.i, ptr %volume_table.i, align 4
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.do.end37_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.do.end37_crit_edge:                 ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end37

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp15.not.i = icmp eq i32 %add, 0
  br i1 %cmp15.not.i, label %for.cond.preheader.i.if.end39_crit_edge, label %for.body.i.preheader

for.cond.preheader.i.if.end39_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  %54 = and i32 %47, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i = icmp eq i32 %54, 0
  %div5.neg.i.i143.lhs.trunc = trunc i32 %47 to i16
  %div5.neg.i.i143144 = udiv i16 %div5.neg.i.i143.lhs.trunc, 100
  %div5.neg.i.i143.zext = zext i16 %div5.neg.i.i143144 to i32
  %sub.i.i = sub nsw i32 %and.i, %div5.neg.i.i143.zext
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %sub.i.i)
  %cmp6.i.i = icmp ne i32 %sub.i.i, 50
  br label %for.body.i

for.body.i:                                       ; preds = %vol_compute_gain.exit.i.for.body.i_crit_edge, %for.body.i.preheader
  %j.016.i = phi i32 [ %inc.i, %vol_compute_gain.exit.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.016.i)
  %cmp.i.i127 = icmp ne i32 %j.016.i, 0
  %or.cond = select i1 %cmp.i.i127, i1 true, i1 %tobool.not.i.i
  br i1 %or.cond, label %if.end.i.i129, label %for.body.i.vol_compute_gain.exit.i_crit_edge

for.body.i.vol_compute_gain.exit.i_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vol_compute_gain.exit.i

if.end.i.i129:                                    ; preds = %for.body.i
  %mul.i.i = mul i32 %j.016.i, %and.i
  %div.i.i = udiv i32 %mul.i.i, 100
  %add.i.i = add nsw i32 %div.i.i, %div.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %cmp.i.i.i128 = icmp eq i32 %add.i.i, 0
  br i1 %cmp.i.i.i128, label %if.end.i.i129.vol_pow32.exit.i.i_crit_edge, label %if.end.i.i10.i

if.end.i.i129.vol_pow32.exit.i.i_crit_edge:       ; preds = %if.end.i.i129
  call void @__sanitizer_cov_trace_pc() #13
  br label %vol_pow32.exit.i.i

if.end.i.i10.i:                                   ; preds = %if.end.i.i129
  %55 = tail call i32 @llvm.abs.i32(i32 %add.i.i, i1 false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp427.i.i.i = icmp sgt i32 %55, 0
  br i1 %cmp427.i.i.i, label %if.end.i.i10.i.for.body.i.i.i_crit_edge, label %if.end.i.i10.i.for.end.i.i.i_crit_edge

if.end.i.i10.i.for.end.i.i.i_crit_edge:           ; preds = %if.end.i.i10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i.i

if.end.i.i10.i.for.body.i.i.i_crit_edge:          ; preds = %if.end.i.i10.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i10.i.for.body.i.i.i_crit_edge
  %i.029.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.i.i10.i.for.body.i.i.i_crit_edge ]
  %power.028.i.i.i = phi i32 [ %conv5.i.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 65536, %if.end.i.i10.i.for.body.i.i.i_crit_edge ]
  %conv.i.i.i = zext i32 %power.028.i.i.i to i64
  %mul6.i.i.i = mul nuw nsw i64 %conv.i.i.i, 73533
  %shr.i.i.i.i = lshr i64 %mul6.i.i.i, 15
  %add.i.i.i.i = add nuw nsw i64 %shr.i.i.i.i, 1
  %shr4.i.i.i.i = lshr i64 %add.i.i.i.i, 1
  %conv5.i.i.i.i = trunc i64 %shr4.i.i.i.i to i32
  %inc.i.i.i = add nuw nsw i32 %i.029.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %55
  br i1 %exitcond.not.i.i.i, label %for.end.i.i.i.loopexit, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

for.end.i.i.i.loopexit:                           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv5.i.i.i.i.le = trunc i64 %shr4.i.i.i.i to i32
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.end.i.i.i.loopexit, %if.end.i.i10.i.for.end.i.i.i_crit_edge
  %power.0.lcssa.i.i.i = phi i32 [ 65536, %if.end.i.i10.i.for.end.i.i.i_crit_edge ], [ %conv5.i.i.i.i.le, %for.end.i.i.i.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %cmp7.i.i.i = icmp sgt i32 %add.i.i, 0
  br i1 %cmp7.i.i.i, label %for.end.i.i.i.vol_pow32.exit.i.i_crit_edge, label %if.else196.i.i.i

for.end.i.i.i.vol_pow32.exit.i.i_crit_edge:       ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vol_pow32.exit.i.i

if.else196.i.i.i:                                 ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %56 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %power.0.lcssa.i.i.i, i64 4294967296) #17, !srcloc !713
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %56, 1
  %extract.t25.i.i.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %vol_pow32.exit.i.i

vol_pow32.exit.i.i:                               ; preds = %if.else196.i.i.i, %for.end.i.i.i.vol_pow32.exit.i.i_crit_edge, %if.end.i.i129.vol_pow32.exit.i.i_crit_edge
  %retval.0.i.i11.i = phi i32 [ 65536, %if.end.i.i129.vol_pow32.exit.i.i_crit_edge ], [ %power.0.lcssa.i.i.i, %for.end.i.i.i.vol_pow32.exit.i.i_crit_edge ], [ %extract.t25.i.i.i, %if.else196.i.i.i ]
  %and.i.i = and i32 %j.016.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool8.not.i.i = icmp eq i32 %and.i.i, 0
  %or.cond.i.i = or i1 %cmp6.i.i, %tobool8.not.i.i
  br i1 %or.cond.i.i, label %vol_pow32.exit.i.i.vol_compute_gain.exit.i_crit_edge, label %if.then9.i.i

vol_pow32.exit.i.i.vol_compute_gain.exit.i_crit_edge: ; preds = %vol_pow32.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vol_compute_gain.exit.i

if.then9.i.i:                                     ; preds = %vol_pow32.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = zext i32 %retval.0.i.i11.i to i64
  %mul10.i.i = mul nuw nsw i64 %conv.i.i, 69419
  %shr.i22.i.i = lshr i64 %mul10.i.i, 15
  %add.i23.i.i = add nuw nsw i64 %shr.i22.i.i, 1
  %shr4.i.i.i = lshr i64 %add.i23.i.i, 1
  %conv5.i.i.i = trunc i64 %shr4.i.i.i to i32
  br label %vol_compute_gain.exit.i

vol_compute_gain.exit.i:                          ; preds = %if.then9.i.i, %vol_pow32.exit.i.i.vol_compute_gain.exit.i_crit_edge, %for.body.i.vol_compute_gain.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv5.i.i.i, %if.then9.i.i ], [ %retval.0.i.i11.i, %vol_pow32.exit.i.i.vol_compute_gain.exit.i_crit_edge ], [ 0, %for.body.i.vol_compute_gain.exit.i_crit_edge ]
  %57 = ptrtoint ptr %volume_table.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %volume_table.i, align 4
  %arrayidx.i = getelementptr i32, ptr %58, i32 %j.016.i
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %retval.0.i.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %j.016.i, 1
  %exitcond.not.i = icmp eq i32 %j.016.i, %48
  br i1 %exitcond.not.i, label %vol_compute_gain.exit.i.if.end39_crit_edge, label %vol_compute_gain.exit.i.for.body.i_crit_edge

vol_compute_gain.exit.i.for.body.i_crit_edge:     ; preds = %vol_compute_gain.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

vol_compute_gain.exit.i.if.end39_crit_edge:       ; preds = %vol_compute_gain.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

do.end37:                                         ; preds = %if.end7.i.i.i.do.end37_crit_edge, %kcalloc.exit.thread.i
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.22) #14
  br label %out_free

if.end39:                                         ; preds = %vol_compute_gain.exit.i.if.end39_crit_edge, %for.cond.preheader.i.if.end39_crit_edge
  %62 = ptrtoint ptr %num_channels13 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_channels13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp42141.not = icmp eq i32 %63, 0
  br i1 %cmp42141.not, label %if.end39.skip_crit_edge, label %for.body.lr.ph

if.end39.skip_crit_edge:                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip

for.body.lr.ph:                                   ; preds = %if.end39
  %64 = ptrtoint ptr %control_data to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %control_data, align 4
  %66 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %65, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0142 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.sof_ipc_ctrl_value_chan], ptr %66, i32 0, i32 %i.0142
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %i.0142, ptr %arrayidx, align 1
  %value = getelementptr [0 x %struct.sof_ipc_ctrl_value_chan], ptr %66, i32 0, i32 %i.0142, i32 1
  %68 = ptrtoint ptr %value to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 65536, ptr %value, align 1
  %inc = add nuw i32 %i.0142, 1
  %69 = ptrtoint ptr %num_channels13 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_channels13, align 4
  %cmp42 = icmp ult i32 %inc, %70
  br i1 %cmp42, label %for.body.for.body_crit_edge, label %for.body.skip_crit_edge

for.body.skip_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

skip:                                             ; preds = %for.body.skip_crit_edge, %if.end39.skip_crit_edge, %if.then18
  %led_ctl = getelementptr inbounds %struct.snd_sof_control, ptr %scontrol, i32 0, i32 11
  %priv = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, ptr %hdr, i32 0, i32 8
  %array = getelementptr inbounds %struct.snd_soc_tplg_mixer_control, ptr %hdr, i32 1
  %71 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %priv, align 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  %call.i = tail call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef %led_ctl, ptr noundef nonnull @led_tokens, i32 noundef 2, ptr noundef %array, i32 noundef %73, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp48.not = icmp eq i32 %call.i, 0
  br i1 %cmp48.not, label %do.body57, label %do.end52

do.end52:                                         ; preds = %skip
  %74 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i, align 4
  %76 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %priv, align 1
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.25, i32 noundef %78) #14
  %79 = ptrtoint ptr %max to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %max, align 1
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp71 = icmp ugt i32 %81, 1
  br i1 %cmp71, label %if.then72, label %do.end52.out_free_crit_edge

do.end52.out_free_crit_edge:                      ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

do.body57:                                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_control_load_volume.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_control_load_volume, %if.then63)) #11
          to label %cleanup [label %if.then63], !srcloc !710

if.then63:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev.i, align 4
  %84 = ptrtoint ptr %comp_id to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %comp_id, align 4
  %86 = ptrtoint ptr %num_channels13 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %num_channels13, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_control_load_volume.__UNIQUE_ID_ddebug251, ptr noundef %83, ptr noundef nonnull @.str.27, i32 noundef %85, i32 noundef %87) #11
  br label %cleanup

if.then72:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #13
  %volume_table = getelementptr inbounds %struct.snd_sof_control, ptr %scontrol, i32 0, i32 9
  %88 = ptrtoint ptr %volume_table to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %volume_table, align 4
  tail call void @kfree(ptr noundef %89) #11
  br label %out_free

out_free:                                         ; preds = %if.then72, %do.end52.out_free_crit_edge, %do.end37, %do.end
  %ret.0 = phi i32 [ %call.i, %if.then72 ], [ %call.i, %do.end52.out_free_crit_edge ], [ -22, %do.end ], [ -12, %do.end37 ]
  %90 = ptrtoint ptr %control_data to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %control_data, align 4
  tail call void @kfree(ptr noundef %91) #11
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.then63, %do.body57, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then63 ], [ %ret.0, %out_free ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ 0, %do.body57 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sof_control_load_bytes(ptr nocapture noundef readonly %scomp, ptr nocapture noundef %scontrol, ptr nocapture noundef readonly %kc, ptr nocapture noundef readonly %hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 11
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %priv = getelementptr inbounds %struct.snd_soc_tplg_bytes_control, ptr %hdr, i32 0, i32 7
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %priv, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %8)
  %cmp = icmp ult i32 %8, 92
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %8, -92
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %sub)
  %cmp2 = icmp ugt i32 %11, %sub
  br i1 %cmp2, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.35, i32 noundef %11, i32 noundef %sub) #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add = add i32 %11, 92
  %size6 = getelementptr inbounds %struct.snd_sof_control, ptr %scontrol, i32 0, i32 8
  %12 = ptrtoint ptr %size6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %size6, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #16
  %control_data = getelementptr inbounds %struct.snd_sof_control, ptr %scontrol, i32 0, i32 7
  %13 = ptrtoint ptr %control_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i.i, ptr %control_data, align 4
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %next_comp_id = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 20
  %14 = ptrtoint ptr %next_comp_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %next_comp_id, align 4
  %comp_id = getelementptr inbounds %struct.snd_sof_control, ptr %scontrol, i32 0, i32 1
  %16 = ptrtoint ptr %comp_id to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %comp_id, align 4
  %cmd = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %call9.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %cmd, align 4
  %index = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kc, i32 0, i32 4
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  %20 = ptrtoint ptr %control_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %control_data, align 4
  %index14 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %index14 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %19, ptr %index14, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_control_load_bytes.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_control_load_bytes, %if.then21)) #11
          to label %do.end26 [label %if.then21], !srcloc !710

if.then21:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %25 = ptrtoint ptr %comp_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %comp_id, align 4
  %num_channels = getelementptr inbounds %struct.snd_sof_control, ptr %scontrol, i32 0, i32 4
  %27 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_channels, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_control_load_bytes.__UNIQUE_ID_ddebug253, ptr noundef %24, ptr noundef nonnull @.str.27, i32 noundef %26, i32 noundef %28) #11
  br label %do.end26

do.end26:                                         ; preds = %if.then21, %if.end11
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %priv, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp29.not = icmp eq i32 %30, 0
  br i1 %cmp29.not, label %do.end26.cleanup_crit_edge, label %if.then30

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then30:                                        ; preds = %do.end26
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %32 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %call9.i.i, i32 0, i32 10
  %data = getelementptr inbounds %struct.snd_soc_tplg_bytes_control, ptr %hdr, i32 1
  %33 = call ptr @memcpy(ptr %32, ptr %data, i32 %31)
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4607827, i32 %35)
  %cmp36.not = icmp eq i32 %35, 4607827
  br i1 %cmp36.not, label %if.end44, label %do.end40

do.end40:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.38, i32 noundef %35) #14
  br label %out_free

if.end44:                                         ; preds = %if.then30
  %abi = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %call9.i.i, i32 1, i32 1
  %38 = ptrtoint ptr %abi to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %abi, align 8
  %shr.mask = and i32 %39, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %shr.mask)
  %cmp46.not = icmp eq i32 %shr.mask, 50331648
  br i1 %cmp46.not, label %if.end54, label %do.end50

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.41, i32 noundef %39) #14
  br label %out_free

if.end54:                                         ; preds = %if.end44
  %size56 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %call9.i.i, i32 1, i32 0, i32 1
  %42 = ptrtoint ptr %size56 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size56, align 4
  %add57 = add i32 %43, 32
  %44 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %priv, align 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  call void @__sanitizer_cov_trace_cmp4(i32 %add57, i32 %46)
  %cmp60.not = icmp eq i32 %add57, %46
  br i1 %cmp60.not, label %if.end54.cleanup_crit_edge, label %do.end64

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end64:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.44) #14
  br label %out_free

out_free:                                         ; preds = %do.end64, %do.end50, %do.end40
  %49 = ptrtoint ptr %control_data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %control_data, align 4
  tail call void @kfree(ptr noundef %50) #11
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end54.cleanup_crit_edge, %do.end26.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end54.cleanup_crit_edge ], [ 0, %do.end26.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %out_free ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_volume_info(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sof_parse_token_sets(ptr nocapture noundef readonly %scomp, ptr noundef %object, ptr nocapture noundef readonly %tokens, i32 noundef %count, ptr noundef %array, i32 noundef %priv_size, i32 noundef %sets, i32 noundef %object_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %sets, %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %priv_size)
  %cmp124 = icmp sgt i32 %priv_size, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp1125 = icmp sgt i32 %mul, 0
  %or.cond126 = and i1 %cmp124, %cmp1125
  br i1 %or.cond126, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp21.i96 = icmp sgt i32 %count, 0
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %total.0132 = phi i32 [ 0, %while.body.lr.ph ], [ %total.1, %sw.epilog.while.body_crit_edge ]
  %found.0131 = phi i32 [ 0, %while.body.lr.ph ], [ %found.2, %sw.epilog.while.body_crit_edge ]
  %offset.0130 = phi i32 [ 0, %while.body.lr.ph ], [ %offset.1, %sw.epilog.while.body_crit_edge ]
  %array.addr.0128 = phi ptr [ %array, %while.body.lr.ph ], [ %add.ptr, %sw.epilog.while.body_crit_edge ]
  %priv_size.addr.0127 = phi i32 [ %priv_size, %while.body.lr.ph ], [ %sub, %sw.epilog.while.body_crit_edge ]
  %0 = ptrtoint ptr %array.addr.0128 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %array.addr.0128, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp2 = icmp slt i32 %2, 0
  br i1 %cmp2, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.28, i32 noundef %2) #14
  br label %cleanup

if.end:                                           ; preds = %while.body
  %sub = sub nsw i32 %priv_size.addr.0127, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp3 = icmp slt i32 %sub, 0
  br i1 %cmp3, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev8 = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %5 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.28, i32 noundef %2) #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %array.addr.0128, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %type, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.349)
  switch i32 %9, label %do.end18 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %if.end9.sw.bb13_crit_edge
    i32 3, label %if.end9.sw.bb13_crit_edge166
    i32 4, label %if.end9.sw.bb13_crit_edge167
    i32 5, label %if.end9.sw.bb13_crit_edge168
  ]

if.end9.sw.bb13_crit_edge168:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb13

if.end9.sw.bb13_crit_edge167:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb13

if.end9.sw.bb13_crit_edge166:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb13

if.end9.sw.bb13_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb13

sw.bb:                                            ; preds = %if.end9
  %num_elems.i = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %array.addr.0128, i32 0, i32 2
  %11 = ptrtoint ptr %num_elems.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %num_elems.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp5.not9.i = icmp eq i32 %12, 0
  br i1 %cmp5.not9.i, label %sw.bb.sw.epilog_crit_edge, label %for.body.lr.ph.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %13 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %array.addr.0128, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc16.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc17.i, %for.inc16.i.for.body.i_crit_edge ]
  %found.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %found.1.lcssa.i, %for.inc16.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [0 x %struct.snd_soc_tplg_vendor_uuid_elem], ptr %13, i32 0, i32 %i.07.i
  br i1 %cmp21.i96, label %for.body.i.for.body3.i_crit_edge, label %for.body.i.for.inc16.i_crit_edge

for.body.i.for.inc16.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc16.i

for.body.i.for.body3.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i.for.body3.i_crit_edge, %for.body.i.for.body3.i_crit_edge
  %j.03.i = phi i32 [ %inc15.i, %for.inc.i.for.body3.i_crit_edge ], [ 0, %for.body.i.for.body3.i_crit_edge ]
  %found.12.i = phi i32 [ %found.2.i, %for.inc.i.for.body3.i_crit_edge ], [ %found.06.i, %for.body.i.for.body3.i_crit_edge ]
  %type.i = getelementptr %struct.sof_topology_token, ptr %tokens, i32 %j.03.i, i32 1
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp5.not.i = icmp eq i32 %15, 0
  br i1 %cmp5.not.i, label %if.end.i, label %for.body3.i.for.inc.i_crit_edge

for.body3.i.for.inc.i_crit_edge:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body3.i
  %arrayidx4.i = getelementptr %struct.sof_topology_token, ptr %tokens, i32 %j.03.i
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4.i, align 4
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %arrayidx.i, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %20)
  %cmp8.not.i = icmp eq i32 %17, %20
  br i1 %cmp8.not.i, label %if.end10.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %get_token.i = getelementptr %struct.sof_topology_token, ptr %tokens, i32 %j.03.i, i32 2
  %21 = ptrtoint ptr %get_token.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_token.i, align 4
  %offset13.i = getelementptr %struct.sof_topology_token, ptr %tokens, i32 %j.03.i, i32 3
  %23 = ptrtoint ptr %offset13.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset13.i, align 4
  %add.i = add i32 %24, %offset.0130
  %size.i = getelementptr %struct.sof_topology_token, ptr %tokens, i32 %j.03.i, i32 4
  %25 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size.i, align 4
  %call.i = tail call i32 %22(ptr noundef %arrayidx.i, ptr noundef %object, i32 noundef %add.i, i32 noundef %26) #11
  %inc.i = add i32 %found.12.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end10.i, %if.end.i.for.inc.i_crit_edge, %for.body3.i.for.inc.i_crit_edge
  %found.2.i = phi i32 [ %found.12.i, %for.body3.i.for.inc.i_crit_edge ], [ %found.12.i, %if.end.i.for.inc.i_crit_edge ], [ %inc.i, %if.end10.i ]
  %inc15.i = add nuw nsw i32 %j.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc15.i, %count
  br i1 %exitcond.not.i, label %for.inc.i.for.inc16.i_crit_edge, label %for.inc.i.for.body3.i_crit_edge

for.inc.i.for.body3.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3.i

for.inc.i.for.inc16.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc16.i

for.inc16.i:                                      ; preds = %for.inc.i.for.inc16.i_crit_edge, %for.body.i.for.inc16.i_crit_edge
  %found.1.lcssa.i = phi i32 [ %found.06.i, %for.body.i.for.inc16.i_crit_edge ], [ %found.2.i, %for.inc.i.for.inc16.i_crit_edge ]
  %inc17.i = add nuw i32 %i.07.i, 1
  %27 = ptrtoint ptr %num_elems.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %num_elems.i, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #11
  %cmp.i = icmp ult i32 %inc17.i, %29
  br i1 %cmp.i, label %for.inc16.i.for.body.i_crit_edge, label %for.inc16.i.sw.epilog_crit_edge

for.inc16.i.sw.epilog_crit_edge:                  ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.inc16.i.for.body.i_crit_edge:                 ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

sw.bb10:                                          ; preds = %if.end9
  %num_elems.i62 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %array.addr.0128, i32 0, i32 2
  %30 = ptrtoint ptr %num_elems.i62 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %num_elems.i62, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp5.not9.i63 = icmp eq i32 %31, 0
  br i1 %cmp5.not9.i63, label %sw.bb10.sw.epilog_crit_edge, label %for.body.lr.ph.i65

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.body.lr.ph.i65:                               ; preds = %sw.bb10
  %32 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %array.addr.0128, i32 0, i32 3
  br label %for.body.i69

for.body.i69:                                     ; preds = %for.inc16.i92.for.body.i69_crit_edge, %for.body.lr.ph.i65
  %i.07.i66 = phi i32 [ 0, %for.body.lr.ph.i65 ], [ %inc17.i90, %for.inc16.i92.for.body.i69_crit_edge ]
  %found.06.i67 = phi i32 [ 0, %for.body.lr.ph.i65 ], [ %found.1.lcssa.i89, %for.inc16.i92.for.body.i69_crit_edge ]
  %arrayidx.i68 = getelementptr [0 x %struct.snd_soc_tplg_vendor_string_elem], ptr %32, i32 0, i32 %i.07.i66
  br i1 %cmp21.i96, label %for.body.i69.for.body3.i74_crit_edge, label %for.body.i69.for.inc16.i92_crit_edge

for.body.i69.for.inc16.i92_crit_edge:             ; preds = %for.body.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc16.i92

for.body.i69.for.body3.i74_crit_edge:             ; preds = %for.body.i69
  br label %for.body3.i74

for.body3.i74:                                    ; preds = %for.inc.i88.for.body3.i74_crit_edge, %for.body.i69.for.body3.i74_crit_edge
  %j.03.i70 = phi i32 [ %inc15.i86, %for.inc.i88.for.body3.i74_crit_edge ], [ 0, %for.body.i69.for.body3.i74_crit_edge ]
  %found.12.i71 = phi i32 [ %found.2.i85, %for.inc.i88.for.body3.i74_crit_edge ], [ %found.06.i67, %for.body.i69.for.body3.i74_crit_edge ]
  %type.i72 = getelementptr %struct.sof_topology_token, ptr %tokens, i32 %j.03.i70, i32 1
  %33 = ptrtoint ptr %type.i72 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp5.not.i73 = icmp eq i32 %34, 1
  br i1 %cmp5.not.i73, label %if.end.i77, label %for.body3.i74.for.inc.i88_crit_edge

for.body3.i74.for.inc.i88_crit_edge:              ; preds = %for.body3.i74
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i88

if.end.i77:                                       ; preds = %for.body3.i74
  %arrayidx4.i75 = getelementptr %struct.sof_topology_token, ptr %tokens, i32 %j.03.i70
  %35 = ptrtoint ptr %arrayidx4.i75 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx4.i75, align 4
  %37 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %arrayidx.i68, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %39)
  %cmp8.not.i76 = icmp eq i32 %36, %39
  br i1 %cmp8.not.i76, label %if.end10.i84, label %if.end.i77.for.inc.i88_crit_edge

if.end.i77.for.inc.i88_crit_edge:                 ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i88

if.end10.i84:                                     ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #13
  %get_token.i78 = getelementptr %struct.sof_topology_token, ptr %tokens, i32 %j.03.i70, i32 2
  %40 = ptrtoint ptr %get_token.i78 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %get_token.i78, align 4
  %offset13.i79 = getelementptr %struct.sof_topology_token, ptr %tokens, i32 %j.03.i70, i32 3
  %42 = ptrtoint ptr %offset13.i79 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset13.i79, align 4
  %add.i80 = add i32 %43, %offset.0130
  %size.i81 = getelementptr %struct.sof_topology_token, ptr %tokens, i32 %j.03.i70, i32 4
  %44 = ptrtoint ptr %size.i81 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size.i81, align 4
  %call.i82 = tail call i32 %41(ptr noundef %arrayidx.i68, ptr noundef %object, i32 noundef %add.i80, i32 noundef %45) #11
  %inc.i83 = add i32 %found.12.i71, 1
  br label %for.inc.i88

for.inc.i88:                                      ; preds = %if.end10.i84, %if.end.i77.for.inc.i88_crit_edge, %for.body3.i74.for.inc.i88_crit_edge
  %found.2.i85 = phi i32 [ %found.12.i71, %for.body3.i74.for.inc.i88_crit_edge ], [ %found.12.i71, %if.end.i77.for.inc.i88_crit_edge ], [ %inc.i83, %if.end10.i84 ]
  %inc15.i86 = add nuw nsw i32 %j.03.i70, 1
  %exitcond.not.i87 = icmp eq i32 %inc15.i86, %count
  br i1 %exitcond.not.i87, label %for.inc.i88.for.inc16.i92_crit_edge, label %for.inc.i88.for.body3.i74_crit_edge

for.inc.i88.for.body3.i74_crit_edge:              ; preds = %for.inc.i88
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3.i74

for.inc.i88.for.inc16.i92_crit_edge:              ; preds = %for.inc.i88
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc16.i92

for.inc16.i92:                                    ; preds = %for.inc.i88.for.inc16.i92_crit_edge, %for.body.i69.for.inc16.i92_crit_edge
  %found.1.lcssa.i89 = phi i32 [ %found.06.i67, %for.body.i69.for.inc16.i92_crit_edge ], [ %found.2.i85, %for.inc.i88.for.inc16.i92_crit_edge ]
  %inc17.i90 = add nuw i32 %i.07.i66, 1
  %46 = ptrtoint ptr %num_elems.i62 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %num_elems.i62, align 1
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #11
  %cmp.i91 = icmp ult i32 %inc17.i90, %48
  br i1 %cmp.i91, label %for.inc16.i92.for.body.i69_crit_edge, label %for.inc16.i92.sw.epilog_crit_edge

for.inc16.i92.sw.epilog_crit_edge:                ; preds = %for.inc16.i92
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.inc16.i92.for.body.i69_crit_edge:             ; preds = %for.inc16.i92
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i69

sw.bb13:                                          ; preds = %if.end9.sw.bb13_crit_edge, %if.end9.sw.bb13_crit_edge166, %if.end9.sw.bb13_crit_edge167, %if.end9.sw.bb13_crit_edge168
  %num_elems.i94 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %array.addr.0128, i32 0, i32 2
  %49 = ptrtoint ptr %num_elems.i94 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %num_elems.i94, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp5.not.i95 = icmp eq i32 %50, 0
  br i1 %cmp5.not.i95, label %sw.bb13.sw.epilog_crit_edge, label %for.body.lr.ph.i97

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.body.lr.ph.i97:                               ; preds = %sw.bb13
  %51 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, ptr %array.addr.0128, i32 0, i32 3
  br label %for.body.i101

for.body.i101:                                    ; preds = %for.inc27.i.for.body.i101_crit_edge, %for.body.lr.ph.i97
  %i.07.i98 = phi i32 [ 0, %for.body.lr.ph.i97 ], [ %inc28.i, %for.inc27.i.for.body.i101_crit_edge ]
  %found.06.i99 = phi i32 [ 0, %for.body.lr.ph.i97 ], [ %found.1.lcssa.i116, %for.inc27.i.for.body.i101_crit_edge ]
  %arrayidx.i100 = getelementptr [0 x %struct.snd_soc_tplg_vendor_value_elem], ptr %51, i32 0, i32 %i.07.i98
  br i1 %cmp21.i96, label %for.body.i101.for.body3.i105_crit_edge, label %for.body.i101.for.inc27.i_crit_edge

for.body.i101.for.inc27.i_crit_edge:              ; preds = %for.body.i101
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc27.i

for.body.i101.for.body3.i105_crit_edge:           ; preds = %for.body.i101
  br label %for.body3.i105

for.body3.i105:                                   ; preds = %for.inc.i115.for.body3.i105_crit_edge, %for.body.i101.for.body3.i105_crit_edge
  %j.03.i102 = phi i32 [ %inc26.i, %for.inc.i115.for.body3.i105_crit_edge ], [ 0, %for.body.i101.for.body3.i105_crit_edge ]
  %found.12.i103 = phi i32 [ %found.2.i113, %for.inc.i115.for.body3.i105_crit_edge ], [ %found.06.i99, %for.body.i101.for.body3.i105_crit_edge ]
  %type.i104 = getelementptr %struct.sof_topology_token, ptr %tokens, i32 %j.03.i102, i32 1
  %52 = ptrtoint ptr %type.i104 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %type.i104, align 4
  %.off.i = add i32 %53, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 4
  br i1 %switch.i, label %if.end.i107, label %for.body3.i105.for.inc.i115_crit_edge

for.body3.i105.for.inc.i115_crit_edge:            ; preds = %for.body3.i105
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i115

if.end.i107:                                      ; preds = %for.body3.i105
  %arrayidx4.i106 = getelementptr %struct.sof_topology_token, ptr %tokens, i32 %j.03.i102
  %54 = ptrtoint ptr %arrayidx4.i106 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx4.i106, align 4
  %56 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %arrayidx.i100, align 1
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %58)
  %cmp19.not.i = icmp eq i32 %55, %58
  br i1 %cmp19.not.i, label %if.end21.i, label %if.end.i107.for.inc.i115_crit_edge

if.end.i107.for.inc.i115_crit_edge:               ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i115

if.end21.i:                                       ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #13
  %get_token.i108 = getelementptr %struct.sof_topology_token, ptr %tokens, i32 %j.03.i102, i32 2
  %59 = ptrtoint ptr %get_token.i108 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %get_token.i108, align 4
  %offset24.i = getelementptr %struct.sof_topology_token, ptr %tokens, i32 %j.03.i102, i32 3
  %61 = ptrtoint ptr %offset24.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %offset24.i, align 4
  %add.i109 = add i32 %62, %offset.0130
  %size.i110 = getelementptr %struct.sof_topology_token, ptr %tokens, i32 %j.03.i102, i32 4
  %63 = ptrtoint ptr %size.i110 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %size.i110, align 4
  %call.i111 = tail call i32 %60(ptr noundef %arrayidx.i100, ptr noundef %object, i32 noundef %add.i109, i32 noundef %64) #11
  %inc.i112 = add i32 %found.12.i103, 1
  br label %for.inc.i115

for.inc.i115:                                     ; preds = %if.end21.i, %if.end.i107.for.inc.i115_crit_edge, %for.body3.i105.for.inc.i115_crit_edge
  %found.2.i113 = phi i32 [ %found.12.i103, %if.end.i107.for.inc.i115_crit_edge ], [ %inc.i112, %if.end21.i ], [ %found.12.i103, %for.body3.i105.for.inc.i115_crit_edge ]
  %inc26.i = add nuw nsw i32 %j.03.i102, 1
  %exitcond.not.i114 = icmp eq i32 %inc26.i, %count
  br i1 %exitcond.not.i114, label %for.inc.i115.for.inc27.i_crit_edge, label %for.inc.i115.for.body3.i105_crit_edge

for.inc.i115.for.body3.i105_crit_edge:            ; preds = %for.inc.i115
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3.i105

for.inc.i115.for.inc27.i_crit_edge:               ; preds = %for.inc.i115
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc27.i

for.inc27.i:                                      ; preds = %for.inc.i115.for.inc27.i_crit_edge, %for.body.i101.for.inc27.i_crit_edge
  %found.1.lcssa.i116 = phi i32 [ %found.06.i99, %for.body.i101.for.inc27.i_crit_edge ], [ %found.2.i113, %for.inc.i115.for.inc27.i_crit_edge ]
  %inc28.i = add nuw i32 %i.07.i98, 1
  %65 = ptrtoint ptr %num_elems.i94 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %num_elems.i94, align 1
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #11
  %cmp.i117 = icmp ult i32 %inc28.i, %67
  br i1 %cmp.i117, label %for.inc27.i.for.body.i101_crit_edge, label %for.inc27.i.sw.epilog_crit_edge

for.inc27.i.sw.epilog_crit_edge:                  ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.inc27.i.for.body.i101_crit_edge:              ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i101

do.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %dev19 = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %68 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.33, i32 noundef %8) #14
  br label %cleanup

sw.epilog:                                        ; preds = %for.inc27.i.sw.epilog_crit_edge, %sw.bb13.sw.epilog_crit_edge, %for.inc16.i92.sw.epilog_crit_edge, %sw.bb10.sw.epilog_crit_edge, %for.inc16.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %call14.pn = phi i32 [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %sw.bb10.sw.epilog_crit_edge ], [ 0, %sw.bb13.sw.epilog_crit_edge ], [ %found.1.lcssa.i, %for.inc16.i.sw.epilog_crit_edge ], [ %found.1.lcssa.i89, %for.inc16.i92.sw.epilog_crit_edge ], [ %found.1.lcssa.i116, %for.inc27.i.sw.epilog_crit_edge ]
  %found.1 = add i32 %call14.pn, %found.0131
  %add.ptr = getelementptr i8, ptr %array.addr.0128, i32 %2
  call void @__sanitizer_cov_trace_cmp4(i32 %found.1, i32 %count)
  %cmp21.not = icmp slt i32 %found.1, %count
  %add23 = select i1 %cmp21.not, i32 0, i32 %object_size
  %offset.1 = add i32 %add23, %offset.0130
  %found.2 = select i1 %cmp21.not, i32 %found.1, i32 0
  %add24 = select i1 %cmp21.not, i32 0, i32 %found.1
  %total.1 = add i32 %add24, %total.0132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp sgt i32 %sub, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %total.1, i32 %mul)
  %cmp1 = icmp slt i32 %total.1, %mul
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %sw.epilog.while.body_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %do.end18, %do.end7, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ -22, %do.end18 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_token_u32(ptr nocapture noundef readonly %elem, ptr nocapture noundef writeonly %object, i32 noundef %offset, i32 noundef %size) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %object, i32 %offset
  %value = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %elem, i32 0, i32 1
  %0 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %value, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %add.ptr, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_sof_find_swidget(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sof_debug_check_flag(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sof_widget_load_dai(ptr noundef %scomp, i32 noundef %index, ptr nocapture noundef readonly %swidget, ptr noundef %tw, ptr noundef writeonly %dai) unnamed_addr #0 align 64 {
entry:
  %nil_uuid.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  %0 = call ptr @memset(ptr %nil_uuid.i, i32 0, i32 16)
  %comp_ext.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 11
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %comp_ext.i, ptr noundef nonnull dereferenceable(16) %nil_uuid.i, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 80, i32 96
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i, i32 noundef 3520) #16
  %tobool2.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool2.not.i, label %sof_comp_alloc.exit, label %if.end4.i

if.end4.i:                                        ; preds = %entry
  %1 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %spec.select.i, ptr %call9.i.i.i, align 128
  %cmd.i = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %call9.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 805371904, ptr %cmd.i, align 4
  %comp_id.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 1
  %3 = ptrtoint ptr %comp_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %comp_id.i, align 4
  %id.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %id.i, align 8
  %pipeline_id.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %pipeline_id.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %index, ptr %pipeline_id.i, align 16
  %core.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 5
  %7 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %core.i, align 4
  %core6.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %core6.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %core6.i, align 4
  br i1 %tobool.not.i, label %if.end4.i.if.end_crit_edge, label %if.then7.i

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i, i32 80
  %10 = call ptr @memcpy(ptr %add.ptr.i, ptr %comp_ext.i, i32 16)
  %ext_data_length.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %ext_data_length.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16, ptr %ext_data_length.i, align 8
  br label %if.end

sof_comp_alloc.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.then7.i, %if.end4.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  %type = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %type, align 4
  %config = getelementptr inbounds %struct.sof_ipc_comp_dai, ptr %call9.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 36, ptr %config, align 4
  %array = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 1
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %priv, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %call.i = tail call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull @dai_tokens, i32 noundef 3, ptr noundef %array, i32 noundef %16, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %priv, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.71, i32 noundef %21) #14
  br label %finish

if.end5:                                          ; preds = %if.end
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %priv, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %call.i65 = tail call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef %config, ptr noundef nonnull @comp_tokens, i32 noundef 3, ptr noundef %array, i32 noundef %24, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %cmp11.not = icmp eq i32 %call.i65, 0
  br i1 %cmp11.not, label %do.body19, label %do.end15

do.end15:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %dev16 = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %25 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev16, align 4
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %priv, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.74, i32 noundef %28) #14
  br label %finish

do.body19:                                        ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_widget_load_dai.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_widget_load_dai, %if.then24)) #11
          to label %do.end29 [label %if.then24], !srcloc !710

if.then24:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  %dev25 = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %29 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev25, align 4
  %widget = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 8
  %31 = ptrtoint ptr %widget to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %widget, align 4
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name, align 4
  %type26 = getelementptr inbounds %struct.sof_ipc_comp_dai, ptr %call9.i.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %type26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %type26, align 8
  %dai_index = getelementptr inbounds %struct.sof_ipc_comp_dai, ptr %call9.i.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %dai_index to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dai_index, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_widget_load_dai.__UNIQUE_ID_ddebug258, ptr noundef %30, ptr noundef nonnull @.str.76, ptr noundef %34, i32 noundef %36, i32 noundef %38) #11
  br label %do.end29

do.end29:                                         ; preds = %if.then24, %do.body19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_dbg_comp_config.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_widget_load_dai, %if.then.i)) #11
          to label %sof_dbg_comp_config.exit [label %if.then.i], !srcloc !710

if.then.i:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  %periods_sink.i = getelementptr inbounds %struct.sof_ipc_comp_dai, ptr %call9.i.i.i, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %periods_sink.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %periods_sink.i, align 4
  %periods_source.i = getelementptr inbounds %struct.sof_ipc_comp_dai, ptr %call9.i.i.i, i32 0, i32 1, i32 2
  %43 = ptrtoint ptr %periods_source.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %periods_source.i, align 8
  %frame_fmt.i = getelementptr inbounds %struct.sof_ipc_comp_dai, ptr %call9.i.i.i, i32 0, i32 1, i32 4
  %45 = ptrtoint ptr %frame_fmt.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %frame_fmt.i, align 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_dbg_comp_config.__UNIQUE_ID_ddebug250, ptr noundef %40, ptr noundef nonnull @.str.92, i32 noundef %42, i32 noundef %44, i32 noundef %46) #11
  br label %sof_dbg_comp_config.exit

sof_dbg_comp_config.exit:                         ; preds = %if.then.i, %do.end29
  %tobool31.not = icmp eq ptr %dai, null
  br i1 %tobool31.not, label %sof_dbg_comp_config.exit.finish_crit_edge, label %if.then32

sof_dbg_comp_config.exit.finish_crit_edge:        ; preds = %sof_dbg_comp_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %finish

if.then32:                                        ; preds = %sof_dbg_comp_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %dai to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %scomp, ptr %dai, align 4
  %comp_dai34 = getelementptr inbounds %struct.snd_sof_dai, ptr %dai, i32 0, i32 2
  %48 = call ptr @memcpy(ptr %comp_dai34, ptr %call9.i.i.i, i32 80)
  br label %finish

finish:                                           ; preds = %if.then32, %sof_dbg_comp_config.exit.finish_crit_edge, %do.end15, %do.end
  %ret.0 = phi i32 [ %call.i, %do.end ], [ %call.i65, %do.end15 ], [ 0, %if.then32 ], [ 0, %sof_dbg_comp_config.exit.finish_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %finish, %sof_comp_alloc.exit
  %retval.0 = phi i32 [ %ret.0, %finish ], [ -12, %sof_comp_alloc.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sof_connect_dai_widget(ptr nocapture noundef readonly %scomp, ptr noundef %w, ptr nocapture noundef %dai) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 4
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %rtd_list = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %rtd_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn24 = load ptr, ptr %rtd_list, align 4
  %cmp.not25 = icmp eq ptr %.pn24, %rtd_list
  br i1 %cmp.not25, label %entry.for.end95_crit_edge, label %for.body.lr.ph

entry.for.end95_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end95

for.body.lr.ph:                                   ; preds = %entry
  %sname = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 2
  %name68 = getelementptr inbounds %struct.snd_sof_dai, ptr %dai, i32 0, i32 1
  %dev82 = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %name83 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc89.for.body_crit_edge, %for.body.lr.ph
  %.pn26 = phi ptr [ %.pn24, %for.body.lr.ph ], [ %.pn, %for.inc89.for.body_crit_edge ]
  %3 = ptrtoint ptr %sname to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sname, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc89_crit_edge, label %lor.lhs.false

for.body.for.inc89_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc89

lor.lhs.false:                                    ; preds = %for.body
  %dai_link = getelementptr i8, ptr %.pn26, i32 -1504
  %5 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dai_link, align 4
  %stream_name = getelementptr inbounds %struct.snd_soc_dai_link, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %stream_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stream_name, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %lor.lhs.false.for.inc89_crit_edge, label %if.end

lor.lhs.false.for.inc89_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc89

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @strcmp(ptr noundef nonnull %4, ptr noundef nonnull %8) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.for.inc89_crit_edge

if.end.for.inc89_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc89

if.end9:                                          ; preds = %if.end
  %9 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %w, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.350)
  switch i32 %10, label %if.end9.for.inc89_crit_edge [
    i32 28, label %for.cond10.preheader
    i32 27, label %for.cond41.preheader
  ]

if.end9.for.inc89_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc89

for.cond41.preheader:                             ; preds = %if.end9
  %num_cpus42 = getelementptr i8, ptr %.pn26, i32 -124
  %12 = ptrtoint ptr %num_cpus42 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_cpus42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp4315.not = icmp eq i32 %13, 0
  br i1 %cmp4315.not, label %for.cond41.preheader.for.end56_crit_edge, label %land.rhs44.lr.ph

for.cond41.preheader.for.end56_crit_edge:         ; preds = %for.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end56

land.rhs44.lr.ph:                                 ; preds = %for.cond41.preheader
  %dais45 = getelementptr i8, ptr %.pn26, i32 -132
  %14 = ptrtoint ptr %dais45 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dais45, align 4
  br label %land.rhs44

for.cond10.preheader:                             ; preds = %if.end9
  %num_cpus = getelementptr i8, ptr %.pn26, i32 -124
  %16 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1120.not = icmp eq i32 %17, 0
  br i1 %cmp1120.not, label %for.cond10.preheader.for.end_crit_edge, label %land.rhs.lr.ph

for.cond10.preheader.for.end_crit_edge:           ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %for.cond10.preheader
  %dais = getelementptr i8, ptr %.pn26, i32 -132
  %18 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dais, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.021 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %19, i32 %i.021
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %21, null
  br i1 %tobool12.not, label %land.rhs.for.end_crit_edge, label %for.body13

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body13:                                       ; preds = %land.rhs
  %capture_widget = getelementptr inbounds %struct.snd_soc_dai, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %capture_widget to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %capture_widget, align 4
  %tobool14.not = icmp eq ptr %23, null
  br i1 %tobool14.not, label %if.then15, label %for.inc

if.then15:                                        ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #13
  %capture_widget.le = getelementptr inbounds %struct.snd_soc_dai, ptr %21, i32 0, i32 6
  %24 = ptrtoint ptr %capture_widget.le to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %w, ptr %capture_widget.le, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body13
  %inc = add nuw i32 %i.021, 1
  %exitcond31.not = icmp eq i32 %inc, %17
  br i1 %exitcond31.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then15, %land.rhs.for.end_crit_edge, %for.cond10.preheader.for.end_crit_edge
  %i.013 = phi i32 [ %i.021, %if.then15 ], [ 0, %for.cond10.preheader.for.end_crit_edge ], [ %i.021, %land.rhs.for.end_crit_edge ], [ %17, %for.inc.for.end_crit_edge ]
  %25 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_cpus, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.013, i32 %26)
  %cmp19 = icmp eq i32 %i.013, %26
  br i1 %cmp19, label %do.end, label %if.end21

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev82, align 4
  %29 = ptrtoint ptr %name83 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name83, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.93, ptr noundef %30) #14
  br label %cleanup

if.end21:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dai_link, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %35 = ptrtoint ptr %name68 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %name68, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_connect_dai_widget.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_connect_dai_widget, %for.inc89.sink.split)) #11
          to label %for.inc89 [label %for.inc89.sink.split], !srcloc !710

land.rhs44:                                       ; preds = %for.inc54.land.rhs44_crit_edge, %land.rhs44.lr.ph
  %i.116 = phi i32 [ 0, %land.rhs44.lr.ph ], [ %inc55, %for.inc54.land.rhs44_crit_edge ]
  %arrayidx46 = getelementptr ptr, ptr %15, i32 %i.116
  %36 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx46, align 4
  %tobool47.not = icmp eq ptr %37, null
  br i1 %tobool47.not, label %land.rhs44.for.end56_crit_edge, label %for.body49

land.rhs44.for.end56_crit_edge:                   ; preds = %land.rhs44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end56

for.body49:                                       ; preds = %land.rhs44
  %playback_widget = getelementptr inbounds %struct.snd_soc_dai, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %playback_widget to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %playback_widget, align 4
  %tobool50.not = icmp eq ptr %39, null
  br i1 %tobool50.not, label %if.then51, label %for.inc54

if.then51:                                        ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #13
  %playback_widget.le = getelementptr inbounds %struct.snd_soc_dai, ptr %37, i32 0, i32 5
  %40 = ptrtoint ptr %playback_widget.le to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %w, ptr %playback_widget.le, align 4
  br label %for.end56

for.inc54:                                        ; preds = %for.body49
  %inc55 = add nuw i32 %i.116, 1
  %exitcond.not = icmp eq i32 %inc55, %13
  br i1 %exitcond.not, label %for.inc54.for.end56_crit_edge, label %for.inc54.land.rhs44_crit_edge

for.inc54.land.rhs44_crit_edge:                   ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs44

for.inc54.for.end56_crit_edge:                    ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end56

for.end56:                                        ; preds = %for.inc54.for.end56_crit_edge, %if.then51, %land.rhs44.for.end56_crit_edge, %for.cond41.preheader.for.end56_crit_edge
  %i.19 = phi i32 [ %i.116, %if.then51 ], [ 0, %for.cond41.preheader.for.end56_crit_edge ], [ %i.116, %land.rhs44.for.end56_crit_edge ], [ %13, %for.inc54.for.end56_crit_edge ]
  %41 = ptrtoint ptr %num_cpus42 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_cpus42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.19, i32 %42)
  %cmp58 = icmp eq i32 %i.19, %42
  br i1 %cmp58, label %do.end62, label %if.end65

do.end62:                                         ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev82, align 4
  %45 = ptrtoint ptr %name83 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name83, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.93, ptr noundef %46) #14
  br label %cleanup

if.end65:                                         ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dai_link, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %51 = ptrtoint ptr %name68 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %name68, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_connect_dai_widget.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_connect_dai_widget, %for.inc89.sink.split)) #11
          to label %for.inc89 [label %for.inc89.sink.split], !srcloc !710

for.inc89.sink.split:                             ; preds = %if.end65, %if.end21
  %sof_connect_dai_widget.__UNIQUE_ID_ddebug256.sink = phi ptr [ @sof_connect_dai_widget.__UNIQUE_ID_ddebug256, %if.end21 ], [ @sof_connect_dai_widget.__UNIQUE_ID_ddebug257, %if.end65 ]
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev82, align 4
  %54 = ptrtoint ptr %name83 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %name83, align 4
  %56 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dai_link, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull %sof_connect_dai_widget.__UNIQUE_ID_ddebug256.sink, ptr noundef %53, ptr noundef nonnull @.str.95, ptr noundef %55, ptr noundef %59) #11
  br label %for.inc89

for.inc89:                                        ; preds = %for.inc89.sink.split, %if.end65, %if.end21, %if.end9.for.inc89_crit_edge, %if.end.for.inc89_crit_edge, %lor.lhs.false.for.inc89_crit_edge, %for.body.for.inc89_crit_edge
  %60 = ptrtoint ptr %.pn26 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn = load ptr, ptr %.pn26, align 4
  %cmp.not = icmp eq ptr %.pn, %rtd_list
  br i1 %cmp.not, label %for.inc89.for.end95_crit_edge, label %for.inc89.for.body_crit_edge

for.inc89.for.body_crit_edge:                     ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc89.for.end95_crit_edge:                    ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end95

for.end95:                                        ; preds = %for.inc89.for.end95_crit_edge, %entry.for.end95_crit_edge
  %name96 = getelementptr inbounds %struct.snd_sof_dai, ptr %dai, i32 0, i32 1
  %61 = ptrtoint ptr %name96 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name96, align 4
  %tobool97.not = icmp eq ptr %62, null
  br i1 %tobool97.not, label %do.end101, label %for.end95.cleanup_crit_edge

for.end95.cleanup_crit_edge:                      ; preds = %for.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end101:                                        ; preds = %for.end95
  call void @__sanitizer_cov_trace_pc() #13
  %dev102 = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %63 = ptrtoint ptr %dev102 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev102, align 4
  %name103 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %65 = ptrtoint ptr %name103 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %name103, align 4
  %sname104 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 2
  %67 = ptrtoint ptr %sname104 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sname104, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.99, ptr noundef %66, ptr noundef %68) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end101, %for.end95.cleanup_crit_edge, %do.end62, %do.end
  %retval.0 = phi i32 [ -22, %do.end62 ], [ -22, %do.end ], [ -22, %do.end101 ], [ 0, %for.end95.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sof_widget_load_mixer(ptr nocapture noundef readonly %scomp, i32 noundef %index, ptr nocapture noundef %swidget, ptr noundef %tw) unnamed_addr #0 align 64 {
entry:
  %nil_uuid.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  %0 = call ptr @memset(ptr %nil_uuid.i, i32 0, i32 16)
  %comp_ext.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 11
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %comp_ext.i, ptr noundef nonnull dereferenceable(16) %nil_uuid.i, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 64, i32 80
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i, i32 noundef 3520) #16
  %tobool2.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool2.not.i, label %sof_comp_alloc.exit, label %if.end4.i

if.end4.i:                                        ; preds = %entry
  %1 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %spec.select.i, ptr %call9.i.i.i, align 128
  %cmd.i = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %call9.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 805371904, ptr %cmd.i, align 4
  %comp_id.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 1
  %3 = ptrtoint ptr %comp_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %comp_id.i, align 4
  %id.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %id.i, align 8
  %pipeline_id.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %pipeline_id.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %index, ptr %pipeline_id.i, align 16
  %core.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 5
  %7 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %core.i, align 4
  %core6.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %core6.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %core6.i, align 4
  br i1 %tobool.not.i, label %if.end4.i.if.end_crit_edge, label %if.then7.i

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i, i32 64
  %10 = call ptr @memcpy(ptr %add.ptr.i, ptr %comp_ext.i, i32 16)
  %ext_data_length.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %ext_data_length.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16, ptr %ext_data_length.i, align 8
  br label %if.end

sof_comp_alloc.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.then7.i, %if.end4.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  %type = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 6, ptr %type, align 4
  %config = getelementptr inbounds %struct.sof_ipc_comp_mixer, ptr %call9.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 36, ptr %config, align 4
  %array = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 1
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %priv, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %call.i = tail call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef %config, ptr noundef nonnull @comp_tokens, i32 noundef 3, ptr noundef %array, i32 noundef %16, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %priv, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.101, i32 noundef %20) #14
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_dbg_comp_config.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_widget_load_mixer, %if.then.i)) #11
          to label %sof_dbg_comp_config.exit [label %if.then.i], !srcloc !710

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %periods_sink.i = getelementptr inbounds %struct.sof_ipc_comp_mixer, ptr %call9.i.i.i, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %periods_sink.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %periods_sink.i, align 4
  %periods_source.i = getelementptr inbounds %struct.sof_ipc_comp_mixer, ptr %call9.i.i.i, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %periods_source.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %periods_source.i, align 8
  %frame_fmt.i = getelementptr inbounds %struct.sof_ipc_comp_mixer, ptr %call9.i.i.i, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %frame_fmt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %frame_fmt.i, align 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_dbg_comp_config.__UNIQUE_ID_ddebug250, ptr noundef %22, ptr noundef nonnull @.str.92, i32 noundef %24, i32 noundef %26, i32 noundef %28) #11
  br label %sof_dbg_comp_config.exit

sof_dbg_comp_config.exit:                         ; preds = %if.then.i, %if.end6
  %private8 = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 12
  %29 = ptrtoint ptr %private8 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call9.i.i.i, ptr %private8, align 4
  br label %cleanup

cleanup:                                          ; preds = %sof_dbg_comp_config.exit, %do.end, %sof_comp_alloc.exit
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %sof_dbg_comp_config.exit ], [ -12, %sof_comp_alloc.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sof_widget_load_pga(ptr nocapture noundef readonly %scomp, i32 noundef %index, ptr nocapture noundef %swidget, ptr noundef %tw) unnamed_addr #0 align 64 {
entry:
  %nil_uuid.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  %4 = call ptr @memset(ptr %nil_uuid.i, i32 0, i32 16)
  %comp_ext.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 11
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %comp_ext.i, ptr noundef nonnull dereferenceable(16) %nil_uuid.i, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 84, i32 100
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i, i32 noundef 3520) #16
  %tobool2.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool2.not.i, label %sof_comp_alloc.exit, label %if.end4.i

if.end4.i:                                        ; preds = %entry
  %5 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select.i, ptr %call9.i.i.i, align 128
  %cmd.i = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %call9.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 805371904, ptr %cmd.i, align 4
  %comp_id.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 1
  %7 = ptrtoint ptr %comp_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %comp_id.i, align 4
  %id.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %id.i, align 8
  %pipeline_id.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %pipeline_id.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %index, ptr %pipeline_id.i, align 16
  %core.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 5
  %11 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %core.i, align 4
  %core6.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %core6.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %core6.i, align 4
  br i1 %tobool.not.i, label %if.end4.i.if.end_crit_edge, label %if.then7.i

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i, i32 84
  %14 = call ptr @memcpy(ptr %add.ptr.i, ptr %comp_ext.i, i32 16)
  %ext_data_length.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %ext_data_length.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16, ptr %ext_data_length.i, align 8
  br label %if.end

sof_comp_alloc.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.then7.i, %if.end4.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  %num_kcontrols = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 0, i32 12
  %16 = ptrtoint ptr %num_kcontrols to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %num_kcontrols, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool2.not = icmp eq i32 %17, 0
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.103, i32 noundef 0) #14
  br label %err

if.end5:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 5, ptr %type, align 4
  %config = getelementptr inbounds %struct.sof_ipc_comp_volume, ptr %call9.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 36, ptr %config, align 4
  %array = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 1
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %priv, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %call.i = tail call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull @volume_tokens, i32 noundef 2, ptr noundef %array, i32 noundef %24, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end14, label %do.end11

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %priv, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.106, i32 noundef %28) #14
  br label %err

if.end14:                                         ; preds = %if.end5
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %priv, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %call.i88 = tail call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef %config, ptr noundef nonnull @comp_tokens, i32 noundef 3, ptr noundef %array, i32 noundef %31, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %cmp20.not = icmp eq i32 %call.i88, 0
  br i1 %cmp20.not, label %if.end27, label %do.end24

do.end24:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %priv, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.109, i32 noundef %36) #14
  br label %err

if.end27:                                         ; preds = %if.end14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_dbg_comp_config.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_widget_load_pga, %if.then.i)) #11
          to label %sof_dbg_comp_config.exit [label %if.then.i], !srcloc !710

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  %periods_sink.i = getelementptr inbounds %struct.sof_ipc_comp_volume, ptr %call9.i.i.i, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %periods_sink.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %periods_sink.i, align 4
  %periods_source.i = getelementptr inbounds %struct.sof_ipc_comp_volume, ptr %call9.i.i.i, i32 0, i32 1, i32 2
  %41 = ptrtoint ptr %periods_source.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %periods_source.i, align 8
  %frame_fmt.i = getelementptr inbounds %struct.sof_ipc_comp_volume, ptr %call9.i.i.i, i32 0, i32 1, i32 4
  %43 = ptrtoint ptr %frame_fmt.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %frame_fmt.i, align 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_dbg_comp_config.__UNIQUE_ID_ddebug250, ptr noundef %38, ptr noundef nonnull @.str.92, i32 noundef %40, i32 noundef %42, i32 noundef %44) #11
  br label %sof_dbg_comp_config.exit

sof_dbg_comp_config.exit:                         ; preds = %if.then.i, %if.end27
  %private29 = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 12
  %45 = ptrtoint ptr %private29 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call9.i.i.i, ptr %private29, align 4
  %kcontrol_list = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 36
  %46 = ptrtoint ptr %kcontrol_list to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn96 = load ptr, ptr %kcontrol_list, align 4
  %cmp31.not97 = icmp eq ptr %.pn96, %kcontrol_list
  br i1 %cmp31.not97, label %sof_dbg_comp_config.exit.cleanup_crit_edge, label %for.body.lr.ph

sof_dbg_comp_config.exit.cleanup_crit_edge:       ; preds = %sof_dbg_comp_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %sof_dbg_comp_config.exit
  %47 = ptrtoint ptr %comp_id.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %comp_id.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn98 = phi ptr [ %.pn96, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %comp_id = getelementptr i8, ptr %.pn98, i32 -36
  %49 = ptrtoint ptr %comp_id to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %comp_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %48)
  %cmp33 = icmp eq i32 %50, %48
  br i1 %cmp33, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %volume_table = getelementptr i8, ptr %.pn98, i32 -4
  %51 = ptrtoint ptr %volume_table to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %volume_table, align 4
  %tobool34.not = icmp eq ptr %52, null
  br i1 %tobool34.not, label %land.lhs.true.for.inc_crit_edge, label %if.then35

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %volume_table.le = getelementptr i8, ptr %.pn98, i32 -4
  %min_volume_step = getelementptr i8, ptr %.pn98, i32 -32
  %53 = ptrtoint ptr %min_volume_step to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %min_volume_step, align 4
  %max_volume_step = getelementptr i8, ptr %.pn98, i32 -28
  %55 = ptrtoint ptr %max_volume_step to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_volume_step, align 4
  %arrayidx = getelementptr i32, ptr %52, i32 %54
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx, align 4
  %min_value = getelementptr inbounds %struct.sof_ipc_comp_volume, ptr %call9.i.i.i, i32 0, i32 3
  %59 = ptrtoint ptr %min_value to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %min_value, align 4
  %60 = ptrtoint ptr %volume_table.le to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %volume_table.le, align 4
  %arrayidx38 = getelementptr i32, ptr %61, i32 %56
  %62 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx38, align 4
  %max_value = getelementptr inbounds %struct.sof_ipc_comp_volume, ptr %call9.i.i.i, i32 0, i32 4
  %64 = ptrtoint ptr %max_value to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %max_value, align 8
  %num_channels = getelementptr i8, ptr %.pn98, i32 -24
  %65 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_channels, align 4
  %channels = getelementptr inbounds %struct.sof_ipc_comp_volume, ptr %call9.i.i.i, i32 0, i32 2
  %67 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %channels, align 64
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %68 = ptrtoint ptr %.pn98 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn = load ptr, ptr %.pn98, align 4
  %cmp31.not = icmp eq ptr %.pn, %kcontrol_list
  br i1 %cmp31.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err:                                              ; preds = %do.end24, %do.end11, %do.end
  %ret.0 = phi i32 [ %call.i, %do.end11 ], [ %call.i88, %do.end24 ], [ -22, %do.end ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %for.inc.cleanup_crit_edge, %if.then35, %sof_dbg_comp_config.exit.cleanup_crit_edge, %sof_comp_alloc.exit
  %retval.0 = phi i32 [ %ret.0, %err ], [ -12, %sof_comp_alloc.exit ], [ 0, %if.then35 ], [ 0, %sof_dbg_comp_config.exit.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sof_widget_load_buffer(ptr nocapture noundef readonly %scomp, i32 noundef %index, ptr nocapture noundef %swidget, ptr noundef %tw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 44) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 44, ptr %call7.i.i, align 8
  %cmd = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 807403520, ptr %cmd, align 4
  %comp_id = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 1
  %3 = ptrtoint ptr %comp_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %comp_id, align 4
  %id = getelementptr inbounds %struct.sof_ipc_comp, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %id, align 8
  %type = getelementptr inbounds %struct.sof_ipc_comp, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 12, ptr %type, align 4
  %pipeline_id = getelementptr inbounds %struct.sof_ipc_comp, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %pipeline_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %index, ptr %pipeline_id, align 8
  %core = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 5
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %core, align 4
  %core7 = getelementptr inbounds %struct.sof_ipc_comp, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %core7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %core7, align 4
  %array = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 1
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %priv, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %call.i = tail call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @buffer_tokens, i32 noundef 2, ptr noundef %array, i32 noundef %13, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.body13, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %priv, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.111, i32 noundef %17) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

do.body13:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_widget_load_buffer.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_widget_load_buffer, %if.then18)) #11
          to label %do.end23 [label %if.then18], !srcloc !710

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  %dev19 = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %18 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev19, align 4
  %widget = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 8
  %20 = ptrtoint ptr %widget to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %widget, align 4
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name, align 4
  %size20 = getelementptr inbounds %struct.sof_ipc_buffer, ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %size20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size20, align 4
  %caps = getelementptr inbounds %struct.sof_ipc_buffer, ptr %call7.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %caps, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_widget_load_buffer.__UNIQUE_ID_ddebug259, ptr noundef %19, ptr noundef nonnull @.str.113, ptr noundef %23, i32 noundef %25, i32 noundef %27) #11
  br label %do.end23

do.end23:                                         ; preds = %if.then18, %do.body13
  %private24 = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 12
  %28 = ptrtoint ptr %private24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %private24, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %do.end23 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sof_widget_load_pipeline(ptr noundef %scomp, i32 noundef %index, ptr noundef %swidget, ptr noundef %tw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 48) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 48, ptr %call7.i.i, align 8
  %cmd = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 806354944, ptr %cmd, align 4
  %pipeline_id = getelementptr inbounds %struct.sof_ipc_pipe_new, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %pipeline_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %index, ptr %pipeline_id, align 4
  %comp_id = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 1
  %4 = ptrtoint ptr %comp_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %comp_id, align 4
  %comp_id2 = getelementptr inbounds %struct.sof_ipc_pipe_new, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %comp_id2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %comp_id2, align 8
  %sname = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 0, i32 3
  %call3 = tail call ptr @snd_sof_find_swidget(ptr noundef %scomp, ptr noundef %sname) #11
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.114, ptr noundef %name, ptr noundef %sname) #14
  br label %err

if.end9:                                          ; preds = %if.end
  %comp_id10 = getelementptr inbounds %struct.snd_sof_widget, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %comp_id10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %comp_id10, align 4
  %sched_id = getelementptr inbounds %struct.sof_ipc_pipe_new, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %sched_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %sched_id, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_widget_load_pipeline.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_widget_load_pipeline, %if.then16)) #11
          to label %do.end23 [label %if.then16], !srcloc !710

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %dev17 = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %12 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev17, align 4
  %14 = ptrtoint ptr %pipeline_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pipeline_id, align 4
  %16 = ptrtoint ptr %comp_id2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %comp_id2, align 8
  %18 = ptrtoint ptr %sched_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sched_id, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_widget_load_pipeline.__UNIQUE_ID_ddebug261, ptr noundef %13, ptr noundef nonnull @.str.116, i32 noundef %15, i32 noundef %17, i32 noundef %19) #11
  br label %do.end23

do.end23:                                         ; preds = %if.then16, %if.end9
  %array = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 1
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %priv, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %call.i = tail call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @sched_tokens, i32 noundef 6, ptr noundef %array, i32 noundef %22, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end33, label %do.end30

do.end30:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  %dev31 = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %23 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev31, align 4
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %priv, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.118, i32 noundef %26) #14
  br label %err

if.end33:                                         ; preds = %do.end23
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %priv, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %call.i122 = tail call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef %swidget, ptr noundef nonnull @pipeline_tokens, i32 noundef 1, ptr noundef %array, i32 noundef %29, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %cmp38.not = icmp eq i32 %call.i122, 0
  br i1 %cmp38.not, label %if.end45, label %do.end42

do.end42:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %dev43 = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %30 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev43, align 4
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %priv, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.121, i32 noundef %33) #14
  br label %err

if.end45:                                         ; preds = %if.end33
  %call46 = tail call zeroext i1 @sof_debug_check_flag(i32 noundef 32) #11
  br i1 %call46, label %if.then47, label %if.end45.if.end48_crit_edge

if.end45.if.end48_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %core = getelementptr inbounds %struct.sof_ipc_pipe_new, ptr %call7.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %core, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end45.if.end48_crit_edge
  %call49 = tail call zeroext i1 @sof_debug_check_flag(i32 noundef 8) #11
  br i1 %call49, label %if.then50, label %if.end48.do.body54_crit_edge

if.end48.do.body54_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body54

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %call51 = tail call zeroext i1 @sof_debug_check_flag(i32 noundef 16) #11
  %dynamic_pipeline_widget = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 7
  %frombool52 = zext i1 %call51 to i8
  %35 = ptrtoint ptr %dynamic_pipeline_widget to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %frombool52, ptr %dynamic_pipeline_widget, align 4
  br label %do.body54

do.body54:                                        ; preds = %if.then50, %if.end48.do.body54_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_widget_load_pipeline.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_widget_load_pipeline, %if.then66)) #11
          to label %do.end74 [label %if.then66], !srcloc !710

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #13
  %dev67 = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %36 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev67, align 4
  %widget = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 8
  %38 = ptrtoint ptr %widget to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %widget, align 4
  %name68 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %name68 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name68, align 4
  %period = getelementptr inbounds %struct.sof_ipc_pipe_new, ptr %call7.i.i, i32 0, i32 5
  %42 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %period, align 8
  %priority = getelementptr inbounds %struct.sof_ipc_pipe_new, ptr %call7.i.i, i32 0, i32 6
  %44 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %priority, align 4
  %period_mips = getelementptr inbounds %struct.sof_ipc_pipe_new, ptr %call7.i.i, i32 0, i32 7
  %46 = ptrtoint ptr %period_mips to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %period_mips, align 8
  %core69 = getelementptr inbounds %struct.sof_ipc_pipe_new, ptr %call7.i.i, i32 0, i32 4
  %48 = ptrtoint ptr %core69 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %core69, align 4
  %frames_per_sched = getelementptr inbounds %struct.sof_ipc_pipe_new, ptr %call7.i.i, i32 0, i32 8
  %50 = ptrtoint ptr %frames_per_sched to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %frames_per_sched, align 4
  %dynamic_pipeline_widget70 = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 7
  %52 = ptrtoint ptr %dynamic_pipeline_widget70 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %dynamic_pipeline_widget70, align 4, !range !712
  %54 = zext i8 %53 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_widget_load_pipeline.__UNIQUE_ID_ddebug262, ptr noundef %37, ptr noundef nonnull @.str.123, ptr noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %54) #11
  br label %do.end74

do.end74:                                         ; preds = %if.then66, %do.body54
  %private75 = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 12
  %55 = ptrtoint ptr %private75 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call7.i.i, ptr %private75, align 4
  br label %cleanup

err:                                              ; preds = %do.end42, %do.end30, %do.end
  %ret.0 = phi i32 [ %call.i, %do.end30 ], [ %call.i122, %do.end42 ], [ -22, %do.end ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %do.end74, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %do.end74 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sof_widget_load_pcm(ptr nocapture noundef readonly %scomp, i32 noundef %index, ptr nocapture noundef %swidget, i32 noundef %dir, ptr noundef %tw) unnamed_addr #0 align 64 {
entry:
  %nil_uuid.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  %0 = call ptr @memset(ptr %nil_uuid.i, i32 0, i32 16)
  %comp_ext.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 11
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %comp_ext.i, ptr noundef nonnull dereferenceable(16) %nil_uuid.i, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 76, i32 92
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i, i32 noundef 3520) #16
  %tobool2.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool2.not.i, label %sof_comp_alloc.exit, label %if.end4.i

if.end4.i:                                        ; preds = %entry
  %1 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %spec.select.i, ptr %call9.i.i.i, align 128
  %cmd.i = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %call9.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 805371904, ptr %cmd.i, align 4
  %comp_id.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 1
  %3 = ptrtoint ptr %comp_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %comp_id.i, align 4
  %id.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %id.i, align 8
  %pipeline_id.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %pipeline_id.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %index, ptr %pipeline_id.i, align 16
  %core.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 5
  %7 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %core.i, align 4
  %core6.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %core6.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %core6.i, align 4
  br i1 %tobool.not.i, label %if.end4.i.if.end_crit_edge, label %if.then7.i

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i, i32 76
  %10 = call ptr @memcpy(ptr %add.ptr.i, ptr %comp_ext.i, i32 16)
  %ext_data_length.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %ext_data_length.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16, ptr %ext_data_length.i, align 8
  br label %if.end

sof_comp_alloc.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.then7.i, %if.end4.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  %type = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %type, align 4
  %direction = getelementptr inbounds %struct.sof_ipc_comp_host, ptr %call9.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %dir, ptr %direction, align 64
  %config = getelementptr inbounds %struct.sof_ipc_comp_host, ptr %call9.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 36, ptr %config, align 4
  %array = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 1
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %priv, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %call.i = tail call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull @pcm_tokens, i32 noundef 1, ptr noundef %array, i32 noundef %17, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %priv, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.124, i32 noundef %21) #14
  br label %err

if.end5:                                          ; preds = %if.end
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %priv, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %call.i57 = tail call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef %config, ptr noundef nonnull @comp_tokens, i32 noundef 3, ptr noundef %array, i32 noundef %24, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %cmp11.not = icmp eq i32 %call.i57, 0
  br i1 %cmp11.not, label %do.body19, label %do.end15

do.end15:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %dev16 = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %25 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev16, align 4
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %priv, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.127, i32 noundef %29) #14
  br label %err

do.body19:                                        ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_widget_load_pcm.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_widget_load_pcm, %if.then24)) #11
          to label %do.end28 [label %if.then24], !srcloc !710

if.then24:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  %dev25 = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %30 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev25, align 4
  %widget = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 8
  %32 = ptrtoint ptr %widget to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %widget, align 4
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_widget_load_pcm.__UNIQUE_ID_ddebug260, ptr noundef %31, ptr noundef nonnull @.str.129, ptr noundef %35) #11
  br label %do.end28

do.end28:                                         ; preds = %if.then24, %do.body19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_dbg_comp_config.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_widget_load_pcm, %if.then.i)) #11
          to label %sof_dbg_comp_config.exit [label %if.then.i], !srcloc !710

if.then.i:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  %periods_sink.i = getelementptr inbounds %struct.sof_ipc_comp_host, ptr %call9.i.i.i, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %periods_sink.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %periods_sink.i, align 4
  %periods_source.i = getelementptr inbounds %struct.sof_ipc_comp_host, ptr %call9.i.i.i, i32 0, i32 1, i32 2
  %40 = ptrtoint ptr %periods_source.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %periods_source.i, align 8
  %frame_fmt.i = getelementptr inbounds %struct.sof_ipc_comp_host, ptr %call9.i.i.i, i32 0, i32 1, i32 4
  %42 = ptrtoint ptr %frame_fmt.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %frame_fmt.i, align 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_dbg_comp_config.__UNIQUE_ID_ddebug250, ptr noundef %37, ptr noundef nonnull @.str.92, i32 noundef %39, i32 noundef %41, i32 noundef %43) #11
  br label %sof_dbg_comp_config.exit

sof_dbg_comp_config.exit:                         ; preds = %if.then.i, %do.end28
  %private30 = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 12
  %44 = ptrtoint ptr %private30 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call9.i.i.i, ptr %private30, align 4
  br label %cleanup

err:                                              ; preds = %do.end15, %do.end
  %ret.0 = phi i32 [ %call.i, %do.end ], [ %call.i57, %do.end15 ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %sof_dbg_comp_config.exit, %sof_comp_alloc.exit
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %sof_dbg_comp_config.exit ], [ -12, %sof_comp_alloc.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sof_widget_load_src(ptr nocapture noundef readonly %scomp, i32 noundef %index, ptr nocapture noundef %swidget, ptr noundef %tw) unnamed_addr #0 align 64 {
entry:
  %nil_uuid.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  %0 = call ptr @memset(ptr %nil_uuid.i, i32 0, i32 16)
  %comp_ext.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 11
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %comp_ext.i, ptr noundef nonnull dereferenceable(16) %nil_uuid.i, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 76, i32 92
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i, i32 noundef 3520) #16
  %tobool2.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool2.not.i, label %sof_comp_alloc.exit, label %if.end4.i

if.end4.i:                                        ; preds = %entry
  %1 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %spec.select.i, ptr %call9.i.i.i, align 128
  %cmd.i = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %call9.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 805371904, ptr %cmd.i, align 4
  %comp_id.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 1
  %3 = ptrtoint ptr %comp_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %comp_id.i, align 4
  %id.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %id.i, align 8
  %pipeline_id.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %pipeline_id.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %index, ptr %pipeline_id.i, align 16
  %core.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 5
  %7 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %core.i, align 4
  %core6.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %core6.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %core6.i, align 4
  br i1 %tobool.not.i, label %if.end4.i.if.end_crit_edge, label %if.then7.i

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i, i32 76
  %10 = call ptr @memcpy(ptr %add.ptr.i, ptr %comp_ext.i, i32 16)
  %ext_data_length.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %ext_data_length.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16, ptr %ext_data_length.i, align 8
  br label %if.end

sof_comp_alloc.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.then7.i, %if.end4.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  %type = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %type, align 4
  %config = getelementptr inbounds %struct.sof_ipc_comp_src, ptr %call9.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 36, ptr %config, align 4
  %array = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 1
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %priv, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %call.i = tail call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull @src_tokens, i32 noundef 2, ptr noundef %array, i32 noundef %16, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %priv, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.130, i32 noundef %20) #14
  br label %err

if.end5:                                          ; preds = %if.end
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %priv, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %call.i58 = tail call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef %config, ptr noundef nonnull @comp_tokens, i32 noundef 3, ptr noundef %array, i32 noundef %23, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %cmp11.not = icmp eq i32 %call.i58, 0
  br i1 %cmp11.not, label %do.body19, label %do.end15

do.end15:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %dev16 = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %24 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev16, align 4
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %priv, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.133, i32 noundef %28) #14
  br label %err

do.body19:                                        ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_widget_load_src.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_widget_load_src, %if.then24)) #11
          to label %do.end28 [label %if.then24], !srcloc !710

if.then24:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  %dev25 = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %29 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev25, align 4
  %widget = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 8
  %31 = ptrtoint ptr %widget to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %widget, align 4
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name, align 4
  %source_rate = getelementptr inbounds %struct.sof_ipc_comp_src, ptr %call9.i.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %source_rate to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %source_rate, align 64
  %sink_rate = getelementptr inbounds %struct.sof_ipc_comp_src, ptr %call9.i.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %sink_rate to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sink_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_widget_load_src.__UNIQUE_ID_ddebug263, ptr noundef %30, ptr noundef nonnull @.str.135, ptr noundef %34, i32 noundef %36, i32 noundef %38) #11
  br label %do.end28

do.end28:                                         ; preds = %if.then24, %do.body19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_dbg_comp_config.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_widget_load_src, %if.then.i)) #11
          to label %sof_dbg_comp_config.exit [label %if.then.i], !srcloc !710

if.then.i:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  %periods_sink.i = getelementptr inbounds %struct.sof_ipc_comp_src, ptr %call9.i.i.i, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %periods_sink.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %periods_sink.i, align 4
  %periods_source.i = getelementptr inbounds %struct.sof_ipc_comp_src, ptr %call9.i.i.i, i32 0, i32 1, i32 2
  %43 = ptrtoint ptr %periods_source.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %periods_source.i, align 8
  %frame_fmt.i = getelementptr inbounds %struct.sof_ipc_comp_src, ptr %call9.i.i.i, i32 0, i32 1, i32 4
  %45 = ptrtoint ptr %frame_fmt.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %frame_fmt.i, align 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_dbg_comp_config.__UNIQUE_ID_ddebug250, ptr noundef %40, ptr noundef nonnull @.str.92, i32 noundef %42, i32 noundef %44, i32 noundef %46) #11
  br label %sof_dbg_comp_config.exit

sof_dbg_comp_config.exit:                         ; preds = %if.then.i, %do.end28
  %private30 = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 12
  %47 = ptrtoint ptr %private30 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call9.i.i.i, ptr %private30, align 4
  br label %cleanup

err:                                              ; preds = %do.end15, %do.end
  %ret.0 = phi i32 [ %call.i, %do.end ], [ %call.i58, %do.end15 ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %sof_dbg_comp_config.exit, %sof_comp_alloc.exit
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %sof_dbg_comp_config.exit ], [ -12, %sof_comp_alloc.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sof_widget_load_asrc(ptr nocapture noundef readonly %scomp, i32 noundef %index, ptr nocapture noundef %swidget, ptr noundef %tw) unnamed_addr #0 align 64 {
entry:
  %nil_uuid.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  %0 = call ptr @memset(ptr %nil_uuid.i, i32 0, i32 16)
  %comp_ext.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 11
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %comp_ext.i, ptr noundef nonnull dereferenceable(16) %nil_uuid.i, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 96, i32 112
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i, i32 noundef 3520) #16
  %tobool2.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool2.not.i, label %sof_comp_alloc.exit, label %if.end4.i

if.end4.i:                                        ; preds = %entry
  %1 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %spec.select.i, ptr %call9.i.i.i, align 128
  %cmd.i = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %call9.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 805371904, ptr %cmd.i, align 4
  %comp_id.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 1
  %3 = ptrtoint ptr %comp_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %comp_id.i, align 4
  %id.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %id.i, align 8
  %pipeline_id.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %pipeline_id.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %index, ptr %pipeline_id.i, align 16
  %core.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 5
  %7 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %core.i, align 4
  %core6.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %core6.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %core6.i, align 4
  br i1 %tobool.not.i, label %if.end4.i.if.end_crit_edge, label %if.then7.i

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i, i32 96
  %10 = call ptr @memcpy(ptr %add.ptr.i, ptr %comp_ext.i, i32 16)
  %ext_data_length.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %ext_data_length.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16, ptr %ext_data_length.i, align 8
  br label %if.end

sof_comp_alloc.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.then7.i, %if.end4.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  %type = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 19, ptr %type, align 4
  %config = getelementptr inbounds %struct.sof_ipc_comp_asrc, ptr %call9.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 36, ptr %config, align 4
  %array = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 1
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %priv, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %call.i = tail call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull @asrc_tokens, i32 noundef 4, ptr noundef %array, i32 noundef %16, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %priv, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.136, i32 noundef %20) #14
  br label %err

if.end5:                                          ; preds = %if.end
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %priv, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %call.i60 = tail call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef %config, ptr noundef nonnull @comp_tokens, i32 noundef 3, ptr noundef %array, i32 noundef %23, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp11.not = icmp eq i32 %call.i60, 0
  br i1 %cmp11.not, label %do.body19, label %do.end15

do.end15:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %dev16 = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %24 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev16, align 4
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %priv, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.139, i32 noundef %28) #14
  br label %err

do.body19:                                        ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_widget_load_asrc.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_widget_load_asrc, %if.then24)) #11
          to label %do.end28 [label %if.then24], !srcloc !710

if.then24:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  %dev25 = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %29 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev25, align 4
  %widget = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 8
  %31 = ptrtoint ptr %widget to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %widget, align 4
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name, align 4
  %source_rate = getelementptr inbounds %struct.sof_ipc_comp_asrc, ptr %call9.i.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %source_rate to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %source_rate, align 64
  %sink_rate = getelementptr inbounds %struct.sof_ipc_comp_asrc, ptr %call9.i.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %sink_rate to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sink_rate, align 4
  %asynchronous_mode = getelementptr inbounds %struct.sof_ipc_comp_asrc, ptr %call9.i.i.i, i32 0, i32 4
  %39 = ptrtoint ptr %asynchronous_mode to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %asynchronous_mode, align 8
  %operation_mode = getelementptr inbounds %struct.sof_ipc_comp_asrc, ptr %call9.i.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %operation_mode to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %operation_mode, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_widget_load_asrc.__UNIQUE_ID_ddebug264, ptr noundef %30, ptr noundef nonnull @.str.141, ptr noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42) #11
  br label %do.end28

do.end28:                                         ; preds = %if.then24, %do.body19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_dbg_comp_config.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_widget_load_asrc, %if.then.i)) #11
          to label %sof_dbg_comp_config.exit [label %if.then.i], !srcloc !710

if.then.i:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 4
  %periods_sink.i = getelementptr inbounds %struct.sof_ipc_comp_asrc, ptr %call9.i.i.i, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %periods_sink.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %periods_sink.i, align 4
  %periods_source.i = getelementptr inbounds %struct.sof_ipc_comp_asrc, ptr %call9.i.i.i, i32 0, i32 1, i32 2
  %47 = ptrtoint ptr %periods_source.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %periods_source.i, align 8
  %frame_fmt.i = getelementptr inbounds %struct.sof_ipc_comp_asrc, ptr %call9.i.i.i, i32 0, i32 1, i32 4
  %49 = ptrtoint ptr %frame_fmt.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %frame_fmt.i, align 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_dbg_comp_config.__UNIQUE_ID_ddebug250, ptr noundef %44, ptr noundef nonnull @.str.92, i32 noundef %46, i32 noundef %48, i32 noundef %50) #11
  br label %sof_dbg_comp_config.exit

sof_dbg_comp_config.exit:                         ; preds = %if.then.i, %do.end28
  %private30 = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 12
  %51 = ptrtoint ptr %private30 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call9.i.i.i, ptr %private30, align 4
  br label %cleanup

err:                                              ; preds = %do.end15, %do.end
  %ret.0 = phi i32 [ %call.i, %do.end ], [ %call.i60, %do.end15 ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %sof_dbg_comp_config.exit, %sof_comp_alloc.exit
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %sof_dbg_comp_config.exit ], [ -12, %sof_comp_alloc.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sof_widget_load_siggen(ptr nocapture noundef readonly %scomp, i32 noundef %index, ptr nocapture noundef %swidget, ptr noundef %tw) unnamed_addr #0 align 64 {
entry:
  %nil_uuid.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  %0 = call ptr @memset(ptr %nil_uuid.i, i32 0, i32 16)
  %comp_ext.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 11
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %comp_ext.i, ptr noundef nonnull dereferenceable(16) %nil_uuid.i, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 100, i32 116
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i, i32 noundef 3520) #16
  %tobool2.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool2.not.i, label %sof_comp_alloc.exit, label %if.end4.i

if.end4.i:                                        ; preds = %entry
  %1 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %spec.select.i, ptr %call9.i.i.i, align 128
  %cmd.i = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %call9.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 805371904, ptr %cmd.i, align 4
  %comp_id.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 1
  %3 = ptrtoint ptr %comp_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %comp_id.i, align 4
  %id.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %id.i, align 8
  %pipeline_id.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %pipeline_id.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %index, ptr %pipeline_id.i, align 16
  %core.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 5
  %7 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %core.i, align 4
  %core6.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %core6.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %core6.i, align 4
  br i1 %tobool.not.i, label %if.end4.i.if.end5_crit_edge, label %if.then7.i

if.end4.i.if.end5_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i, i32 100
  %10 = call ptr @memcpy(ptr %add.ptr.i, ptr %comp_ext.i, i32 16)
  %ext_data_length.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %ext_data_length.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16, ptr %ext_data_length.i, align 8
  br label %if.end5

sof_comp_alloc.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  br label %cleanup

if.end5:                                          ; preds = %if.then7.i, %if.end4.i.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  %type = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 10, ptr %type, align 4
  %config = getelementptr inbounds %struct.sof_ipc_comp_tone, ptr %call9.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 36, ptr %config, align 4
  %array = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 1
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %priv, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %call.i58 = tail call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef %config, ptr noundef nonnull @comp_tokens, i32 noundef 3, ptr noundef %array, i32 noundef %16, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %cmp11.not = icmp eq i32 %call.i58, 0
  br i1 %cmp11.not, label %do.body19, label %err

do.body19:                                        ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_widget_load_siggen.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_widget_load_siggen, %if.then24)) #11
          to label %do.end28 [label %if.then24], !srcloc !710

if.then24:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  %dev25 = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %17 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev25, align 4
  %widget = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 8
  %19 = ptrtoint ptr %widget to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %widget, align 4
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 4
  %frequency = getelementptr inbounds %struct.sof_ipc_comp_tone, ptr %call9.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %frequency, align 4
  %amplitude = getelementptr inbounds %struct.sof_ipc_comp_tone, ptr %call9.i.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %amplitude to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %amplitude, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_widget_load_siggen.__UNIQUE_ID_ddebug265, ptr noundef %18, ptr noundef nonnull @.str.147, ptr noundef %22, i32 noundef %24, i32 noundef %26) #11
  br label %do.end28

do.end28:                                         ; preds = %if.then24, %do.body19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_dbg_comp_config.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_widget_load_siggen, %if.then.i)) #11
          to label %sof_dbg_comp_config.exit [label %if.then.i], !srcloc !710

if.then.i:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %periods_sink.i = getelementptr inbounds %struct.sof_ipc_comp_tone, ptr %call9.i.i.i, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %periods_sink.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %periods_sink.i, align 4
  %periods_source.i = getelementptr inbounds %struct.sof_ipc_comp_tone, ptr %call9.i.i.i, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %periods_source.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %periods_source.i, align 8
  %frame_fmt.i = getelementptr inbounds %struct.sof_ipc_comp_tone, ptr %call9.i.i.i, i32 0, i32 1, i32 4
  %33 = ptrtoint ptr %frame_fmt.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %frame_fmt.i, align 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_dbg_comp_config.__UNIQUE_ID_ddebug250, ptr noundef %28, ptr noundef nonnull @.str.92, i32 noundef %30, i32 noundef %32, i32 noundef %34) #11
  br label %sof_dbg_comp_config.exit

sof_dbg_comp_config.exit:                         ; preds = %if.then.i, %do.end28
  %private30 = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 12
  %35 = ptrtoint ptr %private30 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call9.i.i.i, ptr %private30, align 4
  br label %cleanup

err:                                              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %dev16 = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %36 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev16, align 4
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %priv, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.145, i32 noundef %40) #14
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %sof_dbg_comp_config.exit, %sof_comp_alloc.exit
  %retval.0 = phi i32 [ %call.i58, %err ], [ 0, %sof_dbg_comp_config.exit ], [ -12, %sof_comp_alloc.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sof_widget_load_mux(ptr nocapture noundef readonly %scomp, i32 noundef %index, ptr nocapture noundef %swidget, ptr noundef %tw) unnamed_addr #0 align 64 {
entry:
  %nil_uuid.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  %0 = call ptr @memset(ptr %nil_uuid.i, i32 0, i32 16)
  %comp_ext.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 11
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %comp_ext.i, ptr noundef nonnull dereferenceable(16) %nil_uuid.i, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 64, i32 80
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i, i32 noundef 3520) #16
  %tobool2.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool2.not.i, label %sof_comp_alloc.exit, label %if.end4.i

if.end4.i:                                        ; preds = %entry
  %1 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %spec.select.i, ptr %call9.i.i.i, align 128
  %cmd.i = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %call9.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 805371904, ptr %cmd.i, align 4
  %comp_id.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 1
  %3 = ptrtoint ptr %comp_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %comp_id.i, align 4
  %id.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %id.i, align 8
  %pipeline_id.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %pipeline_id.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %index, ptr %pipeline_id.i, align 16
  %core.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 5
  %7 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %core.i, align 4
  %core6.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %core6.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %core6.i, align 4
  br i1 %tobool.not.i, label %if.end4.i.if.end_crit_edge, label %if.then7.i

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i, i32 64
  %10 = call ptr @memcpy(ptr %add.ptr.i, ptr %comp_ext.i, i32 16)
  %ext_data_length.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %ext_data_length.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16, ptr %ext_data_length.i, align 8
  br label %if.end

sof_comp_alloc.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.then7.i, %if.end4.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  %type = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 7, ptr %type, align 4
  %config = getelementptr inbounds %struct.sof_ipc_comp_mux, ptr %call9.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 36, ptr %config, align 4
  %array = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 1
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %priv, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %call.i = tail call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef %config, ptr noundef nonnull @comp_tokens, i32 noundef 3, ptr noundef %array, i32 noundef %16, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %priv, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.172, i32 noundef %20) #14
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_dbg_comp_config.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_widget_load_mux, %if.then.i)) #11
          to label %sof_dbg_comp_config.exit [label %if.then.i], !srcloc !710

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %periods_sink.i = getelementptr inbounds %struct.sof_ipc_comp_mux, ptr %call9.i.i.i, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %periods_sink.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %periods_sink.i, align 4
  %periods_source.i = getelementptr inbounds %struct.sof_ipc_comp_mux, ptr %call9.i.i.i, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %periods_source.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %periods_source.i, align 8
  %frame_fmt.i = getelementptr inbounds %struct.sof_ipc_comp_mux, ptr %call9.i.i.i, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %frame_fmt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %frame_fmt.i, align 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_dbg_comp_config.__UNIQUE_ID_ddebug250, ptr noundef %22, ptr noundef nonnull @.str.92, i32 noundef %24, i32 noundef %26, i32 noundef %28) #11
  br label %sof_dbg_comp_config.exit

sof_dbg_comp_config.exit:                         ; preds = %if.then.i, %if.end6
  %private8 = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 12
  %29 = ptrtoint ptr %private8 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call9.i.i.i, ptr %private8, align 4
  br label %cleanup

cleanup:                                          ; preds = %sof_dbg_comp_config.exit, %do.end, %sof_comp_alloc.exit
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %sof_dbg_comp_config.exit ], [ -12, %sof_comp_alloc.exit ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_token_uuid(ptr nocapture noundef readonly %elem, ptr nocapture noundef writeonly %object, i32 noundef %offset, i32 noundef %size) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %object, i32 %offset
  %uuid = getelementptr inbounds %struct.snd_soc_tplg_vendor_uuid_elem, ptr %elem, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %add.ptr, ptr %uuid, i32 16)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_token_dai_type(ptr nocapture noundef readonly %elem, ptr nocapture noundef writeonly %object, i32 noundef %offset, i32 noundef %size) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %string = getelementptr inbounds %struct.snd_soc_tplg_vendor_string_elem, ptr %elem, i32 0, i32 1
  %call.i = tail call i32 @strcmp(ptr noundef %string, ptr noundef nonnull dereferenceable(4) @.str.77) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.i, label %entry.if.then.i_crit_edge, label %for.inc.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.8.i.if.then.i_crit_edge, %for.inc.7.i.if.then.i_crit_edge, %for.inc.6.i.if.then.i_crit_edge, %for.inc.5.i.if.then.i_crit_edge, %for.inc.4.i.if.then.i_crit_edge, %for.inc.3.i.if.then.i_crit_edge, %for.inc.2.i.if.then.i_crit_edge, %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %i.08.lcssa.i = phi i32 [ 0, %entry.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ], [ 2, %for.inc.1.i.if.then.i_crit_edge ], [ 3, %for.inc.2.i.if.then.i_crit_edge ], [ 4, %for.inc.3.i.if.then.i_crit_edge ], [ 5, %for.inc.4.i.if.then.i_crit_edge ], [ 6, %for.inc.5.i.if.then.i_crit_edge ], [ 7, %for.inc.6.i.if.then.i_crit_edge ], [ 8, %for.inc.7.i.if.then.i_crit_edge ], [ 9, %for.inc.8.i.if.then.i_crit_edge ]
  %type.i = getelementptr [10 x %struct.sof_dai_types], ptr @sof_dais, i32 0, i32 %i.08.lcssa.i, i32 1
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type.i, align 4
  br label %find_dai.exit

for.inc.i:                                        ; preds = %entry
  %call.1.i = tail call i32 @strcmp(ptr noundef %string, ptr noundef nonnull dereferenceable(4) @.str.78) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp2.1.i = icmp eq i32 %call.1.i, 0
  br i1 %cmp2.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %call.2.i = tail call i32 @strcmp(ptr noundef %string, ptr noundef nonnull dereferenceable(5) @.str.79) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp2.2.i = icmp eq i32 %call.2.i, 0
  br i1 %cmp2.2.i, label %for.inc.1.i.if.then.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %call.3.i = tail call i32 @strcmp(ptr noundef %string, ptr noundef nonnull dereferenceable(4) @.str.80) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %cmp2.3.i = icmp eq i32 %call.3.i, 0
  br i1 %cmp2.3.i, label %for.inc.2.i.if.then.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.then.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %call.4.i = tail call i32 @strcmp(ptr noundef %string, ptr noundef nonnull dereferenceable(4) @.str.81) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %cmp2.4.i = icmp eq i32 %call.4.i, 0
  br i1 %cmp2.4.i, label %for.inc.3.i.if.then.i_crit_edge, label %for.inc.4.i

for.inc.3.i.if.then.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %call.5.i = tail call i32 @strcmp(ptr noundef %string, ptr noundef nonnull dereferenceable(5) @.str.82) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %cmp2.5.i = icmp eq i32 %call.5.i, 0
  br i1 %cmp2.5.i, label %for.inc.4.i.if.then.i_crit_edge, label %for.inc.5.i

for.inc.4.i.if.then.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %call.6.i = tail call i32 @strcmp(ptr noundef %string, ptr noundef nonnull dereferenceable(4) @.str.83) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %cmp2.6.i = icmp eq i32 %call.6.i, 0
  br i1 %cmp2.6.i, label %for.inc.5.i.if.then.i_crit_edge, label %for.inc.6.i

for.inc.5.i.if.then.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %call.7.i = tail call i32 @strcmp(ptr noundef %string, ptr noundef nonnull dereferenceable(6) @.str.84) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i)
  %cmp2.7.i = icmp eq i32 %call.7.i, 0
  br i1 %cmp2.7.i, label %for.inc.6.i.if.then.i_crit_edge, label %for.inc.7.i

for.inc.6.i.if.then.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %call.8.i = tail call i32 @strcmp(ptr noundef %string, ptr noundef nonnull dereferenceable(8) @.str.85) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8.i)
  %cmp2.8.i = icmp eq i32 %call.8.i, 0
  br i1 %cmp2.8.i, label %for.inc.7.i.if.then.i_crit_edge, label %for.inc.8.i

for.inc.7.i.if.then.i_crit_edge:                  ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %call.9.i = tail call i32 @strcmp(ptr noundef %string, ptr noundef nonnull dereferenceable(4) @.str.86) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9.i)
  %cmp2.9.i = icmp eq i32 %call.9.i, 0
  br i1 %cmp2.9.i, label %for.inc.8.i.if.then.i_crit_edge, label %for.inc.8.i.find_dai.exit_crit_edge

for.inc.8.i.find_dai.exit_crit_edge:              ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_dai.exit

for.inc.8.i.if.then.i_crit_edge:                  ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

find_dai.exit:                                    ; preds = %for.inc.8.i.find_dai.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %1, %if.then.i ], [ 0, %for.inc.8.i.find_dai.exit_crit_edge ]
  %add.ptr = getelementptr i8, ptr %object, i32 %offset
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %retval.0.i, ptr %add.ptr, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_token_comp_format(ptr nocapture noundef readonly %elem, ptr nocapture noundef writeonly %object, i32 noundef %offset, i32 noundef %size) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %string = getelementptr inbounds %struct.snd_soc_tplg_vendor_string_elem, ptr %elem, i32 0, i32 1
  %call.i = tail call i32 @strcmp(ptr noundef %string, ptr noundef nonnull dereferenceable(6) @.str.87) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.i, label %entry.if.then.i_crit_edge, label %for.inc.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.2.i.if.then.i_crit_edge, %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %i.08.lcssa.i = phi i32 [ 0, %entry.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ], [ 2, %for.inc.1.i.if.then.i_crit_edge ], [ 3, %for.inc.2.i.if.then.i_crit_edge ]
  %frame.i = getelementptr [4 x %struct.sof_frame_types], ptr @sof_frames, i32 0, i32 %i.08.lcssa.i, i32 1
  %0 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %frame.i, align 4
  br label %find_format.exit

for.inc.i:                                        ; preds = %entry
  %call.1.i = tail call i32 @strcmp(ptr noundef %string, ptr noundef nonnull dereferenceable(6) @.str.88) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp2.1.i = icmp eq i32 %call.1.i, 0
  br i1 %cmp2.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %call.2.i = tail call i32 @strcmp(ptr noundef %string, ptr noundef nonnull dereferenceable(6) @.str.89) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp2.2.i = icmp eq i32 %call.2.i, 0
  br i1 %cmp2.2.i, label %for.inc.1.i.if.then.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %call.3.i = tail call i32 @strcmp(ptr noundef %string, ptr noundef nonnull dereferenceable(6) @.str.90) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %cmp2.3.i = icmp eq i32 %call.3.i, 0
  br i1 %cmp2.3.i, label %for.inc.2.i.if.then.i_crit_edge, label %for.inc.2.i.find_format.exit_crit_edge

for.inc.2.i.find_format.exit_crit_edge:           ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_format.exit

for.inc.2.i.if.then.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

find_format.exit:                                 ; preds = %for.inc.2.i.find_format.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %1, %if.then.i ], [ 2, %for.inc.2.i.find_format.exit_crit_edge ]
  %add.ptr = getelementptr i8, ptr %object, i32 %offset
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %retval.0.i, ptr %add.ptr, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_token_u16(ptr nocapture noundef readonly %elem, ptr nocapture noundef writeonly %object, i32 noundef %offset, i32 noundef %size) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %object, i32 %offset
  %value = getelementptr inbounds %struct.snd_soc_tplg_vendor_value_elem, ptr %elem, i32 0, i32 1
  %0 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %value, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %conv = trunc i32 %2 to i16
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %add.ptr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sof_process_load(ptr nocapture noundef readonly %scomp, i32 noundef %index, ptr nocapture noundef %swidget, ptr noundef %tw, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %nil_uuid.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %widget1 = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 8
  %0 = ptrtoint ptr %widget1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %widget1, align 4
  %priv = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 0, i32 13
  %num_kcontrols = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %num_kcontrols to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_kcontrols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then:                                          ; preds = %entry
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 16) #11
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %if.then.cleanup_crit_edge, label %if.end7.i.i, !prof !711

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.then
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #16
  %tobool3.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool3.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %7 = ptrtoint ptr %num_kcontrols to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_kcontrols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp107.i = icmp sgt i32 %8, 0
  br i1 %cmp107.i, label %for.body.lr.ph.i, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

for.body.lr.ph.i:                                 ; preds = %if.end
  %kcontrol_news.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 19
  %9 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 21, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ipc_data_size.0 = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0108.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %kcontrol_news.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kcontrol_news.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %arrayidx1.i = getelementptr i32, ptr %13, i32 %i.0108.i
  %14 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx1.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.351)
  switch i32 %15, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb4.i
    i32 3, label %sw.bb10.i
  ]

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %private_value.i = getelementptr %struct.snd_kcontrol_new, ptr %11, i32 %i.0108.i, i32 11
  %17 = ptrtoint ptr %private_value.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %private_value.i, align 4
  %19 = inttoptr i32 %18 to ptr
  %private.i = getelementptr inbounds %struct.soc_mixer_control, ptr %19, i32 0, i32 9, i32 5
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %private_value5.i = getelementptr %struct.snd_kcontrol_new, ptr %11, i32 %i.0108.i, i32 11
  %20 = ptrtoint ptr %private_value5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %private_value5.i, align 4
  %22 = inttoptr i32 %21 to ptr
  %private7.i = getelementptr inbounds %struct.soc_bytes_ext, ptr %22, i32 0, i32 1, i32 5
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %private_value11.i = getelementptr %struct.snd_kcontrol_new, ptr %11, i32 %i.0108.i, i32 11
  %23 = ptrtoint ptr %private_value11.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %private_value11.i, align 4
  %25 = inttoptr i32 %24 to ptr
  %private13.i = getelementptr inbounds %struct.soc_enum, ptr %25, i32 0, i32 8, i32 5
  br label %sw.epilog.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %name.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.167, i32 noundef %15, ptr noundef %29) #14
  br label %out

sw.epilog.i:                                      ; preds = %sw.bb10.i, %sw.bb4.i, %sw.bb.i
  %private13.sink.i = phi ptr [ %private13.i, %sw.bb10.i ], [ %private7.i, %sw.bb4.i ], [ %private.i, %sw.bb.i ]
  %30 = ptrtoint ptr %private13.sink.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %private13.sink.i, align 4
  %control15.i = getelementptr %struct.sof_widget_data, ptr %call8.i.i, i32 %i.0108.i, i32 3
  %32 = ptrtoint ptr %control15.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %control15.i, align 4
  %arrayidx19.i = getelementptr %struct.sof_widget_data, ptr %call8.i.i, i32 %i.0108.i
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %do.end23.i, label %if.end.i

do.end23.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev24.i = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %33 = ptrtoint ptr %dev24.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev24.i, align 4
  %name25.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %name25.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name25.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.170, ptr noundef %36) #14
  br label %out

if.end.i:                                         ; preds = %sw.epilog.i
  %control_data.i = getelementptr inbounds %struct.snd_sof_control, ptr %31, i32 0, i32 7
  %37 = ptrtoint ptr %control_data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %control_data.i, align 4
  %39 = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %38, i32 0, i32 10
  %pdata.i = getelementptr %struct.sof_widget_data, ptr %call8.i.i, i32 %i.0108.i, i32 2
  %40 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %pdata.i, align 8
  %41 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %9, align 4
  %arrayidx36.i = getelementptr i32, ptr %42, i32 %i.0108.i
  %43 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp37.i = icmp eq i32 %44, 2
  br i1 %cmp37.i, label %land.lhs.true.i, label %if.end.i.if.end42.i_crit_edge

if.end.i.if.end42.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %45 = ptrtoint ptr %39 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %39, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4607827, i32 %46)
  %cmp40.not.i = icmp eq i32 %46, 4607827
  br i1 %cmp40.not.i, label %land.lhs.true.i.if.end42.i_crit_edge, label %land.lhs.true.i.out_crit_edge

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true.i.if.end42.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

if.end42.i:                                       ; preds = %land.lhs.true.i.if.end42.i_crit_edge, %if.end.i.if.end42.i_crit_edge
  %size45.i = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %38, i32 1, i32 0, i32 1
  %47 = ptrtoint ptr %size45.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %size45.i, align 1
  %add.i = add i32 %48, %ipc_data_size.0
  %49 = ptrtoint ptr %control_data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %control_data.i, align 4
  %cmd.i = getelementptr inbounds %struct.sof_ipc_ctrl_data, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %cmd.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %cmd.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %52)
  %53 = icmp ult i32 %52, 4
  br i1 %53, label %switch.lookup, label %if.end42.i.for.inc.i_crit_edge

if.end42.i.for.inc.i_crit_edge:                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

switch.lookup:                                    ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.sof_process_load, i32 0, i32 %52
  %54 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %54)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep156 = getelementptr inbounds [4 x i32], ptr @switch.table.sof_process_load.342, i32 0, i32 %52
  %55 = ptrtoint ptr %switch.gep156 to i32
  call void @__asan_load4_noabort(i32 %55)
  %switch.load157 = load i32, ptr %switch.gep156, align 4
  %ipc_cmd.i = getelementptr %struct.sof_widget_data, ptr %call8.i.i, i32 %i.0108.i, i32 1
  %56 = ptrtoint ptr %ipc_cmd.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %switch.load, ptr %ipc_cmd.i, align 4
  %57 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %switch.load157, ptr %arrayidx19.i, align 16
  br label %for.inc.i

for.inc.i:                                        ; preds = %switch.lookup, %if.end42.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0108.i, 1
  %58 = ptrtoint ptr %num_kcontrols to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_kcontrols, align 4
  %cmp.i = icmp slt i32 %inc.i, %59
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %if.end8

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end8:                                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  %add = add i32 %add.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %add)
  %cmp9 = icmp ugt i32 %add, 384
  %spec.select = select i1 %cmp9, i32 0, i32 %add.i
  %spec.select140 = select i1 %cmp9, i32 100, i32 %add
  br label %if.end11

if.end11:                                         ; preds = %if.end8, %if.end.if.end11_crit_edge, %entry.if.end11_crit_edge
  %wdata.0135 = phi ptr [ %call8.i.i, %if.end.if.end11_crit_edge ], [ null, %entry.if.end11_crit_edge ], [ %call8.i.i, %if.end8 ]
  %ipc_data_size.3 = phi i32 [ 0, %if.end.if.end11_crit_edge ], [ 0, %entry.if.end11_crit_edge ], [ %spec.select, %if.end8 ]
  %ipc_size.0 = phi i32 [ 100, %if.end.if.end11_crit_edge ], [ 100, %entry.if.end11_crit_edge ], [ %spec.select140, %if.end8 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  %60 = call ptr @memset(ptr %nil_uuid.i, i32 0, i32 16)
  %comp_ext.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 11
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %comp_ext.i, ptr noundef nonnull dereferenceable(16) %nil_uuid.i, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i83 = icmp eq i32 %bcmp.i, 0
  %add.i84 = add nuw nsw i32 %ipc_size.0, 16
  %spec.select.i = select i1 %tobool.not.i83, i32 %ipc_size.0, i32 %add.i84
  %call9.i.i.i110 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i, i32 noundef 3520) #16
  %tobool2.not.i = icmp eq ptr %call9.i.i.i110, null
  br i1 %tobool2.not.i, label %sof_comp_alloc.exit.thread, label %if.end4.i

sof_comp_alloc.exit.thread:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  br label %out

if.end4.i:                                        ; preds = %if.end11
  %61 = ptrtoint ptr %call9.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %spec.select.i, ptr %call9.i.i.i110, align 128
  %cmd.i112 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %call9.i.i.i110, i32 0, i32 1
  %62 = ptrtoint ptr %cmd.i112 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 805371904, ptr %cmd.i112, align 4
  %comp_id.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 1
  %63 = ptrtoint ptr %comp_id.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %comp_id.i, align 4
  %id.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i110, i32 0, i32 1
  %65 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %id.i, align 8
  %pipeline_id.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i110, i32 0, i32 3
  %66 = ptrtoint ptr %pipeline_id.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %index, ptr %pipeline_id.i, align 16
  %core.i = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 5
  %67 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %core.i, align 4
  %core6.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i110, i32 0, i32 4
  %69 = ptrtoint ptr %core6.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %core6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %ipc_size.0)
  %cmp.i113 = icmp ugt i32 %spec.select.i, %ipc_size.0
  br i1 %cmp.i113, label %if.then7.i, label %if.end4.i.sof_comp_alloc.exit_crit_edge

if.end4.i.sof_comp_alloc.exit_crit_edge:          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sof_comp_alloc.exit

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i110, i32 %ipc_size.0
  %70 = call ptr @memcpy(ptr %add.ptr.i, ptr %comp_ext.i, i32 16)
  %ext_data_length.i = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i110, i32 0, i32 5
  %71 = ptrtoint ptr %ext_data_length.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 16, ptr %ext_data_length.i, align 8
  br label %sof_comp_alloc.exit

sof_comp_alloc.exit:                              ; preds = %if.then7.i, %if.end4.i.sof_comp_alloc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nil_uuid.i) #11
  %type16 = getelementptr inbounds %struct.sof_ipc_comp, ptr %call9.i.i.i110, i32 0, i32 2
  %72 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %type, ptr %type16, align 4
  %config = getelementptr inbounds %struct.sof_ipc_comp_process, ptr %call9.i.i.i110, i32 0, i32 1
  %73 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 36, ptr %config, align 4
  %array = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, ptr %tw, i32 1
  %74 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %priv, align 1
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %call.i = tail call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef %config, ptr noundef nonnull @comp_tokens, i32 noundef 3, ptr noundef %array, i32 noundef %76, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp20.not = icmp eq i32 %call.i, 0
  br i1 %cmp20.not, label %if.end23, label %do.end

do.end:                                           ; preds = %sof_comp_alloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %77 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev, align 4
  %79 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %priv, align 1
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.165, i32 noundef %81) #14
  br label %err

if.end23:                                         ; preds = %sof_comp_alloc.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_dbg_comp_config.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_process_load, %if.then.i)) #11
          to label %sof_dbg_comp_config.exit [label %if.then.i], !srcloc !710

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i115 = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %82 = ptrtoint ptr %dev.i115 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev.i115, align 4
  %periods_sink.i = getelementptr inbounds %struct.sof_ipc_comp_process, ptr %call9.i.i.i110, i32 0, i32 1, i32 1
  %84 = ptrtoint ptr %periods_sink.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %periods_sink.i, align 4
  %periods_source.i = getelementptr inbounds %struct.sof_ipc_comp_process, ptr %call9.i.i.i110, i32 0, i32 1, i32 2
  %86 = ptrtoint ptr %periods_source.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %periods_source.i, align 8
  %frame_fmt.i = getelementptr inbounds %struct.sof_ipc_comp_process, ptr %call9.i.i.i110, i32 0, i32 1, i32 4
  %88 = ptrtoint ptr %frame_fmt.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %frame_fmt.i, align 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_dbg_comp_config.__UNIQUE_ID_ddebug250, ptr noundef %83, ptr noundef nonnull @.str.92, i32 noundef %85, i32 noundef %87, i32 noundef %89) #11
  br label %sof_dbg_comp_config.exit

sof_dbg_comp_config.exit:                         ; preds = %if.then.i, %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ipc_data_size.3)
  %tobool25.not = icmp eq i32 %ipc_data_size.3, 0
  br i1 %tobool25.not, label %sof_dbg_comp_config.exit.if.end38_crit_edge, label %for.cond.preheader

sof_dbg_comp_config.exit.if.end38_crit_edge:      ; preds = %sof_dbg_comp_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

for.cond.preheader:                               ; preds = %sof_dbg_comp_config.exit
  %90 = ptrtoint ptr %num_kcontrols to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_kcontrols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp28145 = icmp sgt i32 %91, 0
  br i1 %cmp28145, label %for.body.lr.ph, label %for.cond.preheader.if.end38_crit_edge

for.cond.preheader.if.end38_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %data = getelementptr inbounds %struct.sof_ipc_comp_process, ptr %call9.i.i.i110, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0146 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %pdata = getelementptr %struct.sof_widget_data, ptr %wdata.0135, i32 %i.0146, i32 2
  %92 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pdata, align 8
  %data29 = getelementptr inbounds %struct.sof_abi_hdr, ptr %93, i32 0, i32 5
  %size33 = getelementptr inbounds %struct.sof_abi_hdr, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %size33 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %size33, align 1
  %96 = call ptr @memcpy(ptr %data, ptr %data29, i32 %95)
  %inc = add nuw nsw i32 %i.0146, 1
  %97 = ptrtoint ptr %num_kcontrols to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_kcontrols, align 4
  %cmp28 = icmp slt i32 %inc, %98
  br i1 %cmp28, label %for.body.for.body_crit_edge, label %for.body.if.end38_crit_edge

for.body.if.end38_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end38:                                         ; preds = %for.body.if.end38_crit_edge, %for.cond.preheader.if.end38_crit_edge, %sof_dbg_comp_config.exit.if.end38_crit_edge
  %size39 = getelementptr inbounds %struct.sof_ipc_comp_process, ptr %call9.i.i.i110, i32 0, i32 2
  %99 = ptrtoint ptr %size39 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %ipc_data_size.3, ptr %size39, align 64
  %private40 = getelementptr inbounds %struct.snd_sof_widget, ptr %swidget, i32 0, i32 12
  %100 = ptrtoint ptr %private40 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call9.i.i.i110, ptr %private40, align 4
  br label %err

err:                                              ; preds = %if.end38, %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp41 = icmp slt i32 %call.i, 0
  br i1 %cmp41, label %if.then42, label %err.out_crit_edge

err.out_crit_edge:                                ; preds = %err
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then42:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i110) #11
  br label %out

out:                                              ; preds = %if.then42, %err.out_crit_edge, %sof_comp_alloc.exit.thread, %land.lhs.true.i.out_crit_edge, %do.end23.i, %do.end.i
  %wdata.1 = phi ptr [ %wdata.0135, %if.then42 ], [ %wdata.0135, %err.out_crit_edge ], [ %wdata.0135, %sof_comp_alloc.exit.thread ], [ %call8.i.i, %do.end.i ], [ %call8.i.i, %do.end23.i ], [ %call8.i.i, %land.lhs.true.i.out_crit_edge ]
  %ret.0 = phi i32 [ %call.i, %if.then42 ], [ 0, %err.out_crit_edge ], [ -12, %sof_comp_alloc.exit.thread ], [ -22, %do.end.i ], [ -22, %do.end23.i ], [ -22, %land.lhs.true.i.out_crit_edge ]
  tail call void @kfree(ptr noundef %wdata.1) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end7.i.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_token_process_type(ptr nocapture noundef readonly %elem, ptr nocapture noundef writeonly %object, i32 noundef %offset, i32 noundef %size) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %string = getelementptr inbounds %struct.snd_soc_tplg_vendor_string_elem, ptr %elem, i32 0, i32 1
  %call.i = tail call i32 @strcmp(ptr noundef %string, ptr noundef nonnull dereferenceable(6) @.str.156) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.i, label %entry.if.then.i_crit_edge, label %for.inc.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.7.i.if.then.i_crit_edge, %for.inc.6.i.if.then.i_crit_edge, %for.inc.5.i.if.then.i_crit_edge, %for.inc.4.i.if.then.i_crit_edge, %for.inc.3.i.if.then.i_crit_edge, %for.inc.2.i.if.then.i_crit_edge, %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %i.08.lcssa.i = phi i32 [ 0, %entry.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ], [ 2, %for.inc.1.i.if.then.i_crit_edge ], [ 3, %for.inc.2.i.if.then.i_crit_edge ], [ 4, %for.inc.3.i.if.then.i_crit_edge ], [ 5, %for.inc.4.i.if.then.i_crit_edge ], [ 6, %for.inc.5.i.if.then.i_crit_edge ], [ 7, %for.inc.6.i.if.then.i_crit_edge ], [ 8, %for.inc.7.i.if.then.i_crit_edge ]
  %type.i = getelementptr [9 x %struct.sof_process_types], ptr @sof_process, i32 0, i32 %i.08.lcssa.i, i32 1
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type.i, align 4
  br label %find_process.exit

for.inc.i:                                        ; preds = %entry
  %call.1.i = tail call i32 @strcmp(ptr noundef %string, ptr noundef nonnull dereferenceable(6) @.str.157) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp2.1.i = icmp eq i32 %call.1.i, 0
  br i1 %cmp2.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %call.2.i = tail call i32 @strcmp(ptr noundef %string, ptr noundef nonnull dereferenceable(15) @.str.158) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp2.2.i = icmp eq i32 %call.2.i, 0
  br i1 %cmp2.2.i, label %for.inc.1.i.if.then.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %call.3.i = tail call i32 @strcmp(ptr noundef %string, ptr noundef nonnull dereferenceable(4) @.str.159) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %cmp2.3.i = icmp eq i32 %call.3.i, 0
  br i1 %cmp2.3.i, label %for.inc.2.i.if.then.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.then.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %call.4.i = tail call i32 @strcmp(ptr noundef %string, ptr noundef nonnull dereferenceable(14) @.str.160) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %cmp2.4.i = icmp eq i32 %call.4.i, 0
  br i1 %cmp2.4.i, label %for.inc.3.i.if.then.i_crit_edge, label %for.inc.4.i

for.inc.3.i.if.then.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %call.5.i = tail call i32 @strcmp(ptr noundef %string, ptr noundef nonnull dereferenceable(4) @.str.161) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %cmp2.5.i = icmp eq i32 %call.5.i, 0
  br i1 %cmp2.5.i, label %for.inc.4.i.if.then.i_crit_edge, label %for.inc.5.i

for.inc.4.i.if.then.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %call.6.i = tail call i32 @strcmp(ptr noundef %string, ptr noundef nonnull dereferenceable(6) @.str.162) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %cmp2.6.i = icmp eq i32 %call.6.i, 0
  br i1 %cmp2.6.i, label %for.inc.5.i.if.then.i_crit_edge, label %for.inc.6.i

for.inc.5.i.if.then.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %call.7.i = tail call i32 @strcmp(ptr noundef %string, ptr noundef nonnull dereferenceable(8) @.str.163) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i)
  %cmp2.7.i = icmp eq i32 %call.7.i, 0
  br i1 %cmp2.7.i, label %for.inc.6.i.if.then.i_crit_edge, label %for.inc.7.i

for.inc.6.i.if.then.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %call.8.i = tail call i32 @strcmp(ptr noundef %string, ptr noundef nonnull dereferenceable(10) @.str.164) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8.i)
  %cmp2.8.i = icmp eq i32 %call.8.i, 0
  br i1 %cmp2.8.i, label %for.inc.7.i.if.then.i_crit_edge, label %for.inc.7.i.find_process.exit_crit_edge

for.inc.7.i.find_process.exit_crit_edge:          ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %find_process.exit

for.inc.7.i.if.then.i_crit_edge:                  ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

find_process.exit:                                ; preds = %for.inc.7.i.find_process.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %1, %if.then.i ], [ 0, %for.inc.7.i.find_process.exit_crit_edge ]
  %add.ptr = getelementptr i8, ptr %object, i32 %offset
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %retval.0.i, ptr %add.ptr, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_tplg_widget_bind_event(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sof_keyword_dapm_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %k, i32 noundef %event) #0 align 64 {
entry:
  %stream.i163 = alloca %struct.sof_ipc_stream, align 4
  %reply.i164 = alloca %struct.sof_ipc_reply, align 4
  %stream.i150 = alloca %struct.sof_ipc_stream, align 4
  %reply.i151 = alloca %struct.sof_ipc_reply, align 4
  %stream.i = alloca %struct.sof_ipc_stream, align 4
  %reply.i = alloca %struct.sof_ipc_reply, align 4
  %ipc_params_reply.i = alloca %struct.sof_ipc_pcm_params_reply, align 4
  %pcm.i = alloca %struct.sof_ipc_pcm_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 21, i32 5
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_keyword_dapm_event.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_keyword_dapm_event, %if.then5)) #11
          to label %do.end [label %if.then5], !srcloc !710

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_keyword_dapm_event.__UNIQUE_ID_ddebug247, ptr noundef %5, ptr noundef nonnull @.str.177, i32 noundef %event, ptr noundef %7) #11
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.end
  %widget = getelementptr inbounds %struct.snd_sof_widget, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %widget to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %widget, align 4
  %sname = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %sname to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sname, align 4
  %call7 = tail call ptr @snd_sof_find_spcm_name(ptr noundef %3, ptr noundef %11) #11
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end12, label %if.end16

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev13 = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev13, align 4
  %14 = ptrtoint ptr %widget to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %widget, align 4
  %name15 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %name15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.178, ptr noundef %17) #14
  br label %cleanup

if.end16:                                         ; preds = %do.end
  %18 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.352)
  switch i32 %event, label %if.end16.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb57
  ]

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end16
  %suspend_ignored = getelementptr %struct.snd_sof_pcm, ptr %call7, i32 0, i32 2, i32 1, i32 8
  %19 = ptrtoint ptr %suspend_ignored to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %suspend_ignored, align 1, !range !712
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool18.not = icmp eq i8 %20, 0
  br i1 %tobool18.not, label %if.end37, label %do.body20

do.body20:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_keyword_dapm_event.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_keyword_dapm_event, %if.then32)) #11
          to label %cleanup [label %if.then32], !srcloc !710

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  %dev33 = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_keyword_dapm_event.__UNIQUE_ID_ddebug248, ptr noundef %22, ptr noundef nonnull @.str.179) #11
  br label %cleanup

if.end37:                                         ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ipc_params_reply.i) #11
  %23 = call ptr @memset(ptr %ipc_params_reply.i, i32 255, i32 20)
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %pcm.i) #11
  %30 = getelementptr inbounds i8, ptr %pcm.i, i32 12
  %31 = call ptr @memset(ptr %30, i32 0, i32 96)
  %32 = ptrtoint ptr %widget to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %widget, align 4
  %sname.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %sname.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sname.i, align 4
  %call2.i = tail call ptr @snd_sof_find_spcm_name(ptr noundef %25, ptr noundef %35) #11
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i.i, align 4
  %38 = ptrtoint ptr %widget to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %widget, align 4
  %name.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.178, ptr noundef %41) #14
  br label %do.end42

if.end.i:                                         ; preds = %if.end37
  %42 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 108, ptr %pcm.i, align 4
  %cmd.i = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %pcm.i, i32 0, i32 1
  %43 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1610678272, ptr %cmd.i, align 4
  %comp_id.i = getelementptr inbounds %struct.snd_sof_widget, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %comp_id.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %comp_id.i, align 4
  %comp_id6.i = getelementptr inbounds %struct.sof_ipc_pcm_params, ptr %pcm.i, i32 0, i32 1
  %46 = ptrtoint ptr %comp_id6.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %comp_id6.i, align 4
  %params7.i = getelementptr inbounds %struct.sof_ipc_pcm_params, ptr %pcm.i, i32 0, i32 4
  %47 = ptrtoint ptr %params7.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 84, ptr %params7.i, align 4
  %direction.i = getelementptr inbounds %struct.sof_ipc_pcm_params, ptr %pcm.i, i32 0, i32 4, i32 2
  %48 = ptrtoint ptr %direction.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %direction.i, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.snd_sof_pcm, ptr %call2.i, i32 0, i32 4, i32 1, i32 1, i32 1
  %49 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.i.i.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i.i.i.i, label %for.inc.i.i.i.i, label %if.end.i.if.then.i.i.i.i_crit_edge

if.end.i.if.then.i.i.i.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge, %if.end.i.if.then.i.i.i.i_crit_edge
  %i.09.lcssa.i.i.i.i = phi i32 [ 0, %if.end.i.if.then.i.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge ]
  %.lcssa.i.i.i.i = phi i32 [ %50, %if.end.i.if.then.i.i.i.i_crit_edge ], [ %53, %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge ]
  %51 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i.i, i1 true) #11, !range !714
  %add.i.i.i.i = or i32 %51, %i.09.lcssa.i.i.i.i
  br label %params_width.exit.i

for.inc.i.i.i.i:                                  ; preds = %if.end.i
  %arrayidx.1.i.i.i.i = getelementptr %struct.snd_sof_pcm, ptr %call2.i, i32 0, i32 4, i32 1, i32 1, i32 1, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx.1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.1.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.1.i.i.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not.1.i.i.i.i, label %for.inc.i.i.i.i.params_width.exit.i_crit_edge, label %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge

for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge:        ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i

for.inc.i.i.i.i.params_width.exit.i_crit_edge:    ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_width.exit.i

params_width.exit.i:                              ; preds = %for.inc.i.i.i.i.params_width.exit.i_crit_edge, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %add.i.i.i.i, %if.then.i.i.i.i ], [ 0, %for.inc.i.i.i.i.params_width.exit.i_crit_edge ]
  %call1.i.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i.i) #11
  %54 = lshr i32 %call1.i.i, 3
  %conv.i = trunc i32 %54 to i16
  %sample_valid_bytes.i = getelementptr inbounds %struct.sof_ipc_pcm_params, ptr %pcm.i, i32 0, i32 4, i32 8
  %55 = ptrtoint ptr %sample_valid_bytes.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i, ptr %sample_valid_bytes.i, align 4
  %buffer_fmt.i = getelementptr inbounds %struct.sof_ipc_pcm_params, ptr %pcm.i, i32 0, i32 4, i32 4
  %56 = ptrtoint ptr %buffer_fmt.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %buffer_fmt.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_sof_pcm, ptr %call2.i, i32 0, i32 4, i32 1, i32 3, i32 3
  %57 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i.i.i, align 4
  %rate.i = getelementptr inbounds %struct.sof_ipc_pcm_params, ptr %pcm.i, i32 0, i32 4, i32 5
  %59 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %rate.i, align 4
  %arrayidx.i.i1.i = getelementptr %struct.snd_sof_pcm, ptr %call2.i, i32 0, i32 4, i32 1, i32 3, i32 2
  %60 = ptrtoint ptr %arrayidx.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i1.i, align 4
  %conv17.i = trunc i32 %61 to i16
  %channels.i = getelementptr inbounds %struct.sof_ipc_pcm_params, ptr %pcm.i, i32 0, i32 4, i32 7
  %62 = ptrtoint ptr %channels.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv17.i, ptr %channels.i, align 2
  %arrayidx.i.i2.i = getelementptr %struct.snd_sof_pcm, ptr %call2.i, i32 0, i32 4, i32 1, i32 3, i32 6
  %63 = ptrtoint ptr %arrayidx.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i.i2.i, align 4
  %host_period_bytes.i = getelementptr inbounds %struct.sof_ipc_pcm_params, ptr %pcm.i, i32 0, i32 4, i32 10
  %65 = ptrtoint ptr %host_period_bytes.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %host_period_bytes.i, align 4
  %66 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i.i.i = icmp eq i32 %67, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %params_width.exit.i.params_format.exit.i_crit_edge

params_width.exit.i.params_format.exit.i_crit_edge: ; preds = %params_width.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_format.exit.i

for.inc.i.i.i:                                    ; preds = %params_width.exit.i
  %arrayidx.1.i.i.i = getelementptr %struct.snd_sof_pcm, ptr %call2.i, i32 0, i32 4, i32 1, i32 1, i32 1, i32 0, i32 1
  %68 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.1.i.i.i = icmp eq i32 %69, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.do.end42_crit_edge, label %for.inc.i.i.i.params_format.exit.i_crit_edge

for.inc.i.i.i.params_format.exit.i_crit_edge:     ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_format.exit.i

for.inc.i.i.i.do.end42_crit_edge:                 ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end42

params_format.exit.i:                             ; preds = %for.inc.i.i.i.params_format.exit.i_crit_edge, %params_width.exit.i.params_format.exit.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %params_width.exit.i.params_format.exit.i_crit_edge ], [ 32, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %67, %params_width.exit.i.params_format.exit.i_crit_edge ], [ %69, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  %70 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #11, !range !714
  %add.i.i.i = or i32 %70, %i.09.lcssa.i.i.i
  %71 = zext i32 %add.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.353)
  switch i32 %add.i.i.i, label %params_format.exit.i.do.end42_crit_edge [
    i32 3, label %params_format.exit.i.sw.epilog.i_crit_edge
    i32 7, label %sw.bb23.i
    i32 11, label %sw.bb26.i
  ]

params_format.exit.i.sw.epilog.i_crit_edge:       ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

params_format.exit.i.do.end42_crit_edge:          ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end42

sw.bb23.i:                                        ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb26.i:                                        ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb26.i, %sw.bb23.i, %params_format.exit.i.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ 2, %sw.bb26.i ], [ 1, %sw.bb23.i ], [ 0, %params_format.exit.i.sw.epilog.i_crit_edge ]
  %frame_fmt28.i = getelementptr inbounds %struct.sof_ipc_pcm_params, ptr %pcm.i, i32 0, i32 4, i32 3
  %72 = ptrtoint ptr %frame_fmt28.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %.sink.i, ptr %frame_fmt28.i, align 4
  %ipc.i = getelementptr inbounds %struct.snd_sof_dev, ptr %29, i32 0, i32 13
  %73 = ptrtoint ptr %ipc.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ipc.i, align 4
  %75 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cmd.i, align 4
  %call31.i = call i32 @sof_ipc_tx_message(ptr noundef %74, i32 noundef %76, ptr noundef nonnull %pcm.i, i32 noundef 108, ptr noundef nonnull %ipc_params_reply.i, i32 noundef 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp.i = icmp slt i32 %call31.i, 0
  br i1 %cmp.i, label %do.end36.i, label %if.end46

do.end36.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %77 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i.i, align 4
  %79 = ptrtoint ptr %widget to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %widget, align 4
  %name39.i = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %name39.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %name39.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.193, ptr noundef %82) #14
  br label %do.end42

do.end42:                                         ; preds = %do.end36.i, %params_format.exit.i.do.end42_crit_edge, %for.inc.i.i.i.do.end42_crit_edge, %do.end.i
  %retval.0.i140.ph = phi i32 [ -22, %for.inc.i.i.i.do.end42_crit_edge ], [ %call31.i, %do.end36.i ], [ -22, %params_format.exit.i.do.end42_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %pcm.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ipc_params_reply.i) #11
  %dev43 = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %83 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev43, align 4
  %85 = ptrtoint ptr %widget to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %widget, align 4
  %name45 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %name45 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %name45, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.181, ptr noundef %88) #14
  br label %cleanup

if.end46:                                         ; preds = %sw.epilog.i
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %pcm.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ipc_params_reply.i) #11
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  %dev.i.i141 = getelementptr inbounds %struct.snd_soc_component, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %dev.i.i141 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i.i141, align 4
  %driver_data.i.i.i142 = getelementptr inbounds %struct.device, ptr %92, i32 0, i32 8
  %93 = ptrtoint ptr %driver_data.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %driver_data.i.i.i142, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %stream.i) #11
  %95 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %stream.i, i32 0, i32 1
  %96 = getelementptr inbounds %struct.sof_ipc_stream, ptr %stream.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reply.i) #11
  %97 = ptrtoint ptr %reply.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -1, ptr %reply.i, align 4, !annotation !709
  %98 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %reply.i, i32 0, i32 1
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %98, align 4, !annotation !709
  %100 = getelementptr inbounds %struct.sof_ipc_reply, ptr %reply.i, i32 0, i32 1
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -1, ptr %100, align 4, !annotation !709
  %102 = ptrtoint ptr %stream.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 12, ptr %stream.i, align 4
  %103 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1610874880, ptr %95, align 4
  %104 = ptrtoint ptr %comp_id.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %comp_id.i, align 4
  %106 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %96, align 4
  %ipc.i144 = getelementptr inbounds %struct.snd_sof_dev, ptr %94, i32 0, i32 13
  %107 = ptrtoint ptr %ipc.i144 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ipc.i144, align 4
  %call7.i = call i32 @sof_ipc_tx_message(ptr noundef %108, i32 noundef 1610874880, ptr noundef nonnull %stream.i, i32 noundef 12, ptr noundef nonnull %reply.i, i32 noundef 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i145 = icmp slt i32 %call7.i, 0
  br i1 %cmp.i145, label %do.end52, label %ipc_trigger.exit

ipc_trigger.exit:                                 ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %stream.i) #11
  br label %cleanup

do.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %109 = ptrtoint ptr %dev.i.i141 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev.i.i141, align 4
  %111 = ptrtoint ptr %widget to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %widget, align 4
  %name.i147 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %name.i147 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %name.i147, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.195, ptr noundef %114) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %stream.i) #11
  %dev53 = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %115 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev53, align 4
  %117 = ptrtoint ptr %widget to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %widget, align 4
  %name55 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %name55 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %name55, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.184, ptr noundef %120) #14
  br label %cleanup

sw.bb57:                                          ; preds = %if.end16
  %suspend_ignored60 = getelementptr %struct.snd_sof_pcm, ptr %call7, i32 0, i32 2, i32 1, i32 8
  %121 = ptrtoint ptr %suspend_ignored60 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %suspend_ignored60, align 1, !range !712
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool61.not = icmp eq i8 %122, 0
  br i1 %tobool61.not, label %if.end80, label %do.body63

do.body63:                                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_keyword_dapm_event.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_keyword_dapm_event, %if.then75)) #11
          to label %cleanup [label %if.then75], !srcloc !710

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #13
  %dev76 = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %123 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev76, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_keyword_dapm_event.__UNIQUE_ID_ddebug249, ptr noundef %124, ptr noundef nonnull @.str.186) #11
  br label %cleanup

if.end80:                                         ; preds = %sw.bb57
  %125 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %1, align 4
  %dev.i.i152 = getelementptr inbounds %struct.snd_soc_component, ptr %126, i32 0, i32 3
  %127 = ptrtoint ptr %dev.i.i152 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev.i.i152, align 4
  %driver_data.i.i.i153 = getelementptr inbounds %struct.device, ptr %128, i32 0, i32 8
  %129 = ptrtoint ptr %driver_data.i.i.i153 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %driver_data.i.i.i153, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %stream.i150) #11
  %131 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %stream.i150, i32 0, i32 1
  %132 = getelementptr inbounds %struct.sof_ipc_stream, ptr %stream.i150, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reply.i151) #11
  %133 = ptrtoint ptr %reply.i151 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 -1, ptr %reply.i151, align 4, !annotation !709
  %134 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %reply.i151, i32 0, i32 1
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 -1, ptr %134, align 4, !annotation !709
  %136 = getelementptr inbounds %struct.sof_ipc_reply, ptr %reply.i151, i32 0, i32 1
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 -1, ptr %136, align 4, !annotation !709
  %138 = ptrtoint ptr %stream.i150 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 12, ptr %stream.i150, align 4
  %139 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 1610940416, ptr %131, align 4
  %comp_id.i154 = getelementptr inbounds %struct.snd_sof_widget, ptr %1, i32 0, i32 1
  %140 = ptrtoint ptr %comp_id.i154 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %comp_id.i154, align 4
  %142 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %132, align 4
  %ipc.i155 = getelementptr inbounds %struct.snd_sof_dev, ptr %130, i32 0, i32 13
  %143 = ptrtoint ptr %ipc.i155 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ipc.i155, align 4
  %call7.i156 = call i32 @sof_ipc_tx_message(ptr noundef %144, i32 noundef 1610940416, ptr noundef nonnull %stream.i150, i32 noundef 12, ptr noundef nonnull %reply.i151, i32 noundef 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i156)
  %cmp.i157 = icmp slt i32 %call7.i156, 0
  br i1 %cmp.i157, label %do.end86, label %ipc_trigger.exit162

ipc_trigger.exit162:                              ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply.i151) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %stream.i150) #11
  br label %if.end90

do.end86:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  %145 = ptrtoint ptr %dev.i.i152 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev.i.i152, align 4
  %147 = ptrtoint ptr %widget to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %widget, align 4
  %name.i159 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %name.i159 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %name.i159, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.195, ptr noundef %150) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply.i151) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %stream.i150) #11
  %dev87 = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %151 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev87, align 4
  %153 = ptrtoint ptr %widget to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %widget, align 4
  %name89 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %name89 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %name89, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %152, ptr noundef nonnull @.str.184, ptr noundef %156) #14
  br label %if.end90

if.end90:                                         ; preds = %do.end86, %ipc_trigger.exit162
  %157 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %1, align 4
  %dev.i.i165 = getelementptr inbounds %struct.snd_soc_component, ptr %158, i32 0, i32 3
  %159 = ptrtoint ptr %dev.i.i165 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dev.i.i165, align 4
  %driver_data.i.i.i166 = getelementptr inbounds %struct.device, ptr %160, i32 0, i32 8
  %161 = ptrtoint ptr %driver_data.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %driver_data.i.i.i166, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %stream.i163) #11
  %163 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %stream.i163, i32 0, i32 1
  %164 = getelementptr inbounds %struct.sof_ipc_stream, ptr %stream.i163, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reply.i164) #11
  %165 = ptrtoint ptr %reply.i164 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 -1, ptr %reply.i164, align 4, !annotation !709
  %166 = getelementptr inbounds %struct.sof_ipc_cmd_hdr, ptr %reply.i164, i32 0, i32 1
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 -1, ptr %166, align 4, !annotation !709
  %168 = getelementptr inbounds %struct.sof_ipc_reply, ptr %reply.i164, i32 0, i32 1
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 -1, ptr %168, align 4, !annotation !709
  %170 = ptrtoint ptr %stream.i163 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 12, ptr %stream.i163, align 4
  %171 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 1610809344, ptr %163, align 4
  %172 = ptrtoint ptr %comp_id.i154 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %comp_id.i154, align 4
  %174 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %164, align 4
  %ipc.i168 = getelementptr inbounds %struct.snd_sof_dev, ptr %162, i32 0, i32 13
  %175 = ptrtoint ptr %ipc.i168 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %ipc.i168, align 4
  %call7.i169 = call i32 @sof_ipc_tx_message(ptr noundef %176, i32 noundef 1610809344, ptr noundef nonnull %stream.i163, i32 noundef 12, ptr noundef nonnull %reply.i164, i32 noundef 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i169)
  %cmp.i170 = icmp slt i32 %call7.i169, 0
  br i1 %cmp.i170, label %do.end96, label %ipc_trigger.exit175

ipc_trigger.exit175:                              ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply.i164) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %stream.i163) #11
  br label %cleanup

do.end96:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  %177 = ptrtoint ptr %dev.i.i165 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev.i.i165, align 4
  %179 = ptrtoint ptr %widget to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %widget, align 4
  %name.i172 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %name.i172 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %name.i172, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %178, ptr noundef nonnull @.str.195, ptr noundef %182) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reply.i164) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %stream.i163) #11
  %dev97 = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %183 = ptrtoint ptr %dev97 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev97, align 4
  %185 = ptrtoint ptr %widget to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %widget, align 4
  %name99 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %name99 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %name99, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %184, ptr noundef nonnull @.str.184, ptr noundef %188) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end96, %ipc_trigger.exit175, %if.then75, %do.body63, %do.end52, %ipc_trigger.exit, %do.end42, %if.then32, %do.body20, %if.end16.cleanup_crit_edge, %do.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end12 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %if.then75 ], [ 0, %if.end16.cleanup_crit_edge ], [ %call7.i169, %do.end96 ], [ %call7.i169, %ipc_trigger.exit175 ], [ %retval.0.i140.ph, %do.end42 ], [ %call7.i, %do.end52 ], [ %call7.i, %ipc_trigger.exit ], [ 0, %do.body20 ], [ 0, %do.body63 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_sof_find_spcm_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_compr_init_elapsed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_pcm_init_elapsed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_free_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dma_alloc_dir_pages(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_sof_find_swidget_sname(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sof_link_ssp_load(ptr nocapture noundef readonly %scomp, ptr nocapture noundef readonly %link, ptr noundef %cfg, ptr nocapture noundef readonly %hw_config, ptr noundef %config, i32 noundef %curr_conf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.snd_soc_tplg_link_config, ptr %cfg, i32 0, i32 11
  %num_hw_configs = getelementptr inbounds %struct.snd_soc_tplg_link_config, ptr %cfg, i32 0, i32 7
  %4 = ptrtoint ptr %num_hw_configs to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %num_hw_configs, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7
  %array = getelementptr inbounds %struct.snd_soc_tplg_link_config, ptr %cfg, i32 1
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %priv, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %call2 = tail call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef %7, ptr noundef nonnull @ssp_tokens, i32 noundef 7, ptr noundef %array, i32 noundef %10, i32 noundef %6, i32 noundef 216)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp45 = icmp sgt i32 %6, 0
  br i1 %cmp45, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %priv, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.232, i32 noundef %15) #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx5 = getelementptr %struct.sof_ipc_dai_config, ptr %config, i32 %i.06
  %bclk_provider.i = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config, i32 %i.06, i32 6
  %16 = ptrtoint ptr %bclk_provider.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bclk_provider.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.i = icmp eq i8 %17, 0
  %fsync_provider.i = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config, i32 %i.06, i32 7
  %18 = ptrtoint ptr %fsync_provider.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %fsync_provider.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp3.i = icmp eq i8 %19, 0
  br i1 %cmp.i, label %if.then.i, label %if.else12.i

if.then.i:                                        ; preds = %for.body
  br i1 %cmp3.i, label %if.then.i.if.end28.i_crit_edge, label %if.else.i

if.then.i.if.end28.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %format8.i = getelementptr %struct.sof_ipc_dai_config, ptr %config, i32 %i.06, i32 3
  %20 = ptrtoint ptr %format8.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %format8.i, align 1
  %22 = or i16 %21, 12288
  store i16 %22, ptr %format8.i, align 1
  br label %if.end28.i

if.else12.i:                                      ; preds = %for.body
  %format18.i = getelementptr %struct.sof_ipc_dai_config, ptr %config, i32 %i.06, i32 3
  %23 = ptrtoint ptr %format18.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %format18.i, align 1
  br i1 %cmp3.i, label %if.then17.i, label %if.else22.i

if.then17.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = or i16 %24, 8192
  %26 = ptrtoint ptr %format18.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %format18.i, align 1
  br label %if.end28.i

if.else22.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = or i16 %24, 16384
  %28 = ptrtoint ptr %format18.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %format18.i, align 1
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else22.i, %if.then17.i, %if.else.i, %if.then.i.if.end28.i_crit_edge
  %invert_bclk.i = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config, i32 %i.06, i32 4
  %29 = ptrtoint ptr %invert_bclk.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %invert_bclk.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  %invert_fsync43.i = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config, i32 %i.06, i32 5
  %31 = ptrtoint ptr %invert_fsync43.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %invert_fsync43.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool44.not.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i, label %if.else42.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.end28.i
  %format37.i = getelementptr %struct.sof_ipc_dai_config, ptr %config, i32 %i.06, i32 3
  %33 = ptrtoint ptr %format37.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %format37.i, align 1
  br i1 %tobool44.not.i, label %if.else36.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = or i16 %34, 1024
  %36 = ptrtoint ptr %format37.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 %35, ptr %format37.i, align 1
  br label %sof_dai_set_format.exit

if.else36.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  %37 = or i16 %34, 768
  %38 = ptrtoint ptr %format37.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %37, ptr %format37.i, align 1
  br label %sof_dai_set_format.exit

if.else42.i:                                      ; preds = %if.end28.i
  br i1 %tobool44.not.i, label %if.else42.i.sof_dai_set_format.exit_crit_edge, label %if.then45.i

if.else42.i.sof_dai_set_format.exit_crit_edge:    ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sof_dai_set_format.exit

if.then45.i:                                      ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #13
  %format46.i = getelementptr %struct.sof_ipc_dai_config, ptr %config, i32 %i.06, i32 3
  %39 = ptrtoint ptr %format46.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %format46.i, align 1
  %41 = or i16 %40, 512
  store i16 %41, ptr %format46.i, align 1
  br label %sof_dai_set_format.exit

sof_dai_set_format.exit:                          ; preds = %if.then45.i, %if.else42.i.sof_dai_set_format.exit_crit_edge, %if.else36.i, %if.then31.i
  %42 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 216, ptr %arrayidx5, align 1
  %mclk_rate = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config, i32 %i.06, i32 10
  %43 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %mclk_rate, align 1
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %46 = getelementptr %struct.sof_ipc_dai_config, ptr %config, i32 %i.06, i32 7
  %mclk_rate10 = getelementptr inbounds %struct.sof_ipc_dai_ssp_params, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %mclk_rate10 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %45, ptr %mclk_rate10, align 1
  %bclk_rate = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config, i32 %i.06, i32 11
  %48 = ptrtoint ptr %bclk_rate to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %bclk_rate, align 1
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %bclk_rate13 = getelementptr inbounds %struct.sof_ipc_dai_ssp_params, ptr %46, i32 0, i32 5
  %51 = ptrtoint ptr %bclk_rate13 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %50, ptr %bclk_rate13, align 1
  %fsync_rate = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config, i32 %i.06, i32 12
  %52 = ptrtoint ptr %fsync_rate to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %fsync_rate, align 1
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %fsync_rate16 = getelementptr inbounds %struct.sof_ipc_dai_ssp_params, ptr %46, i32 0, i32 4
  %55 = ptrtoint ptr %fsync_rate16 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %54, ptr %fsync_rate16, align 1
  %tdm_slots = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config, i32 %i.06, i32 13
  %56 = ptrtoint ptr %tdm_slots to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %tdm_slots, align 1
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %tdm_slots19 = getelementptr inbounds %struct.sof_ipc_dai_ssp_params, ptr %46, i32 0, i32 6
  %59 = ptrtoint ptr %tdm_slots19 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %58, ptr %tdm_slots19, align 1
  %tdm_slot_width = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config, i32 %i.06, i32 14
  %60 = ptrtoint ptr %tdm_slot_width to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %tdm_slot_width, align 1
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %conv = trunc i32 %62 to i16
  %tdm_slot_width22 = getelementptr inbounds %struct.sof_ipc_dai_ssp_params, ptr %46, i32 0, i32 10
  %63 = ptrtoint ptr %tdm_slot_width22 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 %conv, ptr %tdm_slot_width22, align 1
  %mclk_direction = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config, i32 %i.06, i32 8
  %64 = ptrtoint ptr %mclk_direction to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %mclk_direction, align 1
  %conv24 = zext i8 %65 to i32
  %mclk_direction26 = getelementptr inbounds %struct.sof_ipc_dai_ssp_params, ptr %46, i32 0, i32 12
  %66 = ptrtoint ptr %mclk_direction26 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %conv24, ptr %mclk_direction26, align 1
  %rx_slots = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config, i32 %i.06, i32 16
  %67 = ptrtoint ptr %rx_slots to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %rx_slots, align 1
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  %rx_slots29 = getelementptr inbounds %struct.sof_ipc_dai_ssp_params, ptr %46, i32 0, i32 7
  %70 = ptrtoint ptr %rx_slots29 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %69, ptr %rx_slots29, align 1
  %tx_slots = getelementptr %struct.snd_soc_tplg_hw_config, ptr %hw_config, i32 %i.06, i32 15
  %71 = ptrtoint ptr %tx_slots to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %tx_slots, align 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  %tx_slots32 = getelementptr inbounds %struct.sof_ipc_dai_ssp_params, ptr %46, i32 0, i32 8
  %74 = ptrtoint ptr %tx_slots32 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %73, ptr %tx_slots32, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_link_ssp_load.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_link_ssp_load, %if.then37)) #11
          to label %do.end60 [label %if.then37], !srcloc !710

if.then37:                                        ; preds = %sof_dai_set_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i, align 4
  %dai_index = getelementptr %struct.sof_ipc_dai_config, ptr %config, i32 %i.06, i32 2
  %77 = ptrtoint ptr %dai_index to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %dai_index, align 1
  %format = getelementptr %struct.sof_ipc_dai_config, ptr %config, i32 %i.06, i32 3
  %79 = ptrtoint ptr %format to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %format, align 1
  %conv41 = zext i16 %80 to i32
  %81 = ptrtoint ptr %mclk_rate10 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %mclk_rate10, align 1
  %83 = ptrtoint ptr %bclk_rate13 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %bclk_rate13, align 1
  %85 = ptrtoint ptr %fsync_rate16 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %fsync_rate16, align 1
  %sample_valid_bits = getelementptr inbounds %struct.sof_ipc_dai_ssp_params, ptr %46, i32 0, i32 9
  %87 = ptrtoint ptr %sample_valid_bits to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %sample_valid_bits, align 1
  %89 = ptrtoint ptr %tdm_slot_width22 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 2)
  %90 = load i16, ptr %tdm_slot_width22, align 1
  %conv51 = zext i16 %90 to i32
  %91 = ptrtoint ptr %tdm_slots19 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %tdm_slots19, align 1
  %mclk_id = getelementptr inbounds %struct.sof_ipc_dai_ssp_params, ptr %46, i32 0, i32 2
  %93 = ptrtoint ptr %mclk_id to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %94 = load i16, ptr %mclk_id, align 1
  %conv55 = zext i16 %94 to i32
  %quirks = getelementptr inbounds %struct.sof_ipc_dai_ssp_params, ptr %46, i32 0, i32 16
  %95 = ptrtoint ptr %quirks to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %quirks, align 1
  %clks_control = getelementptr inbounds %struct.sof_ipc_dai_ssp_params, ptr %46, i32 0, i32 15
  %97 = ptrtoint ptr %clks_control to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %clks_control, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_link_ssp_load.__UNIQUE_ID_ddebug270, ptr noundef %76, ptr noundef nonnull @.str.234, i32 noundef %78, i32 noundef %conv41, i32 noundef %82, i32 noundef %84, i32 noundef %86, i32 noundef %88, i32 noundef %conv51, i32 noundef %92, i32 noundef %conv55, i32 noundef %96, i32 noundef %98) #11
  br label %do.end60

do.end60:                                         ; preds = %if.then37, %sof_dai_set_format.exit
  %99 = ptrtoint ptr %fsync_rate16 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %fsync_rate16, align 1
  %101 = add i32 %100, -192001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -184001, i32 %101)
  %102 = icmp ult i32 %101, -184001
  br i1 %102, label %do.end72, label %if.end76

do.end72:                                         ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #13
  %103 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev.i, align 4
  %dai_index75 = getelementptr %struct.sof_ipc_dai_config, ptr %config, i32 %i.06, i32 2
  %105 = ptrtoint ptr %dai_index75 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %dai_index75, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.236, i32 noundef %106) #14
  br label %cleanup

if.end76:                                         ; preds = %do.end60
  %107 = ptrtoint ptr %tdm_slots19 to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %tdm_slots19, align 1
  %109 = add i32 %108, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %109)
  %110 = icmp ult i32 %109, -8
  br i1 %110, label %do.end89, label %for.inc

do.end89:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  %111 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev.i, align 4
  %dai_index92 = getelementptr %struct.sof_ipc_dai_config, ptr %config, i32 %i.06, i32 2
  %113 = ptrtoint ptr %dai_index92 to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %dai_index92, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.239, i32 noundef %114) #14
  br label %cleanup

for.inc:                                          ; preds = %if.end76
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call94 = tail call fastcc i32 @sof_set_dai_config_multi(ptr noundef %3, ptr noundef %link, ptr noundef %config, i32 noundef %6, i32 noundef %curr_conf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %do.end100, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end100:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %115 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev.i, align 4
  %dai_index102 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 2
  %117 = ptrtoint ptr %dai_index102 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %dai_index102, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.242, i32 noundef %118) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end100, %for.end.cleanup_crit_edge, %do.end89, %do.end72, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ -22, %do.end72 ], [ -22, %do.end89 ], [ %call94, %do.end100 ], [ %call94, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sof_link_dmic_load(ptr nocapture noundef readonly %scomp, ptr nocapture noundef readonly %link, ptr noundef %cfg, ptr noundef %config) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.snd_soc_tplg_link_config, ptr %cfg, i32 0, i32 11
  %4 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7
  %5 = call ptr @memset(ptr %4, i32 0, i32 164)
  %array = getelementptr inbounds %struct.snd_soc_tplg_link_config, ptr %cfg, i32 1
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %priv, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %call.i = tail call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef %4, ptr noundef nonnull @dmic_tokens, i32 noundef 9, ptr noundef %array, i32 noundef %8, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %priv, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.247, i32 noundef %13) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdm = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 15
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %priv, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %num_pdm_active = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 10
  %17 = ptrtoint ptr %num_pdm_active to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %num_pdm_active, align 1
  %call7 = tail call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef %pdm, ptr noundef nonnull @dmic_pdm_tokens, i32 noundef 7, ptr noundef %array, i32 noundef %16, i32 noundef %18, i32 noundef 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %if.end15, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %priv, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.250, i32 noundef %23) #14
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %24 = ptrtoint ptr %config to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 216, ptr %config, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_link_dmic_load.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_link_dmic_load, %if.then21)) #11
          to label %do.body26 [label %if.then21], !srcloc !710

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %dai_index = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 2
  %27 = ptrtoint ptr %dai_index to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %dai_index, align 1
  %driver_ipc_version = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 1
  %29 = ptrtoint ptr %driver_ipc_version to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %driver_ipc_version, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_link_dmic_load.__UNIQUE_ID_ddebug272, ptr noundef %26, ptr noundef nonnull @.str.252, i32 noundef %28, i32 noundef %30) #11
  br label %do.body26

do.body26:                                        ; preds = %if.then21, %if.end15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_link_dmic_load.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_link_dmic_load, %if.then38)) #11
          to label %do.body43 [label %if.then38], !srcloc !710

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %pdmclk_min = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 2
  %33 = ptrtoint ptr %pdmclk_min to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %pdmclk_min, align 1
  %pdmclk_max = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 3
  %35 = ptrtoint ptr %pdmclk_max to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %pdmclk_max, align 1
  %duty_min = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 8
  %37 = ptrtoint ptr %duty_min to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %duty_min, align 1
  %conv = zext i16 %38 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_link_dmic_load.__UNIQUE_ID_ddebug273, ptr noundef %32, ptr noundef nonnull @.str.253, i32 noundef %34, i32 noundef %36, i32 noundef %conv) #11
  br label %do.body43

do.body43:                                        ; preds = %if.then38, %do.body26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_link_dmic_load.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_link_dmic_load, %if.then55)) #11
          to label %do.body62 [label %if.then55], !srcloc !710

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  %duty_max = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 9
  %41 = ptrtoint ptr %duty_max to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %duty_max, align 1
  %conv57 = zext i16 %42 to i32
  %fifo_fs = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 4
  %43 = ptrtoint ptr %fifo_fs to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %fifo_fs, align 1
  %45 = ptrtoint ptr %num_pdm_active to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %num_pdm_active, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_link_dmic_load.__UNIQUE_ID_ddebug274, ptr noundef %40, ptr noundef nonnull @.str.254, i32 noundef %conv57, i32 noundef %44, i32 noundef %46) #11
  br label %do.body62

do.body62:                                        ; preds = %if.then55, %do.body43
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_link_dmic_load.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_link_dmic_load, %if.then74)) #11
          to label %do.end79 [label %if.then74], !srcloc !710

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  %fifo_bits = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 6
  %49 = ptrtoint ptr %fifo_bits to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %fifo_bits, align 1
  %conv76 = zext i16 %50 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_link_dmic_load.__UNIQUE_ID_ddebug275, ptr noundef %48, ptr noundef nonnull @.str.255, i32 noundef %conv76) #11
  br label %do.end79

do.end79:                                         ; preds = %if.then74, %do.body62
  %51 = ptrtoint ptr %num_pdm_active to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %num_pdm_active, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp8127.not = icmp eq i32 %52, 0
  br i1 %cmp8127.not, label %do.end79.for.end_crit_edge, label %do.end79.do.body83_crit_edge

do.end79.do.body83_crit_edge:                     ; preds = %do.end79
  br label %do.body83

do.end79.for.end_crit_edge:                       ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body83:                                        ; preds = %for.inc.do.body83_crit_edge, %do.end79.do.body83_crit_edge
  %j.028 = phi i32 [ %inc, %for.inc.do.body83_crit_edge ], [ 0, %do.end79.do.body83_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_link_dmic_load.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_link_dmic_load, %if.then95)) #11
          to label %do.body109 [label %if.then95], !srcloc !710

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i, align 4
  %id = getelementptr %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 15, i32 %j.028, i32 1
  %55 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %id, align 1
  %conv99 = zext i16 %56 to i32
  %enable_mic_a = getelementptr %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 15, i32 %j.028, i32 2
  %57 = ptrtoint ptr %enable_mic_a to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %enable_mic_a, align 1
  %conv102 = zext i16 %58 to i32
  %enable_mic_b = getelementptr %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 15, i32 %j.028, i32 3
  %59 = ptrtoint ptr %enable_mic_b to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %enable_mic_b, align 1
  %conv105 = zext i16 %60 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_link_dmic_load.__UNIQUE_ID_ddebug276, ptr noundef %54, ptr noundef nonnull @.str.256, i32 noundef %conv99, i32 noundef %conv102, i32 noundef %conv105) #11
  br label %do.body109

do.body109:                                       ; preds = %if.then95, %do.body83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_link_dmic_load.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_link_dmic_load, %if.then121)) #11
          to label %do.body136 [label %if.then121], !srcloc !710

if.then121:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 4
  %id125 = getelementptr %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 15, i32 %j.028, i32 1
  %63 = ptrtoint ptr %id125 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %id125, align 1
  %conv126 = zext i16 %64 to i32
  %polarity_mic_a = getelementptr %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 15, i32 %j.028, i32 4
  %65 = ptrtoint ptr %polarity_mic_a to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %polarity_mic_a, align 1
  %conv129 = zext i16 %66 to i32
  %polarity_mic_b = getelementptr %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 15, i32 %j.028, i32 5
  %67 = ptrtoint ptr %polarity_mic_b to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %polarity_mic_b, align 1
  %conv132 = zext i16 %68 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_link_dmic_load.__UNIQUE_ID_ddebug277, ptr noundef %62, ptr noundef nonnull @.str.257, i32 noundef %conv126, i32 noundef %conv129, i32 noundef %conv132) #11
  br label %do.body136

do.body136:                                       ; preds = %if.then121, %do.body109
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_link_dmic_load.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_link_dmic_load, %if.then148)) #11
          to label %for.inc [label %if.then148], !srcloc !710

if.then148:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i, align 4
  %id152 = getelementptr %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 15, i32 %j.028, i32 1
  %71 = ptrtoint ptr %id152 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %id152, align 1
  %conv153 = zext i16 %72 to i32
  %clk_edge = getelementptr %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 15, i32 %j.028, i32 6
  %73 = ptrtoint ptr %clk_edge to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %clk_edge, align 1
  %conv156 = zext i16 %74 to i32
  %skew = getelementptr %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 15, i32 %j.028, i32 7
  %75 = ptrtoint ptr %skew to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %skew, align 1
  %conv159 = zext i16 %76 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_link_dmic_load.__UNIQUE_ID_ddebug278, ptr noundef %70, ptr noundef nonnull @.str.258, i32 noundef %conv153, i32 noundef %conv156, i32 noundef %conv159) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then148, %do.body136
  %inc = add nuw i32 %j.028, 1
  %77 = ptrtoint ptr %num_pdm_active to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %num_pdm_active, align 1
  %cmp81 = icmp ult i32 %inc, %78
  br i1 %cmp81, label %for.inc.do.body83_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.do.body83_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body83

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end79.for.end_crit_edge
  %major = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 31, i32 5, i32 1
  %79 = ptrtoint ptr %major to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %major, align 1
  %conv163 = zext i16 %80 to i32
  %shl = shl i32 %conv163, 24
  %minor = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 31, i32 5, i32 2
  %81 = ptrtoint ptr %minor to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %minor, align 1
  %conv164 = zext i16 %82 to i32
  %shl165 = shl nuw nsw i32 %conv164, 12
  %or = or i32 %shl165, %shl
  %micro = getelementptr inbounds %struct.snd_sof_dev, ptr %3, i32 0, i32 31, i32 5, i32 3
  %83 = ptrtoint ptr %micro to i32
  call void @__asan_loadN_noabort(i32 %83, i32 2)
  %84 = load i16, ptr %micro, align 1
  %conv166 = zext i16 %84 to i32
  %or168 = or i32 %or, %conv166
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331649, i32 %or168)
  %cmp169 = icmp slt i32 %or168, 50331649
  br i1 %cmp169, label %if.then171, label %for.end.if.end173_crit_edge

for.end.if.end173_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end173

if.then171:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %fifo_bits172 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 6
  %85 = ptrtoint ptr %fifo_bits172 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 2)
  %86 = load i16, ptr %fifo_bits172, align 1
  %fifo_bits_b = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 7
  %87 = ptrtoint ptr %fifo_bits_b to i32
  call void @__asan_storeN_noabort(i32 %87, i32 2)
  store i16 %86, ptr %fifo_bits_b, align 1
  br label %if.end173

if.end173:                                        ; preds = %if.then171, %for.end.if.end173_crit_edge
  %call.i19 = tail call fastcc i32 @sof_set_dai_config_multi(ptr noundef %3, ptr noundef %link, ptr noundef %config, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %cmp175 = icmp slt i32 %call.i19, 0
  br i1 %cmp175, label %do.end180, label %if.end173.cleanup_crit_edge

if.end173.cleanup_crit_edge:                      ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end180:                                        ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #13
  %88 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i, align 4
  %dai_index182 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 2
  %90 = ptrtoint ptr %dai_index182 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %dai_index182, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.260, i32 noundef %91) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end180, %if.end173.cleanup_crit_edge, %do.end12, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call7, %do.end12 ], [ %call.i19, %do.end180 ], [ %call.i19, %if.end173.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sof_link_hda_load(ptr nocapture noundef readonly %scomp, ptr nocapture noundef readonly %link, ptr noundef %cfg, ptr noundef %config) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.snd_soc_tplg_link_config, ptr %cfg, i32 0, i32 11
  %4 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7
  %5 = call ptr @memset(ptr %4, i32 0, i32 16)
  %6 = ptrtoint ptr %config to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 216, ptr %config, align 1
  %array = getelementptr inbounds %struct.snd_soc_tplg_link_config, ptr %cfg, i32 1
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %priv, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %call.i = tail call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef %4, ptr noundef nonnull @hda_tokens, i32 noundef 2, ptr noundef %array, i32 noundef %9, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.body5, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %priv, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.262, i32 noundef %14) #14
  br label %cleanup

do.body5:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_link_hda_load.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_link_hda_load, %if.then9)) #11
          to label %do.end13 [label %if.then9], !srcloc !710

if.then9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %rate = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 2
  %17 = ptrtoint ptr %rate to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %rate, align 1
  %channels = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 3
  %19 = ptrtoint ptr %channels to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %channels, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_link_hda_load.__UNIQUE_ID_ddebug279, ptr noundef %16, ptr noundef nonnull @.str.264, i32 noundef %18, i32 noundef %20) #11
  br label %do.end13

do.end13:                                         ; preds = %if.then9, %do.body5
  %cpus = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link, i32 0, i32 2
  %21 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cpus, align 4
  %call14 = tail call ptr @snd_soc_find_dai(ptr noundef %22) #11
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end19, label %if.end22

do.end19:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %25 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cpus, align 4
  %dai_name = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dai_name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dai_name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.266, ptr noundef %28, ptr noundef nonnull @.str.263) #14
  br label %cleanup

if.end22:                                         ; preds = %do.end13
  %link_dma_ch = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 1
  %29 = ptrtoint ptr %link_dma_ch to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 -1, ptr %link_dma_ch, align 1
  %call.i1 = tail call fastcc i32 @sof_set_dai_config_multi(ptr noundef %3, ptr noundef %link, ptr noundef %config, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %cmp24 = icmp slt i32 %call.i1, 0
  br i1 %cmp24, label %do.end28, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  %32 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %link, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.269, ptr noundef %33) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.end22.cleanup_crit_edge, %do.end19, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end19 ], [ %call.i1, %do.end28 ], [ %call.i1, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sof_link_afe_load(ptr nocapture noundef readonly %scomp, ptr nocapture noundef readonly %link, ptr noundef %cfg, ptr noundef %config) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %scomp, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.snd_soc_tplg_link_config, ptr %cfg, i32 0, i32 11
  %4 = ptrtoint ptr %config to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 216, ptr %config, align 1
  %5 = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7
  %array = getelementptr inbounds %struct.snd_soc_tplg_link_config, ptr %cfg, i32 1
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %priv, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %call.i = tail call fastcc i32 @sof_parse_token_sets(ptr noundef %scomp, ptr noundef %5, ptr noundef nonnull @afe_tokens, i32 noundef 3, ptr noundef %array, i32 noundef %8, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.body5, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %priv, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.314, i32 noundef %13) #14
  br label %cleanup

do.body5:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_link_afe_load.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_link_afe_load, %if.then9)) #11
          to label %do.end13 [label %if.then9], !srcloc !710

if.then9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %rate = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 2
  %16 = ptrtoint ptr %rate to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %rate, align 1
  %channels = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 1
  %18 = ptrtoint ptr %channels to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %channels, align 1
  %format = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 3
  %20 = ptrtoint ptr %format to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %format, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_link_afe_load.__UNIQUE_ID_ddebug271, ptr noundef %15, ptr noundef nonnull @.str.316, i32 noundef %17, i32 noundef %19, i32 noundef %21) #11
  br label %do.end13

do.end13:                                         ; preds = %if.then9, %do.body5
  %cpus = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link, i32 0, i32 2
  %22 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cpus, align 4
  %call14 = tail call ptr @snd_soc_find_dai(ptr noundef %23) #11
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end19, label %if.end22

do.end19:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %26 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cpus, align 4
  %dai_name = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dai_name to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dai_name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.315, ptr noundef %29) #14
  br label %cleanup

if.end22:                                         ; preds = %do.end13
  %stream_id = getelementptr inbounds %struct.sof_ipc_dai_config, ptr %config, i32 0, i32 7, i32 0, i32 4
  %30 = ptrtoint ptr %stream_id to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 -1, ptr %stream_id, align 1
  %call.i1 = tail call fastcc i32 @sof_set_dai_config_multi(ptr noundef %3, ptr noundef %link, ptr noundef %config, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %cmp24 = icmp slt i32 %call.i1, 0
  br i1 %cmp24, label %do.end28, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %33 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %link, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.321, ptr noundef %34) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.end22.cleanup_crit_edge, %do.end19, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end19 ], [ %call.i1, %do.end28 ], [ %call.i1, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sof_set_dai_config_multi(ptr noundef readonly %sdev, ptr nocapture noundef readonly %link, ptr noundef %config, i32 noundef %num_conf, i32 noundef %curr_conf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dai_list = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 38
  %0 = ptrtoint ptr %dai_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn5 = load ptr, ptr %dai_list, align 4
  %cmp.not6 = icmp eq ptr %.pn5, %dai_list
  br i1 %cmp.not6, label %entry.do.end38_crit_edge, label %for.body.lr.ph

entry.do.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end38

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_conf)
  %cmp73 = icmp sgt i32 %num_conf, 0
  %dai_index19 = getelementptr %struct.sof_ipc_dai_config, ptr %config, i32 %curr_conf, i32 2
  %mul = mul i32 %num_conf, 216
  br label %for.body

for.body:                                         ; preds = %for.inc27.for.body_crit_edge, %for.body.lr.ph
  %.pn8 = phi ptr [ %.pn5, %for.body.lr.ph ], [ %.pn, %for.inc27.for.body_crit_edge ]
  %found.07 = phi i32 [ 0, %for.body.lr.ph ], [ %found.1, %for.inc27.for.body_crit_edge ]
  %name = getelementptr i8, ptr %.pn8, i32 -100
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.for.inc27_crit_edge, label %if.end

for.body.for.inc27_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc27

if.end:                                           ; preds = %for.body
  %3 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %link, align 4
  %call = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull %2) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %for.cond6.preheader, label %if.end.for.inc27_crit_edge

if.end.for.inc27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc27

for.cond6.preheader:                              ; preds = %if.end
  br i1 %cmp73, label %for.body8.lr.ph, label %for.cond6.preheader.do.body_crit_edge

for.cond6.preheader.do.body_crit_edge:            ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body8.lr.ph:                                  ; preds = %for.cond6.preheader
  %dai_index = getelementptr i8, ptr %.pn8, i32 -28
  br label %for.body8

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.body8.lr.ph
  %i.04 = phi i32 [ 0, %for.body8.lr.ph ], [ %inc, %for.body8.for.body8_crit_edge ]
  %5 = ptrtoint ptr %dai_index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dai_index, align 4
  %dai_index9 = getelementptr %struct.sof_ipc_dai_config, ptr %config, i32 %i.04, i32 2
  %7 = ptrtoint ptr %dai_index9 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %dai_index9, align 1
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %num_conf
  br i1 %exitcond.not, label %for.body8.do.body_crit_edge, label %for.body8.for.body8_crit_edge

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body8

for.body8.do.body_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %for.body8.do.body_crit_edge, %for.cond6.preheader.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sof_set_dai_config_multi.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sof_set_dai_config_multi, %if.then16)) #11
          to label %do.end [label %if.then16], !srcloc !710

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdev, align 4
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  %12 = ptrtoint ptr %dai_index19 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %dai_index19, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sof_set_dai_config_multi.__UNIQUE_ID_ddebug269, ptr noundef %9, ptr noundef nonnull @.str.245, ptr noundef %11, i32 noundef %13) #11
  br label %do.end

do.end:                                           ; preds = %if.then16, %do.body
  %number_configs = getelementptr i8, ptr %.pn8, i32 -16
  %14 = ptrtoint ptr %number_configs to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %num_conf, ptr %number_configs, align 4
  %current_config = getelementptr i8, ptr %.pn8, i32 -12
  %15 = ptrtoint ptr %current_config to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %curr_conf, ptr %current_config, align 4
  %call21 = tail call ptr @kmemdup(ptr noundef %config, i32 noundef %mul, i32 noundef 3264) #11
  %dai_config = getelementptr i8, ptr %.pn8, i32 -4
  %16 = ptrtoint ptr %dai_config to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call21, ptr %dai_config, align 4
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %do.end.cleanup_crit_edge, label %do.end.for.inc27_crit_edge

do.end.for.inc27_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc27

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc27:                                        ; preds = %do.end.for.inc27_crit_edge, %if.end.for.inc27_crit_edge, %for.body.for.inc27_crit_edge
  %found.1 = phi i32 [ %found.07, %if.end.for.inc27_crit_edge ], [ %found.07, %for.body.for.inc27_crit_edge ], [ 1, %do.end.for.inc27_crit_edge ]
  %17 = ptrtoint ptr %.pn8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn8, align 4
  %cmp.not = icmp eq ptr %.pn, %dai_list
  br i1 %cmp.not, label %for.end33, label %for.inc27.for.body_crit_edge

for.inc27.for.body_crit_edge:                     ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end33:                                        ; preds = %for.inc27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.1)
  %tobool34.not = icmp eq i32 %found.1, 0
  br i1 %tobool34.not, label %for.end33.do.end38_crit_edge, label %for.end33.cleanup_crit_edge

for.end33.cleanup_crit_edge:                      ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end33.do.end38_crit_edge:                     ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end38

do.end38:                                         ; preds = %for.end33.do.end38_crit_edge, %entry.do.end38_crit_edge
  %18 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev, align 4
  %20 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %link, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.246, ptr noundef %21) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %for.end33.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end38 ], [ 0, %for.end33.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_find_dai(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_set_up_pipelines(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sof_tear_down_pipelines(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_volume_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_volume_put(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_bytes_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_bytes_put(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_enum_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_enum_put(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_switch_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_switch_put(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_bytes_ext_get(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_bytes_ext_put(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sof_bytes_ext_volatile_get(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 353)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 353)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readnone }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !57, !58, !60, !61, !63, !64, !65, !67, !69, !70, !71, !72, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !127, !128, !129, !131, !132, !133, !135, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !188, !189, !191, !192, !193, !194, !196, !197, !199, !200, !202, !204, !205, !206, !208, !209, !210, !211, !213, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !228, !229, !230, !231, !233, !234, !236, !238, !239, !240, !241, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !257, !259, !261, !262, !263, !264, !266, !267, !268, !270, !271, !273, !275, !276, !277, !278, !280, !281, !282, !284, !285, !287, !289, !290, !291, !292, !294, !295, !296, !298, !299, !301, !303, !304, !305, !306, !308, !309, !310, !312, !313, !315, !317, !318, !319, !320, !322, !323, !324, !326, !327, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !353, !354, !355, !357, !358, !359, !360, !362, !363, !364, !366, !367, !368, !369, !371, !372, !373, !374, !376, !378, !379, !380, !382, !383, !384, !386, !387, !389, !390, !391, !393, !394, !395, !397, !398, !400, !401, !403, !404, !406, !407, !408, !410, !411, !412, !414, !415, !416, !417, !419, !420, !421, !422, !424, !425, !426, !428, !429, !430, !432, !433, !434, !436, !437, !438, !440, !441, !443, !444, !446, !448, !449, !450, !451, !453, !454, !455, !456, !458, !459, !460, !462, !463, !464, !466, !467, !468, !470, !471, !473, !474, !475, !477, !478, !479, !481, !483, !484, !485, !486, !488, !489, !491, !492, !493, !495, !496, !497, !499, !500, !501, !503, !505, !506, !507, !509, !510, !511, !513, !514, !515, !516, !518, !519, !520, !522, !523, !525, !526, !528, !529, !531, !532, !534, !535, !537, !538, !540, !541, !543, !544, !545, !547, !549, !551, !552, !553, !554, !556, !557, !559, !560, !561, !563, !564, !565, !567, !569, !570, !571, !572, !574, !575, !576, !578, !580, !581, !582, !583, !585, !586, !587, !588, !590, !591, !592, !594, !595, !596, !598, !600, !601, !602, !603, !605, !606, !607, !609, !610, !611, !613, !614, !615, !617, !619, !620, !621, !622, !624, !625, !626, !628, !629, !630, !631, !633, !634, !635, !637, !638, !639, !640, !642, !643, !644, !646, !647, !648, !649, !651, !652, !654, !655, !656, !658, !659, !660, !662, !664, !665, !666, !667, !669, !670, !671, !673, !674, !675, !676, !678, !679, !680, !682, !683, !684, !686, !687, !688, !690, !691, !692, !694, !695, !696, !698}
!llvm.module.flags = !{!700, !701, !702, !703, !704, !705, !706, !707}
!llvm.ident = !{!708}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/topology.c", i32 3467, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @snd_sof_complete_pipeline.__UNIQUE_ID_ddebug283, !1, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/sof/topology.c", i32 3665, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @snd_sof_load_topology.__UNIQUE_ID_ddebug285, !7, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/sof/topology.c", i32 3669, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @snd_sof_load_topology._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @snd_sof_load_topology._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/sof/topology.c", i32 3671, i32 3}
!18 = !{ptr @snd_sof_load_topology._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @snd_sof_load_topology._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/sof/topology.c", i32 3678, i32 3}
!22 = !{ptr @snd_sof_load_topology._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @snd_sof_load_topology._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ksymtab_snd_sof_load_topology, !25, !"__ksymtab_snd_sof_load_topology", i1 false, i1 false}
!25 = !{!"../sound/soc/sof/topology.c", i32 3686, i32 1}
!26 = !{ptr @sof_tplg_ops, !27, !"sof_tplg_ops", i1 false, i1 false}
!27 = !{!"../sound/soc/sof/topology.c", i32 3624, i32 32}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/sof/topology.c", i32 1268, i32 2}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @sof_control_load.__UNIQUE_ID_ddebug254, !29, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/sof/topology.c", i32 1305, i32 3}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @sof_control_load._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @sof_control_load._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/sof/topology.c", i32 1101, i32 3}
!39 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @sof_control_load_volume._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @sof_control_load_volume._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/sof/topology.c", i32 1109, i32 3}
!44 = !{ptr @sof_control_load_volume._entry.21, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @sof_control_load_volume._entry_ptr.23, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/sof/topology.c", i32 1126, i32 3}
!48 = !{ptr @sof_control_load_volume._entry.24, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @sof_control_load_volume._entry_ptr.26, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/sof/topology.c", i32 1131, i32 2}
!52 = !{ptr @sof_control_load_volume.__UNIQUE_ID_ddebug251, !51, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/sof/topology.c", i32 968, i32 4}
!55 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @sof_parse_token_sets._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @sof_parse_token_sets._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @sof_parse_token_sets._entry.30, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../sound/soc/sof/topology.c", i32 976, i32 4}
!60 = !{ptr @sof_parse_token_sets._entry_ptr.31, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/sof/topology.c", i32 999, i32 4}
!63 = !{ptr @sof_parse_token_sets._entry.32, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @sof_parse_token_sets._entry_ptr.34, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @led_tokens, !66, !"led_tokens", i1 false, i1 false}
!66 = !{!"../sound/soc/sof/topology.c", i32 803, i32 40}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/sof/topology.c", i32 1198, i32 3}
!69 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @sof_control_load_bytes._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @sof_control_load_bytes._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @sof_control_load_bytes.__UNIQUE_ID_ddebug253, !73, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!73 = !{!"../sound/soc/sof/topology.c", i32 1217, i32 2}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/sof/topology.c", i32 1225, i32 4}
!76 = !{ptr @sof_control_load_bytes._entry.37, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @sof_control_load_bytes._entry_ptr.39, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/sof/topology.c", i32 1232, i32 4}
!80 = !{ptr @sof_control_load_bytes._entry.40, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @sof_control_load_bytes._entry_ptr.42, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/sof/topology.c", i32 1240, i32 4}
!84 = !{ptr @sof_control_load_bytes._entry.43, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @sof_control_load_bytes._entry_ptr.45, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/sof/topology.c", i32 1170, i32 2}
!88 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @sof_control_load_enum.__UNIQUE_ID_ddebug252, !87, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/sof/topology.c", i32 1330, i32 2}
!92 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @sof_control_unload.__UNIQUE_ID_ddebug255, !91, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/sof/topology.c", i32 3386, i32 2}
!96 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @sof_route_load.__UNIQUE_ID_ddebug281, !95, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!98 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/sof/topology.c", i32 3393, i32 3}
!101 = !{ptr @sof_route_load._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @sof_route_load._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/sof/topology.c", i32 3414, i32 3}
!105 = !{ptr @sof_route_load._entry.54, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @sof_route_load._entry_ptr.56, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/sof/topology.c", i32 3438, i32 3}
!109 = !{ptr @sof_route_load.__UNIQUE_ID_ddebug282, !108, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/sof/topology.c", i32 2283, i32 2}
!112 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @sof_widget_ready.__UNIQUE_ID_ddebug266, !111, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/sof/topology.c", i32 2292, i32 3}
!116 = !{ptr @sof_widget_ready._entry, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @sof_widget_ready._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/sof/topology.c", i32 2307, i32 3}
!120 = !{ptr @sof_widget_ready._entry.61, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @sof_widget_ready._entry_ptr.63, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/sof/topology.c", i32 2373, i32 3}
!124 = !{ptr @sof_widget_ready.__UNIQUE_ID_ddebug267, !123, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!125 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/sof/topology.c", i32 2379, i32 3}
!127 = !{ptr @sof_widget_ready._entry.65, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @sof_widget_ready._entry_ptr.67, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.69, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/sof/topology.c", i32 2393, i32 4}
!131 = !{ptr @sof_widget_ready._entry.68, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @sof_widget_ready._entry_ptr.70, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @core_tokens, !134, !"core_tokens", i1 false, i1 false}
!134 = !{!"../sound/soc/sof/topology.c", i32 742, i32 40}
!135 = !{ptr @comp_ext_tokens, !136, !"comp_ext_tokens", i1 false, i1 false}
!136 = !{!"../sound/soc/sof/topology.c", i32 749, i32 40}
!137 = !{ptr @.str.71, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/sof/topology.c", i32 1496, i32 3}
!139 = !{ptr @.str.72, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @sof_widget_load_dai._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @sof_widget_load_dai._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.74, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/sof/topology.c", i32 1505, i32 3}
!144 = !{ptr @sof_widget_load_dai._entry.73, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @sof_widget_load_dai._entry_ptr.75, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.76, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/sof/topology.c", i32 1510, i32 2}
!148 = !{ptr @sof_widget_load_dai.__UNIQUE_ID_ddebug258, !147, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!149 = !{ptr @dai_tokens, !150, !"dai_tokens", i1 false, i1 false}
!150 = !{!"../sound/soc/sof/topology.c", i32 546, i32 40}
!151 = !{ptr @.str.77, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/sof/topology.c", i32 373, i32 3}
!153 = !{ptr @.str.78, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/sof/topology.c", i32 374, i32 3}
!155 = !{ptr @.str.79, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/sof/topology.c", i32 375, i32 3}
!157 = !{ptr @.str.80, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/sof/topology.c", i32 376, i32 3}
!159 = !{ptr @.str.81, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/sof/topology.c", i32 377, i32 3}
!161 = !{ptr @.str.82, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/sof/topology.c", i32 378, i32 3}
!163 = !{ptr @.str.83, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/sof/topology.c", i32 379, i32 3}
!165 = !{ptr @.str.84, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/sof/topology.c", i32 380, i32 3}
!167 = !{ptr @.str.85, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/sof/topology.c", i32 381, i32 3}
!169 = !{ptr @.str.86, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/sof/topology.c", i32 382, i32 3}
!171 = !{ptr @sof_dais, !172, !"sof_dais", i1 false, i1 false}
!172 = !{!"../sound/soc/sof/topology.c", i32 372, i32 35}
!173 = !{ptr @comp_tokens, !174, !"comp_tokens", i1 false, i1 false}
!174 = !{!"../sound/soc/sof/topology.c", i32 644, i32 40}
!175 = !{ptr @.str.87, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/sof/topology.c", i32 407, i32 3}
!177 = !{ptr @.str.88, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/sof/topology.c", i32 408, i32 3}
!179 = !{ptr @.str.89, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/sof/topology.c", i32 409, i32 3}
!181 = !{ptr @.str.90, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/sof/topology.c", i32 410, i32 3}
!183 = !{ptr @sof_frames, !184, !"sof_frames", i1 false, i1 false}
!184 = !{!"../sound/soc/sof/topology.c", i32 406, i32 37}
!185 = !{ptr @.str.91, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/sof/topology.c", i32 1039, i32 2}
!187 = !{ptr @.str.92, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @sof_dbg_comp_config.__UNIQUE_ID_ddebug250, !186, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!189 = !{ptr @.str.93, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/sof/topology.c", i32 1384, i32 5}
!191 = !{ptr @.str.94, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @sof_connect_dai_widget._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @sof_connect_dai_widget._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.95, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/sof/topology.c", i32 1390, i32 4}
!196 = !{ptr @sof_connect_dai_widget.__UNIQUE_ID_ddebug256, !195, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!197 = !{ptr @sof_connect_dai_widget._entry.96, !198, !"_entry", i1 false, i1 false}
!198 = !{!"../sound/soc/sof/topology.c", i32 1406, i32 5}
!199 = !{ptr @sof_connect_dai_widget._entry_ptr.97, !198, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @sof_connect_dai_widget.__UNIQUE_ID_ddebug257, !201, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!201 = !{!"../sound/soc/sof/topology.c", i32 1412, i32 4}
!202 = !{ptr @.str.99, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/sof/topology.c", i32 1422, i32 3}
!204 = !{ptr @sof_connect_dai_widget._entry.98, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @sof_connect_dai_widget._entry_ptr.100, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.101, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/sof/topology.c", i32 1744, i32 3}
!208 = !{ptr @.str.102, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @sof_widget_load_mixer._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @sof_widget_load_mixer._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.103, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/sof/topology.c", i32 1818, i32 3}
!213 = !{ptr @.str.104, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @sof_widget_load_pga._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @sof_widget_load_pga._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.106, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/sof/topology.c", i32 1832, i32 3}
!218 = !{ptr @sof_widget_load_pga._entry.105, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @sof_widget_load_pga._entry_ptr.107, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.109, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/sof/topology.c", i32 1840, i32 3}
!222 = !{ptr @sof_widget_load_pga._entry.108, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @sof_widget_load_pga._entry_ptr.110, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @volume_tokens, !225, !"volume_tokens", i1 false, i1 false}
!225 = !{!"../sound/soc/sof/topology.c", i32 586, i32 40}
!226 = !{ptr @.str.111, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/sof/topology.c", i32 1558, i32 3}
!228 = !{ptr @.str.112, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @sof_widget_load_buffer._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @sof_widget_load_buffer._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.113, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/sof/topology.c", i32 1564, i32 2}
!233 = !{ptr @sof_widget_load_buffer.__UNIQUE_ID_ddebug259, !232, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!234 = !{ptr @buffer_tokens, !235, !"buffer_tokens", i1 false, i1 false}
!235 = !{!"../sound/soc/sof/topology.c", i32 538, i32 40}
!236 = !{ptr @.str.114, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/sof/topology.c", i32 1669, i32 3}
!238 = !{ptr @.str.115, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @sof_widget_load_pipeline._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @sof_widget_load_pipeline._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.116, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/sof/topology.c", i32 1677, i32 2}
!243 = !{ptr @sof_widget_load_pipeline.__UNIQUE_ID_ddebug261, !242, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!244 = !{ptr @.str.118, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/sof/topology.c", i32 1684, i32 3}
!246 = !{ptr @sof_widget_load_pipeline._entry.117, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @sof_widget_load_pipeline._entry_ptr.119, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.121, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/sof/topology.c", i32 1693, i32 3}
!250 = !{ptr @sof_widget_load_pipeline._entry.120, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @sof_widget_load_pipeline._entry_ptr.122, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.123, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/soc/sof/topology.c", i32 1705, i32 2}
!254 = !{ptr @sof_widget_load_pipeline.__UNIQUE_ID_ddebug262, !253, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!255 = !{ptr @sched_tokens, !256, !"sched_tokens", i1 false, i1 false}
!256 = !{!"../sound/soc/sof/topology.c", i32 564, i32 40}
!257 = !{ptr @pipeline_tokens, !258, !"pipeline_tokens", i1 false, i1 false}
!258 = !{!"../sound/soc/sof/topology.c", i32 579, i32 40}
!259 = !{ptr @.str.124, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/sof/topology.c", i32 1619, i32 3}
!261 = !{ptr @.str.125, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @sof_widget_load_pcm._entry, !260, !"_entry", i1 false, i1 false}
!263 = !{ptr @sof_widget_load_pcm._entry_ptr, !260, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.127, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/sof/topology.c", i32 1628, i32 3}
!266 = !{ptr @sof_widget_load_pcm._entry.126, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @sof_widget_load_pcm._entry_ptr.128, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.129, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/sof/topology.c", i32 1633, i32 2}
!270 = !{ptr @sof_widget_load_pcm.__UNIQUE_ID_ddebug260, !269, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!271 = !{ptr @pcm_tokens, !272, !"pcm_tokens", i1 false, i1 false}
!272 = !{!"../sound/soc/sof/topology.c", i32 628, i32 40}
!273 = !{ptr @.str.130, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/sof/topology.c", i32 1893, i32 3}
!275 = !{ptr @.str.131, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @sof_widget_load_src._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @sof_widget_load_src._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.133, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/sof/topology.c", i32 1902, i32 3}
!280 = !{ptr @sof_widget_load_src._entry.132, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @sof_widget_load_src._entry_ptr.134, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.135, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/soc/sof/topology.c", i32 1907, i32 2}
!284 = !{ptr @sof_widget_load_src.__UNIQUE_ID_ddebug263, !283, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!285 = !{ptr @src_tokens, !286, !"src_tokens", i1 false, i1 false}
!286 = !{!"../sound/soc/sof/topology.c", i32 595, i32 40}
!287 = !{ptr @.str.136, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/sof/topology.c", i32 1945, i32 3}
!289 = !{ptr @.str.137, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @sof_widget_load_asrc._entry, !288, !"_entry", i1 false, i1 false}
!291 = !{ptr @sof_widget_load_asrc._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.139, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/soc/sof/topology.c", i32 1954, i32 3}
!294 = !{ptr @sof_widget_load_asrc._entry.138, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @sof_widget_load_asrc._entry_ptr.140, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.141, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/soc/sof/topology.c", i32 1959, i32 2}
!298 = !{ptr @sof_widget_load_asrc.__UNIQUE_ID_ddebug264, !297, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!299 = !{ptr @asrc_tokens, !300, !"asrc_tokens", i1 false, i1 false}
!300 = !{!"../sound/soc/sof/topology.c", i32 603, i32 40}
!301 = !{ptr @.str.142, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/soc/sof/topology.c", i32 1999, i32 3}
!303 = !{ptr @.str.143, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @sof_widget_load_siggen._entry, !302, !"_entry", i1 false, i1 false}
!305 = !{ptr @sof_widget_load_siggen._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.145, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/soc/sof/topology.c", i32 2008, i32 3}
!308 = !{ptr @sof_widget_load_siggen._entry.144, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @sof_widget_load_siggen._entry_ptr.146, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.147, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/soc/sof/topology.c", i32 2013, i32 2}
!312 = !{ptr @sof_widget_load_siggen.__UNIQUE_ID_ddebug265, !311, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!313 = distinct !{null, !314, !"tone_tokens", i1 false, i1 false}
!314 = !{!"../sound/soc/sof/topology.c", i32 617, i32 40}
!315 = !{ptr @.str.148, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/soc/sof/topology.c", i32 2199, i32 3}
!317 = !{ptr @.str.149, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @sof_widget_load_process._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @sof_widget_load_process._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.151, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/soc/sof/topology.c", i32 2211, i32 3}
!322 = !{ptr @sof_widget_load_process._entry.150, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @sof_widget_load_process._entry_ptr.152, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.154, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/soc/sof/topology.c", i32 2219, i32 3}
!326 = !{ptr @sof_widget_load_process._entry.153, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @sof_widget_load_process._entry_ptr.155, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @process_tokens, !329, !"process_tokens", i1 false, i1 false}
!329 = !{!"../sound/soc/sof/topology.c", i32 621, i32 40}
!330 = !{ptr @.str.156, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/soc/sof/topology.c", i32 433, i32 3}
!332 = !{ptr @.str.157, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/soc/sof/topology.c", i32 434, i32 3}
!334 = !{ptr @.str.158, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/soc/sof/topology.c", i32 435, i32 3}
!336 = !{ptr @.str.159, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/soc/sof/topology.c", i32 436, i32 3}
!338 = !{ptr @.str.160, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/soc/sof/topology.c", i32 437, i32 3}
!340 = !{ptr @.str.161, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../sound/soc/sof/topology.c", i32 438, i32 3}
!342 = !{ptr @.str.162, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/soc/sof/topology.c", i32 439, i32 3}
!344 = !{ptr @.str.163, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/soc/sof/topology.c", i32 440, i32 3}
!346 = !{ptr @.str.164, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/soc/sof/topology.c", i32 441, i32 3}
!348 = !{ptr @sof_process, !349, !"sof_process", i1 false, i1 false}
!349 = !{!"../sound/soc/sof/topology.c", i32 432, i32 39}
!350 = !{ptr @.str.165, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/soc/sof/topology.c", i32 2153, i32 3}
!352 = !{ptr @.str.166, !351, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @sof_process_load._entry, !351, !"_entry", i1 false, i1 false}
!354 = !{ptr @sof_process_load._entry_ptr, !351, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.167, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../sound/soc/sof/topology.c", i32 2055, i32 4}
!357 = !{ptr @.str.168, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @sof_get_control_data._entry, !356, !"_entry", i1 false, i1 false}
!359 = !{ptr @sof_get_control_data._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.170, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/soc/sof/topology.c", i32 2062, i32 4}
!362 = !{ptr @sof_get_control_data._entry.169, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @sof_get_control_data._entry_ptr.171, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.172, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../sound/soc/sof/topology.c", i32 1782, i32 3}
!366 = !{ptr @.str.173, !365, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @sof_widget_load_mux._entry, !365, !"_entry", i1 false, i1 false}
!368 = !{ptr @sof_widget_load_mux._entry_ptr, !365, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.174, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../sound/soc/sof/topology.c", i32 2252, i32 2}
!371 = !{ptr @.str.175, !370, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @sof_widget_bind_event._entry, !370, !"_entry", i1 false, i1 false}
!373 = !{ptr @sof_widget_bind_event._entry_ptr, !370, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @sof_kwd_events, !375, !"sof_kwd_events", i1 false, i1 false}
!375 = !{!"../sound/soc/sof/topology.c", i32 218, i32 48}
!376 = !{ptr @.str.176, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../sound/soc/sof/topology.c", i32 155, i32 2}
!378 = !{ptr @.str.177, !377, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @sof_keyword_dapm_event.__UNIQUE_ID_ddebug247, !377, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!380 = !{ptr @.str.178, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../sound/soc/sof/topology.c", i32 161, i32 3}
!382 = !{ptr @sof_keyword_dapm_event._entry, !381, !"_entry", i1 false, i1 false}
!383 = !{ptr @sof_keyword_dapm_event._entry_ptr, !381, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.179, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../sound/soc/sof/topology.c", i32 170, i32 4}
!386 = !{ptr @sof_keyword_dapm_event.__UNIQUE_ID_ddebug248, !385, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!387 = !{ptr @.str.181, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../sound/soc/sof/topology.c", i32 177, i32 4}
!389 = !{ptr @sof_keyword_dapm_event._entry.180, !388, !"_entry", i1 false, i1 false}
!390 = !{ptr @sof_keyword_dapm_event._entry_ptr.182, !388, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @.str.184, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../sound/soc/sof/topology.c", i32 186, i32 4}
!393 = !{ptr @sof_keyword_dapm_event._entry.183, !392, !"_entry", i1 false, i1 false}
!394 = !{ptr @sof_keyword_dapm_event._entry_ptr.185, !392, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @.str.186, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../sound/soc/sof/topology.c", i32 192, i32 4}
!397 = !{ptr @sof_keyword_dapm_event.__UNIQUE_ID_ddebug249, !396, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!398 = !{ptr @sof_keyword_dapm_event._entry.187, !399, !"_entry", i1 false, i1 false}
!399 = !{!"../sound/soc/sof/topology.c", i32 199, i32 4}
!400 = !{ptr @sof_keyword_dapm_event._entry_ptr.188, !399, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @sof_keyword_dapm_event._entry.189, !402, !"_entry", i1 false, i1 false}
!402 = !{!"../sound/soc/sof/topology.c", i32 206, i32 4}
!403 = !{ptr @sof_keyword_dapm_event._entry_ptr.190, !402, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @.str.191, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../sound/soc/sof/topology.c", i32 73, i32 3}
!406 = !{ptr @ipc_pcm_params._entry, !405, !"_entry", i1 false, i1 false}
!407 = !{ptr @ipc_pcm_params._entry_ptr, !405, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.193, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../sound/soc/sof/topology.c", i32 111, i32 3}
!410 = !{ptr @ipc_pcm_params._entry.192, !409, !"_entry", i1 false, i1 false}
!411 = !{ptr @ipc_pcm_params._entry_ptr.194, !409, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @.str.195, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../sound/soc/sof/topology.c", i32 135, i32 3}
!414 = !{ptr @.str.196, !413, !"<string literal>", i1 false, i1 false}
!415 = !{ptr @ipc_trigger._entry, !413, !"_entry", i1 false, i1 false}
!416 = !{ptr @ipc_trigger._entry_ptr, !413, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.197, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../sound/soc/sof/topology.c", i32 2474, i32 4}
!419 = !{ptr @.str.198, !418, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @sof_widget_unload._entry, !418, !"_entry", i1 false, i1 false}
!421 = !{ptr @sof_widget_unload._entry_ptr, !418, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.199, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../sound/soc/sof/topology.c", i32 2528, i32 2}
!424 = !{ptr @.str.200, !423, !"<string literal>", i1 false, i1 false}
!425 = !{ptr @sof_dai_load.__UNIQUE_ID_ddebug268, !423, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!426 = !{ptr @.str.201, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../sound/soc/sof/topology.c", i32 2537, i32 3}
!428 = !{ptr @sof_dai_load._entry, !427, !"_entry", i1 false, i1 false}
!429 = !{ptr @sof_dai_load._entry_ptr, !427, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @.str.203, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../sound/soc/sof/topology.c", i32 2557, i32 3}
!432 = !{ptr @sof_dai_load._entry.202, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @sof_dai_load._entry_ptr.204, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.206, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../sound/soc/sof/topology.c", i32 2566, i32 3}
!436 = !{ptr @sof_dai_load._entry.205, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @sof_dai_load._entry_ptr.207, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @sof_dai_load._entry.208, !439, !"_entry", i1 false, i1 false}
!439 = !{!"../sound/soc/sof/topology.c", i32 2587, i32 3}
!440 = !{ptr @sof_dai_load._entry_ptr.209, !439, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @sof_dai_load._entry.210, !442, !"_entry", i1 false, i1 false}
!442 = !{!"../sound/soc/sof/topology.c", i32 2595, i32 3}
!443 = !{ptr @sof_dai_load._entry_ptr.211, !442, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @stream_tokens, !445, !"stream_tokens", i1 false, i1 false}
!445 = !{!"../sound/soc/sof/topology.c", i32 634, i32 40}
!446 = !{ptr @.str.212, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../sound/soc/sof/topology.c", i32 1582, i32 3}
!448 = !{ptr @.str.213, !447, !"<string literal>", i1 false, i1 false}
!449 = !{ptr @spcm_bind._entry, !447, !"_entry", i1 false, i1 false}
!450 = !{ptr @spcm_bind._entry_ptr, !447, !"_entry_ptr", i1 false, i1 false}
!451 = !{ptr @.str.214, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../sound/soc/sof/topology.c", i32 3227, i32 3}
!453 = !{ptr @.str.215, !452, !"<string literal>", i1 false, i1 false}
!454 = !{ptr @sof_link_load._entry, !452, !"_entry", i1 false, i1 false}
!455 = !{ptr @sof_link_load._entry_ptr, !452, !"_entry_ptr", i1 false, i1 false}
!456 = !{ptr @.str.217, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../sound/soc/sof/topology.c", i32 3257, i32 3}
!458 = !{ptr @sof_link_load._entry.216, !457, !"_entry", i1 false, i1 false}
!459 = !{ptr @sof_link_load._entry_ptr.218, !457, !"_entry_ptr", i1 false, i1 false}
!460 = !{ptr @.str.220, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../sound/soc/sof/topology.c", i32 3267, i32 3}
!462 = !{ptr @sof_link_load._entry.219, !461, !"_entry", i1 false, i1 false}
!463 = !{ptr @sof_link_load._entry_ptr.221, !461, !"_entry_ptr", i1 false, i1 false}
!464 = !{ptr @.str.223, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../sound/soc/sof/topology.c", i32 3280, i32 4}
!466 = !{ptr @sof_link_load._entry.222, !465, !"_entry", i1 false, i1 false}
!467 = !{ptr @sof_link_load._entry_ptr.224, !465, !"_entry_ptr", i1 false, i1 false}
!468 = !{ptr @.str.225, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../sound/soc/sof/topology.c", i32 3287, i32 3}
!470 = !{ptr @sof_link_load.__UNIQUE_ID_ddebug280, !469, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!471 = !{ptr @.str.227, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../sound/soc/sof/topology.c", i32 3296, i32 4}
!473 = !{ptr @sof_link_load._entry.226, !472, !"_entry", i1 false, i1 false}
!474 = !{ptr @sof_link_load._entry_ptr.228, !472, !"_entry_ptr", i1 false, i1 false}
!475 = !{ptr @.str.230, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../sound/soc/sof/topology.c", i32 3349, i32 3}
!477 = !{ptr @sof_link_load._entry.229, !476, !"_entry", i1 false, i1 false}
!478 = !{ptr @sof_link_load._entry_ptr.231, !476, !"_entry_ptr", i1 false, i1 false}
!479 = !{ptr @dai_link_tokens, !480, !"dai_link_tokens", i1 false, i1 false}
!480 = !{!"../sound/soc/sof/topology.c", i32 556, i32 40}
!481 = !{ptr @.str.232, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../sound/soc/sof/topology.c", i32 2744, i32 3}
!483 = !{ptr @.str.233, !482, !"<string literal>", i1 false, i1 false}
!484 = !{ptr @sof_link_ssp_load._entry, !482, !"_entry", i1 false, i1 false}
!485 = !{ptr @sof_link_ssp_load._entry_ptr, !482, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @.str.234, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../sound/soc/sof/topology.c", i32 2767, i32 3}
!488 = !{ptr @sof_link_ssp_load.__UNIQUE_ID_ddebug270, !487, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!489 = !{ptr @.str.236, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../sound/soc/sof/topology.c", i32 2776, i32 4}
!491 = !{ptr @sof_link_ssp_load._entry.235, !490, !"_entry", i1 false, i1 false}
!492 = !{ptr @sof_link_ssp_load._entry_ptr.237, !490, !"_entry_ptr", i1 false, i1 false}
!493 = !{ptr @.str.239, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../sound/soc/sof/topology.c", i32 2782, i32 4}
!495 = !{ptr @sof_link_ssp_load._entry.238, !494, !"_entry", i1 false, i1 false}
!496 = !{ptr @sof_link_ssp_load._entry_ptr.240, !494, !"_entry_ptr", i1 false, i1 false}
!497 = !{ptr @.str.242, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../sound/soc/sof/topology.c", i32 2791, i32 3}
!499 = !{ptr @sof_link_ssp_load._entry.241, !498, !"_entry", i1 false, i1 false}
!500 = !{ptr @sof_link_ssp_load._entry_ptr.243, !498, !"_entry_ptr", i1 false, i1 false}
!501 = !{ptr @ssp_tokens, !502, !"ssp_tokens", i1 false, i1 false}
!502 = !{!"../sound/soc/sof/topology.c", i32 657, i32 40}
!503 = !{ptr @.str.244, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../sound/soc/sof/topology.c", i32 2689, i32 4}
!505 = !{ptr @.str.245, !504, !"<string literal>", i1 false, i1 false}
!506 = !{ptr @sof_set_dai_config_multi.__UNIQUE_ID_ddebug269, !504, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!507 = !{ptr @.str.246, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../sound/soc/sof/topology.c", i32 2708, i32 3}
!509 = !{ptr @sof_set_dai_config_multi._entry, !508, !"_entry", i1 false, i1 false}
!510 = !{ptr @sof_set_dai_config_multi._entry_ptr, !508, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @.str.247, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../sound/soc/sof/topology.c", i32 3071, i32 3}
!513 = !{ptr @.str.248, !512, !"<string literal>", i1 false, i1 false}
!514 = !{ptr @sof_link_dmic_load._entry, !512, !"_entry", i1 false, i1 false}
!515 = !{ptr @sof_link_dmic_load._entry_ptr, !512, !"_entry_ptr", i1 false, i1 false}
!516 = !{ptr @.str.250, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../sound/soc/sof/topology.c", i32 3084, i32 3}
!518 = !{ptr @sof_link_dmic_load._entry.249, !517, !"_entry", i1 false, i1 false}
!519 = !{ptr @sof_link_dmic_load._entry_ptr.251, !517, !"_entry_ptr", i1 false, i1 false}
!520 = !{ptr @.str.252, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../sound/soc/sof/topology.c", i32 3093, i32 2}
!522 = !{ptr @sof_link_dmic_load.__UNIQUE_ID_ddebug272, !521, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!523 = !{ptr @.str.253, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../sound/soc/sof/topology.c", i32 3095, i32 2}
!525 = !{ptr @sof_link_dmic_load.__UNIQUE_ID_ddebug273, !524, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!526 = !{ptr @.str.254, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../sound/soc/sof/topology.c", i32 3098, i32 2}
!528 = !{ptr @sof_link_dmic_load.__UNIQUE_ID_ddebug274, !527, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!529 = !{ptr @.str.255, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../sound/soc/sof/topology.c", i32 3101, i32 2}
!531 = !{ptr @sof_link_dmic_load.__UNIQUE_ID_ddebug275, !530, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!532 = !{ptr @.str.256, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../sound/soc/sof/topology.c", i32 3104, i32 3}
!534 = !{ptr @sof_link_dmic_load.__UNIQUE_ID_ddebug276, !533, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!535 = !{ptr @.str.257, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../sound/soc/sof/topology.c", i32 3108, i32 3}
!537 = !{ptr @sof_link_dmic_load.__UNIQUE_ID_ddebug277, !536, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!538 = !{ptr @.str.258, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../sound/soc/sof/topology.c", i32 3112, i32 3}
!540 = !{ptr @sof_link_dmic_load.__UNIQUE_ID_ddebug278, !539, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!541 = !{ptr @.str.260, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../sound/soc/sof/topology.c", i32 3128, i32 3}
!543 = !{ptr @sof_link_dmic_load._entry.259, !542, !"_entry", i1 false, i1 false}
!544 = !{ptr @sof_link_dmic_load._entry_ptr.261, !542, !"_entry_ptr", i1 false, i1 false}
!545 = !{ptr @dmic_tokens, !546, !"dmic_tokens", i1 false, i1 false}
!546 = !{!"../sound/soc/sof/topology.c", i32 694, i32 40}
!547 = !{ptr @dmic_pdm_tokens, !548, !"dmic_pdm_tokens", i1 false, i1 false}
!548 = !{!"../sound/soc/sof/topology.c", i32 761, i32 40}
!549 = !{ptr @.str.262, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../sound/soc/sof/topology.c", i32 3155, i32 3}
!551 = !{ptr @.str.263, !550, !"<string literal>", i1 false, i1 false}
!552 = !{ptr @sof_link_hda_load._entry, !550, !"_entry", i1 false, i1 false}
!553 = !{ptr @sof_link_hda_load._entry_ptr, !550, !"_entry_ptr", i1 false, i1 false}
!554 = !{ptr @.str.264, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../sound/soc/sof/topology.c", i32 3160, i32 2}
!556 = !{ptr @sof_link_hda_load.__UNIQUE_ID_ddebug279, !555, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!557 = !{ptr @.str.266, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../sound/soc/sof/topology.c", i32 3165, i32 3}
!559 = !{ptr @sof_link_hda_load._entry.265, !558, !"_entry", i1 false, i1 false}
!560 = !{ptr @sof_link_hda_load._entry_ptr.267, !558, !"_entry_ptr", i1 false, i1 false}
!561 = !{ptr @.str.269, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../sound/soc/sof/topology.c", i32 3174, i32 3}
!563 = !{ptr @sof_link_hda_load._entry.268, !562, !"_entry", i1 false, i1 false}
!564 = !{ptr @sof_link_hda_load._entry_ptr.270, !562, !"_entry_ptr", i1 false, i1 false}
!565 = !{ptr @hda_tokens, !566, !"hda_tokens", i1 false, i1 false}
!566 = !{!"../sound/soc/sof/topology.c", i32 793, i32 40}
!567 = !{ptr @.str.271, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../sound/soc/sof/topology.c", i32 3195, i32 3}
!569 = !{ptr @.str.272, !568, !"<string literal>", i1 false, i1 false}
!570 = !{ptr @sof_link_alh_load._entry, !568, !"_entry", i1 false, i1 false}
!571 = !{ptr @sof_link_alh_load._entry_ptr, !568, !"_entry_ptr", i1 false, i1 false}
!572 = !{ptr @.str.274, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../sound/soc/sof/topology.c", i32 3206, i32 3}
!574 = !{ptr @sof_link_alh_load._entry.273, !573, !"_entry", i1 false, i1 false}
!575 = !{ptr @sof_link_alh_load._entry_ptr.275, !573, !"_entry_ptr", i1 false, i1 false}
!576 = !{ptr @alh_tokens, !577, !"alh_tokens", i1 false, i1 false}
!577 = !{!"../sound/soc/sof/topology.c", i32 684, i32 40}
!578 = !{ptr @.str.276, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../sound/soc/sof/topology.c", i32 2819, i32 3}
!580 = !{ptr @.str.277, !579, !"<string literal>", i1 false, i1 false}
!581 = !{ptr @sof_link_sai_load._entry, !579, !"_entry", i1 false, i1 false}
!582 = !{ptr @sof_link_sai_load._entry_ptr, !579, !"_entry_ptr", i1 false, i1 false}
!583 = !{ptr @.str.279, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../sound/soc/sof/topology.c", i32 2834, i32 2}
!585 = !{ptr @.str.280, !584, !"<string literal>", i1 false, i1 false}
!586 = !{ptr @sof_link_sai_load._entry.278, !584, !"_entry", i1 false, i1 false}
!587 = !{ptr @sof_link_sai_load._entry_ptr.281, !584, !"_entry_ptr", i1 false, i1 false}
!588 = !{ptr @.str.283, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../sound/soc/sof/topology.c", i32 2841, i32 3}
!590 = !{ptr @sof_link_sai_load._entry.282, !589, !"_entry", i1 false, i1 false}
!591 = !{ptr @sof_link_sai_load._entry_ptr.284, !589, !"_entry_ptr", i1 false, i1 false}
!592 = !{ptr @.str.286, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../sound/soc/sof/topology.c", i32 2849, i32 3}
!594 = !{ptr @sof_link_sai_load._entry.285, !593, !"_entry", i1 false, i1 false}
!595 = !{ptr @sof_link_sai_load._entry_ptr.287, !593, !"_entry_ptr", i1 false, i1 false}
!596 = !{ptr @sai_tokens, !597, !"sai_tokens", i1 false, i1 false}
!597 = !{!"../sound/soc/sof/topology.c", i32 735, i32 40}
!598 = !{ptr @.str.288, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../sound/soc/sof/topology.c", i32 2877, i32 3}
!600 = !{ptr @.str.289, !599, !"<string literal>", i1 false, i1 false}
!601 = !{ptr @sof_link_esai_load._entry, !599, !"_entry", i1 false, i1 false}
!602 = !{ptr @sof_link_esai_load._entry_ptr, !599, !"_entry_ptr", i1 false, i1 false}
!603 = !{ptr @.str.291, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../sound/soc/sof/topology.c", i32 2891, i32 2}
!605 = !{ptr @sof_link_esai_load._entry.290, !604, !"_entry", i1 false, i1 false}
!606 = !{ptr @sof_link_esai_load._entry_ptr.292, !604, !"_entry_ptr", i1 false, i1 false}
!607 = !{ptr @.str.294, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../sound/soc/sof/topology.c", i32 2898, i32 3}
!609 = !{ptr @sof_link_esai_load._entry.293, !608, !"_entry", i1 false, i1 false}
!610 = !{ptr @sof_link_esai_load._entry_ptr.295, !608, !"_entry_ptr", i1 false, i1 false}
!611 = !{ptr @.str.297, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../sound/soc/sof/topology.c", i32 2906, i32 3}
!613 = !{ptr @sof_link_esai_load._entry.296, !612, !"_entry", i1 false, i1 false}
!614 = !{ptr @sof_link_esai_load._entry_ptr.298, !612, !"_entry_ptr", i1 false, i1 false}
!615 = !{ptr @esai_tokens, !616, !"esai_tokens", i1 false, i1 false}
!616 = !{!"../sound/soc/sof/topology.c", i32 728, i32 40}
!617 = !{ptr @.str.299, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../sound/soc/sof/topology.c", i32 2964, i32 2}
!619 = !{ptr @.str.300, !618, !"<string literal>", i1 false, i1 false}
!620 = !{ptr @sof_link_acp_bt_load._entry, !618, !"_entry", i1 false, i1 false}
!621 = !{ptr @sof_link_acp_bt_load._entry_ptr, !618, !"_entry_ptr", i1 false, i1 false}
!622 = !{ptr @.str.302, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../sound/soc/sof/topology.c", i32 2971, i32 3}
!624 = !{ptr @sof_link_acp_bt_load._entry.301, !623, !"_entry", i1 false, i1 false}
!625 = !{ptr @sof_link_acp_bt_load._entry_ptr.303, !623, !"_entry_ptr", i1 false, i1 false}
!626 = !{ptr @.str.304, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../sound/soc/sof/topology.c", i32 2996, i32 2}
!628 = !{ptr @.str.305, !627, !"<string literal>", i1 false, i1 false}
!629 = !{ptr @sof_link_acp_sp_load._entry, !627, !"_entry", i1 false, i1 false}
!630 = !{ptr @sof_link_acp_sp_load._entry_ptr, !627, !"_entry_ptr", i1 false, i1 false}
!631 = !{ptr @.str.307, !632, !"<string literal>", i1 false, i1 false}
!632 = !{!"../sound/soc/sof/topology.c", i32 3003, i32 3}
!633 = !{ptr @sof_link_acp_sp_load._entry.306, !632, !"_entry", i1 false, i1 false}
!634 = !{ptr @sof_link_acp_sp_load._entry_ptr.308, !632, !"_entry_ptr", i1 false, i1 false}
!635 = !{ptr @.str.309, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../sound/soc/sof/topology.c", i32 2932, i32 2}
!637 = !{ptr @.str.310, !636, !"<string literal>", i1 false, i1 false}
!638 = !{ptr @sof_link_acp_dmic_load._entry, !636, !"_entry", i1 false, i1 false}
!639 = !{ptr @sof_link_acp_dmic_load._entry_ptr, !636, !"_entry_ptr", i1 false, i1 false}
!640 = !{ptr @.str.312, !641, !"<string literal>", i1 false, i1 false}
!641 = !{!"../sound/soc/sof/topology.c", i32 2939, i32 3}
!642 = !{ptr @sof_link_acp_dmic_load._entry.311, !641, !"_entry", i1 false, i1 false}
!643 = !{ptr @sof_link_acp_dmic_load._entry_ptr.313, !641, !"_entry_ptr", i1 false, i1 false}
!644 = !{ptr @.str.314, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../sound/soc/sof/topology.c", i32 3027, i32 3}
!646 = !{ptr @.str.315, !645, !"<string literal>", i1 false, i1 false}
!647 = !{ptr @sof_link_afe_load._entry, !645, !"_entry", i1 false, i1 false}
!648 = !{ptr @sof_link_afe_load._entry_ptr, !645, !"_entry_ptr", i1 false, i1 false}
!649 = !{ptr @.str.316, !650, !"<string literal>", i1 false, i1 false}
!650 = !{!"../sound/soc/sof/topology.c", i32 3032, i32 2}
!651 = !{ptr @sof_link_afe_load.__UNIQUE_ID_ddebug271, !650, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!652 = !{ptr @.str.318, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../sound/soc/sof/topology.c", i32 3037, i32 3}
!654 = !{ptr @sof_link_afe_load._entry.317, !653, !"_entry", i1 false, i1 false}
!655 = !{ptr @sof_link_afe_load._entry_ptr.319, !653, !"_entry_ptr", i1 false, i1 false}
!656 = !{ptr @.str.321, !657, !"<string literal>", i1 false, i1 false}
!657 = !{!"../sound/soc/sof/topology.c", i32 3045, i32 3}
!658 = !{ptr @sof_link_afe_load._entry.320, !657, !"_entry", i1 false, i1 false}
!659 = !{ptr @sof_link_afe_load._entry_ptr.322, !657, !"_entry_ptr", i1 false, i1 false}
!660 = !{ptr @afe_tokens, !661, !"afe_tokens", i1 false, i1 false}
!661 = !{!"../sound/soc/sof/topology.c", i32 811, i32 40}
!662 = !{ptr @.str.323, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../sound/soc/sof/topology.c", i32 3548, i32 4}
!664 = !{ptr @.str.324, !663, !"<string literal>", i1 false, i1 false}
!665 = !{ptr @sof_complete._entry, !663, !"_entry", i1 false, i1 false}
!666 = !{ptr @sof_complete._entry_ptr, !663, !"_entry_ptr", i1 false, i1 false}
!667 = !{ptr @.str.326, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../sound/soc/sof/topology.c", i32 3554, i32 4}
!669 = !{ptr @sof_complete._entry.325, !668, !"_entry", i1 false, i1 false}
!670 = !{ptr @sof_complete._entry_ptr.327, !668, !"_entry_ptr", i1 false, i1 false}
!671 = !{ptr @.str.328, !672, !"<string literal>", i1 false, i1 false}
!672 = !{!"../sound/soc/sof/topology.c", i32 3503, i32 5}
!673 = !{ptr @.str.329, !672, !"<string literal>", i1 false, i1 false}
!674 = !{ptr @sof_set_pipe_widget._entry, !672, !"_entry", i1 false, i1 false}
!675 = !{ptr @sof_set_pipe_widget._entry_ptr, !672, !"_entry_ptr", i1 false, i1 false}
!676 = !{ptr @.str.330, !677, !"<string literal>", i1 false, i1 false}
!677 = !{!"../sound/soc/sof/topology.c", i32 3574, i32 3}
!678 = !{ptr @.str.331, !677, !"<string literal>", i1 false, i1 false}
!679 = !{ptr @sof_manifest.__UNIQUE_ID_ddebug284, !677, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!680 = !{ptr @.str.332, !681, !"<string literal>", i1 false, i1 false}
!681 = !{!"../sound/soc/sof/topology.c", i32 3579, i32 3}
!682 = !{ptr @sof_manifest._entry, !681, !"_entry", i1 false, i1 false}
!683 = !{ptr @sof_manifest._entry_ptr, !681, !"_entry_ptr", i1 false, i1 false}
!684 = !{ptr @.str.334, !685, !"<string literal>", i1 false, i1 false}
!685 = !{!"../sound/soc/sof/topology.c", i32 3583, i32 2}
!686 = !{ptr @sof_manifest._entry.333, !685, !"_entry", i1 false, i1 false}
!687 = !{ptr @sof_manifest._entry_ptr.335, !685, !"_entry_ptr", i1 false, i1 false}
!688 = !{ptr @.str.337, !689, !"<string literal>", i1 false, i1 false}
!689 = !{!"../sound/soc/sof/topology.c", i32 3594, i32 3}
!690 = !{ptr @sof_manifest._entry.336, !689, !"_entry", i1 false, i1 false}
!691 = !{ptr @sof_manifest._entry_ptr.338, !689, !"_entry_ptr", i1 false, i1 false}
!692 = !{ptr @.str.340, !693, !"<string literal>", i1 false, i1 false}
!693 = !{!"../sound/soc/sof/topology.c", i32 3602, i32 4}
!694 = !{ptr @sof_manifest._entry.339, !693, !"_entry", i1 false, i1 false}
!695 = !{ptr @sof_manifest._entry_ptr.341, !693, !"_entry_ptr", i1 false, i1 false}
!696 = !{ptr @sof_io_ops, !697, !"sof_io_ops", i1 false, i1 false}
!697 = !{!"../sound/soc/sof/topology.c", i32 3611, i32 47}
!698 = !{ptr @sof_bytes_ext_ops, !699, !"sof_bytes_ext_ops", i1 false, i1 false}
!699 = !{!"../sound/soc/sof/topology.c", i32 3619, i32 48}
!700 = !{i32 1, !"wchar_size", i32 2}
!701 = !{i32 1, !"min_enum_size", i32 4}
!702 = !{i32 8, !"branch-target-enforcement", i32 0}
!703 = !{i32 8, !"sign-return-address", i32 0}
!704 = !{i32 8, !"sign-return-address-all", i32 0}
!705 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!706 = !{i32 7, !"uwtable", i32 1}
!707 = !{i32 7, !"frame-pointer", i32 2}
!708 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!709 = !{!"auto-init"}
!710 = !{i64 2148380997, i64 2148381002, i64 2148381015, i64 2148381059, i64 2148381093, i64 2148381114}
!711 = !{!"branch_weights", i32 1, i32 2000}
!712 = !{i8 0, i8 2}
!713 = !{i64 2148406184, i64 2148406464, i64 2148406798, i64 2148407132}
!714 = !{i32 0, i32 33}
