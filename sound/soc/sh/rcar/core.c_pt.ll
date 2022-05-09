; ModuleID = '/llk/IR_all_yes/sound/soc/sh/rcar/core.c_pt.bc'
source_filename = "../sound/soc/sh/rcar/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rsnd_mod = type { i32, i32, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.rsnd_mod_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rsnd_priv = type { ptr, %struct.spinlock, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32 }
%struct.rsnd_dai = type { [16 x i8], %struct.rsnd_dai_stream, %struct.rsnd_dai_stream, ptr, %struct.snd_pcm_hw_constraint_list, i32, i32, i32, i8 }
%struct.rsnd_dai_stream = type { [16 x i8], ptr, [13 x ptr], ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.rsnd_kctrl_cfg_m = type { %struct.rsnd_kctrl_cfg, [8 x i32] }
%struct.rsnd_kctrl_cfg = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rsnd_kctrl_cfg_s = type { %struct.rsnd_kctrl_cfg, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.86, i32 }
%union.anon.86 = type { ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.85, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.85 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.76, [64 x i8] }
%union.anon.76 = type { %struct.anon.79, [40 x i8] }
%struct.anon.79 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.80, [128 x i8] }
%union.anon.80 = type { %union.anon.82 }
%union.anon.82 = type { [64 x i64] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_pcm_hw_rule = type { i32, i32, [5 x i32], ptr, ptr }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }

@rsnd_mod_make_sure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 121, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s is not your expected module\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rsnd_mod_make_sure\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/soc/sh/rcar/core.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rsnd_mod_make_sure._entry_ptr = internal global ptr @rsnd_mod_make_sure._entry, section ".printk_index", align 4
@rsnd_mod_name.names = internal global { [5 x [16 x i8]], [48 x i8] } zeroinitializer, align 32
@rsnd_mod_name.num = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s[%d%d]\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s[%d]\00", [25 x i8] zeroinitializer }, align 32
@rsnd_runtime_channel_after_ctu_with_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 286, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CTU and TDM Split should be used\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"rsnd_runtime_channel_after_ctu_with_params\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rsnd_runtime_channel_after_ctu_with_params._entry_ptr = internal global ptr @rsnd_runtime_channel_after_ctu_with_params._entry, section ".printk_index", align 4
@rsnd_get_adinr_bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 362, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"not supported sample bits\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rsnd_get_adinr_bit\00", [45 x i8] zeroinitializer }, align 32
@rsnd_get_adinr_bit._entry_ptr = internal global ptr @rsnd_get_adinr_bit._entry, section ".printk_index", align 4
@rsnd_get_dalign.dalign_values = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1985229328, i32 50, i32 30292, i32 118, i32 -19088744, i32 186, i32 65244, i32 254], [32 x i8] zeroinitializer }, align 32
@rsnd_dai_connect.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snd_soc_rcar\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rsnd_dai_connect\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s is connected to io (%s)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%d\00", [26 x i8] zeroinitializer }, align 32
@rsnd_node_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 1227, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"strange node numbering (%s)\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rsnd_node_count\00", [16 x i8] zeroinitializer }, align 32
@rsnd_node_count._entry_ptr = internal global ptr @rsnd_node_count._entry, section ".printk_index", align 4
@rsnd_kctrl_accept_runtime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 1699, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Can't update kctrl when idle\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rsnd_kctrl_accept_runtime\00", [38 x i8] zeroinitializer }, align 32
@rsnd_kctrl_accept_runtime._entry_ptr = internal global ptr @rsnd_kctrl_accept_runtime._entry, section ".printk_index", align 4
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"128 dB/1 step\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"64 dB/1 step\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"32 dB/1 step\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"16 dB/1 step\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"8 dB/1 step\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"4 dB/1 step\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"2 dB/1 step\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"1 dB/1 step\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"0.5 dB/1 step\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0.25 dB/1 step\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"0.125 dB/1 step\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"0.125 dB/2 steps\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"0.125 dB/4 steps\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"0.125 dB/8 steps\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"0.125 dB/16 steps\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"0.125 dB/32 steps\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"0.125 dB/64 steps\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0.125 dB/128 steps\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0.125 dB/256 steps\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0.125 dB/512 steps\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0.125 dB/1024 steps\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0.125 dB/2048 steps\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0.125 dB/4096 steps\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"0.125 dB/8192 steps\00", [44 x i8] zeroinitializer }, align 32
@volume_ramp_rate = dso_local constant { [24 x ptr], [32 x i8] } { [24 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_snd_soc_rcar__258_2012_rsnd_driver_init6 = internal global ptr @rsnd_driver_init, section ".initcall6.init", align 4
@rsnd_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rsnd_probe, ptr @rsnd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.47, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rsnd_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rsnd_driver_exit = internal global ptr @rsnd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file259 = internal constant [49 x i8] c"snd_soc_rcar.file=sound/soc/sh/rcar/snd-soc-rcar\00", section ".modinfo", align 1
@__UNIQUE_ID_license260 = internal constant [28 x i8] c"snd_soc_rcar.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description261 = internal constant [52 x i8] c"snd_soc_rcar.description=Renesas R-Car audio driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author262 = internal constant [73 x i8] c"snd_soc_rcar.author=Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias263 = internal constant [43 x i8] c"snd_soc_rcar.alias=platform:rcar-pcm-audio\00", section ".modinfo", align 1
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rcar_sound\00", [21 x i8] zeroinitializer }, align 32
@rsnd_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar_sound-gen1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar_sound-gen2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar_sound-gen3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar_sound-r8a77990\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 19 to ptr) }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@rsnd_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rsnd_suspend, ptr @rsnd_resume, ptr @rsnd_suspend, ptr @rsnd_resume, ptr @rsnd_suspend, ptr @rsnd_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rsnd_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@rsnd_soc_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.123, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @rsnd_debugfs_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_hw_params, ptr @rsnd_hw_free, ptr null, ptr null, ptr null, ptr @rsnd_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rsnd_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 1926, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot snd dai register\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rsnd_probe\00", [21 x i8] zeroinitializer }, align 32
@rsnd_probe._entry_ptr = internal global ptr @rsnd_probe._entry, section ".printk_index", align 4
@rsnd_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 1932, ptr @.str.53, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"probed\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rsnd_probe._entry_ptr.54 = internal global ptr @rsnd_probe._entry.51, section ".printk_index", align 4
@rsnd_mod_sequence = internal constant { [2 x [13 x i32]], [56 x i8] } { [2 x [13 x i32]] [[13 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 12, i32 7, i32 8, i32 9, i32 10, i32 11], [13 x i32] [i32 0, i32 1, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 2, i32 3, i32 4, i32 5, i32 6]], [56 x i8] zeroinitializer }, align 32
@rsnd_probe._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.50, ptr @.str.2, i32 1937, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s : %s error (%d, %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@rsnd_probe._entry_ptr.57 = internal global ptr @rsnd_probe._entry.55, section ".printk_index", align 4
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"remove\00", [25 x i8] zeroinitializer }, align 32
@rsnd_probe._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.50, ptr @.str.2, i32 1938, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rsnd_probe._entry_ptr.60 = internal global ptr @rsnd_probe._entry.59, section ".printk_index", align 4
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rcar_sound,dai\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rsnd-dai.%d\00", [20 x i8] zeroinitializer }, align 32
@rsnd_soc_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @rsnd_soc_dai_set_fmt, ptr null, ptr @rsnd_soc_set_dai_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_soc_dai_startup, ptr @rsnd_soc_dai_shutdown, ptr null, ptr null, ptr @rsnd_soc_dai_prepare, ptr @rsnd_soc_dai_trigger, ptr null, ptr null, ptr @rsnd_soc_dai_formats, i32 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAI%d Playback\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAI%d Capture\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"playback\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"capture\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"src\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rcar_sound,src\00", [17 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ctu\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rcar_sound,ctu\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mix\00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rcar_sound,mix\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dvc\00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rcar_sound,dvc\00", [17 x i8] zeroinitializer }, align 32
@__rsnd_dai_probe.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.75, ptr @.str.2, ptr @.str.76, i8 1, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__rsnd_dai_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s (%s/%s)\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"play\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" -- \00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"  --   \00", [24 x i8] zeroinitializer }, align 32
@rsnd_soc_dai_formats = internal global { [2 x i64], [16 x i8] } { [2 x i64] [i64 64424509454, i64 48], [16 x i8] zeroinitializer }, align 32
@rsnd_soc_set_dai_tdm_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 844, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unsupported TDM slots (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rsnd_soc_set_dai_tdm_slot\00", [38 x i8] zeroinitializer }, align 32
@rsnd_soc_set_dai_tdm_slot._entry_ptr = internal global ptr @rsnd_soc_set_dai_tdm_slot._entry, section ".printk_index", align 4
@rsnd_soc_hw_channels_list = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 6, i32 8], [20 x i8] zeroinitializer }, align 32
@rsnd_pcm_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 259, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65536, i32 32, i32 8192, i32 1, i32 32, i32 256 }, [32 x i8] zeroinitializer }, align 32
@rsnd_soc_hw_rate_list = internal global { [12 x i32], [48 x i8] } { [12 x i32] [i32 8000, i32 11025, i32 16000, i32 22050, i32 32000, i32 44100, i32 48000, i32 64000, i32 88200, i32 96000, i32 176400, i32 192000], [48 x i8] zeroinitializer }, align 32
@rsnd_soc_dai_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.82, ptr @.str.2, i32 1027, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rsnd_soc_dai_shutdown\00", [42 x i8] zeroinitializer }, align 32
@rsnd_soc_dai_shutdown._entry_ptr = internal global ptr @rsnd_soc_dai_shutdown._entry, section ".printk_index", align 4
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cleanup\00", [24 x i8] zeroinitializer }, align 32
@rsnd_soc_dai_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.84, ptr @.str.2, i32 1039, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rsnd_soc_dai_prepare\00", [43 x i8] zeroinitializer }, align 32
@rsnd_soc_dai_prepare._entry_ptr = internal global ptr @rsnd_soc_dai_prepare._entry, section ".printk_index", align 4
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"prepare\00", [24 x i8] zeroinitializer }, align 32
@rsnd_soc_dai_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.86, ptr @.str.2, i32 721, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rsnd_soc_dai_trigger\00", [43 x i8] zeroinitializer }, align 32
@rsnd_soc_dai_trigger._entry_ptr = internal global ptr @rsnd_soc_dai_trigger._entry, section ".printk_index", align 4
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"init\00", [27 x i8] zeroinitializer }, align 32
@rsnd_soc_dai_trigger._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.86, ptr @.str.2, i32 725, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rsnd_soc_dai_trigger._entry_ptr.89 = internal global ptr @rsnd_soc_dai_trigger._entry.88, section ".printk_index", align 4
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@rsnd_soc_dai_trigger._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.86, ptr @.str.2, i32 729, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rsnd_soc_dai_trigger._entry_ptr.92 = internal global ptr @rsnd_soc_dai_trigger._entry.91, section ".printk_index", align 4
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"irq\00", [28 x i8] zeroinitializer }, align 32
@rsnd_soc_dai_trigger._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.86, ptr @.str.2, i32 736, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rsnd_soc_dai_trigger._entry_ptr.95 = internal global ptr @rsnd_soc_dai_trigger._entry.94, section ".printk_index", align 4
@rsnd_soc_dai_trigger._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.86, ptr @.str.2, i32 738, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rsnd_soc_dai_trigger._entry_ptr.97 = internal global ptr @rsnd_soc_dai_trigger._entry.96, section ".printk_index", align 4
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stop\00", [27 x i8] zeroinitializer }, align 32
@rsnd_soc_dai_trigger._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.86, ptr @.str.2, i32 740, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rsnd_soc_dai_trigger._entry_ptr.100 = internal global ptr @rsnd_soc_dai_trigger._entry.99, section ".printk_index", align 4
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"quit\00", [27 x i8] zeroinitializer }, align 32
@rsnd_pcm_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.102, ptr @.str.2, i32 1311, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rsnd_pcm_new\00", [19 x i8] zeroinitializer }, align 32
@rsnd_pcm_new._entry_ptr = internal global ptr @rsnd_pcm_new._entry, section ".printk_index", align 4
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pcm_new\00", [24 x i8] zeroinitializer }, align 32
@rsnd_pcm_new._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.102, ptr @.str.2, i32 1315, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rsnd_pcm_new._entry_ptr.105 = internal global ptr @rsnd_pcm_new._entry.104, section ".printk_index", align 4
@.str.106 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hdmi@fead0000\00", [18 x i8] zeroinitializer }, align 32
@rsnd_parse_connect_graph.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.107, ptr @.str.2, ptr @.str.108, i8 1, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rsnd_parse_connect_graph\00", [39 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s connected to HDMI0\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hdmi@feae0000\00", [18 x i8] zeroinitializer }, align 32
@rsnd_parse_connect_graph.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.107, ptr @.str.2, ptr @.str.110, i8 1, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s connected to HDMI1\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rcar_sound,ssiu\00", [16 x i8] zeroinitializer }, align 32
@rsnd_parse_tdm_split_mode.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.112, ptr @.str.2, ptr @.str.113, i8 1, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rsnd_parse_tdm_split_mode\00", [38 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s is part of TDM Split\0A\00", [39 x i8] zeroinitializer }, align 32
@rsnd_rdai_continuance_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.114, ptr @.str.2, i32 1823, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rsnd_rdai_continuance_probe\00", [36 x i8] zeroinitializer }, align 32
@rsnd_rdai_continuance_probe._entry_ptr = internal global ptr @rsnd_rdai_continuance_probe._entry, section ".printk_index", align 4
@.str.115 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"probe\00", [26 x i8] zeroinitializer }, align 32
@rsnd_rdai_continuance_probe._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.114, ptr @.str.2, i32 1840, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rsnd_rdai_continuance_probe._entry_ptr.117 = internal global ptr @rsnd_rdai_continuance_probe._entry.116, section ".printk_index", align 4
@rsnd_rdai_continuance_probe._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.114, ptr @.str.2, i32 1853, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rsnd_rdai_continuance_probe._entry_ptr.119 = internal global ptr @rsnd_rdai_continuance_probe._entry.118, section ".printk_index", align 4
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fallback\00", [23 x i8] zeroinitializer }, align 32
@rsnd_rdai_continuance_probe._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.114, ptr @.str.2, i32 1859, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rsnd_rdai_continuance_probe._entry_ptr.122 = internal global ptr @rsnd_rdai_continuance_probe._entry.121, section ".printk_index", align 4
@.str.123 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rsnd\00", [27 x i8] zeroinitializer }, align 32
@rsnd_hw_params.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.124, ptr @.str.2, ptr @.str.125, i8 1, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rsnd_hw_params\00", [17 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"convert channels = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@rsnd_hw_params.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.124, ptr @.str.2, ptr @.str.126, i8 1, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"convert rate     = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@rsnd_hw_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.127, ptr @.str.2, i32 1481, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rsnd_hw_update\00", [17 x i8] zeroinitializer }, align 32
@rsnd_hw_update._entry_ptr = internal global ptr @rsnd_hw_update._entry, section ".printk_index", align 4
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hw_params\00", [22 x i8] zeroinitializer }, align 32
@rsnd_hw_update._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.127, ptr @.str.2, i32 1483, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rsnd_hw_update._entry_ptr.130 = internal global ptr @rsnd_hw_update._entry.129, section ".printk_index", align 4
@.str.131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hw_free\00", [24 x i8] zeroinitializer }, align 32
@rsnd_pointer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.132, ptr @.str.2, i32 1613, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rsnd_pointer\00", [19 x i8] zeroinitializer }, align 32
@rsnd_pointer._entry_ptr = internal global ptr @rsnd_pointer._entry, section ".printk_index", align 4
@.str.133 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pointer\00", [24 x i8] zeroinitializer }, align 32
@rsnd_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.134, ptr @.str.2, i32 1971, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rsnd_remove\00", [20 x i8] zeroinitializer }, align 32
@rsnd_remove._entry_ptr = internal global ptr @rsnd_remove._entry, section ".printk_index", align 4
@rsnd_remove._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.134, ptr @.str.2, i32 1972, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rsnd_remove._entry_ptr.136 = internal global ptr @rsnd_remove._entry.135, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.137 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 24]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.149 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.150 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.151 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 6, i64 8]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.154 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.161 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.162 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.164 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 120, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 138, i32 14 }
@___asan_gen_.186 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 139, i32 13 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 152, i32 33 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 157, i32 33 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 286, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 362, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant [14 x i8] c"dalign_values\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 372, i32 19 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 596, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1207, i32 42 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1226, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1699, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1721, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1722, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1723, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1724, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1725, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1726, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1727, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1728, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1729, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1730, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1731, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1732, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1733, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1734, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1735, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1736, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1737, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1738, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1739, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1740, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1741, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1742, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1743, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1744, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant [17 x i8] c"volume_ramp_rate\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1720, i32 20 }
@___asan_gen_.330 = private unnamed_addr constant [12 x i8] c"rsnd_driver\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 2003, i32 31 }
@___asan_gen_.334 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.334, i32 261, i32 30 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 2005, i32 11 }
@___asan_gen_.339 = private unnamed_addr constant [14 x i8] c"rsnd_of_match\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 101, i32 34 }
@___asan_gen_.342 = private unnamed_addr constant [12 x i8] c"rsnd_pm_ops\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1999, i32 32 }
@___asan_gen_.345 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1897, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant [19 x i8] c"rsnd_soc_component\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1810, i32 46 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1926, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1932, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant [18 x i8] c"rsnd_mod_sequence\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 495, i32 27 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1937, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1938, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1251, i32 38 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1348, i32 43 }
@___asan_gen_.393 = private unnamed_addr constant [17 x i8] c"rsnd_soc_dai_ops\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1067, i32 37 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1356, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1364, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1378, i32 59 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1379, i32 59 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1386, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1387, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1388, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1389, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1401, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant [21 x i8] c"rsnd_soc_dai_formats\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1042, i32 12 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 844, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant [26 x i8] c"rsnd_soc_hw_channels_list\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 851, i32 21 }
@___asan_gen_.462 = private unnamed_addr constant [18 x i8] c"rsnd_pcm_hardware\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 951, i32 38 }
@___asan_gen_.465 = private unnamed_addr constant [22 x i8] c"rsnd_soc_hw_rate_list\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 855, i32 21 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1027, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1039, i32 9 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 721, i32 9 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 725, i32 9 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 729, i32 9 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 736, i32 9 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 738, i32 10 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 740, i32 10 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1311, i32 8 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1315, i32 8 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1139, i32 37 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1141, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1145, i32 37 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1147, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1083, i32 32 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1106, i32 5 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1823, i32 8 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1840, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1853, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1859, i32 9 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1811, i32 11 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1524, i32 4 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1539, i32 4 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1481, i32 9 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1483, i32 9 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1613, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1971, i32 10 }
@___asan_gen_.621 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.622 = private constant [28 x i8] c"../sound/soc/sh/rcar/core.c\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1972, i32 10 }
@llvm.compiler.used = appending global [190 x ptr] [ptr @__UNIQUE_ID_alias263, ptr @__UNIQUE_ID_author262, ptr @__UNIQUE_ID_description261, ptr @__UNIQUE_ID_file259, ptr @__UNIQUE_ID_license260, ptr @__exitcall_rsnd_driver_exit, ptr @__initcall__kmod_snd_soc_rcar__258_2012_rsnd_driver_init6, ptr @rsnd_driver_exit, ptr @rsnd_get_adinr_bit._entry, ptr @rsnd_get_adinr_bit._entry_ptr, ptr @rsnd_hw_update._entry, ptr @rsnd_hw_update._entry.129, ptr @rsnd_hw_update._entry_ptr, ptr @rsnd_hw_update._entry_ptr.130, ptr @rsnd_kctrl_accept_runtime._entry, ptr @rsnd_kctrl_accept_runtime._entry_ptr, ptr @rsnd_mod_make_sure._entry, ptr @rsnd_mod_make_sure._entry_ptr, ptr @rsnd_node_count._entry, ptr @rsnd_node_count._entry_ptr, ptr @rsnd_pcm_new._entry, ptr @rsnd_pcm_new._entry.104, ptr @rsnd_pcm_new._entry_ptr, ptr @rsnd_pcm_new._entry_ptr.105, ptr @rsnd_pointer._entry, ptr @rsnd_pointer._entry_ptr, ptr @rsnd_probe._entry, ptr @rsnd_probe._entry.51, ptr @rsnd_probe._entry.55, ptr @rsnd_probe._entry.59, ptr @rsnd_probe._entry_ptr, ptr @rsnd_probe._entry_ptr.54, ptr @rsnd_probe._entry_ptr.57, ptr @rsnd_probe._entry_ptr.60, ptr @rsnd_rdai_continuance_probe._entry, ptr @rsnd_rdai_continuance_probe._entry.116, ptr @rsnd_rdai_continuance_probe._entry.118, ptr @rsnd_rdai_continuance_probe._entry.121, ptr @rsnd_rdai_continuance_probe._entry_ptr, ptr @rsnd_rdai_continuance_probe._entry_ptr.117, ptr @rsnd_rdai_continuance_probe._entry_ptr.119, ptr @rsnd_rdai_continuance_probe._entry_ptr.122, ptr @rsnd_remove._entry, ptr @rsnd_remove._entry.135, ptr @rsnd_remove._entry_ptr, ptr @rsnd_remove._entry_ptr.136, ptr @rsnd_runtime_channel_after_ctu_with_params._entry, ptr @rsnd_runtime_channel_after_ctu_with_params._entry_ptr, ptr @rsnd_soc_dai_prepare._entry, ptr @rsnd_soc_dai_prepare._entry_ptr, ptr @rsnd_soc_dai_shutdown._entry, ptr @rsnd_soc_dai_shutdown._entry_ptr, ptr @rsnd_soc_dai_trigger._entry, ptr @rsnd_soc_dai_trigger._entry.88, ptr @rsnd_soc_dai_trigger._entry.91, ptr @rsnd_soc_dai_trigger._entry.94, ptr @rsnd_soc_dai_trigger._entry.96, ptr @rsnd_soc_dai_trigger._entry.99, ptr @rsnd_soc_dai_trigger._entry_ptr, ptr @rsnd_soc_dai_trigger._entry_ptr.100, ptr @rsnd_soc_dai_trigger._entry_ptr.89, ptr @rsnd_soc_dai_trigger._entry_ptr.92, ptr @rsnd_soc_dai_trigger._entry_ptr.95, ptr @rsnd_soc_dai_trigger._entry_ptr.97, ptr @rsnd_soc_set_dai_tdm_slot._entry, ptr @rsnd_soc_set_dai_tdm_slot._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rsnd_mod_name.names, ptr @rsnd_mod_name.num, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @rsnd_get_dalign.dalign_values, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @volume_ramp_rate, ptr @rsnd_driver, ptr @.str.46, ptr @.str.47, ptr @rsnd_of_match, ptr @rsnd_pm_ops, ptr @rsnd_probe.__key, ptr @.str.48, ptr @rsnd_soc_component, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @rsnd_mod_sequence, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.62, ptr @rsnd_soc_dai_ops, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @rsnd_soc_dai_formats, ptr @.str.80, ptr @.str.81, ptr @rsnd_soc_hw_channels_list, ptr @rsnd_pcm_hardware, ptr @rsnd_soc_hw_rate_list, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.98, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.120, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134], section "llvm.metadata"
@0 = internal global [153 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_mod_make_sure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_mod_name.names to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_mod_name.num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_runtime_channel_after_ctu_with_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_get_adinr_bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_get_dalign.dalign_values to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_node_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_kctrl_accept_runtime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @volume_ramp_rate to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_soc_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_mod_sequence to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_probe._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_probe._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_soc_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_soc_dai_formats to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_soc_set_dai_tdm_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_soc_hw_channels_list to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_pcm_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_soc_hw_rate_list to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_soc_dai_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_soc_dai_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_soc_dai_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_soc_dai_trigger._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_soc_dai_trigger._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_soc_dai_trigger._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_soc_dai_trigger._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_soc_dai_trigger._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_pcm_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_pcm_new._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_rdai_continuance_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_rdai_continuance_probe._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_rdai_continuance_probe._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_rdai_continuance_probe._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_hw_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_hw_update._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_pointer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_remove._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsnd_mod_make_sure(ptr noundef %mod, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %type1 = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 1
  %0 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %type)
  %cmp.not = icmp eq i32 %1, %type
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  %priv2 = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 3
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %6 = load i32, ptr @rsnd_mod_name.num, align 4
  %arrayidx.i = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %6
  %inc.i = add i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i)
  %cmp.i = icmp sgt i32 %inc.i, 4
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i
  store i32 %spec.store.select.i, ptr @rsnd_mod_name.num, align 4
  %ops.i = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 2
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %id_sub.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %8, i32 0, i32 18
  %9 = ptrtoint ptr %id_sub.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %id_sub.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %id.i24.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %8, i32 0, i32 17
  %13 = ptrtoint ptr %id.i24.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %id.i24.i, align 4
  %tobool.not.i25.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.then
  br i1 %tobool.not.i25.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i = tail call i32 %14(ptr noundef %mod) #17
  br label %rsnd_mod_id.exit.i

if.end.i.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mod, align 4
  br label %rsnd_mod_id.exit.i

rsnd_mod_id.exit.i:                               ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %16, %if.end.i.i ]
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %id_sub.i.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %18, i32 0, i32 18
  %19 = ptrtoint ptr %id_sub.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %id_sub.i.i, align 4
  %tobool.not.i19.i = icmp eq ptr %20, null
  br i1 %tobool.not.i19.i, label %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge, label %if.then.i21.i

rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge: ; preds = %rsnd_mod_id.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_mod_id_sub.exit.i

if.then.i21.i:                                    ; preds = %rsnd_mod_id.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i20.i = tail call i32 %20(ptr noundef %mod) #17
  br label %rsnd_mod_id_sub.exit.i

rsnd_mod_id_sub.exit.i:                           ; preds = %if.then.i21.i, %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge
  %retval.0.i22.i = phi i32 [ %call.i20.i, %if.then.i21.i ], [ 0, %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge ]
  %call5.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef %12, i32 noundef %retval.0.i.i, i32 noundef %retval.0.i22.i) #17
  br label %rsnd_mod_name.exit

if.else.i:                                        ; preds = %if.then
  br i1 %tobool.not.i25.i, label %if.end.i28.i, label %if.then.i27.i

if.then.i27.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i26.i = tail call i32 %14(ptr noundef %mod) #17
  br label %rsnd_mod_id.exit30.i

if.end.i28.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %21 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mod, align 4
  br label %rsnd_mod_id.exit30.i

rsnd_mod_id.exit30.i:                             ; preds = %if.end.i28.i, %if.then.i27.i
  %retval.0.i29.i = phi i32 [ %call.i26.i, %if.then.i27.i ], [ %22, %if.end.i28.i ]
  %call9.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef %12, i32 noundef %retval.0.i29.i) #17
  br label %rsnd_mod_name.exit

rsnd_mod_name.exit:                               ; preds = %rsnd_mod_id.exit30.i, %rsnd_mod_id_sub.exit.i
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str, ptr noundef %arrayidx.i) #20
  br label %if.end

if.end:                                           ; preds = %rsnd_mod_name.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rsnd_mod_name(ptr noundef %mod) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @rsnd_mod_name.num, align 4
  %arrayidx = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %0
  %inc = add i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc)
  %cmp = icmp sgt i32 %inc, 4
  %spec.store.select = select i1 %cmp, i32 0, i32 %inc
  store i32 %spec.store.select, ptr @rsnd_mod_name.num, align 4
  %ops = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 2
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %id_sub = getelementptr inbounds %struct.rsnd_mod_ops, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %id_sub to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %id_sub, align 4
  %tobool.not = icmp eq ptr %4, null
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %id.i24 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %2, i32 0, i32 17
  %7 = ptrtoint ptr %id.i24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %id.i24, align 4
  %tobool.not.i25 = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %entry
  br i1 %tobool.not.i25, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = tail call i32 %8(ptr noundef %mod) #17
  br label %rsnd_mod_id.exit

if.end.i:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mod, align 4
  br label %rsnd_mod_id.exit

rsnd_mod_id.exit:                                 ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %10, %if.end.i ]
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %id_sub.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %id_sub.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %id_sub.i, align 4
  %tobool.not.i19 = icmp eq ptr %14, null
  br i1 %tobool.not.i19, label %rsnd_mod_id.exit.rsnd_mod_id_sub.exit_crit_edge, label %if.then.i21

rsnd_mod_id.exit.rsnd_mod_id_sub.exit_crit_edge:  ; preds = %rsnd_mod_id.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_mod_id_sub.exit

if.then.i21:                                      ; preds = %rsnd_mod_id.exit
  call void @__sanitizer_cov_trace_pc() #19
  %call.i20 = tail call i32 %14(ptr noundef %mod) #17
  br label %rsnd_mod_id_sub.exit

rsnd_mod_id_sub.exit:                             ; preds = %if.then.i21, %rsnd_mod_id.exit.rsnd_mod_id_sub.exit_crit_edge
  %retval.0.i22 = phi i32 [ %call.i20, %if.then.i21 ], [ 0, %rsnd_mod_id.exit.rsnd_mod_id_sub.exit_crit_edge ]
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef %6, i32 noundef %retval.0.i, i32 noundef %retval.0.i22)
  br label %if.end10

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i25, label %if.end.i28, label %if.then.i27

if.then.i27:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %call.i26 = tail call i32 %8(ptr noundef %mod) #17
  br label %rsnd_mod_id.exit30

if.end.i28:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mod, align 4
  br label %rsnd_mod_id.exit30

rsnd_mod_id.exit30:                               ; preds = %if.end.i28, %if.then.i27
  %retval.0.i29 = phi i32 [ %call.i26, %if.then.i27 ], [ %16, %if.end.i28 ]
  %call9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef %6, i32 noundef %retval.0.i29)
  br label %if.end10

if.end10:                                         ; preds = %rsnd_mod_id.exit30, %rsnd_mod_id_sub.exit
  ret ptr %arrayidx
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rsnd_mod_dma_req(ptr noundef %io, ptr noundef %mod) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mod, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false2

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %dma_req = getelementptr inbounds %struct.rsnd_mod_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dma_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_req, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %lor.lhs.false2.return_crit_edge, label %if.end

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call ptr %3(ptr noundef %io, ptr noundef nonnull %mod) #17
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ null, %lor.lhs.false2.return_crit_edge ], [ null, %lor.lhs.false.return_crit_edge ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_mod_id(ptr noundef %mod) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %id = getelementptr inbounds %struct.rsnd_mod_ops, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 %3(ptr noundef %mod) #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %4 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mod, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_mod_id_sub(ptr noundef %mod) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %id_sub = getelementptr inbounds %struct.rsnd_mod_ops, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %id_sub to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id_sub, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 %3(ptr noundef %mod) #17
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @rsnd_mod_get_status(ptr noundef readnone %mod, ptr nocapture noundef readnone %io, i32 noundef %type) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 5
  ret ptr %status
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rsnd_mod_id_raw(ptr nocapture noundef readonly %mod) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mod, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_mod_init(ptr noundef %priv, ptr nocapture noundef writeonly %mod, ptr noundef %ops, ptr noundef %clk, i32 noundef %type, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %mod to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %id, ptr %mod, align 4
  %ops2 = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 2
  %1 = ptrtoint ptr %ops2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ops, ptr %ops2, align 4
  %type3 = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 1
  %2 = ptrtoint ptr %type3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %type, ptr %type3, align 4
  %clk4 = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 4
  %3 = ptrtoint ptr %clk4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %clk, ptr %clk4, align 4
  %priv5 = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 3
  %4 = ptrtoint ptr %priv5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %priv, ptr %priv5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsnd_mod_quit(ptr nocapture noundef %mod) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 4
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %1) #17
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %clk, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsnd_mod_interrupt(ptr noundef %mod, ptr nocapture noundef readonly %callback) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %rdai.i = getelementptr inbounds %struct.rsnd_priv, ptr %1, i32 0, i32 21
  %rdai_nr = getelementptr inbounds %struct.rsnd_priv, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %rdai_nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rdai_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not26 = icmp sgt i32 %3, 0
  br i1 %cmp.not26, label %rsnd_rdai_get.exit.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

rsnd_rdai_get.exit.lr.ph:                         ; preds = %entry
  %type = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 1
  br label %rsnd_rdai_get.exit

rsnd_rdai_get.exit:                               ; preds = %if.end9.rsnd_rdai_get.exit_crit_edge, %rsnd_rdai_get.exit.lr.ph
  %i.027 = phi i32 [ 0, %rsnd_rdai_get.exit.lr.ph ], [ %inc, %if.end9.rsnd_rdai_get.exit_crit_edge ]
  %4 = ptrtoint ptr %rdai.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdai.i, align 4
  %add.ptr.i = getelementptr %struct.rsnd_dai, ptr %5, i32 %i.027
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %rsnd_rdai_get.exit.for.end_crit_edge, label %for.body

rsnd_rdai_get.exit.for.end_crit_edge:             ; preds = %rsnd_rdai_get.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %rsnd_rdai_get.exit
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %arrayidx = getelementptr %struct.rsnd_dai, ptr %5, i32 %i.027, i32 1, i32 2, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp3 = icmp eq ptr %9, %mod
  br i1 %cmp3, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %playback = getelementptr %struct.rsnd_dai, ptr %5, i32 %i.027, i32 1
  tail call void %callback(ptr noundef %mod, ptr noundef %playback) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  %arrayidx6 = getelementptr %struct.rsnd_dai, ptr %5, i32 %i.027, i32 2, i32 2, i32 %11
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6, align 4
  %cmp7 = icmp eq ptr %13, %mod
  br i1 %cmp7, label %if.then8, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %capture = getelementptr %struct.rsnd_dai, ptr %5, i32 %i.027, i32 2
  tail call void %callback(ptr noundef %mod, ptr noundef %capture) #17
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %inc = add nuw nsw i32 %i.027, 1
  %14 = ptrtoint ptr %rdai_nr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rdai_nr, align 4
  %cmp.not = icmp slt i32 %inc, %15
  br i1 %cmp.not, label %if.end9.rsnd_rdai_get.exit_crit_edge, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.end9.rsnd_rdai_get.exit_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_rdai_get.exit

for.end:                                          ; preds = %if.end9.for.end_crit_edge, %rsnd_rdai_get.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @rsnd_rdai_get(ptr nocapture noundef readonly %priv, i32 noundef %id) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp = icmp slt i32 %id, 0
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %rdai_nr = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 22
  %0 = ptrtoint ptr %rdai_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rdai_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %id)
  %cmp1.not = icmp sgt i32 %1, %id
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  %rdai = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdai, align 4
  %add.ptr = getelementptr %struct.rsnd_dai, ptr %3, i32 %id
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end ], [ null, %lor.lhs.false.return_crit_edge ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rsnd_io_is_working(ptr nocapture noundef readonly %io) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %substream = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 1
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.then:                                          ; preds = %entry
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime.i, align 4
  %status.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 37
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %status.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %lor.end.fold.split.i [
    i32 3, label %if.then.return_crit_edge
    i32 5, label %land.rhs.i
  ]

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

land.rhs.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp5.i = icmp eq i32 %10, 0
  %phi.cast.i = zext i1 %cmp5.i to i32
  br label %return

lor.end.fold.split.i:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

return:                                           ; preds = %lor.end.fold.split.i, %land.rhs.i, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %if.then.return_crit_edge ], [ %phi.cast.i, %land.rhs.i ], [ 0, %lor.end.fold.split.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rsnd_runtime_channel_original_with_params(ptr nocapture noundef readonly %io, ptr noundef readonly %params) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %substream = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 1
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %cond.end.thread, label %cond.end

cond.end:                                         ; preds = %entry
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime2, align 4
  %tobool3.not = icmp eq ptr %params, null
  br i1 %tobool3.not, label %if.else, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

cond.end.thread:                                  ; preds = %entry
  %tobool3.not11 = icmp eq ptr %params, null
  br i1 %tobool3.not11, label %cond.end.thread.cleanup_crit_edge, label %cond.end.thread.if.then_crit_edge

cond.end.thread.if.then_crit_edge:                ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

cond.end.thread.cleanup_crit_edge:                ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %cond.end.thread.if.then_crit_edge, %cond.end.if.then_crit_edge
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  br label %cleanup

if.else:                                          ; preds = %cond.end
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.else.cleanup_crit_edge, label %if.then5

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channels, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.else.cleanup_crit_edge, %if.then, %cond.end.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then ], [ %7, %if.then5 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %cond.end.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_runtime_channel_after_ctu_with_params(ptr nocapture noundef readonly %io, ptr noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %substream.i = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 1
  %0 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %cond.end.thread.i, label %cond.end.i

cond.end.i:                                       ; preds = %entry
  %runtime2.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime2.i, align 4
  %tobool3.not.i = icmp eq ptr %params, null
  br i1 %tobool3.not.i, label %if.else.i, label %cond.end.i.if.then.i_crit_edge

cond.end.i.if.then.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

cond.end.thread.i:                                ; preds = %entry
  %tobool3.not11.i = icmp eq ptr %params, null
  br i1 %tobool3.not11.i, label %cond.end.thread.i.rsnd_runtime_channel_original_with_params.exit_crit_edge, label %cond.end.thread.i.if.then.i_crit_edge

cond.end.thread.i.if.then.i_crit_edge:            ; preds = %cond.end.thread.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

cond.end.thread.i.rsnd_runtime_channel_original_with_params.exit_crit_edge: ; preds = %cond.end.thread.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_runtime_channel_original_with_params.exit

if.then.i:                                        ; preds = %cond.end.thread.i.if.then.i_crit_edge, %cond.end.i.if.then.i_crit_edge
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i.i, align 4
  br label %rsnd_runtime_channel_original_with_params.exit

if.else.i:                                        ; preds = %cond.end.i
  %tobool4.not.i = icmp eq ptr %3, null
  br i1 %tobool4.not.i, label %if.else.i.rsnd_runtime_channel_original_with_params.exit_crit_edge, label %if.then5.i

if.else.i.rsnd_runtime_channel_original_with_params.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_runtime_channel_original_with_params.exit

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %channels.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channels.i, align 8
  br label %rsnd_runtime_channel_original_with_params.exit

rsnd_runtime_channel_original_with_params.exit:   ; preds = %if.then5.i, %if.else.i.rsnd_runtime_channel_original_with_params.exit_crit_edge, %if.then.i, %cond.end.thread.i.rsnd_runtime_channel_original_with_params.exit_crit_edge
  %retval.0.i = phi i32 [ %5, %if.then.i ], [ %7, %if.then5.i ], [ 0, %if.else.i.rsnd_runtime_channel_original_with_params.exit_crit_edge ], [ 0, %cond.end.thread.i.rsnd_runtime_channel_original_with_params.exit_crit_edge ]
  %arrayidx = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %rsnd_runtime_channel_original_with_params.exit.if.end9_crit_edge, label %if.then

rsnd_runtime_channel_original_with_params.exit.if.end9_crit_edge: ; preds = %rsnd_runtime_channel_original_with_params.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.then:                                          ; preds = %rsnd_runtime_channel_original_with_params.exit
  %converted_chan1 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 7
  %10 = ptrtoint ptr %converted_chan1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %converted_chan1, align 4
  %flags.i = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 9
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool3.not = icmp eq i32 %14, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %rdai = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %15 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rdai, align 4
  %priv = getelementptr inbounds %struct.rsnd_dai, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.7) #20
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.end.cleanup10_crit_edge

if.end.cleanup10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup10

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %rsnd_runtime_channel_original_with_params.exit.if.end9_crit_edge
  br label %cleanup10

cleanup10:                                        ; preds = %if.end9, %if.end.cleanup10_crit_edge
  %retval.1 = phi i32 [ %retval.0.i, %if.end9 ], [ %11, %if.end.cleanup10_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rsnd_runtime_is_tdm_split(ptr nocapture noundef readonly %io) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = lshr i32 %1, 2
  %and.lobit = and i32 %and, 1
  ret i32 %and.lobit
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_channel_normalization(i32 noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %chan)
  %0 = icmp ugt i32 %chan, 8
  br i1 %0, label %do.end, label %if.end22, !prof !308

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 298, i32 noundef 9, ptr noundef null) #17
  br label %return

if.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %chan)
  %cmp23 = icmp eq i32 %chan, 6
  %spec.store.select = select i1 %cmp23, i32 8, i32 %chan
  br label %return

return:                                           ; preds = %if.end22, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %spec.store.select, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_runtime_channel_for_ssi_with_params(ptr noundef readonly %io, ptr noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rdai1 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %0 = ptrtoint ptr %rdai1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdai1, align 4
  %playback = getelementptr inbounds %struct.rsnd_dai, ptr %1, i32 0, i32 1
  %cmp = icmp eq ptr %playback, %io
  %substream.i.i = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 1
  %2 = ptrtoint ptr %substream.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br i1 %tobool.not.i.i, label %cond.end.thread.i.i, label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true
  %runtime2.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %runtime2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime2.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %params, null
  br i1 %tobool3.not.i.i, label %if.else.i.i, label %cond.end.i.i.if.then.i.i_crit_edge

cond.end.i.i.if.then.i.i_crit_edge:               ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

cond.end.thread.i.i:                              ; preds = %cond.true
  %tobool3.not11.i.i = icmp eq ptr %params, null
  br i1 %tobool3.not11.i.i, label %cond.end.thread.i.i.rsnd_runtime_channel_original_with_params.exit.i_crit_edge, label %cond.end.thread.i.i.if.then.i.i_crit_edge

cond.end.thread.i.i.if.then.i.i_crit_edge:        ; preds = %cond.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i

cond.end.thread.i.i.rsnd_runtime_channel_original_with_params.exit.i_crit_edge: ; preds = %cond.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_runtime_channel_original_with_params.exit.i

if.then.i.i:                                      ; preds = %cond.end.thread.i.i.if.then.i.i_crit_edge, %cond.end.i.i.if.then.i.i_crit_edge
  %arrayidx.i.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i.i.i, align 4
  br label %rsnd_runtime_channel_original_with_params.exit.i

if.else.i.i:                                      ; preds = %cond.end.i.i
  %tobool4.not.i.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i.i, label %if.else.i.i.rsnd_runtime_channel_original_with_params.exit.i_crit_edge, label %if.then5.i.i

if.else.i.i.rsnd_runtime_channel_original_with_params.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_runtime_channel_original_with_params.exit.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %channels.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 15
  %8 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channels.i.i, align 8
  br label %rsnd_runtime_channel_original_with_params.exit.i

rsnd_runtime_channel_original_with_params.exit.i: ; preds = %if.then5.i.i, %if.else.i.i.rsnd_runtime_channel_original_with_params.exit.i_crit_edge, %if.then.i.i, %cond.end.thread.i.i.rsnd_runtime_channel_original_with_params.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %7, %if.then.i.i ], [ %9, %if.then5.i.i ], [ 0, %if.else.i.i.rsnd_runtime_channel_original_with_params.exit.i_crit_edge ], [ 0, %cond.end.thread.i.i.rsnd_runtime_channel_original_with_params.exit.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %rsnd_runtime_channel_original_with_params.exit.i.if.end9.i_crit_edge, label %if.then.i

rsnd_runtime_channel_original_with_params.exit.i.if.end9.i_crit_edge: ; preds = %rsnd_runtime_channel_original_with_params.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9.i

if.then.i:                                        ; preds = %rsnd_runtime_channel_original_with_params.exit.i
  %converted_chan1.i = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 7
  %12 = ptrtoint ptr %converted_chan1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %converted_chan1.i, align 4
  %flags.i.i = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 9
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i.i, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool3.not.i = icmp eq i32 %16, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then4.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %priv.i = getelementptr inbounds %struct.rsnd_dai, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %dev5.i = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i, ptr noundef nonnull @.str.7) #20
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not.i = icmp eq i32 %13, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.end.i.cond.end_crit_edge

if.end.i.cond.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i.if.end9.i_crit_edge, %rsnd_runtime_channel_original_with_params.exit.i.if.end9.i_crit_edge
  br label %cond.end

cond.false:                                       ; preds = %entry
  br i1 %tobool.not.i.i, label %cond.end.thread.i, label %cond.end.i

cond.end.i:                                       ; preds = %cond.false
  %runtime2.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %21 = ptrtoint ptr %runtime2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %runtime2.i, align 4
  %tobool3.not.i15 = icmp eq ptr %params, null
  br i1 %tobool3.not.i15, label %if.else.i, label %cond.end.i.if.then.i16_crit_edge

cond.end.i.if.then.i16_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i16

cond.end.thread.i:                                ; preds = %cond.false
  %tobool3.not11.i = icmp eq ptr %params, null
  br i1 %tobool3.not11.i, label %cond.end.thread.i.cond.end_crit_edge, label %cond.end.thread.i.if.then.i16_crit_edge

cond.end.thread.i.if.then.i16_crit_edge:          ; preds = %cond.end.thread.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i16

cond.end.thread.i.cond.end_crit_edge:             ; preds = %cond.end.thread.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

if.then.i16:                                      ; preds = %cond.end.thread.i.if.then.i16_crit_edge, %cond.end.i.if.then.i16_crit_edge
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i.i, align 4
  br label %cond.end

if.else.i:                                        ; preds = %cond.end.i
  %tobool4.not.i = icmp eq ptr %22, null
  br i1 %tobool4.not.i, label %if.else.i.cond.end_crit_edge, label %if.then5.i

if.else.i.cond.end_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %channels.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %22, i32 0, i32 15
  %25 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %channels.i, align 8
  br label %cond.end

cond.end:                                         ; preds = %if.then5.i, %if.else.i.cond.end_crit_edge, %if.then.i16, %cond.end.thread.i.cond.end_crit_edge, %if.end9.i, %if.end.i.cond.end_crit_edge
  %cond = phi i32 [ %retval.0.i.i, %if.end9.i ], [ %13, %if.end.i.cond.end_crit_edge ], [ %24, %if.then.i16 ], [ %26, %if.then5.i ], [ 0, %if.else.i.cond.end_crit_edge ], [ 0, %cond.end.thread.i.cond.end_crit_edge ]
  %27 = ptrtoint ptr %rdai1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rdai1, align 4
  %ssi_lane2.i.i = getelementptr inbounds %struct.rsnd_dai, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %ssi_lane2.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ssi_lane2.i.i, align 4
  %playback.i = getelementptr inbounds %struct.rsnd_dai, ptr %28, i32 0, i32 1
  %cmp.i = icmp eq ptr %playback.i, %io
  %substream.i.i.i = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 1
  %31 = ptrtoint ptr %substream.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %substream.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %32, null
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %cond.end
  br i1 %tobool.not.i.i.i, label %cond.true.i.rsnd_runtime_channel_original_with_params.exit.i.i_crit_edge, label %cond.end.i.i.i

cond.true.i.rsnd_runtime_channel_original_with_params.exit.i.i_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_runtime_channel_original_with_params.exit.i.i

cond.end.i.i.i:                                   ; preds = %cond.true.i
  %runtime2.i.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %runtime2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %runtime2.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %34, null
  br i1 %tobool4.not.i.i.i, label %cond.end.i.i.i.rsnd_runtime_channel_original_with_params.exit.i.i_crit_edge, label %if.then5.i.i.i

cond.end.i.i.i.rsnd_runtime_channel_original_with_params.exit.i.i_crit_edge: ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_runtime_channel_original_with_params.exit.i.i

if.then5.i.i.i:                                   ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %channels.i.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %34, i32 0, i32 15
  %35 = ptrtoint ptr %channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %channels.i.i.i, align 8
  br label %rsnd_runtime_channel_original_with_params.exit.i.i

rsnd_runtime_channel_original_with_params.exit.i.i: ; preds = %if.then5.i.i.i, %cond.end.i.i.i.rsnd_runtime_channel_original_with_params.exit.i.i_crit_edge, %cond.true.i.rsnd_runtime_channel_original_with_params.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %36, %if.then5.i.i.i ], [ 0, %cond.end.i.i.i.rsnd_runtime_channel_original_with_params.exit.i.i_crit_edge ], [ 0, %cond.true.i.rsnd_runtime_channel_original_with_params.exit.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 4
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i17 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i17, label %rsnd_runtime_channel_original_with_params.exit.i.i.if.end9.i.i_crit_edge, label %if.then.i.i19

rsnd_runtime_channel_original_with_params.exit.i.i.if.end9.i.i_crit_edge: ; preds = %rsnd_runtime_channel_original_with_params.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9.i.i

if.then.i.i19:                                    ; preds = %rsnd_runtime_channel_original_with_params.exit.i.i
  %converted_chan1.i.i = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 7
  %39 = ptrtoint ptr %converted_chan1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %converted_chan1.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 9
  %41 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i.i.i, align 4
  %43 = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool3.not.i.i18 = icmp eq i32 %43, 0
  br i1 %tobool3.not.i.i18, label %if.then.i.i19.if.end.i.i_crit_edge, label %if.then4.i.i

if.then.i.i19.if.end.i.i_crit_edge:               ; preds = %if.then.i.i19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i19
  call void @__sanitizer_cov_trace_pc() #19
  %priv.i.i = getelementptr inbounds %struct.rsnd_dai, ptr %28, i32 0, i32 3
  %44 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %dev5.i.i = getelementptr inbounds %struct.platform_device, ptr %47, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i.i, ptr noundef nonnull @.str.7) #20
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then4.i.i, %if.then.i.i19.if.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool6.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool6.not.i.i, label %if.end.i.i.if.end9.i.i_crit_edge, label %if.end.i.i.rsnd_runtime_is_multi_ssi.exit_crit_edge

if.end.i.i.rsnd_runtime_is_multi_ssi.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_runtime_is_multi_ssi.exit

if.end.i.i.if.end9.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i.if.end9.i.i_crit_edge, %rsnd_runtime_channel_original_with_params.exit.i.i.if.end9.i.i_crit_edge
  br label %rsnd_runtime_is_multi_ssi.exit

cond.false.i:                                     ; preds = %cond.end
  br i1 %tobool.not.i.i.i, label %cond.false.i.if.end_crit_edge, label %cond.end.i.i22

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

cond.end.i.i22:                                   ; preds = %cond.false.i
  %runtime2.i.i20 = getelementptr inbounds %struct.snd_pcm_substream, ptr %32, i32 0, i32 11
  %48 = ptrtoint ptr %runtime2.i.i20 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %runtime2.i.i20, align 4
  %tobool4.not.i.i21 = icmp eq ptr %49, null
  br i1 %tobool4.not.i.i21, label %cond.end.i.i22.if.end_crit_edge, label %if.then5.i.i24

cond.end.i.i22.if.end_crit_edge:                  ; preds = %cond.end.i.i22
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then5.i.i24:                                   ; preds = %cond.end.i.i22
  call void @__sanitizer_cov_trace_pc() #19
  %channels.i.i23 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %49, i32 0, i32 15
  %50 = ptrtoint ptr %channels.i.i23 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %channels.i.i23, align 8
  br label %rsnd_runtime_is_multi_ssi.exit

rsnd_runtime_is_multi_ssi.exit:                   ; preds = %if.then5.i.i24, %if.end9.i.i, %if.end.i.i.rsnd_runtime_is_multi_ssi.exit_crit_edge
  %cond.i = phi i32 [ %retval.0.i.i.i, %if.end9.i.i ], [ %40, %if.end.i.i.rsnd_runtime_is_multi_ssi.exit_crit_edge ], [ %51, %if.then5.i.i24 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cond.i)
  %cmp5.i = icmp slt i32 %cond.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp6.i = icmp slt i32 %30, 2
  %narrow.i = select i1 %cmp5.i, i1 true, i1 %cmp6.i
  br i1 %narrow.i, label %rsnd_runtime_is_multi_ssi.exit.if.end_crit_edge, label %if.then

rsnd_runtime_is_multi_ssi.exit.if.end_crit_edge:  ; preds = %rsnd_runtime_is_multi_ssi.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %rsnd_runtime_is_multi_ssi.exit
  call void @__sanitizer_cov_trace_pc() #19
  %ssi_lane2.i = getelementptr inbounds %struct.rsnd_dai, ptr %1, i32 0, i32 6
  %52 = ptrtoint ptr %ssi_lane2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ssi_lane2.i, align 4
  %div = sdiv i32 %cond, %53
  br label %if.end

if.end:                                           ; preds = %if.then, %rsnd_runtime_is_multi_ssi.exit.if.end_crit_edge, %cond.end.i.i22.if.end_crit_edge, %cond.false.i.if.end_crit_edge
  %chan.0 = phi i32 [ %div, %if.then ], [ %cond, %rsnd_runtime_is_multi_ssi.exit.if.end_crit_edge ], [ %cond, %cond.end.i.i22.if.end_crit_edge ], [ %cond, %cond.false.i.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %chan.0)
  %54 = icmp ugt i32 %chan.0, 8
  br i1 %54, label %do.end.i, label %if.end22.i, !prof !308

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 298, i32 noundef 9, ptr noundef null) #17
  br label %rsnd_channel_normalization.exit

if.end22.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %chan.0)
  %cmp23.i = icmp eq i32 %chan.0, 6
  %spec.store.select.i = select i1 %cmp23.i, i32 8, i32 %chan.0
  br label %rsnd_channel_normalization.exit

rsnd_channel_normalization.exit:                  ; preds = %if.end22.i, %do.end.i
  %retval.0.i28 = phi i32 [ 0, %do.end.i ], [ %spec.store.select.i, %if.end22.i ]
  ret i32 %retval.0.i28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_runtime_is_multi_ssi(ptr noundef readonly %io) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rdai1 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %0 = ptrtoint ptr %rdai1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdai1, align 4
  %ssi_lane2.i = getelementptr inbounds %struct.rsnd_dai, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ssi_lane2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ssi_lane2.i, align 4
  %playback = getelementptr inbounds %struct.rsnd_dai, ptr %1, i32 0, i32 1
  %cmp = icmp eq ptr %playback, %io
  %substream.i.i = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 1
  %4 = ptrtoint ptr %substream.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %substream.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br i1 %tobool.not.i.i, label %cond.true.rsnd_runtime_channel_original_with_params.exit.i_crit_edge, label %cond.end.i.i

cond.true.rsnd_runtime_channel_original_with_params.exit.i_crit_edge: ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_runtime_channel_original_with_params.exit.i

cond.end.i.i:                                     ; preds = %cond.true
  %runtime2.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %runtime2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime2.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i.i, label %cond.end.i.i.rsnd_runtime_channel_original_with_params.exit.i_crit_edge, label %if.then5.i.i

cond.end.i.i.rsnd_runtime_channel_original_with_params.exit.i_crit_edge: ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_runtime_channel_original_with_params.exit.i

if.then5.i.i:                                     ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %channels.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channels.i.i, align 8
  br label %rsnd_runtime_channel_original_with_params.exit.i

rsnd_runtime_channel_original_with_params.exit.i: ; preds = %if.then5.i.i, %cond.end.i.i.rsnd_runtime_channel_original_with_params.exit.i_crit_edge, %cond.true.rsnd_runtime_channel_original_with_params.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %9, %if.then5.i.i ], [ 0, %cond.end.i.i.rsnd_runtime_channel_original_with_params.exit.i_crit_edge ], [ 0, %cond.true.rsnd_runtime_channel_original_with_params.exit.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %rsnd_runtime_channel_original_with_params.exit.i.if.end9.i_crit_edge, label %if.then.i

rsnd_runtime_channel_original_with_params.exit.i.if.end9.i_crit_edge: ; preds = %rsnd_runtime_channel_original_with_params.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9.i

if.then.i:                                        ; preds = %rsnd_runtime_channel_original_with_params.exit.i
  %converted_chan1.i = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 7
  %12 = ptrtoint ptr %converted_chan1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %converted_chan1.i, align 4
  %flags.i.i = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 9
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i.i, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool3.not.i = icmp eq i32 %16, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then4.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %priv.i = getelementptr inbounds %struct.rsnd_dai, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %dev5.i = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i, ptr noundef nonnull @.str.7) #20
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not.i = icmp eq i32 %13, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end9.i_crit_edge, label %if.end.i.cond.end_crit_edge

if.end.i.cond.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i.if.end9.i_crit_edge, %rsnd_runtime_channel_original_with_params.exit.i.if.end9.i_crit_edge
  br label %cond.end

cond.false:                                       ; preds = %entry
  br i1 %tobool.not.i.i, label %cond.false.cond.end.thread_crit_edge, label %cond.end.i

cond.false.cond.end.thread_crit_edge:             ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end.thread

cond.end.i:                                       ; preds = %cond.false
  %runtime2.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %5, i32 0, i32 11
  %21 = ptrtoint ptr %runtime2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %runtime2.i, align 4
  %tobool4.not.i = icmp eq ptr %22, null
  br i1 %tobool4.not.i, label %cond.end.i.cond.end.thread_crit_edge, label %if.then5.i

cond.end.i.cond.end.thread_crit_edge:             ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end.thread

if.then5.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %channels.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channels.i, align 8
  br label %cond.end

cond.end:                                         ; preds = %if.then5.i, %if.end9.i, %if.end.i.cond.end_crit_edge
  %cond = phi i32 [ %retval.0.i.i, %if.end9.i ], [ %13, %if.end.i.cond.end_crit_edge ], [ %24, %if.then5.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cond)
  %cmp5 = icmp sgt i32 %cond, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp6 = icmp sgt i32 %3, 1
  %narrow = select i1 %cmp5, i1 %cmp6, i1 false
  %spec.select = zext i1 %narrow to i32
  br label %cond.end.thread

cond.end.thread:                                  ; preds = %cond.end, %cond.end.i.cond.end.thread_crit_edge, %cond.false.cond.end.thread_crit_edge
  %25 = phi i32 [ 0, %cond.end.i.cond.end.thread_crit_edge ], [ 0, %cond.false.cond.end.thread_crit_edge ], [ %spec.select, %cond.end ]
  ret i32 %25
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rsnd_rdai_ssi_lane_ctrl(ptr nocapture noundef %rdai, i32 noundef %ssi_lane) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ssi_lane)
  %cmp = icmp sgt i32 %ssi_lane, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %ssi_lane1 = getelementptr inbounds %struct.rsnd_dai, ptr %rdai, i32 0, i32 6
  %0 = ptrtoint ptr %ssi_lane1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %ssi_lane, ptr %ssi_lane1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ssi_lane2 = getelementptr inbounds %struct.rsnd_dai, ptr %rdai, i32 0, i32 6
  %1 = ptrtoint ptr %ssi_lane2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ssi_lane2, align 4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_runtime_is_tdm(ptr noundef %io) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rsnd_runtime_channel_for_ssi_with_params(ptr noundef %io, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call)
  %cmp = icmp sgt i32 %call, 5
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_get_adinr_bit(ptr nocapture noundef readonly %mod, ptr nocapture noundef readonly %io) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %substream = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 1
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %runtime3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %runtime3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %5, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %cond, i32 0, i32 12
  %8 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %format, align 4
  %call = tail call i32 @snd_pcm_format_width(i32 noundef %9) #17
  %10 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %call, label %do.end [
    i32 8, label %cond.end.cleanup_crit_edge
    i32 16, label %sw.bb5
    i32 24, label %sw.bb6
  ]

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb5:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb6:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4, ptr noundef nonnull @.str.10) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb6, %sw.bb5, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %sw.bb6 ], [ 524288, %sw.bb5 ], [ 1048576, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_get_dalign(ptr noundef %mod, ptr noundef readonly %io) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 12
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %substream = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 1
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %runtime3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %runtime3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %5, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %rdai = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %6 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rdai, align 4
  %playback = getelementptr inbounds %struct.rsnd_dai, ptr %7, i32 0, i32 1
  %cmp = icmp eq ptr %playback, %io
  %arrayidx12 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 5
  %arrayidx5 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 6
  %arrayidx12.sink = select i1 %cmp, ptr %arrayidx5, ptr %arrayidx12
  %8 = ptrtoint ptr %arrayidx12.sink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx12.sink, align 4
  %tobool13.not = icmp eq ptr %9, null
  %.44 = select i1 %tobool13.not, ptr %1, ptr %9
  %cmp18 = icmp eq ptr %1, %mod
  br i1 %cmp18, label %if.then19, label %cond.end.if.end20_crit_edge

cond.end.if.end20_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

if.then19:                                        ; preds = %cond.end
  %ops.i = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 2
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %id_sub.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %id_sub.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %id_sub.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then19.if.end20_crit_edge, label %if.then.i

if.then19.if.end20_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = tail call i32 %13(ptr noundef %mod) #17
  br label %if.end20

if.end20:                                         ; preds = %if.then.i, %if.then19.if.end20_crit_edge, %cond.end.if.end20_crit_edge
  %id.0 = phi i32 [ 0, %cond.end.if.end20_crit_edge ], [ %call.i, %if.then.i ], [ 0, %if.then19.if.end20_crit_edge ]
  %arrayidx21 = getelementptr [8 x i32], ptr @rsnd_get_dalign.dalign_values, i32 0, i32 %id.0
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx21, align 4
  %cmp22 = icmp eq ptr %.44, %mod
  br i1 %cmp22, label %land.lhs.true, label %if.end20.if.end27_crit_edge

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end20
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %cond, i32 0, i32 12
  %16 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %format, align 4
  %call23 = tail call i32 @snd_pcm_format_width(i32 noundef %17) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call23)
  %cmp24 = icmp eq i32 %call23, 16
  br i1 %cmp24, label %if.then25, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %and = lshr i32 %15, 4
  %shr = and i32 %and, 252645135
  %and26 = shl i32 %15, 4
  %shl = and i32 %and26, -252645136
  %or = or i32 %shr, %shl
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %land.lhs.true.if.end27_crit_edge, %if.end20.if.end27_crit_edge
  %dalign.0 = phi i32 [ %or, %if.then25 ], [ %15, %land.lhs.true.if.end27_crit_edge ], [ %15, %if.end20.if.end27_crit_edge ]
  ret i32 %dalign.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_get_busif_shift(ptr noundef readonly %io, ptr noundef readnone %mod) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %substream = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 1
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %rdai = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %4 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdai, align 4
  %playback = getelementptr inbounds %struct.rsnd_dai, ptr %5, i32 0, i32 1
  %cmp = icmp eq ptr %playback, %io
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %cond, i32 0, i32 12
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format, align 4
  %call = tail call i32 @snd_pcm_format_width(i32 noundef %7) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call)
  %cmp4.not = icmp eq i32 %call, 24
  br i1 %cmp4.not, label %cond.end12, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cond.end12:                                       ; preds = %cond.end
  %8 = select i1 %cmp, i32 6, i32 5
  %arrayidx10 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 %8
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx10, align 4
  %tobool14.not = icmp eq ptr %10, null
  br i1 %tobool14.not, label %cond.end12.1, label %cond.end12.for.end_crit_edge

cond.end12.for.end_crit_edge:                     ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

cond.end12.1:                                     ; preds = %cond.end12
  %11 = select i1 %cmp, i32 5, i32 6
  %arrayidx10.1 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 %11
  %12 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx10.1, align 4
  %tobool14.not.1 = icmp eq ptr %13, null
  br i1 %tobool14.not.1, label %cond.end12.2, label %cond.end12.1.for.end_crit_edge

cond.end12.1.for.end_crit_edge:                   ; preds = %cond.end12.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

cond.end12.2:                                     ; preds = %cond.end12.1
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx10.2 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 12
  %14 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx10.2, align 4
  br label %for.end

for.end:                                          ; preds = %cond.end12.2, %cond.end12.1.for.end_crit_edge, %cond.end12.for.end_crit_edge
  %tmod.1 = phi ptr [ %10, %cond.end12.for.end_crit_edge ], [ %13, %cond.end12.1.for.end_crit_edge ], [ %15, %cond.end12.2 ]
  %cmp17.not = icmp eq ptr %tmod.1, %mod
  br i1 %cmp17.not, label %if.end19, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end19:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rdai, align 4
  %playback21 = getelementptr inbounds %struct.rsnd_dai, ptr %17, i32 0, i32 1
  %cmp22 = icmp eq ptr %playback21, %io
  %. = select i1 %cmp22, i32 524288, i32 1572864
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %for.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ %., %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rsnd_mod_next(ptr nocapture noundef %iterator, ptr nocapture noundef readonly %io, ptr noundef readonly %array, i32 noundef %array_size) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %array, null
  %spec.select = select i1 %tobool.not, i32 13, i32 %array_size
  %0 = ptrtoint ptr %iterator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iterator, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %spec.select)
  %cmp28 = icmp slt i32 %1, %spec.select
  br i1 %cmp28, label %entry.for.body_crit_edge, label %entry.cleanup15_crit_edge

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup15

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %2 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  br i1 %tobool.not, label %for.body.cond.end4_crit_edge, label %cond.true2

for.body.cond.end4_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end4

cond.true2:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx = getelementptr i32, ptr %array, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  br label %cond.end4

cond.end4:                                        ; preds = %cond.true2, %for.body.cond.end4_crit_edge
  %cond5 = phi i32 [ %4, %cond.true2 ], [ %2, %for.body.cond.end4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %cond5)
  %cmp6 = icmp ult i32 %cond5, 13
  br i1 %cmp6, label %cond.end11, label %cond.end4.for.inc_crit_edge

cond.end4.for.inc_crit_edge:                      ; preds = %cond.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

cond.end11:                                       ; preds = %cond.end4
  %arrayidx9 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 %cond5
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx9, align 4
  %tobool13.not = icmp eq ptr %6, null
  br i1 %tobool13.not, label %cond.end11.for.inc_crit_edge, label %cond.end11.cleanup15_crit_edge

cond.end11.cleanup15_crit_edge:                   ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup15

cond.end11.for.inc_crit_edge:                     ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.inc:                                          ; preds = %cond.end11.for.inc_crit_edge, %cond.end4.for.inc_crit_edge
  %inc = add i32 %2, 1
  %7 = ptrtoint ptr %iterator to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inc, ptr %iterator, align 4
  %exitcond.not = icmp eq i32 %inc, %spec.select
  br i1 %exitcond.not, label %for.inc.cleanup15_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.cleanup15_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup15

cleanup15:                                        ; preds = %for.inc.cleanup15_crit_edge, %cond.end11.cleanup15_crit_edge, %entry.cleanup15_crit_edge
  %retval.2 = phi ptr [ null, %entry.cleanup15_crit_edge ], [ null, %for.inc.cleanup15_crit_edge ], [ %6, %cond.end11.cleanup15_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_dai_connect(ptr noundef %mod, ptr noundef %io, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mod, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %1, %mod
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %priv9 = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 3
  %2 = ptrtoint ptr %priv9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv9, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mod, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rsnd_dai_connect.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rsnd_dai_connect, %if.then16)) #17
          to label %cleanup [label %if.then16], !srcloc !309

if.then16:                                        ; preds = %if.end8
  %dev10 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %7 = load i32, ptr @rsnd_mod_name.num, align 4
  %arrayidx.i = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %7
  %inc.i = add i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i)
  %cmp.i = icmp sgt i32 %inc.i, 4
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i
  store i32 %spec.store.select.i, ptr @rsnd_mod_name.num, align 4
  %ops.i = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 2
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %id_sub.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %id_sub.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %id_sub.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %id.i24.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %9, i32 0, i32 17
  %14 = ptrtoint ptr %id.i24.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %id.i24.i, align 4
  %tobool.not.i25.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.then16
  br i1 %tobool.not.i25.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i = tail call i32 %15(ptr noundef nonnull %mod) #17
  br label %rsnd_mod_id.exit.i

if.end.i.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mod, align 4
  br label %rsnd_mod_id.exit.i

rsnd_mod_id.exit.i:                               ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %17, %if.end.i.i ]
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %id_sub.i.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %19, i32 0, i32 18
  %20 = ptrtoint ptr %id_sub.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %id_sub.i.i, align 4
  %tobool.not.i19.i = icmp eq ptr %21, null
  br i1 %tobool.not.i19.i, label %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge, label %if.then.i21.i

rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge: ; preds = %rsnd_mod_id.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_mod_id_sub.exit.i

if.then.i21.i:                                    ; preds = %rsnd_mod_id.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i20.i = tail call i32 %21(ptr noundef nonnull %mod) #17
  br label %rsnd_mod_id_sub.exit.i

rsnd_mod_id_sub.exit.i:                           ; preds = %if.then.i21.i, %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge
  %retval.0.i22.i = phi i32 [ %call.i20.i, %if.then.i21.i ], [ 0, %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge ]
  %call5.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef %13, i32 noundef %retval.0.i.i, i32 noundef %retval.0.i22.i) #17
  br label %rsnd_mod_name.exit

if.else.i:                                        ; preds = %if.then16
  br i1 %tobool.not.i25.i, label %if.end.i28.i, label %if.then.i27.i

if.then.i27.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i26.i = tail call i32 %15(ptr noundef nonnull %mod) #17
  br label %rsnd_mod_id.exit30.i

if.end.i28.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mod, align 4
  br label %rsnd_mod_id.exit30.i

rsnd_mod_id.exit30.i:                             ; preds = %if.end.i28.i, %if.then.i27.i
  %retval.0.i29.i = phi i32 [ %call.i26.i, %if.then.i27.i ], [ %23, %if.end.i28.i ]
  %call9.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef %13, i32 noundef %retval.0.i29.i) #17
  br label %rsnd_mod_name.exit

rsnd_mod_name.exit:                               ; preds = %rsnd_mod_id.exit30.i, %rsnd_mod_id_sub.exit.i
  %rdai = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %24 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rdai, align 4
  %playback = getelementptr inbounds %struct.rsnd_dai, ptr %25, i32 0, i32 1
  %cmp18 = icmp eq ptr %playback, %io
  %cond = select i1 %cmp18, ptr @.str.15, ptr @.str.16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rsnd_dai_connect.__UNIQUE_ID_ddebug243, ptr noundef %dev10, ptr noundef nonnull @.str.14, ptr noundef %arrayidx.i, ptr noundef nonnull %cond) #17
  br label %cleanup

cleanup:                                          ; preds = %rsnd_mod_name.exit, %if.end8, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ 0, %rsnd_mod_name.exit ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rsnd_rdai_channels_ctrl(ptr nocapture noundef %rdai, i32 noundef %max_channels) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_channels)
  %cmp = icmp sgt i32 %max_channels, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %max_channels1 = getelementptr inbounds %struct.rsnd_dai, ptr %rdai, i32 0, i32 5
  %0 = ptrtoint ptr %max_channels1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %max_channels, ptr %max_channels1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %max_channels2 = getelementptr inbounds %struct.rsnd_dai, ptr %rdai, i32 0, i32 5
  %1 = ptrtoint ptr %max_channels2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_channels2, align 4
  ret i32 %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rsnd_rdai_width_ctrl(ptr nocapture noundef %rdai, i32 noundef %width) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %width)
  %cmp = icmp sgt i32 %width, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %chan_width = getelementptr inbounds %struct.rsnd_dai, ptr %rdai, i32 0, i32 7
  %0 = ptrtoint ptr %chan_width to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %width, ptr %chan_width, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %chan_width1 = getelementptr inbounds %struct.rsnd_dai, ptr %rdai, i32 0, i32 7
  %1 = ptrtoint ptr %chan_width1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %chan_width1, align 4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsnd_dai_period_elapsed(ptr nocapture noundef readonly %io) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %substream1 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 1
  %0 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream1, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %1) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsnd_parse_connect_common(ptr noundef %rdai, ptr noundef %name, ptr nocapture noundef readonly %mod_get, ptr noundef %node, ptr noundef readnone %playback, ptr noundef readnone %capture) local_unnamed_addr #0 align 64 {
entry:
  %node_name.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rsnd_dai, ptr %rdai, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %tobool.not = icmp eq ptr %node, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_get_next_child(ptr noundef nonnull %node, ptr noundef null) #17
  %cmp.not32 = icmp eq ptr %call, null
  br i1 %cmp.not32, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %playback6 = getelementptr inbounds %struct.rsnd_dai, ptr %rdai, i32 0, i32 1
  %capture11 = getelementptr inbounds %struct.rsnd_dai, ptr %rdai, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end14.for.body_crit_edge ]
  %np.033 = phi ptr [ %call, %for.body.lr.ph ], [ %call15, %if.end14.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %node_name.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %i.035)
  %cmp8.i = icmp slt i32 %i.035, 64
  %2 = call ptr @memset(ptr %node_name.i, i32 255, i32 16)
  br i1 %cmp8.i, label %for.body.lr.ph.i, label %for.body.rsnd_node_fixed_index.exit_crit_edge

for.body.rsnd_node_fixed_index.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_node_fixed_index.exit

for.body.lr.ph.i:                                 ; preds = %for.body
  %full_name.i.i = getelementptr inbounds %struct.device_node, ptr %np.033, i32 0, i32 2
  br label %of_node_full_name.exit.i

of_node_full_name.exit.i:                         ; preds = %for.inc.i.of_node_full_name.exit.i_crit_edge, %for.body.lr.ph.i
  %idx.addr.09.i = phi i32 [ %i.035, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.of_node_full_name.exit.i_crit_edge ]
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %node_name.i, i32 noundef 16, ptr noundef nonnull @.str.17, ptr noundef %name, i32 noundef %idx.addr.09.i) #17
  %3 = ptrtoint ptr %full_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %full_name.i.i, align 4
  %call3.i = call i32 @strncmp(ptr noundef nonnull %node_name.i, ptr noundef %4, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.i, label %of_node_full_name.exit.i.rsnd_node_fixed_index.exit_crit_edge, label %for.inc.i

of_node_full_name.exit.i.rsnd_node_fixed_index.exit_crit_edge: ; preds = %of_node_full_name.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_node_fixed_index.exit

for.inc.i:                                        ; preds = %of_node_full_name.exit.i
  %inc.i = add i32 %idx.addr.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.inc.i.rsnd_node_fixed_index.exit_crit_edge, label %for.inc.i.of_node_full_name.exit.i_crit_edge

for.inc.i.of_node_full_name.exit.i_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %of_node_full_name.exit.i

for.inc.i.rsnd_node_fixed_index.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_node_fixed_index.exit

rsnd_node_fixed_index.exit:                       ; preds = %for.inc.i.rsnd_node_fixed_index.exit_crit_edge, %of_node_full_name.exit.i.rsnd_node_fixed_index.exit_crit_edge, %for.body.rsnd_node_fixed_index.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %for.body.rsnd_node_fixed_index.exit_crit_edge ], [ %idx.addr.09.i, %of_node_full_name.exit.i.rsnd_node_fixed_index.exit_crit_edge ], [ -22, %for.inc.i.rsnd_node_fixed_index.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %node_name.i) #17
  %call3 = tail call ptr %mod_get(ptr noundef %1, i32 noundef %retval.0.i) #17
  %cmp4 = icmp eq ptr %np.033, %playback
  br i1 %cmp4, label %if.then5, label %rsnd_node_fixed_index.exit.if.end8_crit_edge

rsnd_node_fixed_index.exit.if.end8_crit_edge:     ; preds = %rsnd_node_fixed_index.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

if.then5:                                         ; preds = %rsnd_node_fixed_index.exit
  call void @__sanitizer_cov_trace_pc() #19
  %type = getelementptr inbounds %struct.rsnd_mod, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  %call7 = tail call i32 @rsnd_dai_connect(ptr noundef %call3, ptr noundef %playback6, i32 noundef %6)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %rsnd_node_fixed_index.exit.if.end8_crit_edge
  %cmp9 = icmp eq ptr %np.033, %capture
  br i1 %cmp9, label %if.then10, label %if.end8.if.end14_crit_edge

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  %type12 = getelementptr inbounds %struct.rsnd_mod, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %type12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type12, align 4
  %call13 = tail call i32 @rsnd_dai_connect(ptr noundef %call3, ptr noundef %capture11, i32 noundef %8)
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end8.if.end14_crit_edge
  %inc = add i32 %retval.0.i, 1
  %call15 = tail call ptr @of_get_next_child(ptr noundef nonnull %node, ptr noundef nonnull %np.033) #17
  %cmp.not = icmp eq ptr %call15, null
  br i1 %cmp.not, label %if.end14.for.end_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %node) #17
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_node_fixed_index(ptr noundef readonly %node, ptr noundef %name, i32 noundef %idx) local_unnamed_addr #10 align 64 {
entry:
  %node_name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %node_name) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %idx)
  %cmp8 = icmp slt i32 %idx, 64
  %0 = call ptr @memset(ptr %node_name, i32 255, i32 16)
  br i1 %cmp8, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not.i = icmp eq ptr %node, null
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %idx.addr.09 = phi i32 [ %idx, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %node_name, i32 noundef 16, ptr noundef nonnull @.str.17, ptr noundef %name, i32 noundef %idx.addr.09)
  br i1 %tobool.not.i, label %for.body.of_node_full_name.exit_crit_edge, label %cond.true.i

for.body.of_node_full_name.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %1 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %for.body.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %2, %cond.true.i ], [ @.str.46, %for.body.of_node_full_name.exit_crit_edge ]
  %call3 = call i32 @strncmp(ptr noundef nonnull %node_name, ptr noundef %cond.i, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %of_node_full_name.exit.cleanup_crit_edge, label %for.inc

of_node_full_name.exit.cleanup_crit_edge:         ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.inc:                                          ; preds = %of_node_full_name.exit
  %inc = add i32 %idx.addr.09, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %of_node_full_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ], [ %idx.addr.09, %of_node_full_name.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %node_name) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_node_count(ptr nocapture noundef readonly %priv, ptr noundef %node, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %node_name.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call = tail call ptr @of_get_next_child(ptr noundef %node, ptr noundef null) #17
  %cmp.not28 = icmp eq ptr %call, null
  br i1 %cmp.not28, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.030 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %np.029 = phi ptr [ %call5, %if.end.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %node_name.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %i.030)
  %cmp8.i = icmp slt i32 %i.030, 64
  %2 = call ptr @memset(ptr %node_name.i, i32 255, i32 16)
  br i1 %cmp8.i, label %for.body.lr.ph.i, label %for.body.rsnd_node_fixed_index.exit.thread_crit_edge

for.body.rsnd_node_fixed_index.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_node_fixed_index.exit.thread

for.body.lr.ph.i:                                 ; preds = %for.body
  %full_name.i.i = getelementptr inbounds %struct.device_node, ptr %np.029, i32 0, i32 2
  br label %of_node_full_name.exit.i

of_node_full_name.exit.i:                         ; preds = %for.inc.i.of_node_full_name.exit.i_crit_edge, %for.body.lr.ph.i
  %idx.addr.09.i = phi i32 [ %i.030, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.of_node_full_name.exit.i_crit_edge ]
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %node_name.i, i32 noundef 16, ptr noundef nonnull @.str.17, ptr noundef %name, i32 noundef %idx.addr.09.i) #17
  %3 = ptrtoint ptr %full_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %full_name.i.i, align 4
  %call3.i = call i32 @strncmp(ptr noundef nonnull %node_name.i, ptr noundef %4, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.i, label %rsnd_node_fixed_index.exit, label %for.inc.i

for.inc.i:                                        ; preds = %of_node_full_name.exit.i
  %inc.i = add i32 %idx.addr.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.inc.i.rsnd_node_fixed_index.exit.thread_crit_edge, label %for.inc.i.of_node_full_name.exit.i_crit_edge

for.inc.i.of_node_full_name.exit.i_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %of_node_full_name.exit.i

for.inc.i.rsnd_node_fixed_index.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_node_fixed_index.exit.thread

rsnd_node_fixed_index.exit.thread:                ; preds = %for.inc.i.rsnd_node_fixed_index.exit.thread_crit_edge, %for.body.rsnd_node_fixed_index.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %node_name.i) #17
  br label %do.end

rsnd_node_fixed_index.exit:                       ; preds = %of_node_full_name.exit.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %node_name.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.addr.09.i)
  %cmp3 = icmp slt i32 %idx.addr.09.i, 0
  br i1 %cmp3, label %rsnd_node_fixed_index.exit.do.end_crit_edge, label %if.end

rsnd_node_fixed_index.exit.do.end_crit_edge:      ; preds = %rsnd_node_fixed_index.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

do.end:                                           ; preds = %rsnd_node_fixed_index.exit.do.end_crit_edge, %rsnd_node_fixed_index.exit.thread
  %tobool.not.i = icmp eq ptr %node, null
  br i1 %tobool.not.i, label %do.end.of_node_full_name.exit_crit_edge, label %cond.true.i

do.end.of_node_full_name.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 2
  %5 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %do.end.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %6, %cond.true.i ], [ @.str.46, %do.end.of_node_full_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef %cond.i) #20
  tail call void @of_node_put(ptr noundef nonnull %np.029) #17
  br label %cleanup

if.end:                                           ; preds = %rsnd_node_fixed_index.exit
  %inc = add nuw i32 %idx.addr.09.i, 1
  %call5 = tail call ptr @of_get_next_child(ptr noundef %node, ptr noundef nonnull %np.029) #17
  %cmp.not = icmp eq ptr %call5, null
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %of_node_full_name.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %of_node_full_name.exit ], [ 0, %entry.cleanup_crit_edge ], [ %inc, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rsnd_kctrl_accept_anytime(ptr nocapture noundef readnone %io) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_kctrl_accept_runtime(ptr nocapture noundef readonly %io) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %substream = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 1
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %cond.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

cond.true:                                        ; preds = %entry
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime2, align 4
  %phi.cmp = icmp eq ptr %3, null
  br i1 %phi.cmp, label %cond.true.do.end_crit_edge, label %cond.true.cleanup_crit_edge

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cond.true.do.end_crit_edge:                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

do.end:                                           ; preds = %cond.true.do.end_crit_edge, %entry.do.end_crit_edge
  %rdai = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %4 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdai, align 4
  %priv3 = getelementptr inbounds %struct.rsnd_dai, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4, ptr noundef nonnull @.str.20) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end, %cond.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %cond.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local ptr @rsnd_kctrl_init_m(ptr noundef returned %cfg) local_unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %val = getelementptr inbounds %struct.rsnd_kctrl_cfg_m, ptr %cfg, i32 0, i32 1
  %val2 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %cfg, i32 0, i32 2
  %0 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %val, ptr %val2, align 4
  ret ptr %cfg
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local ptr @rsnd_kctrl_init_s(ptr noundef returned %cfg) local_unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %val = getelementptr inbounds %struct.rsnd_kctrl_cfg_s, ptr %cfg, i32 0, i32 1
  %val2 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %cfg, i32 0, i32 2
  %0 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %val, ptr %val2, align 4
  ret ptr %cfg
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_kctrl_new(ptr noundef %mod, ptr noundef %io, ptr nocapture noundef readonly %rtd, ptr noundef %name, ptr noundef %accept, ptr noundef %update, ptr noundef %cfg, ptr noundef %texts, i32 noundef %size, i32 noundef %max) local_unnamed_addr #0 align 64 {
entry:
  %knew = alloca %struct.snd_kcontrol_new, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %snd_card = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %snd_card, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %knew) #17
  %4 = ptrtoint ptr %knew to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %knew, align 4
  %device = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 1
  %5 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %device, align 4
  %subdevice = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 2
  %6 = ptrtoint ptr %subdevice to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %subdevice, align 4
  %name2 = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 3
  %7 = ptrtoint ptr %name2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %name, ptr %name2, align 4
  %index = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 4
  %num = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 17
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num, align 4
  %10 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %index, align 4
  %access = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 5
  %11 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %access, align 4
  %count = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 6
  %12 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %count, align 4
  %info = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 7
  %13 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @rsnd_kctrl_info, ptr %info, align 4
  %get = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 8
  %14 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @rsnd_kctrl_get, ptr %get, align 4
  %put = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 9
  %15 = ptrtoint ptr %put to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @rsnd_kctrl_put, ptr %put, align 4
  %tlv = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 10
  %16 = ptrtoint ptr %tlv to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %tlv, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol_new, ptr %knew, i32 0, i32 11
  %17 = ptrtoint ptr %private_value to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %private_value, align 4
  %controls = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 18
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %kctrl.0.in = phi ptr [ %controls, %entry ], [ %kctrl.0, %for.body.for.cond_crit_edge ]
  %18 = ptrtoint ptr %kctrl.0.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %kctrl.0 = load ptr, ptr %kctrl.0.in, align 4
  %cmp.not = icmp eq ptr %kctrl.0, %controls
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctrl.0, i32 0, i32 8
  %19 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private_data, align 4
  %cmp4 = icmp eq ptr %20, %cfg
  br i1 %cmp4, label %for.body.cleanup28_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond

for.body.cleanup28_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup28

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp10 = icmp sgt i32 %size, 8
  br i1 %cmp10, label %for.end.cleanup28_crit_edge, label %if.end12

for.end.cleanup28_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup28

if.end12:                                         ; preds = %for.end
  %call = call ptr @snd_ctl_new1(ptr noundef nonnull %knew, ptr noundef %cfg) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end12.cleanup28_crit_edge, label %if.end14

if.end12.cleanup28_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup28

if.end14:                                         ; preds = %if.end12
  %call15 = call i32 @snd_ctl_add(ptr noundef %3, ptr noundef nonnull %call) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.cleanup28_crit_edge, label %if.end18

if.end14.cleanup28_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup28

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  %texts19 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %cfg, i32 0, i32 3
  %21 = ptrtoint ptr %texts19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %texts, ptr %texts19, align 4
  %22 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %max, ptr %cfg, align 4
  %size21 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %cfg, i32 0, i32 1
  %23 = ptrtoint ptr %size21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %size, ptr %size21, align 4
  %accept22 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %cfg, i32 0, i32 4
  %24 = ptrtoint ptr %accept22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %accept, ptr %accept22, align 4
  %update23 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %cfg, i32 0, i32 5
  %25 = ptrtoint ptr %update23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %update, ptr %update23, align 4
  %card24 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %cfg, i32 0, i32 7
  %26 = ptrtoint ptr %card24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %3, ptr %card24, align 4
  %kctrl25 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %cfg, i32 0, i32 8
  %27 = ptrtoint ptr %kctrl25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call, ptr %kctrl25, align 4
  %io26 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %cfg, i32 0, i32 6
  %28 = ptrtoint ptr %io26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %io, ptr %io26, align 4
  %mod27 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %cfg, i32 0, i32 9
  %29 = ptrtoint ptr %mod27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %mod, ptr %mod27, align 4
  br label %cleanup28

cleanup28:                                        ; preds = %if.end18, %if.end14.cleanup28_crit_edge, %if.end12.cleanup28_crit_edge, %for.end.cleanup28_crit_edge, %for.body.cleanup28_crit_edge
  %retval.2 = phi i32 [ 0, %if.end18 ], [ -22, %for.end.cleanup28_crit_edge ], [ -12, %if.end12.cleanup28_crit_edge ], [ %call15, %if.end14.cleanup28_crit_edge ], [ 0, %for.body.cleanup28_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %knew) #17
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_kctrl_info(ptr nocapture noundef readonly %kctrl, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctrl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %texts = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %texts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %texts, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %type, align 8
  %size = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %7 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %count, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %value, align 8
  %item = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %item, align 4
  %13 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %13)
  %cmp.not = icmp ult i32 %12, %13
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %sub = add i32 %13, -1
  %14 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %item, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %name = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 2
  %15 = ptrtoint ptr %texts to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %texts, align 4
  %17 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %item, align 4
  %arrayidx = getelementptr ptr, ptr %16, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef %20, i32 noundef 64) #17
  br label %if.end20

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %size11 = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %size11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size11, align 4
  %count12 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %23 = ptrtoint ptr %count12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %count12, align 8
  %value13 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %24 = ptrtoint ptr %value13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %value13, align 8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  %max16 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %27 = ptrtoint ptr %max16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %max16, align 4
  %28 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp18 = icmp eq i32 %28, 1
  %cond = select i1 %cmp18, i32 1, i32 2
  %type19 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %29 = ptrtoint ptr %type19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond, ptr %type19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.end
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_kctrl_get(ptr nocapture noundef readonly %kctrl, ptr nocapture noundef writeonly %uc) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctrl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %size = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp15.not = icmp eq i32 %3, 0
  br i1 %cmp15.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %val = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %1, i32 0, i32 2
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uc, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %val, align 4
  %arrayidx3 = getelementptr i32, ptr %5, i32 %i.016
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %arrayidx5 = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.016
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx5, align 4
  %inc = add nuw i32 %i.016, 1
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_kctrl_put(ptr nocapture noundef readonly %kctrl, ptr nocapture noundef readonly %uc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctrl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %accept = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %accept to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %accept, align 4
  %io = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io, align 4
  %call = tail call i32 %3(ptr noundef %5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %size = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp55.not = icmp eq i32 %7, 0
  br i1 %cmp55.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uc, i32 0, i32 2
  %val = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %change.058 = phi i32 [ 0, %for.body.lr.ph ], [ %change.1, %for.body.for.body_crit_edge ]
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx10 = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.056
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx10, align 4
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %val, align 4
  %arrayidx12 = getelementptr i32, ptr %11, i32 %i.056
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp13 = icmp ne i32 %9, %13
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %9, ptr %arrayidx12, align 4
  %conv.pn = zext i1 %cmp13 to i32
  %change.1 = or i32 %change.058, %conv.pn
  %inc = add nuw i32 %i.056, 1
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %change.1)
  %tobool21.not = icmp eq i32 %change.1, 0
  br i1 %tobool21.not, label %for.end.cleanup_crit_edge, label %land.lhs.true

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true:                                    ; preds = %for.end
  %update = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %update, align 4
  %tobool22.not = icmp eq ptr %18, null
  br i1 %tobool22.not, label %land.lhs.true.cleanup_crit_edge, label %if.then23

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %19 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io, align 4
  %mod = getelementptr inbounds %struct.rsnd_kctrl_cfg, ptr %1, i32 0, i32 9
  %21 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mod, align 4
  tail call void %18(ptr noundef %20, ptr noundef %22) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %land.lhs.true.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %change.1, %if.then23 ], [ %change.1, %land.lhs.true.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_driver_init() #14 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rsnd_driver, ptr noundef null) #17
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rsnd_driver_exit() #14 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @platform_driver_unregister(ptr noundef nonnull @rsnd_driver) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 132, i32 noundef 3520) #17
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %call.i, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #17
  %1 = ptrtoint ptr %call3 to i32
  %flags = getelementptr inbounds %struct.rsnd_priv, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %flags, align 4
  %lock = getelementptr inbounds %struct.rsnd_priv, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.48, ptr noundef nonnull @rsnd_probe.__key, i16 noundef signext 3) #17
  %call5 = tail call i32 @rsnd_gen_probe(ptr noundef nonnull %call.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %for.cond, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond:                                         ; preds = %if.end
  %call5.1 = tail call i32 @rsnd_dma_probe(ptr noundef nonnull %call.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1)
  %tobool6.not.1 = icmp eq i32 %call5.1, 0
  br i1 %tobool6.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %call5.2 = tail call i32 @rsnd_ssi_probe(ptr noundef nonnull %call.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.2)
  %tobool6.not.2 = icmp eq i32 %call5.2, 0
  br i1 %tobool6.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %call5.3 = tail call i32 @rsnd_ssiu_probe(ptr noundef nonnull %call.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.3)
  %tobool6.not.3 = icmp eq i32 %call5.3, 0
  br i1 %tobool6.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %call5.4 = tail call i32 @rsnd_src_probe(ptr noundef nonnull %call.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.4)
  %tobool6.not.4 = icmp eq i32 %call5.4, 0
  br i1 %tobool6.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %call5.5 = tail call i32 @rsnd_ctu_probe(ptr noundef nonnull %call.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.5)
  %tobool6.not.5 = icmp eq i32 %call5.5, 0
  br i1 %tobool6.not.5, label %for.cond.5, label %for.cond.4.cleanup_crit_edge

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %call5.6 = tail call i32 @rsnd_mix_probe(ptr noundef nonnull %call.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.6)
  %tobool6.not.6 = icmp eq i32 %call5.6, 0
  br i1 %tobool6.not.6, label %for.cond.6, label %for.cond.5.cleanup_crit_edge

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %call5.7 = tail call i32 @rsnd_dvc_probe(ptr noundef nonnull %call.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.7)
  %tobool6.not.7 = icmp eq i32 %call5.7, 0
  br i1 %tobool6.not.7, label %for.cond.7, label %for.cond.6.cleanup_crit_edge

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  %call5.8 = tail call i32 @rsnd_cmd_probe(ptr noundef nonnull %call.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.8)
  %tobool6.not.8 = icmp eq i32 %call5.8, 0
  br i1 %tobool6.not.8, label %for.cond.8, label %for.cond.7.cleanup_crit_edge

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  %call5.9 = tail call i32 @rsnd_adg_probe(ptr noundef nonnull %call.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.9)
  %tobool6.not.9 = icmp eq i32 %call5.9, 0
  br i1 %tobool6.not.9, label %for.cond.9, label %for.cond.8.cleanup_crit_edge

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.9:                                       ; preds = %for.cond.8
  %call5.10 = tail call fastcc i32 @rsnd_dai_probe(ptr noundef nonnull %call.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.10)
  %tobool6.not.10 = icmp eq i32 %call5.10, 0
  br i1 %tobool6.not.10, label %for.cond.10, label %for.cond.9.cleanup_crit_edge

for.cond.9.cleanup_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.10:                                      ; preds = %for.cond.9
  %rdai_nr = getelementptr inbounds %struct.rsnd_priv, ptr %call.i, i32 0, i32 22
  %3 = ptrtoint ptr %rdai_nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rdai_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp10.not368 = icmp sgt i32 %4, 0
  br i1 %cmp10.not368, label %rsnd_rdai_get.exit.lr.ph, label %for.cond.10.for.end24_crit_edge

for.cond.10.for.end24_crit_edge:                  ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end24

rsnd_rdai_get.exit.lr.ph:                         ; preds = %for.cond.10
  %rdai.i = getelementptr inbounds %struct.rsnd_priv, ptr %call.i, i32 0, i32 21
  %5 = ptrtoint ptr %rdai.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rdai.i, align 4
  %tobool12.not393 = icmp eq ptr %6, null
  br i1 %tobool12.not393, label %rsnd_rdai_get.exit.lr.ph.for.end24_crit_edge, label %rsnd_rdai_get.exit.lr.ph.for.body13_crit_edge

rsnd_rdai_get.exit.lr.ph.for.body13_crit_edge:    ; preds = %rsnd_rdai_get.exit.lr.ph
  br label %for.body13

rsnd_rdai_get.exit.lr.ph.for.end24_crit_edge:     ; preds = %rsnd_rdai_get.exit.lr.ph
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end24

for.cond9:                                        ; preds = %if.end17
  %inc23 = add nuw nsw i32 %i.1369394, 1
  %7 = ptrtoint ptr %rdai_nr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rdai_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc23, i32 %8)
  %cmp10.not = icmp slt i32 %inc23, %8
  br i1 %cmp10.not, label %rsnd_rdai_get.exit, label %for.cond9.for.end24_crit_edge

for.cond9.for.end24_crit_edge:                    ; preds = %for.cond9
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end24

rsnd_rdai_get.exit:                               ; preds = %for.cond9
  %9 = ptrtoint ptr %rdai.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rdai.i, align 4
  %add.ptr.i = getelementptr %struct.rsnd_dai, ptr %10, i32 %inc23
  %tobool12.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool12.not, label %rsnd_rdai_get.exit.for.end24_crit_edge, label %rsnd_rdai_get.exit.for.body13_crit_edge

rsnd_rdai_get.exit.for.body13_crit_edge:          ; preds = %rsnd_rdai_get.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body13

rsnd_rdai_get.exit.for.end24_crit_edge:           ; preds = %rsnd_rdai_get.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end24

for.body13:                                       ; preds = %rsnd_rdai_get.exit.for.body13_crit_edge, %rsnd_rdai_get.exit.lr.ph.for.body13_crit_edge
  %11 = phi ptr [ %10, %rsnd_rdai_get.exit.for.body13_crit_edge ], [ %6, %rsnd_rdai_get.exit.lr.ph.for.body13_crit_edge ]
  %i.1369394 = phi i32 [ %inc23, %rsnd_rdai_get.exit.for.body13_crit_edge ], [ 0, %rsnd_rdai_get.exit.lr.ph.for.body13_crit_edge ]
  %playback = getelementptr %struct.rsnd_dai, ptr %11, i32 %i.1369394, i32 1
  %call14 = tail call fastcc i32 @rsnd_rdai_continuance_probe(ptr noundef nonnull %call.i, ptr noundef %playback)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %for.body13.exit_snd_probe_crit_edge

for.body13.exit_snd_probe_crit_edge:              ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #19
  br label %exit_snd_probe

if.end17:                                         ; preds = %for.body13
  %capture = getelementptr %struct.rsnd_dai, ptr %11, i32 %i.1369394, i32 2
  %call18 = tail call fastcc i32 @rsnd_rdai_continuance_probe(ptr noundef nonnull %call.i, ptr noundef %capture)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.cond9, label %if.end17.exit_snd_probe_crit_edge

if.end17.exit_snd_probe_crit_edge:                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %exit_snd_probe

for.end24:                                        ; preds = %rsnd_rdai_get.exit.for.end24_crit_edge, %for.cond9.for.end24_crit_edge, %rsnd_rdai_get.exit.lr.ph.for.end24_crit_edge, %for.cond.10.for.end24_crit_edge
  %.lcssa362 = phi i32 [ %4, %for.cond.10.for.end24_crit_edge ], [ %4, %rsnd_rdai_get.exit.lr.ph.for.end24_crit_edge ], [ %8, %rsnd_rdai_get.exit.for.end24_crit_edge ], [ %8, %for.cond9.for.end24_crit_edge ]
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i, align 4
  %daidrv = getelementptr inbounds %struct.rsnd_priv, ptr %call.i, i32 0, i32 20
  %13 = ptrtoint ptr %daidrv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %daidrv, align 4
  %call26 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @rsnd_soc_component, ptr noundef %14, i32 noundef %.lcssa362) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end31, label %if.end32

do.end31:                                         ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.49) #20
  br label %exit_snd_probe

if.end32:                                         ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @pm_runtime_enable(ptr noundef %dev1) #17
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.52) #20
  br label %cleanup

exit_snd_probe:                                   ; preds = %do.end31, %if.end17.exit_snd_probe_crit_edge, %for.body13.exit_snd_probe_crit_edge
  %ret.0 = phi i32 [ %call26, %do.end31 ], [ %call18, %if.end17.exit_snd_probe_crit_edge ], [ %call14, %for.body13.exit_snd_probe_crit_edge ]
  %rdai.i259 = getelementptr inbounds %struct.rsnd_priv, ptr %call.i, i32 0, i32 21
  %15 = ptrtoint ptr %rdai_nr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rdai_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp38373 = icmp slt i32 %16, 1
  br i1 %cmp38373, label %exit_snd_probe.for.end174_crit_edge, label %exit_snd_probe.rsnd_rdai_get.exit263_crit_edge

exit_snd_probe.rsnd_rdai_get.exit263_crit_edge:   ; preds = %exit_snd_probe
  br label %rsnd_rdai_get.exit263

exit_snd_probe.for.end174_crit_edge:              ; preds = %exit_snd_probe
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end174

rsnd_rdai_get.exit263:                            ; preds = %for.end170.rsnd_rdai_get.exit263_crit_edge, %exit_snd_probe.rsnd_rdai_get.exit263_crit_edge
  %i.2374 = phi i32 [ %inc173, %for.end170.rsnd_rdai_get.exit263_crit_edge ], [ 0, %exit_snd_probe.rsnd_rdai_get.exit263_crit_edge ]
  %17 = ptrtoint ptr %rdai.i259 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rdai.i259, align 4
  %add.ptr.i260 = getelementptr %struct.rsnd_dai, ptr %18, i32 %i.2374
  %tobool41.not = icmp eq ptr %add.ptr.i260, null
  br i1 %tobool41.not, label %rsnd_rdai_get.exit263.for.end174_crit_edge, label %for.body43

rsnd_rdai_get.exit263.for.end174_crit_edge:       ; preds = %rsnd_rdai_get.exit263
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end174

for.body43:                                       ; preds = %rsnd_rdai_get.exit263
  %playback45 = getelementptr %struct.rsnd_dai, ptr %18, i32 %i.2374, i32 1
  %rdai46 = getelementptr %struct.rsnd_dai, ptr %18, i32 %i.2374, i32 1, i32 4
  %19 = ptrtoint ptr %rdai46 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rdai46, align 4
  %priv47 = getelementptr inbounds %struct.rsnd_dai, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %priv47 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv47, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %dev49 = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  %cmp54 = icmp eq ptr %20, %add.ptr.i260
  %conv = zext i1 %cmp54 to i32
  %arrayidx57 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %conv
  %tobool.not.i = icmp eq ptr %arrayidx57, null
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %for.body43
  %i56.0 = phi i32 [ 0, %for.body43 ], [ %i56.0.be, %for.body.i.backedge ]
  br i1 %tobool.not.i, label %for.body.i.cond.end4.i_crit_edge, label %cond.true2.i

for.body.i.cond.end4.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end4.i

cond.true2.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i = getelementptr i32, ptr %arrayidx57, i32 %i56.0
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  br label %cond.end4.i

cond.end4.i:                                      ; preds = %cond.true2.i, %for.body.i.cond.end4.i_crit_edge
  %cond5.i = phi i32 [ %26, %cond.true2.i ], [ %i56.0, %for.body.i.cond.end4.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %cond5.i)
  %cmp6.i = icmp ult i32 %cond5.i, 13
  br i1 %cmp6.i, label %cond.end11.i, label %cond.end4.i.for.inc.i_crit_edge

cond.end4.i.for.inc.i_crit_edge:                  ; preds = %cond.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

cond.end11.i:                                     ; preds = %cond.end4.i
  %arrayidx9.i = getelementptr %struct.rsnd_dai, ptr %18, i32 %i.2374, i32 1, i32 2, i32 %cond5.i
  %27 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx9.i, align 4
  %tobool13.not.i = icmp eq ptr %28, null
  br i1 %tobool13.not.i, label %cond.end11.i.for.inc.i_crit_edge, label %land.lhs.true

cond.end11.i.for.inc.i_crit_edge:                 ; preds = %cond.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.end11.i.for.inc.i_crit_edge, %cond.end4.i.for.inc.i_crit_edge
  %inc.i = add i32 %i56.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 13
  br i1 %exitcond.not.i, label %for.inc.i.for.end98_crit_edge, label %for.inc.i.for.body.i.backedge_crit_edge

for.inc.i.for.body.i.backedge_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.backedge

for.inc.i.for.end98_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end98

for.body.i.backedge:                              ; preds = %if.end95.for.body.i.backedge_crit_edge, %for.inc.i.for.body.i.backedge_crit_edge
  %i56.0.be = phi i32 [ %inc.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ %inc97, %if.end95.for.body.i.backedge_crit_edge ]
  br label %for.body.i

land.lhs.true:                                    ; preds = %cond.end11.i
  %arrayidx64 = getelementptr i32, ptr %arrayidx57, i32 %i56.0
  %29 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx64, align 4
  %ops.i = getelementptr inbounds %struct.rsnd_mod, ptr %28, i32 0, i32 2
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i, align 4
  %get_status.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %32, i32 0, i32 16
  %33 = ptrtoint ptr %get_status.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_status.i, align 4
  %call.i264 = tail call ptr %34(ptr noundef nonnull %28, ptr noundef %playback45, i32 noundef %30) #17
  %35 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i, align 4
  %remove = getelementptr inbounds %struct.rsnd_mod_ops, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %remove, align 4
  %tobool68.not = icmp eq ptr %38, null
  br i1 %tobool68.not, label %land.lhs.true.if.end95_crit_edge, label %lor.lhs.false

land.lhs.true.if.end95_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end95

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call73 = tail call i32 %38(ptr noundef nonnull %28, ptr noundef %playback45, ptr noundef nonnull %call.i) #17
  %39 = zext i32 %call73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %call73, label %do.end93 [
    i32 0, label %lor.lhs.false.if.end95_crit_edge
    i32 -517, label %lor.lhs.false.if.end95_crit_edge414
  ], !prof !310

lor.lhs.false.if.end95_crit_edge414:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end95

lor.lhs.false.if.end95_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end95

do.end93:                                         ; preds = %lor.lhs.false
  %40 = load i32, ptr @rsnd_mod_name.num, align 4
  %arrayidx.i267 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %40
  %inc.i268 = add i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i268)
  %cmp.i269 = icmp sgt i32 %inc.i268, 4
  %spec.store.select.i = select i1 %cmp.i269, i32 0, i32 %inc.i268
  store i32 %spec.store.select.i, ptr @rsnd_mod_name.num, align 4
  %41 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i, align 4
  %id_sub.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %42, i32 0, i32 18
  %43 = ptrtoint ptr %id_sub.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %id_sub.i, align 4
  %tobool.not.i271 = icmp eq ptr %44, null
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %42, align 4
  %id.i24.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %42, i32 0, i32 17
  %47 = ptrtoint ptr %id.i24.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %id.i24.i, align 4
  %tobool.not.i25.i = icmp eq ptr %48, null
  br i1 %tobool.not.i271, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %do.end93
  br i1 %tobool.not.i25.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i = tail call i32 %48(ptr noundef nonnull %28) #17
  br label %rsnd_mod_id.exit.i

if.end.i.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #19
  %49 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %28, align 4
  br label %rsnd_mod_id.exit.i

rsnd_mod_id.exit.i:                               ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %50, %if.end.i.i ]
  %51 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i, align 4
  %id_sub.i.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %52, i32 0, i32 18
  %53 = ptrtoint ptr %id_sub.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %id_sub.i.i, align 4
  %tobool.not.i19.i = icmp eq ptr %54, null
  br i1 %tobool.not.i19.i, label %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge, label %if.then.i21.i

rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge: ; preds = %rsnd_mod_id.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_mod_id_sub.exit.i

if.then.i21.i:                                    ; preds = %rsnd_mod_id.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i20.i = tail call i32 %54(ptr noundef nonnull %28) #17
  br label %rsnd_mod_id_sub.exit.i

rsnd_mod_id_sub.exit.i:                           ; preds = %if.then.i21.i, %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge
  %retval.0.i22.i = phi i32 [ %call.i20.i, %if.then.i21.i ], [ 0, %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge ]
  %call5.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i267, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef %46, i32 noundef %retval.0.i.i, i32 noundef %retval.0.i22.i) #17
  br label %rsnd_mod_name.exit

if.else.i:                                        ; preds = %do.end93
  br i1 %tobool.not.i25.i, label %if.end.i28.i, label %if.then.i27.i

if.then.i27.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i26.i = tail call i32 %48(ptr noundef nonnull %28) #17
  br label %rsnd_mod_id.exit30.i

if.end.i28.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %55 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %28, align 4
  br label %rsnd_mod_id.exit30.i

rsnd_mod_id.exit30.i:                             ; preds = %if.end.i28.i, %if.then.i27.i
  %retval.0.i29.i = phi i32 [ %call.i26.i, %if.then.i27.i ], [ %56, %if.end.i28.i ]
  %call9.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i267, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef %46, i32 noundef %retval.0.i29.i) #17
  br label %rsnd_mod_name.exit

rsnd_mod_name.exit:                               ; preds = %rsnd_mod_id.exit30.i, %rsnd_mod_id_sub.exit.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.56, ptr noundef %arrayidx.i267, ptr noundef nonnull @.str.58, i32 noundef %call73, i32 noundef 1) #20
  br label %if.end95

if.end95:                                         ; preds = %rsnd_mod_name.exit, %lor.lhs.false.if.end95_crit_edge, %lor.lhs.false.if.end95_crit_edge414, %land.lhs.true.if.end95_crit_edge
  %inc97 = add i32 %i56.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %inc97)
  %cmp28.i = icmp slt i32 %inc97, 13
  br i1 %cmp28.i, label %if.end95.for.body.i.backedge_crit_edge, label %if.end95.for.end98_crit_edge

if.end95.for.end98_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end98

if.end95.for.body.i.backedge_crit_edge:           ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.backedge

for.end98:                                        ; preds = %if.end95.for.end98_crit_edge, %for.inc.i.for.end98_crit_edge
  %capture101 = getelementptr %struct.rsnd_dai, ptr %18, i32 %i.2374, i32 2
  %rdai102 = getelementptr %struct.rsnd_dai, ptr %18, i32 %i.2374, i32 2, i32 4
  %57 = ptrtoint ptr %rdai102 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rdai102, align 4
  %priv103 = getelementptr inbounds %struct.rsnd_dai, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %priv103 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %priv103, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %dev105 = getelementptr inbounds %struct.platform_device, ptr %62, i32 0, i32 3
  %playback110 = getelementptr inbounds %struct.rsnd_dai, ptr %58, i32 0, i32 1
  %cmp112 = icmp eq ptr %playback110, %capture101
  %conv113 = zext i1 %cmp112 to i32
  %arrayidx117 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %conv113
  %tobool.not.i272 = icmp eq ptr %arrayidx117, null
  br label %for.body.i274

for.body.i274:                                    ; preds = %for.body.i274.backedge, %for.end98
  %i115.0 = phi i32 [ 0, %for.end98 ], [ %i115.0.be, %for.body.i274.backedge ]
  br i1 %tobool.not.i272, label %for.body.i274.cond.end4.i279_crit_edge, label %cond.true2.i276

for.body.i274.cond.end4.i279_crit_edge:           ; preds = %for.body.i274
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end4.i279

cond.true2.i276:                                  ; preds = %for.body.i274
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i275 = getelementptr i32, ptr %arrayidx117, i32 %i115.0
  %63 = ptrtoint ptr %arrayidx.i275 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i275, align 4
  br label %cond.end4.i279

cond.end4.i279:                                   ; preds = %cond.true2.i276, %for.body.i274.cond.end4.i279_crit_edge
  %cond5.i277 = phi i32 [ %64, %cond.true2.i276 ], [ %i115.0, %for.body.i274.cond.end4.i279_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %cond5.i277)
  %cmp6.i278 = icmp ult i32 %cond5.i277, 13
  br i1 %cmp6.i278, label %cond.end11.i282, label %cond.end4.i279.for.inc.i285_crit_edge

cond.end4.i279.for.inc.i285_crit_edge:            ; preds = %cond.end4.i279
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i285

cond.end11.i282:                                  ; preds = %cond.end4.i279
  %arrayidx9.i280 = getelementptr %struct.rsnd_dai, ptr %18, i32 %i.2374, i32 2, i32 2, i32 %cond5.i277
  %65 = ptrtoint ptr %arrayidx9.i280 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx9.i280, align 4
  %tobool13.not.i281 = icmp eq ptr %66, null
  br i1 %tobool13.not.i281, label %cond.end11.i282.for.inc.i285_crit_edge, label %land.lhs.true131

cond.end11.i282.for.inc.i285_crit_edge:           ; preds = %cond.end11.i282
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i285

for.inc.i285:                                     ; preds = %cond.end11.i282.for.inc.i285_crit_edge, %cond.end4.i279.for.inc.i285_crit_edge
  %inc.i283 = add i32 %i115.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %inc.i283)
  %exitcond.not.i284 = icmp eq i32 %inc.i283, 13
  br i1 %exitcond.not.i284, label %for.inc.i285.for.end170_crit_edge, label %for.inc.i285.for.body.i274.backedge_crit_edge

for.inc.i285.for.body.i274.backedge_crit_edge:    ; preds = %for.inc.i285
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i274.backedge

for.inc.i285.for.end170_crit_edge:                ; preds = %for.inc.i285
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end170

for.body.i274.backedge:                           ; preds = %if.end166.for.body.i274.backedge_crit_edge, %for.inc.i285.for.body.i274.backedge_crit_edge
  %i115.0.be = phi i32 [ %inc.i283, %for.inc.i285.for.body.i274.backedge_crit_edge ], [ %inc169, %if.end166.for.body.i274.backedge_crit_edge ]
  br label %for.body.i274

land.lhs.true131:                                 ; preds = %cond.end11.i282
  %arrayidx127 = getelementptr i32, ptr %arrayidx117, i32 %i115.0
  %67 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx127, align 4
  %ops.i288 = getelementptr inbounds %struct.rsnd_mod, ptr %66, i32 0, i32 2
  %69 = ptrtoint ptr %ops.i288 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops.i288, align 4
  %get_status.i289 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %70, i32 0, i32 16
  %71 = ptrtoint ptr %get_status.i289 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %get_status.i289, align 4
  %call.i290 = tail call ptr %72(ptr noundef nonnull %66, ptr noundef %capture101, i32 noundef %68) #17
  %73 = ptrtoint ptr %ops.i288 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ops.i288, align 4
  %remove133 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %remove133 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %remove133, align 4
  %tobool134.not = icmp eq ptr %76, null
  br i1 %tobool134.not, label %land.lhs.true131.if.end166_crit_edge, label %lor.lhs.false149

land.lhs.true131.if.end166_crit_edge:             ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end166

lor.lhs.false149:                                 ; preds = %land.lhs.true131
  %call139 = tail call i32 %76(ptr noundef nonnull %66, ptr noundef %capture101, ptr noundef nonnull %call.i) #17
  %77 = zext i32 %call139 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %call139, label %do.end164 [
    i32 0, label %lor.lhs.false149.if.end166_crit_edge
    i32 -517, label %lor.lhs.false149.if.end166_crit_edge415
  ], !prof !310

lor.lhs.false149.if.end166_crit_edge415:          ; preds = %lor.lhs.false149
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end166

lor.lhs.false149.if.end166_crit_edge:             ; preds = %lor.lhs.false149
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end166

do.end164:                                        ; preds = %lor.lhs.false149
  %78 = load i32, ptr @rsnd_mod_name.num, align 4
  %arrayidx.i295 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %78
  %inc.i296 = add i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i296)
  %cmp.i297 = icmp sgt i32 %inc.i296, 4
  %spec.store.select.i298 = select i1 %cmp.i297, i32 0, i32 %inc.i296
  store i32 %spec.store.select.i298, ptr @rsnd_mod_name.num, align 4
  %79 = ptrtoint ptr %ops.i288 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops.i288, align 4
  %id_sub.i300 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %80, i32 0, i32 18
  %81 = ptrtoint ptr %id_sub.i300 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %id_sub.i300, align 4
  %tobool.not.i301 = icmp eq ptr %82, null
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %80, align 4
  %id.i24.i302 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %80, i32 0, i32 17
  %85 = ptrtoint ptr %id.i24.i302 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %id.i24.i302, align 4
  %tobool.not.i25.i303 = icmp eq ptr %86, null
  br i1 %tobool.not.i301, label %if.else.i317, label %if.then1.i304

if.then1.i304:                                    ; preds = %do.end164
  br i1 %tobool.not.i25.i303, label %if.end.i.i307, label %if.then.i.i306

if.then.i.i306:                                   ; preds = %if.then1.i304
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i305 = tail call i32 %86(ptr noundef nonnull %66) #17
  br label %rsnd_mod_id.exit.i311

if.end.i.i307:                                    ; preds = %if.then1.i304
  call void @__sanitizer_cov_trace_pc() #19
  %87 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %66, align 4
  br label %rsnd_mod_id.exit.i311

rsnd_mod_id.exit.i311:                            ; preds = %if.end.i.i307, %if.then.i.i306
  %retval.0.i.i308 = phi i32 [ %call.i.i305, %if.then.i.i306 ], [ %88, %if.end.i.i307 ]
  %89 = ptrtoint ptr %ops.i288 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ops.i288, align 4
  %id_sub.i.i309 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %90, i32 0, i32 18
  %91 = ptrtoint ptr %id_sub.i.i309 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %id_sub.i.i309, align 4
  %tobool.not.i19.i310 = icmp eq ptr %92, null
  br i1 %tobool.not.i19.i310, label %rsnd_mod_id.exit.i311.rsnd_mod_id_sub.exit.i316_crit_edge, label %if.then.i21.i313

rsnd_mod_id.exit.i311.rsnd_mod_id_sub.exit.i316_crit_edge: ; preds = %rsnd_mod_id.exit.i311
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_mod_id_sub.exit.i316

if.then.i21.i313:                                 ; preds = %rsnd_mod_id.exit.i311
  call void @__sanitizer_cov_trace_pc() #19
  %call.i20.i312 = tail call i32 %92(ptr noundef nonnull %66) #17
  br label %rsnd_mod_id_sub.exit.i316

rsnd_mod_id_sub.exit.i316:                        ; preds = %if.then.i21.i313, %rsnd_mod_id.exit.i311.rsnd_mod_id_sub.exit.i316_crit_edge
  %retval.0.i22.i314 = phi i32 [ %call.i20.i312, %if.then.i21.i313 ], [ 0, %rsnd_mod_id.exit.i311.rsnd_mod_id_sub.exit.i316_crit_edge ]
  %call5.i315 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i295, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef %84, i32 noundef %retval.0.i.i308, i32 noundef %retval.0.i22.i314) #17
  br label %rsnd_mod_name.exit324

if.else.i317:                                     ; preds = %do.end164
  br i1 %tobool.not.i25.i303, label %if.end.i28.i320, label %if.then.i27.i319

if.then.i27.i319:                                 ; preds = %if.else.i317
  call void @__sanitizer_cov_trace_pc() #19
  %call.i26.i318 = tail call i32 %86(ptr noundef nonnull %66) #17
  br label %rsnd_mod_id.exit30.i323

if.end.i28.i320:                                  ; preds = %if.else.i317
  call void @__sanitizer_cov_trace_pc() #19
  %93 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %66, align 4
  br label %rsnd_mod_id.exit30.i323

rsnd_mod_id.exit30.i323:                          ; preds = %if.end.i28.i320, %if.then.i27.i319
  %retval.0.i29.i321 = phi i32 [ %call.i26.i318, %if.then.i27.i319 ], [ %94, %if.end.i28.i320 ]
  %call9.i322 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i295, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef %84, i32 noundef %retval.0.i29.i321) #17
  br label %rsnd_mod_name.exit324

rsnd_mod_name.exit324:                            ; preds = %rsnd_mod_id.exit30.i323, %rsnd_mod_id_sub.exit.i316
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev105, ptr noundef nonnull @.str.56, ptr noundef %arrayidx.i295, ptr noundef nonnull @.str.58, i32 noundef %call139, i32 noundef 1) #20
  br label %if.end166

if.end166:                                        ; preds = %rsnd_mod_name.exit324, %lor.lhs.false149.if.end166_crit_edge, %lor.lhs.false149.if.end166_crit_edge415, %land.lhs.true131.if.end166_crit_edge
  %inc169 = add i32 %i115.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %inc169)
  %cmp28.i273 = icmp slt i32 %inc169, 13
  br i1 %cmp28.i273, label %if.end166.for.body.i274.backedge_crit_edge, label %if.end166.for.end170_crit_edge

if.end166.for.end170_crit_edge:                   ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end170

if.end166.for.body.i274.backedge_crit_edge:       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i274.backedge

for.end170:                                       ; preds = %if.end166.for.end170_crit_edge, %for.inc.i285.for.end170_crit_edge
  %inc173 = add nuw nsw i32 %i.2374, 1
  %95 = ptrtoint ptr %rdai_nr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rdai_nr, align 4
  %cmp38.not = icmp slt i32 %inc173, %96
  br i1 %cmp38.not, label %for.end170.rsnd_rdai_get.exit263_crit_edge, label %for.end170.for.end174_crit_edge

for.end170.for.end174_crit_edge:                  ; preds = %for.end170
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end174

for.end170.rsnd_rdai_get.exit263_crit_edge:       ; preds = %for.end170
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_rdai_get.exit263

for.end174:                                       ; preds = %for.end170.for.end174_crit_edge, %rsnd_rdai_get.exit263.for.end174_crit_edge, %exit_snd_probe.for.end174_crit_edge
  tail call void @rsnd_adg_remove(ptr noundef nonnull %call.i) #17
  br label %cleanup

cleanup:                                          ; preds = %for.end174, %if.end32, %for.cond.9.cleanup_crit_edge, %for.cond.8.cleanup_crit_edge, %for.cond.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %for.end174 ], [ %call26, %if.end32 ], [ -19, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %call5.1, %for.cond.cleanup_crit_edge ], [ %call5.2, %for.cond.1.cleanup_crit_edge ], [ %call5.3, %for.cond.2.cleanup_crit_edge ], [ %call5.4, %for.cond.3.cleanup_crit_edge ], [ %call5.5, %for.cond.4.cleanup_crit_edge ], [ %call5.6, %for.cond.5.cleanup_crit_edge ], [ %call5.7, %for.cond.6.cleanup_crit_edge ], [ %call5.8, %for.cond.7.cleanup_crit_edge ], [ %call5.9, %for.cond.8.cleanup_crit_edge ], [ %call5.10, %for.cond.9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #17
  %rdai.i = getelementptr inbounds %struct.rsnd_priv, ptr %1, i32 0, i32 21
  %rdai_nr = getelementptr inbounds %struct.rsnd_priv, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %rdai_nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rdai_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp285 = icmp slt i32 %3, 1
  br i1 %cmp285, label %entry.for.end124_crit_edge, label %entry.rsnd_rdai_get.exit_crit_edge

entry.rsnd_rdai_get.exit_crit_edge:               ; preds = %entry
  br label %rsnd_rdai_get.exit

entry.for.end124_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end124

rsnd_rdai_get.exit:                               ; preds = %for.end119.rsnd_rdai_get.exit_crit_edge, %entry.rsnd_rdai_get.exit_crit_edge
  %ret.0289 = phi i32 [ %or121, %for.end119.rsnd_rdai_get.exit_crit_edge ], [ 0, %entry.rsnd_rdai_get.exit_crit_edge ]
  %i.0286 = phi i32 [ %inc123, %for.end119.rsnd_rdai_get.exit_crit_edge ], [ 0, %entry.rsnd_rdai_get.exit_crit_edge ]
  %4 = ptrtoint ptr %rdai.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdai.i, align 4
  %add.ptr.i = getelementptr %struct.rsnd_dai, ptr %5, i32 %i.0286
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %rsnd_rdai_get.exit.for.end124_crit_edge, label %for.body

rsnd_rdai_get.exit.for.end124_crit_edge:          ; preds = %rsnd_rdai_get.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end124

for.body:                                         ; preds = %rsnd_rdai_get.exit
  %playback = getelementptr %struct.rsnd_dai, ptr %5, i32 %i.0286, i32 1
  %rdai4 = getelementptr %struct.rsnd_dai, ptr %5, i32 %i.0286, i32 1, i32 4
  %6 = ptrtoint ptr %rdai4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rdai4, align 4
  %priv5 = getelementptr inbounds %struct.rsnd_dai, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %priv5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv5, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %cmp12 = icmp eq ptr %7, %add.ptr.i
  %conv = zext i1 %cmp12 to i32
  %arrayidx = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %conv
  %tobool.not.i = icmp eq ptr %arrayidx, null
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end47.for.body.i.preheader_crit_edge, %for.body
  %ret13.0282 = phi i32 [ 0, %for.body ], [ %or, %if.end47.for.body.i.preheader_crit_edge ]
  %storemerge281 = phi i32 [ 0, %for.body ], [ %inc, %if.end47.for.body.i.preheader_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i14.0 = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %storemerge281, %for.body.i.preheader ]
  br i1 %tobool.not.i, label %for.body.i.cond.end4.i_crit_edge, label %cond.true2.i

for.body.i.cond.end4.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end4.i

cond.true2.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i = getelementptr i32, ptr %arrayidx, i32 %i14.0
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  br label %cond.end4.i

cond.end4.i:                                      ; preds = %cond.true2.i, %for.body.i.cond.end4.i_crit_edge
  %cond5.i = phi i32 [ %13, %cond.true2.i ], [ %i14.0, %for.body.i.cond.end4.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %cond5.i)
  %cmp6.i = icmp ult i32 %cond5.i, 13
  br i1 %cmp6.i, label %cond.end11.i, label %cond.end4.i.for.inc.i_crit_edge

cond.end4.i.for.inc.i_crit_edge:                  ; preds = %cond.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

cond.end11.i:                                     ; preds = %cond.end4.i
  %arrayidx9.i = getelementptr %struct.rsnd_dai, ptr %5, i32 %i.0286, i32 1, i32 2, i32 %cond5.i
  %14 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx9.i, align 4
  %tobool13.not.i = icmp eq ptr %15, null
  br i1 %tobool13.not.i, label %cond.end11.i.for.inc.i_crit_edge, label %land.lhs.true

cond.end11.i.for.inc.i_crit_edge:                 ; preds = %cond.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.end11.i.for.inc.i_crit_edge, %cond.end4.i.for.inc.i_crit_edge
  %inc.i = add i32 %i14.0, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 13
  br i1 %exitcond.not.i, label %for.inc.i.for.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.for.end_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

land.lhs.true:                                    ; preds = %cond.end11.i
  %arrayidx21 = getelementptr i32, ptr %arrayidx, i32 %i14.0
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx21, align 4
  %ops.i = getelementptr inbounds %struct.rsnd_mod, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %get_status.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %get_status.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_status.i, align 4
  %call.i = tail call ptr %21(ptr noundef nonnull %15, ptr noundef %playback, i32 noundef %17) #17
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %remove = getelementptr inbounds %struct.rsnd_mod_ops, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %remove, align 4
  %tobool25.not = icmp eq ptr %25, null
  br i1 %tobool25.not, label %land.lhs.true.if.end47_crit_edge, label %lor.lhs.false

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end47

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call29 = tail call i32 %25(ptr noundef nonnull %15, ptr noundef %playback, ptr noundef %1) #17
  %26 = zext i32 %call29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %call29, label %do.end [
    i32 0, label %lor.lhs.false.if.end47_crit_edge
    i32 -517, label %if.end47.fold.split
  ], !prof !310

lor.lhs.false.if.end47_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end47

do.end:                                           ; preds = %lor.lhs.false
  %27 = load i32, ptr @rsnd_mod_name.num, align 4
  %arrayidx.i183 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %27
  %inc.i184 = add i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i184)
  %cmp.i185 = icmp sgt i32 %inc.i184, 4
  %spec.store.select.i = select i1 %cmp.i185, i32 0, i32 %inc.i184
  store i32 %spec.store.select.i, ptr @rsnd_mod_name.num, align 4
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 4
  %id_sub.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %29, i32 0, i32 18
  %30 = ptrtoint ptr %id_sub.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %id_sub.i, align 4
  %tobool.not.i187 = icmp eq ptr %31, null
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  %id.i24.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %29, i32 0, i32 17
  %34 = ptrtoint ptr %id.i24.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %id.i24.i, align 4
  %tobool.not.i25.i = icmp eq ptr %35, null
  br i1 %tobool.not.i187, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %do.end
  br i1 %tobool.not.i25.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i = tail call i32 %35(ptr noundef nonnull %15) #17
  br label %rsnd_mod_id.exit.i

if.end.i.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #19
  %36 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %15, align 4
  br label %rsnd_mod_id.exit.i

rsnd_mod_id.exit.i:                               ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %37, %if.end.i.i ]
  %38 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i, align 4
  %id_sub.i.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %39, i32 0, i32 18
  %40 = ptrtoint ptr %id_sub.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %id_sub.i.i, align 4
  %tobool.not.i19.i = icmp eq ptr %41, null
  br i1 %tobool.not.i19.i, label %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge, label %if.then.i21.i

rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge: ; preds = %rsnd_mod_id.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_mod_id_sub.exit.i

if.then.i21.i:                                    ; preds = %rsnd_mod_id.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i20.i = tail call i32 %41(ptr noundef nonnull %15) #17
  br label %rsnd_mod_id_sub.exit.i

rsnd_mod_id_sub.exit.i:                           ; preds = %if.then.i21.i, %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge
  %retval.0.i22.i = phi i32 [ %call.i20.i, %if.then.i21.i ], [ 0, %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge ]
  %call5.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i183, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef %33, i32 noundef %retval.0.i.i, i32 noundef %retval.0.i22.i) #17
  br label %rsnd_mod_name.exit

if.else.i:                                        ; preds = %do.end
  br i1 %tobool.not.i25.i, label %if.end.i28.i, label %if.then.i27.i

if.then.i27.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i26.i = tail call i32 %35(ptr noundef nonnull %15) #17
  br label %rsnd_mod_id.exit30.i

if.end.i28.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %42 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %15, align 4
  br label %rsnd_mod_id.exit30.i

rsnd_mod_id.exit30.i:                             ; preds = %if.end.i28.i, %if.then.i27.i
  %retval.0.i29.i = phi i32 [ %call.i26.i, %if.then.i27.i ], [ %43, %if.end.i28.i ]
  %call9.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i183, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef %33, i32 noundef %retval.0.i29.i) #17
  br label %rsnd_mod_name.exit

rsnd_mod_name.exit:                               ; preds = %rsnd_mod_id.exit30.i, %rsnd_mod_id_sub.exit.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.56, ptr noundef %arrayidx.i183, ptr noundef nonnull @.str.58, i32 noundef %call29, i32 noundef 1) #20
  br label %if.end47

if.end47.fold.split:                              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end47

if.end47:                                         ; preds = %if.end47.fold.split, %rsnd_mod_name.exit, %lor.lhs.false.if.end47_crit_edge, %land.lhs.true.if.end47_crit_edge
  %tmp.0257 = phi i32 [ %call29, %rsnd_mod_name.exit ], [ %call29, %lor.lhs.false.if.end47_crit_edge ], [ 0, %land.lhs.true.if.end47_crit_edge ], [ -517, %if.end47.fold.split ]
  %or = or i32 %tmp.0257, %ret13.0282
  %inc = add i32 %i14.0, 1
  %cmp28.i = icmp slt i32 %inc, 13
  br i1 %cmp28.i, label %if.end47.for.body.i.preheader_crit_edge, label %if.end47.for.end_crit_edge

if.end47.for.end_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.end47.for.body.i.preheader_crit_edge:          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.preheader

for.end:                                          ; preds = %if.end47.for.end_crit_edge, %for.inc.i.for.end_crit_edge
  %ret13.0276 = phi i32 [ %ret13.0282, %for.inc.i.for.end_crit_edge ], [ %or, %if.end47.for.end_crit_edge ]
  %or49 = or i32 %ret13.0276, %ret.0289
  %capture = getelementptr %struct.rsnd_dai, ptr %5, i32 %i.0286, i32 2
  %rdai51 = getelementptr %struct.rsnd_dai, ptr %5, i32 %i.0286, i32 2, i32 4
  %44 = ptrtoint ptr %rdai51 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rdai51, align 4
  %priv52 = getelementptr inbounds %struct.rsnd_dai, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %priv52 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv52, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %dev54 = getelementptr inbounds %struct.platform_device, ptr %49, i32 0, i32 3
  %playback59 = getelementptr inbounds %struct.rsnd_dai, ptr %45, i32 0, i32 1
  %cmp61 = icmp eq ptr %playback59, %capture
  %conv62 = zext i1 %cmp61 to i32
  %arrayidx66 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %conv62
  %tobool.not.i188 = icmp eq ptr %arrayidx66, null
  br label %for.body.i190.preheader

for.body.i190.preheader:                          ; preds = %if.end115.for.body.i190.preheader_crit_edge, %for.end
  %ret63.0284 = phi i32 [ 0, %for.end ], [ %or116, %if.end115.for.body.i190.preheader_crit_edge ]
  %storemerge179283 = phi i32 [ 0, %for.end ], [ %inc118, %if.end115.for.body.i190.preheader_crit_edge ]
  br label %for.body.i190

for.body.i190:                                    ; preds = %for.inc.i201.for.body.i190_crit_edge, %for.body.i190.preheader
  %i64.0 = phi i32 [ %inc.i199, %for.inc.i201.for.body.i190_crit_edge ], [ %storemerge179283, %for.body.i190.preheader ]
  br i1 %tobool.not.i188, label %for.body.i190.cond.end4.i195_crit_edge, label %cond.true2.i192

for.body.i190.cond.end4.i195_crit_edge:           ; preds = %for.body.i190
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end4.i195

cond.true2.i192:                                  ; preds = %for.body.i190
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i191 = getelementptr i32, ptr %arrayidx66, i32 %i64.0
  %50 = ptrtoint ptr %arrayidx.i191 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i191, align 4
  br label %cond.end4.i195

cond.end4.i195:                                   ; preds = %cond.true2.i192, %for.body.i190.cond.end4.i195_crit_edge
  %cond5.i193 = phi i32 [ %51, %cond.true2.i192 ], [ %i64.0, %for.body.i190.cond.end4.i195_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %cond5.i193)
  %cmp6.i194 = icmp ult i32 %cond5.i193, 13
  br i1 %cmp6.i194, label %cond.end11.i198, label %cond.end4.i195.for.inc.i201_crit_edge

cond.end4.i195.for.inc.i201_crit_edge:            ; preds = %cond.end4.i195
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i201

cond.end11.i198:                                  ; preds = %cond.end4.i195
  %arrayidx9.i196 = getelementptr %struct.rsnd_dai, ptr %5, i32 %i.0286, i32 2, i32 2, i32 %cond5.i193
  %52 = ptrtoint ptr %arrayidx9.i196 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx9.i196, align 4
  %tobool13.not.i197 = icmp eq ptr %53, null
  br i1 %tobool13.not.i197, label %cond.end11.i198.for.inc.i201_crit_edge, label %land.lhs.true80

cond.end11.i198.for.inc.i201_crit_edge:           ; preds = %cond.end11.i198
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i201

for.inc.i201:                                     ; preds = %cond.end11.i198.for.inc.i201_crit_edge, %cond.end4.i195.for.inc.i201_crit_edge
  %inc.i199 = add i32 %i64.0, 1
  %exitcond.not.i200 = icmp eq i32 %inc.i199, 13
  br i1 %exitcond.not.i200, label %for.inc.i201.for.end119_crit_edge, label %for.inc.i201.for.body.i190_crit_edge

for.inc.i201.for.body.i190_crit_edge:             ; preds = %for.inc.i201
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i190

for.inc.i201.for.end119_crit_edge:                ; preds = %for.inc.i201
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end119

land.lhs.true80:                                  ; preds = %cond.end11.i198
  %arrayidx76 = getelementptr i32, ptr %arrayidx66, i32 %i64.0
  %54 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx76, align 4
  %ops.i204 = getelementptr inbounds %struct.rsnd_mod, ptr %53, i32 0, i32 2
  %56 = ptrtoint ptr %ops.i204 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i204, align 4
  %get_status.i205 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %57, i32 0, i32 16
  %58 = ptrtoint ptr %get_status.i205 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %get_status.i205, align 4
  %call.i206 = tail call ptr %59(ptr noundef nonnull %53, ptr noundef %capture, i32 noundef %55) #17
  %60 = ptrtoint ptr %ops.i204 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i204, align 4
  %remove82 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %remove82 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %remove82, align 4
  %tobool83.not = icmp eq ptr %63, null
  br i1 %tobool83.not, label %land.lhs.true80.if.end115_crit_edge, label %lor.lhs.false98

land.lhs.true80.if.end115_crit_edge:              ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end115

lor.lhs.false98:                                  ; preds = %land.lhs.true80
  %call88 = tail call i32 %63(ptr noundef nonnull %53, ptr noundef %capture, ptr noundef %1) #17
  %64 = zext i32 %call88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %call88, label %do.end113 [
    i32 0, label %lor.lhs.false98.if.end115_crit_edge
    i32 -517, label %if.end115.fold.split
  ], !prof !310

lor.lhs.false98.if.end115_crit_edge:              ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end115

do.end113:                                        ; preds = %lor.lhs.false98
  %65 = load i32, ptr @rsnd_mod_name.num, align 4
  %arrayidx.i211 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %65
  %inc.i212 = add i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i212)
  %cmp.i213 = icmp sgt i32 %inc.i212, 4
  %spec.store.select.i214 = select i1 %cmp.i213, i32 0, i32 %inc.i212
  store i32 %spec.store.select.i214, ptr @rsnd_mod_name.num, align 4
  %66 = ptrtoint ptr %ops.i204 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i204, align 4
  %id_sub.i216 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %67, i32 0, i32 18
  %68 = ptrtoint ptr %id_sub.i216 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %id_sub.i216, align 4
  %tobool.not.i217 = icmp eq ptr %69, null
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %67, align 4
  %id.i24.i218 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %67, i32 0, i32 17
  %72 = ptrtoint ptr %id.i24.i218 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %id.i24.i218, align 4
  %tobool.not.i25.i219 = icmp eq ptr %73, null
  br i1 %tobool.not.i217, label %if.else.i233, label %if.then1.i220

if.then1.i220:                                    ; preds = %do.end113
  br i1 %tobool.not.i25.i219, label %if.end.i.i223, label %if.then.i.i222

if.then.i.i222:                                   ; preds = %if.then1.i220
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i221 = tail call i32 %73(ptr noundef nonnull %53) #17
  br label %rsnd_mod_id.exit.i227

if.end.i.i223:                                    ; preds = %if.then1.i220
  call void @__sanitizer_cov_trace_pc() #19
  %74 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %53, align 4
  br label %rsnd_mod_id.exit.i227

rsnd_mod_id.exit.i227:                            ; preds = %if.end.i.i223, %if.then.i.i222
  %retval.0.i.i224 = phi i32 [ %call.i.i221, %if.then.i.i222 ], [ %75, %if.end.i.i223 ]
  %76 = ptrtoint ptr %ops.i204 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops.i204, align 4
  %id_sub.i.i225 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %77, i32 0, i32 18
  %78 = ptrtoint ptr %id_sub.i.i225 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %id_sub.i.i225, align 4
  %tobool.not.i19.i226 = icmp eq ptr %79, null
  br i1 %tobool.not.i19.i226, label %rsnd_mod_id.exit.i227.rsnd_mod_id_sub.exit.i232_crit_edge, label %if.then.i21.i229

rsnd_mod_id.exit.i227.rsnd_mod_id_sub.exit.i232_crit_edge: ; preds = %rsnd_mod_id.exit.i227
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_mod_id_sub.exit.i232

if.then.i21.i229:                                 ; preds = %rsnd_mod_id.exit.i227
  call void @__sanitizer_cov_trace_pc() #19
  %call.i20.i228 = tail call i32 %79(ptr noundef nonnull %53) #17
  br label %rsnd_mod_id_sub.exit.i232

rsnd_mod_id_sub.exit.i232:                        ; preds = %if.then.i21.i229, %rsnd_mod_id.exit.i227.rsnd_mod_id_sub.exit.i232_crit_edge
  %retval.0.i22.i230 = phi i32 [ %call.i20.i228, %if.then.i21.i229 ], [ 0, %rsnd_mod_id.exit.i227.rsnd_mod_id_sub.exit.i232_crit_edge ]
  %call5.i231 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i211, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef %71, i32 noundef %retval.0.i.i224, i32 noundef %retval.0.i22.i230) #17
  br label %rsnd_mod_name.exit240

if.else.i233:                                     ; preds = %do.end113
  br i1 %tobool.not.i25.i219, label %if.end.i28.i236, label %if.then.i27.i235

if.then.i27.i235:                                 ; preds = %if.else.i233
  call void @__sanitizer_cov_trace_pc() #19
  %call.i26.i234 = tail call i32 %73(ptr noundef nonnull %53) #17
  br label %rsnd_mod_id.exit30.i239

if.end.i28.i236:                                  ; preds = %if.else.i233
  call void @__sanitizer_cov_trace_pc() #19
  %80 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %53, align 4
  br label %rsnd_mod_id.exit30.i239

rsnd_mod_id.exit30.i239:                          ; preds = %if.end.i28.i236, %if.then.i27.i235
  %retval.0.i29.i237 = phi i32 [ %call.i26.i234, %if.then.i27.i235 ], [ %81, %if.end.i28.i236 ]
  %call9.i238 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i211, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef %71, i32 noundef %retval.0.i29.i237) #17
  br label %rsnd_mod_name.exit240

rsnd_mod_name.exit240:                            ; preds = %rsnd_mod_id.exit30.i239, %rsnd_mod_id_sub.exit.i232
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str.56, ptr noundef %arrayidx.i211, ptr noundef nonnull @.str.58, i32 noundef %call88, i32 noundef 1) #20
  br label %if.end115

if.end115.fold.split:                             ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end115

if.end115:                                        ; preds = %if.end115.fold.split, %rsnd_mod_name.exit240, %lor.lhs.false98.if.end115_crit_edge, %land.lhs.true80.if.end115_crit_edge
  %tmp73.0269 = phi i32 [ %call88, %rsnd_mod_name.exit240 ], [ %call88, %lor.lhs.false98.if.end115_crit_edge ], [ 0, %land.lhs.true80.if.end115_crit_edge ], [ -517, %if.end115.fold.split ]
  %or116 = or i32 %tmp73.0269, %ret63.0284
  %inc118 = add i32 %i64.0, 1
  %cmp28.i189 = icmp slt i32 %inc118, 13
  br i1 %cmp28.i189, label %if.end115.for.body.i190.preheader_crit_edge, label %if.end115.for.end119_crit_edge

if.end115.for.end119_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end119

if.end115.for.body.i190.preheader_crit_edge:      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i190.preheader

for.end119:                                       ; preds = %if.end115.for.end119_crit_edge, %for.inc.i201.for.end119_crit_edge
  %ret63.0280 = phi i32 [ %ret63.0284, %for.inc.i201.for.end119_crit_edge ], [ %or116, %if.end115.for.end119_crit_edge ]
  %or121 = or i32 %or49, %ret63.0280
  %inc123 = add nuw nsw i32 %i.0286, 1
  %82 = ptrtoint ptr %rdai_nr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rdai_nr, align 4
  %cmp.not = icmp slt i32 %inc123, %83
  br i1 %cmp.not, label %for.end119.rsnd_rdai_get.exit_crit_edge, label %for.end119.for.end124_crit_edge

for.end119.for.end124_crit_edge:                  ; preds = %for.end119
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end124

for.end119.rsnd_rdai_get.exit_crit_edge:          ; preds = %for.end119
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_rdai_get.exit

for.end124:                                       ; preds = %for.end119.for.end124_crit_edge, %rsnd_rdai_get.exit.for.end124_crit_edge, %entry.for.end124_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end124_crit_edge ], [ %ret.0289, %rsnd_rdai_get.exit.for.end124_crit_edge ], [ %or121, %for.end119.for.end124_crit_edge ]
  tail call void @rsnd_ssi_remove(ptr noundef %1) #17
  tail call void @rsnd_ssiu_remove(ptr noundef %1) #17
  tail call void @rsnd_src_remove(ptr noundef %1) #17
  tail call void @rsnd_ctu_remove(ptr noundef %1) #17
  tail call void @rsnd_mix_remove(ptr noundef %1) #17
  tail call void @rsnd_dvc_remove(ptr noundef %1) #17
  tail call void @rsnd_cmd_remove(ptr noundef %1) #17
  tail call void @rsnd_adg_remove(ptr noundef %1) #17
  ret i32 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_gen_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_dma_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_ssi_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_ssiu_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_src_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_ctu_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mix_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_dvc_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_cmd_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_adg_probe(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rsnd_dai_probe(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @of_get_child_by_name(ptr noundef %3, ptr noundef nonnull @.str.61) #17
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %rsnd_dai_of_node.exit.thread120

rsnd_dai_of_node.exit.thread120:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @of_node_put(ptr noundef nonnull %call.i) #17
  br label %if.else

if.end.i:                                         ; preds = %entry
  %call2.i = tail call ptr @of_graph_get_next_endpoint(ptr noundef %3, ptr noundef null) #17
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i.if.else_crit_edge, label %if.then

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @of_node_put(ptr noundef nonnull %call2.i) #17
  %call2 = tail call i32 @of_graph_get_endpoint_count(ptr noundef %3) #17
  br label %if.end

if.else:                                          ; preds = %if.end.i.if.else_crit_edge, %rsnd_dai_of_node.exit.thread120
  %call.i90 = tail call ptr @of_get_next_child(ptr noundef %call.i, ptr noundef null) #17
  %cmp.not5.i = icmp eq ptr %call.i90, null
  br i1 %cmp.not5.i, label %if.else.cleanup_crit_edge, label %if.else.for.body.i_crit_edge

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.else.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i90, %if.else.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef %call.i, ptr noundef nonnull %child.06.i) #17
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %for.body.i.if.end_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.then
  %tobool.not118 = phi i1 [ false, %if.then ], [ true, %for.body.i.if.end_crit_edge ]
  %retval.0.i116 = phi ptr [ %3, %if.then ], [ %call.i, %for.body.i.if.end_crit_edge ]
  %nr.0 = phi i32 [ %call2, %if.then ], [ %inc.i, %for.body.i.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr.0)
  %tobool4.not = icmp eq i32 %nr.0, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr.0, i32 168) #17
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %if.end6.devm_kcalloc.exit_crit_edge, label %if.end.i.i, !prof !308

if.end6.devm_kcalloc.exit_crit_edge:              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %devm_kcalloc.exit

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  %6 = extractvalue { i32, i1 } %4, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %6, i32 noundef 3520) #17
  br label %devm_kcalloc.exit

devm_kcalloc.exit:                                ; preds = %if.end.i.i, %if.end6.devm_kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call5.i.i, %if.end.i.i ], [ null, %if.end6.devm_kcalloc.exit_crit_edge ]
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr.0, i32 248) #17
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %devm_kcalloc.exit.cleanup_crit_edge, label %devm_kcalloc.exit94, !prof !308

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

devm_kcalloc.exit94:                              ; preds = %devm_kcalloc.exit
  %9 = extractvalue { i32, i1 } %7, 0
  %call5.i.i91 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %9, i32 noundef 3520) #17
  %tobool9.not = icmp eq ptr %retval.0.i.i, null
  %tobool10.not = icmp eq ptr %call5.i.i91, null
  %or.cond = select i1 %tobool9.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %devm_kcalloc.exit94.cleanup_crit_edge, label %if.end12

devm_kcalloc.exit94.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit94
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end12:                                         ; preds = %devm_kcalloc.exit94
  %rdai_nr = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 22
  %10 = ptrtoint ptr %rdai_nr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %nr.0, ptr %rdai_nr, align 4
  %daidrv = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 20
  %11 = ptrtoint ptr %daidrv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %retval.0.i.i, ptr %daidrv, align 4
  %rdai13 = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 21
  %12 = ptrtoint ptr %rdai13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i.i91, ptr %rdai13, align 4
  br i1 %tobool.not118, label %if.else22, label %if.then15

if.then15:                                        ; preds = %if.end12
  %call16 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %retval.0.i116, ptr noundef null) #17
  %cmp.not134 = icmp eq ptr %call16, null
  br i1 %cmp.not134, label %if.then15.cleanup_crit_edge, label %for.body.lr.ph

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.then15
  %flags = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end20.for.body_crit_edge, %for.body.lr.ph
  %dai_i.0137 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end20.for.body_crit_edge ]
  %dai_np.0135 = phi ptr [ %call16, %for.body.lr.ph ], [ %call21, %if.end20.for.body_crit_edge ]
  tail call fastcc void @__rsnd_dai_probe(ptr noundef %priv, ptr noundef nonnull %dai_np.0135, i32 noundef %dai_i.0137)
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp17 = icmp eq i32 %and, 3
  br i1 %cmp17, label %if.then18, label %for.body.if.end20_crit_edge

for.body.if.end20_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dai_i.0137)
  %cmp.i = icmp slt i32 %dai_i.0137, 0
  br i1 %cmp.i, label %if.then18.rsnd_rdai_get.exit_crit_edge, label %lor.lhs.false.i

if.then18.rsnd_rdai_get.exit_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_rdai_get.exit

lor.lhs.false.i:                                  ; preds = %if.then18
  %15 = ptrtoint ptr %rdai_nr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rdai_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %dai_i.0137)
  %cmp1.not.i = icmp sgt i32 %16, %dai_i.0137
  br i1 %cmp1.not.i, label %if.end.i95, label %lor.lhs.false.i.rsnd_rdai_get.exit_crit_edge

lor.lhs.false.i.rsnd_rdai_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_rdai_get.exit

if.end.i95:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  %17 = ptrtoint ptr %rdai13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rdai13, align 4
  %add.ptr.i = getelementptr %struct.rsnd_dai, ptr %18, i32 %dai_i.0137
  br label %rsnd_rdai_get.exit

rsnd_rdai_get.exit:                               ; preds = %if.end.i95, %lor.lhs.false.i.rsnd_rdai_get.exit_crit_edge, %if.then18.rsnd_rdai_get.exit_crit_edge
  %retval.0.i96 = phi ptr [ %add.ptr.i, %if.end.i95 ], [ null, %lor.lhs.false.i.rsnd_rdai_get.exit_crit_edge ], [ null, %if.then18.rsnd_rdai_get.exit_crit_edge ]
  %playback = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i96, i32 0, i32 1
  tail call fastcc void @rsnd_parse_connect_graph(ptr noundef %priv, ptr noundef %playback, ptr noundef nonnull %dai_np.0135)
  %capture = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i96, i32 0, i32 2
  tail call fastcc void @rsnd_parse_connect_graph(ptr noundef %priv, ptr noundef %capture, ptr noundef nonnull %dai_np.0135)
  br label %if.end20

if.end20:                                         ; preds = %rsnd_rdai_get.exit, %for.body.if.end20_crit_edge
  %inc = add i32 %dai_i.0137, 1
  %call21 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %retval.0.i116, ptr noundef nonnull %dai_np.0135) #17
  %cmp.not = icmp eq ptr %call21, null
  br i1 %cmp.not, label %if.end20.cleanup_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else22:                                        ; preds = %if.end12
  %call23 = tail call ptr @of_get_next_child(ptr noundef %retval.0.i116, ptr noundef null) #17
  %cmp25.not140 = icmp eq ptr %call23, null
  br i1 %cmp25.not140, label %if.else22.cleanup_crit_edge, label %for.body26.lr.ph

if.else22.cleanup_crit_edge:                      ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body26.lr.ph:                                 ; preds = %if.else22
  %flags27 = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 2
  br label %for.body26

for.body26:                                       ; preds = %if.end34.for.body26_crit_edge, %for.body26.lr.ph
  %dai_i.1143 = phi i32 [ 0, %for.body26.lr.ph ], [ %inc35, %if.end34.for.body26_crit_edge ]
  %dai_np.1141 = phi ptr [ %call23, %for.body26.lr.ph ], [ %call37, %if.end34.for.body26_crit_edge ]
  tail call fastcc void @__rsnd_dai_probe(ptr noundef %priv, ptr noundef nonnull %dai_np.1141, i32 noundef %dai_i.1143)
  %19 = ptrtoint ptr %flags27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags27, align 4
  %and28 = and i32 %20, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and28)
  %cmp29 = icmp eq i32 %and28, 3
  br i1 %cmp29, label %if.then30, label %for.body26.if.end34_crit_edge

for.body26.if.end34_crit_edge:                    ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

if.then30:                                        ; preds = %for.body26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dai_i.1143)
  %cmp.i97 = icmp slt i32 %dai_i.1143, 0
  br i1 %cmp.i97, label %if.then30.rsnd_rdai_get.exit105_crit_edge, label %lor.lhs.false.i100

if.then30.rsnd_rdai_get.exit105_crit_edge:        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_rdai_get.exit105

lor.lhs.false.i100:                               ; preds = %if.then30
  %21 = ptrtoint ptr %rdai_nr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rdai_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %dai_i.1143)
  %cmp1.not.i99 = icmp sgt i32 %22, %dai_i.1143
  br i1 %cmp1.not.i99, label %if.end.i103, label %lor.lhs.false.i100.rsnd_rdai_get.exit105_crit_edge

lor.lhs.false.i100.rsnd_rdai_get.exit105_crit_edge: ; preds = %lor.lhs.false.i100
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_rdai_get.exit105

if.end.i103:                                      ; preds = %lor.lhs.false.i100
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %rdai13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rdai13, align 4
  %add.ptr.i102 = getelementptr %struct.rsnd_dai, ptr %24, i32 %dai_i.1143
  br label %rsnd_rdai_get.exit105

rsnd_rdai_get.exit105:                            ; preds = %if.end.i103, %lor.lhs.false.i100.rsnd_rdai_get.exit105_crit_edge, %if.then30.rsnd_rdai_get.exit105_crit_edge
  %retval.0.i104 = phi ptr [ %add.ptr.i102, %if.end.i103 ], [ null, %lor.lhs.false.i100.rsnd_rdai_get.exit105_crit_edge ], [ null, %if.then30.rsnd_rdai_get.exit105_crit_edge ]
  %arrayidx.i = getelementptr %struct.rsnd_dai, ptr %retval.0.i104, i32 0, i32 1, i32 2, i32 11
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i106 = icmp eq ptr %26, null
  br i1 %tobool.not.i106, label %rsnd_rdai_get.exit105.rsnd_parse_connect_simple.exit_crit_edge, label %if.end.i107

rsnd_rdai_get.exit105.rsnd_parse_connect_simple.exit_crit_edge: ; preds = %rsnd_rdai_get.exit105
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_parse_connect_simple.exit

if.end.i107:                                      ; preds = %rsnd_rdai_get.exit105
  call void @__sanitizer_cov_trace_pc() #19
  %playback32 = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i104, i32 0, i32 1
  tail call fastcc void @rsnd_parse_tdm_split_mode(ptr noundef %priv, ptr noundef %playback32, ptr noundef nonnull %dai_np.1141) #17
  br label %rsnd_parse_connect_simple.exit

rsnd_parse_connect_simple.exit:                   ; preds = %if.end.i107, %rsnd_rdai_get.exit105.rsnd_parse_connect_simple.exit_crit_edge
  %arrayidx.i108 = getelementptr %struct.rsnd_dai, ptr %retval.0.i104, i32 0, i32 2, i32 2, i32 11
  %27 = ptrtoint ptr %arrayidx.i108 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i108, align 4
  %tobool.not.i109 = icmp eq ptr %28, null
  br i1 %tobool.not.i109, label %rsnd_parse_connect_simple.exit.if.end34_crit_edge, label %if.end.i110

rsnd_parse_connect_simple.exit.if.end34_crit_edge: ; preds = %rsnd_parse_connect_simple.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

if.end.i110:                                      ; preds = %rsnd_parse_connect_simple.exit
  call void @__sanitizer_cov_trace_pc() #19
  %capture33 = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i104, i32 0, i32 2
  tail call fastcc void @rsnd_parse_tdm_split_mode(ptr noundef %priv, ptr noundef %capture33, ptr noundef nonnull %dai_np.1141) #17
  br label %if.end34

if.end34:                                         ; preds = %if.end.i110, %rsnd_parse_connect_simple.exit.if.end34_crit_edge, %for.body26.if.end34_crit_edge
  %inc35 = add i32 %dai_i.1143, 1
  %call37 = tail call ptr @of_get_next_child(ptr noundef %retval.0.i116, ptr noundef nonnull %dai_np.1141) #17
  %cmp25.not = icmp eq ptr %call37, null
  br i1 %cmp25.not, label %if.end34.cleanup_crit_edge, label %if.end34.for.body26_crit_edge

if.end34.for.body26_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body26

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %if.end34.cleanup_crit_edge, %if.else22.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %devm_kcalloc.exit94.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit94.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ 0, %if.else22.cleanup_crit_edge ], [ 0, %if.then15.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rsnd_rdai_continuance_probe(ptr noundef %priv, ptr noundef %io) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rdai = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %0 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdai, align 4
  %priv1 = getelementptr inbounds %struct.rsnd_dai, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %playback = getelementptr inbounds %struct.rsnd_dai, ptr %1, i32 0, i32 1
  %cmp = icmp eq ptr %playback, %io
  %conv = zext i1 %cmp to i32
  %arrayidx = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %conv
  %tobool.not.i = icmp eq ptr %arrayidx, null
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end28.for.body.i.preheader_crit_edge, %entry
  %ret4.0488 = phi i32 [ 0, %entry ], [ %or, %if.end28.for.body.i.preheader_crit_edge ]
  %storemerge487 = phi i32 [ 0, %entry ], [ %inc, %if.end28.for.body.i.preheader_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.0 = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %storemerge487, %for.body.i.preheader ]
  br i1 %tobool.not.i, label %for.body.i.cond.end4.i_crit_edge, label %cond.true2.i

for.body.i.cond.end4.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end4.i

cond.true2.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i = getelementptr i32, ptr %arrayidx, i32 %i.0
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  br label %cond.end4.i

cond.end4.i:                                      ; preds = %cond.true2.i, %for.body.i.cond.end4.i_crit_edge
  %cond5.i = phi i32 [ %7, %cond.true2.i ], [ %i.0, %for.body.i.cond.end4.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %cond5.i)
  %cmp6.i = icmp ult i32 %cond5.i, 13
  br i1 %cmp6.i, label %cond.end11.i, label %cond.end4.i.for.inc.i_crit_edge

cond.end4.i.for.inc.i_crit_edge:                  ; preds = %cond.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

cond.end11.i:                                     ; preds = %cond.end4.i
  %arrayidx9.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 %cond5.i
  %8 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx9.i, align 4
  %tobool13.not.i = icmp eq ptr %9, null
  br i1 %tobool13.not.i, label %cond.end11.i.for.inc.i_crit_edge, label %land.lhs.true

cond.end11.i.for.inc.i_crit_edge:                 ; preds = %cond.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.end11.i.for.inc.i_crit_edge, %cond.end4.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.0, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 13
  br i1 %exitcond.not.i, label %for.inc.i.for.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.for.end_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

land.lhs.true:                                    ; preds = %cond.end11.i
  %arrayidx5 = getelementptr i32, ptr %arrayidx, i32 %i.0
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5, align 4
  %ops.i = getelementptr inbounds %struct.rsnd_mod, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %get_status.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %get_status.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_status.i, align 4
  %call.i = tail call ptr %15(ptr noundef nonnull %9, ptr noundef %io, i32 noundef %11) #17
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %probe = getelementptr inbounds %struct.rsnd_mod_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %probe, align 4
  %tobool9.not = icmp eq ptr %19, null
  br i1 %tobool9.not, label %land.lhs.true.if.end28_crit_edge, label %lor.lhs.false

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call12 = tail call i32 %19(ptr noundef nonnull %9, ptr noundef %io, ptr noundef %priv) #17
  %20 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %call12, label %do.end [
    i32 0, label %lor.lhs.false.if.end28_crit_edge
    i32 -517, label %if.end28.fold.split
  ], !prof !310

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28

do.end:                                           ; preds = %lor.lhs.false
  %21 = load i32, ptr @rsnd_mod_name.num, align 4
  %arrayidx.i327 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %21
  %inc.i328 = add i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i328)
  %cmp.i329 = icmp sgt i32 %inc.i328, 4
  %spec.store.select.i = select i1 %cmp.i329, i32 0, i32 %inc.i328
  store i32 %spec.store.select.i, ptr @rsnd_mod_name.num, align 4
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %id_sub.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %23, i32 0, i32 18
  %24 = ptrtoint ptr %id_sub.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %id_sub.i, align 4
  %tobool.not.i331 = icmp eq ptr %25, null
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %id.i24.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %23, i32 0, i32 17
  %28 = ptrtoint ptr %id.i24.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %id.i24.i, align 4
  %tobool.not.i25.i = icmp eq ptr %29, null
  br i1 %tobool.not.i331, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %do.end
  br i1 %tobool.not.i25.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i = tail call i32 %29(ptr noundef nonnull %9) #17
  br label %rsnd_mod_id.exit.i

if.end.i.i:                                       ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #19
  %30 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %9, align 4
  br label %rsnd_mod_id.exit.i

rsnd_mod_id.exit.i:                               ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %31, %if.end.i.i ]
  %32 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i, align 4
  %id_sub.i.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %33, i32 0, i32 18
  %34 = ptrtoint ptr %id_sub.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %id_sub.i.i, align 4
  %tobool.not.i19.i = icmp eq ptr %35, null
  br i1 %tobool.not.i19.i, label %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge, label %if.then.i21.i

rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge: ; preds = %rsnd_mod_id.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_mod_id_sub.exit.i

if.then.i21.i:                                    ; preds = %rsnd_mod_id.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i20.i = tail call i32 %35(ptr noundef nonnull %9) #17
  br label %rsnd_mod_id_sub.exit.i

rsnd_mod_id_sub.exit.i:                           ; preds = %if.then.i21.i, %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge
  %retval.0.i22.i = phi i32 [ %call.i20.i, %if.then.i21.i ], [ 0, %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge ]
  %call5.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i327, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef %27, i32 noundef %retval.0.i.i, i32 noundef %retval.0.i22.i) #17
  br label %rsnd_mod_name.exit

if.else.i:                                        ; preds = %do.end
  br i1 %tobool.not.i25.i, label %if.end.i28.i, label %if.then.i27.i

if.then.i27.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i26.i = tail call i32 %29(ptr noundef nonnull %9) #17
  br label %rsnd_mod_id.exit30.i

if.end.i28.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %36 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %9, align 4
  br label %rsnd_mod_id.exit30.i

rsnd_mod_id.exit30.i:                             ; preds = %if.end.i28.i, %if.then.i27.i
  %retval.0.i29.i = phi i32 [ %call.i26.i, %if.then.i27.i ], [ %37, %if.end.i28.i ]
  %call9.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i327, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef %27, i32 noundef %retval.0.i29.i) #17
  br label %rsnd_mod_name.exit

rsnd_mod_name.exit:                               ; preds = %rsnd_mod_id.exit30.i, %rsnd_mod_id_sub.exit.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.56, ptr noundef %arrayidx.i327, ptr noundef nonnull @.str.115, i32 noundef %call12, i32 noundef 1) #20
  br label %if.end28

if.end28.fold.split:                              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28

if.end28:                                         ; preds = %if.end28.fold.split, %rsnd_mod_name.exit, %lor.lhs.false.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge
  %tmp.0432 = phi i32 [ %call12, %rsnd_mod_name.exit ], [ %call12, %lor.lhs.false.if.end28_crit_edge ], [ 0, %land.lhs.true.if.end28_crit_edge ], [ -517, %if.end28.fold.split ]
  %or = or i32 %tmp.0432, %ret4.0488
  %inc = add i32 %i.0, 1
  %cmp28.i = icmp slt i32 %inc, 13
  br i1 %cmp28.i, label %if.end28.for.body.i.preheader_crit_edge, label %if.end28.for.end_crit_edge

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.end28.for.body.i.preheader_crit_edge:          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.preheader

for.end:                                          ; preds = %if.end28.for.end_crit_edge, %for.inc.i.for.end_crit_edge
  %ret4.0486 = phi i32 [ %ret4.0488, %for.inc.i.for.end_crit_edge ], [ %or, %if.end28.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %ret4.0486)
  %cmp30 = icmp eq i32 %ret4.0486, -11
  br i1 %cmp30, label %if.then32, label %for.end.if.end241_crit_edge

for.end.if.end241_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end241

if.then32:                                        ; preds = %for.end
  %arrayidx34 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 11
  %38 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx34, align 4
  %40 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rdai, align 4
  %priv39 = getelementptr inbounds %struct.rsnd_dai, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %priv39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %priv39, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %dev41 = getelementptr inbounds %struct.platform_device, ptr %45, i32 0, i32 3
  %playback45 = getelementptr inbounds %struct.rsnd_dai, ptr %41, i32 0, i32 1
  %cmp46 = icmp eq ptr %playback45, %io
  %conv47 = zext i1 %cmp46 to i32
  %arrayidx51 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %conv47
  %tobool.not.i332 = icmp eq ptr %arrayidx51, null
  br label %for.body.i334

for.body.i334:                                    ; preds = %for.body.i334.backedge, %if.then32
  %i49.0 = phi i32 [ 0, %if.then32 ], [ %i49.0.be, %for.body.i334.backedge ]
  br i1 %tobool.not.i332, label %for.body.i334.cond.end4.i339_crit_edge, label %cond.true2.i336

for.body.i334.cond.end4.i339_crit_edge:           ; preds = %for.body.i334
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end4.i339

cond.true2.i336:                                  ; preds = %for.body.i334
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i335 = getelementptr i32, ptr %arrayidx51, i32 %i49.0
  %46 = ptrtoint ptr %arrayidx.i335 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i335, align 4
  br label %cond.end4.i339

cond.end4.i339:                                   ; preds = %cond.true2.i336, %for.body.i334.cond.end4.i339_crit_edge
  %cond5.i337 = phi i32 [ %47, %cond.true2.i336 ], [ %i49.0, %for.body.i334.cond.end4.i339_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %cond5.i337)
  %cmp6.i338 = icmp ult i32 %cond5.i337, 13
  br i1 %cmp6.i338, label %cond.end11.i342, label %cond.end4.i339.for.inc.i345_crit_edge

cond.end4.i339.for.inc.i345_crit_edge:            ; preds = %cond.end4.i339
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i345

cond.end11.i342:                                  ; preds = %cond.end4.i339
  %arrayidx9.i340 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 %cond5.i337
  %48 = ptrtoint ptr %arrayidx9.i340 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx9.i340, align 4
  %tobool13.not.i341 = icmp eq ptr %49, null
  br i1 %tobool13.not.i341, label %cond.end11.i342.for.inc.i345_crit_edge, label %land.lhs.true63

cond.end11.i342.for.inc.i345_crit_edge:           ; preds = %cond.end11.i342
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i345

for.inc.i345:                                     ; preds = %cond.end11.i342.for.inc.i345_crit_edge, %cond.end4.i339.for.inc.i345_crit_edge
  %inc.i343 = add i32 %i49.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %inc.i343)
  %exitcond.not.i344 = icmp eq i32 %inc.i343, 13
  br i1 %exitcond.not.i344, label %for.inc.i345.for.body.i355.preheader_crit_edge, label %for.inc.i345.for.body.i334.backedge_crit_edge

for.inc.i345.for.body.i334.backedge_crit_edge:    ; preds = %for.inc.i345
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i334.backedge

for.inc.i345.for.body.i355.preheader_crit_edge:   ; preds = %for.inc.i345
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i355.preheader

for.body.i334.backedge:                           ; preds = %if.end96.for.body.i334.backedge_crit_edge, %for.inc.i345.for.body.i334.backedge_crit_edge
  %i49.0.be = phi i32 [ %inc.i343, %for.inc.i345.for.body.i334.backedge_crit_edge ], [ %inc99, %if.end96.for.body.i334.backedge_crit_edge ]
  br label %for.body.i334

land.lhs.true63:                                  ; preds = %cond.end11.i342
  %arrayidx59 = getelementptr i32, ptr %arrayidx51, i32 %i49.0
  %50 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx59, align 4
  %ops.i348 = getelementptr inbounds %struct.rsnd_mod, ptr %49, i32 0, i32 2
  %52 = ptrtoint ptr %ops.i348 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i348, align 4
  %get_status.i349 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %53, i32 0, i32 16
  %54 = ptrtoint ptr %get_status.i349 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %get_status.i349, align 4
  %call.i350 = tail call ptr %55(ptr noundef nonnull %49, ptr noundef %io, i32 noundef %51) #17
  %56 = ptrtoint ptr %ops.i348 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i348, align 4
  %remove = getelementptr inbounds %struct.rsnd_mod_ops, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %remove, align 4
  %tobool65.not = icmp eq ptr %59, null
  br i1 %tobool65.not, label %land.lhs.true63.if.end96_crit_edge, label %lor.lhs.false79

land.lhs.true63.if.end96_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end96

lor.lhs.false79:                                  ; preds = %land.lhs.true63
  %call69 = tail call i32 %59(ptr noundef nonnull %49, ptr noundef %io, ptr noundef %priv) #17
  %60 = zext i32 %call69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %call69, label %do.end94 [
    i32 0, label %lor.lhs.false79.if.end96_crit_edge
    i32 -517, label %lor.lhs.false79.if.end96_crit_edge551
  ], !prof !310

lor.lhs.false79.if.end96_crit_edge551:            ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end96

lor.lhs.false79.if.end96_crit_edge:               ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end96

do.end94:                                         ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #19
  %call95 = tail call ptr @rsnd_mod_name(ptr noundef nonnull %49)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.56, ptr noundef %call95, ptr noundef nonnull @.str.58, i32 noundef %call69, i32 noundef 1) #20
  br label %if.end96

if.end96:                                         ; preds = %do.end94, %lor.lhs.false79.if.end96_crit_edge, %lor.lhs.false79.if.end96_crit_edge551, %land.lhs.true63.if.end96_crit_edge
  %inc99 = add i32 %i49.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %inc99)
  %cmp28.i333 = icmp slt i32 %inc99, 13
  br i1 %cmp28.i333, label %if.end96.for.body.i334.backedge_crit_edge, label %if.end96.for.body.i355.preheader_crit_edge

if.end96.for.body.i355.preheader_crit_edge:       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i355.preheader

if.end96.for.body.i334.backedge_crit_edge:        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i334.backedge

for.body.i355.preheader:                          ; preds = %if.end96.for.body.i355.preheader_crit_edge, %for.inc.i345.for.body.i355.preheader_crit_edge
  br label %for.body.i355

for.body.i355:                                    ; preds = %for.body.i355.backedge, %for.body.i355.preheader
  %i36.0 = phi i32 [ 0, %for.body.i355.preheader ], [ %i36.0.be, %for.body.i355.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %i36.0)
  %cmp6.i357 = icmp ult i32 %i36.0, 13
  br i1 %cmp6.i357, label %cond.end11.i361, label %for.body.i355.for.inc.i364_crit_edge

for.body.i355.for.inc.i364_crit_edge:             ; preds = %for.body.i355
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i364

cond.end11.i361:                                  ; preds = %for.body.i355
  %arrayidx9.i359 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 %i36.0
  %61 = ptrtoint ptr %arrayidx9.i359 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx9.i359, align 4
  %tobool13.not.i360 = icmp eq ptr %62, null
  br i1 %tobool13.not.i360, label %cond.end11.i361.for.inc.i364_crit_edge, label %for.body105

cond.end11.i361.for.inc.i364_crit_edge:           ; preds = %cond.end11.i361
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i364

for.inc.i364:                                     ; preds = %cond.end11.i361.for.inc.i364_crit_edge, %for.body.i355.for.inc.i364_crit_edge
  %inc.i362 = add i32 %i36.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %inc.i362)
  %exitcond.not.i363 = icmp eq i32 %inc.i362, 13
  br i1 %exitcond.not.i363, label %for.inc.i364.for.end108_crit_edge, label %for.inc.i364.for.body.i355.backedge_crit_edge

for.inc.i364.for.body.i355.backedge_crit_edge:    ; preds = %for.inc.i364
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i355.backedge

for.inc.i364.for.end108_crit_edge:                ; preds = %for.inc.i364
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end108

for.body.i355.backedge:                           ; preds = %for.body105.for.body.i355.backedge_crit_edge, %for.inc.i364.for.body.i355.backedge_crit_edge
  %i36.0.be = phi i32 [ %inc.i362, %for.inc.i364.for.body.i355.backedge_crit_edge ], [ %inc107, %for.body105.for.body.i355.backedge_crit_edge ]
  br label %for.body.i355

for.body105:                                      ; preds = %cond.end11.i361
  %63 = ptrtoint ptr %arrayidx9.i359 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %arrayidx9.i359, align 4
  %inc107 = add i32 %i36.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %inc107)
  %cmp28.i354 = icmp slt i32 %inc107, 13
  br i1 %cmp28.i354, label %for.body105.for.body.i355.backedge_crit_edge, label %for.body105.for.end108_crit_edge

for.body105.for.end108_crit_edge:                 ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end108

for.body105.for.body.i355.backedge_crit_edge:     ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i355.backedge

for.end108:                                       ; preds = %for.body105.for.end108_crit_edge, %for.inc.i364.for.end108_crit_edge
  %call109 = tail call i32 @rsnd_dai_connect(ptr noundef %39, ptr noundef %io, i32 noundef 11)
  %64 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rdai, align 4
  %priv112 = getelementptr inbounds %struct.rsnd_dai, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %priv112 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %priv112, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %dev114 = getelementptr inbounds %struct.platform_device, ptr %69, i32 0, i32 3
  %playback118 = getelementptr inbounds %struct.rsnd_dai, ptr %65, i32 0, i32 1
  %cmp119 = icmp eq ptr %playback118, %io
  %conv120 = zext i1 %cmp119 to i32
  %arrayidx124 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %conv120
  %tobool.not.i368 = icmp eq ptr %arrayidx124, null
  br label %for.body.i370

for.body.i370:                                    ; preds = %for.body.i370.backedge, %for.end108
  %i122.0 = phi i32 [ 0, %for.end108 ], [ %i122.0.be, %for.body.i370.backedge ]
  br i1 %tobool.not.i368, label %for.body.i370.cond.end4.i375_crit_edge, label %cond.true2.i372

for.body.i370.cond.end4.i375_crit_edge:           ; preds = %for.body.i370
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end4.i375

cond.true2.i372:                                  ; preds = %for.body.i370
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i371 = getelementptr i32, ptr %arrayidx124, i32 %i122.0
  %70 = ptrtoint ptr %arrayidx.i371 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i371, align 4
  br label %cond.end4.i375

cond.end4.i375:                                   ; preds = %cond.true2.i372, %for.body.i370.cond.end4.i375_crit_edge
  %cond5.i373 = phi i32 [ %71, %cond.true2.i372 ], [ %i122.0, %for.body.i370.cond.end4.i375_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %cond5.i373)
  %cmp6.i374 = icmp ult i32 %cond5.i373, 13
  br i1 %cmp6.i374, label %cond.end11.i378, label %cond.end4.i375.for.inc.i381_crit_edge

cond.end4.i375.for.inc.i381_crit_edge:            ; preds = %cond.end4.i375
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i381

cond.end11.i378:                                  ; preds = %cond.end4.i375
  %arrayidx9.i376 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 %cond5.i373
  %72 = ptrtoint ptr %arrayidx9.i376 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx9.i376, align 4
  %tobool13.not.i377 = icmp eq ptr %73, null
  br i1 %tobool13.not.i377, label %cond.end11.i378.for.inc.i381_crit_edge, label %land.lhs.true136

cond.end11.i378.for.inc.i381_crit_edge:           ; preds = %cond.end11.i378
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i381

for.inc.i381:                                     ; preds = %cond.end11.i378.for.inc.i381_crit_edge, %cond.end4.i375.for.inc.i381_crit_edge
  %inc.i379 = add i32 %i122.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %inc.i379)
  %exitcond.not.i380 = icmp eq i32 %inc.i379, 13
  br i1 %exitcond.not.i380, label %for.inc.i381.for.end173_crit_edge, label %for.inc.i381.for.body.i370.backedge_crit_edge

for.inc.i381.for.body.i370.backedge_crit_edge:    ; preds = %for.inc.i381
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i370.backedge

for.inc.i381.for.end173_crit_edge:                ; preds = %for.inc.i381
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end173

for.body.i370.backedge:                           ; preds = %if.end169.for.body.i370.backedge_crit_edge, %for.inc.i381.for.body.i370.backedge_crit_edge
  %i122.0.be = phi i32 [ %inc.i379, %for.inc.i381.for.body.i370.backedge_crit_edge ], [ %inc172, %if.end169.for.body.i370.backedge_crit_edge ]
  br label %for.body.i370

land.lhs.true136:                                 ; preds = %cond.end11.i378
  %arrayidx132 = getelementptr i32, ptr %arrayidx124, i32 %i122.0
  %74 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx132, align 4
  %ops.i384 = getelementptr inbounds %struct.rsnd_mod, ptr %73, i32 0, i32 2
  %76 = ptrtoint ptr %ops.i384 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops.i384, align 4
  %get_status.i385 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %77, i32 0, i32 16
  %78 = ptrtoint ptr %get_status.i385 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %get_status.i385, align 4
  %call.i386 = tail call ptr %79(ptr noundef nonnull %73, ptr noundef %io, i32 noundef %75) #17
  %80 = ptrtoint ptr %ops.i384 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops.i384, align 4
  %fallback = getelementptr inbounds %struct.rsnd_mod_ops, ptr %81, i32 0, i32 12
  %82 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fallback, align 4
  %tobool138.not = icmp eq ptr %83, null
  br i1 %tobool138.not, label %land.lhs.true136.if.end169_crit_edge, label %lor.lhs.false152

land.lhs.true136.if.end169_crit_edge:             ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end169

lor.lhs.false152:                                 ; preds = %land.lhs.true136
  %call142 = tail call i32 %83(ptr noundef nonnull %73, ptr noundef %io, ptr noundef %priv) #17
  %84 = zext i32 %call142 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %call142, label %do.end167 [
    i32 0, label %lor.lhs.false152.if.end169_crit_edge
    i32 -517, label %lor.lhs.false152.if.end169_crit_edge552
  ], !prof !310

lor.lhs.false152.if.end169_crit_edge552:          ; preds = %lor.lhs.false152
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end169

lor.lhs.false152.if.end169_crit_edge:             ; preds = %lor.lhs.false152
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end169

do.end167:                                        ; preds = %lor.lhs.false152
  call void @__sanitizer_cov_trace_pc() #19
  %call168 = tail call ptr @rsnd_mod_name(ptr noundef nonnull %73)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev114, ptr noundef nonnull @.str.56, ptr noundef %call168, ptr noundef nonnull @.str.120, i32 noundef %call142, i32 noundef 1) #20
  br label %if.end169

if.end169:                                        ; preds = %do.end167, %lor.lhs.false152.if.end169_crit_edge, %lor.lhs.false152.if.end169_crit_edge552, %land.lhs.true136.if.end169_crit_edge
  %inc172 = add i32 %i122.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %inc172)
  %cmp28.i369 = icmp slt i32 %inc172, 13
  br i1 %cmp28.i369, label %if.end169.for.body.i370.backedge_crit_edge, label %if.end169.for.end173_crit_edge

if.end169.for.end173_crit_edge:                   ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end173

if.end169.for.body.i370.backedge_crit_edge:       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i370.backedge

for.end173:                                       ; preds = %if.end169.for.end173_crit_edge, %for.inc.i381.for.end173_crit_edge
  %85 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rdai, align 4
  %priv177 = getelementptr inbounds %struct.rsnd_dai, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %priv177 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %priv177, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %dev179 = getelementptr inbounds %struct.platform_device, ptr %90, i32 0, i32 3
  %playback183 = getelementptr inbounds %struct.rsnd_dai, ptr %86, i32 0, i32 1
  %cmp184 = icmp eq ptr %playback183, %io
  %conv185 = zext i1 %cmp184 to i32
  %arrayidx189 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %conv185
  %tobool.not.i390 = icmp eq ptr %arrayidx189, null
  br label %for.body.i392.preheader

for.body.i392.preheader:                          ; preds = %if.end235.for.body.i392.preheader_crit_edge, %for.end173
  %ret186.0493 = phi i32 [ 0, %for.end173 ], [ %or236, %if.end235.for.body.i392.preheader_crit_edge ]
  %storemerge323492 = phi i32 [ 0, %for.end173 ], [ %inc238, %if.end235.for.body.i392.preheader_crit_edge ]
  br label %for.body.i392

for.body.i392:                                    ; preds = %for.inc.i403.for.body.i392_crit_edge, %for.body.i392.preheader
  %i187.0 = phi i32 [ %inc.i401, %for.inc.i403.for.body.i392_crit_edge ], [ %storemerge323492, %for.body.i392.preheader ]
  br i1 %tobool.not.i390, label %for.body.i392.cond.end4.i397_crit_edge, label %cond.true2.i394

for.body.i392.cond.end4.i397_crit_edge:           ; preds = %for.body.i392
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end4.i397

cond.true2.i394:                                  ; preds = %for.body.i392
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i393 = getelementptr i32, ptr %arrayidx189, i32 %i187.0
  %91 = ptrtoint ptr %arrayidx.i393 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i393, align 4
  br label %cond.end4.i397

cond.end4.i397:                                   ; preds = %cond.true2.i394, %for.body.i392.cond.end4.i397_crit_edge
  %cond5.i395 = phi i32 [ %92, %cond.true2.i394 ], [ %i187.0, %for.body.i392.cond.end4.i397_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %cond5.i395)
  %cmp6.i396 = icmp ult i32 %cond5.i395, 13
  br i1 %cmp6.i396, label %cond.end11.i400, label %cond.end4.i397.for.inc.i403_crit_edge

cond.end4.i397.for.inc.i403_crit_edge:            ; preds = %cond.end4.i397
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i403

cond.end11.i400:                                  ; preds = %cond.end4.i397
  %arrayidx9.i398 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 %cond5.i395
  %93 = ptrtoint ptr %arrayidx9.i398 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx9.i398, align 4
  %tobool13.not.i399 = icmp eq ptr %94, null
  br i1 %tobool13.not.i399, label %cond.end11.i400.for.inc.i403_crit_edge, label %land.lhs.true201

cond.end11.i400.for.inc.i403_crit_edge:           ; preds = %cond.end11.i400
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i403

for.inc.i403:                                     ; preds = %cond.end11.i400.for.inc.i403_crit_edge, %cond.end4.i397.for.inc.i403_crit_edge
  %inc.i401 = add i32 %i187.0, 1
  %exitcond.not.i402 = icmp eq i32 %inc.i401, 13
  br i1 %exitcond.not.i402, label %for.inc.i403.if.end241_crit_edge, label %for.inc.i403.for.body.i392_crit_edge

for.inc.i403.for.body.i392_crit_edge:             ; preds = %for.inc.i403
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i392

for.inc.i403.if.end241_crit_edge:                 ; preds = %for.inc.i403
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end241

land.lhs.true201:                                 ; preds = %cond.end11.i400
  %arrayidx197 = getelementptr i32, ptr %arrayidx189, i32 %i187.0
  %95 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx197, align 4
  %ops.i406 = getelementptr inbounds %struct.rsnd_mod, ptr %94, i32 0, i32 2
  %97 = ptrtoint ptr %ops.i406 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ops.i406, align 4
  %get_status.i407 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %98, i32 0, i32 16
  %99 = ptrtoint ptr %get_status.i407 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %get_status.i407, align 4
  %call.i408 = tail call ptr %100(ptr noundef nonnull %94, ptr noundef %io, i32 noundef %96) #17
  %101 = ptrtoint ptr %ops.i406 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ops.i406, align 4
  %probe203 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %probe203 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %probe203, align 4
  %tobool204.not = icmp eq ptr %104, null
  br i1 %tobool204.not, label %land.lhs.true201.if.end235_crit_edge, label %lor.lhs.false218

land.lhs.true201.if.end235_crit_edge:             ; preds = %land.lhs.true201
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end235

lor.lhs.false218:                                 ; preds = %land.lhs.true201
  %call208 = tail call i32 %104(ptr noundef nonnull %94, ptr noundef %io, ptr noundef %priv) #17
  %105 = zext i32 %call208 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %call208, label %do.end233 [
    i32 0, label %lor.lhs.false218.if.end235_crit_edge
    i32 -517, label %if.end235.fold.split
  ], !prof !310

lor.lhs.false218.if.end235_crit_edge:             ; preds = %lor.lhs.false218
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end235

do.end233:                                        ; preds = %lor.lhs.false218
  call void @__sanitizer_cov_trace_pc() #19
  %call234 = tail call ptr @rsnd_mod_name(ptr noundef nonnull %94)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev179, ptr noundef nonnull @.str.56, ptr noundef %call234, ptr noundef nonnull @.str.115, i32 noundef %call208, i32 noundef 1) #20
  br label %if.end235

if.end235.fold.split:                             ; preds = %lor.lhs.false218
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end235

if.end235:                                        ; preds = %if.end235.fold.split, %do.end233, %lor.lhs.false218.if.end235_crit_edge, %land.lhs.true201.if.end235_crit_edge
  %tmp195.0468 = phi i32 [ %call208, %do.end233 ], [ %call208, %lor.lhs.false218.if.end235_crit_edge ], [ 0, %land.lhs.true201.if.end235_crit_edge ], [ -517, %if.end235.fold.split ]
  %or236 = or i32 %tmp195.0468, %ret186.0493
  %inc238 = add i32 %i187.0, 1
  %cmp28.i391 = icmp slt i32 %inc238, 13
  br i1 %cmp28.i391, label %if.end235.for.body.i392.preheader_crit_edge, label %if.end235.if.end241_crit_edge

if.end235.if.end241_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end241

if.end235.for.body.i392.preheader_crit_edge:      ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i392.preheader

if.end241:                                        ; preds = %if.end235.if.end241_crit_edge, %for.inc.i403.if.end241_crit_edge, %for.end.if.end241_crit_edge
  %ret.0 = phi i32 [ %ret4.0486, %for.end.if.end241_crit_edge ], [ %ret186.0493, %for.inc.i403.if.end241_crit_edge ], [ %or236, %if.end235.if.end241_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_adg_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_get_endpoint_count(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__rsnd_dai_probe(ptr noundef %priv, ptr noundef %dai_np, i32 noundef %dai_i) unnamed_addr #0 align 64 {
entry:
  %node_name.i.i255 = alloca [16 x i8], align 1
  %node_name.i.i214 = alloca [16 x i8], align 1
  %node_name.i.i173 = alloca [16 x i8], align 1
  %node_name.i.i = alloca [16 x i8], align 1
  %args.i164 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dai_i)
  %cmp.i = icmp slt i32 %dai_i, 0
  br i1 %cmp.i, label %entry.rsnd_daidrv_get.exit_crit_edge, label %lor.lhs.false.i

entry.rsnd_daidrv_get.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_daidrv_get.exit

lor.lhs.false.i:                                  ; preds = %entry
  %rdai_nr.i = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 22
  %2 = ptrtoint ptr %rdai_nr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rdai_nr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %dai_i)
  %cmp1.not.i = icmp sgt i32 %3, %dai_i
  br i1 %cmp1.not.i, label %if.end.i, label %lor.lhs.false.i.lor.lhs.false.i155_crit_edge

lor.lhs.false.i.lor.lhs.false.i155_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false.i155

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  %rdai.i = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 21
  %4 = ptrtoint ptr %rdai.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdai.i, align 4
  %add.ptr.i = getelementptr %struct.rsnd_dai, ptr %5, i32 %dai_i
  br label %lor.lhs.false.i155

lor.lhs.false.i155:                               ; preds = %if.end.i, %lor.lhs.false.i.lor.lhs.false.i155_crit_edge
  %retval.0.i151.ph = phi ptr [ null, %lor.lhs.false.i.lor.lhs.false.i155_crit_edge ], [ %add.ptr.i, %if.end.i ]
  %6 = ptrtoint ptr %rdai_nr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rdai_nr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %dai_i)
  %cmp1.not.i154 = icmp sgt i32 %7, %dai_i
  br i1 %cmp1.not.i154, label %if.end.i157, label %lor.lhs.false.i155.rsnd_daidrv_get.exit_crit_edge

lor.lhs.false.i155.rsnd_daidrv_get.exit_crit_edge: ; preds = %lor.lhs.false.i155
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_daidrv_get.exit

if.end.i157:                                      ; preds = %lor.lhs.false.i155
  call void @__sanitizer_cov_trace_pc() #19
  %daidrv.i = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 20
  %8 = ptrtoint ptr %daidrv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %daidrv.i, align 4
  %add.ptr.i156 = getelementptr %struct.snd_soc_dai_driver, ptr %9, i32 %dai_i
  br label %rsnd_daidrv_get.exit

rsnd_daidrv_get.exit:                             ; preds = %if.end.i157, %lor.lhs.false.i155.rsnd_daidrv_get.exit_crit_edge, %entry.rsnd_daidrv_get.exit_crit_edge
  %retval.0.i151298 = phi ptr [ %retval.0.i151.ph, %if.end.i157 ], [ %retval.0.i151.ph, %lor.lhs.false.i155.rsnd_daidrv_get.exit_crit_edge ], [ null, %entry.rsnd_daidrv_get.exit_crit_edge ]
  %retval.0.i158 = phi ptr [ %add.ptr.i156, %if.end.i157 ], [ null, %lor.lhs.false.i155.rsnd_daidrv_get.exit_crit_edge ], [ null, %entry.rsnd_daidrv_get.exit_crit_edge ]
  %playback = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i151298, i32 0, i32 1
  %capture = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i151298, i32 0, i32 2
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %retval.0.i151298, i32 noundef 16, ptr noundef nonnull @.str.62, i32 noundef %dai_i)
  %priv4 = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i151298, i32 0, i32 3
  %10 = ptrtoint ptr %priv4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %priv, ptr %priv4, align 4
  %11 = ptrtoint ptr %retval.0.i158 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %retval.0.i151298, ptr %retval.0.i158, align 8
  %ops = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %retval.0.i158, i32 0, i32 8
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @rsnd_soc_dai_ops, ptr %ops, align 8
  %pcm_new = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %retval.0.i158, i32 0, i32 7
  %13 = ptrtoint ptr %pcm_new to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @rsnd_pcm_new, ptr %pcm_new, align 4
  %call10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %playback, i32 noundef 16, ptr noundef nonnull @.str.63, i32 noundef %dai_i)
  %playback11 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %retval.0.i158, i32 0, i32 11
  %rates = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %retval.0.i158, i32 0, i32 11, i32 2
  %14 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8190, ptr %rates, align 8
  %formats = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %retval.0.i158, i32 0, i32 11, i32 1
  %15 = ptrtoint ptr %formats to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 69, ptr %formats, align 8
  %channels_min = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %retval.0.i158, i32 0, i32 11, i32 5
  %16 = ptrtoint ptr %channels_min to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %channels_min, align 4
  %channels_max = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %retval.0.i158, i32 0, i32 11, i32 6
  %17 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8, ptr %channels_max, align 8
  %18 = ptrtoint ptr %playback11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %playback, ptr %playback11, align 8
  %call20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %capture, i32 noundef 16, ptr noundef nonnull @.str.64, i32 noundef %dai_i)
  %capture21 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %retval.0.i158, i32 0, i32 10
  %rates22 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %retval.0.i158, i32 0, i32 10, i32 2
  %19 = ptrtoint ptr %rates22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8190, ptr %rates22, align 8
  %formats24 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %retval.0.i158, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %formats24 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 69, ptr %formats24, align 8
  %channels_min26 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %retval.0.i158, i32 0, i32 10, i32 5
  %21 = ptrtoint ptr %channels_min26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %channels_min26, align 4
  %channels_max28 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %retval.0.i158, i32 0, i32 10, i32 6
  %22 = ptrtoint ptr %channels_max28 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %channels_max28, align 8
  %23 = ptrtoint ptr %capture21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %capture, ptr %capture21, align 8
  %rdai33 = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i151298, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %rdai33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.0.i151298, ptr %rdai33, align 4
  %rdai34 = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i151298, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %rdai34 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %retval.0.i151298, ptr %rdai34, align 4
  %max_channels1.i = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i151298, i32 0, i32 5
  %26 = ptrtoint ptr %max_channels1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %max_channels1.i, align 4
  %ssi_lane1.i = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i151298, i32 0, i32 6
  %27 = ptrtoint ptr %ssi_lane1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %ssi_lane1.i, align 4
  %chan_width.i = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i151298, i32 0, i32 7
  %28 = ptrtoint ptr %chan_width.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 32, ptr %chan_width.i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %rsnd_daidrv_get.exit
  %io_i.0 = phi i32 [ 0, %rsnd_daidrv_get.exit ], [ %inc, %for.inc ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #17
  %29 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %dai_np, ptr noundef nonnull @.str.65, ptr noundef null, i32 noundef 0, i32 noundef %io_i.0, ptr noundef nonnull %args.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i162, label %for.cond.of_parse_phandle.exit_crit_edge

for.cond.of_parse_phandle.exit_crit_edge:         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %of_parse_phandle.exit

if.end.i162:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  %30 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i162, %for.cond.of_parse_phandle.exit_crit_edge
  %retval.0.i163 = phi ptr [ %31, %if.end.i162 ], [ null, %for.cond.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #17
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i164) #17
  %32 = call ptr @memset(ptr %args.i164, i32 255, i32 72)
  %call.i165 = call i32 @__of_parse_phandle_with_args(ptr noundef %dai_np, ptr noundef nonnull @.str.66, ptr noundef null, i32 noundef 0, i32 noundef %io_i.0, ptr noundef nonnull %args.i164) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %tobool.not.i166 = icmp eq i32 %call.i165, 0
  br i1 %tobool.not.i166, label %if.end.i167, label %of_parse_phandle.exit.of_parse_phandle.exit169_crit_edge

of_parse_phandle.exit.of_parse_phandle.exit169_crit_edge: ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %of_parse_phandle.exit169

if.end.i167:                                      ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #19
  %33 = ptrtoint ptr %args.i164 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %args.i164, align 4
  br label %of_parse_phandle.exit169

of_parse_phandle.exit169:                         ; preds = %if.end.i167, %of_parse_phandle.exit.of_parse_phandle.exit169_crit_edge
  %retval.0.i168 = phi ptr [ %34, %if.end.i167 ], [ null, %of_parse_phandle.exit.of_parse_phandle.exit169_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i164) #17
  %tobool.not = icmp eq ptr %retval.0.i163, null
  %tobool42.not = icmp eq ptr %retval.0.i168, null
  %or.cond = select i1 %tobool.not, i1 %tobool42.not, i1 false
  br i1 %or.cond, label %for.end, label %if.end

if.end:                                           ; preds = %of_parse_phandle.exit169
  call void @rsnd_parse_connect_ssi(ptr noundef %retval.0.i151298, ptr noundef %retval.0.i163, ptr noundef %retval.0.i168) #17
  call void @rsnd_parse_connect_ssiu(ptr noundef %retval.0.i151298, ptr noundef %retval.0.i163, ptr noundef %retval.0.i168) #17
  %35 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv4, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %38, i32 0, i32 3, i32 27
  %39 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %of_node, align 8
  %call46 = call ptr @of_get_child_by_name(ptr noundef %40, ptr noundef nonnull @.str.68) #17
  %41 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv4, align 4
  %tobool.not.i170 = icmp eq ptr %call46, null
  br i1 %tobool.not.i170, label %if.end.rsnd_parse_connect_common.exit_crit_edge, label %if.end.i172

if.end.rsnd_parse_connect_common.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_parse_connect_common.exit

if.end.i172:                                      ; preds = %if.end
  %call.i171 = call ptr @of_get_next_child(ptr noundef nonnull %call46, ptr noundef null) #17
  %cmp.not32.i = icmp eq ptr %call.i171, null
  br i1 %cmp.not32.i, label %if.end.i172.for.end.i_crit_edge, label %if.end.i172.for.body.i_crit_edge

if.end.i172.for.body.i_crit_edge:                 ; preds = %if.end.i172
  br label %for.body.i

if.end.i172.for.end.i_crit_edge:                  ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.i:                                       ; preds = %if.end14.i.for.body.i_crit_edge, %if.end.i172.for.body.i_crit_edge
  %i.035.i = phi i32 [ %inc.i, %if.end14.i.for.body.i_crit_edge ], [ 0, %if.end.i172.for.body.i_crit_edge ]
  %np.033.i = phi ptr [ %call15.i, %if.end14.i.for.body.i_crit_edge ], [ %call.i171, %if.end.i172.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %node_name.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %i.035.i)
  %cmp8.i.i = icmp slt i32 %i.035.i, 64
  %43 = call ptr @memset(ptr %node_name.i.i, i32 255, i32 16)
  br i1 %cmp8.i.i, label %for.body.lr.ph.i.i, label %for.body.i.rsnd_node_fixed_index.exit.i_crit_edge

for.body.i.rsnd_node_fixed_index.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_node_fixed_index.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.body.i
  %full_name.i.i.i = getelementptr inbounds %struct.device_node, ptr %np.033.i, i32 0, i32 2
  br label %of_node_full_name.exit.i.i

of_node_full_name.exit.i.i:                       ; preds = %for.inc.i.i.of_node_full_name.exit.i.i_crit_edge, %for.body.lr.ph.i.i
  %idx.addr.09.i.i = phi i32 [ %i.035.i, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.of_node_full_name.exit.i.i_crit_edge ]
  %call.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %node_name.i.i, i32 noundef 16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.67, i32 noundef %idx.addr.09.i.i) #17
  %44 = ptrtoint ptr %full_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %full_name.i.i.i, align 4
  %call3.i.i = call i32 @strncmp(ptr noundef nonnull %node_name.i.i, ptr noundef %45, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %of_node_full_name.exit.i.i.rsnd_node_fixed_index.exit.i_crit_edge, label %for.inc.i.i

of_node_full_name.exit.i.i.rsnd_node_fixed_index.exit.i_crit_edge: ; preds = %of_node_full_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_node_fixed_index.exit.i

for.inc.i.i:                                      ; preds = %of_node_full_name.exit.i.i
  %inc.i.i = add i32 %idx.addr.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %for.inc.i.i.rsnd_node_fixed_index.exit.i_crit_edge, label %for.inc.i.i.of_node_full_name.exit.i.i_crit_edge

for.inc.i.i.of_node_full_name.exit.i.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %of_node_full_name.exit.i.i

for.inc.i.i.rsnd_node_fixed_index.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_node_fixed_index.exit.i

rsnd_node_fixed_index.exit.i:                     ; preds = %for.inc.i.i.rsnd_node_fixed_index.exit.i_crit_edge, %of_node_full_name.exit.i.i.rsnd_node_fixed_index.exit.i_crit_edge, %for.body.i.rsnd_node_fixed_index.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -22, %for.body.i.rsnd_node_fixed_index.exit.i_crit_edge ], [ -22, %for.inc.i.i.rsnd_node_fixed_index.exit.i_crit_edge ], [ %idx.addr.09.i.i, %of_node_full_name.exit.i.i.rsnd_node_fixed_index.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %node_name.i.i) #17
  %call3.i = call ptr @rsnd_src_mod_get(ptr noundef %42, i32 noundef %retval.0.i.i) #17
  %cmp4.i = icmp eq ptr %np.033.i, %retval.0.i163
  br i1 %cmp4.i, label %if.then5.i, label %rsnd_node_fixed_index.exit.i.if.end8.i_crit_edge

rsnd_node_fixed_index.exit.i.if.end8.i_crit_edge: ; preds = %rsnd_node_fixed_index.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i

if.then5.i:                                       ; preds = %rsnd_node_fixed_index.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %type.i = getelementptr inbounds %struct.rsnd_mod, ptr %call3.i, i32 0, i32 1
  %46 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %type.i, align 4
  %call7.i = call i32 @rsnd_dai_connect(ptr noundef %call3.i, ptr noundef %playback, i32 noundef %47) #17
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %rsnd_node_fixed_index.exit.i.if.end8.i_crit_edge
  %cmp9.i = icmp eq ptr %np.033.i, %retval.0.i168
  br i1 %cmp9.i, label %if.then10.i, label %if.end8.i.if.end14.i_crit_edge

if.end8.i.if.end14.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  %type12.i = getelementptr inbounds %struct.rsnd_mod, ptr %call3.i, i32 0, i32 1
  %48 = ptrtoint ptr %type12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %type12.i, align 4
  %call13.i = call i32 @rsnd_dai_connect(ptr noundef %call3.i, ptr noundef %capture, i32 noundef %49) #17
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end14.i_crit_edge
  %inc.i = add i32 %retval.0.i.i, 1
  %call15.i = call ptr @of_get_next_child(ptr noundef nonnull %call46, ptr noundef nonnull %np.033.i) #17
  %cmp.not.i = icmp eq ptr %call15.i, null
  br i1 %cmp.not.i, label %if.end14.i.for.end.i_crit_edge, label %if.end14.i.for.body.i_crit_edge

if.end14.i.for.body.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

if.end14.i.for.end.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.end.i:                                        ; preds = %if.end14.i.for.end.i_crit_edge, %if.end.i172.for.end.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %call46) #17
  br label %rsnd_parse_connect_common.exit

rsnd_parse_connect_common.exit:                   ; preds = %for.end.i, %if.end.rsnd_parse_connect_common.exit_crit_edge
  %50 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv4, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %of_node50 = getelementptr inbounds %struct.platform_device, ptr %53, i32 0, i32 3, i32 27
  %54 = ptrtoint ptr %of_node50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %of_node50, align 8
  %call51 = call ptr @of_get_child_by_name(ptr noundef %55, ptr noundef nonnull @.str.70) #17
  %56 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv4, align 4
  %tobool.not.i175 = icmp eq ptr %call51, null
  br i1 %tobool.not.i175, label %rsnd_parse_connect_common.exit.rsnd_parse_connect_common.exit213_crit_edge, label %if.end.i178

rsnd_parse_connect_common.exit.rsnd_parse_connect_common.exit213_crit_edge: ; preds = %rsnd_parse_connect_common.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_parse_connect_common.exit213

if.end.i178:                                      ; preds = %rsnd_parse_connect_common.exit
  %call.i176 = call ptr @of_get_next_child(ptr noundef nonnull %call51, ptr noundef null) #17
  %cmp.not32.i177 = icmp eq ptr %call.i176, null
  br i1 %cmp.not32.i177, label %if.end.i178.for.end.i212_crit_edge, label %if.end.i178.for.body.i185_crit_edge

if.end.i178.for.body.i185_crit_edge:              ; preds = %if.end.i178
  br label %for.body.i185

if.end.i178.for.end.i212_crit_edge:               ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i212

for.body.i185:                                    ; preds = %if.end14.i211.for.body.i185_crit_edge, %if.end.i178.for.body.i185_crit_edge
  %i.035.i182 = phi i32 [ %inc.i208, %if.end14.i211.for.body.i185_crit_edge ], [ 0, %if.end.i178.for.body.i185_crit_edge ]
  %np.033.i183 = phi ptr [ %call15.i209, %if.end14.i211.for.body.i185_crit_edge ], [ %call.i176, %if.end.i178.for.body.i185_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %node_name.i.i173) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %i.035.i182)
  %cmp8.i.i184 = icmp slt i32 %i.035.i182, 64
  %58 = call ptr @memset(ptr %node_name.i.i173, i32 255, i32 16)
  br i1 %cmp8.i.i184, label %for.body.lr.ph.i.i187, label %for.body.i185.rsnd_node_fixed_index.exit.i199_crit_edge

for.body.i185.rsnd_node_fixed_index.exit.i199_crit_edge: ; preds = %for.body.i185
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_node_fixed_index.exit.i199

for.body.lr.ph.i.i187:                            ; preds = %for.body.i185
  %full_name.i.i.i186 = getelementptr inbounds %struct.device_node, ptr %np.033.i183, i32 0, i32 2
  br label %of_node_full_name.exit.i.i192

of_node_full_name.exit.i.i192:                    ; preds = %for.inc.i.i195.of_node_full_name.exit.i.i192_crit_edge, %for.body.lr.ph.i.i187
  %idx.addr.09.i.i188 = phi i32 [ %i.035.i182, %for.body.lr.ph.i.i187 ], [ %inc.i.i193, %for.inc.i.i195.of_node_full_name.exit.i.i192_crit_edge ]
  %call.i.i189 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %node_name.i.i173, i32 noundef 16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.69, i32 noundef %idx.addr.09.i.i188) #17
  %59 = ptrtoint ptr %full_name.i.i.i186 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %full_name.i.i.i186, align 4
  %call3.i.i190 = call i32 @strncmp(ptr noundef nonnull %node_name.i.i173, ptr noundef %60, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i190)
  %cmp4.i.i191 = icmp eq i32 %call3.i.i190, 0
  br i1 %cmp4.i.i191, label %of_node_full_name.exit.i.i192.rsnd_node_fixed_index.exit.i199_crit_edge, label %for.inc.i.i195

of_node_full_name.exit.i.i192.rsnd_node_fixed_index.exit.i199_crit_edge: ; preds = %of_node_full_name.exit.i.i192
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_node_fixed_index.exit.i199

for.inc.i.i195:                                   ; preds = %of_node_full_name.exit.i.i192
  %inc.i.i193 = add i32 %idx.addr.09.i.i188, 1
  %exitcond.not.i.i194 = icmp eq i32 %inc.i.i193, 64
  br i1 %exitcond.not.i.i194, label %for.inc.i.i195.rsnd_node_fixed_index.exit.i199_crit_edge, label %for.inc.i.i195.of_node_full_name.exit.i.i192_crit_edge

for.inc.i.i195.of_node_full_name.exit.i.i192_crit_edge: ; preds = %for.inc.i.i195
  call void @__sanitizer_cov_trace_pc() #19
  br label %of_node_full_name.exit.i.i192

for.inc.i.i195.rsnd_node_fixed_index.exit.i199_crit_edge: ; preds = %for.inc.i.i195
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_node_fixed_index.exit.i199

rsnd_node_fixed_index.exit.i199:                  ; preds = %for.inc.i.i195.rsnd_node_fixed_index.exit.i199_crit_edge, %of_node_full_name.exit.i.i192.rsnd_node_fixed_index.exit.i199_crit_edge, %for.body.i185.rsnd_node_fixed_index.exit.i199_crit_edge
  %retval.0.i.i196 = phi i32 [ -22, %for.body.i185.rsnd_node_fixed_index.exit.i199_crit_edge ], [ -22, %for.inc.i.i195.rsnd_node_fixed_index.exit.i199_crit_edge ], [ %idx.addr.09.i.i188, %of_node_full_name.exit.i.i192.rsnd_node_fixed_index.exit.i199_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %node_name.i.i173) #17
  %call3.i197 = call ptr @rsnd_ctu_mod_get(ptr noundef %57, i32 noundef %retval.0.i.i196) #17
  %cmp4.i198 = icmp eq ptr %np.033.i183, %retval.0.i163
  br i1 %cmp4.i198, label %if.then5.i202, label %rsnd_node_fixed_index.exit.i199.if.end8.i204_crit_edge

rsnd_node_fixed_index.exit.i199.if.end8.i204_crit_edge: ; preds = %rsnd_node_fixed_index.exit.i199
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i204

if.then5.i202:                                    ; preds = %rsnd_node_fixed_index.exit.i199
  call void @__sanitizer_cov_trace_pc() #19
  %type.i200 = getelementptr inbounds %struct.rsnd_mod, ptr %call3.i197, i32 0, i32 1
  %61 = ptrtoint ptr %type.i200 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %type.i200, align 4
  %call7.i201 = call i32 @rsnd_dai_connect(ptr noundef %call3.i197, ptr noundef %playback, i32 noundef %62) #17
  br label %if.end8.i204

if.end8.i204:                                     ; preds = %if.then5.i202, %rsnd_node_fixed_index.exit.i199.if.end8.i204_crit_edge
  %cmp9.i203 = icmp eq ptr %np.033.i183, %retval.0.i168
  br i1 %cmp9.i203, label %if.then10.i207, label %if.end8.i204.if.end14.i211_crit_edge

if.end8.i204.if.end14.i211_crit_edge:             ; preds = %if.end8.i204
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14.i211

if.then10.i207:                                   ; preds = %if.end8.i204
  call void @__sanitizer_cov_trace_pc() #19
  %type12.i205 = getelementptr inbounds %struct.rsnd_mod, ptr %call3.i197, i32 0, i32 1
  %63 = ptrtoint ptr %type12.i205 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %type12.i205, align 4
  %call13.i206 = call i32 @rsnd_dai_connect(ptr noundef %call3.i197, ptr noundef %capture, i32 noundef %64) #17
  br label %if.end14.i211

if.end14.i211:                                    ; preds = %if.then10.i207, %if.end8.i204.if.end14.i211_crit_edge
  %inc.i208 = add i32 %retval.0.i.i196, 1
  %call15.i209 = call ptr @of_get_next_child(ptr noundef nonnull %call51, ptr noundef nonnull %np.033.i183) #17
  %cmp.not.i210 = icmp eq ptr %call15.i209, null
  br i1 %cmp.not.i210, label %if.end14.i211.for.end.i212_crit_edge, label %if.end14.i211.for.body.i185_crit_edge

if.end14.i211.for.body.i185_crit_edge:            ; preds = %if.end14.i211
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i185

if.end14.i211.for.end.i212_crit_edge:             ; preds = %if.end14.i211
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i212

for.end.i212:                                     ; preds = %if.end14.i211.for.end.i212_crit_edge, %if.end.i178.for.end.i212_crit_edge
  call void @of_node_put(ptr noundef nonnull %call51) #17
  br label %rsnd_parse_connect_common.exit213

rsnd_parse_connect_common.exit213:                ; preds = %for.end.i212, %rsnd_parse_connect_common.exit.rsnd_parse_connect_common.exit213_crit_edge
  %65 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv4, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %of_node55 = getelementptr inbounds %struct.platform_device, ptr %68, i32 0, i32 3, i32 27
  %69 = ptrtoint ptr %of_node55 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %of_node55, align 8
  %call56 = call ptr @of_get_child_by_name(ptr noundef %70, ptr noundef nonnull @.str.72) #17
  %71 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %priv4, align 4
  %tobool.not.i216 = icmp eq ptr %call56, null
  br i1 %tobool.not.i216, label %rsnd_parse_connect_common.exit213.rsnd_parse_connect_common.exit254_crit_edge, label %if.end.i219

rsnd_parse_connect_common.exit213.rsnd_parse_connect_common.exit254_crit_edge: ; preds = %rsnd_parse_connect_common.exit213
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_parse_connect_common.exit254

if.end.i219:                                      ; preds = %rsnd_parse_connect_common.exit213
  %call.i217 = call ptr @of_get_next_child(ptr noundef nonnull %call56, ptr noundef null) #17
  %cmp.not32.i218 = icmp eq ptr %call.i217, null
  br i1 %cmp.not32.i218, label %if.end.i219.for.end.i253_crit_edge, label %if.end.i219.for.body.i226_crit_edge

if.end.i219.for.body.i226_crit_edge:              ; preds = %if.end.i219
  br label %for.body.i226

if.end.i219.for.end.i253_crit_edge:               ; preds = %if.end.i219
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i253

for.body.i226:                                    ; preds = %if.end14.i252.for.body.i226_crit_edge, %if.end.i219.for.body.i226_crit_edge
  %i.035.i223 = phi i32 [ %inc.i249, %if.end14.i252.for.body.i226_crit_edge ], [ 0, %if.end.i219.for.body.i226_crit_edge ]
  %np.033.i224 = phi ptr [ %call15.i250, %if.end14.i252.for.body.i226_crit_edge ], [ %call.i217, %if.end.i219.for.body.i226_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %node_name.i.i214) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %i.035.i223)
  %cmp8.i.i225 = icmp slt i32 %i.035.i223, 64
  %73 = call ptr @memset(ptr %node_name.i.i214, i32 255, i32 16)
  br i1 %cmp8.i.i225, label %for.body.lr.ph.i.i228, label %for.body.i226.rsnd_node_fixed_index.exit.i240_crit_edge

for.body.i226.rsnd_node_fixed_index.exit.i240_crit_edge: ; preds = %for.body.i226
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_node_fixed_index.exit.i240

for.body.lr.ph.i.i228:                            ; preds = %for.body.i226
  %full_name.i.i.i227 = getelementptr inbounds %struct.device_node, ptr %np.033.i224, i32 0, i32 2
  br label %of_node_full_name.exit.i.i233

of_node_full_name.exit.i.i233:                    ; preds = %for.inc.i.i236.of_node_full_name.exit.i.i233_crit_edge, %for.body.lr.ph.i.i228
  %idx.addr.09.i.i229 = phi i32 [ %i.035.i223, %for.body.lr.ph.i.i228 ], [ %inc.i.i234, %for.inc.i.i236.of_node_full_name.exit.i.i233_crit_edge ]
  %call.i.i230 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %node_name.i.i214, i32 noundef 16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.71, i32 noundef %idx.addr.09.i.i229) #17
  %74 = ptrtoint ptr %full_name.i.i.i227 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %full_name.i.i.i227, align 4
  %call3.i.i231 = call i32 @strncmp(ptr noundef nonnull %node_name.i.i214, ptr noundef %75, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i231)
  %cmp4.i.i232 = icmp eq i32 %call3.i.i231, 0
  br i1 %cmp4.i.i232, label %of_node_full_name.exit.i.i233.rsnd_node_fixed_index.exit.i240_crit_edge, label %for.inc.i.i236

of_node_full_name.exit.i.i233.rsnd_node_fixed_index.exit.i240_crit_edge: ; preds = %of_node_full_name.exit.i.i233
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_node_fixed_index.exit.i240

for.inc.i.i236:                                   ; preds = %of_node_full_name.exit.i.i233
  %inc.i.i234 = add i32 %idx.addr.09.i.i229, 1
  %exitcond.not.i.i235 = icmp eq i32 %inc.i.i234, 64
  br i1 %exitcond.not.i.i235, label %for.inc.i.i236.rsnd_node_fixed_index.exit.i240_crit_edge, label %for.inc.i.i236.of_node_full_name.exit.i.i233_crit_edge

for.inc.i.i236.of_node_full_name.exit.i.i233_crit_edge: ; preds = %for.inc.i.i236
  call void @__sanitizer_cov_trace_pc() #19
  br label %of_node_full_name.exit.i.i233

for.inc.i.i236.rsnd_node_fixed_index.exit.i240_crit_edge: ; preds = %for.inc.i.i236
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_node_fixed_index.exit.i240

rsnd_node_fixed_index.exit.i240:                  ; preds = %for.inc.i.i236.rsnd_node_fixed_index.exit.i240_crit_edge, %of_node_full_name.exit.i.i233.rsnd_node_fixed_index.exit.i240_crit_edge, %for.body.i226.rsnd_node_fixed_index.exit.i240_crit_edge
  %retval.0.i.i237 = phi i32 [ -22, %for.body.i226.rsnd_node_fixed_index.exit.i240_crit_edge ], [ -22, %for.inc.i.i236.rsnd_node_fixed_index.exit.i240_crit_edge ], [ %idx.addr.09.i.i229, %of_node_full_name.exit.i.i233.rsnd_node_fixed_index.exit.i240_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %node_name.i.i214) #17
  %call3.i238 = call ptr @rsnd_mix_mod_get(ptr noundef %72, i32 noundef %retval.0.i.i237) #17
  %cmp4.i239 = icmp eq ptr %np.033.i224, %retval.0.i163
  br i1 %cmp4.i239, label %if.then5.i243, label %rsnd_node_fixed_index.exit.i240.if.end8.i245_crit_edge

rsnd_node_fixed_index.exit.i240.if.end8.i245_crit_edge: ; preds = %rsnd_node_fixed_index.exit.i240
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i245

if.then5.i243:                                    ; preds = %rsnd_node_fixed_index.exit.i240
  call void @__sanitizer_cov_trace_pc() #19
  %type.i241 = getelementptr inbounds %struct.rsnd_mod, ptr %call3.i238, i32 0, i32 1
  %76 = ptrtoint ptr %type.i241 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %type.i241, align 4
  %call7.i242 = call i32 @rsnd_dai_connect(ptr noundef %call3.i238, ptr noundef %playback, i32 noundef %77) #17
  br label %if.end8.i245

if.end8.i245:                                     ; preds = %if.then5.i243, %rsnd_node_fixed_index.exit.i240.if.end8.i245_crit_edge
  %cmp9.i244 = icmp eq ptr %np.033.i224, %retval.0.i168
  br i1 %cmp9.i244, label %if.then10.i248, label %if.end8.i245.if.end14.i252_crit_edge

if.end8.i245.if.end14.i252_crit_edge:             ; preds = %if.end8.i245
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14.i252

if.then10.i248:                                   ; preds = %if.end8.i245
  call void @__sanitizer_cov_trace_pc() #19
  %type12.i246 = getelementptr inbounds %struct.rsnd_mod, ptr %call3.i238, i32 0, i32 1
  %78 = ptrtoint ptr %type12.i246 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %type12.i246, align 4
  %call13.i247 = call i32 @rsnd_dai_connect(ptr noundef %call3.i238, ptr noundef %capture, i32 noundef %79) #17
  br label %if.end14.i252

if.end14.i252:                                    ; preds = %if.then10.i248, %if.end8.i245.if.end14.i252_crit_edge
  %inc.i249 = add i32 %retval.0.i.i237, 1
  %call15.i250 = call ptr @of_get_next_child(ptr noundef nonnull %call56, ptr noundef nonnull %np.033.i224) #17
  %cmp.not.i251 = icmp eq ptr %call15.i250, null
  br i1 %cmp.not.i251, label %if.end14.i252.for.end.i253_crit_edge, label %if.end14.i252.for.body.i226_crit_edge

if.end14.i252.for.body.i226_crit_edge:            ; preds = %if.end14.i252
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i226

if.end14.i252.for.end.i253_crit_edge:             ; preds = %if.end14.i252
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i253

for.end.i253:                                     ; preds = %if.end14.i252.for.end.i253_crit_edge, %if.end.i219.for.end.i253_crit_edge
  call void @of_node_put(ptr noundef nonnull %call56) #17
  br label %rsnd_parse_connect_common.exit254

rsnd_parse_connect_common.exit254:                ; preds = %for.end.i253, %rsnd_parse_connect_common.exit213.rsnd_parse_connect_common.exit254_crit_edge
  %80 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %priv4, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %of_node60 = getelementptr inbounds %struct.platform_device, ptr %83, i32 0, i32 3, i32 27
  %84 = ptrtoint ptr %of_node60 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %of_node60, align 8
  %call61 = call ptr @of_get_child_by_name(ptr noundef %85, ptr noundef nonnull @.str.74) #17
  %86 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %priv4, align 4
  %tobool.not.i257 = icmp eq ptr %call61, null
  br i1 %tobool.not.i257, label %rsnd_parse_connect_common.exit254.for.inc_crit_edge, label %if.end.i260

rsnd_parse_connect_common.exit254.for.inc_crit_edge: ; preds = %rsnd_parse_connect_common.exit254
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end.i260:                                      ; preds = %rsnd_parse_connect_common.exit254
  %call.i258 = call ptr @of_get_next_child(ptr noundef nonnull %call61, ptr noundef null) #17
  %cmp.not32.i259 = icmp eq ptr %call.i258, null
  br i1 %cmp.not32.i259, label %if.end.i260.for.end.i294_crit_edge, label %if.end.i260.for.body.i267_crit_edge

if.end.i260.for.body.i267_crit_edge:              ; preds = %if.end.i260
  br label %for.body.i267

if.end.i260.for.end.i294_crit_edge:               ; preds = %if.end.i260
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i294

for.body.i267:                                    ; preds = %if.end14.i293.for.body.i267_crit_edge, %if.end.i260.for.body.i267_crit_edge
  %i.035.i264 = phi i32 [ %inc.i290, %if.end14.i293.for.body.i267_crit_edge ], [ 0, %if.end.i260.for.body.i267_crit_edge ]
  %np.033.i265 = phi ptr [ %call15.i291, %if.end14.i293.for.body.i267_crit_edge ], [ %call.i258, %if.end.i260.for.body.i267_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %node_name.i.i255) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %i.035.i264)
  %cmp8.i.i266 = icmp slt i32 %i.035.i264, 64
  %88 = call ptr @memset(ptr %node_name.i.i255, i32 255, i32 16)
  br i1 %cmp8.i.i266, label %for.body.lr.ph.i.i269, label %for.body.i267.rsnd_node_fixed_index.exit.i281_crit_edge

for.body.i267.rsnd_node_fixed_index.exit.i281_crit_edge: ; preds = %for.body.i267
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_node_fixed_index.exit.i281

for.body.lr.ph.i.i269:                            ; preds = %for.body.i267
  %full_name.i.i.i268 = getelementptr inbounds %struct.device_node, ptr %np.033.i265, i32 0, i32 2
  br label %of_node_full_name.exit.i.i274

of_node_full_name.exit.i.i274:                    ; preds = %for.inc.i.i277.of_node_full_name.exit.i.i274_crit_edge, %for.body.lr.ph.i.i269
  %idx.addr.09.i.i270 = phi i32 [ %i.035.i264, %for.body.lr.ph.i.i269 ], [ %inc.i.i275, %for.inc.i.i277.of_node_full_name.exit.i.i274_crit_edge ]
  %call.i.i271 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %node_name.i.i255, i32 noundef 16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.73, i32 noundef %idx.addr.09.i.i270) #17
  %89 = ptrtoint ptr %full_name.i.i.i268 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %full_name.i.i.i268, align 4
  %call3.i.i272 = call i32 @strncmp(ptr noundef nonnull %node_name.i.i255, ptr noundef %90, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i272)
  %cmp4.i.i273 = icmp eq i32 %call3.i.i272, 0
  br i1 %cmp4.i.i273, label %of_node_full_name.exit.i.i274.rsnd_node_fixed_index.exit.i281_crit_edge, label %for.inc.i.i277

of_node_full_name.exit.i.i274.rsnd_node_fixed_index.exit.i281_crit_edge: ; preds = %of_node_full_name.exit.i.i274
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_node_fixed_index.exit.i281

for.inc.i.i277:                                   ; preds = %of_node_full_name.exit.i.i274
  %inc.i.i275 = add i32 %idx.addr.09.i.i270, 1
  %exitcond.not.i.i276 = icmp eq i32 %inc.i.i275, 64
  br i1 %exitcond.not.i.i276, label %for.inc.i.i277.rsnd_node_fixed_index.exit.i281_crit_edge, label %for.inc.i.i277.of_node_full_name.exit.i.i274_crit_edge

for.inc.i.i277.of_node_full_name.exit.i.i274_crit_edge: ; preds = %for.inc.i.i277
  call void @__sanitizer_cov_trace_pc() #19
  br label %of_node_full_name.exit.i.i274

for.inc.i.i277.rsnd_node_fixed_index.exit.i281_crit_edge: ; preds = %for.inc.i.i277
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_node_fixed_index.exit.i281

rsnd_node_fixed_index.exit.i281:                  ; preds = %for.inc.i.i277.rsnd_node_fixed_index.exit.i281_crit_edge, %of_node_full_name.exit.i.i274.rsnd_node_fixed_index.exit.i281_crit_edge, %for.body.i267.rsnd_node_fixed_index.exit.i281_crit_edge
  %retval.0.i.i278 = phi i32 [ -22, %for.body.i267.rsnd_node_fixed_index.exit.i281_crit_edge ], [ -22, %for.inc.i.i277.rsnd_node_fixed_index.exit.i281_crit_edge ], [ %idx.addr.09.i.i270, %of_node_full_name.exit.i.i274.rsnd_node_fixed_index.exit.i281_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %node_name.i.i255) #17
  %call3.i279 = call ptr @rsnd_dvc_mod_get(ptr noundef %87, i32 noundef %retval.0.i.i278) #17
  %cmp4.i280 = icmp eq ptr %np.033.i265, %retval.0.i163
  br i1 %cmp4.i280, label %if.then5.i284, label %rsnd_node_fixed_index.exit.i281.if.end8.i286_crit_edge

rsnd_node_fixed_index.exit.i281.if.end8.i286_crit_edge: ; preds = %rsnd_node_fixed_index.exit.i281
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i286

if.then5.i284:                                    ; preds = %rsnd_node_fixed_index.exit.i281
  call void @__sanitizer_cov_trace_pc() #19
  %type.i282 = getelementptr inbounds %struct.rsnd_mod, ptr %call3.i279, i32 0, i32 1
  %91 = ptrtoint ptr %type.i282 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %type.i282, align 4
  %call7.i283 = call i32 @rsnd_dai_connect(ptr noundef %call3.i279, ptr noundef %playback, i32 noundef %92) #17
  br label %if.end8.i286

if.end8.i286:                                     ; preds = %if.then5.i284, %rsnd_node_fixed_index.exit.i281.if.end8.i286_crit_edge
  %cmp9.i285 = icmp eq ptr %np.033.i265, %retval.0.i168
  br i1 %cmp9.i285, label %if.then10.i289, label %if.end8.i286.if.end14.i293_crit_edge

if.end8.i286.if.end14.i293_crit_edge:             ; preds = %if.end8.i286
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14.i293

if.then10.i289:                                   ; preds = %if.end8.i286
  call void @__sanitizer_cov_trace_pc() #19
  %type12.i287 = getelementptr inbounds %struct.rsnd_mod, ptr %call3.i279, i32 0, i32 1
  %93 = ptrtoint ptr %type12.i287 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %type12.i287, align 4
  %call13.i288 = call i32 @rsnd_dai_connect(ptr noundef %call3.i279, ptr noundef %capture, i32 noundef %94) #17
  br label %if.end14.i293

if.end14.i293:                                    ; preds = %if.then10.i289, %if.end8.i286.if.end14.i293_crit_edge
  %inc.i290 = add i32 %retval.0.i.i278, 1
  %call15.i291 = call ptr @of_get_next_child(ptr noundef nonnull %call61, ptr noundef nonnull %np.033.i265) #17
  %cmp.not.i292 = icmp eq ptr %call15.i291, null
  br i1 %cmp.not.i292, label %if.end14.i293.for.end.i294_crit_edge, label %if.end14.i293.for.body.i267_crit_edge

if.end14.i293.for.body.i267_crit_edge:            ; preds = %if.end14.i293
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i267

if.end14.i293.for.end.i294_crit_edge:             ; preds = %if.end14.i293
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i294

for.end.i294:                                     ; preds = %if.end14.i293.for.end.i294_crit_edge, %if.end.i260.for.end.i294_crit_edge
  call void @of_node_put(ptr noundef nonnull %call61) #17
  br label %for.inc

for.inc:                                          ; preds = %for.end.i294, %rsnd_parse_connect_common.exit254.for.inc_crit_edge
  call void @of_node_put(ptr noundef %retval.0.i163) #17
  call void @of_node_put(ptr noundef %retval.0.i168) #17
  %inc = add i32 %io_i.0, 1
  br label %for.cond

for.end:                                          ; preds = %of_parse_phandle.exit169
  %arrayidx = getelementptr %struct.rsnd_dai, ptr %retval.0.i151298, i32 0, i32 2, i32 2, i32 11
  %95 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx, align 4
  %call63 = call i32 @__rsnd_ssi_is_pin_sharing(ptr noundef %96) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %lor.lhs.false, label %for.end.if.then69_crit_edge

for.end.if.then69_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then69

lor.lhs.false:                                    ; preds = %for.end
  %arrayidx66 = getelementptr %struct.rsnd_dai, ptr %retval.0.i151298, i32 0, i32 1, i32 2, i32 11
  %97 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx66, align 4
  %call67 = call i32 @__rsnd_ssi_is_pin_sharing(ptr noundef %98) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.if.then69_crit_edge

lor.lhs.false.if.then69_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then69

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

if.then69:                                        ; preds = %lor.lhs.false.if.then69_crit_edge, %for.end.if.then69_crit_edge
  %symmetric_rate = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %retval.0.i158, i32 0, i32 12
  %99 = ptrtoint ptr %symmetric_rate to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load = load i8, ptr %symmetric_rate, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %symmetric_rate, align 8
  br label %do.body

do.body:                                          ; preds = %if.then69, %lor.lhs.false.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__rsnd_dai_probe.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__rsnd_dai_probe, %if.then75)) #17
          to label %do.end [label %if.then75], !srcloc !309

if.then75:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx79 = getelementptr %struct.rsnd_dai, ptr %retval.0.i151298, i32 0, i32 1, i32 2, i32 11
  %100 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx79, align 4
  %tobool80.not = icmp eq ptr %101, null
  %cond = select i1 %tobool80.not, ptr @.str.78, ptr @.str.77
  %102 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx, align 4
  %tobool83.not = icmp eq ptr %103, null
  %cond84 = select i1 %tobool83.not, ptr @.str.79, ptr @.str.66
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__rsnd_dai_probe.__UNIQUE_ID_ddebug255, ptr noundef %dev1, ptr noundef nonnull @.str.76, ptr noundef %retval.0.i151298, ptr noundef nonnull %cond, ptr noundef nonnull %cond84) #17
  br label %do.end

do.end:                                           ; preds = %if.then75, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rsnd_parse_connect_graph(ptr nocapture noundef readonly %priv, ptr noundef %io, ptr noundef %endpoint) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %arrayidx = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_graph_get_remote_port_parent(ptr noundef %endpoint) #17
  %full_name = getelementptr inbounds %struct.device_node, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %full_name, align 4
  %call2 = tail call ptr @strstr(ptr noundef %5, ptr noundef nonnull @.str.106)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.if.end11_crit_edge, label %if.then4

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %flags = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 9
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %or = or i32 %7, 1
  store i32 %or, ptr %flags, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rsnd_parse_connect_graph.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rsnd_parse_connect_graph, %if.then9)) #17
          to label %if.end11 [label %if.then9], !srcloc !309

if.then9:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rsnd_parse_connect_graph.__UNIQUE_ID_ddebug253, ptr noundef %dev1, ptr noundef nonnull @.str.108, ptr noundef %io) #17
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then4, %if.end.if.end11_crit_edge
  %8 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %full_name, align 4
  %call13 = tail call ptr @strstr(ptr noundef %9, ptr noundef nonnull @.str.109)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end11.if.end36_crit_edge, label %if.then15

if.end11.if.end36_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  %flags16 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 9
  %10 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags16, align 4
  %or17 = or i32 %11, 2
  store i32 %or17, ptr %flags16, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rsnd_parse_connect_graph.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rsnd_parse_connect_graph, %if.then30)) #17
          to label %if.end36 [label %if.then30], !srcloc !309

if.then30:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rsnd_parse_connect_graph.__UNIQUE_ID_ddebug254, ptr noundef %dev1, ptr noundef nonnull @.str.110, ptr noundef %io) #17
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %if.then15, %if.end11.if.end36_crit_edge
  tail call fastcc void @rsnd_parse_tdm_split_mode(ptr noundef %priv, ptr noundef %io, ptr noundef %endpoint)
  tail call void @of_node_put(ptr noundef %call) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #15

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_pcm_new(ptr noundef %rtd, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp slt i32 %5, 0
  br i1 %cmp.i.i, label %entry.rsnd_dai_to_rdai.exit_crit_edge, label %lor.lhs.false.i.i

entry.rsnd_dai_to_rdai.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_dai_to_rdai.exit

lor.lhs.false.i.i:                                ; preds = %entry
  %rdai_nr.i.i = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 22
  %6 = ptrtoint ptr %rdai_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rdai_nr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp1.not.i.i = icmp sgt i32 %7, %5
  br i1 %cmp1.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge

lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_dai_to_rdai.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %rdai.i.i = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 21
  %8 = ptrtoint ptr %rdai.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdai.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.rsnd_dai, ptr %9, i32 %5
  br label %rsnd_dai_to_rdai.exit

rsnd_dai_to_rdai.exit:                            ; preds = %if.end.i.i, %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge, %entry.rsnd_dai_to_rdai.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge ], [ null, %entry.rsnd_dai_to_rdai.exit_crit_edge ]
  %playback = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 1
  %rdai1 = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %rdai1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rdai1, align 4
  %priv = getelementptr inbounds %struct.rsnd_dai, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %cmp = icmp eq ptr %11, %retval.0.i.i
  %conv = zext i1 %cmp to i32
  %arrayidx = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %conv
  %tobool.not.i = icmp eq ptr %arrayidx, null
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end35.for.body.i.preheader_crit_edge, %rsnd_dai_to_rdai.exit
  %ret7.0260 = phi i32 [ 0, %rsnd_dai_to_rdai.exit ], [ %or, %if.end35.for.body.i.preheader_crit_edge ]
  %storemerge259 = phi i32 [ 0, %rsnd_dai_to_rdai.exit ], [ %inc, %if.end35.for.body.i.preheader_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.0 = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %storemerge259, %for.body.i.preheader ]
  br i1 %tobool.not.i, label %for.body.i.cond.end4.i_crit_edge, label %cond.true2.i

for.body.i.cond.end4.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end4.i

cond.true2.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i = getelementptr i32, ptr %arrayidx, i32 %i.0
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  br label %cond.end4.i

cond.end4.i:                                      ; preds = %cond.true2.i, %for.body.i.cond.end4.i_crit_edge
  %cond5.i = phi i32 [ %17, %cond.true2.i ], [ %i.0, %for.body.i.cond.end4.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %cond5.i)
  %cmp6.i = icmp ult i32 %cond5.i, 13
  br i1 %cmp6.i, label %cond.end11.i, label %cond.end4.i.for.inc.i_crit_edge

cond.end4.i.for.inc.i_crit_edge:                  ; preds = %cond.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

cond.end11.i:                                     ; preds = %cond.end4.i
  %arrayidx9.i = getelementptr %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 1, i32 2, i32 %cond5.i
  %18 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx9.i, align 4
  %tobool13.not.i = icmp eq ptr %19, null
  br i1 %tobool13.not.i, label %cond.end11.i.for.inc.i_crit_edge, label %land.lhs.true

cond.end11.i.for.inc.i_crit_edge:                 ; preds = %cond.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.end11.i.for.inc.i_crit_edge, %cond.end4.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.0, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 13
  br i1 %exitcond.not.i, label %for.inc.i.for.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.for.end_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

land.lhs.true:                                    ; preds = %cond.end11.i
  %arrayidx11 = getelementptr i32, ptr %arrayidx, i32 %i.0
  %20 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx11, align 4
  %ops.i = getelementptr inbounds %struct.rsnd_mod, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %get_status.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %get_status.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_status.i, align 4
  %call.i = tail call ptr %25(ptr noundef nonnull %19, ptr noundef %playback, i32 noundef %21) #17
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %pcm_new = getelementptr inbounds %struct.rsnd_mod_ops, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %pcm_new to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pcm_new, align 4
  %tobool15.not = icmp eq ptr %29, null
  br i1 %tobool15.not, label %land.lhs.true.if.end35_crit_edge, label %lor.lhs.false

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call19 = tail call i32 %29(ptr noundef nonnull %19, ptr noundef %playback, ptr noundef %rtd) #17
  %30 = zext i32 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %call19, label %do.end [
    i32 0, label %lor.lhs.false.if.end35_crit_edge
    i32 -517, label %if.end35.fold.split
  ], !prof !310

lor.lhs.false.if.end35_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

do.end:                                           ; preds = %lor.lhs.false
  %31 = load i32, ptr @rsnd_mod_name.num, align 4
  %arrayidx.i173 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %31
  %inc.i174 = add i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i174)
  %cmp.i175 = icmp sgt i32 %inc.i174, 4
  %spec.store.select.i = select i1 %cmp.i175, i32 0, i32 %inc.i174
  store i32 %spec.store.select.i, ptr @rsnd_mod_name.num, align 4
  %32 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i, align 4
  %id_sub.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %33, i32 0, i32 18
  %34 = ptrtoint ptr %id_sub.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %id_sub.i, align 4
  %tobool.not.i177 = icmp eq ptr %35, null
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  %id.i24.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %33, i32 0, i32 17
  %38 = ptrtoint ptr %id.i24.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %id.i24.i, align 4
  %tobool.not.i25.i = icmp eq ptr %39, null
  br i1 %tobool.not.i177, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %do.end
  br i1 %tobool.not.i25.i, label %if.end.i.i178, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i = tail call i32 %39(ptr noundef nonnull %19) #17
  br label %rsnd_mod_id.exit.i

if.end.i.i178:                                    ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #19
  %40 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %19, align 4
  br label %rsnd_mod_id.exit.i

rsnd_mod_id.exit.i:                               ; preds = %if.end.i.i178, %if.then.i.i
  %retval.0.i.i179 = phi i32 [ %call.i.i, %if.then.i.i ], [ %41, %if.end.i.i178 ]
  %42 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i, align 4
  %id_sub.i.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %43, i32 0, i32 18
  %44 = ptrtoint ptr %id_sub.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %id_sub.i.i, align 4
  %tobool.not.i19.i = icmp eq ptr %45, null
  br i1 %tobool.not.i19.i, label %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge, label %if.then.i21.i

rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge: ; preds = %rsnd_mod_id.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_mod_id_sub.exit.i

if.then.i21.i:                                    ; preds = %rsnd_mod_id.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i20.i = tail call i32 %45(ptr noundef nonnull %19) #17
  br label %rsnd_mod_id_sub.exit.i

rsnd_mod_id_sub.exit.i:                           ; preds = %if.then.i21.i, %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge
  %retval.0.i22.i = phi i32 [ %call.i20.i, %if.then.i21.i ], [ 0, %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge ]
  %call5.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i173, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef %37, i32 noundef %retval.0.i.i179, i32 noundef %retval.0.i22.i) #17
  br label %rsnd_mod_name.exit

if.else.i:                                        ; preds = %do.end
  br i1 %tobool.not.i25.i, label %if.end.i28.i, label %if.then.i27.i

if.then.i27.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i26.i = tail call i32 %39(ptr noundef nonnull %19) #17
  br label %rsnd_mod_id.exit30.i

if.end.i28.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %46 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %19, align 4
  br label %rsnd_mod_id.exit30.i

rsnd_mod_id.exit30.i:                             ; preds = %if.end.i28.i, %if.then.i27.i
  %retval.0.i29.i = phi i32 [ %call.i26.i, %if.then.i27.i ], [ %47, %if.end.i28.i ]
  %call9.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i173, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef %37, i32 noundef %retval.0.i29.i) #17
  br label %rsnd_mod_name.exit

rsnd_mod_name.exit:                               ; preds = %rsnd_mod_id.exit30.i, %rsnd_mod_id_sub.exit.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.56, ptr noundef %arrayidx.i173, ptr noundef nonnull @.str.103, i32 noundef %call19, i32 noundef 1) #20
  br label %if.end35

if.end35.fold.split:                              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

if.end35:                                         ; preds = %if.end35.fold.split, %rsnd_mod_name.exit, %lor.lhs.false.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge
  %tmp.0236 = phi i32 [ %call19, %rsnd_mod_name.exit ], [ %call19, %lor.lhs.false.if.end35_crit_edge ], [ 0, %land.lhs.true.if.end35_crit_edge ], [ -517, %if.end35.fold.split ]
  %or = or i32 %tmp.0236, %ret7.0260
  %inc = add i32 %i.0, 1
  %cmp28.i = icmp slt i32 %inc, 13
  br i1 %cmp28.i, label %if.end35.for.body.i.preheader_crit_edge, label %if.end35.for.end_crit_edge

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.end35.for.body.i.preheader_crit_edge:          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.preheader

for.end:                                          ; preds = %if.end35.for.end_crit_edge, %for.inc.i.for.end_crit_edge
  %ret7.0258 = phi i32 [ %ret7.0260, %for.inc.i.for.end_crit_edge ], [ %or, %if.end35.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret7.0258)
  %tobool37.not = icmp eq i32 %ret7.0258, 0
  br i1 %tobool37.not, label %if.end39, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end39:                                         ; preds = %for.end
  %capture = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 2
  %rdai41 = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 2, i32 4
  %48 = ptrtoint ptr %rdai41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rdai41, align 4
  %priv42 = getelementptr inbounds %struct.rsnd_dai, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %priv42 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv42, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %dev44 = getelementptr inbounds %struct.platform_device, ptr %53, i32 0, i32 3
  %playback49 = getelementptr inbounds %struct.rsnd_dai, ptr %49, i32 0, i32 1
  %cmp51 = icmp eq ptr %playback49, %capture
  %conv52 = zext i1 %cmp51 to i32
  %arrayidx56 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %conv52
  %tobool.not.i180 = icmp eq ptr %arrayidx56, null
  br label %for.body.i182.preheader

for.body.i182.preheader:                          ; preds = %if.end105.for.body.i182.preheader_crit_edge, %if.end39
  %ret53.0262 = phi i32 [ 0, %if.end39 ], [ %or106, %if.end105.for.body.i182.preheader_crit_edge ]
  %storemerge171261 = phi i32 [ 0, %if.end39 ], [ %inc108, %if.end105.for.body.i182.preheader_crit_edge ]
  br label %for.body.i182

for.body.i182:                                    ; preds = %for.inc.i193.for.body.i182_crit_edge, %for.body.i182.preheader
  %i54.0 = phi i32 [ %inc.i191, %for.inc.i193.for.body.i182_crit_edge ], [ %storemerge171261, %for.body.i182.preheader ]
  br i1 %tobool.not.i180, label %for.body.i182.cond.end4.i187_crit_edge, label %cond.true2.i184

for.body.i182.cond.end4.i187_crit_edge:           ; preds = %for.body.i182
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end4.i187

cond.true2.i184:                                  ; preds = %for.body.i182
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i183 = getelementptr i32, ptr %arrayidx56, i32 %i54.0
  %54 = ptrtoint ptr %arrayidx.i183 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i183, align 4
  br label %cond.end4.i187

cond.end4.i187:                                   ; preds = %cond.true2.i184, %for.body.i182.cond.end4.i187_crit_edge
  %cond5.i185 = phi i32 [ %55, %cond.true2.i184 ], [ %i54.0, %for.body.i182.cond.end4.i187_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %cond5.i185)
  %cmp6.i186 = icmp ult i32 %cond5.i185, 13
  br i1 %cmp6.i186, label %cond.end11.i190, label %cond.end4.i187.for.inc.i193_crit_edge

cond.end4.i187.for.inc.i193_crit_edge:            ; preds = %cond.end4.i187
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i193

cond.end11.i190:                                  ; preds = %cond.end4.i187
  %arrayidx9.i188 = getelementptr %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 2, i32 2, i32 %cond5.i185
  %56 = ptrtoint ptr %arrayidx9.i188 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx9.i188, align 4
  %tobool13.not.i189 = icmp eq ptr %57, null
  br i1 %tobool13.not.i189, label %cond.end11.i190.for.inc.i193_crit_edge, label %land.lhs.true70

cond.end11.i190.for.inc.i193_crit_edge:           ; preds = %cond.end11.i190
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i193

for.inc.i193:                                     ; preds = %cond.end11.i190.for.inc.i193_crit_edge, %cond.end4.i187.for.inc.i193_crit_edge
  %inc.i191 = add i32 %i54.0, 1
  %exitcond.not.i192 = icmp eq i32 %inc.i191, 13
  br i1 %exitcond.not.i192, label %for.inc.i193.for.end109_crit_edge, label %for.inc.i193.for.body.i182_crit_edge

for.inc.i193.for.body.i182_crit_edge:             ; preds = %for.inc.i193
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i182

for.inc.i193.for.end109_crit_edge:                ; preds = %for.inc.i193
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end109

land.lhs.true70:                                  ; preds = %cond.end11.i190
  %arrayidx66 = getelementptr i32, ptr %arrayidx56, i32 %i54.0
  %58 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx66, align 4
  %ops.i196 = getelementptr inbounds %struct.rsnd_mod, ptr %57, i32 0, i32 2
  %60 = ptrtoint ptr %ops.i196 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i196, align 4
  %get_status.i197 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %61, i32 0, i32 16
  %62 = ptrtoint ptr %get_status.i197 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %get_status.i197, align 4
  %call.i198 = tail call ptr %63(ptr noundef nonnull %57, ptr noundef %capture, i32 noundef %59) #17
  %64 = ptrtoint ptr %ops.i196 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i196, align 4
  %pcm_new72 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %65, i32 0, i32 9
  %66 = ptrtoint ptr %pcm_new72 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pcm_new72, align 4
  %tobool73.not = icmp eq ptr %67, null
  br i1 %tobool73.not, label %land.lhs.true70.if.end105_crit_edge, label %lor.lhs.false88

land.lhs.true70.if.end105_crit_edge:              ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end105

lor.lhs.false88:                                  ; preds = %land.lhs.true70
  %call78 = tail call i32 %67(ptr noundef nonnull %57, ptr noundef %capture, ptr noundef %rtd) #17
  %68 = zext i32 %call78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %call78, label %do.end103 [
    i32 0, label %lor.lhs.false88.if.end105_crit_edge
    i32 -517, label %if.end105.fold.split
  ], !prof !310

lor.lhs.false88.if.end105_crit_edge:              ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end105

do.end103:                                        ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #19
  %call104 = tail call ptr @rsnd_mod_name(ptr noundef nonnull %57)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44, ptr noundef nonnull @.str.56, ptr noundef %call104, ptr noundef nonnull @.str.103, i32 noundef %call78, i32 noundef 1) #20
  br label %if.end105

if.end105.fold.split:                             ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end105

if.end105:                                        ; preds = %if.end105.fold.split, %do.end103, %lor.lhs.false88.if.end105_crit_edge, %land.lhs.true70.if.end105_crit_edge
  %tmp63.0247 = phi i32 [ %call78, %do.end103 ], [ %call78, %lor.lhs.false88.if.end105_crit_edge ], [ 0, %land.lhs.true70.if.end105_crit_edge ], [ -517, %if.end105.fold.split ]
  %or106 = or i32 %tmp63.0247, %ret53.0262
  %inc108 = add i32 %i54.0, 1
  %cmp28.i181 = icmp slt i32 %inc108, 13
  br i1 %cmp28.i181, label %if.end105.for.body.i182.preheader_crit_edge, label %if.end105.for.end109_crit_edge

if.end105.for.end109_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end109

if.end105.for.body.i182.preheader_crit_edge:      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i182.preheader

for.end109:                                       ; preds = %if.end105.for.end109_crit_edge, %for.inc.i193.for.end109_crit_edge
  %ret53.0254 = phi i32 [ %ret53.0262, %for.inc.i193.for.end109_crit_edge ], [ %or106, %if.end105.for.end109_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret53.0254)
  %tobool111.not = icmp eq i32 %ret53.0254, 0
  br i1 %tobool111.not, label %if.end113, label %for.end109.cleanup_crit_edge

for.end109.cleanup_crit_edge:                     ; preds = %for.end109
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end113:                                        ; preds = %for.end109
  %69 = ptrtoint ptr %rdai1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rdai1, align 4
  %priv1.i = getelementptr inbounds %struct.rsnd_dai, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %priv1.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 4
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %74, i32 0, i32 3
  %dmac_dev.i = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 1, i32 5
  %75 = ptrtoint ptr %dmac_dev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dmac_dev.i, align 4
  %tobool.not.i202 = icmp eq ptr %76, null
  %spec.select.i = select i1 %tobool.not.i202, ptr %dev2.i, ptr %76
  %pcm.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %77 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pcm.i, align 4
  %substream4.i = getelementptr %struct.snd_pcm, ptr %78, i32 0, i32 8, i32 0, i32 4
  %79 = ptrtoint ptr %substream4.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %substream.01.i = load ptr, ptr %substream4.i, align 4
  %tobool5.not2.i = icmp eq ptr %substream.01.i, null
  br i1 %tobool5.not2.i, label %if.end113.rsnd_preallocate_pages.exit_crit_edge, label %if.end113.for.body.i204_crit_edge

if.end113.for.body.i204_crit_edge:                ; preds = %if.end113
  br label %for.body.i204

if.end113.rsnd_preallocate_pages.exit_crit_edge:  ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_preallocate_pages.exit

for.body.i204:                                    ; preds = %for.body.i204.for.body.i204_crit_edge, %if.end113.for.body.i204_crit_edge
  %substream.03.i = phi ptr [ %substream.0.i, %for.body.i204.for.body.i204_crit_edge ], [ %substream.01.i, %if.end113.for.body.i204_crit_edge ]
  %call.i203 = tail call i32 @snd_pcm_set_managed_buffer(ptr noundef nonnull %substream.03.i, i32 noundef 2, ptr noundef %spec.select.i, i32 noundef 32768, i32 noundef 32768) #17
  %next.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.03.i, i32 0, i32 15
  %80 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %substream.0.i = load ptr, ptr %next.i, align 4
  %tobool5.not.i = icmp eq ptr %substream.0.i, null
  br i1 %tobool5.not.i, label %for.body.i204.rsnd_preallocate_pages.exit_crit_edge, label %for.body.i204.for.body.i204_crit_edge

for.body.i204.for.body.i204_crit_edge:            ; preds = %for.body.i204
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i204

for.body.i204.rsnd_preallocate_pages.exit_crit_edge: ; preds = %for.body.i204
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_preallocate_pages.exit

rsnd_preallocate_pages.exit:                      ; preds = %for.body.i204.rsnd_preallocate_pages.exit_crit_edge, %if.end113.rsnd_preallocate_pages.exit_crit_edge
  %81 = ptrtoint ptr %rdai41 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rdai41, align 4
  %priv1.i206 = getelementptr inbounds %struct.rsnd_dai, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %priv1.i206 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %priv1.i206, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %dev2.i207 = getelementptr inbounds %struct.platform_device, ptr %86, i32 0, i32 3
  %dmac_dev.i208 = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 2, i32 5
  %87 = ptrtoint ptr %dmac_dev.i208 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dmac_dev.i208, align 4
  %tobool.not.i209 = icmp eq ptr %88, null
  %spec.select.i210 = select i1 %tobool.not.i209, ptr %dev2.i207, ptr %88
  %89 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pcm.i, align 4
  %substream4.i212 = getelementptr %struct.snd_pcm, ptr %90, i32 0, i32 8, i32 1, i32 4
  %91 = ptrtoint ptr %substream4.i212 to i32
  call void @__asan_load4_noabort(i32 %91)
  %substream.01.i213 = load ptr, ptr %substream4.i212, align 4
  %tobool5.not2.i214 = icmp eq ptr %substream.01.i213, null
  br i1 %tobool5.not2.i214, label %rsnd_preallocate_pages.exit.cleanup_crit_edge, label %rsnd_preallocate_pages.exit.for.body.i220_crit_edge

rsnd_preallocate_pages.exit.for.body.i220_crit_edge: ; preds = %rsnd_preallocate_pages.exit
  br label %for.body.i220

rsnd_preallocate_pages.exit.cleanup_crit_edge:    ; preds = %rsnd_preallocate_pages.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.i220:                                    ; preds = %for.body.i220.for.body.i220_crit_edge, %rsnd_preallocate_pages.exit.for.body.i220_crit_edge
  %substream.03.i215 = phi ptr [ %substream.0.i218, %for.body.i220.for.body.i220_crit_edge ], [ %substream.01.i213, %rsnd_preallocate_pages.exit.for.body.i220_crit_edge ]
  %call.i216 = tail call i32 @snd_pcm_set_managed_buffer(ptr noundef nonnull %substream.03.i215, i32 noundef 2, ptr noundef %spec.select.i210, i32 noundef 32768, i32 noundef 32768) #17
  %next.i217 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.03.i215, i32 0, i32 15
  %92 = ptrtoint ptr %next.i217 to i32
  call void @__asan_load4_noabort(i32 %92)
  %substream.0.i218 = load ptr, ptr %next.i217, align 4
  %tobool5.not.i219 = icmp eq ptr %substream.0.i218, null
  br i1 %tobool5.not.i219, label %for.body.i220.cleanup_crit_edge, label %for.body.i220.for.body.i220_crit_edge

for.body.i220.for.body.i220_crit_edge:            ; preds = %for.body.i220
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i220

for.body.i220.cleanup_crit_edge:                  ; preds = %for.body.i220
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %for.body.i220.cleanup_crit_edge, %rsnd_preallocate_pages.exit.cleanup_crit_edge, %for.end109.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret7.0258, %for.end.cleanup_crit_edge ], [ %ret53.0254, %for.end109.cleanup_crit_edge ], [ 0, %rsnd_preallocate_pages.exit.cleanup_crit_edge ], [ 0, %for.body.i220.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_parse_connect_ssi(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_parse_connect_ssiu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_src_mod_get(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_ctu_mod_get(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mix_mod_get(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_dvc_mod_get(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rsnd_ssi_is_pin_sharing(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rsnd_soc_dai_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp slt i32 %5, 0
  br i1 %cmp.i.i, label %entry.rsnd_dai_to_rdai.exit_crit_edge, label %lor.lhs.false.i.i

entry.rsnd_dai_to_rdai.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_dai_to_rdai.exit

lor.lhs.false.i.i:                                ; preds = %entry
  %rdai_nr.i.i = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 22
  %6 = ptrtoint ptr %rdai_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rdai_nr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp1.not.i.i = icmp sgt i32 %7, %5
  br i1 %cmp1.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge

lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_dai_to_rdai.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %rdai.i.i = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 21
  %8 = ptrtoint ptr %rdai.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdai.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.rsnd_dai, ptr %9, i32 %5
  br label %rsnd_dai_to_rdai.exit

rsnd_dai_to_rdai.exit:                            ; preds = %if.end.i.i, %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge, %entry.rsnd_dai_to_rdai.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge ], [ null, %entry.rsnd_dai_to_rdai.exit_crit_edge ]
  %10 = trunc i32 %fmt to i16
  %trunc = and i16 %10, -4096
  %11 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.148)
  switch i16 %trunc, label %rsnd_dai_to_rdai.exit.cleanup_crit_edge [
    i16 4096, label %sw.bb
    i16 16384, label %sw.bb1
  ]

rsnd_dai_to_rdai.exit.cleanup_crit_edge:          ; preds = %rsnd_dai_to_rdai.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %rsnd_dai_to_rdai.exit
  call void @__sanitizer_cov_trace_pc() #19
  %clk_master = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 8
  %12 = ptrtoint ptr %clk_master to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %clk_master, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %clk_master, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %rsnd_dai_to_rdai.exit
  call void @__sanitizer_cov_trace_pc() #19
  %clk_master2 = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %clk_master2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load3 = load i8, ptr %clk_master2, align 4
  %bf.set5 = or i8 %bf.load3, -128
  store i8 %bf.set5, ptr %clk_master2, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %bit_clk_inv = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 8
  %14 = ptrtoint ptr %bit_clk_inv to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load6 = load i8, ptr %bit_clk_inv, align 4
  %bf.clear7 = and i8 %bf.load6, -65
  store i8 %bf.clear7, ptr %bit_clk_inv, align 4
  %and9 = and i32 %fmt, 15
  %15 = zext i32 %and9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %and9, label %sw.epilog.sw.epilog59_crit_edge [
    i32 1, label %sw.bb10
    i32 3, label %sw.epilog.sw.bb20_crit_edge
    i32 5, label %sw.epilog.sw.bb20_crit_edge143
    i32 2, label %sw.bb33
    i32 4, label %sw.bb46
  ]

sw.epilog.sw.bb20_crit_edge143:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb20

sw.epilog.sw.bb20_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb20

sw.epilog.sw.epilog59_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog59

sw.bb10:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  %bf.clear18 = and i8 %bf.load6, -121
  br label %sw.epilog59.sink.split

sw.bb20:                                          ; preds = %sw.epilog.sw.bb20_crit_edge, %sw.epilog.sw.bb20_crit_edge143
  %bf.set24 = and i8 %bf.load6, -121
  %bf.set32 = or i8 %bf.set24, 48
  br label %sw.epilog59.sink.split

sw.bb33:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  %bf.clear36 = and i8 %bf.load6, -121
  %bf.set45 = or i8 %bf.clear36, 56
  br label %sw.epilog59.sink.split

sw.bb46:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  %bf.clear57 = and i8 %bf.load6, -121
  %bf.set58 = or i8 %bf.clear57, 32
  br label %sw.epilog59.sink.split

sw.epilog59.sink.split:                           ; preds = %sw.bb46, %sw.bb33, %sw.bb20, %sw.bb10
  %bf.set58.sink = phi i8 [ %bf.set58, %sw.bb46 ], [ %bf.set45, %sw.bb33 ], [ %bf.set32, %sw.bb20 ], [ %bf.clear18, %sw.bb10 ]
  %16 = ptrtoint ptr %bit_clk_inv to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %bf.set58.sink, ptr %bit_clk_inv, align 4
  br label %sw.epilog59

sw.epilog59:                                      ; preds = %sw.epilog59.sink.split, %sw.epilog.sw.epilog59_crit_edge
  %and60 = lshr i32 %fmt, 8
  %17 = and i32 %and60, 15
  %switch.tableidx = add nsw i32 %17, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %18 = icmp ult i32 %switch.tableidx, 3
  br i1 %18, label %switch.lookup, label %sw.epilog59.cleanup_crit_edge

sw.epilog59.cleanup_crit_edge:                    ; preds = %sw.epilog59
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

switch.lookup:                                    ; preds = %sw.epilog59
  call void @__sanitizer_cov_trace_pc() #19
  %switch.idx.cast = trunc i32 %switch.tableidx to i8
  %switch.idx.mult = shl i8 %switch.idx.cast, 5
  %switch.offset = add i8 %switch.idx.mult, 32
  %19 = ptrtoint ptr %bit_clk_inv to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load63 = load i8, ptr %bit_clk_inv, align 4
  %bf.set68 = xor i8 %bf.load63, %switch.offset
  store i8 %bf.set68, ptr %bit_clk_inv, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %sw.epilog59.cleanup_crit_edge, %rsnd_dai_to_rdai.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %rsnd_dai_to_rdai.exit.cleanup_crit_edge ], [ 0, %sw.epilog59.cleanup_crit_edge ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_soc_set_dai_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp slt i32 %5, 0
  br i1 %cmp.i.i, label %entry.rsnd_dai_to_rdai.exit_crit_edge, label %lor.lhs.false.i.i

entry.rsnd_dai_to_rdai.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_dai_to_rdai.exit

lor.lhs.false.i.i:                                ; preds = %entry
  %rdai_nr.i.i = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 22
  %6 = ptrtoint ptr %rdai_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rdai_nr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp1.not.i.i = icmp sgt i32 %7, %5
  br i1 %cmp1.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge

lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_dai_to_rdai.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %rdai.i.i = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 21
  %8 = ptrtoint ptr %rdai.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdai.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.rsnd_dai, ptr %9, i32 %5
  br label %rsnd_dai_to_rdai.exit

rsnd_dai_to_rdai.exit:                            ; preds = %if.end.i.i, %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge, %entry.rsnd_dai_to_rdai.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge ], [ null, %entry.rsnd_dai_to_rdai.exit_crit_edge ]
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %12 = zext i32 %slot_width to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %slot_width, label %sw.default [
    i32 16, label %rsnd_dai_to_rdai.exit.sw.epilog_crit_edge
    i32 24, label %rsnd_dai_to_rdai.exit.sw.epilog_crit_edge20
    i32 32, label %rsnd_dai_to_rdai.exit.sw.epilog_crit_edge21
  ]

rsnd_dai_to_rdai.exit.sw.epilog_crit_edge21:      ; preds = %rsnd_dai_to_rdai.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

rsnd_dai_to_rdai.exit.sw.epilog_crit_edge20:      ; preds = %rsnd_dai_to_rdai.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

rsnd_dai_to_rdai.exit.sw.epilog_crit_edge:        ; preds = %rsnd_dai_to_rdai.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.default:                                       ; preds = %rsnd_dai_to_rdai.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %rsnd_dai_to_rdai.exit.sw.epilog_crit_edge, %rsnd_dai_to_rdai.exit.sw.epilog_crit_edge20, %rsnd_dai_to_rdai.exit.sw.epilog_crit_edge21
  %slot_width.addr.0 = phi i32 [ 32, %sw.default ], [ %slot_width, %rsnd_dai_to_rdai.exit.sw.epilog_crit_edge ], [ %slot_width, %rsnd_dai_to_rdai.exit.sw.epilog_crit_edge20 ], [ %slot_width, %rsnd_dai_to_rdai.exit.sw.epilog_crit_edge21 ]
  %13 = zext i32 %slots to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %slots, label %do.end [
    i32 2, label %sw.epilog.rsnd_rdai_width_ctrl.exit_crit_edge
    i32 6, label %sw.epilog.rsnd_rdai_width_ctrl.exit_crit_edge22
    i32 8, label %sw.epilog.rsnd_rdai_width_ctrl.exit_crit_edge23
  ]

sw.epilog.rsnd_rdai_width_ctrl.exit_crit_edge23:  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_rdai_width_ctrl.exit

sw.epilog.rsnd_rdai_width_ctrl.exit_crit_edge22:  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_rdai_width_ctrl.exit

sw.epilog.rsnd_rdai_width_ctrl.exit_crit_edge:    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_rdai_width_ctrl.exit

rsnd_rdai_width_ctrl.exit:                        ; preds = %sw.epilog.rsnd_rdai_width_ctrl.exit_crit_edge, %sw.epilog.rsnd_rdai_width_ctrl.exit_crit_edge22, %sw.epilog.rsnd_rdai_width_ctrl.exit_crit_edge23
  %max_channels1.i = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %max_channels1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %slots, ptr %max_channels1.i, align 4
  %ssi_lane1.i = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %ssi_lane1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %ssi_lane1.i, align 4
  %chan_width.i = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %chan_width.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %slot_width.addr.0, ptr %chan_width.i, align 4
  br label %cleanup

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.80, i32 noundef %slots) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end, %rsnd_rdai_width_ctrl.exit
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %rsnd_rdai_width_ctrl.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_soc_dai_startup(ptr noundef %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp slt i32 %5, 0
  br i1 %cmp.i.i, label %entry.rsnd_dai_to_rdai.exit_crit_edge, label %lor.lhs.false.i.i

entry.rsnd_dai_to_rdai.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_dai_to_rdai.exit

lor.lhs.false.i.i:                                ; preds = %entry
  %rdai_nr.i.i = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 22
  %6 = ptrtoint ptr %rdai_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rdai_nr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp1.not.i.i = icmp sgt i32 %7, %5
  br i1 %cmp1.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge

lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_dai_to_rdai.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %rdai.i.i = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 21
  %8 = ptrtoint ptr %rdai.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdai.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.rsnd_dai, ptr %9, i32 %5
  br label %rsnd_dai_to_rdai.exit

rsnd_dai_to_rdai.exit:                            ; preds = %if.end.i.i, %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge, %entry.rsnd_dai_to_rdai.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge ], [ null, %entry.rsnd_dai_to_rdai.exit_crit_edge ]
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %10 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  %playback.i = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 1
  %capture.i = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 2
  %retval.0.i = select i1 %cmp.i, ptr %playback.i, ptr %capture.i
  %constraint2 = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 4
  %runtime3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %12 = ptrtoint ptr %runtime3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %runtime3, align 4
  %max_channels2.i = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %max_channels2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_channels2.i, align 4
  %substream1.i = getelementptr inbounds %struct.rsnd_dai_stream, ptr %retval.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %substream1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %substream, ptr %substream1.i, align 4
  %17 = ptrtoint ptr %constraint2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @rsnd_soc_hw_channels_list, ptr %constraint2, align 4
  %count = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %count, align 4
  %mask = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %mask, align 4
  %20 = load i32, ptr @rsnd_soc_hw_channels_list, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %15)
  %cmp5 = icmp ugt i32 %20, %15
  br i1 %cmp5, label %rsnd_dai_to_rdai.exit.for.end_crit_edge, label %if.end

rsnd_dai_to_rdai.exit.for.end_crit_edge:          ; preds = %rsnd_dai_to_rdai.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.end:                                           ; preds = %rsnd_dai_to_rdai.exit
  %21 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %count, align 4
  %22 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @rsnd_soc_hw_channels_list, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %15)
  %cmp5.1 = icmp ugt i32 %22, %15
  br i1 %cmp5.1, label %if.end.for.end_crit_edge, label %if.end.1

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.end.1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %count, align 4
  %24 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @rsnd_soc_hw_channels_list, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %15)
  %cmp5.2 = icmp ugt i32 %24, %15
  %spec.store.select = select i1 %cmp5.2, i32 2, i32 3
  %25 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.store.select, ptr %count, align 4
  br label %for.end

for.end:                                          ; preds = %if.end.1, %if.end.for.end_crit_edge, %rsnd_dai_to_rdai.exit.for.end_crit_edge
  %call7 = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef nonnull @rsnd_pcm_hardware) #17
  %call8 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %13, i32 noundef 0, i32 noundef 10, ptr noundef %constraint2) #17
  %call9 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %13, i32 noundef 15) #17
  %clk_master = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 8
  %26 = ptrtoint ptr %clk_master to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load = load i8, ptr %clk_master, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %for.end.if.end22_crit_edge, label %if.then10

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

if.then10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %27 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp11 = icmp eq i32 %28, 0
  %cond = select i1 %cmp11, ptr %playback.i, ptr %capture.i
  %call13 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %13, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @rsnd_soc_hw_rule_rate, ptr noundef %cond, i32 noundef 10, i32 noundef -1) #17
  %call21 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %13, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @rsnd_soc_hw_rule_channels, ptr noundef %cond, i32 noundef 11, i32 noundef -1) #17
  br label %if.end22

if.end22:                                         ; preds = %if.then10, %for.end.if.end22_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsnd_soc_dai_shutdown(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp slt i32 %5, 0
  br i1 %cmp.i.i, label %entry.rsnd_dai_to_rdai.exit_crit_edge, label %lor.lhs.false.i.i

entry.rsnd_dai_to_rdai.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_dai_to_rdai.exit

lor.lhs.false.i.i:                                ; preds = %entry
  %rdai_nr.i.i = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 22
  %6 = ptrtoint ptr %rdai_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rdai_nr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp1.not.i.i = icmp sgt i32 %7, %5
  br i1 %cmp1.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge

lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_dai_to_rdai.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %rdai.i.i = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 21
  %8 = ptrtoint ptr %rdai.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdai.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.rsnd_dai, ptr %9, i32 %5
  br label %rsnd_dai_to_rdai.exit

rsnd_dai_to_rdai.exit:                            ; preds = %if.end.i.i, %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge, %entry.rsnd_dai_to_rdai.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge ], [ null, %entry.rsnd_dai_to_rdai.exit_crit_edge ]
  %priv1 = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv1, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %12 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  %playback.i = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 1
  %capture.i = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 2
  %retval.0.i = select i1 %cmp.i, ptr %playback.i, ptr %capture.i
  %rdai3 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %retval.0.i, i32 0, i32 4
  %14 = ptrtoint ptr %rdai3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rdai3, align 4
  %priv4 = getelementptr inbounds %struct.rsnd_dai, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv4, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  %playback = getelementptr inbounds %struct.rsnd_dai, ptr %15, i32 0, i32 1
  %cmp = icmp eq ptr %playback, %retval.0.i
  %conv = zext i1 %cmp to i32
  %arrayidx = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %conv
  %tobool.not.i = icmp eq ptr %arrayidx, null
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %rsnd_dai_to_rdai.exit
  %i.0 = phi i32 [ 0, %rsnd_dai_to_rdai.exit ], [ %i.0.be, %for.body.i.backedge ]
  br i1 %tobool.not.i, label %for.body.i.cond.end4.i_crit_edge, label %cond.true2.i

for.body.i.cond.end4.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end4.i

cond.true2.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i = getelementptr i32, ptr %arrayidx, i32 %i.0
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  br label %cond.end4.i

cond.end4.i:                                      ; preds = %cond.true2.i, %for.body.i.cond.end4.i_crit_edge
  %cond5.i = phi i32 [ %21, %cond.true2.i ], [ %i.0, %for.body.i.cond.end4.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %cond5.i)
  %cmp6.i = icmp ult i32 %cond5.i, 13
  br i1 %cmp6.i, label %cond.end11.i, label %cond.end4.i.for.inc.i_crit_edge

cond.end4.i.for.inc.i_crit_edge:                  ; preds = %cond.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

cond.end11.i:                                     ; preds = %cond.end4.i
  %arrayidx9.i = getelementptr %struct.rsnd_dai_stream, ptr %retval.0.i, i32 0, i32 2, i32 %cond5.i
  %22 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx9.i, align 4
  %tobool13.not.i = icmp eq ptr %23, null
  br i1 %tobool13.not.i, label %cond.end11.i.for.inc.i_crit_edge, label %land.lhs.true

cond.end11.i.for.inc.i_crit_edge:                 ; preds = %cond.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.end11.i.for.inc.i_crit_edge, %cond.end4.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 13
  br i1 %exitcond.not.i, label %for.inc.i.for.end_crit_edge, label %for.inc.i.for.body.i.backedge_crit_edge

for.inc.i.for.body.i.backedge_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.backedge

for.inc.i.for.end_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.i.backedge:                              ; preds = %if.end31.for.body.i.backedge_crit_edge, %for.inc.i.for.body.i.backedge_crit_edge
  %i.0.be = phi i32 [ %inc.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ %inc, %if.end31.for.body.i.backedge_crit_edge ]
  br label %for.body.i

land.lhs.true:                                    ; preds = %cond.end11.i
  %arrayidx8 = getelementptr i32, ptr %arrayidx, i32 %i.0
  %24 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx8, align 4
  %ops.i = getelementptr inbounds %struct.rsnd_mod, ptr %23, i32 0, i32 2
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %get_status.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %27, i32 0, i32 16
  %28 = ptrtoint ptr %get_status.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %get_status.i, align 4
  %call.i = tail call ptr %29(ptr noundef nonnull %23, ptr noundef %retval.0.i, i32 noundef %25) #17
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i, align 4
  %cleanup = getelementptr inbounds %struct.rsnd_mod_ops, ptr %31, i32 0, i32 14
  %32 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cleanup, align 4
  %tobool12.not = icmp eq ptr %33, null
  br i1 %tobool12.not, label %land.lhs.true.if.end31_crit_edge, label %lor.lhs.false

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call15 = tail call i32 %33(ptr noundef nonnull %23, ptr noundef %retval.0.i, ptr noundef %11) #17
  %34 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %call15, label %do.end [
    i32 0, label %lor.lhs.false.if.end31_crit_edge
    i32 -517, label %lor.lhs.false.if.end31_crit_edge82
  ], !prof !310

lor.lhs.false.if.end31_crit_edge82:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

lor.lhs.false.if.end31_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

do.end:                                           ; preds = %lor.lhs.false
  %35 = load i32, ptr @rsnd_mod_name.num, align 4
  %arrayidx.i53 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %35
  %inc.i54 = add i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i54)
  %cmp.i55 = icmp sgt i32 %inc.i54, 4
  %spec.store.select.i = select i1 %cmp.i55, i32 0, i32 %inc.i54
  store i32 %spec.store.select.i, ptr @rsnd_mod_name.num, align 4
  %36 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i, align 4
  %id_sub.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %37, i32 0, i32 18
  %38 = ptrtoint ptr %id_sub.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %id_sub.i, align 4
  %tobool.not.i57 = icmp eq ptr %39, null
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %37, align 4
  %id.i24.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %37, i32 0, i32 17
  %42 = ptrtoint ptr %id.i24.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %id.i24.i, align 4
  %tobool.not.i25.i = icmp eq ptr %43, null
  br i1 %tobool.not.i57, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %do.end
  br i1 %tobool.not.i25.i, label %if.end.i.i58, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i = tail call i32 %43(ptr noundef nonnull %23) #17
  br label %rsnd_mod_id.exit.i

if.end.i.i58:                                     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #19
  %44 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %23, align 4
  br label %rsnd_mod_id.exit.i

rsnd_mod_id.exit.i:                               ; preds = %if.end.i.i58, %if.then.i.i
  %retval.0.i.i59 = phi i32 [ %call.i.i, %if.then.i.i ], [ %45, %if.end.i.i58 ]
  %46 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i, align 4
  %id_sub.i.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %47, i32 0, i32 18
  %48 = ptrtoint ptr %id_sub.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %id_sub.i.i, align 4
  %tobool.not.i19.i = icmp eq ptr %49, null
  br i1 %tobool.not.i19.i, label %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge, label %if.then.i21.i

rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge: ; preds = %rsnd_mod_id.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_mod_id_sub.exit.i

if.then.i21.i:                                    ; preds = %rsnd_mod_id.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i20.i = tail call i32 %49(ptr noundef nonnull %23) #17
  br label %rsnd_mod_id_sub.exit.i

rsnd_mod_id_sub.exit.i:                           ; preds = %if.then.i21.i, %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge
  %retval.0.i22.i = phi i32 [ %call.i20.i, %if.then.i21.i ], [ 0, %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge ]
  %call5.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i53, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef %41, i32 noundef %retval.0.i.i59, i32 noundef %retval.0.i22.i) #17
  br label %rsnd_mod_name.exit

if.else.i:                                        ; preds = %do.end
  br i1 %tobool.not.i25.i, label %if.end.i28.i, label %if.then.i27.i

if.then.i27.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i26.i = tail call i32 %43(ptr noundef nonnull %23) #17
  br label %rsnd_mod_id.exit30.i

if.end.i28.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %50 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %23, align 4
  br label %rsnd_mod_id.exit30.i

rsnd_mod_id.exit30.i:                             ; preds = %if.end.i28.i, %if.then.i27.i
  %retval.0.i29.i = phi i32 [ %call.i26.i, %if.then.i27.i ], [ %51, %if.end.i28.i ]
  %call9.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i53, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef %41, i32 noundef %retval.0.i29.i) #17
  br label %rsnd_mod_name.exit

rsnd_mod_name.exit:                               ; preds = %rsnd_mod_id.exit30.i, %rsnd_mod_id_sub.exit.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.56, ptr noundef %arrayidx.i53, ptr noundef nonnull @.str.83, i32 noundef %call15, i32 noundef 1) #20
  br label %if.end31

if.end31:                                         ; preds = %rsnd_mod_name.exit, %lor.lhs.false.if.end31_crit_edge, %lor.lhs.false.if.end31_crit_edge82, %land.lhs.true.if.end31_crit_edge
  %inc = add i32 %i.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %inc)
  %cmp28.i = icmp slt i32 %inc, 13
  br i1 %cmp28.i, label %if.end31.for.body.i.backedge_crit_edge, label %if.end31.for.end_crit_edge

if.end31.for.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.end31.for.body.i.backedge_crit_edge:           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.backedge

for.end:                                          ; preds = %if.end31.for.end_crit_edge, %for.inc.i.for.end_crit_edge
  %substream.i = getelementptr inbounds %struct.rsnd_dai_stream, ptr %retval.0.i, i32 0, i32 1
  %52 = ptrtoint ptr %substream.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %substream.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_soc_dai_prepare(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp slt i32 %5, 0
  br i1 %cmp.i.i, label %entry.rsnd_dai_to_rdai.exit_crit_edge, label %lor.lhs.false.i.i

entry.rsnd_dai_to_rdai.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_dai_to_rdai.exit

lor.lhs.false.i.i:                                ; preds = %entry
  %rdai_nr.i.i = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 22
  %6 = ptrtoint ptr %rdai_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rdai_nr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp1.not.i.i = icmp sgt i32 %7, %5
  br i1 %cmp1.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge

lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_dai_to_rdai.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %rdai.i.i = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 21
  %8 = ptrtoint ptr %rdai.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdai.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.rsnd_dai, ptr %9, i32 %5
  br label %rsnd_dai_to_rdai.exit

rsnd_dai_to_rdai.exit:                            ; preds = %if.end.i.i, %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge, %entry.rsnd_dai_to_rdai.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge ], [ null, %entry.rsnd_dai_to_rdai.exit_crit_edge ]
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %10 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  %playback.i = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 1
  %capture.i = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 2
  %retval.0.i = select i1 %cmp.i, ptr %playback.i, ptr %capture.i
  %rdai3 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %retval.0.i, i32 0, i32 4
  %12 = ptrtoint ptr %rdai3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rdai3, align 4
  %priv4 = getelementptr inbounds %struct.rsnd_dai, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv4, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %playback = getelementptr inbounds %struct.rsnd_dai, ptr %13, i32 0, i32 1
  %cmp = icmp eq ptr %playback, %retval.0.i
  %conv = zext i1 %cmp to i32
  %arrayidx = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %conv
  %tobool.not.i = icmp eq ptr %arrayidx, null
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end31.for.body.i.preheader_crit_edge, %rsnd_dai_to_rdai.exit
  %ret.078 = phi i32 [ 0, %rsnd_dai_to_rdai.exit ], [ %or, %if.end31.for.body.i.preheader_crit_edge ]
  %storemerge77 = phi i32 [ 0, %rsnd_dai_to_rdai.exit ], [ %inc, %if.end31.for.body.i.preheader_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.0 = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %storemerge77, %for.body.i.preheader ]
  br i1 %tobool.not.i, label %for.body.i.cond.end4.i_crit_edge, label %cond.true2.i

for.body.i.cond.end4.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end4.i

cond.true2.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i = getelementptr i32, ptr %arrayidx, i32 %i.0
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  br label %cond.end4.i

cond.end4.i:                                      ; preds = %cond.true2.i, %for.body.i.cond.end4.i_crit_edge
  %cond5.i = phi i32 [ %19, %cond.true2.i ], [ %i.0, %for.body.i.cond.end4.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %cond5.i)
  %cmp6.i = icmp ult i32 %cond5.i, 13
  br i1 %cmp6.i, label %cond.end11.i, label %cond.end4.i.for.inc.i_crit_edge

cond.end4.i.for.inc.i_crit_edge:                  ; preds = %cond.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

cond.end11.i:                                     ; preds = %cond.end4.i
  %arrayidx9.i = getelementptr %struct.rsnd_dai_stream, ptr %retval.0.i, i32 0, i32 2, i32 %cond5.i
  %20 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx9.i, align 4
  %tobool13.not.i = icmp eq ptr %21, null
  br i1 %tobool13.not.i, label %cond.end11.i.for.inc.i_crit_edge, label %land.lhs.true

cond.end11.i.for.inc.i_crit_edge:                 ; preds = %cond.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.end11.i.for.inc.i_crit_edge, %cond.end4.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.0, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 13
  br i1 %exitcond.not.i, label %for.inc.i.for.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.for.end_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

land.lhs.true:                                    ; preds = %cond.end11.i
  %arrayidx8 = getelementptr i32, ptr %arrayidx, i32 %i.0
  %22 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx8, align 4
  %ops.i = getelementptr inbounds %struct.rsnd_mod, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  %get_status.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %25, i32 0, i32 16
  %26 = ptrtoint ptr %get_status.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %get_status.i, align 4
  %call.i = tail call ptr %27(ptr noundef nonnull %21, ptr noundef %retval.0.i, i32 noundef %23) #17
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i, align 4
  %prepare = getelementptr inbounds %struct.rsnd_mod_ops, ptr %29, i32 0, i32 13
  %30 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prepare, align 4
  %tobool12.not = icmp eq ptr %31, null
  br i1 %tobool12.not, label %land.lhs.true.if.end31_crit_edge, label %lor.lhs.false

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call15 = tail call i32 %31(ptr noundef nonnull %21, ptr noundef %retval.0.i, ptr noundef %3) #17
  %32 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %call15, label %do.end [
    i32 0, label %lor.lhs.false.if.end31_crit_edge
    i32 -517, label %if.end31.fold.split
  ], !prof !310

lor.lhs.false.if.end31_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

do.end:                                           ; preds = %lor.lhs.false
  %33 = load i32, ptr @rsnd_mod_name.num, align 4
  %arrayidx.i52 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %33
  %inc.i53 = add i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i53)
  %cmp.i54 = icmp sgt i32 %inc.i53, 4
  %spec.store.select.i = select i1 %cmp.i54, i32 0, i32 %inc.i53
  store i32 %spec.store.select.i, ptr @rsnd_mod_name.num, align 4
  %34 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i, align 4
  %id_sub.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %35, i32 0, i32 18
  %36 = ptrtoint ptr %id_sub.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %id_sub.i, align 4
  %tobool.not.i56 = icmp eq ptr %37, null
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %id.i24.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %35, i32 0, i32 17
  %40 = ptrtoint ptr %id.i24.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %id.i24.i, align 4
  %tobool.not.i25.i = icmp eq ptr %41, null
  br i1 %tobool.not.i56, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %do.end
  br i1 %tobool.not.i25.i, label %if.end.i.i57, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i = tail call i32 %41(ptr noundef nonnull %21) #17
  br label %rsnd_mod_id.exit.i

if.end.i.i57:                                     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #19
  %42 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %21, align 4
  br label %rsnd_mod_id.exit.i

rsnd_mod_id.exit.i:                               ; preds = %if.end.i.i57, %if.then.i.i
  %retval.0.i.i58 = phi i32 [ %call.i.i, %if.then.i.i ], [ %43, %if.end.i.i57 ]
  %44 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i, align 4
  %id_sub.i.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %45, i32 0, i32 18
  %46 = ptrtoint ptr %id_sub.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %id_sub.i.i, align 4
  %tobool.not.i19.i = icmp eq ptr %47, null
  br i1 %tobool.not.i19.i, label %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge, label %if.then.i21.i

rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge: ; preds = %rsnd_mod_id.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_mod_id_sub.exit.i

if.then.i21.i:                                    ; preds = %rsnd_mod_id.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i20.i = tail call i32 %47(ptr noundef nonnull %21) #17
  br label %rsnd_mod_id_sub.exit.i

rsnd_mod_id_sub.exit.i:                           ; preds = %if.then.i21.i, %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge
  %retval.0.i22.i = phi i32 [ %call.i20.i, %if.then.i21.i ], [ 0, %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge ]
  %call5.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i52, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef %39, i32 noundef %retval.0.i.i58, i32 noundef %retval.0.i22.i) #17
  br label %rsnd_mod_name.exit

if.else.i:                                        ; preds = %do.end
  br i1 %tobool.not.i25.i, label %if.end.i28.i, label %if.then.i27.i

if.then.i27.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i26.i = tail call i32 %41(ptr noundef nonnull %21) #17
  br label %rsnd_mod_id.exit30.i

if.end.i28.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %48 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %21, align 4
  br label %rsnd_mod_id.exit30.i

rsnd_mod_id.exit30.i:                             ; preds = %if.end.i28.i, %if.then.i27.i
  %retval.0.i29.i = phi i32 [ %call.i26.i, %if.then.i27.i ], [ %49, %if.end.i28.i ]
  %call9.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i52, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef %39, i32 noundef %retval.0.i29.i) #17
  br label %rsnd_mod_name.exit

rsnd_mod_name.exit:                               ; preds = %rsnd_mod_id.exit30.i, %rsnd_mod_id_sub.exit.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.56, ptr noundef %arrayidx.i52, ptr noundef nonnull @.str.85, i32 noundef %call15, i32 noundef 1) #20
  br label %if.end31

if.end31.fold.split:                              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

if.end31:                                         ; preds = %if.end31.fold.split, %rsnd_mod_name.exit, %lor.lhs.false.if.end31_crit_edge, %land.lhs.true.if.end31_crit_edge
  %tmp.071 = phi i32 [ %call15, %rsnd_mod_name.exit ], [ %call15, %lor.lhs.false.if.end31_crit_edge ], [ 0, %land.lhs.true.if.end31_crit_edge ], [ -517, %if.end31.fold.split ]
  %or = or i32 %tmp.071, %ret.078
  %inc = add i32 %i.0, 1
  %cmp28.i = icmp slt i32 %inc, 13
  br i1 %cmp28.i, label %if.end31.for.body.i.preheader_crit_edge, label %if.end31.for.end_crit_edge

if.end31.for.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.end31.for.body.i.preheader_crit_edge:          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.preheader

for.end:                                          ; preds = %if.end31.for.end_crit_edge, %for.inc.i.for.end_crit_edge
  %ret.076 = phi i32 [ %ret.078, %for.inc.i.for.end_crit_edge ], [ %or, %if.end31.for.end_crit_edge ]
  ret i32 %ret.076
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_soc_dai_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp slt i32 %5, 0
  br i1 %cmp.i.i, label %entry.rsnd_dai_to_rdai.exit_crit_edge, label %lor.lhs.false.i.i

entry.rsnd_dai_to_rdai.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_dai_to_rdai.exit

lor.lhs.false.i.i:                                ; preds = %entry
  %rdai_nr.i.i = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 22
  %6 = ptrtoint ptr %rdai_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rdai_nr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp1.not.i.i = icmp sgt i32 %7, %5
  br i1 %cmp1.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge

lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_dai_to_rdai.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %rdai.i.i = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 21
  %8 = ptrtoint ptr %rdai.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdai.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.rsnd_dai, ptr %9, i32 %5
  br label %rsnd_dai_to_rdai.exit

rsnd_dai_to_rdai.exit:                            ; preds = %if.end.i.i, %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge, %entry.rsnd_dai_to_rdai.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge ], [ null, %entry.rsnd_dai_to_rdai.exit_crit_edge ]
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %10 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  %playback.i = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 1
  %capture.i = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 2
  %retval.0.i = select i1 %cmp.i, ptr %playback.i, ptr %capture.i
  %lock = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 1
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #17
  %12 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %cmd, label %rsnd_dai_to_rdai.exit.dai_trigger_end_crit_edge [
    i32 1, label %rsnd_dai_to_rdai.exit.sw.bb_crit_edge
    i32 6, label %rsnd_dai_to_rdai.exit.sw.bb_crit_edge943
    i32 0, label %rsnd_dai_to_rdai.exit.sw.bb187_crit_edge
    i32 5, label %rsnd_dai_to_rdai.exit.sw.bb187_crit_edge944
  ]

rsnd_dai_to_rdai.exit.sw.bb187_crit_edge944:      ; preds = %rsnd_dai_to_rdai.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb187

rsnd_dai_to_rdai.exit.sw.bb187_crit_edge:         ; preds = %rsnd_dai_to_rdai.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb187

rsnd_dai_to_rdai.exit.sw.bb_crit_edge943:         ; preds = %rsnd_dai_to_rdai.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

rsnd_dai_to_rdai.exit.sw.bb_crit_edge:            ; preds = %rsnd_dai_to_rdai.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

rsnd_dai_to_rdai.exit.dai_trigger_end_crit_edge:  ; preds = %rsnd_dai_to_rdai.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %dai_trigger_end

sw.bb:                                            ; preds = %rsnd_dai_to_rdai.exit.sw.bb_crit_edge, %rsnd_dai_to_rdai.exit.sw.bb_crit_edge943
  %rdai8 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %retval.0.i, i32 0, i32 4
  %13 = ptrtoint ptr %rdai8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rdai8, align 4
  %priv9 = getelementptr inbounds %struct.rsnd_dai, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %priv9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv9, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %dev10 = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  %playback = getelementptr inbounds %struct.rsnd_dai, ptr %14, i32 0, i32 1
  %cmp12 = icmp eq ptr %playback, %retval.0.i
  %conv13 = zext i1 %cmp12 to i32
  %arrayidx = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %conv13
  %tobool.not.i = icmp eq ptr %arrayidx, null
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end43.for.body.i.preheader_crit_edge, %sw.bb
  %ret14.0829 = phi i32 [ 0, %sw.bb ], [ %or, %if.end43.for.body.i.preheader_crit_edge ]
  %storemerge507828 = phi i32 [ 0, %sw.bb ], [ %inc, %if.end43.for.body.i.preheader_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.0 = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %storemerge507828, %for.body.i.preheader ]
  br i1 %tobool.not.i, label %for.body.i.cond.end4.i_crit_edge, label %cond.true2.i

for.body.i.cond.end4.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end4.i

cond.true2.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i = getelementptr i32, ptr %arrayidx, i32 %i.0
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  br label %cond.end4.i

cond.end4.i:                                      ; preds = %cond.true2.i, %for.body.i.cond.end4.i_crit_edge
  %cond5.i = phi i32 [ %20, %cond.true2.i ], [ %i.0, %for.body.i.cond.end4.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %cond5.i)
  %cmp6.i = icmp ult i32 %cond5.i, 13
  br i1 %cmp6.i, label %cond.end11.i, label %cond.end4.i.for.inc.i_crit_edge

cond.end4.i.for.inc.i_crit_edge:                  ; preds = %cond.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

cond.end11.i:                                     ; preds = %cond.end4.i
  %arrayidx9.i = getelementptr %struct.rsnd_dai_stream, ptr %retval.0.i, i32 0, i32 2, i32 %cond5.i
  %21 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx9.i, align 4
  %tobool13.not.i = icmp eq ptr %22, null
  br i1 %tobool13.not.i, label %cond.end11.i.for.inc.i_crit_edge, label %for.body

cond.end11.i.for.inc.i_crit_edge:                 ; preds = %cond.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.end11.i.for.inc.i_crit_edge, %cond.end4.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.0, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 13
  br i1 %exitcond.not.i, label %for.inc.i.for.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.for.end_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %cond.end11.i
  %arrayidx17 = getelementptr i32, ptr %arrayidx, i32 %i.0
  %23 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx17, align 4
  %ops.i = getelementptr inbounds %struct.rsnd_mod, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %get_status.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %get_status.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_status.i, align 4
  %call.i = tail call ptr %28(ptr noundef nonnull %22, ptr noundef %retval.0.i, i32 noundef %24) #17
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call.i, align 4
  %shr.i = lshr i32 %30, 4
  %add2.i = add nuw nsw i32 %shr.i, 1
  %conv4.i = and i32 %add2.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %conv4.i)
  %cmp12.i = icmp eq i32 %conv4.i, 15
  br i1 %cmp12.i, label %for.body.do.end41_crit_edge, label %rsnd_status_update.exit

for.body.do.end41_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end41

rsnd_status_update.exit:                          ; preds = %for.body
  %31 = and i32 %30, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i515 = icmp eq i32 %31, 0
  %and15.i = and i32 %30, -241
  %shl17.i = shl nuw nsw i32 %conv4.i, 4
  %add18.i = or i32 %shl17.i, %and15.i
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add18.i, ptr %call.i, align 4
  br i1 %cmp.i515, label %land.lhs.true, label %rsnd_status_update.exit.if.end43_crit_edge

rsnd_status_update.exit.if.end43_crit_edge:       ; preds = %rsnd_status_update.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

land.lhs.true:                                    ; preds = %rsnd_status_update.exit
  %33 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i, align 4
  %init = getelementptr inbounds %struct.rsnd_mod_ops, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init, align 4
  %tobool21.not = icmp eq ptr %36, null
  br i1 %tobool21.not, label %land.lhs.true.if.end43_crit_edge, label %lor.lhs.false

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call24 = tail call i32 %36(ptr noundef nonnull %22, ptr noundef %retval.0.i, ptr noundef %3) #17
  %37 = zext i32 %call24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %call24, label %lor.lhs.false.do.end41_crit_edge [
    i32 0, label %lor.lhs.false.if.end43_crit_edge
    i32 -517, label %if.end43.fold.split
  ], !prof !310

lor.lhs.false.if.end43_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

lor.lhs.false.do.end41_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end41

do.end41:                                         ; preds = %lor.lhs.false.do.end41_crit_edge, %for.body.do.end41_crit_edge
  %tmp16.0687 = phi i32 [ 0, %for.body.do.end41_crit_edge ], [ %call24, %lor.lhs.false.do.end41_crit_edge ]
  %retval.0.i516677683 = phi i32 [ -1, %for.body.do.end41_crit_edge ], [ 1, %lor.lhs.false.do.end41_crit_edge ]
  %call42 = tail call ptr @rsnd_mod_name(ptr noundef nonnull %22)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.56, ptr noundef %call42, ptr noundef nonnull @.str.87, i32 noundef %tmp16.0687, i32 noundef %retval.0.i516677683) #20
  br label %if.end43

if.end43.fold.split:                              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

if.end43:                                         ; preds = %if.end43.fold.split, %do.end41, %lor.lhs.false.if.end43_crit_edge, %land.lhs.true.if.end43_crit_edge, %rsnd_status_update.exit.if.end43_crit_edge
  %tmp16.0688 = phi i32 [ %tmp16.0687, %do.end41 ], [ %call24, %lor.lhs.false.if.end43_crit_edge ], [ 0, %rsnd_status_update.exit.if.end43_crit_edge ], [ 0, %land.lhs.true.if.end43_crit_edge ], [ -517, %if.end43.fold.split ]
  %or = or i32 %tmp16.0688, %ret14.0829
  %inc = add i32 %i.0, 1
  %cmp28.i = icmp slt i32 %inc, 13
  br i1 %cmp28.i, label %if.end43.for.body.i.preheader_crit_edge, label %if.end43.for.end_crit_edge

if.end43.for.end_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.end43.for.body.i.preheader_crit_edge:          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.preheader

for.end:                                          ; preds = %if.end43.for.end_crit_edge, %for.inc.i.for.end_crit_edge
  %ret14.0809 = phi i32 [ %ret14.0829, %for.inc.i.for.end_crit_edge ], [ %or, %if.end43.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret14.0809)
  %cmp45 = icmp slt i32 %ret14.0809, 0
  br i1 %cmp45, label %for.end.dai_trigger_end_crit_edge, label %if.end48

for.end.dai_trigger_end_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %dai_trigger_end

if.end48:                                         ; preds = %for.end
  %38 = ptrtoint ptr %rdai8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rdai8, align 4
  %priv51 = getelementptr inbounds %struct.rsnd_dai, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %priv51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv51, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %dev53 = getelementptr inbounds %struct.platform_device, ptr %43, i32 0, i32 3
  %playback57 = getelementptr inbounds %struct.rsnd_dai, ptr %39, i32 0, i32 1
  %cmp58 = icmp eq ptr %playback57, %retval.0.i
  %conv59 = zext i1 %cmp58 to i32
  %arrayidx63 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %conv59
  %tobool.not.i517 = icmp eq ptr %arrayidx63, null
  br label %for.body.i519.preheader

for.body.i519.preheader:                          ; preds = %if.end108.for.body.i519.preheader_crit_edge, %if.end48
  %ret60.0831 = phi i32 [ 0, %if.end48 ], [ %or109, %if.end108.for.body.i519.preheader_crit_edge ]
  %storemerge508830 = phi i32 [ 0, %if.end48 ], [ %inc111, %if.end108.for.body.i519.preheader_crit_edge ]
  br label %for.body.i519

for.body.i519:                                    ; preds = %for.inc.i530.for.body.i519_crit_edge, %for.body.i519.preheader
  %i61.0 = phi i32 [ %inc.i528, %for.inc.i530.for.body.i519_crit_edge ], [ %storemerge508830, %for.body.i519.preheader ]
  br i1 %tobool.not.i517, label %for.body.i519.cond.end4.i524_crit_edge, label %cond.true2.i521

for.body.i519.cond.end4.i524_crit_edge:           ; preds = %for.body.i519
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end4.i524

cond.true2.i521:                                  ; preds = %for.body.i519
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i520 = getelementptr i32, ptr %arrayidx63, i32 %i61.0
  %44 = ptrtoint ptr %arrayidx.i520 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i520, align 4
  br label %cond.end4.i524

cond.end4.i524:                                   ; preds = %cond.true2.i521, %for.body.i519.cond.end4.i524_crit_edge
  %cond5.i522 = phi i32 [ %45, %cond.true2.i521 ], [ %i61.0, %for.body.i519.cond.end4.i524_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %cond5.i522)
  %cmp6.i523 = icmp ult i32 %cond5.i522, 13
  br i1 %cmp6.i523, label %cond.end11.i527, label %cond.end4.i524.for.inc.i530_crit_edge

cond.end4.i524.for.inc.i530_crit_edge:            ; preds = %cond.end4.i524
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i530

cond.end11.i527:                                  ; preds = %cond.end4.i524
  %arrayidx9.i525 = getelementptr %struct.rsnd_dai_stream, ptr %retval.0.i, i32 0, i32 2, i32 %cond5.i522
  %46 = ptrtoint ptr %arrayidx9.i525 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx9.i525, align 4
  %tobool13.not.i526 = icmp eq ptr %47, null
  br i1 %tobool13.not.i526, label %cond.end11.i527.for.inc.i530_crit_edge, label %for.body68

cond.end11.i527.for.inc.i530_crit_edge:           ; preds = %cond.end11.i527
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i530

for.inc.i530:                                     ; preds = %cond.end11.i527.for.inc.i530_crit_edge, %cond.end4.i524.for.inc.i530_crit_edge
  %inc.i528 = add i32 %i61.0, 1
  %exitcond.not.i529 = icmp eq i32 %inc.i528, 13
  br i1 %exitcond.not.i529, label %for.inc.i530.for.end112_crit_edge, label %for.inc.i530.for.body.i519_crit_edge

for.inc.i530.for.body.i519_crit_edge:             ; preds = %for.inc.i530
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i519

for.inc.i530.for.end112_crit_edge:                ; preds = %for.inc.i530
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end112

for.body68:                                       ; preds = %cond.end11.i527
  %arrayidx71 = getelementptr i32, ptr %arrayidx63, i32 %i61.0
  %48 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx71, align 4
  %ops.i533 = getelementptr inbounds %struct.rsnd_mod, ptr %47, i32 0, i32 2
  %50 = ptrtoint ptr %ops.i533 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i533, align 4
  %get_status.i534 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %51, i32 0, i32 16
  %52 = ptrtoint ptr %get_status.i534 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %get_status.i534, align 4
  %call.i535 = tail call ptr %53(ptr noundef nonnull %47, ptr noundef %retval.0.i, i32 noundef %49) #17
  %54 = ptrtoint ptr %call.i535 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %call.i535, align 4
  %shr.i536 = lshr i32 %55, 8
  %add2.i538 = add nuw nsw i32 %shr.i536, 1
  %conv4.i539 = and i32 %add2.i538, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %conv4.i539)
  %cmp12.i542 = icmp eq i32 %conv4.i539, 15
  br i1 %cmp12.i542, label %for.body68.do.end106_crit_edge, label %rsnd_status_update.exit548

for.body68.do.end106_crit_edge:                   ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end106

rsnd_status_update.exit548:                       ; preds = %for.body68
  %56 = and i32 %55, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i540 = icmp eq i32 %56, 0
  %and15.i543 = and i32 %55, -3841
  %shl17.i544 = shl nuw nsw i32 %conv4.i539, 8
  %add18.i545 = or i32 %shl17.i544, %and15.i543
  %57 = ptrtoint ptr %call.i535 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add18.i545, ptr %call.i535, align 4
  br i1 %cmp.i540, label %land.lhs.true75, label %rsnd_status_update.exit548.if.end108_crit_edge

rsnd_status_update.exit548.if.end108_crit_edge:   ; preds = %rsnd_status_update.exit548
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end108

land.lhs.true75:                                  ; preds = %rsnd_status_update.exit548
  %58 = ptrtoint ptr %ops.i533 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i533, align 4
  %start = getelementptr inbounds %struct.rsnd_mod_ops, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %start, align 4
  %tobool77.not = icmp eq ptr %61, null
  br i1 %tobool77.not, label %land.lhs.true75.if.end108_crit_edge, label %lor.lhs.false91

land.lhs.true75.if.end108_crit_edge:              ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end108

lor.lhs.false91:                                  ; preds = %land.lhs.true75
  %call81 = tail call i32 %61(ptr noundef nonnull %47, ptr noundef %retval.0.i, ptr noundef %3) #17
  %62 = zext i32 %call81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %call81, label %lor.lhs.false91.do.end106_crit_edge [
    i32 0, label %lor.lhs.false91.if.end108_crit_edge
    i32 -517, label %if.end108.fold.split
  ], !prof !310

lor.lhs.false91.if.end108_crit_edge:              ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end108

lor.lhs.false91.do.end106_crit_edge:              ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end106

do.end106:                                        ; preds = %lor.lhs.false91.do.end106_crit_edge, %for.body68.do.end106_crit_edge
  %tmp69.0711 = phi i32 [ 0, %for.body68.do.end106_crit_edge ], [ %call81, %lor.lhs.false91.do.end106_crit_edge ]
  %retval.0.i547701707 = phi i32 [ -1, %for.body68.do.end106_crit_edge ], [ 1, %lor.lhs.false91.do.end106_crit_edge ]
  %call107 = tail call ptr @rsnd_mod_name(ptr noundef nonnull %47)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53, ptr noundef nonnull @.str.56, ptr noundef %call107, ptr noundef nonnull @.str.90, i32 noundef %tmp69.0711, i32 noundef %retval.0.i547701707) #20
  br label %if.end108

if.end108.fold.split:                             ; preds = %lor.lhs.false91
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end108

if.end108:                                        ; preds = %if.end108.fold.split, %do.end106, %lor.lhs.false91.if.end108_crit_edge, %land.lhs.true75.if.end108_crit_edge, %rsnd_status_update.exit548.if.end108_crit_edge
  %tmp69.0712 = phi i32 [ %tmp69.0711, %do.end106 ], [ %call81, %lor.lhs.false91.if.end108_crit_edge ], [ 0, %rsnd_status_update.exit548.if.end108_crit_edge ], [ 0, %land.lhs.true75.if.end108_crit_edge ], [ -517, %if.end108.fold.split ]
  %or109 = or i32 %tmp69.0712, %ret60.0831
  %inc111 = add i32 %i61.0, 1
  %cmp28.i518 = icmp slt i32 %inc111, 13
  br i1 %cmp28.i518, label %if.end108.for.body.i519.preheader_crit_edge, label %if.end108.for.end112_crit_edge

if.end108.for.end112_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end112

if.end108.for.body.i519.preheader_crit_edge:      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i519.preheader

for.end112:                                       ; preds = %if.end108.for.end112_crit_edge, %for.inc.i530.for.end112_crit_edge
  %ret60.0805 = phi i32 [ %ret60.0831, %for.inc.i530.for.end112_crit_edge ], [ %or109, %if.end108.for.end112_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret60.0805)
  %cmp114 = icmp slt i32 %ret60.0805, 0
  br i1 %cmp114, label %for.end112.dai_trigger_end_crit_edge, label %if.end117

for.end112.dai_trigger_end_crit_edge:             ; preds = %for.end112
  call void @__sanitizer_cov_trace_pc() #19
  br label %dai_trigger_end

if.end117:                                        ; preds = %for.end112
  %63 = ptrtoint ptr %rdai8 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rdai8, align 4
  %priv120 = getelementptr inbounds %struct.rsnd_dai, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %priv120 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv120, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %dev122 = getelementptr inbounds %struct.platform_device, ptr %68, i32 0, i32 3
  %playback126 = getelementptr inbounds %struct.rsnd_dai, ptr %64, i32 0, i32 1
  %cmp127 = icmp eq ptr %playback126, %retval.0.i
  %conv128 = zext i1 %cmp127 to i32
  %arrayidx132 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %conv128
  %tobool.not.i549 = icmp eq ptr %arrayidx132, null
  br label %for.body.i551.preheader

for.body.i551.preheader:                          ; preds = %if.end177.for.body.i551.preheader_crit_edge, %if.end117
  %ret129.0833 = phi i32 [ 0, %if.end117 ], [ %or178, %if.end177.for.body.i551.preheader_crit_edge ]
  %storemerge509832 = phi i32 [ 0, %if.end117 ], [ %inc180, %if.end177.for.body.i551.preheader_crit_edge ]
  br label %for.body.i551

for.body.i551:                                    ; preds = %for.inc.i562.for.body.i551_crit_edge, %for.body.i551.preheader
  %i130.0 = phi i32 [ %inc.i560, %for.inc.i562.for.body.i551_crit_edge ], [ %storemerge509832, %for.body.i551.preheader ]
  br i1 %tobool.not.i549, label %for.body.i551.cond.end4.i556_crit_edge, label %cond.true2.i553

for.body.i551.cond.end4.i556_crit_edge:           ; preds = %for.body.i551
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end4.i556

cond.true2.i553:                                  ; preds = %for.body.i551
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i552 = getelementptr i32, ptr %arrayidx132, i32 %i130.0
  %69 = ptrtoint ptr %arrayidx.i552 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i552, align 4
  br label %cond.end4.i556

cond.end4.i556:                                   ; preds = %cond.true2.i553, %for.body.i551.cond.end4.i556_crit_edge
  %cond5.i554 = phi i32 [ %70, %cond.true2.i553 ], [ %i130.0, %for.body.i551.cond.end4.i556_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %cond5.i554)
  %cmp6.i555 = icmp ult i32 %cond5.i554, 13
  br i1 %cmp6.i555, label %cond.end11.i559, label %cond.end4.i556.for.inc.i562_crit_edge

cond.end4.i556.for.inc.i562_crit_edge:            ; preds = %cond.end4.i556
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i562

cond.end11.i559:                                  ; preds = %cond.end4.i556
  %arrayidx9.i557 = getelementptr %struct.rsnd_dai_stream, ptr %retval.0.i, i32 0, i32 2, i32 %cond5.i554
  %71 = ptrtoint ptr %arrayidx9.i557 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx9.i557, align 4
  %tobool13.not.i558 = icmp eq ptr %72, null
  br i1 %tobool13.not.i558, label %cond.end11.i559.for.inc.i562_crit_edge, label %land.lhs.true144

cond.end11.i559.for.inc.i562_crit_edge:           ; preds = %cond.end11.i559
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i562

for.inc.i562:                                     ; preds = %cond.end11.i559.for.inc.i562_crit_edge, %cond.end4.i556.for.inc.i562_crit_edge
  %inc.i560 = add i32 %i130.0, 1
  %exitcond.not.i561 = icmp eq i32 %inc.i560, 13
  br i1 %exitcond.not.i561, label %for.inc.i562.dai_trigger_end_crit_edge, label %for.inc.i562.for.body.i551_crit_edge

for.inc.i562.for.body.i551_crit_edge:             ; preds = %for.inc.i562
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i551

for.inc.i562.dai_trigger_end_crit_edge:           ; preds = %for.inc.i562
  call void @__sanitizer_cov_trace_pc() #19
  br label %dai_trigger_end

land.lhs.true144:                                 ; preds = %cond.end11.i559
  %arrayidx140 = getelementptr i32, ptr %arrayidx132, i32 %i130.0
  %73 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx140, align 4
  %ops.i565 = getelementptr inbounds %struct.rsnd_mod, ptr %72, i32 0, i32 2
  %75 = ptrtoint ptr %ops.i565 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops.i565, align 4
  %get_status.i566 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %76, i32 0, i32 16
  %77 = ptrtoint ptr %get_status.i566 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %get_status.i566, align 4
  %call.i567 = tail call ptr %78(ptr noundef nonnull %72, ptr noundef %retval.0.i, i32 noundef %74) #17
  %79 = ptrtoint ptr %ops.i565 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops.i565, align 4
  %irq = getelementptr inbounds %struct.rsnd_mod_ops, ptr %80, i32 0, i32 8
  %81 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %irq, align 4
  %tobool146.not = icmp eq ptr %82, null
  br i1 %tobool146.not, label %land.lhs.true144.if.end177_crit_edge, label %lor.lhs.false160

land.lhs.true144.if.end177_crit_edge:             ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end177

lor.lhs.false160:                                 ; preds = %land.lhs.true144
  %call150 = tail call i32 %82(ptr noundef nonnull %72, ptr noundef %retval.0.i, ptr noundef %3, i32 noundef 1) #17
  %83 = zext i32 %call150 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %call150, label %do.end175 [
    i32 0, label %lor.lhs.false160.if.end177_crit_edge
    i32 -517, label %if.end177.fold.split
  ], !prof !310

lor.lhs.false160.if.end177_crit_edge:             ; preds = %lor.lhs.false160
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end177

do.end175:                                        ; preds = %lor.lhs.false160
  call void @__sanitizer_cov_trace_pc() #19
  %call176 = tail call ptr @rsnd_mod_name(ptr noundef nonnull %72)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev122, ptr noundef nonnull @.str.56, ptr noundef %call176, ptr noundef nonnull @.str.93, i32 noundef %call150, i32 noundef 1) #20
  br label %if.end177

if.end177.fold.split:                             ; preds = %lor.lhs.false160
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end177

if.end177:                                        ; preds = %if.end177.fold.split, %do.end175, %lor.lhs.false160.if.end177_crit_edge, %land.lhs.true144.if.end177_crit_edge
  %tmp138.0729 = phi i32 [ %call150, %do.end175 ], [ %call150, %lor.lhs.false160.if.end177_crit_edge ], [ 0, %land.lhs.true144.if.end177_crit_edge ], [ -517, %if.end177.fold.split ]
  %or178 = or i32 %tmp138.0729, %ret129.0833
  %inc180 = add i32 %i130.0, 1
  %cmp28.i550 = icmp slt i32 %inc180, 13
  br i1 %cmp28.i550, label %if.end177.for.body.i551.preheader_crit_edge, label %if.end177.dai_trigger_end_crit_edge

if.end177.dai_trigger_end_crit_edge:              ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #19
  br label %dai_trigger_end

if.end177.for.body.i551.preheader_crit_edge:      ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i551.preheader

sw.bb187:                                         ; preds = %rsnd_dai_to_rdai.exit.sw.bb187_crit_edge, %rsnd_dai_to_rdai.exit.sw.bb187_crit_edge944
  %rdai189 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %retval.0.i, i32 0, i32 4
  %84 = ptrtoint ptr %rdai189 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rdai189, align 4
  %priv190 = getelementptr inbounds %struct.rsnd_dai, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %priv190 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %priv190, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %dev192 = getelementptr inbounds %struct.platform_device, ptr %89, i32 0, i32 3
  %playback196 = getelementptr inbounds %struct.rsnd_dai, ptr %85, i32 0, i32 1
  %cmp197 = icmp eq ptr %playback196, %retval.0.i
  %conv198 = zext i1 %cmp197 to i32
  %arrayidx202 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %conv198
  %tobool.not.i572 = icmp eq ptr %arrayidx202, null
  br label %for.body.i574.preheader

for.body.i574.preheader:                          ; preds = %if.end248.for.body.i574.preheader_crit_edge, %sw.bb187
  %ret199.0823 = phi i32 [ 0, %sw.bb187 ], [ %or249, %if.end248.for.body.i574.preheader_crit_edge ]
  %storemerge822 = phi i32 [ 0, %sw.bb187 ], [ %inc251, %if.end248.for.body.i574.preheader_crit_edge ]
  br label %for.body.i574

for.body.i574:                                    ; preds = %for.inc.i585.for.body.i574_crit_edge, %for.body.i574.preheader
  %i200.0 = phi i32 [ %inc.i583, %for.inc.i585.for.body.i574_crit_edge ], [ %storemerge822, %for.body.i574.preheader ]
  br i1 %tobool.not.i572, label %for.body.i574.cond.end4.i579_crit_edge, label %cond.true2.i576

for.body.i574.cond.end4.i579_crit_edge:           ; preds = %for.body.i574
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end4.i579

cond.true2.i576:                                  ; preds = %for.body.i574
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i575 = getelementptr i32, ptr %arrayidx202, i32 %i200.0
  %90 = ptrtoint ptr %arrayidx.i575 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i575, align 4
  br label %cond.end4.i579

cond.end4.i579:                                   ; preds = %cond.true2.i576, %for.body.i574.cond.end4.i579_crit_edge
  %cond5.i577 = phi i32 [ %91, %cond.true2.i576 ], [ %i200.0, %for.body.i574.cond.end4.i579_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %cond5.i577)
  %cmp6.i578 = icmp ult i32 %cond5.i577, 13
  br i1 %cmp6.i578, label %cond.end11.i582, label %cond.end4.i579.for.inc.i585_crit_edge

cond.end4.i579.for.inc.i585_crit_edge:            ; preds = %cond.end4.i579
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i585

cond.end11.i582:                                  ; preds = %cond.end4.i579
  %arrayidx9.i580 = getelementptr %struct.rsnd_dai_stream, ptr %retval.0.i, i32 0, i32 2, i32 %cond5.i577
  %92 = ptrtoint ptr %arrayidx9.i580 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx9.i580, align 4
  %tobool13.not.i581 = icmp eq ptr %93, null
  br i1 %tobool13.not.i581, label %cond.end11.i582.for.inc.i585_crit_edge, label %land.lhs.true214

cond.end11.i582.for.inc.i585_crit_edge:           ; preds = %cond.end11.i582
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i585

for.inc.i585:                                     ; preds = %cond.end11.i582.for.inc.i585_crit_edge, %cond.end4.i579.for.inc.i585_crit_edge
  %inc.i583 = add i32 %i200.0, 1
  %exitcond.not.i584 = icmp eq i32 %inc.i583, 13
  br i1 %exitcond.not.i584, label %for.inc.i585.for.end252_crit_edge, label %for.inc.i585.for.body.i574_crit_edge

for.inc.i585.for.body.i574_crit_edge:             ; preds = %for.inc.i585
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i574

for.inc.i585.for.end252_crit_edge:                ; preds = %for.inc.i585
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end252

land.lhs.true214:                                 ; preds = %cond.end11.i582
  %arrayidx210 = getelementptr i32, ptr %arrayidx202, i32 %i200.0
  %94 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx210, align 4
  %ops.i588 = getelementptr inbounds %struct.rsnd_mod, ptr %93, i32 0, i32 2
  %96 = ptrtoint ptr %ops.i588 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ops.i588, align 4
  %get_status.i589 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %97, i32 0, i32 16
  %98 = ptrtoint ptr %get_status.i589 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %get_status.i589, align 4
  %call.i590 = tail call ptr %99(ptr noundef nonnull %93, ptr noundef %retval.0.i, i32 noundef %95) #17
  %100 = ptrtoint ptr %ops.i588 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops.i588, align 4
  %irq216 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %101, i32 0, i32 8
  %102 = ptrtoint ptr %irq216 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %irq216, align 4
  %tobool217.not = icmp eq ptr %103, null
  br i1 %tobool217.not, label %land.lhs.true214.if.end248_crit_edge, label %lor.lhs.false231

land.lhs.true214.if.end248_crit_edge:             ; preds = %land.lhs.true214
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end248

lor.lhs.false231:                                 ; preds = %land.lhs.true214
  %call221 = tail call i32 %103(ptr noundef nonnull %93, ptr noundef %retval.0.i, ptr noundef %3, i32 noundef 0) #17
  %104 = zext i32 %call221 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %call221, label %do.end246 [
    i32 0, label %lor.lhs.false231.if.end248_crit_edge
    i32 -517, label %if.end248.fold.split
  ], !prof !310

lor.lhs.false231.if.end248_crit_edge:             ; preds = %lor.lhs.false231
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end248

do.end246:                                        ; preds = %lor.lhs.false231
  call void @__sanitizer_cov_trace_pc() #19
  %call247 = tail call ptr @rsnd_mod_name(ptr noundef nonnull %93)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev192, ptr noundef nonnull @.str.56, ptr noundef %call247, ptr noundef nonnull @.str.93, i32 noundef %call221, i32 noundef 1) #20
  br label %if.end248

if.end248.fold.split:                             ; preds = %lor.lhs.false231
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end248

if.end248:                                        ; preds = %if.end248.fold.split, %do.end246, %lor.lhs.false231.if.end248_crit_edge, %land.lhs.true214.if.end248_crit_edge
  %tmp208.0741 = phi i32 [ %call221, %do.end246 ], [ %call221, %lor.lhs.false231.if.end248_crit_edge ], [ 0, %land.lhs.true214.if.end248_crit_edge ], [ -517, %if.end248.fold.split ]
  %or249 = or i32 %tmp208.0741, %ret199.0823
  %inc251 = add i32 %i200.0, 1
  %cmp28.i573 = icmp slt i32 %inc251, 13
  br i1 %cmp28.i573, label %if.end248.for.body.i574.preheader_crit_edge, label %if.end248.for.end252_crit_edge

if.end248.for.end252_crit_edge:                   ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end252

if.end248.for.body.i574.preheader_crit_edge:      ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i574.preheader

for.end252:                                       ; preds = %if.end248.for.end252_crit_edge, %for.inc.i585.for.end252_crit_edge
  %ret199.0821 = phi i32 [ %ret199.0823, %for.inc.i585.for.end252_crit_edge ], [ %or249, %if.end248.for.end252_crit_edge ]
  %105 = ptrtoint ptr %rdai189 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rdai189, align 4
  %priv256 = getelementptr inbounds %struct.rsnd_dai, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %priv256 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %priv256, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %dev258 = getelementptr inbounds %struct.platform_device, ptr %110, i32 0, i32 3
  %playback262 = getelementptr inbounds %struct.rsnd_dai, ptr %106, i32 0, i32 1
  %cmp263 = icmp eq ptr %playback262, %retval.0.i
  %conv264 = zext i1 %cmp263 to i32
  %arrayidx268 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %conv264
  %tobool.not.i595 = icmp eq ptr %arrayidx268, null
  br label %for.body.i597.preheader

for.body.i597.preheader:                          ; preds = %if.end313.for.body.i597.preheader_crit_edge, %for.end252
  %ret265.0825 = phi i32 [ 0, %for.end252 ], [ %or314, %if.end313.for.body.i597.preheader_crit_edge ]
  %storemerge505824 = phi i32 [ 0, %for.end252 ], [ %inc316, %if.end313.for.body.i597.preheader_crit_edge ]
  br label %for.body.i597

for.body.i597:                                    ; preds = %for.inc.i608.for.body.i597_crit_edge, %for.body.i597.preheader
  %i266.0 = phi i32 [ %inc.i606, %for.inc.i608.for.body.i597_crit_edge ], [ %storemerge505824, %for.body.i597.preheader ]
  br i1 %tobool.not.i595, label %for.body.i597.cond.end4.i602_crit_edge, label %cond.true2.i599

for.body.i597.cond.end4.i602_crit_edge:           ; preds = %for.body.i597
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end4.i602

cond.true2.i599:                                  ; preds = %for.body.i597
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i598 = getelementptr i32, ptr %arrayidx268, i32 %i266.0
  %111 = ptrtoint ptr %arrayidx.i598 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx.i598, align 4
  br label %cond.end4.i602

cond.end4.i602:                                   ; preds = %cond.true2.i599, %for.body.i597.cond.end4.i602_crit_edge
  %cond5.i600 = phi i32 [ %112, %cond.true2.i599 ], [ %i266.0, %for.body.i597.cond.end4.i602_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %cond5.i600)
  %cmp6.i601 = icmp ult i32 %cond5.i600, 13
  br i1 %cmp6.i601, label %cond.end11.i605, label %cond.end4.i602.for.inc.i608_crit_edge

cond.end4.i602.for.inc.i608_crit_edge:            ; preds = %cond.end4.i602
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i608

cond.end11.i605:                                  ; preds = %cond.end4.i602
  %arrayidx9.i603 = getelementptr %struct.rsnd_dai_stream, ptr %retval.0.i, i32 0, i32 2, i32 %cond5.i600
  %113 = ptrtoint ptr %arrayidx9.i603 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx9.i603, align 4
  %tobool13.not.i604 = icmp eq ptr %114, null
  br i1 %tobool13.not.i604, label %cond.end11.i605.for.inc.i608_crit_edge, label %for.body273

cond.end11.i605.for.inc.i608_crit_edge:           ; preds = %cond.end11.i605
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i608

for.inc.i608:                                     ; preds = %cond.end11.i605.for.inc.i608_crit_edge, %cond.end4.i602.for.inc.i608_crit_edge
  %inc.i606 = add i32 %i266.0, 1
  %exitcond.not.i607 = icmp eq i32 %inc.i606, 13
  br i1 %exitcond.not.i607, label %for.inc.i608.for.end317_crit_edge, label %for.inc.i608.for.body.i597_crit_edge

for.inc.i608.for.body.i597_crit_edge:             ; preds = %for.inc.i608
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i597

for.inc.i608.for.end317_crit_edge:                ; preds = %for.inc.i608
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end317

for.body273:                                      ; preds = %cond.end11.i605
  %arrayidx276 = getelementptr i32, ptr %arrayidx268, i32 %i266.0
  %115 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx276, align 4
  %ops.i611 = getelementptr inbounds %struct.rsnd_mod, ptr %114, i32 0, i32 2
  %117 = ptrtoint ptr %ops.i611 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ops.i611, align 4
  %get_status.i612 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %118, i32 0, i32 16
  %119 = ptrtoint ptr %get_status.i612 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %get_status.i612, align 4
  %call.i613 = tail call ptr %120(ptr noundef nonnull %114, ptr noundef %retval.0.i, i32 noundef %116) #17
  %121 = ptrtoint ptr %call.i613 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %call.i613, align 4
  %shr.i614 = lshr i32 %122, 8
  %add2.i616 = add nuw nsw i32 %shr.i614, 15
  %conv4.i617 = and i32 %add2.i616, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %conv4.i617)
  %cmp12.i620 = icmp eq i32 %conv4.i617, 15
  br i1 %cmp12.i620, label %for.body273.do.end311_crit_edge, label %rsnd_status_update.exit626

for.body273.do.end311_crit_edge:                  ; preds = %for.body273
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end311

rsnd_status_update.exit626:                       ; preds = %for.body273
  %123 = and i32 %122, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %123)
  %cmp.i618 = icmp eq i32 %123, 256
  %and15.i621 = and i32 %122, -3841
  %shl17.i622 = shl nuw nsw i32 %conv4.i617, 8
  %add18.i623 = or i32 %shl17.i622, %and15.i621
  %124 = ptrtoint ptr %call.i613 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %add18.i623, ptr %call.i613, align 4
  br i1 %cmp.i618, label %land.lhs.true280, label %rsnd_status_update.exit626.if.end313_crit_edge

rsnd_status_update.exit626.if.end313_crit_edge:   ; preds = %rsnd_status_update.exit626
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end313

land.lhs.true280:                                 ; preds = %rsnd_status_update.exit626
  %125 = ptrtoint ptr %ops.i611 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ops.i611, align 4
  %stop = getelementptr inbounds %struct.rsnd_mod_ops, ptr %126, i32 0, i32 7
  %127 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %stop, align 4
  %tobool282.not = icmp eq ptr %128, null
  br i1 %tobool282.not, label %land.lhs.true280.if.end313_crit_edge, label %lor.lhs.false296

land.lhs.true280.if.end313_crit_edge:             ; preds = %land.lhs.true280
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end313

lor.lhs.false296:                                 ; preds = %land.lhs.true280
  %call286 = tail call i32 %128(ptr noundef nonnull %114, ptr noundef %retval.0.i, ptr noundef %3) #17
  %129 = zext i32 %call286 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %call286, label %lor.lhs.false296.do.end311_crit_edge [
    i32 0, label %lor.lhs.false296.if.end313_crit_edge
    i32 -517, label %if.end313.fold.split
  ], !prof !310

lor.lhs.false296.if.end313_crit_edge:             ; preds = %lor.lhs.false296
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end313

lor.lhs.false296.do.end311_crit_edge:             ; preds = %lor.lhs.false296
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end311

do.end311:                                        ; preds = %lor.lhs.false296.do.end311_crit_edge, %for.body273.do.end311_crit_edge
  %tmp274.0760 = phi i32 [ 0, %for.body273.do.end311_crit_edge ], [ %call286, %lor.lhs.false296.do.end311_crit_edge ]
  %retval.0.i625750756 = phi i32 [ -1, %for.body273.do.end311_crit_edge ], [ 1, %lor.lhs.false296.do.end311_crit_edge ]
  %call312 = tail call ptr @rsnd_mod_name(ptr noundef nonnull %114)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev258, ptr noundef nonnull @.str.56, ptr noundef %call312, ptr noundef nonnull @.str.98, i32 noundef %tmp274.0760, i32 noundef %retval.0.i625750756) #20
  br label %if.end313

if.end313.fold.split:                             ; preds = %lor.lhs.false296
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end313

if.end313:                                        ; preds = %if.end313.fold.split, %do.end311, %lor.lhs.false296.if.end313_crit_edge, %land.lhs.true280.if.end313_crit_edge, %rsnd_status_update.exit626.if.end313_crit_edge
  %tmp274.0761 = phi i32 [ %tmp274.0760, %do.end311 ], [ %call286, %lor.lhs.false296.if.end313_crit_edge ], [ 0, %rsnd_status_update.exit626.if.end313_crit_edge ], [ 0, %land.lhs.true280.if.end313_crit_edge ], [ -517, %if.end313.fold.split ]
  %or314 = or i32 %tmp274.0761, %ret265.0825
  %inc316 = add i32 %i266.0, 1
  %cmp28.i596 = icmp slt i32 %inc316, 13
  br i1 %cmp28.i596, label %if.end313.for.body.i597.preheader_crit_edge, label %if.end313.for.end317_crit_edge

if.end313.for.end317_crit_edge:                   ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end317

if.end313.for.body.i597.preheader_crit_edge:      ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i597.preheader

for.end317:                                       ; preds = %if.end313.for.end317_crit_edge, %for.inc.i608.for.end317_crit_edge
  %ret265.0817 = phi i32 [ %ret265.0825, %for.inc.i608.for.end317_crit_edge ], [ %or314, %if.end313.for.end317_crit_edge ]
  %or319 = or i32 %ret265.0817, %ret199.0821
  %130 = ptrtoint ptr %rdai189 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %rdai189, align 4
  %priv322 = getelementptr inbounds %struct.rsnd_dai, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %priv322 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %priv322, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %dev324 = getelementptr inbounds %struct.platform_device, ptr %135, i32 0, i32 3
  %playback328 = getelementptr inbounds %struct.rsnd_dai, ptr %131, i32 0, i32 1
  %cmp329 = icmp eq ptr %playback328, %retval.0.i
  %conv330 = zext i1 %cmp329 to i32
  %arrayidx334 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %conv330
  %tobool.not.i627 = icmp eq ptr %arrayidx334, null
  br label %for.body.i629.preheader

for.body.i629.preheader:                          ; preds = %if.end379.for.body.i629.preheader_crit_edge, %for.end317
  %ret331.0827 = phi i32 [ 0, %for.end317 ], [ %or380, %if.end379.for.body.i629.preheader_crit_edge ]
  %storemerge506826 = phi i32 [ 0, %for.end317 ], [ %inc382, %if.end379.for.body.i629.preheader_crit_edge ]
  br label %for.body.i629

for.body.i629:                                    ; preds = %for.inc.i640.for.body.i629_crit_edge, %for.body.i629.preheader
  %i332.0 = phi i32 [ %inc.i638, %for.inc.i640.for.body.i629_crit_edge ], [ %storemerge506826, %for.body.i629.preheader ]
  br i1 %tobool.not.i627, label %for.body.i629.cond.end4.i634_crit_edge, label %cond.true2.i631

for.body.i629.cond.end4.i634_crit_edge:           ; preds = %for.body.i629
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end4.i634

cond.true2.i631:                                  ; preds = %for.body.i629
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i630 = getelementptr i32, ptr %arrayidx334, i32 %i332.0
  %136 = ptrtoint ptr %arrayidx.i630 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx.i630, align 4
  br label %cond.end4.i634

cond.end4.i634:                                   ; preds = %cond.true2.i631, %for.body.i629.cond.end4.i634_crit_edge
  %cond5.i632 = phi i32 [ %137, %cond.true2.i631 ], [ %i332.0, %for.body.i629.cond.end4.i634_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %cond5.i632)
  %cmp6.i633 = icmp ult i32 %cond5.i632, 13
  br i1 %cmp6.i633, label %cond.end11.i637, label %cond.end4.i634.for.inc.i640_crit_edge

cond.end4.i634.for.inc.i640_crit_edge:            ; preds = %cond.end4.i634
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i640

cond.end11.i637:                                  ; preds = %cond.end4.i634
  %arrayidx9.i635 = getelementptr %struct.rsnd_dai_stream, ptr %retval.0.i, i32 0, i32 2, i32 %cond5.i632
  %138 = ptrtoint ptr %arrayidx9.i635 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx9.i635, align 4
  %tobool13.not.i636 = icmp eq ptr %139, null
  br i1 %tobool13.not.i636, label %cond.end11.i637.for.inc.i640_crit_edge, label %for.body339

cond.end11.i637.for.inc.i640_crit_edge:           ; preds = %cond.end11.i637
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i640

for.inc.i640:                                     ; preds = %cond.end11.i637.for.inc.i640_crit_edge, %cond.end4.i634.for.inc.i640_crit_edge
  %inc.i638 = add i32 %i332.0, 1
  %exitcond.not.i639 = icmp eq i32 %inc.i638, 13
  br i1 %exitcond.not.i639, label %for.inc.i640.for.end383_crit_edge, label %for.inc.i640.for.body.i629_crit_edge

for.inc.i640.for.body.i629_crit_edge:             ; preds = %for.inc.i640
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i629

for.inc.i640.for.end383_crit_edge:                ; preds = %for.inc.i640
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end383

for.body339:                                      ; preds = %cond.end11.i637
  %arrayidx342 = getelementptr i32, ptr %arrayidx334, i32 %i332.0
  %140 = ptrtoint ptr %arrayidx342 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx342, align 4
  %ops.i643 = getelementptr inbounds %struct.rsnd_mod, ptr %139, i32 0, i32 2
  %142 = ptrtoint ptr %ops.i643 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ops.i643, align 4
  %get_status.i644 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %143, i32 0, i32 16
  %144 = ptrtoint ptr %get_status.i644 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %get_status.i644, align 4
  %call.i645 = tail call ptr %145(ptr noundef nonnull %139, ptr noundef %retval.0.i, i32 noundef %141) #17
  %146 = ptrtoint ptr %call.i645 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %call.i645, align 4
  %shr.i646 = lshr i32 %147, 4
  %add2.i648 = add nuw nsw i32 %shr.i646, 15
  %conv4.i649 = and i32 %add2.i648, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %conv4.i649)
  %cmp12.i652 = icmp eq i32 %conv4.i649, 15
  br i1 %cmp12.i652, label %for.body339.do.end377_crit_edge, label %rsnd_status_update.exit658

for.body339.do.end377_crit_edge:                  ; preds = %for.body339
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end377

rsnd_status_update.exit658:                       ; preds = %for.body339
  %148 = and i32 %147, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %148)
  %cmp.i650 = icmp eq i32 %148, 16
  %and15.i653 = and i32 %147, -241
  %shl17.i654 = shl nuw nsw i32 %conv4.i649, 4
  %add18.i655 = or i32 %shl17.i654, %and15.i653
  %149 = ptrtoint ptr %call.i645 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %add18.i655, ptr %call.i645, align 4
  br i1 %cmp.i650, label %land.lhs.true346, label %rsnd_status_update.exit658.if.end379_crit_edge

rsnd_status_update.exit658.if.end379_crit_edge:   ; preds = %rsnd_status_update.exit658
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end379

land.lhs.true346:                                 ; preds = %rsnd_status_update.exit658
  %150 = ptrtoint ptr %ops.i643 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ops.i643, align 4
  %quit = getelementptr inbounds %struct.rsnd_mod_ops, ptr %151, i32 0, i32 5
  %152 = ptrtoint ptr %quit to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %quit, align 4
  %tobool348.not = icmp eq ptr %153, null
  br i1 %tobool348.not, label %land.lhs.true346.if.end379_crit_edge, label %lor.lhs.false362

land.lhs.true346.if.end379_crit_edge:             ; preds = %land.lhs.true346
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end379

lor.lhs.false362:                                 ; preds = %land.lhs.true346
  %call352 = tail call i32 %153(ptr noundef nonnull %139, ptr noundef %retval.0.i, ptr noundef %3) #17
  %154 = zext i32 %call352 to i64
  call void @__sanitizer_cov_trace_switch(i64 %154, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %call352, label %lor.lhs.false362.do.end377_crit_edge [
    i32 0, label %lor.lhs.false362.if.end379_crit_edge
    i32 -517, label %if.end379.fold.split
  ], !prof !310

lor.lhs.false362.if.end379_crit_edge:             ; preds = %lor.lhs.false362
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end379

lor.lhs.false362.do.end377_crit_edge:             ; preds = %lor.lhs.false362
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end377

do.end377:                                        ; preds = %lor.lhs.false362.do.end377_crit_edge, %for.body339.do.end377_crit_edge
  %tmp340.0785 = phi i32 [ 0, %for.body339.do.end377_crit_edge ], [ %call352, %lor.lhs.false362.do.end377_crit_edge ]
  %retval.0.i657775781 = phi i32 [ -1, %for.body339.do.end377_crit_edge ], [ 1, %lor.lhs.false362.do.end377_crit_edge ]
  %call378 = tail call ptr @rsnd_mod_name(ptr noundef nonnull %139)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev324, ptr noundef nonnull @.str.56, ptr noundef %call378, ptr noundef nonnull @.str.101, i32 noundef %tmp340.0785, i32 noundef %retval.0.i657775781) #20
  br label %if.end379

if.end379.fold.split:                             ; preds = %lor.lhs.false362
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end379

if.end379:                                        ; preds = %if.end379.fold.split, %do.end377, %lor.lhs.false362.if.end379_crit_edge, %land.lhs.true346.if.end379_crit_edge, %rsnd_status_update.exit658.if.end379_crit_edge
  %tmp340.0786 = phi i32 [ %tmp340.0785, %do.end377 ], [ %call352, %lor.lhs.false362.if.end379_crit_edge ], [ 0, %rsnd_status_update.exit658.if.end379_crit_edge ], [ 0, %land.lhs.true346.if.end379_crit_edge ], [ -517, %if.end379.fold.split ]
  %or380 = or i32 %tmp340.0786, %ret331.0827
  %inc382 = add i32 %i332.0, 1
  %cmp28.i628 = icmp slt i32 %inc382, 13
  br i1 %cmp28.i628, label %if.end379.for.body.i629.preheader_crit_edge, label %if.end379.for.end383_crit_edge

if.end379.for.end383_crit_edge:                   ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end383

if.end379.for.body.i629.preheader_crit_edge:      ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i629.preheader

for.end383:                                       ; preds = %if.end379.for.end383_crit_edge, %for.inc.i640.for.end383_crit_edge
  %ret331.0813 = phi i32 [ %ret331.0827, %for.inc.i640.for.end383_crit_edge ], [ %or380, %if.end379.for.end383_crit_edge ]
  %or385 = or i32 %or319, %ret331.0813
  br label %dai_trigger_end

dai_trigger_end:                                  ; preds = %for.end383, %if.end177.dai_trigger_end_crit_edge, %for.inc.i562.dai_trigger_end_crit_edge, %for.end112.dai_trigger_end_crit_edge, %for.end.dai_trigger_end_crit_edge, %rsnd_dai_to_rdai.exit.dai_trigger_end_crit_edge
  %ret.0 = phi i32 [ %or385, %for.end383 ], [ %ret14.0809, %for.end.dai_trigger_end_crit_edge ], [ %ret60.0805, %for.end112.dai_trigger_end_crit_edge ], [ -22, %rsnd_dai_to_rdai.exit.dai_trigger_end_crit_edge ], [ %ret129.0833, %for.inc.i562.dai_trigger_end_crit_edge ], [ %or178, %if.end177.dai_trigger_end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #17
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_soc_hw_rule_rate(ptr noundef %params, ptr nocapture noundef readonly %rule) #0 align 64 {
entry:
  %ic = alloca %struct.snd_interval, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %arrayidx.i8 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ic) #17
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %rdai2 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rdai2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdai2, align 4
  %4 = call ptr @memcpy(ptr %ic, ptr %arrayidx.i, i32 12)
  %call3 = tail call i32 @rsnd_runtime_channel_for_ssi_with_params(ptr noundef %1, ptr noundef %params)
  %max = getelementptr inbounds %struct.snd_interval, ptr %ic, i32 0, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call3, ptr %max, align 4
  %6 = ptrtoint ptr %ic to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call3, ptr %ic, align 4
  %call4 = call fastcc i32 @rsnd_soc_hw_rule(ptr noundef %3, ptr noundef nonnull @rsnd_soc_hw_rate_list, i32 noundef 12, ptr noundef nonnull %ic, ptr noundef %arrayidx.i8)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ic) #17
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_soc_hw_rule_channels(ptr noundef %params, ptr nocapture noundef readonly %rule) #0 align 64 {
entry:
  %ic = alloca %struct.snd_interval, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %arrayidx.i8 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ic) #17
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %rdai2 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rdai2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdai2, align 4
  %4 = call ptr @memcpy(ptr %ic, ptr %arrayidx.i, i32 12)
  %call3 = tail call i32 @rsnd_runtime_channel_for_ssi_with_params(ptr noundef %1, ptr noundef %params)
  %max = getelementptr inbounds %struct.snd_interval, ptr %ic, i32 0, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call3, ptr %max, align 4
  %6 = ptrtoint ptr %ic to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call3, ptr %ic, align 4
  %call4 = call fastcc i32 @rsnd_soc_hw_rule(ptr noundef %3, ptr noundef nonnull @rsnd_soc_hw_channels_list, i32 noundef 3, ptr noundef %arrayidx.i8, ptr noundef nonnull %ic)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ic) #17
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rsnd_soc_hw_rule(ptr noundef %rdai, ptr nocapture noundef readonly %list, i32 noundef %list_num, ptr nocapture noundef readonly %baseline, ptr noundef %iv) unnamed_addr #0 align 64 {
entry:
  %p = alloca %struct.snd_interval, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %p) #17
  %0 = getelementptr inbounds i8, ptr %p, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %openmin.i = getelementptr inbounds %struct.snd_interval, ptr %p, i32 0, i32 2
  %2 = ptrtoint ptr %openmin.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 15, ptr %openmin.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %list_num)
  %cmp86 = icmp sgt i32 %list_num, 0
  br i1 %cmp86, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %openmin.i79 = getelementptr inbounds %struct.snd_interval, ptr %iv, i32 0, i32 2
  %max.i81 = getelementptr inbounds %struct.snd_interval, ptr %iv, i32 0, i32 1
  %max20 = getelementptr inbounds %struct.snd_interval, ptr %baseline, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.087 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = phi i32 [ -1, %for.body.lr.ph ], [ %31, %for.inc.for.body_crit_edge ]
  %4 = phi i32 [ 0, %for.body.lr.ph ], [ %30, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %list, i32 %i.087
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iv, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp.i = icmp ugt i32 %8, %6
  br i1 %cmp.i, label %for.body.for.inc_crit_edge, label %lor.lhs.false.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp2.i = icmp eq i32 %8, %6
  br i1 %cmp2.i, label %land.lhs.true.i, label %lor.lhs.false.i.lor.lhs.false3.i_crit_edge

lor.lhs.false.i.lor.lhs.false3.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false3.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %9 = ptrtoint ptr %openmin.i79 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i80 = load i8, ptr %openmin.i79, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i80)
  %tobool.not.i = icmp sgt i8 %bf.load.i80, -1
  br i1 %tobool.not.i, label %land.lhs.true.i.lor.lhs.false3.i_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true.i.lor.lhs.false3.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %lor.lhs.false3.i

lor.lhs.false3.i:                                 ; preds = %land.lhs.true.i.lor.lhs.false3.i_crit_edge, %lor.lhs.false.i.lor.lhs.false3.i_crit_edge
  %10 = ptrtoint ptr %max.i81 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max.i81, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %6)
  %cmp4.i = icmp ult i32 %11, %6
  br i1 %cmp4.i, label %lor.lhs.false3.i.for.inc_crit_edge, label %lor.rhs.i

lor.lhs.false3.i.for.inc_crit_edge:               ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

lor.rhs.i:                                        ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %6)
  %cmp6.i = icmp eq i32 %11, %6
  br i1 %cmp6.i, label %snd_interval_test.exit, label %lor.rhs.i.if.end_crit_edge

lor.rhs.i.if.end_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

snd_interval_test.exit:                           ; preds = %lor.rhs.i
  %12 = ptrtoint ptr %openmin.i79 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load7.i = load i8, ptr %openmin.i79, align 4
  %13 = and i8 %bf.load7.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.not = icmp eq i8 %13, 0
  br i1 %tobool.not.not, label %snd_interval_test.exit.if.end_crit_edge, label %snd_interval_test.exit.for.inc_crit_edge

snd_interval_test.exit.for.inc_crit_edge:         ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

snd_interval_test.exit.if.end_crit_edge:          ; preds = %snd_interval_test.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %snd_interval_test.exit.if.end_crit_edge, %lor.rhs.i.if.end_crit_edge
  %14 = ptrtoint ptr %baseline to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %baseline, align 4
  %call3 = tail call i32 @rsnd_ssi_clk_query(ptr noundef %rdai, i32 noundef %15, i32 noundef %6, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %if.end.if.end19_crit_edge, label %if.then5

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %3, i32 %17)
  %19 = tail call i32 @llvm.umax.i32(i32 %4, i32 %17)
  br label %if.end19

if.end19:                                         ; preds = %if.then5, %if.end.if.end19_crit_edge
  %20 = phi i32 [ %19, %if.then5 ], [ %4, %if.end.if.end19_crit_edge ]
  %21 = phi i32 [ %18, %if.then5 ], [ %3, %if.end.if.end19_crit_edge ]
  %22 = ptrtoint ptr %max20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max20, align 4
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %call22 = tail call i32 @rsnd_ssi_clk_query(ptr noundef %rdai, i32 noundef %23, i32 noundef %25, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 0
  br i1 %cmp23.not, label %if.end19.for.inc_crit_edge, label %if.then24

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %28 = tail call i32 @llvm.umin.i32(i32 %21, i32 %27)
  %29 = tail call i32 @llvm.umax.i32(i32 %20, i32 %27)
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %if.end19.for.inc_crit_edge, %snd_interval_test.exit.for.inc_crit_edge, %lor.lhs.false3.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %30 = phi i32 [ %4, %for.body.for.inc_crit_edge ], [ %4, %land.lhs.true.i.for.inc_crit_edge ], [ %4, %lor.lhs.false3.i.for.inc_crit_edge ], [ %20, %if.end19.for.inc_crit_edge ], [ %29, %if.then24 ], [ %4, %snd_interval_test.exit.for.inc_crit_edge ]
  %31 = phi i32 [ %3, %for.body.for.inc_crit_edge ], [ %3, %land.lhs.true.i.for.inc_crit_edge ], [ %3, %lor.lhs.false3.i.for.inc_crit_edge ], [ %21, %if.end19.for.inc_crit_edge ], [ %28, %if.then24 ], [ %3, %snd_interval_test.exit.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, %list_num
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa85 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %30, %for.inc.for.end_crit_edge ]
  %.lcssa = phi i32 [ -1, %entry.for.end_crit_edge ], [ %31, %for.inc.for.end_crit_edge ]
  %max.i = getelementptr inbounds %struct.snd_interval, ptr %p, i32 0, i32 1
  %32 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.lcssa, ptr %p, align 4
  %33 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.lcssa85, ptr %max.i, align 4
  %call44 = call i32 @snd_interval_refine(ptr noundef %iv, ptr noundef nonnull %p) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %p) #17
  ret i32 %call44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_ssi_clk_query(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_refine(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rsnd_parse_tdm_split_mode(ptr nocapture noundef readonly %priv, ptr noundef %io, ptr noundef %dai_np) unnamed_addr #0 align 64 {
entry:
  %args.i49 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_child_by_name(ptr noundef %3, ptr noundef nonnull @.str.111) #17
  %rdai = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %4 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdai, align 4
  %playback = getelementptr inbounds %struct.rsnd_dai, ptr %5, i32 0, i32 1
  %cmp = icmp eq ptr %playback, %io
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup27_crit_edge, label %for.cond.preheader

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup27

for.cond.preheader:                               ; preds = %entry
  %flags = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %for.cond.preheader
  %i.0 = phi i32 [ %inc, %for.inc25 ], [ 0, %for.cond.preheader ]
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #17
  %6 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %dai_np, ptr noundef nonnull @.str.65, ptr noundef null, i32 noundef 0, i32 noundef %i.0, ptr noundef nonnull %args.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %cond.true.of_parse_phandle.exit_crit_edge

cond.true.of_parse_phandle.exit_crit_edge:        ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %cond.true.of_parse_phandle.exit_crit_edge
  %retval.0.i48 = phi ptr [ %8, %if.end.i ], [ null, %cond.true.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #17
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i49) #17
  %9 = call ptr @memset(ptr %args.i49, i32 255, i32 72)
  %call.i50 = call i32 @__of_parse_phandle_with_args(ptr noundef %dai_np, ptr noundef nonnull @.str.66, ptr noundef null, i32 noundef 0, i32 noundef %i.0, ptr noundef nonnull %args.i49) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool.not.i51 = icmp eq i32 %call.i50, 0
  br i1 %tobool.not.i51, label %if.end.i52, label %cond.false.of_parse_phandle.exit54_crit_edge

cond.false.of_parse_phandle.exit54_crit_edge:     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %of_parse_phandle.exit54

if.end.i52:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %args.i49 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %args.i49, align 4
  br label %of_parse_phandle.exit54

of_parse_phandle.exit54:                          ; preds = %if.end.i52, %cond.false.of_parse_phandle.exit54_crit_edge
  %retval.0.i53 = phi ptr [ %11, %if.end.i52 ], [ null, %cond.false.of_parse_phandle.exit54_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i49) #17
  br label %cond.end

cond.end:                                         ; preds = %of_parse_phandle.exit54, %of_parse_phandle.exit
  %cond = phi ptr [ %retval.0.i48, %of_parse_phandle.exit ], [ %retval.0.i53, %of_parse_phandle.exit54 ]
  %tobool7.not = icmp eq ptr %cond, null
  br i1 %tobool7.not, label %for.end26, label %if.end9

if.end9:                                          ; preds = %cond.end
  %call10 = call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef null) #17
  %cmp12.not58 = icmp eq ptr %call10, null
  br i1 %cmp12.not58, label %if.end9.for.inc25_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

if.end9.for.inc25_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc25

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end9.for.body_crit_edge
  %np.059 = phi ptr [ %call24, %for.inc.for.body_crit_edge ], [ %call10, %if.end9.for.body_crit_edge ]
  %cmp14 = icmp eq ptr %np.059, %cond
  br i1 %cmp14, label %if.then16, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %or = or i32 %13, 4
  store i32 %or, ptr %flags, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rsnd_parse_tdm_split_mode.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rsnd_parse_tdm_split_mode, %if.then21)) #17
          to label %for.inc [label %if.then21], !srcloc !309

if.then21:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rsnd_parse_tdm_split_mode.__UNIQUE_ID_ddebug252, ptr noundef %dev1, ptr noundef nonnull @.str.113, ptr noundef %io) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %if.then16, %for.body.for.inc_crit_edge
  %call24 = call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef nonnull %np.059) #17
  %cmp12.not = icmp eq ptr %call24, null
  br i1 %cmp12.not, label %for.inc.for.inc25_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.inc25_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc25

for.inc25:                                        ; preds = %for.inc.for.inc25_crit_edge, %if.end9.for.inc25_crit_edge
  call void @of_node_put(ptr noundef nonnull %cond) #17
  %inc = add i32 %i.0, 1
  br label %for.cond

for.end26:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  call void @of_node_put(ptr noundef nonnull %call) #17
  br label %cleanup27

cleanup27:                                        ; preds = %for.end26, %entry.cleanup27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_debugfs_probe(ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_hw_params(ptr nocapture noundef readnone %component, ptr noundef %substream, ptr noundef %hw_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dais.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i = icmp slt i32 %11, 0
  br i1 %cmp.i.i, label %entry.rsnd_dai_to_rdai.exit_crit_edge, label %lor.lhs.false.i.i

entry.rsnd_dai_to_rdai.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_dai_to_rdai.exit

lor.lhs.false.i.i:                                ; preds = %entry
  %rdai_nr.i.i = getelementptr inbounds %struct.rsnd_priv, ptr %9, i32 0, i32 22
  %12 = ptrtoint ptr %rdai_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rdai_nr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp1.not.i.i = icmp sgt i32 %13, %11
  br i1 %cmp1.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge

lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_dai_to_rdai.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %rdai.i.i = getelementptr inbounds %struct.rsnd_priv, ptr %9, i32 0, i32 21
  %14 = ptrtoint ptr %rdai.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rdai.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.rsnd_dai, ptr %15, i32 %11
  br label %rsnd_dai_to_rdai.exit

rsnd_dai_to_rdai.exit:                            ; preds = %if.end.i.i, %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge, %entry.rsnd_dai_to_rdai.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge ], [ null, %entry.rsnd_dai_to_rdai.exit_crit_edge ]
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %16 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  %playback.i = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 1
  %capture.i = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 2
  %retval.0.i182 = select i1 %cmp.i, ptr %playback.i, ptr %capture.i
  %converted_rate = getelementptr inbounds %struct.rsnd_dai_stream, ptr %retval.0.i182, i32 0, i32 6
  %18 = ptrtoint ptr %converted_rate to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %converted_rate, align 4
  %converted_chan = getelementptr inbounds %struct.rsnd_dai_stream, ptr %retval.0.i182, i32 0, i32 7
  %19 = ptrtoint ptr %converted_chan to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %converted_chan, align 4
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dai_link, align 4
  %dynamic = getelementptr inbounds %struct.snd_soc_dai_link, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %dynamic to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load = load i32, ptr %dynamic, align 4
  %23 = and i32 %bf.load, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %rsnd_dai_to_rdai.exit.if.end117_crit_edge, label %if.then

rsnd_dai_to_rdai.exit.if.end117_crit_edge:        ; preds = %rsnd_dai_to_rdai.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end117

if.then:                                          ; preds = %rsnd_dai_to_rdai.exit
  %rdai3 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %retval.0.i182, i32 0, i32 4
  %24 = ptrtoint ptr %rdai3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rdai3, align 4
  %priv4 = getelementptr inbounds %struct.rsnd_dai, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv4, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stream.i, align 4
  %arrayidx = getelementptr %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 5, i32 %31
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn198 = load ptr, ptr %arrayidx, align 4
  %cmp.not199 = icmp eq ptr %.pn198, %arrayidx
  br i1 %cmp.not199, label %if.then.for.end_crit_edge, label %for.body.lr.ph

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 2
  %arrayidx.i.i185 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %for.body.lr.ph
  %.pn200 = phi ptr [ %.pn198, %for.body.lr.ph ], [ %.pn, %if.end24.for.body_crit_edge ]
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i183 = getelementptr i8, ptr %.pn200, i32 300
  %35 = ptrtoint ptr %arrayidx.i.i183 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i183, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp14.not = icmp eq i32 %34, %36
  br i1 %cmp14.not, label %for.body.if.end_crit_edge, label %if.then15

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %37 = ptrtoint ptr %converted_chan to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %converted_chan, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15, %for.body.if.end_crit_edge
  %38 = ptrtoint ptr %arrayidx.i.i185 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.i185, align 4
  %arrayidx.i.i186 = getelementptr i8, ptr %.pn200, i32 312
  %40 = ptrtoint ptr %arrayidx.i.i186 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.i186, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp20.not = icmp eq i32 %39, %41
  br i1 %cmp20.not, label %if.end.if.end24_crit_edge, label %if.then21

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end24

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %42 = ptrtoint ptr %converted_rate to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %converted_rate, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end.if.end24_crit_edge
  %43 = ptrtoint ptr %.pn200 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn = load ptr, ptr %.pn200, align 4
  %cmp.not = icmp eq ptr %.pn, %arrayidx
  br i1 %cmp.not, label %if.end24.for.end_crit_edge, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %if.end24.for.end_crit_edge, %if.then.for.end_crit_edge
  %44 = ptrtoint ptr %converted_chan to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %converted_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool31.not = icmp eq i32 %45, 0
  br i1 %tobool31.not, label %for.end.if.end42_crit_edge, label %do.body

for.end.if.end42_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end42

do.body:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rsnd_hw_params.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rsnd_hw_params, %if.then39)) #17
          to label %if.end42 [label %if.then39], !srcloc !309

if.then39:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %46 = ptrtoint ptr %converted_chan to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %converted_chan, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rsnd_hw_params.__UNIQUE_ID_ddebug256, ptr noundef %dev5, ptr noundef nonnull @.str.125, i32 noundef %47) #17
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %do.body, %for.end.if.end42_crit_edge
  %48 = ptrtoint ptr %converted_rate to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %converted_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool44.not = icmp eq i32 %49, 0
  br i1 %tobool44.not, label %if.end42.if.end117_crit_edge, label %if.then45

if.end42.if.end117_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end117

if.then45:                                        ; preds = %if.end42
  %arrayidx46 = getelementptr %struct.rsnd_dai_stream, ptr %retval.0.i182, i32 0, i32 2, i32 6
  %50 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx46, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rsnd_hw_params.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rsnd_hw_params, %if.then59)) #17
          to label %do.end63 [label %if.then59], !srcloc !309

if.then59:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #19
  %52 = ptrtoint ptr %converted_rate to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %converted_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rsnd_hw_params.__UNIQUE_ID_ddebug257, ptr noundef %dev5, ptr noundef nonnull @.str.126, i32 noundef %53) #17
  br label %do.end63

do.end63:                                         ; preds = %if.then59, %if.then45
  %54 = ptrtoint ptr %converted_chan to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %converted_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool65.not = icmp eq i32 %55, 0
  br i1 %tobool65.not, label %cond.false, label %do.end63.cond.end_crit_edge

do.end63.cond.end_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.false:                                       ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i.i188 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 2
  %56 = ptrtoint ptr %arrayidx.i.i188 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i.i188, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.end63.cond.end_crit_edge
  %cond = phi i32 [ %57, %cond.false ], [ %55, %do.end63.cond.end_crit_edge ]
  %ops.i = getelementptr inbounds %struct.rsnd_mod, ptr %51, i32 0, i32 2
  %58 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i, align 4
  %id.i189 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %59, i32 0, i32 17
  %60 = ptrtoint ptr %id.i189 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %id.i189, align 4
  %tobool.not.i = icmp eq ptr %61, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = tail call i32 %61(ptr noundef %51) #17
  br label %rsnd_mod_id.exit

if.end.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  %62 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %51, align 4
  br label %rsnd_mod_id.exit

rsnd_mod_id.exit:                                 ; preds = %if.end.i, %if.then.i
  %retval.0.i190 = phi i32 [ %call.i, %if.then.i ], [ %63, %if.end.i ]
  %64 = zext i32 %retval.0.i190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %retval.0.i190, label %sw.default [
    i32 1, label %rsnd_mod_id.exit.sw.bb_crit_edge
    i32 3, label %rsnd_mod_id.exit.sw.bb_crit_edge202
    i32 4, label %rsnd_mod_id.exit.sw.bb_crit_edge203
    i32 0, label %rsnd_mod_id.exit.sw.bb72_crit_edge
  ]

rsnd_mod_id.exit.sw.bb72_crit_edge:               ; preds = %rsnd_mod_id.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb72

rsnd_mod_id.exit.sw.bb_crit_edge203:              ; preds = %rsnd_mod_id.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

rsnd_mod_id.exit.sw.bb_crit_edge202:              ; preds = %rsnd_mod_id.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

rsnd_mod_id.exit.sw.bb_crit_edge:                 ; preds = %rsnd_mod_id.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb

sw.bb:                                            ; preds = %rsnd_mod_id.exit.sw.bb_crit_edge, %rsnd_mod_id.exit.sw.bb_crit_edge202, %rsnd_mod_id.exit.sw.bb_crit_edge203
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %cond)
  %cmp69 = icmp sgt i32 %cond, 4
  br i1 %cmp69, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.sw.bb72_crit_edge

sw.bb.sw.bb72_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb72

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb72:                                          ; preds = %sw.bb.sw.bb72_crit_edge, %rsnd_mod_id.exit.sw.bb72_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cond)
  %cmp73 = icmp sgt i32 %cond, 2
  %spec.select = select i1 %cmp73, i32 4, i32 6
  br label %sw.epilog

sw.default:                                       ; preds = %rsnd_mod_id.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cond)
  %cmp76 = icmp sgt i32 %cond, 2
  br i1 %cmp76, label %sw.default.cleanup119_crit_edge, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.default.cleanup119_crit_edge:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup119

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %sw.bb72, %sw.bb.sw.epilog_crit_edge
  %k_down.0 = phi i32 [ 6, %sw.default.sw.epilog_crit_edge ], [ 2, %sw.bb.sw.epilog_crit_edge ], [ %spec.select, %sw.bb72 ]
  %arrayidx.i.i191 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %65 = ptrtoint ptr %arrayidx.i.i191 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i.i191, align 4
  %67 = ptrtoint ptr %converted_rate to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %converted_rate, align 4
  %mul = mul i32 %68, %k_down.0
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %mul)
  %cmp81 = icmp ugt i32 %66, %mul
  br i1 %cmp81, label %if.then82, label %if.else

if.then82:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  %69 = ptrtoint ptr %arrayidx.i.i191 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %mul, ptr %arrayidx.i.i191, align 4
  %70 = ptrtoint ptr %converted_rate to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %converted_rate, align 4
  %mul87 = mul i32 %71, %k_down.0
  br label %if.end117.sink.split

if.else:                                          ; preds = %sw.epilog
  %mul90 = mul i32 %66, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul90, i32 %68)
  %cmp92 = icmp ult i32 %mul90, %68
  br i1 %cmp92, label %if.then93, label %if.else.if.end117_crit_edge

if.else.if.end117_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end117

if.then93:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %sub = add i32 %68, 5
  %div = udiv i32 %sub, 6
  %72 = ptrtoint ptr %arrayidx.i.i191 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %div, ptr %arrayidx.i.i191, align 4
  %73 = ptrtoint ptr %converted_rate to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %converted_rate, align 4
  %sub99 = add i32 %74, 5
  %div100 = udiv i32 %sub99, 6
  br label %if.end117.sink.split

if.end117.sink.split:                             ; preds = %if.then93, %if.then82
  %div100.sink = phi i32 [ %div100, %if.then93 ], [ %mul87, %if.then82 ]
  %max102 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3, i32 1
  %75 = ptrtoint ptr %max102 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %div100.sink, ptr %max102, align 4
  %cmask103 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 6
  %76 = ptrtoint ptr %cmask103 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cmask103, align 4
  %or = or i32 %77, 11
  store i32 %or, ptr %cmask103, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.end117.sink.split, %if.else.if.end117_crit_edge, %if.end42.if.end117_crit_edge, %rsnd_dai_to_rdai.exit.if.end117_crit_edge
  %call118 = tail call fastcc i32 @rsnd_hw_update(ptr noundef %substream, ptr noundef %hw_params)
  br label %cleanup119

cleanup119:                                       ; preds = %if.end117, %sw.default.cleanup119_crit_edge
  %retval.3 = phi i32 [ %call118, %if.end117 ], [ -22, %sw.default.cleanup119_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_hw_free(ptr nocapture noundef readnone %component, ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rsnd_hw_update(ptr noundef %substream, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_pointer(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  %pointer = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dais.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i = icmp slt i32 %11, 0
  br i1 %cmp.i.i, label %entry.rsnd_dai_to_rdai.exit_crit_edge, label %lor.lhs.false.i.i

entry.rsnd_dai_to_rdai.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_dai_to_rdai.exit

lor.lhs.false.i.i:                                ; preds = %entry
  %rdai_nr.i.i = getelementptr inbounds %struct.rsnd_priv, ptr %9, i32 0, i32 22
  %12 = ptrtoint ptr %rdai_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rdai_nr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp1.not.i.i = icmp sgt i32 %13, %11
  br i1 %cmp1.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge

lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_dai_to_rdai.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %rdai.i.i = getelementptr inbounds %struct.rsnd_priv, ptr %9, i32 0, i32 21
  %14 = ptrtoint ptr %rdai.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rdai.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.rsnd_dai, ptr %15, i32 %11
  br label %rsnd_dai_to_rdai.exit

rsnd_dai_to_rdai.exit:                            ; preds = %if.end.i.i, %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge, %entry.rsnd_dai_to_rdai.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge ], [ null, %entry.rsnd_dai_to_rdai.exit_crit_edge ]
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %16 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  %playback.i = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 1
  %capture.i = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 2
  %retval.0.i = select i1 %cmp.i, ptr %playback.i, ptr %capture.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pointer) #17
  %18 = ptrtoint ptr %pointer to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %pointer, align 4
  %rdai3 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %retval.0.i, i32 0, i32 4
  %19 = ptrtoint ptr %rdai3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rdai3, align 4
  %priv = getelementptr inbounds %struct.rsnd_dai, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  %playback = getelementptr inbounds %struct.rsnd_dai, ptr %20, i32 0, i32 1
  %cmp = icmp eq ptr %playback, %retval.0.i
  %conv = zext i1 %cmp to i32
  %arrayidx = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %conv
  %tobool.not.i = icmp eq ptr %arrayidx, null
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %rsnd_dai_to_rdai.exit
  %i.0 = phi i32 [ 0, %rsnd_dai_to_rdai.exit ], [ %i.0.be, %for.body.i.backedge ]
  br i1 %tobool.not.i, label %for.body.i.cond.end4.i_crit_edge, label %cond.true2.i

for.body.i.cond.end4.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end4.i

cond.true2.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i = getelementptr i32, ptr %arrayidx, i32 %i.0
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  br label %cond.end4.i

cond.end4.i:                                      ; preds = %cond.true2.i, %for.body.i.cond.end4.i_crit_edge
  %cond5.i = phi i32 [ %26, %cond.true2.i ], [ %i.0, %for.body.i.cond.end4.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %cond5.i)
  %cmp6.i = icmp ult i32 %cond5.i, 13
  br i1 %cmp6.i, label %cond.end11.i, label %cond.end4.i.for.inc.i_crit_edge

cond.end4.i.for.inc.i_crit_edge:                  ; preds = %cond.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

cond.end11.i:                                     ; preds = %cond.end4.i
  %arrayidx9.i = getelementptr %struct.rsnd_dai_stream, ptr %retval.0.i, i32 0, i32 2, i32 %cond5.i
  %27 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx9.i, align 4
  %tobool13.not.i = icmp eq ptr %28, null
  br i1 %tobool13.not.i, label %cond.end11.i.for.inc.i_crit_edge, label %land.lhs.true

cond.end11.i.for.inc.i_crit_edge:                 ; preds = %cond.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.end11.i.for.inc.i_crit_edge, %cond.end4.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 13
  br i1 %exitcond.not.i, label %for.inc.i.for.end_crit_edge, label %for.inc.i.for.body.i.backedge_crit_edge

for.inc.i.for.body.i.backedge_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.backedge

for.inc.i.for.end_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.i.backedge:                              ; preds = %if.end31.for.body.i.backedge_crit_edge, %for.inc.i.for.body.i.backedge_crit_edge
  %i.0.be = phi i32 [ %inc.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ %inc, %if.end31.for.body.i.backedge_crit_edge ]
  br label %for.body.i

land.lhs.true:                                    ; preds = %cond.end11.i
  %arrayidx7 = getelementptr i32, ptr %arrayidx, i32 %i.0
  %29 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx7, align 4
  %ops.i = getelementptr inbounds %struct.rsnd_mod, ptr %28, i32 0, i32 2
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i, align 4
  %get_status.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %32, i32 0, i32 16
  %33 = ptrtoint ptr %get_status.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_status.i, align 4
  %call.i = call ptr %34(ptr noundef nonnull %28, ptr noundef %retval.0.i, i32 noundef %30) #17
  %35 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i, align 4
  %pointer11 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %36, i32 0, i32 11
  %37 = ptrtoint ptr %pointer11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pointer11, align 4
  %tobool12.not = icmp eq ptr %38, null
  br i1 %tobool12.not, label %land.lhs.true.if.end31_crit_edge, label %lor.lhs.false

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call15 = call i32 %38(ptr noundef nonnull %28, ptr noundef %retval.0.i, ptr noundef nonnull %pointer) #17
  %39 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %call15, label %do.end [
    i32 0, label %lor.lhs.false.if.end31_crit_edge
    i32 -517, label %lor.lhs.false.if.end31_crit_edge81
  ], !prof !310

lor.lhs.false.if.end31_crit_edge81:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

lor.lhs.false.if.end31_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end31

do.end:                                           ; preds = %lor.lhs.false
  %40 = load i32, ptr @rsnd_mod_name.num, align 4
  %arrayidx.i52 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %40
  %inc.i53 = add i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i53)
  %cmp.i54 = icmp sgt i32 %inc.i53, 4
  %spec.store.select.i = select i1 %cmp.i54, i32 0, i32 %inc.i53
  store i32 %spec.store.select.i, ptr @rsnd_mod_name.num, align 4
  %41 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i, align 4
  %id_sub.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %42, i32 0, i32 18
  %43 = ptrtoint ptr %id_sub.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %id_sub.i, align 4
  %tobool.not.i56 = icmp eq ptr %44, null
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %42, align 4
  %id.i24.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %42, i32 0, i32 17
  %47 = ptrtoint ptr %id.i24.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %id.i24.i, align 4
  %tobool.not.i25.i = icmp eq ptr %48, null
  br i1 %tobool.not.i56, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %do.end
  br i1 %tobool.not.i25.i, label %if.end.i.i57, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i = call i32 %48(ptr noundef nonnull %28) #17
  br label %rsnd_mod_id.exit.i

if.end.i.i57:                                     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #19
  %49 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %28, align 4
  br label %rsnd_mod_id.exit.i

rsnd_mod_id.exit.i:                               ; preds = %if.end.i.i57, %if.then.i.i
  %retval.0.i.i58 = phi i32 [ %call.i.i, %if.then.i.i ], [ %50, %if.end.i.i57 ]
  %51 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i, align 4
  %id_sub.i.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %52, i32 0, i32 18
  %53 = ptrtoint ptr %id_sub.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %id_sub.i.i, align 4
  %tobool.not.i19.i = icmp eq ptr %54, null
  br i1 %tobool.not.i19.i, label %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge, label %if.then.i21.i

rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge: ; preds = %rsnd_mod_id.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_mod_id_sub.exit.i

if.then.i21.i:                                    ; preds = %rsnd_mod_id.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i20.i = call i32 %54(ptr noundef nonnull %28) #17
  br label %rsnd_mod_id_sub.exit.i

rsnd_mod_id_sub.exit.i:                           ; preds = %if.then.i21.i, %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge
  %retval.0.i22.i = phi i32 [ %call.i20.i, %if.then.i21.i ], [ 0, %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge ]
  %call5.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i52, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef %46, i32 noundef %retval.0.i.i58, i32 noundef %retval.0.i22.i) #17
  br label %rsnd_mod_name.exit

if.else.i:                                        ; preds = %do.end
  br i1 %tobool.not.i25.i, label %if.end.i28.i, label %if.then.i27.i

if.then.i27.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i26.i = call i32 %48(ptr noundef nonnull %28) #17
  br label %rsnd_mod_id.exit30.i

if.end.i28.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  %55 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %28, align 4
  br label %rsnd_mod_id.exit30.i

rsnd_mod_id.exit30.i:                             ; preds = %if.end.i28.i, %if.then.i27.i
  %retval.0.i29.i = phi i32 [ %call.i26.i, %if.then.i27.i ], [ %56, %if.end.i28.i ]
  %call9.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i52, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef %46, i32 noundef %retval.0.i29.i) #17
  br label %rsnd_mod_name.exit

rsnd_mod_name.exit:                               ; preds = %rsnd_mod_id.exit30.i, %rsnd_mod_id_sub.exit.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.56, ptr noundef %arrayidx.i52, ptr noundef nonnull @.str.133, i32 noundef %call15, i32 noundef 1) #20
  br label %if.end31

if.end31:                                         ; preds = %rsnd_mod_name.exit, %lor.lhs.false.if.end31_crit_edge, %lor.lhs.false.if.end31_crit_edge81, %land.lhs.true.if.end31_crit_edge
  %inc = add i32 %i.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %inc)
  %cmp28.i = icmp slt i32 %inc, 13
  br i1 %cmp28.i, label %if.end31.for.body.i.backedge_crit_edge, label %if.end31.for.end_crit_edge

if.end31.for.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.end31.for.body.i.backedge_crit_edge:           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.backedge

for.end:                                          ; preds = %if.end31.for.end_crit_edge, %for.inc.i.for.end_crit_edge
  %57 = ptrtoint ptr %pointer to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pointer, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pointer) #17
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rsnd_hw_update(ptr noundef %substream, ptr noundef %hw_params) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dais.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i = icmp slt i32 %11, 0
  br i1 %cmp.i.i, label %entry.rsnd_dai_to_rdai.exit_crit_edge, label %lor.lhs.false.i.i

entry.rsnd_dai_to_rdai.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_dai_to_rdai.exit

lor.lhs.false.i.i:                                ; preds = %entry
  %rdai_nr.i.i = getelementptr inbounds %struct.rsnd_priv, ptr %9, i32 0, i32 22
  %12 = ptrtoint ptr %rdai_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rdai_nr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp1.not.i.i = icmp sgt i32 %13, %11
  br i1 %cmp1.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge

lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_dai_to_rdai.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %rdai.i.i = getelementptr inbounds %struct.rsnd_priv, ptr %9, i32 0, i32 21
  %14 = ptrtoint ptr %rdai.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rdai.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.rsnd_dai, ptr %15, i32 %11
  br label %rsnd_dai_to_rdai.exit

rsnd_dai_to_rdai.exit:                            ; preds = %if.end.i.i, %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge, %entry.rsnd_dai_to_rdai.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %lor.lhs.false.i.i.rsnd_dai_to_rdai.exit_crit_edge ], [ null, %entry.rsnd_dai_to_rdai.exit_crit_edge ]
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %16 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  %playback.i = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 1
  %capture.i = getelementptr inbounds %struct.rsnd_dai, ptr %retval.0.i.i, i32 0, i32 2
  %retval.0.i = select i1 %cmp.i, ptr %playback.i, ptr %capture.i
  %rdai3 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %retval.0.i, i32 0, i32 4
  %18 = ptrtoint ptr %rdai3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rdai3, align 4
  %priv4 = getelementptr inbounds %struct.rsnd_dai, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv4, align 4
  %lock = getelementptr inbounds %struct.rsnd_priv, ptr %21, i32 0, i32 1
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #17
  %tobool.not = icmp eq ptr %hw_params, null
  %22 = ptrtoint ptr %rdai3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rdai3, align 4
  %priv52 = getelementptr inbounds %struct.rsnd_dai, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %priv52 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv52, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %dev54 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  %playback58 = getelementptr inbounds %struct.rsnd_dai, ptr %23, i32 0, i32 1
  %cmp59 = icmp eq ptr %playback58, %retval.0.i
  %conv60 = zext i1 %cmp59 to i32
  %arrayidx64 = getelementptr [2 x [13 x i32]], ptr @rsnd_mod_sequence, i32 0, i32 %conv60
  %tobool.not.i169 = icmp eq ptr %arrayidx64, null
  br i1 %tobool.not, label %rsnd_dai_to_rdai.exit.for.body.i171.preheader_crit_edge, label %rsnd_dai_to_rdai.exit.for.body.i.preheader_crit_edge

rsnd_dai_to_rdai.exit.for.body.i.preheader_crit_edge: ; preds = %rsnd_dai_to_rdai.exit
  br label %for.body.i.preheader

rsnd_dai_to_rdai.exit.for.body.i171.preheader_crit_edge: ; preds = %rsnd_dai_to_rdai.exit
  br label %for.body.i171.preheader

for.body.i.preheader:                             ; preds = %if.end48.for.body.i.preheader_crit_edge, %rsnd_dai_to_rdai.exit.for.body.i.preheader_crit_edge
  %ret16.0264 = phi i32 [ %or, %if.end48.for.body.i.preheader_crit_edge ], [ 0, %rsnd_dai_to_rdai.exit.for.body.i.preheader_crit_edge ]
  %storemerge157263 = phi i32 [ %inc, %if.end48.for.body.i.preheader_crit_edge ], [ 0, %rsnd_dai_to_rdai.exit.for.body.i.preheader_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.0 = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %storemerge157263, %for.body.i.preheader ]
  br i1 %tobool.not.i169, label %for.body.i.cond.end4.i_crit_edge, label %cond.true2.i

for.body.i.cond.end4.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end4.i

cond.true2.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i = getelementptr i32, ptr %arrayidx64, i32 %i.0
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  br label %cond.end4.i

cond.end4.i:                                      ; preds = %cond.true2.i, %for.body.i.cond.end4.i_crit_edge
  %cond5.i = phi i32 [ %29, %cond.true2.i ], [ %i.0, %for.body.i.cond.end4.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %cond5.i)
  %cmp6.i = icmp ult i32 %cond5.i, 13
  br i1 %cmp6.i, label %cond.end11.i, label %cond.end4.i.for.inc.i_crit_edge

cond.end4.i.for.inc.i_crit_edge:                  ; preds = %cond.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

cond.end11.i:                                     ; preds = %cond.end4.i
  %arrayidx9.i = getelementptr %struct.rsnd_dai_stream, ptr %retval.0.i, i32 0, i32 2, i32 %cond5.i
  %30 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx9.i, align 4
  %tobool13.not.i = icmp eq ptr %31, null
  br i1 %tobool13.not.i, label %cond.end11.i.for.inc.i_crit_edge, label %for.body

cond.end11.i.for.inc.i_crit_edge:                 ; preds = %cond.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.end11.i.for.inc.i_crit_edge, %cond.end4.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.0, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 13
  br i1 %exitcond.not.i, label %for.inc.i.if.end115_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.if.end115_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end115

for.body:                                         ; preds = %cond.end11.i
  %arrayidx20 = getelementptr i32, ptr %arrayidx64, i32 %i.0
  %32 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx20, align 4
  %ops.i = getelementptr inbounds %struct.rsnd_mod, ptr %31, i32 0, i32 2
  %34 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i, align 4
  %get_status.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %get_status.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %get_status.i, align 4
  %call.i = tail call ptr %37(ptr noundef nonnull %31, ptr noundef %retval.0.i, i32 noundef %33) #17
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call.i, align 4
  %shr.i = lshr i32 %39, 12
  %add2.i = add nuw nsw i32 %shr.i, 1
  %conv4.i = and i32 %add2.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %conv4.i)
  %cmp12.i = icmp eq i32 %conv4.i, 15
  br i1 %cmp12.i, label %for.body.do.end46_crit_edge, label %rsnd_status_update.exit

for.body.do.end46_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end46

rsnd_status_update.exit:                          ; preds = %for.body
  %40 = and i32 %39, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i159 = icmp eq i32 %40, 0
  %and15.i = and i32 %39, -61441
  %shl17.i = shl nuw nsw i32 %conv4.i, 12
  %add18.i = or i32 %shl17.i, %and15.i
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add18.i, ptr %call.i, align 4
  br i1 %cmp.i159, label %land.lhs.true, label %rsnd_status_update.exit.if.end48_crit_edge

rsnd_status_update.exit.if.end48_crit_edge:       ; preds = %rsnd_status_update.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end48

land.lhs.true:                                    ; preds = %rsnd_status_update.exit
  %42 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i, align 4
  %hw_params24 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %hw_params24 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw_params24, align 4
  %tobool25.not = icmp eq ptr %45, null
  br i1 %tobool25.not, label %land.lhs.true.if.end48_crit_edge, label %lor.lhs.false

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end48

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call29 = tail call i32 %45(ptr noundef nonnull %31, ptr noundef %retval.0.i, ptr noundef %substream, ptr noundef nonnull %hw_params) #17
  %46 = zext i32 %call29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %call29, label %lor.lhs.false.do.end46_crit_edge [
    i32 0, label %lor.lhs.false.if.end48_crit_edge
    i32 -517, label %if.end48.fold.split
  ], !prof !310

lor.lhs.false.if.end48_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end48

lor.lhs.false.do.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end46

do.end46:                                         ; preds = %lor.lhs.false.do.end46_crit_edge, %for.body.do.end46_crit_edge
  %tmp19.0222 = phi i32 [ 0, %for.body.do.end46_crit_edge ], [ %call29, %lor.lhs.false.do.end46_crit_edge ]
  %retval.0.i160212218 = phi i32 [ -1, %for.body.do.end46_crit_edge ], [ 1, %lor.lhs.false.do.end46_crit_edge ]
  %47 = load i32, ptr @rsnd_mod_name.num, align 4
  %arrayidx.i161 = getelementptr [5 x [16 x i8]], ptr @rsnd_mod_name.names, i32 0, i32 %47
  %inc.i162 = add i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i162)
  %cmp.i163 = icmp sgt i32 %inc.i162, 4
  %spec.store.select.i = select i1 %cmp.i163, i32 0, i32 %inc.i162
  store i32 %spec.store.select.i, ptr @rsnd_mod_name.num, align 4
  %48 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i, align 4
  %id_sub.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %49, i32 0, i32 18
  %50 = ptrtoint ptr %id_sub.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %id_sub.i, align 4
  %tobool.not.i165 = icmp eq ptr %51, null
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %49, align 4
  %id.i24.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %49, i32 0, i32 17
  %54 = ptrtoint ptr %id.i24.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %id.i24.i, align 4
  %tobool.not.i25.i = icmp eq ptr %55, null
  br i1 %tobool.not.i165, label %if.else.i168, label %if.then1.i

if.then1.i:                                       ; preds = %do.end46
  br i1 %tobool.not.i25.i, label %if.end.i.i166, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i = tail call i32 %55(ptr noundef nonnull %31) #17
  br label %rsnd_mod_id.exit.i

if.end.i.i166:                                    ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #19
  %56 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %31, align 4
  br label %rsnd_mod_id.exit.i

rsnd_mod_id.exit.i:                               ; preds = %if.end.i.i166, %if.then.i.i
  %retval.0.i.i167 = phi i32 [ %call.i.i, %if.then.i.i ], [ %57, %if.end.i.i166 ]
  %58 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i, align 4
  %id_sub.i.i = getelementptr inbounds %struct.rsnd_mod_ops, ptr %59, i32 0, i32 18
  %60 = ptrtoint ptr %id_sub.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %id_sub.i.i, align 4
  %tobool.not.i19.i = icmp eq ptr %61, null
  br i1 %tobool.not.i19.i, label %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge, label %if.then.i21.i

rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge: ; preds = %rsnd_mod_id.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rsnd_mod_id_sub.exit.i

if.then.i21.i:                                    ; preds = %rsnd_mod_id.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i20.i = tail call i32 %61(ptr noundef nonnull %31) #17
  br label %rsnd_mod_id_sub.exit.i

rsnd_mod_id_sub.exit.i:                           ; preds = %if.then.i21.i, %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge
  %retval.0.i22.i = phi i32 [ %call.i20.i, %if.then.i21.i ], [ 0, %rsnd_mod_id.exit.i.rsnd_mod_id_sub.exit.i_crit_edge ]
  %call5.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i161, i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef %53, i32 noundef %retval.0.i.i167, i32 noundef %retval.0.i22.i) #17
  br label %rsnd_mod_name.exit

if.else.i168:                                     ; preds = %do.end46
  br i1 %tobool.not.i25.i, label %if.end.i28.i, label %if.then.i27.i

if.then.i27.i:                                    ; preds = %if.else.i168
  call void @__sanitizer_cov_trace_pc() #19
  %call.i26.i = tail call i32 %55(ptr noundef nonnull %31) #17
  br label %rsnd_mod_id.exit30.i

if.end.i28.i:                                     ; preds = %if.else.i168
  call void @__sanitizer_cov_trace_pc() #19
  %62 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %31, align 4
  br label %rsnd_mod_id.exit30.i

rsnd_mod_id.exit30.i:                             ; preds = %if.end.i28.i, %if.then.i27.i
  %retval.0.i29.i = phi i32 [ %call.i26.i, %if.then.i27.i ], [ %63, %if.end.i28.i ]
  %call9.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i161, i32 noundef 16, ptr noundef nonnull @.str.6, ptr noundef %53, i32 noundef %retval.0.i29.i) #17
  br label %rsnd_mod_name.exit

rsnd_mod_name.exit:                               ; preds = %rsnd_mod_id.exit30.i, %rsnd_mod_id_sub.exit.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str.56, ptr noundef %arrayidx.i161, ptr noundef nonnull @.str.128, i32 noundef %tmp19.0222, i32 noundef %retval.0.i160212218) #20
  br label %if.end48

if.end48.fold.split:                              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end48

if.end48:                                         ; preds = %if.end48.fold.split, %rsnd_mod_name.exit, %lor.lhs.false.if.end48_crit_edge, %land.lhs.true.if.end48_crit_edge, %rsnd_status_update.exit.if.end48_crit_edge
  %tmp19.0223 = phi i32 [ %tmp19.0222, %rsnd_mod_name.exit ], [ %call29, %lor.lhs.false.if.end48_crit_edge ], [ 0, %rsnd_status_update.exit.if.end48_crit_edge ], [ 0, %land.lhs.true.if.end48_crit_edge ], [ -517, %if.end48.fold.split ]
  %or = or i32 %tmp19.0223, %ret16.0264
  %inc = add i32 %i.0, 1
  %cmp28.i = icmp slt i32 %inc, 13
  br i1 %cmp28.i, label %if.end48.for.body.i.preheader_crit_edge, label %if.end48.if.end115_crit_edge

if.end48.if.end115_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end115

if.end48.for.body.i.preheader_crit_edge:          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.preheader

for.body.i171.preheader:                          ; preds = %if.end109.for.body.i171.preheader_crit_edge, %rsnd_dai_to_rdai.exit.for.body.i171.preheader_crit_edge
  %ret61.0266 = phi i32 [ %or110, %if.end109.for.body.i171.preheader_crit_edge ], [ 0, %rsnd_dai_to_rdai.exit.for.body.i171.preheader_crit_edge ]
  %storemerge265 = phi i32 [ %inc112, %if.end109.for.body.i171.preheader_crit_edge ], [ 0, %rsnd_dai_to_rdai.exit.for.body.i171.preheader_crit_edge ]
  br label %for.body.i171

for.body.i171:                                    ; preds = %for.inc.i182.for.body.i171_crit_edge, %for.body.i171.preheader
  %i62.0 = phi i32 [ %inc.i180, %for.inc.i182.for.body.i171_crit_edge ], [ %storemerge265, %for.body.i171.preheader ]
  br i1 %tobool.not.i169, label %for.body.i171.cond.end4.i176_crit_edge, label %cond.true2.i173

for.body.i171.cond.end4.i176_crit_edge:           ; preds = %for.body.i171
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end4.i176

cond.true2.i173:                                  ; preds = %for.body.i171
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i172 = getelementptr i32, ptr %arrayidx64, i32 %i62.0
  %64 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i172, align 4
  br label %cond.end4.i176

cond.end4.i176:                                   ; preds = %cond.true2.i173, %for.body.i171.cond.end4.i176_crit_edge
  %cond5.i174 = phi i32 [ %65, %cond.true2.i173 ], [ %i62.0, %for.body.i171.cond.end4.i176_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %cond5.i174)
  %cmp6.i175 = icmp ult i32 %cond5.i174, 13
  br i1 %cmp6.i175, label %cond.end11.i179, label %cond.end4.i176.for.inc.i182_crit_edge

cond.end4.i176.for.inc.i182_crit_edge:            ; preds = %cond.end4.i176
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i182

cond.end11.i179:                                  ; preds = %cond.end4.i176
  %arrayidx9.i177 = getelementptr %struct.rsnd_dai_stream, ptr %retval.0.i, i32 0, i32 2, i32 %cond5.i174
  %66 = ptrtoint ptr %arrayidx9.i177 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx9.i177, align 4
  %tobool13.not.i178 = icmp eq ptr %67, null
  br i1 %tobool13.not.i178, label %cond.end11.i179.for.inc.i182_crit_edge, label %for.body69

cond.end11.i179.for.inc.i182_crit_edge:           ; preds = %cond.end11.i179
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i182

for.inc.i182:                                     ; preds = %cond.end11.i179.for.inc.i182_crit_edge, %cond.end4.i176.for.inc.i182_crit_edge
  %inc.i180 = add i32 %i62.0, 1
  %exitcond.not.i181 = icmp eq i32 %inc.i180, 13
  br i1 %exitcond.not.i181, label %for.inc.i182.if.end115_crit_edge, label %for.inc.i182.for.body.i171_crit_edge

for.inc.i182.for.body.i171_crit_edge:             ; preds = %for.inc.i182
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i171

for.inc.i182.if.end115_crit_edge:                 ; preds = %for.inc.i182
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end115

for.body69:                                       ; preds = %cond.end11.i179
  %arrayidx72 = getelementptr i32, ptr %arrayidx64, i32 %i62.0
  %68 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx72, align 4
  %ops.i185 = getelementptr inbounds %struct.rsnd_mod, ptr %67, i32 0, i32 2
  %70 = ptrtoint ptr %ops.i185 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops.i185, align 4
  %get_status.i186 = getelementptr inbounds %struct.rsnd_mod_ops, ptr %71, i32 0, i32 16
  %72 = ptrtoint ptr %get_status.i186 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %get_status.i186, align 4
  %call.i187 = tail call ptr %73(ptr noundef nonnull %67, ptr noundef %retval.0.i, i32 noundef %69) #17
  %74 = ptrtoint ptr %call.i187 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %call.i187, align 4
  %shr.i188 = lshr i32 %75, 12
  %add2.i190 = add nuw nsw i32 %shr.i188, 15
  %conv4.i191 = and i32 %add2.i190, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %conv4.i191)
  %cmp12.i194 = icmp eq i32 %conv4.i191, 15
  br i1 %cmp12.i194, label %for.body69.do.end107_crit_edge, label %rsnd_status_update.exit200

for.body69.do.end107_crit_edge:                   ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end107

rsnd_status_update.exit200:                       ; preds = %for.body69
  %76 = and i32 %75, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %76)
  %cmp.i192 = icmp eq i32 %76, 4096
  %and15.i195 = and i32 %75, -61441
  %shl17.i196 = shl nuw nsw i32 %conv4.i191, 12
  %add18.i197 = or i32 %shl17.i196, %and15.i195
  %77 = ptrtoint ptr %call.i187 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add18.i197, ptr %call.i187, align 4
  br i1 %cmp.i192, label %land.lhs.true76, label %rsnd_status_update.exit200.if.end109_crit_edge

rsnd_status_update.exit200.if.end109_crit_edge:   ; preds = %rsnd_status_update.exit200
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end109

land.lhs.true76:                                  ; preds = %rsnd_status_update.exit200
  %78 = ptrtoint ptr %ops.i185 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ops.i185, align 4
  %hw_free = getelementptr inbounds %struct.rsnd_mod_ops, ptr %79, i32 0, i32 15
  %80 = ptrtoint ptr %hw_free to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw_free, align 4
  %tobool78.not = icmp eq ptr %81, null
  br i1 %tobool78.not, label %land.lhs.true76.if.end109_crit_edge, label %lor.lhs.false92

land.lhs.true76.if.end109_crit_edge:              ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end109

lor.lhs.false92:                                  ; preds = %land.lhs.true76
  %call82 = tail call i32 %81(ptr noundef nonnull %67, ptr noundef %retval.0.i, ptr noundef %substream) #17
  %82 = zext i32 %call82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %call82, label %lor.lhs.false92.do.end107_crit_edge [
    i32 0, label %lor.lhs.false92.if.end109_crit_edge
    i32 -517, label %if.end109.fold.split
  ], !prof !310

lor.lhs.false92.if.end109_crit_edge:              ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end109

lor.lhs.false92.do.end107_crit_edge:              ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end107

do.end107:                                        ; preds = %lor.lhs.false92.do.end107_crit_edge, %for.body69.do.end107_crit_edge
  %tmp70.0246 = phi i32 [ 0, %for.body69.do.end107_crit_edge ], [ %call82, %lor.lhs.false92.do.end107_crit_edge ]
  %retval.0.i199236242 = phi i32 [ -1, %for.body69.do.end107_crit_edge ], [ 1, %lor.lhs.false92.do.end107_crit_edge ]
  %call108 = tail call ptr @rsnd_mod_name(ptr noundef nonnull %67)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str.56, ptr noundef %call108, ptr noundef nonnull @.str.131, i32 noundef %tmp70.0246, i32 noundef %retval.0.i199236242) #20
  br label %if.end109

if.end109.fold.split:                             ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end109

if.end109:                                        ; preds = %if.end109.fold.split, %do.end107, %lor.lhs.false92.if.end109_crit_edge, %land.lhs.true76.if.end109_crit_edge, %rsnd_status_update.exit200.if.end109_crit_edge
  %tmp70.0247 = phi i32 [ %tmp70.0246, %do.end107 ], [ %call82, %lor.lhs.false92.if.end109_crit_edge ], [ 0, %rsnd_status_update.exit200.if.end109_crit_edge ], [ 0, %land.lhs.true76.if.end109_crit_edge ], [ -517, %if.end109.fold.split ]
  %or110 = or i32 %tmp70.0247, %ret61.0266
  %inc112 = add i32 %i62.0, 1
  %cmp28.i170 = icmp slt i32 %inc112, 13
  br i1 %cmp28.i170, label %if.end109.for.body.i171.preheader_crit_edge, label %if.end109.if.end115_crit_edge

if.end109.if.end115_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end115

if.end109.for.body.i171.preheader_crit_edge:      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i171.preheader

if.end115:                                        ; preds = %if.end109.if.end115_crit_edge, %for.inc.i182.if.end115_crit_edge, %if.end48.if.end115_crit_edge, %for.inc.i.if.end115_crit_edge
  %ret.0 = phi i32 [ %ret61.0266, %for.inc.i182.if.end115_crit_edge ], [ %or110, %if.end109.if.end115_crit_edge ], [ %ret16.0264, %for.inc.i.if.end115_crit_edge ], [ %or, %if.end48.if.end115_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #17
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_ssi_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_ssiu_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_src_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_ctu_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mix_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_dvc_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_cmd_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @rsnd_adg_clk_control(ptr noundef %1, i32 noundef 0) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @rsnd_adg_clk_control(ptr noundef %1, i32 noundef 1) #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_adg_clk_control(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !31, !33, !35, !36, !37, !38, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !107, !108, !110, !112, !114, !116, !118, !120, !122, !123, !125, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !143, !145, !147, !149, !151, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !169, !170, !171, !172, !174, !176, !177, !178, !179, !181, !183, !185, !187, !188, !189, !190, !192, !193, !194, !195, !197, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !213, !214, !215, !217, !218, !219, !221, !223, !224, !225, !226, !228, !229, !231, !233, !234, !235, !237, !239, !240, !242, !244, !245, !246, !248, !249, !250, !251, !253, !254, !256, !257, !258, !260, !261, !263, !265, !267, !268, !269, !271, !272, !274, !275, !276, !277, !279, !280, !281, !283, !284, !285, !286, !288, !290, !291, !292, !294, !295, !297}
!llvm.module.flags = !{!299, !300, !301, !302, !303, !304, !305, !306}
!llvm.ident = !{!307}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sh/rcar/core.c", i32 120, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rsnd_mod_make_sure._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @rsnd_mod_make_sure._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @rsnd_mod_name.names, !9, !"names", i1 false, i1 false}
!9 = !{!"../sound/soc/sh/rcar/core.c", i32 138, i32 14}
!10 = !{ptr @rsnd_mod_name.num, !11, !"num", i1 false, i1 false}
!11 = !{!"../sound/soc/sh/rcar/core.c", i32 139, i32 13}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/sh/rcar/core.c", i32 152, i32 33}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/sh/rcar/core.c", i32 157, i32 33}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/sh/rcar/core.c", i32 286, i32 4}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rsnd_runtime_channel_after_ctu_with_params._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @rsnd_runtime_channel_after_ctu_with_params._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/sh/rcar/core.c", i32 362, i32 2}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rsnd_get_adinr_bit._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @rsnd_get_adinr_bit._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @rsnd_get_dalign.dalign_values, !28, !"dalign_values", i1 false, i1 false}
!28 = !{!"../sound/soc/sh/rcar/core.c", i32 372, i32 19}
!29 = distinct !{null, !30, !"playback_mods", i1 false, i1 false}
!30 = !{!"../sound/soc/sh/rcar/core.c", i32 429, i32 34}
!31 = distinct !{null, !32, !"capture_mods", i1 false, i1 false}
!32 = !{!"../sound/soc/sh/rcar/core.c", i32 434, i32 34}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/sh/rcar/core.c", i32 596, i32 2}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @rsnd_dai_connect.__UNIQUE_ID_ddebug243, !34, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!38 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/sh/rcar/core.c", i32 1207, i32 42}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/sh/rcar/core.c", i32 1226, i32 4}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @rsnd_node_count._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @rsnd_node_count._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/sh/rcar/core.c", i32 1699, i32 3}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @rsnd_kctrl_accept_runtime._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @rsnd_kctrl_accept_runtime._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/sh/rcar/core.c", i32 1721, i32 2}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/sh/rcar/core.c", i32 1722, i32 2}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/sh/rcar/core.c", i32 1723, i32 2}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/sh/rcar/core.c", i32 1724, i32 2}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/sh/rcar/core.c", i32 1725, i32 2}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/sh/rcar/core.c", i32 1726, i32 2}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/sh/rcar/core.c", i32 1727, i32 2}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/sh/rcar/core.c", i32 1728, i32 2}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/sh/rcar/core.c", i32 1729, i32 2}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/sh/rcar/core.c", i32 1730, i32 2}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/sh/rcar/core.c", i32 1731, i32 2}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/sh/rcar/core.c", i32 1732, i32 2}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/sh/rcar/core.c", i32 1733, i32 2}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/sh/rcar/core.c", i32 1734, i32 2}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/sh/rcar/core.c", i32 1735, i32 2}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/sh/rcar/core.c", i32 1736, i32 2}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/sh/rcar/core.c", i32 1737, i32 2}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/sh/rcar/core.c", i32 1738, i32 2}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/sh/rcar/core.c", i32 1739, i32 2}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/sh/rcar/core.c", i32 1740, i32 2}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/sh/rcar/core.c", i32 1741, i32 2}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/sh/rcar/core.c", i32 1742, i32 2}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/sh/rcar/core.c", i32 1743, i32 2}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/sh/rcar/core.c", i32 1744, i32 2}
!100 = !{ptr @volume_ramp_rate, !101, !"volume_ramp_rate", i1 false, i1 false}
!101 = !{!"../sound/soc/sh/rcar/core.c", i32 1720, i32 20}
!102 = !{ptr @__initcall__kmod_snd_soc_rcar__258_2012_rsnd_driver_init6, !103, !"__initcall__kmod_snd_soc_rcar__258_2012_rsnd_driver_init6", i1 false, i1 false}
!103 = !{!"../sound/soc/sh/rcar/core.c", i32 2012, i32 1}
!104 = !{ptr @__exitcall_rsnd_driver_exit, !103, !"__exitcall_rsnd_driver_exit", i1 false, i1 false}
!105 = !{ptr @__UNIQUE_ID_file259, !106, !"__UNIQUE_ID_file259", i1 false, i1 false}
!106 = !{!"../sound/soc/sh/rcar/core.c", i32 2014, i32 1}
!107 = !{ptr @__UNIQUE_ID_license260, !106, !"__UNIQUE_ID_license260", i1 false, i1 false}
!108 = !{ptr @__UNIQUE_ID_description261, !109, !"__UNIQUE_ID_description261", i1 false, i1 false}
!109 = !{!"../sound/soc/sh/rcar/core.c", i32 2015, i32 1}
!110 = !{ptr @__UNIQUE_ID_author262, !111, !"__UNIQUE_ID_author262", i1 false, i1 false}
!111 = !{!"../sound/soc/sh/rcar/core.c", i32 2016, i32 1}
!112 = !{ptr @__UNIQUE_ID_alias263, !113, !"__UNIQUE_ID_alias263", i1 false, i1 false}
!113 = !{!"../sound/soc/sh/rcar/core.c", i32 2017, i32 1}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../include/linux/of.h", i32 261, i32 30}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/sh/rcar/core.c", i32 2005, i32 11}
!118 = !{ptr @rsnd_driver, !119, !"rsnd_driver", i1 false, i1 false}
!119 = !{!"../sound/soc/sh/rcar/core.c", i32 2003, i32 31}
!120 = !{ptr @rsnd_probe.__key, !121, !"__key", i1 false, i1 false}
!121 = !{!"../sound/soc/sh/rcar/core.c", i32 1897, i32 2}
!122 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/sh/rcar/core.c", i32 1926, i32 3}
!125 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @rsnd_probe._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @rsnd_probe._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/sh/rcar/core.c", i32 1932, i32 2}
!130 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @rsnd_probe._entry.51, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @rsnd_probe._entry_ptr.54, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.56, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/sh/rcar/core.c", i32 1937, i32 3}
!135 = !{ptr @rsnd_probe._entry.55, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @rsnd_probe._entry_ptr.57, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @rsnd_probe._entry.59, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../sound/soc/sh/rcar/core.c", i32 1938, i32 3}
!140 = !{ptr @rsnd_probe._entry_ptr.60, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.61, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/sh/rcar/core.c", i32 1251, i32 38}
!143 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/sh/rcar/core.c", i32 1348, i32 43}
!145 = !{ptr @.str.63, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/sh/rcar/core.c", i32 1356, i32 4}
!147 = !{ptr @.str.64, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/sh/rcar/core.c", i32 1364, i32 4}
!149 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/sh/rcar/core.c", i32 1378, i32 59}
!151 = !{ptr @.str.66, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/sh/rcar/core.c", i32 1379, i32 59}
!153 = !{ptr @.str.67, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/sh/rcar/core.c", i32 1386, i32 3}
!155 = !{ptr @.str.68, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.69, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/sh/rcar/core.c", i32 1387, i32 3}
!158 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.71, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/sh/rcar/core.c", i32 1388, i32 3}
!161 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.73, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/sh/rcar/core.c", i32 1389, i32 3}
!164 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.75, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/sh/rcar/core.c", i32 1401, i32 2}
!167 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @__rsnd_dai_probe.__UNIQUE_ID_ddebug255, !166, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!169 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @rsnd_soc_dai_ops, !173, !"rsnd_soc_dai_ops", i1 false, i1 false}
!173 = !{!"../sound/soc/sh/rcar/core.c", i32 1067, i32 37}
!174 = !{ptr @.str.80, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/sh/rcar/core.c", i32 844, i32 3}
!176 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @rsnd_soc_set_dai_tdm_slot._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @rsnd_soc_set_dai_tdm_slot._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @rsnd_soc_hw_channels_list, !180, !"rsnd_soc_hw_channels_list", i1 false, i1 false}
!180 = !{!"../sound/soc/sh/rcar/core.c", i32 851, i32 21}
!181 = !{ptr @rsnd_pcm_hardware, !182, !"rsnd_pcm_hardware", i1 false, i1 false}
!182 = !{!"../sound/soc/sh/rcar/core.c", i32 951, i32 38}
!183 = !{ptr @rsnd_soc_hw_rate_list, !184, !"rsnd_soc_hw_rate_list", i1 false, i1 false}
!184 = !{!"../sound/soc/sh/rcar/core.c", i32 855, i32 21}
!185 = !{ptr @.str.82, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/sh/rcar/core.c", i32 1027, i32 2}
!187 = !{ptr @rsnd_soc_dai_shutdown._entry, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @rsnd_soc_dai_shutdown._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.83, !186, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.84, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/sh/rcar/core.c", i32 1039, i32 9}
!192 = !{ptr @rsnd_soc_dai_prepare._entry, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @rsnd_soc_dai_prepare._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.85, !191, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.86, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/sh/rcar/core.c", i32 721, i32 9}
!197 = !{ptr @rsnd_soc_dai_trigger._entry, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @rsnd_soc_dai_trigger._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.87, !196, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @rsnd_soc_dai_trigger._entry.88, !201, !"_entry", i1 false, i1 false}
!201 = !{!"../sound/soc/sh/rcar/core.c", i32 725, i32 9}
!202 = !{ptr @rsnd_soc_dai_trigger._entry_ptr.89, !201, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.90, !201, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @rsnd_soc_dai_trigger._entry.91, !205, !"_entry", i1 false, i1 false}
!205 = !{!"../sound/soc/sh/rcar/core.c", i32 729, i32 9}
!206 = !{ptr @rsnd_soc_dai_trigger._entry_ptr.92, !205, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.93, !205, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @rsnd_soc_dai_trigger._entry.94, !209, !"_entry", i1 false, i1 false}
!209 = !{!"../sound/soc/sh/rcar/core.c", i32 736, i32 9}
!210 = !{ptr @rsnd_soc_dai_trigger._entry_ptr.95, !209, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @rsnd_soc_dai_trigger._entry.96, !212, !"_entry", i1 false, i1 false}
!212 = !{!"../sound/soc/sh/rcar/core.c", i32 738, i32 10}
!213 = !{ptr @rsnd_soc_dai_trigger._entry_ptr.97, !212, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.98, !212, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @rsnd_soc_dai_trigger._entry.99, !216, !"_entry", i1 false, i1 false}
!216 = !{!"../sound/soc/sh/rcar/core.c", i32 740, i32 10}
!217 = !{ptr @rsnd_soc_dai_trigger._entry_ptr.100, !216, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.101, !216, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @rsnd_soc_dai_formats, !220, !"rsnd_soc_dai_formats", i1 false, i1 false}
!220 = !{!"../sound/soc/sh/rcar/core.c", i32 1042, i32 12}
!221 = !{ptr @.str.102, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/sh/rcar/core.c", i32 1311, i32 8}
!223 = !{ptr @rsnd_pcm_new._entry, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @rsnd_pcm_new._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.103, !222, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @rsnd_pcm_new._entry.104, !227, !"_entry", i1 false, i1 false}
!227 = !{!"../sound/soc/sh/rcar/core.c", i32 1315, i32 8}
!228 = !{ptr @rsnd_pcm_new._entry_ptr.105, !227, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.106, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/sh/rcar/core.c", i32 1139, i32 37}
!231 = !{ptr @.str.107, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/sh/rcar/core.c", i32 1141, i32 3}
!233 = !{ptr @.str.108, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @rsnd_parse_connect_graph.__UNIQUE_ID_ddebug253, !232, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!235 = !{ptr @.str.109, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/sh/rcar/core.c", i32 1145, i32 37}
!237 = !{ptr @.str.110, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/sh/rcar/core.c", i32 1147, i32 3}
!239 = !{ptr @rsnd_parse_connect_graph.__UNIQUE_ID_ddebug254, !238, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!240 = !{ptr @.str.111, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/sh/rcar/core.c", i32 1083, i32 32}
!242 = !{ptr @.str.112, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/sh/rcar/core.c", i32 1106, i32 5}
!244 = !{ptr @.str.113, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @rsnd_parse_tdm_split_mode.__UNIQUE_ID_ddebug252, !243, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!246 = !{ptr @.str.114, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/sh/rcar/core.c", i32 1823, i32 8}
!248 = !{ptr @rsnd_rdai_continuance_probe._entry, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @rsnd_rdai_continuance_probe._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.115, !247, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @rsnd_rdai_continuance_probe._entry.116, !252, !"_entry", i1 false, i1 false}
!252 = !{!"../sound/soc/sh/rcar/core.c", i32 1840, i32 3}
!253 = !{ptr @rsnd_rdai_continuance_probe._entry_ptr.117, !252, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @rsnd_rdai_continuance_probe._entry.118, !255, !"_entry", i1 false, i1 false}
!255 = !{!"../sound/soc/sh/rcar/core.c", i32 1853, i32 3}
!256 = !{ptr @rsnd_rdai_continuance_probe._entry_ptr.119, !255, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.120, !255, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @rsnd_rdai_continuance_probe._entry.121, !259, !"_entry", i1 false, i1 false}
!259 = !{!"../sound/soc/sh/rcar/core.c", i32 1859, i32 9}
!260 = !{ptr @rsnd_rdai_continuance_probe._entry_ptr.122, !259, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.123, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/sh/rcar/core.c", i32 1811, i32 11}
!263 = !{ptr @rsnd_soc_component, !264, !"rsnd_soc_component", i1 false, i1 false}
!264 = !{!"../sound/soc/sh/rcar/core.c", i32 1810, i32 46}
!265 = !{ptr @.str.124, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/sh/rcar/core.c", i32 1524, i32 4}
!267 = !{ptr @.str.125, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @rsnd_hw_params.__UNIQUE_ID_ddebug256, !266, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!269 = !{ptr @.str.126, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/sh/rcar/core.c", i32 1539, i32 4}
!271 = !{ptr @rsnd_hw_params.__UNIQUE_ID_ddebug257, !270, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!272 = !{ptr @.str.127, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/soc/sh/rcar/core.c", i32 1481, i32 9}
!274 = !{ptr @rsnd_hw_update._entry, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @rsnd_hw_update._entry_ptr, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.128, !273, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @rsnd_hw_update._entry.129, !278, !"_entry", i1 false, i1 false}
!278 = !{!"../sound/soc/sh/rcar/core.c", i32 1483, i32 9}
!279 = !{ptr @rsnd_hw_update._entry_ptr.130, !278, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.131, !278, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @.str.132, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/sh/rcar/core.c", i32 1613, i32 2}
!283 = !{ptr @rsnd_pointer._entry, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @rsnd_pointer._entry_ptr, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.133, !282, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @rsnd_mod_sequence, !287, !"rsnd_mod_sequence", i1 false, i1 false}
!287 = !{!"../sound/soc/sh/rcar/core.c", i32 495, i32 27}
!288 = !{ptr @.str.134, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../sound/soc/sh/rcar/core.c", i32 1971, i32 10}
!290 = !{ptr @rsnd_remove._entry, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @rsnd_remove._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @rsnd_remove._entry.135, !293, !"_entry", i1 false, i1 false}
!293 = !{!"../sound/soc/sh/rcar/core.c", i32 1972, i32 10}
!294 = !{ptr @rsnd_remove._entry_ptr.136, !293, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @rsnd_of_match, !296, !"rsnd_of_match", i1 false, i1 false}
!296 = !{!"../sound/soc/sh/rcar/core.c", i32 101, i32 34}
!297 = !{ptr @rsnd_pm_ops, !298, !"rsnd_pm_ops", i1 false, i1 false}
!298 = !{!"../sound/soc/sh/rcar/core.c", i32 1999, i32 32}
!299 = !{i32 1, !"wchar_size", i32 2}
!300 = !{i32 1, !"min_enum_size", i32 4}
!301 = !{i32 8, !"branch-target-enforcement", i32 0}
!302 = !{i32 8, !"sign-return-address", i32 0}
!303 = !{i32 8, !"sign-return-address-all", i32 0}
!304 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!305 = !{i32 7, !"uwtable", i32 1}
!306 = !{i32 7, !"frame-pointer", i32 2}
!307 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!308 = !{!"branch_weights", i32 1, i32 2000}
!309 = !{i64 2148342600, i64 2148342605, i64 2148342618, i64 2148342662, i64 2148342696, i64 2148342717}
!310 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
