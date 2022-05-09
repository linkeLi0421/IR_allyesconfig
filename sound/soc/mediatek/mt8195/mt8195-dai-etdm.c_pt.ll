; ModuleID = '/llk/IR_all_yes/sound/soc/mediatek/mt8195/mt8195-dai-etdm.c_pt.bc'
source_filename = "../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtk_dai_etdm_rate = type { i32, i32 }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.anon.93 = type { ptr, i32 }
%struct.mtk_base_afe = type { ptr, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, ptr, i8, ptr, i32, ptr, i32, i32, %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mtk_base_afe_dai = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head }
%struct.mt8195_afe_private = type { ptr, ptr, ptr, i32, ptr, i32, [3 x i32], %struct.spinlock, [22 x %struct.mtk_dai_memif_irq_priv], %struct.mtkaif_param, [26 x ptr] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mtk_dai_memif_irq_priv = type { i32 }
%struct.mtkaif_param = type { i8, [3 x i32], [3 x i32], i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mtk_dai_etdm_priv = type { i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [24 x i8], i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }

@mtk_dai_etdm_driver = internal global { [6 x %struct.snd_soc_dai_driver], [240 x i8] } { [6 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str, i32 17, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_dai_hdmitx_dptx_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.1, i64 1092, i32 32766, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.2, i32 18, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @mtk_dai_etdm_probe, ptr null, ptr null, ptr null, ptr @mtk_dai_etdm_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.3, i64 1092, i32 32766, i32 0, i32 0, i32 1, i32 24, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.4, i32 19, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @mtk_dai_etdm_probe, ptr null, ptr null, ptr null, ptr @mtk_dai_etdm_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.5, i64 1092, i32 32766, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.6, i32 20, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @mtk_dai_etdm_probe, ptr null, ptr null, ptr null, ptr @mtk_dai_etdm_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.7, i64 1092, i32 32766, i32 0, i32 0, i32 1, i32 24, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.8, i32 21, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @mtk_dai_etdm_probe, ptr null, ptr null, ptr null, ptr @mtk_dai_etdm_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.9, i64 1092, i32 32766, i32 0, i32 0, i32 1, i32 24, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.10, i32 22, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @mtk_dai_etdm_probe, ptr null, ptr null, ptr null, ptr @mtk_dai_hdmitx_dptx_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.11, i64 1092, i32 32766, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }], [240 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_routes = internal constant { [274 x %struct.snd_soc_dapm_route], [3576 x i8] } { [274 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.48, ptr null, ptr @.str.5, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr null, ptr @.str.5, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.50, ptr null, ptr @.str.5, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.5, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr null, ptr @.str.5, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr null, ptr @.str.5, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr null, ptr @.str.5, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr null, ptr @.str.5, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr null, ptr @.str.3, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr null, ptr @.str.3, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr null, ptr @.str.3, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr null, ptr @.str.3, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr null, ptr @.str.3, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr null, ptr @.str.3, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.3, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr null, ptr @.str.3, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.3, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.3, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr null, ptr @.str.3, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr null, ptr @.str.3, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.3, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr null, ptr @.str.3, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.3, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.71, ptr null, ptr @.str.3, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.3, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr null, ptr @.str.3, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr null, ptr @.str.3, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.3, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.76, ptr null, ptr @.str.3, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr null, ptr @.str.3, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr null, ptr @.str.3, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr null, ptr @.str.3, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.306, ptr null, ptr @.str.3, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.307, ptr null, ptr @.str.5, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.120, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.124, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr @.str.141, ptr @.str.308, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr @.str.148, ptr @.str.309, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr @.str.142, ptr @.str.310, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr @.str.150, ptr @.str.311, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr @.str.156, ptr @.str.312, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.160, ptr @.str.313, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.164, ptr @.str.314, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr @.str.168, ptr @.str.315, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr @.str.172, ptr @.str.316, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr @.str.176, ptr @.str.317, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr @.str.180, ptr @.str.318, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr @.str.184, ptr @.str.319, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr @.str.188, ptr @.str.320, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr @.str.192, ptr @.str.321, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr @.str.196, ptr @.str.322, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr @.str.200, ptr @.str.323, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr @.str.204, ptr @.str.324, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.208, ptr @.str.325, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.212, ptr @.str.326, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr @.str.216, ptr @.str.327, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr @.str.220, ptr @.str.328, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.224, ptr @.str.329, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.228, ptr @.str.330, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.232, ptr @.str.331, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.236, ptr @.str.332, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.240, ptr @.str.333, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr @.str.144, ptr @.str.334, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr @.str.152, ptr @.str.335, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr @.str.158, ptr @.str.336, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.162, ptr @.str.337, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.166, ptr @.str.338, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr @.str.170, ptr @.str.339, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr @.str.174, ptr @.str.340, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr @.str.178, ptr @.str.341, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr @.str.182, ptr @.str.342, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr @.str.186, ptr @.str.343, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr @.str.190, ptr @.str.344, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr @.str.194, ptr @.str.345, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr @.str.198, ptr @.str.346, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr @.str.202, ptr @.str.347, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr @.str.206, ptr @.str.348, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.210, ptr @.str.349, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.214, ptr @.str.350, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr @.str.218, ptr @.str.351, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr @.str.222, ptr @.str.352, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.226, ptr @.str.353, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.230, ptr @.str.354, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.234, ptr @.str.355, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.238, ptr @.str.356, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.242, ptr @.str.357, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr @.str.146, ptr @.str.358, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr @.str.154, ptr @.str.359, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr @.str.141, ptr @.str.308, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.148, ptr @.str.309, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr @.str.142, ptr @.str.310, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.150, ptr @.str.311, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.156, ptr @.str.312, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr @.str.160, ptr @.str.313, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr @.str.164, ptr @.str.314, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.168, ptr @.str.315, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr @.str.172, ptr @.str.316, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr @.str.176, ptr @.str.317, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr @.str.180, ptr @.str.318, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr @.str.184, ptr @.str.319, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr @.str.188, ptr @.str.320, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr @.str.192, ptr @.str.321, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr @.str.196, ptr @.str.322, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr @.str.200, ptr @.str.323, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr @.str.204, ptr @.str.324, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.208, ptr @.str.325, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.212, ptr @.str.326, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.216, ptr @.str.327, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.220, ptr @.str.328, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr @.str.224, ptr @.str.329, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr @.str.228, ptr @.str.330, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.232, ptr @.str.331, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr @.str.236, ptr @.str.332, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr @.str.240, ptr @.str.333, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr @.str.144, ptr @.str.334, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.152, ptr @.str.335, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.158, ptr @.str.336, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr @.str.162, ptr @.str.337, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr @.str.166, ptr @.str.338, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.170, ptr @.str.339, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr @.str.174, ptr @.str.340, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr @.str.178, ptr @.str.341, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr @.str.182, ptr @.str.342, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr @.str.186, ptr @.str.343, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr @.str.190, ptr @.str.344, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr @.str.194, ptr @.str.345, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr @.str.198, ptr @.str.346, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr @.str.202, ptr @.str.347, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr @.str.206, ptr @.str.348, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.210, ptr @.str.349, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.214, ptr @.str.350, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.218, ptr @.str.351, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.222, ptr @.str.352, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr @.str.226, ptr @.str.353, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr @.str.230, ptr @.str.354, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.234, ptr @.str.355, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr @.str.238, ptr @.str.356, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr @.str.242, ptr @.str.357, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr @.str.146, ptr @.str.358, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.154, ptr @.str.359, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.298, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.299, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.300, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.301, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.302, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.303, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.304, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.305, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.298, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.299, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.300, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.301, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.302, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.303, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.304, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.305, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.298, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.299, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.300, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.301, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.302, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.303, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.304, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.305, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.298, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.299, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.300, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.301, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.302, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.303, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.304, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.305, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.298, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.299, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.300, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.301, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.302, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.303, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.304, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.305, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.298, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.299, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.300, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.301, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.302, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.303, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.304, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.305, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr @.str.298, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr @.str.299, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr @.str.300, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr @.str.301, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr @.str.302, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr @.str.303, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr @.str.304, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr @.str.305, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.298, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.299, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.300, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.301, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.302, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.303, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.304, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.305, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.297, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.297, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.297, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.297, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.297, ptr @.str.134, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.297, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.297, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.297, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr @.str.297, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr @.str.297, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr @.str.297, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr @.str.297, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr @.str.297, ptr @.str.134, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr @.str.297, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr @.str.297, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr @.str.297, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.1, ptr null, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.1, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.7, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.9, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.11, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.3, ptr null, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.5, ptr null, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }], [3576 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.361, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @mt8195_etdm_clk_src_sel_get, ptr @mt8195_etdm_clk_src_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @etdmout_clk_src_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.362, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @mt8195_etdm_clk_src_sel_get, ptr @mt8195_etdm_clk_src_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @etdmout_clk_src_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.363, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @mt8195_etdm_clk_src_sel_get, ptr @mt8195_etdm_clk_src_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @etdmout_clk_src_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.364, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @mt8195_etdm_clk_src_sel_get, ptr @mt8195_etdm_clk_src_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @etdmout_clk_src_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.365, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @mt8195_etdm_clk_src_sel_get, ptr @mt8195_etdm_clk_src_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @etdmout_clk_src_enum to i32) }], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DPTX\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_hdmitx_dptx_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @mtk_dai_hdmitx_dptx_set_sysclk, ptr null, ptr null, ptr null, ptr @mtk_dai_etdm_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_dai_hdmitx_dptx_startup, ptr @mtk_dai_hdmitx_dptx_shutdown, ptr @mtk_dai_hdmitx_dptx_hw_params, ptr null, ptr null, ptr @mtk_dai_hdmitx_dptx_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DPTX Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ETDM1_IN\00", [23 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @mtk_dai_etdm_set_sysclk, ptr null, ptr null, ptr null, ptr @mtk_dai_etdm_set_fmt, ptr null, ptr @mtk_dai_etdm_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_dai_etdm_startup, ptr @mtk_dai_etdm_shutdown, ptr @mtk_dai_etdm_hw_params, ptr null, ptr null, ptr @mtk_dai_etdm_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ETDM1 Capture\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ETDM2_IN\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ETDM2 Capture\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ETDM1_OUT\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ETDM1 Playback\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ETDM2_OUT\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ETDM2 Playback\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ETDM3_OUT\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ETDM3 Playback\00", [17 x i8] zeroinitializer }, align 32
@mtk_dai_hdmitx_dptx_set_sysclk.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, i8 2, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_soc_mt8195_afe\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mtk_dai_hdmitx_dptx_set_sysclk\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sound/soc/mediatek/mt8195/mt8195-dai-etdm.c\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s id %d freq %u, dir %d\0A\00", [38 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_cal_mclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.14, i32 2077, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"freq %d > apll rate %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtk_dai_etdm_cal_mclk\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_cal_mclk._entry_ptr = internal global ptr @mtk_dai_etdm_cal_mclk._entry, section ".printk_index", align 4
@mtk_dai_etdm_cal_mclk._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.17, ptr @.str.14, i32 2082, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"APLL%d cannot generate freq Hz\0A\00", [32 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_cal_mclk._entry_ptr.22 = internal global ptr @mtk_dai_etdm_cal_mclk._entry.20, section ".printk_index", align 4
@mtk_dai_etdm_mclk_configure.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.23, ptr @.str.14, ptr @.str.24, i8 1, i8 -43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mtk_dai_etdm_mclk_configure\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s mclk freq = 0\0A\00", [46 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_configure.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.25, ptr @.str.14, ptr @.str.26, i8 1, i8 -35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk_dai_etdm_configure\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s fmt %u data %u lrck %d-%u bck %d, clock %u slv %u\0A\00", [42 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_configure.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.25, ptr @.str.14, ptr @.str.27, i8 1, i8 -34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s rate %u channels %u bitwidth %u, id %d\0A\00", [53 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.14, i32 1921, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s bck rate %u not support\0A\00", [36 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_configure._entry_ptr = internal global ptr @mtk_dai_etdm_configure._entry, section ".printk_index", align 4
@mtk_dai_etdm_configure._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.14, i32 1940, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s id %d only support master mode\0A\00", [61 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_configure._entry_ptr.31 = internal global ptr @mtk_dai_etdm_configure._entry.29, section ".printk_index", align 4
@mtk_dai_etdm_in_configure.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.32, ptr @.str.14, ptr @.str.33, i8 1, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mtk_dai_etdm_in_configure\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s rate %u channels %u, id %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mt8195_etdm_rates = internal constant { [15 x %struct.mtk_dai_etdm_rate], [40 x i8] } { [15 x %struct.mtk_dai_etdm_rate] [%struct.mtk_dai_etdm_rate { i32 8000, i32 0 }, %struct.mtk_dai_etdm_rate { i32 12000, i32 1 }, %struct.mtk_dai_etdm_rate { i32 16000, i32 2 }, %struct.mtk_dai_etdm_rate { i32 24000, i32 3 }, %struct.mtk_dai_etdm_rate { i32 32000, i32 4 }, %struct.mtk_dai_etdm_rate { i32 48000, i32 5 }, %struct.mtk_dai_etdm_rate { i32 96000, i32 7 }, %struct.mtk_dai_etdm_rate { i32 192000, i32 9 }, %struct.mtk_dai_etdm_rate { i32 384000, i32 11 }, %struct.mtk_dai_etdm_rate { i32 11025, i32 16 }, %struct.mtk_dai_etdm_rate { i32 22050, i32 17 }, %struct.mtk_dai_etdm_rate { i32 44100, i32 18 }, %struct.mtk_dai_etdm_rate { i32 88200, i32 19 }, %struct.mtk_dai_etdm_rate { i32 176400, i32 20 }, %struct.mtk_dai_etdm_rate { i32 352800, i32 21 }], [40 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_out_configure.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.34, ptr @.str.14, ptr @.str.33, i8 1, i8 -72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mtk_dai_etdm_out_configure\00", [37 x i8] zeroinitializer }, align 32
@mtk_dai_hdmitx_dptx_trigger.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.35, ptr @.str.14, ptr @.str.36, i8 2, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mtk_dai_hdmitx_dptx_trigger\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(), cmd %d, dai id %d\0A\00", [39 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_probe.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.37, ptr @.str.14, ptr @.str.38, i8 2, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtk_dai_etdm_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s id %d\0A\00", [22 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_probe.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.37, ptr @.str.14, ptr @.str.39, i8 2, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MCLK always on, rate %d\0A\00", [39 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_set_sysclk.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.40, ptr @.str.14, ptr @.str.15, i8 2, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtk_dai_etdm_set_sysclk\00", [40 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_set_tdm_slot.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.41, ptr @.str.14, ptr @.str.42, i8 2, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mtk_dai_etdm_set_tdm_slot\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s id %d slot_width %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_hw_params.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.43, ptr @.str.14, ptr @.str.44, i8 1, i8 -19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk_dai_etdm_hw_params\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s '%s' period %u-%u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_trigger.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.47, ptr @.str.14, ptr @.str.36, i8 1, i8 -7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtk_dai_etdm_trigger\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I012\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I013\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I014\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I015\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I016\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I017\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I018\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I019\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I072\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I073\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I074\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I075\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I076\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I077\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I078\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I079\00", [27 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I080\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I081\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I082\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I083\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I084\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I085\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I086\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I087\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I088\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I089\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I090\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I091\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I092\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I093\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I094\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I095\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O048\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o048_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.141, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.142, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.143 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.144, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.145 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.146, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.147 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O049\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o049_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.148, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.149 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.150, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.151 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.152, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.153 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.154, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.155 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O050\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o050_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.156, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.157 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.158, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.159 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O051\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o051_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.160, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.161 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.162, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.163 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O052\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o052_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.164, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.165 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.166, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.167 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O053\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o053_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.168, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.169 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.170, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.171 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O054\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o054_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.173 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.174, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.175 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O055\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o055_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.177 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.178, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.179 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O056\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o056_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.181 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.183 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O057\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o057_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.184, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.185 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.186, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.187 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O058\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o058_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.188, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.189 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.190, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.191 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O059\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o059_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.192, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.193 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.194, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.195 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O060\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o060_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.196, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.197 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.198, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.199 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O061\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o061_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.200, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.201 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.202, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.203 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O062\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o062_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.204, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.205 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.206, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.207 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O063\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o063_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.208, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.209 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.210, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.211 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O064\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o064_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.212, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.213 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.214, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.215 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O065\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o065_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.216, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.217 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.218, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.219 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O066\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o066_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.220, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.221 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.222, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.223 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O067\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o067_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.224, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.225 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.226, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.227 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O068\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o068_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.228, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.229 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.230, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.231 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O069\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o069_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.232, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.233 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.234, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.235 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O070\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o070_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.236, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.237 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.238, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.239 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O071\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o071_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.240, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.241 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.242, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.243 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O072\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o072_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.141, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.244 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.142, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.245 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.144, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.246 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.146, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.247 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O073\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o073_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.148, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.248 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.150, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.249 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.152, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.250 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.154, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.251 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O074\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o074_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.156, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.252 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.158, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.253 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O075\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o075_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.160, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.254 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.162, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.255 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O076\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o076_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.164, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.256 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.166, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.257 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O077\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o077_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.168, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.258 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.170, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.259 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O078\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o078_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.260 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.174, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.261 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O079\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o079_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.262 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.178, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.263 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O080\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o080_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.264 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.265 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O081\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o081_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.184, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.266 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.186, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.267 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O082\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o082_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.188, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.268 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.190, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.269 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O083\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o083_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.192, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.270 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.194, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.271 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O084\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o084_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.196, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.272 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.198, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.273 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O085\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o085_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.200, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.274 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.202, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.275 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O086\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o086_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.204, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.276 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.206, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.277 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O087\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o087_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.208, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.278 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.210, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.279 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O088\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o088_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.212, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.280 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.214, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.281 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O089\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o089_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.216, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.282 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.218, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.283 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O090\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o090_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.220, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.284 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.222, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.285 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O091\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o091_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.224, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.286 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.226, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.287 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O092\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o092_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.228, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.288 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.230, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.289 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O093\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o093_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.232, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.290 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.234, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.291 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O094\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o094_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.236, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.292 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.238, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.293 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O095\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_o095_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.240, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.294 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.242, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.295 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDMI_OUT_MUX\00", [19 x i8] zeroinitializer }, align 32
@hdmi_out_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @hdmi_out_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DPTX_OUT_MUX\00", [19 x i8] zeroinitializer }, align 32
@dptx_out_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.129, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @dptx_out_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDMI_CH0_MUX\00", [19 x i8] zeroinitializer }, align 32
@hdmi_ch0_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @hdmi_ch0_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDMI_CH1_MUX\00", [19 x i8] zeroinitializer }, align 32
@hdmi_ch1_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @hdmi_ch1_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDMI_CH2_MUX\00", [19 x i8] zeroinitializer }, align 32
@hdmi_ch2_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @hdmi_ch2_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDMI_CH3_MUX\00", [19 x i8] zeroinitializer }, align 32
@hdmi_ch3_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @hdmi_ch3_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDMI_CH4_MUX\00", [19 x i8] zeroinitializer }, align 32
@hdmi_ch4_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @hdmi_ch4_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDMI_CH5_MUX\00", [19 x i8] zeroinitializer }, align 32
@hdmi_ch5_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @hdmi_ch5_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDMI_CH6_MUX\00", [19 x i8] zeroinitializer }, align 32
@hdmi_ch6_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.136, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @hdmi_ch6_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HDMI_CH7_MUX\00", [19 x i8] zeroinitializer }, align 32
@hdmi_ch7_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @hdmi_ch7_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ETDM_INPUT\00", [21 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ETDM_OUTPUT\00", [20 x i8] zeroinitializer }, align 32
@mtk_dai_etdm_widgets = internal constant { [92 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [4144 x i8] } { [92 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.48, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.49, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.50, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.51, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.52, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.53, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.54, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.55, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.56, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.57, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.58, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.60, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.63, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.64, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.65, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.66, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.68, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.69, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.70, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.71, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.72, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.73, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.76, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @mtk_dai_etdm_o048_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.81, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @mtk_dai_etdm_o049_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.82, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o050_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o051_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o052_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.85, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o053_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o054_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o055_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o056_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.89, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o057_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.90, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o058_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o059_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o060_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o061_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.94, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o062_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o063_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o064_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o065_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o066_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o067_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o068_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o069_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o070_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o071_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @mtk_dai_etdm_o072_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @mtk_dai_etdm_o073_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.106, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o074_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.107, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o075_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o076_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.109, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o077_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.110, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o078_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.111, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o079_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.112, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o080_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.113, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o081_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.114, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o082_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.115, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o083_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.116, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o084_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.117, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o085_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.118, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o086_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.119, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o087_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.120, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o088_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.121, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o089_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.122, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o090_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.123, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o091_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.124, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o092_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.125, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o093_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.126, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o094_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.127, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mtk_dai_etdm_o095_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.128, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hdmi_out_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.129, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dptx_out_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.130, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hdmi_ch0_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hdmi_ch1_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hdmi_ch2_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.133, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hdmi_ch3_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.134, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hdmi_ch4_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.135, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hdmi_ch5_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.136, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hdmi_ch6_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.137, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hdmi_ch7_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.138, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.139, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [4144 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I020 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13248, i32 13248, i32 20, i32 20, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I022 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13248, i32 13248, i32 22, i32 22, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I046 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13252, i32 13252, i32 14, i32 14, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I070 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.147 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13256, i32 13256, i32 6, i32 6, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I021 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.149 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13268, i32 13268, i32 21, i32 21, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I023 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.151 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13268, i32 13268, i32 23, i32 23, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I047 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.153 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13272, i32 13272, i32 15, i32 15, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I071 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.155 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13276, i32 13276, i32 7, i32 7, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I024 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.157 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13288, i32 13288, i32 24, i32 24, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I048 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.159 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13292, i32 13292, i32 16, i32 16, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I025 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.161 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13308, i32 13308, i32 25, i32 25, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I049 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.163 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13312, i32 13312, i32 17, i32 17, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I026 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.165 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13328, i32 13328, i32 26, i32 26, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I050 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.167 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13332, i32 13332, i32 18, i32 18, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I027 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.169 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13348, i32 13348, i32 27, i32 27, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I051 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.171 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13352, i32 13352, i32 19, i32 19, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I028 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.173 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13368, i32 13368, i32 28, i32 28, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I052 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.175 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13372, i32 13372, i32 20, i32 20, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I029 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.177 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13388, i32 13388, i32 29, i32 29, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I053 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.179 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13392, i32 13392, i32 21, i32 21, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I030 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.181 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13408, i32 13408, i32 30, i32 30, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I054 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.183 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13412, i32 13412, i32 22, i32 22, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I031 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.185 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13428, i32 13428, i32 31, i32 31, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I055 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.187 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13432, i32 13432, i32 23, i32 23, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I032 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.189 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13452, i32 13452, i32 0, i32 0, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I056 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.191 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13452, i32 13452, i32 24, i32 24, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I033 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.193 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13472, i32 13472, i32 1, i32 1, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I057 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.195 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13472, i32 13472, i32 25, i32 25, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I034 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.197 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13492, i32 13492, i32 2, i32 2, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I058 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.199 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13492, i32 13492, i32 26, i32 26, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I035 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.201 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13512, i32 13512, i32 3, i32 3, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I059 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.203 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13512, i32 13512, i32 27, i32 27, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I036 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.205 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13532, i32 13532, i32 4, i32 4, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I060 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.207 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13532, i32 13532, i32 28, i32 28, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I037 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.209 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13552, i32 13552, i32 5, i32 5, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I061 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.211 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13552, i32 13552, i32 29, i32 29, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I038 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.213 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13572, i32 13572, i32 6, i32 6, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I062 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.215 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13572, i32 13572, i32 30, i32 30, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I039 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.217 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13592, i32 13592, i32 7, i32 7, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I063 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.219 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13592, i32 13592, i32 31, i32 31, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I040 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.221 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13612, i32 13612, i32 8, i32 8, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I064 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.223 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13616, i32 13616, i32 0, i32 0, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I041 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.225 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13632, i32 13632, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I065 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.227 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13636, i32 13636, i32 1, i32 1, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I042 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.229 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13652, i32 13652, i32 10, i32 10, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I066 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.231 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13656, i32 13656, i32 2, i32 2, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I043 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.233 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13672, i32 13672, i32 11, i32 11, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I067 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.235 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13676, i32 13676, i32 3, i32 3, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I044 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.237 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13692, i32 13692, i32 12, i32 12, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I068 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.239 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13696, i32 13696, i32 4, i32 4, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I045 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.241 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13712, i32 13712, i32 13, i32 13, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I069 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.243 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13716, i32 13716, i32 5, i32 5, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.244 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13728, i32 13728, i32 20, i32 20, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.245 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13728, i32 13728, i32 22, i32 22, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.246 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13732, i32 13732, i32 14, i32 14, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.247 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13736, i32 13736, i32 6, i32 6, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.248 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13748, i32 13748, i32 21, i32 21, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.249 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13748, i32 13748, i32 23, i32 23, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.250 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13752, i32 13752, i32 15, i32 15, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.251 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13756, i32 13756, i32 7, i32 7, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.252 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13768, i32 13768, i32 24, i32 24, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.253 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13772, i32 13772, i32 16, i32 16, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.254 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13788, i32 13788, i32 25, i32 25, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.255 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13792, i32 13792, i32 17, i32 17, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.256 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13808, i32 13808, i32 26, i32 26, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.257 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13812, i32 13812, i32 18, i32 18, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.258 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13828, i32 13828, i32 27, i32 27, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.259 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13832, i32 13832, i32 19, i32 19, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.260 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13848, i32 13848, i32 28, i32 28, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.261 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13852, i32 13852, i32 20, i32 20, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.262 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13868, i32 13868, i32 29, i32 29, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.263 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13872, i32 13872, i32 21, i32 21, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.264 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13888, i32 13888, i32 30, i32 30, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.265 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13892, i32 13892, i32 22, i32 22, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.266 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13908, i32 13908, i32 31, i32 31, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.267 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13912, i32 13912, i32 23, i32 23, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.268 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13932, i32 13932, i32 0, i32 0, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.269 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13932, i32 13932, i32 24, i32 24, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.270 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13952, i32 13952, i32 1, i32 1, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.271 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13952, i32 13952, i32 25, i32 25, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.272 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13972, i32 13972, i32 2, i32 2, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.273 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13972, i32 13972, i32 26, i32 26, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.274 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13992, i32 13992, i32 3, i32 3, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.275 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13992, i32 13992, i32 27, i32 27, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.276 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14012, i32 14012, i32 4, i32 4, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.277 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14012, i32 14012, i32 28, i32 28, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.278 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14032, i32 14032, i32 5, i32 5, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.279 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14032, i32 14032, i32 29, i32 29, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.280 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14052, i32 14052, i32 6, i32 6, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.281 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14052, i32 14052, i32 30, i32 30, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.282 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14072, i32 14072, i32 7, i32 7, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.283 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14072, i32 14072, i32 31, i32 31, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.284 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14092, i32 14092, i32 8, i32 8, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.285 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14096, i32 14096, i32 0, i32 0, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.286 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14112, i32 14112, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.287 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14116, i32 14116, i32 1, i32 1, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.288 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14132, i32 14132, i32 10, i32 10, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.289 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14136, i32 14136, i32 2, i32 2, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.290 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14152, i32 14152, i32 11, i32 11, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.291 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14156, i32 14156, i32 3, i32 3, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.292 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14172, i32 14172, i32 12, i32 12, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.293 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14176, i32 14176, i32 4, i32 4, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.294 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14192, i32 14192, i32 13, i32 13, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.295 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14196, i32 14196, i32 5, i32 5, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@hdmi_out_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 2, i32 1, ptr @hdmitx_dptx_mux_map, ptr @hdmitx_dptx_mux_map_value, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@hdmitx_dptx_mux_map = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.296, ptr @.str.297], [24 x i8] zeroinitializer }, align 32
@hdmitx_dptx_mux_map_value = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 1], [24 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Disconnect\00", [21 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Connect\00", [24 x i8] zeroinitializer }, align 32
@dptx_out_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 2, i32 1, ptr @hdmitx_dptx_mux_map, ptr @hdmitx_dptx_mux_map_value, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@hdmi_ch0_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 912, i8 0, i8 0, i32 8, i32 15, ptr @afe_conn_hdmi_mux_map, ptr @afe_conn_hdmi_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@afe_conn_hdmi_mux_map = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305], [32 x i8] zeroinitializer }, align 32
@afe_conn_hdmi_mux_map_value = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], [32 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CH0\00", [28 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CH1\00", [28 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CH2\00", [28 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CH3\00", [28 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CH4\00", [28 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CH5\00", [28 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CH6\00", [28 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CH7\00", [28 x i8] zeroinitializer }, align 32
@hdmi_ch1_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 912, i8 4, i8 4, i32 8, i32 15, ptr @afe_conn_hdmi_mux_map, ptr @afe_conn_hdmi_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@hdmi_ch2_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 912, i8 8, i8 8, i32 8, i32 15, ptr @afe_conn_hdmi_mux_map, ptr @afe_conn_hdmi_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@hdmi_ch3_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 912, i8 12, i8 12, i32 8, i32 15, ptr @afe_conn_hdmi_mux_map, ptr @afe_conn_hdmi_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@hdmi_ch4_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 912, i8 16, i8 16, i32 8, i32 15, ptr @afe_conn_hdmi_mux_map, ptr @afe_conn_hdmi_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@hdmi_ch5_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 912, i8 20, i8 20, i32 8, i32 15, ptr @afe_conn_hdmi_mux_map, ptr @afe_conn_hdmi_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@hdmi_ch6_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 912, i8 24, i8 24, i32 8, i32 15, ptr @afe_conn_hdmi_mux_map, ptr @afe_conn_hdmi_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@hdmi_ch7_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 912, i8 28, i8 28, i32 8, i32 15, ptr @afe_conn_hdmi_mux_map, ptr @afe_conn_hdmi_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL8\00", [28 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL3\00", [28 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I020\00", [27 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I021\00", [27 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I022\00", [27 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I023\00", [27 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I024\00", [27 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I025\00", [27 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I026\00", [27 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I027\00", [27 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I028\00", [27 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I029\00", [27 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I030\00", [27 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I031\00", [27 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I032\00", [27 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I033\00", [27 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I034\00", [27 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I035\00", [27 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I036\00", [27 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I037\00", [27 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I038\00", [27 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I039\00", [27 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I040\00", [27 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I041\00", [27 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I042\00", [27 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I043\00", [27 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I044\00", [27 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I045\00", [27 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I046\00", [27 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I047\00", [27 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I048\00", [27 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I049\00", [27 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I050\00", [27 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I051\00", [27 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I052\00", [27 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I053\00", [27 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I054\00", [27 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I055\00", [27 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I056\00", [27 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I057\00", [27 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I058\00", [27 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I059\00", [27 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I060\00", [27 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I061\00", [27 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I062\00", [27 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I063\00", [27 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I064\00", [27 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I065\00", [27 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I066\00", [27 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I067\00", [27 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I068\00", [27 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I069\00", [27 x i8] zeroinitializer }, align 32
@.str.358 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I070\00", [27 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I071\00", [27 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DL10\00", [27 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ETDM_OUT1_Clock_Source\00", [41 x i8] zeroinitializer }, align 32
@etdmout_clk_src_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 4, i32 0, ptr @mt8195_etdm_clk_src_sel_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ETDM_OUT2_Clock_Source\00", [41 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ETDM_OUT3_Clock_Source\00", [41 x i8] zeroinitializer }, align 32
@.str.364 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ETDM_IN1_Clock_Source\00", [42 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ETDM_IN2_Clock_Source\00", [42 x i8] zeroinitializer }, align 32
@mt8195_etdm_clk_src_sel_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.366, ptr @.str.367, ptr @.str.368, ptr @.str.369], [16 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"26m\00", [28 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a1sys_a2sys\00", [20 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"a3sys\00", [26 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"a4sys\00", [26 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"etdm-in1\00", [23 x i8] zeroinitializer }, align 32
@.str.371 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"etdm-in2\00", [23 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"etdm-out1\00", [22 x i8] zeroinitializer }, align 32
@.str.373 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"etdm-out2\00", [22 x i8] zeroinitializer }, align 32
@.str.374 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"etdm-out3\00", [22 x i8] zeroinitializer }, align 32
@__const.mt8195_dai_etdm_parse_of.of_afe_etdms = private unnamed_addr constant [5 x %struct.anon.93] [%struct.anon.93 { ptr @.str.370, i32 1 }, %struct.anon.93 { ptr @.str.371, i32 2 }, %struct.anon.93 { ptr @.str.372, i32 3 }, %struct.anon.93 { ptr @.str.373, i32 4 }, %struct.anon.93 { ptr @.str.374, i32 5 }], align 4
@.str.375 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mediatek,%s-mclk-always-on-rate\00", [32 x i8] zeroinitializer }, align 32
@mt8195_dai_etdm_parse_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.376, ptr @.str.377, ptr @.str.14, i32 2523, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.376 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s snprintf err=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.377 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mt8195_dai_etdm_parse_of\00", [39 x i8] zeroinitializer }, align 32
@mt8195_dai_etdm_parse_of._entry_ptr = internal global ptr @mt8195_dai_etdm_parse_of._entry, section ".printk_index", align 4
@mt8195_dai_etdm_parse_of._entry.378 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.379, ptr @.str.377, ptr @.str.14, i32 2531, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.379 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s unsupported mclk %uHz\0A\00", [38 x i8] zeroinitializer }, align 32
@mt8195_dai_etdm_parse_of._entry_ptr.380 = internal global ptr @mt8195_dai_etdm_parse_of._entry.378, section ".printk_index", align 4
@.str.381 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mediatek,%s-multi-pin-mode\00", [37 x i8] zeroinitializer }, align 32
@mt8195_dai_etdm_parse_of._entry.382 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.376, ptr @.str.377, ptr @.str.14, i32 2539, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@mt8195_dai_etdm_parse_of._entry_ptr.383 = internal global ptr @mt8195_dai_etdm_parse_of._entry.382, section ".printk_index", align 4
@.str.384 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mediatek,%s-cowork-source\00", [38 x i8] zeroinitializer }, align 32
@mt8195_dai_etdm_parse_of._entry.385 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.376, ptr @.str.377, ptr @.str.14, i32 2549, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@mt8195_dai_etdm_parse_of._entry_ptr.386 = internal global ptr @mt8195_dai_etdm_parse_of._entry.385, section ".printk_index", align 4
@mt8195_dai_etdm_parse_of._entry.387 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.388, ptr @.str.377, ptr @.str.14, i32 2556, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.388 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s invalid id=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@mt8195_dai_etdm_parse_of._entry_ptr.389 = internal global ptr @mt8195_dai_etdm_parse_of._entry.387, section ".printk_index", align 4
@.str.390 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mediatek,%s-chn-disabled\00", [39 x i8] zeroinitializer }, align 32
@mt8195_dai_etdm_parse_of._entry.391 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.376, ptr @.str.377, ptr @.str.14, i32 2575, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@mt8195_dai_etdm_parse_of._entry_ptr.392 = internal global ptr @mt8195_dai_etdm_parse_of._entry.391, section ".printk_index", align 4
@mt8195_dai_etdm_parse_of._entry.393 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.394, ptr @.str.377, ptr @.str.14, i32 2587, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.394 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s [%d] invalid chn %u\0A\00", [40 x i8] zeroinitializer }, align 32
@mt8195_dai_etdm_parse_of._entry_ptr.395 = internal global ptr @mt8195_dai_etdm_parse_of._entry.393, section ".printk_index", align 4
@mt8195_etdm_update_sync_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.396, ptr @.str.397, ptr @.str.14, i32 2483, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.396 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s [%d] wrong sync source\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.397 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mt8195_etdm_update_sync_info\00", [35 x i8] zeroinitializer }, align 32
@mt8195_etdm_update_sync_info._entry_ptr = internal global ptr @mt8195_etdm_update_sync_info._entry, section ".printk_index", align 4
@switch.table.mtk_dai_etdm_probe = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 7, i32 3, i32 4, i32 5, i32 6], [44 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_set_fmt = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 2, i32 1, i32 4, i32 5], [44 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_set_fmt.398 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\00\00\01\01", [27 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_set_fmt.399 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\00\01\00\01", [27 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_hdmitx_dptx_startup = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 33, i32 30, i32 29, i32 32, i32 31, i32 33], [40 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_hdmitx_dptx_startup.400 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 7, i32 3, i32 4, i32 5, i32 6], [44 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_hdmitx_dptx_hw_params = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 3840, i32 3840, i32 16128, i32 16128, i32 65280, i32 65280], [40 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_hdmitx_dptx_trigger = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 9152, i32 8960, i32 8992, i32 9088, i32 9120, i32 9152], [40 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_hdmitx_dptx_trigger.401 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 9152, i32 8960, i32 8992, i32 9088, i32 9120, i32 9152], [40 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_mclk_configure = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 7, i32 3, i32 4, i32 5, i32 6], [44 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_mclk_configure.402 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 12, i32 15, i32 16, i32 13, i32 14], [44 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_mclk_configure.403 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 9156, i32 8964, i32 8996, i32 9092, i32 9124], [44 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_configure = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 9152, i32 8960, i32 8992, i32 9088, i32 9120, i32 9152], [40 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_in_configure = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 9156, i32 8964, i32 8996, i32 9092, i32 9124, i32 9156], [40 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_in_configure.404 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 9160, i32 8968, i32 9000, i32 9096, i32 9128, i32 9160], [40 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_in_configure.405 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 9164, i32 8972, i32 9004, i32 9100, i32 9132, i32 9164], [40 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_in_configure.406 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 9168, i32 8976, i32 9008, i32 9104, i32 9136, i32 9168], [40 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_in_configure.407 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 9172, i32 8980, i32 9012, i32 9108, i32 9140, i32 9172], [40 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_out_configure = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 9152, i32 8960, i32 8992, i32 9088, i32 9120, i32 9152], [40 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_out_configure.408 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 9156, i32 8964, i32 8996, i32 9092, i32 9124, i32 9156], [40 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_out_configure.409 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 9160, i32 8968, i32 9000, i32 9096, i32 9128, i32 9160], [40 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_out_configure.410 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 9168, i32 8976, i32 9008, i32 9104, i32 9136, i32 9168], [40 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_out_configure.411 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 9172, i32 8980, i32 9012, i32 9108, i32 9140, i32 9172], [40 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_startup = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 33, i32 30, i32 29, i32 32, i32 31, i32 33], [40 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_startup.412 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 7, i32 3, i32 4, i32 5, i32 6], [44 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_startup.413 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 33, i32 30, i32 29, i32 32, i32 31, i32 33], [40 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_shutdown = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 33, i32 30, i32 29, i32 32, i32 31, i32 33], [40 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_shutdown.414 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 33, i32 30, i32 29, i32 32, i32 31, i32 33], [40 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_shutdown.415 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 33, i32 30, i32 29, i32 32, i32 31, i32 33], [40 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_hw_params = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 3, i32 5, i32 11, i32 13, i32 15], [44 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_hw_params.416 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 2, i32 4, i32 10, i32 12, i32 14], [44 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_hw_params.417 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8, i32 24, i32 20, i32 8, i32 20], [44 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_hw_params.418 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8948, i32 8952, i32 8944, i32 8952, i32 8952], [44 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_hw_params.419 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 3840, i32 251658240, i32 15728640, i32 3840, i32 15728640], [44 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_trigger = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 9152, i32 8960, i32 8992, i32 9088, i32 9120, i32 9152], [40 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_trigger.420 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 9152, i32 8960, i32 8992, i32 9088, i32 9120, i32 9152], [40 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_trigger.421 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 9152, i32 8960, i32 8992, i32 9088, i32 9120, i32 9152], [40 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_trigger.422 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 9152, i32 8960, i32 8992, i32 9088, i32 9120, i32 9152], [40 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_trigger.423 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 9152, i32 8960, i32 8992, i32 9088, i32 9120, i32 9152], [40 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_etdm_trigger.424 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 9152, i32 8960, i32 8992, i32 9088, i32 9120, i32 9152], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.425 = internal global [8 x i64] [i64 6, i64 32, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22]
@__sancov_gen_cov_switch_values.426 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.427 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 19]
@__sancov_gen_cov_switch_values.428 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 19]
@__sancov_gen_cov_switch_values.429 = internal global [4 x i64] [i64 2, i64 32, i64 352800, i64 384000]
@__sancov_gen_cov_switch_values.430 = internal global [17 x i64] [i64 15, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000, i64 352800, i64 384000]
@__sancov_gen_cov_switch_values.431 = internal global [17 x i64] [i64 15, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000, i64 352800, i64 384000]
@__sancov_gen_cov_switch_values.432 = internal global [8 x i64] [i64 6, i64 32, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22]
@__sancov_gen_cov_switch_values.433 = internal global [7 x i64] [i64 5, i64 32, i64 17, i64 18, i64 19, i64 20, i64 21]
@__sancov_gen_cov_switch_values.434 = internal global [7 x i64] [i64 5, i64 32, i64 17, i64 18, i64 19, i64 20, i64 21]
@__sancov_gen_cov_switch_values.435 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 6]
@___asan_gen_.436 = private unnamed_addr constant [20 x i8] c"mtk_dai_etdm_driver\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2388, i32 34 }
@___asan_gen_.439 = private unnamed_addr constant [20 x i8] c"mtk_dai_etdm_routes\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 973, i32 40 }
@___asan_gen_.442 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_controls\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 738, i32 38 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2390, i32 11 }
@___asan_gen_.448 = private unnamed_addr constant [24 x i8] c"mtk_dai_hdmitx_dptx_ops\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2353, i32 37 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2393, i32 19 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2402, i32 11 }
@___asan_gen_.457 = private unnamed_addr constant [17 x i8] c"mtk_dai_etdm_ops\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2343, i32 37 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2405, i32 19 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2415, i32 11 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2418, i32 19 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2428, i32 11 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2431, i32 19 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2441, i32 11 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2444, i32 19 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2454, i32 11 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2457, i32 19 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2336, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2077, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2082, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1879, i32 4 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1908, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1912, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1920, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1939, i32 4 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1644, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant [18 x i8] c"mt8195_etdm_rates\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 122, i32 39 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1760, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2296, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2375, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2378, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2100, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2120, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1970, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1402, i32 10 }
@___asan_gen_.593 = private unnamed_addr constant [23 x i8] c"../include/sound/pcm.h\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.593, i32 1404, i32 10 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2021, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 763, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 764, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 765, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 766, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 767, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 768, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 769, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 770, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 773, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 774, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 775, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 776, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 777, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 778, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 779, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 780, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 781, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 782, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 783, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 784, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 785, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 786, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 787, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 788, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 789, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 790, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 791, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 792, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 793, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 794, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 795, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 796, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 799, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o048_mix\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 276, i32 38 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 802, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o049_mix\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 283, i32 38 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 805, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o050_mix\00", align 1
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 290, i32 38 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 808, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o051_mix\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 295, i32 38 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 811, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o052_mix\00", align 1
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 300, i32 38 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 814, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o053_mix\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 305, i32 38 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 817, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o054_mix\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 310, i32 38 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 820, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o055_mix\00", align 1
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 315, i32 38 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 823, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o056_mix\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 320, i32 38 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 826, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o057_mix\00", align 1
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 325, i32 38 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 829, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o058_mix\00", align 1
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 330, i32 38 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 832, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o059_mix\00", align 1
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 335, i32 38 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 835, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o060_mix\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 340, i32 38 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 838, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o061_mix\00", align 1
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 345, i32 38 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 841, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o062_mix\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 350, i32 38 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 844, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o063_mix\00", align 1
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 355, i32 38 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 847, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o064_mix\00", align 1
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 360, i32 38 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 850, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o065_mix\00", align 1
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 365, i32 38 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 853, i32 2 }
@___asan_gen_.805 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o066_mix\00", align 1
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 370, i32 38 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 856, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o067_mix\00", align 1
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 375, i32 38 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 859, i32 2 }
@___asan_gen_.817 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o068_mix\00", align 1
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 380, i32 38 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 862, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o069_mix\00", align 1
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 385, i32 38 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 865, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o070_mix\00", align 1
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 390, i32 38 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 868, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o071_mix\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 395, i32 38 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 873, i32 2 }
@___asan_gen_.841 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o072_mix\00", align 1
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 400, i32 38 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 876, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o073_mix\00", align 1
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 407, i32 38 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 879, i32 2 }
@___asan_gen_.853 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o074_mix\00", align 1
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 414, i32 38 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 882, i32 2 }
@___asan_gen_.859 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o075_mix\00", align 1
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 419, i32 38 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 885, i32 2 }
@___asan_gen_.865 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o076_mix\00", align 1
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 424, i32 38 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 888, i32 2 }
@___asan_gen_.871 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o077_mix\00", align 1
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 429, i32 38 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 891, i32 2 }
@___asan_gen_.877 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o078_mix\00", align 1
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 434, i32 38 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 894, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o079_mix\00", align 1
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 439, i32 38 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 897, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o080_mix\00", align 1
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 444, i32 38 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 900, i32 2 }
@___asan_gen_.895 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o081_mix\00", align 1
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 449, i32 38 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 903, i32 2 }
@___asan_gen_.901 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o082_mix\00", align 1
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 454, i32 38 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 906, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o083_mix\00", align 1
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 459, i32 38 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 909, i32 2 }
@___asan_gen_.913 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o084_mix\00", align 1
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 464, i32 38 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 912, i32 2 }
@___asan_gen_.919 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o085_mix\00", align 1
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 469, i32 38 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 915, i32 2 }
@___asan_gen_.925 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o086_mix\00", align 1
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 474, i32 38 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 918, i32 2 }
@___asan_gen_.931 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o087_mix\00", align 1
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 479, i32 38 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 921, i32 2 }
@___asan_gen_.937 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o088_mix\00", align 1
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 484, i32 38 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 924, i32 2 }
@___asan_gen_.943 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o089_mix\00", align 1
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 489, i32 38 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 927, i32 2 }
@___asan_gen_.949 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o090_mix\00", align 1
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 494, i32 38 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 930, i32 2 }
@___asan_gen_.955 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o091_mix\00", align 1
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 499, i32 38 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 933, i32 2 }
@___asan_gen_.961 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o092_mix\00", align 1
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 504, i32 38 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 936, i32 2 }
@___asan_gen_.967 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o093_mix\00", align 1
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 509, i32 38 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 939, i32 2 }
@___asan_gen_.973 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o094_mix\00", align 1
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 514, i32 38 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 942, i32 2 }
@___asan_gen_.979 = private unnamed_addr constant [22 x i8] c"mtk_dai_etdm_o095_mix\00", align 1
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 519, i32 38 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 947, i32 2 }
@___asan_gen_.985 = private unnamed_addr constant [21 x i8] c"hdmi_out_mux_control\00", align 1
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 550, i32 38 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 949, i32 2 }
@___asan_gen_.991 = private unnamed_addr constant [21 x i8] c"dptx_out_mux_control\00", align 1
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 561, i32 38 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 952, i32 2 }
@___asan_gen_.997 = private unnamed_addr constant [21 x i8] c"hdmi_ch0_mux_control\00", align 1
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 580, i32 38 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 954, i32 2 }
@___asan_gen_.1003 = private unnamed_addr constant [21 x i8] c"hdmi_ch1_mux_control\00", align 1
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 590, i32 38 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 956, i32 2 }
@___asan_gen_.1009 = private unnamed_addr constant [21 x i8] c"hdmi_ch2_mux_control\00", align 1
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 600, i32 38 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 958, i32 2 }
@___asan_gen_.1015 = private unnamed_addr constant [21 x i8] c"hdmi_ch3_mux_control\00", align 1
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 610, i32 38 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 960, i32 2 }
@___asan_gen_.1021 = private unnamed_addr constant [21 x i8] c"hdmi_ch4_mux_control\00", align 1
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 620, i32 38 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 962, i32 2 }
@___asan_gen_.1027 = private unnamed_addr constant [21 x i8] c"hdmi_ch5_mux_control\00", align 1
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 630, i32 38 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 964, i32 2 }
@___asan_gen_.1033 = private unnamed_addr constant [21 x i8] c"hdmi_ch6_mux_control\00", align 1
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 640, i32 38 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 966, i32 2 }
@___asan_gen_.1039 = private unnamed_addr constant [21 x i8] c"hdmi_ch7_mux_control\00", align 1
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 650, i32 38 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 969, i32 2 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 970, i32 2 }
@___asan_gen_.1048 = private unnamed_addr constant [21 x i8] c"mtk_dai_etdm_widgets\00", align 1
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 761, i32 41 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 277, i32 2 }
@___asan_gen_.1054 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 278, i32 2 }
@___asan_gen_.1058 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 279, i32 2 }
@___asan_gen_.1062 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 280, i32 2 }
@___asan_gen_.1066 = private unnamed_addr constant [21 x i8] c".compoundliteral.147\00", align 1
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 284, i32 2 }
@___asan_gen_.1070 = private unnamed_addr constant [21 x i8] c".compoundliteral.149\00", align 1
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 285, i32 2 }
@___asan_gen_.1074 = private unnamed_addr constant [21 x i8] c".compoundliteral.151\00", align 1
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 286, i32 2 }
@___asan_gen_.1078 = private unnamed_addr constant [21 x i8] c".compoundliteral.153\00", align 1
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 287, i32 2 }
@___asan_gen_.1082 = private unnamed_addr constant [21 x i8] c".compoundliteral.155\00", align 1
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 291, i32 2 }
@___asan_gen_.1086 = private unnamed_addr constant [21 x i8] c".compoundliteral.157\00", align 1
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 292, i32 2 }
@___asan_gen_.1090 = private unnamed_addr constant [21 x i8] c".compoundliteral.159\00", align 1
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 296, i32 2 }
@___asan_gen_.1094 = private unnamed_addr constant [21 x i8] c".compoundliteral.161\00", align 1
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 297, i32 2 }
@___asan_gen_.1098 = private unnamed_addr constant [21 x i8] c".compoundliteral.163\00", align 1
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 301, i32 2 }
@___asan_gen_.1102 = private unnamed_addr constant [21 x i8] c".compoundliteral.165\00", align 1
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 302, i32 2 }
@___asan_gen_.1106 = private unnamed_addr constant [21 x i8] c".compoundliteral.167\00", align 1
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 306, i32 2 }
@___asan_gen_.1110 = private unnamed_addr constant [21 x i8] c".compoundliteral.169\00", align 1
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 307, i32 2 }
@___asan_gen_.1114 = private unnamed_addr constant [21 x i8] c".compoundliteral.171\00", align 1
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 311, i32 2 }
@___asan_gen_.1118 = private unnamed_addr constant [21 x i8] c".compoundliteral.173\00", align 1
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 312, i32 2 }
@___asan_gen_.1122 = private unnamed_addr constant [21 x i8] c".compoundliteral.175\00", align 1
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 316, i32 2 }
@___asan_gen_.1126 = private unnamed_addr constant [21 x i8] c".compoundliteral.177\00", align 1
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 317, i32 2 }
@___asan_gen_.1130 = private unnamed_addr constant [21 x i8] c".compoundliteral.179\00", align 1
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 321, i32 2 }
@___asan_gen_.1134 = private unnamed_addr constant [21 x i8] c".compoundliteral.181\00", align 1
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 322, i32 2 }
@___asan_gen_.1138 = private unnamed_addr constant [21 x i8] c".compoundliteral.183\00", align 1
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 326, i32 2 }
@___asan_gen_.1142 = private unnamed_addr constant [21 x i8] c".compoundliteral.185\00", align 1
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 327, i32 2 }
@___asan_gen_.1146 = private unnamed_addr constant [21 x i8] c".compoundliteral.187\00", align 1
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 331, i32 2 }
@___asan_gen_.1150 = private unnamed_addr constant [21 x i8] c".compoundliteral.189\00", align 1
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 332, i32 2 }
@___asan_gen_.1154 = private unnamed_addr constant [21 x i8] c".compoundliteral.191\00", align 1
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 336, i32 2 }
@___asan_gen_.1158 = private unnamed_addr constant [21 x i8] c".compoundliteral.193\00", align 1
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 337, i32 2 }
@___asan_gen_.1162 = private unnamed_addr constant [21 x i8] c".compoundliteral.195\00", align 1
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 341, i32 2 }
@___asan_gen_.1166 = private unnamed_addr constant [21 x i8] c".compoundliteral.197\00", align 1
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 342, i32 2 }
@___asan_gen_.1170 = private unnamed_addr constant [21 x i8] c".compoundliteral.199\00", align 1
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 346, i32 2 }
@___asan_gen_.1174 = private unnamed_addr constant [21 x i8] c".compoundliteral.201\00", align 1
@___asan_gen_.1177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 347, i32 2 }
@___asan_gen_.1178 = private unnamed_addr constant [21 x i8] c".compoundliteral.203\00", align 1
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 351, i32 2 }
@___asan_gen_.1182 = private unnamed_addr constant [21 x i8] c".compoundliteral.205\00", align 1
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 352, i32 2 }
@___asan_gen_.1186 = private unnamed_addr constant [21 x i8] c".compoundliteral.207\00", align 1
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 356, i32 2 }
@___asan_gen_.1190 = private unnamed_addr constant [21 x i8] c".compoundliteral.209\00", align 1
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 357, i32 2 }
@___asan_gen_.1194 = private unnamed_addr constant [21 x i8] c".compoundliteral.211\00", align 1
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 361, i32 2 }
@___asan_gen_.1198 = private unnamed_addr constant [21 x i8] c".compoundliteral.213\00", align 1
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 362, i32 2 }
@___asan_gen_.1202 = private unnamed_addr constant [21 x i8] c".compoundliteral.215\00", align 1
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 366, i32 2 }
@___asan_gen_.1206 = private unnamed_addr constant [21 x i8] c".compoundliteral.217\00", align 1
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 367, i32 2 }
@___asan_gen_.1210 = private unnamed_addr constant [21 x i8] c".compoundliteral.219\00", align 1
@___asan_gen_.1213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 371, i32 2 }
@___asan_gen_.1214 = private unnamed_addr constant [21 x i8] c".compoundliteral.221\00", align 1
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 372, i32 2 }
@___asan_gen_.1218 = private unnamed_addr constant [21 x i8] c".compoundliteral.223\00", align 1
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 376, i32 2 }
@___asan_gen_.1222 = private unnamed_addr constant [21 x i8] c".compoundliteral.225\00", align 1
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 377, i32 2 }
@___asan_gen_.1226 = private unnamed_addr constant [21 x i8] c".compoundliteral.227\00", align 1
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 381, i32 2 }
@___asan_gen_.1230 = private unnamed_addr constant [21 x i8] c".compoundliteral.229\00", align 1
@___asan_gen_.1233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 382, i32 2 }
@___asan_gen_.1234 = private unnamed_addr constant [21 x i8] c".compoundliteral.231\00", align 1
@___asan_gen_.1237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 386, i32 2 }
@___asan_gen_.1238 = private unnamed_addr constant [21 x i8] c".compoundliteral.233\00", align 1
@___asan_gen_.1241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 387, i32 2 }
@___asan_gen_.1242 = private unnamed_addr constant [21 x i8] c".compoundliteral.235\00", align 1
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 391, i32 2 }
@___asan_gen_.1246 = private unnamed_addr constant [21 x i8] c".compoundliteral.237\00", align 1
@___asan_gen_.1249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 392, i32 2 }
@___asan_gen_.1250 = private unnamed_addr constant [21 x i8] c".compoundliteral.239\00", align 1
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 396, i32 2 }
@___asan_gen_.1254 = private unnamed_addr constant [21 x i8] c".compoundliteral.241\00", align 1
@___asan_gen_.1257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 397, i32 2 }
@___asan_gen_.1258 = private unnamed_addr constant [21 x i8] c".compoundliteral.243\00", align 1
@___asan_gen_.1259 = private unnamed_addr constant [21 x i8] c".compoundliteral.244\00", align 1
@___asan_gen_.1260 = private unnamed_addr constant [21 x i8] c".compoundliteral.245\00", align 1
@___asan_gen_.1261 = private unnamed_addr constant [21 x i8] c".compoundliteral.246\00", align 1
@___asan_gen_.1262 = private unnamed_addr constant [21 x i8] c".compoundliteral.247\00", align 1
@___asan_gen_.1263 = private unnamed_addr constant [21 x i8] c".compoundliteral.248\00", align 1
@___asan_gen_.1264 = private unnamed_addr constant [21 x i8] c".compoundliteral.249\00", align 1
@___asan_gen_.1265 = private unnamed_addr constant [21 x i8] c".compoundliteral.250\00", align 1
@___asan_gen_.1266 = private unnamed_addr constant [21 x i8] c".compoundliteral.251\00", align 1
@___asan_gen_.1267 = private unnamed_addr constant [21 x i8] c".compoundliteral.252\00", align 1
@___asan_gen_.1268 = private unnamed_addr constant [21 x i8] c".compoundliteral.253\00", align 1
@___asan_gen_.1269 = private unnamed_addr constant [21 x i8] c".compoundliteral.254\00", align 1
@___asan_gen_.1270 = private unnamed_addr constant [21 x i8] c".compoundliteral.255\00", align 1
@___asan_gen_.1271 = private unnamed_addr constant [21 x i8] c".compoundliteral.256\00", align 1
@___asan_gen_.1272 = private unnamed_addr constant [21 x i8] c".compoundliteral.257\00", align 1
@___asan_gen_.1273 = private unnamed_addr constant [21 x i8] c".compoundliteral.258\00", align 1
@___asan_gen_.1274 = private unnamed_addr constant [21 x i8] c".compoundliteral.259\00", align 1
@___asan_gen_.1275 = private unnamed_addr constant [21 x i8] c".compoundliteral.260\00", align 1
@___asan_gen_.1276 = private unnamed_addr constant [21 x i8] c".compoundliteral.261\00", align 1
@___asan_gen_.1277 = private unnamed_addr constant [21 x i8] c".compoundliteral.262\00", align 1
@___asan_gen_.1278 = private unnamed_addr constant [21 x i8] c".compoundliteral.263\00", align 1
@___asan_gen_.1279 = private unnamed_addr constant [21 x i8] c".compoundliteral.264\00", align 1
@___asan_gen_.1280 = private unnamed_addr constant [21 x i8] c".compoundliteral.265\00", align 1
@___asan_gen_.1281 = private unnamed_addr constant [21 x i8] c".compoundliteral.266\00", align 1
@___asan_gen_.1282 = private unnamed_addr constant [21 x i8] c".compoundliteral.267\00", align 1
@___asan_gen_.1283 = private unnamed_addr constant [21 x i8] c".compoundliteral.268\00", align 1
@___asan_gen_.1284 = private unnamed_addr constant [21 x i8] c".compoundliteral.269\00", align 1
@___asan_gen_.1285 = private unnamed_addr constant [21 x i8] c".compoundliteral.270\00", align 1
@___asan_gen_.1286 = private unnamed_addr constant [21 x i8] c".compoundliteral.271\00", align 1
@___asan_gen_.1287 = private unnamed_addr constant [21 x i8] c".compoundliteral.272\00", align 1
@___asan_gen_.1288 = private unnamed_addr constant [21 x i8] c".compoundliteral.273\00", align 1
@___asan_gen_.1289 = private unnamed_addr constant [21 x i8] c".compoundliteral.274\00", align 1
@___asan_gen_.1290 = private unnamed_addr constant [21 x i8] c".compoundliteral.275\00", align 1
@___asan_gen_.1291 = private unnamed_addr constant [21 x i8] c".compoundliteral.276\00", align 1
@___asan_gen_.1292 = private unnamed_addr constant [21 x i8] c".compoundliteral.277\00", align 1
@___asan_gen_.1293 = private unnamed_addr constant [21 x i8] c".compoundliteral.278\00", align 1
@___asan_gen_.1294 = private unnamed_addr constant [21 x i8] c".compoundliteral.279\00", align 1
@___asan_gen_.1295 = private unnamed_addr constant [21 x i8] c".compoundliteral.280\00", align 1
@___asan_gen_.1296 = private unnamed_addr constant [21 x i8] c".compoundliteral.281\00", align 1
@___asan_gen_.1297 = private unnamed_addr constant [21 x i8] c".compoundliteral.282\00", align 1
@___asan_gen_.1298 = private unnamed_addr constant [21 x i8] c".compoundliteral.283\00", align 1
@___asan_gen_.1299 = private unnamed_addr constant [21 x i8] c".compoundliteral.284\00", align 1
@___asan_gen_.1300 = private unnamed_addr constant [21 x i8] c".compoundliteral.285\00", align 1
@___asan_gen_.1301 = private unnamed_addr constant [21 x i8] c".compoundliteral.286\00", align 1
@___asan_gen_.1302 = private unnamed_addr constant [21 x i8] c".compoundliteral.287\00", align 1
@___asan_gen_.1303 = private unnamed_addr constant [21 x i8] c".compoundliteral.288\00", align 1
@___asan_gen_.1304 = private unnamed_addr constant [21 x i8] c".compoundliteral.289\00", align 1
@___asan_gen_.1305 = private unnamed_addr constant [21 x i8] c".compoundliteral.290\00", align 1
@___asan_gen_.1306 = private unnamed_addr constant [21 x i8] c".compoundliteral.291\00", align 1
@___asan_gen_.1307 = private unnamed_addr constant [21 x i8] c".compoundliteral.292\00", align 1
@___asan_gen_.1308 = private unnamed_addr constant [21 x i8] c".compoundliteral.293\00", align 1
@___asan_gen_.1309 = private unnamed_addr constant [21 x i8] c".compoundliteral.294\00", align 1
@___asan_gen_.1310 = private unnamed_addr constant [21 x i8] c".compoundliteral.295\00", align 1
@___asan_gen_.1311 = private unnamed_addr constant [22 x i8] c"hdmi_out_mux_map_enum\00", align 1
@___asan_gen_.1313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 543, i32 8 }
@___asan_gen_.1314 = private unnamed_addr constant [20 x i8] c"hdmitx_dptx_mux_map\00", align 1
@___asan_gen_.1316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 534, i32 27 }
@___asan_gen_.1317 = private unnamed_addr constant [26 x i8] c"hdmitx_dptx_mux_map_value\00", align 1
@___asan_gen_.1319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 538, i32 12 }
@___asan_gen_.1322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 535, i32 2 }
@___asan_gen_.1325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 535, i32 16 }
@___asan_gen_.1326 = private unnamed_addr constant [22 x i8] c"dptx_out_mux_map_enum\00", align 1
@___asan_gen_.1328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 554, i32 8 }
@___asan_gen_.1329 = private unnamed_addr constant [22 x i8] c"hdmi_ch0_mux_map_enum\00", align 1
@___asan_gen_.1331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 573, i32 8 }
@___asan_gen_.1332 = private unnamed_addr constant [22 x i8] c"afe_conn_hdmi_mux_map\00", align 1
@___asan_gen_.1334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 565, i32 26 }
@___asan_gen_.1335 = private unnamed_addr constant [28 x i8] c"afe_conn_hdmi_mux_map_value\00", align 1
@___asan_gen_.1337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 569, i32 12 }
@___asan_gen_.1340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 566, i32 2 }
@___asan_gen_.1343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 566, i32 9 }
@___asan_gen_.1346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 566, i32 16 }
@___asan_gen_.1349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 566, i32 23 }
@___asan_gen_.1352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 566, i32 30 }
@___asan_gen_.1355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 566, i32 37 }
@___asan_gen_.1358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 566, i32 44 }
@___asan_gen_.1361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 566, i32 51 }
@___asan_gen_.1362 = private unnamed_addr constant [22 x i8] c"hdmi_ch1_mux_map_enum\00", align 1
@___asan_gen_.1364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 583, i32 8 }
@___asan_gen_.1365 = private unnamed_addr constant [22 x i8] c"hdmi_ch2_mux_map_enum\00", align 1
@___asan_gen_.1367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 593, i32 8 }
@___asan_gen_.1368 = private unnamed_addr constant [22 x i8] c"hdmi_ch3_mux_map_enum\00", align 1
@___asan_gen_.1370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 603, i32 8 }
@___asan_gen_.1371 = private unnamed_addr constant [22 x i8] c"hdmi_ch4_mux_map_enum\00", align 1
@___asan_gen_.1373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 613, i32 8 }
@___asan_gen_.1374 = private unnamed_addr constant [22 x i8] c"hdmi_ch5_mux_map_enum\00", align 1
@___asan_gen_.1376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 623, i32 8 }
@___asan_gen_.1377 = private unnamed_addr constant [22 x i8] c"hdmi_ch6_mux_map_enum\00", align 1
@___asan_gen_.1379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 633, i32 8 }
@___asan_gen_.1380 = private unnamed_addr constant [22 x i8] c"hdmi_ch7_mux_map_enum\00", align 1
@___asan_gen_.1382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 643, i32 8 }
@___asan_gen_.1385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1008, i32 3 }
@___asan_gen_.1388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1009, i32 3 }
@___asan_gen_.1391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1061, i32 26 }
@___asan_gen_.1394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1062, i32 26 }
@___asan_gen_.1397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1064, i32 26 }
@___asan_gen_.1400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1065, i32 26 }
@___asan_gen_.1403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1066, i32 26 }
@___asan_gen_.1406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1067, i32 26 }
@___asan_gen_.1409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1068, i32 26 }
@___asan_gen_.1412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1069, i32 26 }
@___asan_gen_.1415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1070, i32 26 }
@___asan_gen_.1418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1071, i32 26 }
@___asan_gen_.1421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1072, i32 26 }
@___asan_gen_.1424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1073, i32 26 }
@___asan_gen_.1427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1074, i32 26 }
@___asan_gen_.1430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1075, i32 26 }
@___asan_gen_.1433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1076, i32 26 }
@___asan_gen_.1436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1077, i32 26 }
@___asan_gen_.1439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1078, i32 26 }
@___asan_gen_.1442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1079, i32 26 }
@___asan_gen_.1445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1080, i32 26 }
@___asan_gen_.1448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1081, i32 26 }
@___asan_gen_.1451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1082, i32 26 }
@___asan_gen_.1454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1083, i32 26 }
@___asan_gen_.1457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1084, i32 26 }
@___asan_gen_.1460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1085, i32 26 }
@___asan_gen_.1463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1086, i32 26 }
@___asan_gen_.1466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1087, i32 26 }
@___asan_gen_.1469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1089, i32 26 }
@___asan_gen_.1472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1090, i32 26 }
@___asan_gen_.1475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1091, i32 26 }
@___asan_gen_.1478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1092, i32 26 }
@___asan_gen_.1481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1093, i32 26 }
@___asan_gen_.1484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1094, i32 26 }
@___asan_gen_.1487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1095, i32 26 }
@___asan_gen_.1490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1096, i32 26 }
@___asan_gen_.1493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1097, i32 26 }
@___asan_gen_.1496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1098, i32 26 }
@___asan_gen_.1499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1099, i32 26 }
@___asan_gen_.1502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1100, i32 26 }
@___asan_gen_.1505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1101, i32 26 }
@___asan_gen_.1508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1102, i32 26 }
@___asan_gen_.1511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1103, i32 26 }
@___asan_gen_.1514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1104, i32 26 }
@___asan_gen_.1517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1105, i32 26 }
@___asan_gen_.1520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1106, i32 26 }
@___asan_gen_.1523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1107, i32 26 }
@___asan_gen_.1526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1108, i32 26 }
@___asan_gen_.1529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1109, i32 26 }
@___asan_gen_.1532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1110, i32 26 }
@___asan_gen_.1535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1111, i32 26 }
@___asan_gen_.1538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1112, i32 26 }
@___asan_gen_.1541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1114, i32 26 }
@___asan_gen_.1544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1115, i32 26 }
@___asan_gen_.1547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 1173, i32 26 }
@___asan_gen_.1550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 739, i32 2 }
@___asan_gen_.1551 = private unnamed_addr constant [21 x i8] c"etdmout_clk_src_enum\00", align 1
@___asan_gen_.1553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 531, i32 8 }
@___asan_gen_.1556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 743, i32 2 }
@___asan_gen_.1559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 747, i32 2 }
@___asan_gen_.1562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 751, i32 2 }
@___asan_gen_.1565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 755, i32 2 }
@___asan_gen_.1566 = private unnamed_addr constant [29 x i8] c"mt8195_etdm_clk_src_sel_text\00", align 1
@___asan_gen_.1568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 524, i32 27 }
@___asan_gen_.1571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 525, i32 2 }
@___asan_gen_.1574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 526, i32 2 }
@___asan_gen_.1577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 527, i32 2 }
@___asan_gen_.1580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 528, i32 2 }
@___asan_gen_.1583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2507, i32 4 }
@___asan_gen_.1586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2508, i32 4 }
@___asan_gen_.1589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2509, i32 4 }
@___asan_gen_.1592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2510, i32 4 }
@___asan_gen_.1595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2511, i32 4 }
@___asan_gen_.1598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2519, i32 11 }
@___asan_gen_.1607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2522, i32 4 }
@___asan_gen_.1613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2530, i32 5 }
@___asan_gen_.1616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2535, i32 11 }
@___asan_gen_.1619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2538, i32 4 }
@___asan_gen_.1622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2545, i32 11 }
@___asan_gen_.1625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2548, i32 4 }
@___asan_gen_.1631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2555, i32 5 }
@___asan_gen_.1634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2571, i32 11 }
@___asan_gen_.1637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2574, i32 4 }
@___asan_gen_.1643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2586, i32 5 }
@___asan_gen_.1644 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1650 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1651 = private constant [47 x i8] c"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c\00", align 1
@___asan_gen_.1652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1651, i32 2482, i32 5 }
@___asan_gen_.1653 = private unnamed_addr constant [32 x i8] c"switch.table.mtk_dai_etdm_probe\00", align 1
@___asan_gen_.1654 = private unnamed_addr constant [34 x i8] c"switch.table.mtk_dai_etdm_set_fmt\00", align 1
@___asan_gen_.1655 = private unnamed_addr constant [38 x i8] c"switch.table.mtk_dai_etdm_set_fmt.398\00", align 1
@___asan_gen_.1656 = private unnamed_addr constant [38 x i8] c"switch.table.mtk_dai_etdm_set_fmt.399\00", align 1
@___asan_gen_.1657 = private unnamed_addr constant [41 x i8] c"switch.table.mtk_dai_hdmitx_dptx_startup\00", align 1
@___asan_gen_.1658 = private unnamed_addr constant [45 x i8] c"switch.table.mtk_dai_hdmitx_dptx_startup.400\00", align 1
@___asan_gen_.1659 = private unnamed_addr constant [43 x i8] c"switch.table.mtk_dai_hdmitx_dptx_hw_params\00", align 1
@___asan_gen_.1660 = private unnamed_addr constant [41 x i8] c"switch.table.mtk_dai_hdmitx_dptx_trigger\00", align 1
@___asan_gen_.1661 = private unnamed_addr constant [45 x i8] c"switch.table.mtk_dai_hdmitx_dptx_trigger.401\00", align 1
@___asan_gen_.1662 = private unnamed_addr constant [41 x i8] c"switch.table.mtk_dai_etdm_mclk_configure\00", align 1
@___asan_gen_.1663 = private unnamed_addr constant [45 x i8] c"switch.table.mtk_dai_etdm_mclk_configure.402\00", align 1
@___asan_gen_.1664 = private unnamed_addr constant [45 x i8] c"switch.table.mtk_dai_etdm_mclk_configure.403\00", align 1
@___asan_gen_.1665 = private unnamed_addr constant [36 x i8] c"switch.table.mtk_dai_etdm_configure\00", align 1
@___asan_gen_.1666 = private unnamed_addr constant [39 x i8] c"switch.table.mtk_dai_etdm_in_configure\00", align 1
@___asan_gen_.1667 = private unnamed_addr constant [43 x i8] c"switch.table.mtk_dai_etdm_in_configure.404\00", align 1
@___asan_gen_.1668 = private unnamed_addr constant [43 x i8] c"switch.table.mtk_dai_etdm_in_configure.405\00", align 1
@___asan_gen_.1669 = private unnamed_addr constant [43 x i8] c"switch.table.mtk_dai_etdm_in_configure.406\00", align 1
@___asan_gen_.1670 = private unnamed_addr constant [43 x i8] c"switch.table.mtk_dai_etdm_in_configure.407\00", align 1
@___asan_gen_.1671 = private unnamed_addr constant [40 x i8] c"switch.table.mtk_dai_etdm_out_configure\00", align 1
@___asan_gen_.1672 = private unnamed_addr constant [44 x i8] c"switch.table.mtk_dai_etdm_out_configure.408\00", align 1
@___asan_gen_.1673 = private unnamed_addr constant [44 x i8] c"switch.table.mtk_dai_etdm_out_configure.409\00", align 1
@___asan_gen_.1674 = private unnamed_addr constant [44 x i8] c"switch.table.mtk_dai_etdm_out_configure.410\00", align 1
@___asan_gen_.1675 = private unnamed_addr constant [44 x i8] c"switch.table.mtk_dai_etdm_out_configure.411\00", align 1
@___asan_gen_.1676 = private unnamed_addr constant [34 x i8] c"switch.table.mtk_dai_etdm_startup\00", align 1
@___asan_gen_.1677 = private unnamed_addr constant [38 x i8] c"switch.table.mtk_dai_etdm_startup.412\00", align 1
@___asan_gen_.1678 = private unnamed_addr constant [38 x i8] c"switch.table.mtk_dai_etdm_startup.413\00", align 1
@___asan_gen_.1679 = private unnamed_addr constant [35 x i8] c"switch.table.mtk_dai_etdm_shutdown\00", align 1
@___asan_gen_.1680 = private unnamed_addr constant [39 x i8] c"switch.table.mtk_dai_etdm_shutdown.414\00", align 1
@___asan_gen_.1681 = private unnamed_addr constant [39 x i8] c"switch.table.mtk_dai_etdm_shutdown.415\00", align 1
@___asan_gen_.1682 = private unnamed_addr constant [36 x i8] c"switch.table.mtk_dai_etdm_hw_params\00", align 1
@___asan_gen_.1683 = private unnamed_addr constant [40 x i8] c"switch.table.mtk_dai_etdm_hw_params.416\00", align 1
@___asan_gen_.1684 = private unnamed_addr constant [40 x i8] c"switch.table.mtk_dai_etdm_hw_params.417\00", align 1
@___asan_gen_.1685 = private unnamed_addr constant [40 x i8] c"switch.table.mtk_dai_etdm_hw_params.418\00", align 1
@___asan_gen_.1686 = private unnamed_addr constant [40 x i8] c"switch.table.mtk_dai_etdm_hw_params.419\00", align 1
@___asan_gen_.1687 = private unnamed_addr constant [34 x i8] c"switch.table.mtk_dai_etdm_trigger\00", align 1
@___asan_gen_.1688 = private unnamed_addr constant [38 x i8] c"switch.table.mtk_dai_etdm_trigger.420\00", align 1
@___asan_gen_.1689 = private unnamed_addr constant [38 x i8] c"switch.table.mtk_dai_etdm_trigger.421\00", align 1
@___asan_gen_.1690 = private unnamed_addr constant [38 x i8] c"switch.table.mtk_dai_etdm_trigger.422\00", align 1
@___asan_gen_.1691 = private unnamed_addr constant [38 x i8] c"switch.table.mtk_dai_etdm_trigger.423\00", align 1
@___asan_gen_.1692 = private unnamed_addr constant [38 x i8] c"switch.table.mtk_dai_etdm_trigger.424\00", align 1
@llvm.compiler.used = appending global [527 x ptr] [ptr @mt8195_dai_etdm_parse_of._entry, ptr @mt8195_dai_etdm_parse_of._entry.378, ptr @mt8195_dai_etdm_parse_of._entry.382, ptr @mt8195_dai_etdm_parse_of._entry.385, ptr @mt8195_dai_etdm_parse_of._entry.387, ptr @mt8195_dai_etdm_parse_of._entry.391, ptr @mt8195_dai_etdm_parse_of._entry.393, ptr @mt8195_dai_etdm_parse_of._entry_ptr, ptr @mt8195_dai_etdm_parse_of._entry_ptr.380, ptr @mt8195_dai_etdm_parse_of._entry_ptr.383, ptr @mt8195_dai_etdm_parse_of._entry_ptr.386, ptr @mt8195_dai_etdm_parse_of._entry_ptr.389, ptr @mt8195_dai_etdm_parse_of._entry_ptr.392, ptr @mt8195_dai_etdm_parse_of._entry_ptr.395, ptr @mt8195_etdm_update_sync_info._entry, ptr @mt8195_etdm_update_sync_info._entry_ptr, ptr @mtk_dai_etdm_cal_mclk._entry, ptr @mtk_dai_etdm_cal_mclk._entry.20, ptr @mtk_dai_etdm_cal_mclk._entry_ptr, ptr @mtk_dai_etdm_cal_mclk._entry_ptr.22, ptr @mtk_dai_etdm_configure._entry, ptr @mtk_dai_etdm_configure._entry.29, ptr @mtk_dai_etdm_configure._entry_ptr, ptr @mtk_dai_etdm_configure._entry_ptr.31, ptr @mtk_dai_etdm_driver, ptr @mtk_dai_etdm_routes, ptr @mtk_dai_etdm_controls, ptr @.str, ptr @mtk_dai_hdmitx_dptx_ops, ptr @.str.1, ptr @.str.2, ptr @mtk_dai_etdm_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @mt8195_etdm_rates, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @mtk_dai_etdm_o048_mix, ptr @.str.81, ptr @mtk_dai_etdm_o049_mix, ptr @.str.82, ptr @mtk_dai_etdm_o050_mix, ptr @.str.83, ptr @mtk_dai_etdm_o051_mix, ptr @.str.84, ptr @mtk_dai_etdm_o052_mix, ptr @.str.85, ptr @mtk_dai_etdm_o053_mix, ptr @.str.86, ptr @mtk_dai_etdm_o054_mix, ptr @.str.87, ptr @mtk_dai_etdm_o055_mix, ptr @.str.88, ptr @mtk_dai_etdm_o056_mix, ptr @.str.89, ptr @mtk_dai_etdm_o057_mix, ptr @.str.90, ptr @mtk_dai_etdm_o058_mix, ptr @.str.91, ptr @mtk_dai_etdm_o059_mix, ptr @.str.92, ptr @mtk_dai_etdm_o060_mix, ptr @.str.93, ptr @mtk_dai_etdm_o061_mix, ptr @.str.94, ptr @mtk_dai_etdm_o062_mix, ptr @.str.95, ptr @mtk_dai_etdm_o063_mix, ptr @.str.96, ptr @mtk_dai_etdm_o064_mix, ptr @.str.97, ptr @mtk_dai_etdm_o065_mix, ptr @.str.98, ptr @mtk_dai_etdm_o066_mix, ptr @.str.99, ptr @mtk_dai_etdm_o067_mix, ptr @.str.100, ptr @mtk_dai_etdm_o068_mix, ptr @.str.101, ptr @mtk_dai_etdm_o069_mix, ptr @.str.102, ptr @mtk_dai_etdm_o070_mix, ptr @.str.103, ptr @mtk_dai_etdm_o071_mix, ptr @.str.104, ptr @mtk_dai_etdm_o072_mix, ptr @.str.105, ptr @mtk_dai_etdm_o073_mix, ptr @.str.106, ptr @mtk_dai_etdm_o074_mix, ptr @.str.107, ptr @mtk_dai_etdm_o075_mix, ptr @.str.108, ptr @mtk_dai_etdm_o076_mix, ptr @.str.109, ptr @mtk_dai_etdm_o077_mix, ptr @.str.110, ptr @mtk_dai_etdm_o078_mix, ptr @.str.111, ptr @mtk_dai_etdm_o079_mix, ptr @.str.112, ptr @mtk_dai_etdm_o080_mix, ptr @.str.113, ptr @mtk_dai_etdm_o081_mix, ptr @.str.114, ptr @mtk_dai_etdm_o082_mix, ptr @.str.115, ptr @mtk_dai_etdm_o083_mix, ptr @.str.116, ptr @mtk_dai_etdm_o084_mix, ptr @.str.117, ptr @mtk_dai_etdm_o085_mix, ptr @.str.118, ptr @mtk_dai_etdm_o086_mix, ptr @.str.119, ptr @mtk_dai_etdm_o087_mix, ptr @.str.120, ptr @mtk_dai_etdm_o088_mix, ptr @.str.121, ptr @mtk_dai_etdm_o089_mix, ptr @.str.122, ptr @mtk_dai_etdm_o090_mix, ptr @.str.123, ptr @mtk_dai_etdm_o091_mix, ptr @.str.124, ptr @mtk_dai_etdm_o092_mix, ptr @.str.125, ptr @mtk_dai_etdm_o093_mix, ptr @.str.126, ptr @mtk_dai_etdm_o094_mix, ptr @.str.127, ptr @mtk_dai_etdm_o095_mix, ptr @.str.128, ptr @hdmi_out_mux_control, ptr @.str.129, ptr @dptx_out_mux_control, ptr @.str.130, ptr @hdmi_ch0_mux_control, ptr @.str.131, ptr @hdmi_ch1_mux_control, ptr @.str.132, ptr @hdmi_ch2_mux_control, ptr @.str.133, ptr @hdmi_ch3_mux_control, ptr @.str.134, ptr @hdmi_ch4_mux_control, ptr @.str.135, ptr @hdmi_ch5_mux_control, ptr @.str.136, ptr @hdmi_ch6_mux_control, ptr @.str.137, ptr @hdmi_ch7_mux_control, ptr @.str.138, ptr @.str.139, ptr @mtk_dai_etdm_widgets, ptr @.str.141, ptr @.compoundliteral, ptr @.str.142, ptr @.compoundliteral.143, ptr @.str.144, ptr @.compoundliteral.145, ptr @.str.146, ptr @.compoundliteral.147, ptr @.str.148, ptr @.compoundliteral.149, ptr @.str.150, ptr @.compoundliteral.151, ptr @.str.152, ptr @.compoundliteral.153, ptr @.str.154, ptr @.compoundliteral.155, ptr @.str.156, ptr @.compoundliteral.157, ptr @.str.158, ptr @.compoundliteral.159, ptr @.str.160, ptr @.compoundliteral.161, ptr @.str.162, ptr @.compoundliteral.163, ptr @.str.164, ptr @.compoundliteral.165, ptr @.str.166, ptr @.compoundliteral.167, ptr @.str.168, ptr @.compoundliteral.169, ptr @.str.170, ptr @.compoundliteral.171, ptr @.str.172, ptr @.compoundliteral.173, ptr @.str.174, ptr @.compoundliteral.175, ptr @.str.176, ptr @.compoundliteral.177, ptr @.str.178, ptr @.compoundliteral.179, ptr @.str.180, ptr @.compoundliteral.181, ptr @.str.182, ptr @.compoundliteral.183, ptr @.str.184, ptr @.compoundliteral.185, ptr @.str.186, ptr @.compoundliteral.187, ptr @.str.188, ptr @.compoundliteral.189, ptr @.str.190, ptr @.compoundliteral.191, ptr @.str.192, ptr @.compoundliteral.193, ptr @.str.194, ptr @.compoundliteral.195, ptr @.str.196, ptr @.compoundliteral.197, ptr @.str.198, ptr @.compoundliteral.199, ptr @.str.200, ptr @.compoundliteral.201, ptr @.str.202, ptr @.compoundliteral.203, ptr @.str.204, ptr @.compoundliteral.205, ptr @.str.206, ptr @.compoundliteral.207, ptr @.str.208, ptr @.compoundliteral.209, ptr @.str.210, ptr @.compoundliteral.211, ptr @.str.212, ptr @.compoundliteral.213, ptr @.str.214, ptr @.compoundliteral.215, ptr @.str.216, ptr @.compoundliteral.217, ptr @.str.218, ptr @.compoundliteral.219, ptr @.str.220, ptr @.compoundliteral.221, ptr @.str.222, ptr @.compoundliteral.223, ptr @.str.224, ptr @.compoundliteral.225, ptr @.str.226, ptr @.compoundliteral.227, ptr @.str.228, ptr @.compoundliteral.229, ptr @.str.230, ptr @.compoundliteral.231, ptr @.str.232, ptr @.compoundliteral.233, ptr @.str.234, ptr @.compoundliteral.235, ptr @.str.236, ptr @.compoundliteral.237, ptr @.str.238, ptr @.compoundliteral.239, ptr @.str.240, ptr @.compoundliteral.241, ptr @.str.242, ptr @.compoundliteral.243, ptr @.compoundliteral.244, ptr @.compoundliteral.245, ptr @.compoundliteral.246, ptr @.compoundliteral.247, ptr @.compoundliteral.248, ptr @.compoundliteral.249, ptr @.compoundliteral.250, ptr @.compoundliteral.251, ptr @.compoundliteral.252, ptr @.compoundliteral.253, ptr @.compoundliteral.254, ptr @.compoundliteral.255, ptr @.compoundliteral.256, ptr @.compoundliteral.257, ptr @.compoundliteral.258, ptr @.compoundliteral.259, ptr @.compoundliteral.260, ptr @.compoundliteral.261, ptr @.compoundliteral.262, ptr @.compoundliteral.263, ptr @.compoundliteral.264, ptr @.compoundliteral.265, ptr @.compoundliteral.266, ptr @.compoundliteral.267, ptr @.compoundliteral.268, ptr @.compoundliteral.269, ptr @.compoundliteral.270, ptr @.compoundliteral.271, ptr @.compoundliteral.272, ptr @.compoundliteral.273, ptr @.compoundliteral.274, ptr @.compoundliteral.275, ptr @.compoundliteral.276, ptr @.compoundliteral.277, ptr @.compoundliteral.278, ptr @.compoundliteral.279, ptr @.compoundliteral.280, ptr @.compoundliteral.281, ptr @.compoundliteral.282, ptr @.compoundliteral.283, ptr @.compoundliteral.284, ptr @.compoundliteral.285, ptr @.compoundliteral.286, ptr @.compoundliteral.287, ptr @.compoundliteral.288, ptr @.compoundliteral.289, ptr @.compoundliteral.290, ptr @.compoundliteral.291, ptr @.compoundliteral.292, ptr @.compoundliteral.293, ptr @.compoundliteral.294, ptr @.compoundliteral.295, ptr @hdmi_out_mux_map_enum, ptr @hdmitx_dptx_mux_map, ptr @hdmitx_dptx_mux_map_value, ptr @.str.296, ptr @.str.297, ptr @dptx_out_mux_map_enum, ptr @hdmi_ch0_mux_map_enum, ptr @afe_conn_hdmi_mux_map, ptr @afe_conn_hdmi_mux_map_value, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @hdmi_ch1_mux_map_enum, ptr @hdmi_ch2_mux_map_enum, ptr @hdmi_ch3_mux_map_enum, ptr @hdmi_ch4_mux_map_enum, ptr @hdmi_ch5_mux_map_enum, ptr @hdmi_ch6_mux_map_enum, ptr @hdmi_ch7_mux_map_enum, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.356, ptr @.str.357, ptr @.str.358, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @etdmout_clk_src_enum, ptr @.str.362, ptr @.str.363, ptr @.str.364, ptr @.str.365, ptr @mt8195_etdm_clk_src_sel_text, ptr @.str.366, ptr @.str.367, ptr @.str.368, ptr @.str.369, ptr @.str.370, ptr @.str.371, ptr @.str.372, ptr @.str.373, ptr @.str.374, ptr @.str.375, ptr @.str.376, ptr @.str.377, ptr @.str.379, ptr @.str.381, ptr @.str.384, ptr @.str.388, ptr @.str.390, ptr @.str.394, ptr @.str.396, ptr @.str.397, ptr @switch.table.mtk_dai_etdm_probe, ptr @switch.table.mtk_dai_etdm_set_fmt, ptr @switch.table.mtk_dai_etdm_set_fmt.398, ptr @switch.table.mtk_dai_etdm_set_fmt.399, ptr @switch.table.mtk_dai_hdmitx_dptx_startup, ptr @switch.table.mtk_dai_hdmitx_dptx_startup.400, ptr @switch.table.mtk_dai_hdmitx_dptx_hw_params, ptr @switch.table.mtk_dai_hdmitx_dptx_trigger, ptr @switch.table.mtk_dai_hdmitx_dptx_trigger.401, ptr @switch.table.mtk_dai_etdm_mclk_configure, ptr @switch.table.mtk_dai_etdm_mclk_configure.402, ptr @switch.table.mtk_dai_etdm_mclk_configure.403, ptr @switch.table.mtk_dai_etdm_configure, ptr @switch.table.mtk_dai_etdm_in_configure, ptr @switch.table.mtk_dai_etdm_in_configure.404, ptr @switch.table.mtk_dai_etdm_in_configure.405, ptr @switch.table.mtk_dai_etdm_in_configure.406, ptr @switch.table.mtk_dai_etdm_in_configure.407, ptr @switch.table.mtk_dai_etdm_out_configure, ptr @switch.table.mtk_dai_etdm_out_configure.408, ptr @switch.table.mtk_dai_etdm_out_configure.409, ptr @switch.table.mtk_dai_etdm_out_configure.410, ptr @switch.table.mtk_dai_etdm_out_configure.411, ptr @switch.table.mtk_dai_etdm_startup, ptr @switch.table.mtk_dai_etdm_startup.412, ptr @switch.table.mtk_dai_etdm_startup.413, ptr @switch.table.mtk_dai_etdm_shutdown, ptr @switch.table.mtk_dai_etdm_shutdown.414, ptr @switch.table.mtk_dai_etdm_shutdown.415, ptr @switch.table.mtk_dai_etdm_hw_params, ptr @switch.table.mtk_dai_etdm_hw_params.416, ptr @switch.table.mtk_dai_etdm_hw_params.417, ptr @switch.table.mtk_dai_etdm_hw_params.418, ptr @switch.table.mtk_dai_etdm_hw_params.419, ptr @switch.table.mtk_dai_etdm_trigger, ptr @switch.table.mtk_dai_etdm_trigger.420, ptr @switch.table.mtk_dai_etdm_trigger.421, ptr @switch.table.mtk_dai_etdm_trigger.422, ptr @switch.table.mtk_dai_etdm_trigger.423, ptr @switch.table.mtk_dai_etdm_trigger.424], section "llvm.metadata"
@0 = internal global [515 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_driver to i32), i32 1008, i32 1248, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_routes to i32), i32 14248, i32 17824, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_hdmitx_dptx_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_cal_mclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_cal_mclk._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_configure._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_etdm_rates to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o048_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o049_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o050_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o051_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o052_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o053_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o054_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o055_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o056_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o057_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o058_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o059_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o060_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o061_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o062_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o063_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o064_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o065_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o066_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o067_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o068_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o069_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o070_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o071_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o072_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o073_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o074_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o075_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o076_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o077_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o078_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o079_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o080_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o081_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o082_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o083_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o084_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o085_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o086_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o087_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o088_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o089_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o090_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o091_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o092_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o093_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o094_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_o095_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_out_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dptx_out_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_ch0_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_ch1_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_ch2_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_ch3_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_ch4_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_ch5_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_ch6_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_ch7_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_etdm_widgets to i32), i32 16560, i32 20704, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.147 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.149 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.151 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.153 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.155 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.157 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.159 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.161 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.163 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.165 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.167 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.169 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.171 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.173 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.175 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.177 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.179 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.181 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.183 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.185 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.187 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.189 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.191 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.193 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.195 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.197 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.199 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.201 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.203 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.205 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.207 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.209 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.211 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.213 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.215 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.217 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.219 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.221 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.223 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.225 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.227 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.229 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.231 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.233 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.235 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.237 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.239 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.241 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.243 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.244 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.245 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.246 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.247 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.248 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.249 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.250 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.251 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.252 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.253 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.254 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.255 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.256 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.257 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.258 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.259 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.260 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.261 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.262 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.263 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.264 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.265 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.266 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.267 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.268 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.269 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.270 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.271 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.272 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.273 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.274 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.275 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.276 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.277 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.278 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.279 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.280 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.281 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.282 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.283 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.284 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.285 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.286 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.287 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.288 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.289 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.290 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.291 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.292 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.293 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.294 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.295 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_out_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmitx_dptx_mux_map to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmitx_dptx_mux_map_value to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dptx_out_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_ch0_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe_conn_hdmi_mux_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afe_conn_hdmi_mux_map_value to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_ch1_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_ch2_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_ch3_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_ch4_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_ch5_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_ch6_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_ch7_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etdmout_clk_src_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_etdm_clk_src_sel_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1566 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.371 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.373 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_dai_etdm_parse_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.376 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_dai_etdm_parse_of._entry.378 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_dai_etdm_parse_of._entry.382 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.384 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_dai_etdm_parse_of._entry.385 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_dai_etdm_parse_of._entry.387 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.388 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_dai_etdm_parse_of._entry.391 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_dai_etdm_parse_of._entry.393 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.394 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_etdm_update_sync_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.396 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.397 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_probe to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_set_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1654 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_set_fmt.398 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1655 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_set_fmt.399 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1656 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_hdmitx_dptx_startup to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1657 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_hdmitx_dptx_startup.400 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1658 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_hdmitx_dptx_hw_params to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_hdmitx_dptx_trigger to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_hdmitx_dptx_trigger.401 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1661 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_mclk_configure to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1662 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_mclk_configure.402 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1663 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_mclk_configure.403 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1664 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_configure to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_in_configure to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_in_configure.404 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_in_configure.405 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1668 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_in_configure.406 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_in_configure.407 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1670 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_out_configure to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_out_configure.408 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1672 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_out_configure.409 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_out_configure.410 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1674 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_out_configure.411 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1675 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_startup to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1676 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_startup.412 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_startup.413 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1678 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_shutdown to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1679 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_shutdown.414 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1680 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_shutdown.415 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1681 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_hw_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1682 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_hw_params.416 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1683 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_hw_params.417 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1684 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_hw_params.418 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1685 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_hw_params.419 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1686 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_trigger to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1687 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_trigger.420 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1688 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_trigger.421 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1689 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_trigger.422 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1690 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_trigger.423 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1691 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_etdm_trigger.424 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1692 to i32), i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt8195_dai_etdm_register(ptr noundef %afe) local_unnamed_addr #0 align 64 {
entry:
  %prop.i.i = alloca [48 x i8], align 1
  %disable_chn.i.i = alloca [24 x i8], align 1
  %sel.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 40, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 8
  %sub_dais = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 15
  %2 = ptrtoint ptr %sub_dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sub_dais, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %sub_dais, ptr noundef %3) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sub_dais, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %sub_dais to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list, ptr %sub_dais, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mtk_dai_etdm_driver, ptr %call.i, align 4
  %num_dai_drivers = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %num_dai_drivers to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6, ptr %num_dai_drivers, align 4
  %dapm_widgets = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mtk_dai_etdm_widgets, ptr %dapm_widgets, align 4
  %num_dapm_widgets = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %num_dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 92, ptr %num_dapm_widgets, align 4
  %dapm_routes = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mtk_dai_etdm_routes, ptr %dapm_routes, align 4
  %num_dapm_routes = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %num_dapm_routes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 274, ptr %num_dapm_routes, align 4
  %controls = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %controls to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mtk_dai_etdm_controls, ptr %controls, align 4
  %num_controls = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %num_controls to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %num_controls, align 4
  %platform_priv.i = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %16 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %platform_priv.i, align 4
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %call.i.i13 = tail call noalias ptr @devm_kmalloc(ptr noundef %19, i32 noundef 88, i32 noundef 3520) #8
  %tobool.not.i = icmp eq ptr %call.i.i13, null
  br i1 %tobool.not.i, label %list_add.exit.cleanup_crit_edge, label %if.end.i

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %list_add.exit
  %arrayidx.i = getelementptr %struct.mt8195_afe_private, ptr %17, i32 0, i32 10, i32 18
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i13, ptr %arrayidx.i, align 4
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %call.i.1.i = tail call noalias ptr @devm_kmalloc(ptr noundef %22, i32 noundef 88, i32 noundef 3520) #8
  %tobool.not.1.i = icmp eq ptr %call.i.1.i, null
  br i1 %tobool.not.1.i, label %if.end.i.cleanup_crit_edge, label %if.end.1.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.1.i:                                       ; preds = %if.end.i
  %arrayidx.1.i = getelementptr %struct.mt8195_afe_private, ptr %17, i32 0, i32 10, i32 19
  %23 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i.1.i, ptr %arrayidx.1.i, align 4
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %call.i.2.i = tail call noalias ptr @devm_kmalloc(ptr noundef %25, i32 noundef 88, i32 noundef 3520) #8
  %tobool.not.2.i = icmp eq ptr %call.i.2.i, null
  br i1 %tobool.not.2.i, label %if.end.1.i.cleanup_crit_edge, label %if.end.2.i

if.end.1.i.cleanup_crit_edge:                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.2.i:                                       ; preds = %if.end.1.i
  %arrayidx.2.i = getelementptr %struct.mt8195_afe_private, ptr %17, i32 0, i32 10, i32 20
  %26 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.2.i, ptr %arrayidx.2.i, align 4
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %call.i.3.i = tail call noalias ptr @devm_kmalloc(ptr noundef %28, i32 noundef 88, i32 noundef 3520) #8
  %tobool.not.3.i = icmp eq ptr %call.i.3.i, null
  br i1 %tobool.not.3.i, label %if.end.2.i.cleanup_crit_edge, label %if.end.3.i

if.end.2.i.cleanup_crit_edge:                     ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.3.i:                                       ; preds = %if.end.2.i
  %arrayidx.3.i = getelementptr %struct.mt8195_afe_private, ptr %17, i32 0, i32 10, i32 21
  %29 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i.3.i, ptr %arrayidx.3.i, align 4
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %call.i.4.i = tail call noalias ptr @devm_kmalloc(ptr noundef %31, i32 noundef 88, i32 noundef 3520) #8
  %tobool.not.4.i = icmp eq ptr %call.i.4.i, null
  br i1 %tobool.not.4.i, label %if.end.3.i.cleanup_crit_edge, label %if.end.4.i

if.end.3.i.cleanup_crit_edge:                     ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.4.i:                                       ; preds = %if.end.3.i
  %arrayidx.4.i = getelementptr %struct.mt8195_afe_private, ptr %17, i32 0, i32 10, i32 22
  %32 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.4.i, ptr %arrayidx.4.i, align 4
  %arrayidx4.i = getelementptr %struct.mt8195_afe_private, ptr %17, i32 0, i32 10, i32 17
  %33 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i.4.i, ptr %arrayidx4.i, align 4
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %of_node1.i.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %of_node1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %of_node1.i.i, align 8
  %38 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %platform_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %prop.i.i) #8
  %40 = call ptr @memset(ptr %prop.i.i, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %disable_chn.i.i) #8
  %41 = call ptr @memset(ptr %disable_chn.i.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sel.i.i) #8
  %42 = ptrtoint ptr %sel.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %sel.i.i, align 4, !annotation !752
  br label %for.body.i.i

for.cond62.preheader.i.i:                         ; preds = %for.inc.i.i
  %call69.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prop.i.i, i32 noundef 48, ptr noundef nonnull @.str.390, ptr noundef nonnull @.str.370) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i.i)
  %cmp70.i.i = icmp slt i32 %call69.i.i, 0
  br i1 %cmp70.i.i, label %for.cond62.preheader.i.i.do.end75.i.i_crit_edge, label %if.end77.i.i

for.cond62.preheader.i.i.do.end75.i.i_crit_edge:  ; preds = %for.cond62.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end75.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.4.i
  %i.0182.i.i = phi i32 [ 0, %if.end.4.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %i.0182.i.i, 18
  %arrayidx.i.i = getelementptr %struct.mt8195_afe_private, ptr %39, i32 0, i32 10, i32 %add.i.i
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx2.i.i = getelementptr [5 x %struct.anon.93], ptr @__const.mt8195_dai_etdm_parse_of.of_afe_etdms, i32 0, i32 %i.0182.i.i
  %45 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx2.i.i, align 4
  %call.i14.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prop.i.i, i32 noundef 48, ptr noundef nonnull @.str.375, ptr noundef %46) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i)
  %cmp3.i.i = icmp slt i32 %call.i14.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end.i.i14

do.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.376, ptr noundef nonnull @.str.377, i32 noundef %call.i14.i) #11
  br label %mt8195_dai_etdm_parse_of.exit.i

if.end.i.i14:                                     ; preds = %for.body.i.i
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %37, ptr noundef nonnull %prop.i.i, ptr noundef nonnull %sel.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %cmp7.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.end.i.i14.if.end16.i.i_crit_edge

if.end.i.i14.if.end16.i.i_crit_edge:              ; preds = %if.end.i.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i14
  %mclk_dir.i.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %44, i32 0, i32 10
  %49 = ptrtoint ptr %mclk_dir.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %mclk_dir.i.i, align 4
  %50 = ptrtoint ptr %sel.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sel.i.i, align 4
  %52 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %platform_priv.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.mt8195_afe_private, ptr %53, i32 0, i32 10, i32 %add.i.i
  %54 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i.i.i = icmp eq i32 %51, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %mclk_freq.i.i.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %mclk_freq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %mclk_freq.i.i.i, align 4
  br label %if.end16.i.i

if.end.i.i.i:                                     ; preds = %if.then8.i.i
  %call.i.i.i = call i32 @mt8195_afe_get_default_mclk_source_by_rate(i32 noundef %51) #8
  %call1.i.i.i = call i32 @mt8195_afe_get_mclk_source_rate(ptr noundef %afe, i32 noundef %call.i.i.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i.i.i, i32 %51)
  %cmp2.i.i.i = icmp slt i32 %call1.i.i.i, %51
  br i1 %cmp2.i.i.i, label %do.end.i.i.i, label %if.end4.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.16, i32 noundef %51, i32 noundef %call1.i.i.i) #11
  br label %do.end13.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  %rem.i.i.i = srem i32 %call1.i.i.i, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.i)
  %cmp5.not.i.i.i = icmp eq i32 %rem.i.i.i, 0
  br i1 %cmp5.not.i.i.i, label %if.end11.i.i.i, label %do.end9.i.i.i

do.end9.i.i.i:                                    ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %60, ptr noundef nonnull @.str.21, i32 noundef %call.i.i.i) #11
  br label %do.end13.i.i

if.end11.i.i.i:                                   ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %mclk_apll.i.i.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %55, i32 0, i32 9
  %61 = ptrtoint ptr %mclk_apll.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call.i.i.i, ptr %mclk_apll.i.i.i, align 4
  %mclk_freq12.i.i.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %55, i32 0, i32 8
  %62 = ptrtoint ptr %mclk_freq12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %51, ptr %mclk_freq12.i.i.i, align 4
  br label %if.end16.i.i

do.end13.i.i:                                     ; preds = %do.end9.i.i.i, %do.end.i.i.i
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  %65 = ptrtoint ptr %sel.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sel.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.379, ptr noundef nonnull @.str.377, i32 noundef %66) #11
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %do.end13.i.i, %if.end11.i.i.i, %if.then.i.i.i, %if.end.i.i14.if.end16.i.i_crit_edge
  %call20.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prop.i.i, i32 noundef 48, ptr noundef nonnull @.str.381, ptr noundef %46) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %cmp21.i.i = icmp slt i32 %call20.i.i, 0
  br i1 %cmp21.i.i, label %do.end25.i.i, label %if.end27.i.i

do.end25.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %68, ptr noundef nonnull @.str.376, ptr noundef nonnull @.str.377, i32 noundef %call20.i.i) #11
  br label %mt8195_dai_etdm_parse_of.exit.i

if.end27.i.i:                                     ; preds = %if.end16.i.i
  %call.i165.i.i = call ptr @of_find_property(ptr noundef %37, ptr noundef nonnull %prop.i.i, ptr noundef null) #8
  %tobool.i.i.i = icmp ne ptr %call.i165.i.i, null
  %conv.i.i = zext i1 %tobool.i.i.i to i32
  %data_mode.i.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %44, i32 0, i32 1
  %69 = ptrtoint ptr %data_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv.i.i, ptr %data_mode.i.i, align 4
  %call33.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prop.i.i, i32 noundef 48, ptr noundef nonnull @.str.384, ptr noundef %46) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %cmp34.i.i = icmp slt i32 %call33.i.i, 0
  br i1 %cmp34.i.i, label %do.end39.i.i, label %if.end41.i.i

do.end39.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %71, ptr noundef nonnull @.str.376, ptr noundef nonnull @.str.377, i32 noundef %call33.i.i) #11
  br label %mt8195_dai_etdm_parse_of.exit.i

if.end41.i.i:                                     ; preds = %if.end27.i.i
  %call.i.i166.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %37, ptr noundef nonnull %prop.i.i, ptr noundef nonnull %sel.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i166.i.i)
  %cmp44.i.i = icmp sgt i32 %call.i.i166.i.i, -1
  br i1 %cmp44.i.i, label %if.then46.i.i, label %if.end41.i.i.for.inc.i.i_crit_edge

if.end41.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then46.i.i:                                    ; preds = %if.end41.i.i
  %72 = ptrtoint ptr %sel.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %73)
  %cmp47.i.i = icmp ugt i32 %73, 4
  br i1 %cmp47.i.i, label %do.end52.i.i, label %if.else.i.i

do.end52.i.i:                                     ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %75, ptr noundef nonnull @.str.388, ptr noundef nonnull @.str.377, i32 noundef %73) #11
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sync_id55.i.i = getelementptr [5 x %struct.anon.93], ptr @__const.mt8195_dai_etdm_parse_of.of_afe_etdms, i32 0, i32 %73, i32 1
  %76 = ptrtoint ptr %sync_id55.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sync_id55.i.i, align 4
  %switch.tableidx = add i32 %77, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %78 = icmp ult i32 %switch.tableidx, 5
  %switch.offset = add i32 %77, 17
  %spec.select = select i1 %78, i32 %switch.offset, i32 0
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %do.end52.i.i, %if.end41.i.i.for.inc.i.i_crit_edge
  %.sink.i.i = phi i32 [ 0, %do.end52.i.i ], [ 0, %if.end41.i.i.for.inc.i.i_crit_edge ], [ %spec.select, %if.else.i.i ]
  %cowork_source_id60.i.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %44, i32 0, i32 11
  %79 = ptrtoint ptr %cowork_source_id60.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %.sink.i.i, ptr %cowork_source_id60.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.0182.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 5
  br i1 %exitcond.not.i.i, label %for.cond62.preheader.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

do.end75.i.i:                                     ; preds = %for.inc107.i.i.do.end75.i.i_crit_edge, %for.cond62.preheader.i.i.do.end75.i.i_crit_edge
  %call69.lcssa.i.i = phi i32 [ %call69.i.i, %for.cond62.preheader.i.i.do.end75.i.i_crit_edge ], [ %call69.1.i.i, %for.inc107.i.i.do.end75.i.i_crit_edge ]
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %81, ptr noundef nonnull @.str.376, ptr noundef nonnull @.str.377, i32 noundef %call69.lcssa.i.i) #11
  br label %mt8195_dai_etdm_parse_of.exit.i

if.end77.i.i:                                     ; preds = %for.cond62.preheader.i.i
  %call80.i.i = call i32 @of_property_read_variable_u8_array(ptr noundef %37, ptr noundef nonnull %prop.i.i, ptr noundef nonnull %disable_chn.i.i, i32 noundef 1, i32 noundef 24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i.i)
  %cmp86183.i.i = icmp sgt i32 %call80.i.i, 0
  br i1 %cmp86183.i.i, label %if.end77.i.i.for.body88.i.i_crit_edge, label %if.end77.i.i.for.inc107.i.i_crit_edge

if.end77.i.i.for.inc107.i.i_crit_edge:            ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc107.i.i

if.end77.i.i.for.body88.i.i_crit_edge:            ; preds = %if.end77.i.i
  br label %for.body88.i.i

for.body88.i.i:                                   ; preds = %for.inc104.i.i.for.body88.i.i_crit_edge, %if.end77.i.i.for.body88.i.i_crit_edge
  %j.0184.i.i = phi i32 [ %inc105.i.i, %for.inc104.i.i.for.body88.i.i_crit_edge ], [ 0, %if.end77.i.i.for.body88.i.i_crit_edge ]
  %arrayidx89.i.i = getelementptr [24 x i8], ptr %disable_chn.i.i, i32 0, i32 %j.0184.i.i
  %82 = ptrtoint ptr %arrayidx89.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx89.i.i, align 1
  %conv90.i.i = zext i8 %83 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %83)
  %cmp91.i.i = icmp ugt i8 %83, 23
  br i1 %cmp91.i.i, label %do.end96.i.i, label %if.else100.i.i

do.end96.i.i:                                     ; preds = %for.body88.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %85, ptr noundef nonnull @.str.394, ptr noundef nonnull @.str.377, i32 noundef %j.0184.i.i, i32 noundef %conv90.i.i) #11
  br label %for.inc104.i.i

if.else100.i.i:                                   ; preds = %for.body88.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx102.i.i = getelementptr %struct.mtk_dai_etdm_priv, ptr %44, i32 0, i32 14, i32 %conv90.i.i
  %86 = ptrtoint ptr %arrayidx102.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %arrayidx102.i.i, align 1
  br label %for.inc104.i.i

for.inc104.i.i:                                   ; preds = %if.else100.i.i, %do.end96.i.i
  %inc105.i.i = add nuw nsw i32 %j.0184.i.i, 1
  %exitcond197.not.i.i = icmp eq i32 %inc105.i.i, %call80.i.i
  br i1 %exitcond197.not.i.i, label %for.inc104.i.i.for.inc107.i.i_crit_edge, label %for.inc104.i.i.for.body88.i.i_crit_edge

for.inc104.i.i.for.body88.i.i_crit_edge:          ; preds = %for.inc104.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body88.i.i

for.inc104.i.i.for.inc107.i.i_crit_edge:          ; preds = %for.inc104.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc107.i.i

for.inc107.i.i:                                   ; preds = %for.inc104.i.i.for.inc107.i.i_crit_edge, %if.end77.i.i.for.inc107.i.i_crit_edge
  %call69.1.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prop.i.i, i32 noundef 48, ptr noundef nonnull @.str.390, ptr noundef nonnull @.str.371) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.1.i.i)
  %cmp70.1.i.i = icmp slt i32 %call69.1.i.i, 0
  br i1 %cmp70.1.i.i, label %for.inc107.i.i.do.end75.i.i_crit_edge, label %if.end77.1.i.i

for.inc107.i.i.do.end75.i.i_crit_edge:            ; preds = %for.inc107.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end75.i.i

if.end77.1.i.i:                                   ; preds = %for.inc107.i.i
  %call80.1.i.i = call i32 @of_property_read_variable_u8_array(ptr noundef %37, ptr noundef nonnull %prop.i.i, ptr noundef nonnull %disable_chn.i.i, i32 noundef 1, i32 noundef 24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.1.i.i)
  %cmp86183.1.i.i = icmp sgt i32 %call80.1.i.i, 0
  br i1 %cmp86183.1.i.i, label %if.end77.1.i.i.for.body88.1.i.i_crit_edge, label %if.end77.1.i.i.for.inc107.1.i.i_crit_edge

if.end77.1.i.i.for.inc107.1.i.i_crit_edge:        ; preds = %if.end77.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc107.1.i.i

if.end77.1.i.i.for.body88.1.i.i_crit_edge:        ; preds = %if.end77.1.i.i
  br label %for.body88.1.i.i

for.body88.1.i.i:                                 ; preds = %for.inc104.1.i.i.for.body88.1.i.i_crit_edge, %if.end77.1.i.i.for.body88.1.i.i_crit_edge
  %j.0184.1.i.i = phi i32 [ %inc105.1.i.i, %for.inc104.1.i.i.for.body88.1.i.i_crit_edge ], [ 0, %if.end77.1.i.i.for.body88.1.i.i_crit_edge ]
  %arrayidx89.1.i.i = getelementptr [24 x i8], ptr %disable_chn.i.i, i32 0, i32 %j.0184.1.i.i
  %87 = ptrtoint ptr %arrayidx89.1.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx89.1.i.i, align 1
  %conv90.1.i.i = zext i8 %88 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %88)
  %cmp91.1.i.i = icmp ugt i8 %88, 23
  br i1 %cmp91.1.i.i, label %do.end96.1.i.i, label %if.else100.1.i.i

if.else100.1.i.i:                                 ; preds = %for.body88.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx102.1.i.i = getelementptr %struct.mtk_dai_etdm_priv, ptr %44, i32 0, i32 14, i32 %conv90.1.i.i
  %89 = ptrtoint ptr %arrayidx102.1.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %arrayidx102.1.i.i, align 1
  br label %for.inc104.1.i.i

do.end96.1.i.i:                                   ; preds = %for.body88.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %91, ptr noundef nonnull @.str.394, ptr noundef nonnull @.str.377, i32 noundef %j.0184.1.i.i, i32 noundef %conv90.1.i.i) #11
  br label %for.inc104.1.i.i

for.inc104.1.i.i:                                 ; preds = %do.end96.1.i.i, %if.else100.1.i.i
  %inc105.1.i.i = add nuw nsw i32 %j.0184.1.i.i, 1
  %exitcond197.1.not.i.i = icmp eq i32 %inc105.1.i.i, %call80.1.i.i
  br i1 %exitcond197.1.not.i.i, label %for.inc104.1.i.i.for.inc107.1.i.i_crit_edge, label %for.inc104.1.i.i.for.body88.1.i.i_crit_edge

for.inc104.1.i.i.for.body88.1.i.i_crit_edge:      ; preds = %for.inc104.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body88.1.i.i

for.inc104.1.i.i.for.inc107.1.i.i_crit_edge:      ; preds = %for.inc104.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc107.1.i.i

for.inc107.1.i.i:                                 ; preds = %for.inc104.1.i.i.for.inc107.1.i.i_crit_edge, %if.end77.1.i.i.for.inc107.1.i.i_crit_edge
  %92 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %platform_priv.i, align 4
  %arrayidx.i170.i.i = getelementptr %struct.mt8195_afe_private, ptr %93, i32 0, i32 10, i32 18
  %94 = ptrtoint ptr %arrayidx.i170.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i170.i.i, align 4
  %cowork_source_id.i.i.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %95, i32 0, i32 11
  %96 = ptrtoint ptr %cowork_source_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cowork_source_id.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp1.not.i.i.i = icmp eq i32 %97, 0
  br i1 %cmp1.not.i.i.i, label %for.inc107.1.i.i.for.inc.i.i.i_crit_edge, label %if.then.i171.i.i

for.inc107.1.i.i.for.inc.i.i.i_crit_edge:         ; preds = %for.inc107.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

if.then.i171.i.i:                                 ; preds = %for.inc107.1.i.i
  %arrayidx4.i.i.i = getelementptr %struct.mt8195_afe_private, ptr %93, i32 0, i32 10, i32 %97
  %98 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx4.i.i.i, align 4
  %cowork_source_id5.i.i.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %99, i32 0, i32 11
  %100 = ptrtoint ptr %cowork_source_id5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cowork_source_id5.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp6.not.i.i.i = icmp eq i32 %101, 0
  br i1 %cmp6.not.i.i.i, label %if.then.i171.i.i.if.end.i173.i.i_crit_edge, label %do.end.i172.i.i

if.then.i171.i.i.if.end.i173.i.i_crit_edge:       ; preds = %if.then.i171.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i173.i.i

do.end.i172.i.i:                                  ; preds = %if.then.i171.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %103, ptr noundef nonnull @.str.396, ptr noundef nonnull @.str.397, i32 noundef 18) #11
  br label %if.end.i173.i.i

if.end.i173.i.i:                                  ; preds = %do.end.i172.i.i, %if.then.i171.i.i.if.end.i173.i.i_crit_edge
  %cowork_slv_count.i.i.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %99, i32 0, i32 12
  %104 = ptrtoint ptr %cowork_slv_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %cowork_slv_count.i.i.i, align 4
  %arrayidx8.i.i.i = getelementptr %struct.mtk_dai_etdm_priv, ptr %99, i32 0, i32 13, i32 %105
  %106 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 18, ptr %arrayidx8.i.i.i, align 4
  %107 = load i32, ptr %cowork_slv_count.i.i.i, align 4
  %inc.i.i.i = add i32 %107, 1
  store i32 %inc.i.i.i, ptr %cowork_slv_count.i.i.i, align 4
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.end.i173.i.i, %for.inc107.1.i.i.for.inc.i.i.i_crit_edge
  %arrayidx.1.i.i.i = getelementptr %struct.mt8195_afe_private, ptr %93, i32 0, i32 10, i32 19
  %108 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.1.i.i.i, align 4
  %cowork_source_id.1.i.i.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %109, i32 0, i32 11
  %110 = ptrtoint ptr %cowork_source_id.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cowork_source_id.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp1.not.1.i.i.i = icmp eq i32 %111, 0
  br i1 %cmp1.not.1.i.i.i, label %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge, label %if.then.1.i.i.i

for.inc.i.i.i.for.inc.1.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i.i.i

if.then.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  %arrayidx4.1.i.i.i = getelementptr %struct.mt8195_afe_private, ptr %93, i32 0, i32 10, i32 %111
  %112 = ptrtoint ptr %arrayidx4.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx4.1.i.i.i, align 4
  %cowork_source_id5.1.i.i.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %113, i32 0, i32 11
  %114 = ptrtoint ptr %cowork_source_id5.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %cowork_source_id5.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp6.not.1.i.i.i = icmp eq i32 %115, 0
  br i1 %cmp6.not.1.i.i.i, label %if.then.1.i.i.i.if.end.1.i.i.i_crit_edge, label %do.end.1.i.i.i

if.then.1.i.i.i.if.end.1.i.i.i_crit_edge:         ; preds = %if.then.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.1.i.i.i

do.end.1.i.i.i:                                   ; preds = %if.then.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %117, ptr noundef nonnull @.str.396, ptr noundef nonnull @.str.397, i32 noundef 19) #11
  br label %if.end.1.i.i.i

if.end.1.i.i.i:                                   ; preds = %do.end.1.i.i.i, %if.then.1.i.i.i.if.end.1.i.i.i_crit_edge
  %cowork_slv_count.1.i.i.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %113, i32 0, i32 12
  %118 = ptrtoint ptr %cowork_slv_count.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %cowork_slv_count.1.i.i.i, align 4
  %arrayidx8.1.i.i.i = getelementptr %struct.mtk_dai_etdm_priv, ptr %113, i32 0, i32 13, i32 %119
  %120 = ptrtoint ptr %arrayidx8.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 19, ptr %arrayidx8.1.i.i.i, align 4
  %121 = load i32, ptr %cowork_slv_count.1.i.i.i, align 4
  %inc.1.i.i.i = add i32 %121, 1
  store i32 %inc.1.i.i.i, ptr %cowork_slv_count.1.i.i.i, align 4
  br label %for.inc.1.i.i.i

for.inc.1.i.i.i:                                  ; preds = %if.end.1.i.i.i, %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge
  %arrayidx.2.i.i.i = getelementptr %struct.mt8195_afe_private, ptr %93, i32 0, i32 10, i32 20
  %122 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx.2.i.i.i, align 4
  %cowork_source_id.2.i.i.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %123, i32 0, i32 11
  %124 = ptrtoint ptr %cowork_source_id.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %cowork_source_id.2.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp1.not.2.i.i.i = icmp eq i32 %125, 0
  br i1 %cmp1.not.2.i.i.i, label %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge, label %if.then.2.i.i.i

for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge:        ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i.i.i

if.then.2.i.i.i:                                  ; preds = %for.inc.1.i.i.i
  %arrayidx4.2.i.i.i = getelementptr %struct.mt8195_afe_private, ptr %93, i32 0, i32 10, i32 %125
  %126 = ptrtoint ptr %arrayidx4.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx4.2.i.i.i, align 4
  %cowork_source_id5.2.i.i.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %127, i32 0, i32 11
  %128 = ptrtoint ptr %cowork_source_id5.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %cowork_source_id5.2.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp6.not.2.i.i.i = icmp eq i32 %129, 0
  br i1 %cmp6.not.2.i.i.i, label %if.then.2.i.i.i.if.end.2.i.i.i_crit_edge, label %do.end.2.i.i.i

if.then.2.i.i.i.if.end.2.i.i.i_crit_edge:         ; preds = %if.then.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.2.i.i.i

do.end.2.i.i.i:                                   ; preds = %if.then.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %130 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %131, ptr noundef nonnull @.str.396, ptr noundef nonnull @.str.397, i32 noundef 20) #11
  br label %if.end.2.i.i.i

if.end.2.i.i.i:                                   ; preds = %do.end.2.i.i.i, %if.then.2.i.i.i.if.end.2.i.i.i_crit_edge
  %cowork_slv_count.2.i.i.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %127, i32 0, i32 12
  %132 = ptrtoint ptr %cowork_slv_count.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cowork_slv_count.2.i.i.i, align 4
  %arrayidx8.2.i.i.i = getelementptr %struct.mtk_dai_etdm_priv, ptr %127, i32 0, i32 13, i32 %133
  %134 = ptrtoint ptr %arrayidx8.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 20, ptr %arrayidx8.2.i.i.i, align 4
  %135 = load i32, ptr %cowork_slv_count.2.i.i.i, align 4
  %inc.2.i.i.i = add i32 %135, 1
  store i32 %inc.2.i.i.i, ptr %cowork_slv_count.2.i.i.i, align 4
  br label %for.inc.2.i.i.i

for.inc.2.i.i.i:                                  ; preds = %if.end.2.i.i.i, %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge
  %arrayidx.3.i.i.i = getelementptr %struct.mt8195_afe_private, ptr %93, i32 0, i32 10, i32 21
  %136 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx.3.i.i.i, align 4
  %cowork_source_id.3.i.i.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %137, i32 0, i32 11
  %138 = ptrtoint ptr %cowork_source_id.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %cowork_source_id.3.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp1.not.3.i.i.i = icmp eq i32 %139, 0
  br i1 %cmp1.not.3.i.i.i, label %for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge, label %if.then.3.i.i.i

for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge:        ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i.i.i

if.then.3.i.i.i:                                  ; preds = %for.inc.2.i.i.i
  %arrayidx4.3.i.i.i = getelementptr %struct.mt8195_afe_private, ptr %93, i32 0, i32 10, i32 %139
  %140 = ptrtoint ptr %arrayidx4.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx4.3.i.i.i, align 4
  %cowork_source_id5.3.i.i.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %141, i32 0, i32 11
  %142 = ptrtoint ptr %cowork_source_id5.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %cowork_source_id5.3.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp6.not.3.i.i.i = icmp eq i32 %143, 0
  br i1 %cmp6.not.3.i.i.i, label %if.then.3.i.i.i.if.end.3.i.i.i_crit_edge, label %do.end.3.i.i.i

if.then.3.i.i.i.if.end.3.i.i.i_crit_edge:         ; preds = %if.then.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.3.i.i.i

do.end.3.i.i.i:                                   ; preds = %if.then.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %145, ptr noundef nonnull @.str.396, ptr noundef nonnull @.str.397, i32 noundef 21) #11
  br label %if.end.3.i.i.i

if.end.3.i.i.i:                                   ; preds = %do.end.3.i.i.i, %if.then.3.i.i.i.if.end.3.i.i.i_crit_edge
  %cowork_slv_count.3.i.i.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %141, i32 0, i32 12
  %146 = ptrtoint ptr %cowork_slv_count.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %cowork_slv_count.3.i.i.i, align 4
  %arrayidx8.3.i.i.i = getelementptr %struct.mtk_dai_etdm_priv, ptr %141, i32 0, i32 13, i32 %147
  %148 = ptrtoint ptr %arrayidx8.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 21, ptr %arrayidx8.3.i.i.i, align 4
  %149 = load i32, ptr %cowork_slv_count.3.i.i.i, align 4
  %inc.3.i.i.i = add i32 %149, 1
  store i32 %inc.3.i.i.i, ptr %cowork_slv_count.3.i.i.i, align 4
  br label %for.inc.3.i.i.i

for.inc.3.i.i.i:                                  ; preds = %if.end.3.i.i.i, %for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge
  %arrayidx.4.i.i.i = getelementptr %struct.mt8195_afe_private, ptr %93, i32 0, i32 10, i32 22
  %150 = ptrtoint ptr %arrayidx.4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx.4.i.i.i, align 4
  %cowork_source_id.4.i.i.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %151, i32 0, i32 11
  %152 = ptrtoint ptr %cowork_source_id.4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %cowork_source_id.4.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp1.not.4.i.i.i = icmp eq i32 %153, 0
  br i1 %cmp1.not.4.i.i.i, label %for.inc.3.i.i.i.mt8195_dai_etdm_parse_of.exit.i_crit_edge, label %if.then.4.i.i.i

for.inc.3.i.i.i.mt8195_dai_etdm_parse_of.exit.i_crit_edge: ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt8195_dai_etdm_parse_of.exit.i

if.then.4.i.i.i:                                  ; preds = %for.inc.3.i.i.i
  %arrayidx4.4.i.i.i = getelementptr %struct.mt8195_afe_private, ptr %93, i32 0, i32 10, i32 %153
  %154 = ptrtoint ptr %arrayidx4.4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx4.4.i.i.i, align 4
  %cowork_source_id5.4.i.i.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %155, i32 0, i32 11
  %156 = ptrtoint ptr %cowork_source_id5.4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %cowork_source_id5.4.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp6.not.4.i.i.i = icmp eq i32 %157, 0
  br i1 %cmp6.not.4.i.i.i, label %if.then.4.i.i.i.if.end.4.i.i.i_crit_edge, label %do.end.4.i.i.i

if.then.4.i.i.i.if.end.4.i.i.i_crit_edge:         ; preds = %if.then.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.4.i.i.i

do.end.4.i.i.i:                                   ; preds = %if.then.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %158 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %159, ptr noundef nonnull @.str.396, ptr noundef nonnull @.str.397, i32 noundef 22) #11
  br label %if.end.4.i.i.i

if.end.4.i.i.i:                                   ; preds = %do.end.4.i.i.i, %if.then.4.i.i.i.if.end.4.i.i.i_crit_edge
  %cowork_slv_count.4.i.i.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %155, i32 0, i32 12
  %160 = ptrtoint ptr %cowork_slv_count.4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %cowork_slv_count.4.i.i.i, align 4
  %arrayidx8.4.i.i.i = getelementptr %struct.mtk_dai_etdm_priv, ptr %155, i32 0, i32 13, i32 %161
  %162 = ptrtoint ptr %arrayidx8.4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 22, ptr %arrayidx8.4.i.i.i, align 4
  %163 = load i32, ptr %cowork_slv_count.4.i.i.i, align 4
  %inc.4.i.i.i = add i32 %163, 1
  store i32 %inc.4.i.i.i, ptr %cowork_slv_count.4.i.i.i, align 4
  br label %mt8195_dai_etdm_parse_of.exit.i

mt8195_dai_etdm_parse_of.exit.i:                  ; preds = %if.end.4.i.i.i, %for.inc.3.i.i.i.mt8195_dai_etdm_parse_of.exit.i_crit_edge, %do.end75.i.i, %do.end39.i.i, %do.end25.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sel.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %disable_chn.i.i) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %prop.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %mt8195_dai_etdm_parse_of.exit.i, %if.end.3.i.cleanup_crit_edge, %if.end.2.i.cleanup_crit_edge, %if.end.1.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %list_add.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %mt8195_dai_etdm_parse_of.exit.i ], [ -12, %if.end.3.i.cleanup_crit_edge ], [ -12, %if.end.2.i.cleanup_crit_edge ], [ -12, %if.end.1.i.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -12, %list_add.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dai_etdm_probe(ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_priv, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.mt8195_afe_private, ptr %5, i32 0, i32 10, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_dai_etdm_probe.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_dai_etdm_probe, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !753

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_dai_etdm_probe.__UNIQUE_ID_ddebug250, ptr noundef %11, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef %13) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mclk_freq = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %9, i32 0, i32 8
  %14 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mclk_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool5.not = icmp eq i32 %15, 0
  br i1 %tobool5.not, label %do.end.if.end33_crit_edge, label %do.body7

do.end.if.end33_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

do.body7:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_dai_etdm_probe.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_dai_etdm_probe, %if.then19)) #8
          to label %do.end24 [label %if.then19], !srcloc !753

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %dev20 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev20, align 4
  %18 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mclk_freq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_dai_etdm_probe.__UNIQUE_ID_ddebug251, ptr noundef %17, ptr noundef nonnull @.str.39, i32 noundef %19) #8
  br label %do.end24

do.end24:                                         ; preds = %if.then19, %do.body7
  %dev25 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev25, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %21, i32 noundef 4) #8
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  %call28 = tail call fastcc i32 @mtk_dai_etdm_mclk_configure(ptr noundef %3, i32 noundef %23)
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  %switch.tableidx = add i32 %25, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %26 = icmp ult i32 %switch.tableidx, 5
  br i1 %26, label %switch.lookup, label %do.end24.mtk_dai_etdm_enable_mclk.exit_crit_edge

do.end24.mtk_dai_etdm_enable_mclk.exit_crit_edge: ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_dai_etdm_enable_mclk.exit

switch.lookup:                                    ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %platform_priv, align 4
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.mtk_dai_etdm_probe, i32 0, i32 %switch.tableidx
  %29 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %29)
  %switch.load = load i32, ptr %switch.gep, align 4
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %28, align 4
  %arrayidx.i = getelementptr ptr, ptr %31, i32 %switch.load
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 4
  %call1.i = tail call i32 @mt8195_afe_enable_clk(ptr noundef %3, ptr noundef %33) #8
  br label %mtk_dai_etdm_enable_mclk.exit

mtk_dai_etdm_enable_mclk.exit:                    ; preds = %switch.lookup, %do.end24.mtk_dai_etdm_enable_mclk.exit_crit_edge
  %34 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev25, align 4
  %call.i48 = tail call i32 @__pm_runtime_idle(ptr noundef %35, i32 noundef 4) #8
  br label %if.end33

if.end33:                                         ; preds = %mtk_dai_etdm_enable_mclk.exit, %do.end.if.end33_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dai_hdmitx_dptx_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_priv, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.mt8195_afe_private, ptr %5, i32 0, i32 10, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_dai_hdmitx_dptx_set_sysclk.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_dai_hdmitx_dptx_set_sysclk, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !753

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_dai_hdmitx_dptx_set_sysclk.__UNIQUE_ID_ddebug249, ptr noundef %11, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef %13, i32 noundef %freq, i32 noundef %dir) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mclk_dir = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %9, i32 0, i32 10
  %14 = ptrtoint ptr %mclk_dir to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %dir, ptr %mclk_dir, align 4
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  %17 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %platform_priv, align 4
  %arrayidx.i = getelementptr %struct.mt8195_afe_private, ptr %18, i32 0, i32 10, i32 %16
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq)
  %cmp.i = icmp eq i32 %freq, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %mclk_freq.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %mclk_freq.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %mclk_freq.i, align 4
  br label %mtk_dai_etdm_cal_mclk.exit

if.end.i:                                         ; preds = %do.end
  %call.i = tail call i32 @mt8195_afe_get_default_mclk_source_by_rate(i32 noundef %freq) #8
  %call1.i = tail call i32 @mt8195_afe_get_mclk_source_rate(ptr noundef %3, i32 noundef %call.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %freq)
  %cmp2.i = icmp slt i32 %call1.i, %freq
  br i1 %cmp2.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i14 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %dev.i14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i14, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.16, i32 noundef %freq, i32 noundef %call1.i) #11
  br label %mtk_dai_etdm_cal_mclk.exit

if.end4.i:                                        ; preds = %if.end.i
  %rem.i = srem i32 %call1.i, %freq
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp5.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp5.not.i, label %if.end11.i, label %do.end9.i

do.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev10.i = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 1
  %24 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev10.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.21, i32 noundef %call.i) #11
  br label %mtk_dai_etdm_cal_mclk.exit

if.end11.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %mclk_apll.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %20, i32 0, i32 9
  %26 = ptrtoint ptr %mclk_apll.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call.i, ptr %mclk_apll.i, align 4
  %mclk_freq12.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %20, i32 0, i32 8
  %27 = ptrtoint ptr %mclk_freq12.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %freq, ptr %mclk_freq12.i, align 4
  br label %mtk_dai_etdm_cal_mclk.exit

mtk_dai_etdm_cal_mclk.exit:                       ; preds = %if.end11.i, %do.end9.i, %do.end.i, %if.then.i
  %retval.0.i15 = phi i32 [ 0, %if.then.i ], [ -22, %do.end.i ], [ -22, %do.end9.i ], [ 0, %if.end11.i ]
  ret i32 %retval.0.i15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_dai_etdm_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_priv, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.mt8195_afe_private, ptr %5, i32 0, i32 10, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %and = and i32 %fmt, 15
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 5
  br i1 %10, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.mtk_dai_etdm_set_fmt, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  %format8 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %9, i32 0, i32 5
  %12 = ptrtoint ptr %format8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %switch.load, ptr %format8, align 4
  %and9 = lshr i32 %fmt, 8
  %13 = and i32 %and9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %14 = icmp ult i32 %13, 5
  br i1 %14, label %switch.hole_check, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check:                                ; preds = %switch.lookup
  %switch.maskindex = trunc i32 %13 to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %15 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %switch.lobit.not = icmp eq i8 %15, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup51

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup51:                                  ; preds = %switch.hole_check
  %switch.gep52 = getelementptr inbounds [5 x i8], ptr @switch.table.mtk_dai_etdm_set_fmt.398, i32 0, i32 %13
  %16 = ptrtoint ptr %switch.gep52 to i32
  call void @__asan_load1_noabort(i32 %16)
  %switch.load53 = load i8, ptr %switch.gep52, align 1
  %switch.gep54 = getelementptr inbounds [5 x i8], ptr @switch.table.mtk_dai_etdm_set_fmt.399, i32 0, i32 %13
  %17 = ptrtoint ptr %switch.gep54 to i32
  call void @__asan_load1_noabort(i32 %17)
  %switch.load55 = load i8, ptr %switch.gep54, align 1
  %bck_inv18 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %9, i32 0, i32 4
  %18 = ptrtoint ptr %bck_inv18 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %switch.load53, ptr %bck_inv18, align 2
  %lrck_inv19 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %9, i32 0, i32 3
  %19 = ptrtoint ptr %lrck_inv19 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %switch.load55, ptr %lrck_inv19, align 1
  %20 = trunc i32 %fmt to i16
  %trunc = and i16 %20, -4096
  %21 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %switch.lookup51.cleanup_crit_edge [
    i16 4096, label %switch.lookup51.cleanup.sink.split_crit_edge
    i16 16384, label %sw.bb24
  ]

switch.lookup51.cleanup.sink.split_crit_edge:     ; preds = %switch.lookup51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

switch.lookup51.cleanup_crit_edge:                ; preds = %switch.lookup51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb24:                                          ; preds = %switch.lookup51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb24, %switch.lookup51.cleanup.sink.split_crit_edge
  %.sink49 = phi i8 [ 0, %sw.bb24 ], [ 1, %switch.lookup51.cleanup.sink.split_crit_edge ]
  %slave_mode = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %9, i32 0, i32 2
  %22 = ptrtoint ptr %slave_mode to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.sink49, ptr %slave_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %switch.lookup51.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ -22, %switch.lookup51.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dai_hdmitx_dptx_startup(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 25
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %switch.tableidx = add i32 %5, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 6
  br i1 %6, label %switch.lookup, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platform_priv, align 4
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_dai_hdmitx_dptx_startup, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %8, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %switch.load
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 @mt8195_afe_enable_clk(ptr noundef %3, ptr noundef %13) #8
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %id, align 4
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %entry.if.end_crit_edge
  %15 = phi i32 [ %5, %entry.if.end_crit_edge ], [ %.pr, %switch.lookup ]
  %switch.tableidx14 = add i32 %15, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx14)
  %16 = icmp ult i32 %switch.tableidx14, 5
  br i1 %16, label %switch.lookup13, label %if.end.mtk_dai_etdm_enable_mclk.exit_crit_edge

if.end.mtk_dai_etdm_enable_mclk.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_dai_etdm_enable_mclk.exit

switch.lookup13:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %platform_priv, align 4
  %switch.gep15 = getelementptr inbounds [5 x i32], ptr @switch.table.mtk_dai_hdmitx_dptx_startup.400, i32 0, i32 %switch.tableidx14
  %19 = ptrtoint ptr %switch.gep15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load16 = load i32, ptr %switch.gep15, align 4
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %18, align 4
  %arrayidx.i = getelementptr ptr, ptr %21, i32 %switch.load16
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %call1.i = tail call i32 @mt8195_afe_enable_clk(ptr noundef %3, ptr noundef %23) #8
  br label %mtk_dai_etdm_enable_mclk.exit

mtk_dai_etdm_enable_mclk.exit:                    ; preds = %switch.lookup13, %if.end.mtk_dai_etdm_enable_mclk.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_dai_hdmitx_dptx_shutdown(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_priv, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.425)
  switch i32 %7, label %entry.if.end_crit_edge [
    i32 17, label %entry.mtk_dai_etdm_disable_mclk.exit_crit_edge
    i32 18, label %sw.bb1.i.i
    i32 19, label %sw.bb2.i.i
    i32 20, label %sw.bb3.i.i
    i32 21, label %sw.bb4.i.i
    i32 22, label %entry.if.then_crit_edge
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.mtk_dai_etdm_disable_mclk.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_dai_etdm_disable_mclk.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb1.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_dai_etdm_disable_mclk.exit

sw.bb2.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_dai_etdm_disable_mclk.exit

sw.bb3.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_dai_etdm_disable_mclk.exit

sw.bb4.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_dai_etdm_disable_mclk.exit

mtk_dai_etdm_disable_mclk.exit:                   ; preds = %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %entry.mtk_dai_etdm_disable_mclk.exit_crit_edge
  %cg_id.0.i13 = phi i32 [ 30, %sw.bb1.i.i ], [ 29, %sw.bb2.i.i ], [ 32, %sw.bb3.i.i ], [ 31, %sw.bb4.i.i ], [ 33, %entry.mtk_dai_etdm_disable_mclk.exit_crit_edge ]
  %clk_id.0.i.ph.i = phi i32 [ 3, %sw.bb1.i.i ], [ 4, %sw.bb2.i.i ], [ 5, %sw.bb3.i.i ], [ 6, %sw.bb4.i.i ], [ 7, %entry.mtk_dai_etdm_disable_mclk.exit_crit_edge ]
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %arrayidx.i = getelementptr ptr, ptr %10, i32 %clk_id.0.i.ph.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  tail call void @mt8195_afe_disable_clk(ptr noundef %3, ptr noundef %12) #8
  br label %if.then

if.then:                                          ; preds = %mtk_dai_etdm_disable_mclk.exit, %entry.if.then_crit_edge
  %cg_id.0.i1028 = phi i32 [ %cg_id.0.i13, %mtk_dai_etdm_disable_mclk.exit ], [ 33, %entry.if.then_crit_edge ]
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %arrayidx = getelementptr ptr, ptr %14, i32 %cg_id.0.i1028
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  tail call void @mt8195_afe_disable_clk(ptr noundef %3, ptr noundef %16) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dai_hdmitx_dptx_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_priv, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.mt8195_afe_private, ptr %5, i32 0, i32 10, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i51 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %arrayidx.i.i51 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i51, align 4
  %arrayidx.i.i52 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx.i.i52 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.if.then.i.i_crit_edge

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %15, %entry.if.then.i.i_crit_edge ], [ %18, %for.inc.i.i.if.then.i.i_crit_edge ]
  %16 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #8, !range !754
  %add.i.i = or i32 %16, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.1.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %call4 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %retval.0.i.i) #8
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %20)
  %cmp = icmp eq i32 %20, 17
  br i1 %cmp, label %if.then, label %params_format.exit.if.end19.sink.split_crit_edge

params_format.exit.if.end19.sink.split_crit_edge: ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.sink.split

if.then:                                          ; preds = %params_format.exit
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %switch.tableidx = add i32 %13, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %23 = icmp ult i32 %switch.tableidx, 6
  br i1 %23, label %switch.lookup, label %if.then.mtk_dai_get_dptx_ch_en.exit_crit_edge

if.then.mtk_dai_get_dptx_ch_en.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_dai_get_dptx_ch_en.exit

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_dai_hdmitx_dptx_hw_params, i32 0, i32 %switch.tableidx
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mtk_dai_get_dptx_ch_en.exit

mtk_dai_get_dptx_ch_en.exit:                      ; preds = %switch.lookup, %if.then.mtk_dai_get_dptx_ch_en.exit_crit_edge
  %retval.0.i = phi i32 [ 768, %if.then.mtk_dai_get_dptx_ch_en.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 9560, i32 noundef 65280, i32 noundef %retval.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i = icmp ugt i32 %13, 2
  %cond.i = select i1 %cmp.i, i32 2, i32 0
  %call.i53 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 9560, i32 noundef 2, i32 noundef %cond.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call.i54 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %retval.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call.i54)
  %cmp.i55 = icmp slt i32 %call.i54, 17
  %cond.i56 = select i1 %cmp.i55, i32 4, i32 0
  %call.i57 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 9560, i32 noundef 4, i32 noundef %cond.i56, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br i1 %cmp.i, label %mtk_dai_get_dptx_ch_en.exit.if.end19.sink.split_crit_edge, label %mtk_dai_get_dptx_ch_en.exit.if.end19_crit_edge

mtk_dai_get_dptx_ch_en.exit.if.end19_crit_edge:   ; preds = %mtk_dai_get_dptx_ch_en.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

mtk_dai_get_dptx_ch_en.exit.if.end19.sink.split_crit_edge: ; preds = %mtk_dai_get_dptx_ch_en.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %mtk_dai_get_dptx_ch_en.exit.if.end19.sink.split_crit_edge, %params_format.exit.if.end19.sink.split_crit_edge
  %.sink = phi i32 [ 0, %mtk_dai_get_dptx_ch_en.exit.if.end19.sink.split_crit_edge ], [ 1, %params_format.exit.if.end19.sink.split_crit_edge ]
  %channels.0.ph = phi i32 [ 8, %mtk_dai_get_dptx_ch_en.exit.if.end19.sink.split_crit_edge ], [ %13, %params_format.exit.if.end19.sink.split_crit_edge ]
  %data_mode = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %9, i32 0, i32 1
  %29 = ptrtoint ptr %data_mode to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink, ptr %data_mode, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %mtk_dai_get_dptx_ch_en.exit.if.end19_crit_edge
  %channels.0 = phi i32 [ 2, %mtk_dai_get_dptx_ch_en.exit.if.end19_crit_edge ], [ %channels.0.ph, %if.end19.sink.split ]
  %30 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id, align 4
  %call21 = tail call fastcc i32 @mtk_dai_etdm_mclk_configure(ptr noundef %3, i32 noundef %31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id, align 4
  %call25 = tail call fastcc i32 @mtk_dai_etdm_configure(ptr noundef %3, i32 noundef %11, i32 noundef %channels.0, i32 noundef %call4, i32 noundef %33)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end19.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end23 ], [ %call21, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dai_hdmitx_dptx_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_dai_hdmitx_dptx_trigger.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_dai_hdmitx_dptx_trigger, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !753

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_dai_hdmitx_dptx_trigger.__UNIQUE_ID_ddebug248, ptr noundef %5, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, i32 noundef %cmd, i32 noundef %7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.426)
  switch i32 %cmd, label %do.end.cleanup_crit_edge [
    i32 1, label %do.end.sw.bb_crit_edge
    i32 6, label %do.end.sw.bb_crit_edge51
    i32 0, label %do.end.sw.bb10_crit_edge
    i32 5, label %do.end.sw.bb10_crit_edge52
  ]

do.end.sw.bb10_crit_edge52:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

do.end.sw.bb10_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

do.end.sw.bb_crit_edge51:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge51
  %id4 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %9 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %10)
  %cmp = icmp eq i32 %10, 17
  br i1 %cmp, label %if.then5, label %sw.bb.if.end7_crit_edge

sw.bb.if.end7_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 9560, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %13 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %id4, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %sw.bb.if.end7_crit_edge
  %14 = phi i32 [ %.pr, %if.then5 ], [ %10, %sw.bb.if.end7_crit_edge ]
  %platform_priv.i = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 25
  %15 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %platform_priv.i, align 4
  %arrayidx.i = getelementptr %struct.mt8195_afe_private, ptr %16, i32 0, i32 10, i32 %14
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %afe_ctrl_lock.i = getelementptr inbounds %struct.mt8195_afe_private, ptr %16, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %afe_ctrl_lock.i) #8
  %en_ref_cnt.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %en_ref_cnt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %en_ref_cnt.i, align 4
  %inc.i = add i32 %20, 1
  store i32 %inc.i, ptr %en_ref_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp6.i = icmp eq i32 %20, 0
  br i1 %cmp6.i, label %if.then.i, label %if.end7.mt8195_afe_enable_etdm.exit_crit_edge

if.end7.mt8195_afe_enable_etdm.exit_crit_edge:    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt8195_afe_enable_etdm.exit

if.then.i:                                        ; preds = %if.end7
  %switch.tableidx = add i32 %14, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %21 = icmp ult i32 %switch.tableidx, 6
  br i1 %21, label %switch.lookup, label %if.then.i.mt8195_afe_enable_etdm.exit_crit_edge

if.then.i.mt8195_afe_enable_etdm.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt8195_afe_enable_etdm.exit

switch.lookup:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_dai_hdmitx_dptx_trigger, i32 0, i32 %switch.tableidx
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load = load i32, ptr %switch.gep, align 4
  %regmap.i = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef %switch.load, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %mt8195_afe_enable_etdm.exit

mt8195_afe_enable_etdm.exit:                      ; preds = %switch.lookup, %if.then.i.mt8195_afe_enable_etdm.exit_crit_edge, %if.end7.mt8195_afe_enable_etdm.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %switch.lookup ], [ 0, %if.end7.mt8195_afe_enable_etdm.exit_crit_edge ], [ -22, %if.then.i.mt8195_afe_enable_etdm.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %afe_ctrl_lock.i, i32 noundef %call2.i) #8
  br label %cleanup

sw.bb10:                                          ; preds = %do.end.sw.bb10_crit_edge, %do.end.sw.bb10_crit_edge52
  %id11 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %25 = ptrtoint ptr %id11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id11, align 4
  %platform_priv.i30 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 25
  %27 = ptrtoint ptr %platform_priv.i30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %platform_priv.i30, align 4
  %arrayidx.i31 = getelementptr %struct.mt8195_afe_private, ptr %28, i32 0, i32 10, i32 %26
  %29 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i31, align 4
  %afe_ctrl_lock.i32 = getelementptr inbounds %struct.mt8195_afe_private, ptr %28, i32 0, i32 7
  %call2.i33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %afe_ctrl_lock.i32) #8
  %en_ref_cnt.i34 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %30, i32 0, i32 15
  %31 = ptrtoint ptr %en_ref_cnt.i34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %en_ref_cnt.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp5.not.i = icmp eq i32 %32, 0
  br i1 %cmp5.not.i, label %sw.bb10.mt8195_afe_disable_etdm.exit_crit_edge, label %if.then.i35

sw.bb10.mt8195_afe_disable_etdm.exit_crit_edge:   ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt8195_afe_disable_etdm.exit

if.then.i35:                                      ; preds = %sw.bb10
  %dec.i = add i32 %32, -1
  %33 = ptrtoint ptr %en_ref_cnt.i34 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %dec.i, ptr %en_ref_cnt.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp9.i = icmp eq i32 %dec.i, 0
  br i1 %cmp9.i, label %if.then11.i, label %if.then.i35.mt8195_afe_disable_etdm.exit_crit_edge

if.then.i35.mt8195_afe_disable_etdm.exit_crit_edge: ; preds = %if.then.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt8195_afe_disable_etdm.exit

if.then11.i:                                      ; preds = %if.then.i35
  %switch.tableidx48 = add i32 %26, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx48)
  %34 = icmp ult i32 %switch.tableidx48, 6
  br i1 %34, label %switch.lookup47, label %if.then11.i.mt8195_afe_disable_etdm.exit_crit_edge

if.then11.i.mt8195_afe_disable_etdm.exit_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt8195_afe_disable_etdm.exit

switch.lookup47:                                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep49 = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_dai_hdmitx_dptx_trigger.401, i32 0, i32 %switch.tableidx48
  %35 = ptrtoint ptr %switch.gep49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %switch.load50 = load i32, ptr %switch.gep49, align 4
  %regmap.i41 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %36 = ptrtoint ptr %regmap.i41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i41, align 4
  %call.i.i42 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef %switch.load50, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %mt8195_afe_disable_etdm.exit

mt8195_afe_disable_etdm.exit:                     ; preds = %switch.lookup47, %if.then11.i.mt8195_afe_disable_etdm.exit_crit_edge, %if.then.i35.mt8195_afe_disable_etdm.exit_crit_edge, %sw.bb10.mt8195_afe_disable_etdm.exit_crit_edge
  %ret.0.i44 = phi i32 [ 0, %switch.lookup47 ], [ 0, %if.then.i35.mt8195_afe_disable_etdm.exit_crit_edge ], [ 0, %sw.bb10.mt8195_afe_disable_etdm.exit_crit_edge ], [ -22, %if.then11.i.mt8195_afe_disable_etdm.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %afe_ctrl_lock.i32, i32 noundef %call2.i33) #8
  %38 = ptrtoint ptr %id11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %39)
  %cmp14 = icmp eq i32 %39, 17
  br i1 %cmp14, label %if.then15, label %mt8195_afe_disable_etdm.exit.cleanup_crit_edge

mt8195_afe_disable_etdm.exit.cleanup_crit_edge:   ; preds = %mt8195_afe_disable_etdm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %mt8195_afe_disable_etdm.exit
  call void @__sanitizer_cov_trace_pc() #10
  %regmap16 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %40 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap16, align 4
  %call.i45 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 9560, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %mt8195_afe_disable_etdm.exit.cleanup_crit_edge, %mt8195_afe_enable_etdm.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ %ret.0.i44, %if.then15 ], [ %ret.0.i44, %mt8195_afe_disable_etdm.exit.cleanup_crit_edge ], [ %ret.0.i, %mt8195_afe_enable_etdm.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8195_afe_get_default_mclk_source_by_rate(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8195_afe_get_mclk_source_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8195_afe_enable_clk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt8195_afe_disable_clk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_dai_etdm_mclk_configure(ptr noundef %afe, i32 noundef %dai_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %arrayidx = getelementptr %struct.mt8195_afe_private, ptr %1, i32 0, i32 10, i32 %dai_id
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %switch.tableidx = add i32 %dai_id, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 5
  br i1 %4, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.mtk_dai_etdm_mclk_configure, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep129 = getelementptr inbounds [5 x i32], ptr @switch.table.mtk_dai_etdm_mclk_configure.402, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep129 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load130 = load i32, ptr %switch.gep129, align 4
  %switch.gep131 = getelementptr inbounds [5 x i32], ptr @switch.table.mtk_dai_etdm_mclk_configure.403, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep131 to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load132 = load i32, ptr %switch.gep131, align 4
  %mclk_dir = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %mclk_dir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mclk_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp7 = icmp eq i32 %9, 1
  %spec.select = select i1 %cmp7, i32 65536, i32 0
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 2
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %switch.load132, i32 noundef 65536, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %mclk_freq = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mclk_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %switch.lookup
  %mclk_apll = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %mclk_apll to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mclk_apll, align 4
  %call13 = tail call i32 @mt8195_afe_get_mclk_source_clk_id(i32 noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then12.cleanup_crit_edge, label %if.end16

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.then12
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %arrayidx17 = getelementptr ptr, ptr %17, i32 %switch.load130
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx17, align 4
  %arrayidx19 = getelementptr ptr, ptr %17, i32 %call13
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx19, align 4
  %call20 = tail call i32 @mt8195_afe_set_clk_parent(ptr noundef %afe, ptr noundef %19, ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %arrayidx25 = getelementptr ptr, ptr %23, i32 %switch.load
  %24 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx25, align 4
  %26 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mclk_freq, align 4
  %call27 = tail call i32 @mt8195_afe_set_clk_rate(ptr noundef %afe, ptr noundef %25, i32 noundef %27) #8
  br label %cleanup

if.else:                                          ; preds = %switch.lookup
  %28 = ptrtoint ptr %mclk_dir to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mclk_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp29 = icmp eq i32 %29, 1
  br i1 %cmp29, label %do.body, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_dai_etdm_mclk_configure.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_dai_etdm_mclk_configure, %if.then35)) #8
          to label %cleanup [label %if.then35], !srcloc !753

if.then35:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_dai_etdm_mclk_configure.__UNIQUE_ID_ddebug241, ptr noundef %31, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %do.body, %if.else.cleanup_crit_edge, %if.end23, %if.end16.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then12.cleanup_crit_edge ], [ %call20, %if.end16.cleanup_crit_edge ], [ %call27, %if.end23 ], [ 0, %if.then35 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_dai_etdm_configure(ptr nocapture noundef readonly %afe, i32 noundef %rate, i32 noundef %channels, i32 noundef %bit_width, i32 noundef %dai_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %arrayidx = getelementptr %struct.mt8195_afe_private, ptr %1, i32 0, i32 10, i32 %dai_id
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %slave_mode1 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %bit_width)
  %cmp.inv.i = icmp ugt i32 %bit_width, 16
  %cond.i = select i1 %cmp.inv.i, i32 32, i32 16
  %switch.tableidx = add i32 %dai_id, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 6
  br i1 %4, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %5 = ptrtoint ptr %slave_mode1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %slave_mode1, align 4, !range !755
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_dai_etdm_configure, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %cowork_source_id = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %cowork_source_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cowork_source_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3.not = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %extract.t = icmp ne i8 %6, 0
  %spec.select = select i1 %cmp3.not, i1 true, i1 %extract.t
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_dai_etdm_configure.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_dai_etdm_configure, %if.then11)) #8
          to label %do.body19 [label %if.then11], !srcloc !753

if.then11:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %format = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %format, align 4
  %data_mode = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %data_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_mode, align 4
  %lrck_inv = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %lrck_inv to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %lrck_inv, align 1, !range !755
  %18 = zext i8 %17 to i32
  %lrck_width = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 7
  %19 = ptrtoint ptr %lrck_width to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lrck_width, align 4
  %bck_inv = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %bck_inv to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bck_inv, align 2, !range !755
  %23 = zext i8 %22 to i32
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %3, align 4
  %26 = ptrtoint ptr %slave_mode1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %slave_mode1, align 4, !range !755
  %28 = zext i8 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_dai_etdm_configure.__UNIQUE_ID_ddebug242, ptr noundef %11, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef %13, i32 noundef %15, i32 noundef %18, i32 noundef %20, i32 noundef %23, i32 noundef %25, i32 noundef %28) #8
  br label %do.body19

do.body19:                                        ; preds = %if.then11, %switch.lookup
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_dai_etdm_configure.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_dai_etdm_configure, %if.then31)) #8
          to label %do.end35 [label %if.then31], !srcloc !753

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %dev32 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %29 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev32, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_dai_etdm_configure.__UNIQUE_ID_ddebug243, ptr noundef %30, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef %rate, i32 noundef %channels, i32 noundef %bit_width, i32 noundef %dai_id) #8
  br label %do.end35

do.end35:                                         ; preds = %if.then31, %do.body19
  %data_mode36 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %data_mode36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_mode36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp37 = icmp eq i32 %32, 0
  br i1 %cmp37, label %cond.true, label %do.end35.cond.end_crit_edge

do.end35.cond.end_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %channels)
  %cmp.i = icmp ugt i32 %channels, 16
  br i1 %cmp.i, label %cond.true.cond.end_crit_edge, label %if.else.i

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.else.i:                                        ; preds = %cond.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %channels)
  %cmp1.i = icmp ugt i32 %channels, 8
  br i1 %cmp1.i, label %if.else.i.cond.end_crit_edge, label %if.else3.i

if.else.i.cond.end_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %channels)
  %cmp4.i = icmp ugt i32 %channels, 4
  br i1 %cmp4.i, label %if.else3.i.cond.end_crit_edge, label %if.else6.i

if.else3.i.cond.end_crit_edge:                    ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.else6.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %channels)
  %cmp7.i = icmp ugt i32 %channels, 2
  %..i = select i1 %cmp7.i, i32 4, i32 2
  br label %cond.end

cond.end:                                         ; preds = %if.else6.i, %if.else3.i.cond.end_crit_edge, %if.else.i.cond.end_crit_edge, %cond.true.cond.end_crit_edge, %do.end35.cond.end_crit_edge
  %cond = phi i32 [ 2, %do.end35.cond.end_crit_edge ], [ 24, %cond.true.cond.end_crit_edge ], [ 16, %if.else.i.cond.end_crit_edge ], [ 8, %if.else3.i.cond.end_crit_edge ], [ %..i, %if.else6.i ]
  %mul = mul i32 %cond.i, %rate
  %mul40 = mul i32 %mul, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 24576000, i32 %mul40)
  %cmp41 = icmp ugt i32 %mul40, 24576000
  br i1 %cmp41, label %do.end46, label %if.end48

do.end46:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev47 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %33 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev47, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.25, i32 noundef %mul40) #11
  br label %cleanup

if.end48:                                         ; preds = %cond.end
  %sub = shl i32 %bit_width, 11
  %shl = add i32 %sub, -2048
  %sub51 = shl nuw nsw i32 %cond.i, 16
  %shl52 = add nsw i32 %sub51, -65536
  %or53 = or i32 %shl52, %shl
  %format55 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 5
  %35 = ptrtoint ptr %format55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %format55, align 4
  %shl56 = shl i32 %36, 6
  %sub59 = shl nuw nsw i32 %cond, 23
  %shl60 = add nsw i32 %sub59, -8388608
  %or57 = or i32 %or53, %shl60
  %or61 = or i32 %or57, %shl56
  br i1 %spec.select, label %if.then64, label %if.end48.if.end77_crit_edge

if.end48.if.end77_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then64:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %dai_id)
  %cmp65 = icmp eq i32 %dai_id, 20
  br i1 %cmp65, label %land.lhs.true, label %if.then64.if.end75_crit_edge

if.then64.if.end75_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

land.lhs.true:                                    ; preds = %if.then64
  %37 = ptrtoint ptr %cowork_source_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cowork_source_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp68 = icmp eq i32 %38, 0
  br i1 %cmp68, label %do.end73, label %land.lhs.true.if.end75_crit_edge

land.lhs.true.if.end75_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

do.end73:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %dev74 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %39 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev74, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.25, i32 noundef 20) #11
  br label %cleanup

if.end75:                                         ; preds = %land.lhs.true.if.end75_crit_edge, %if.then64.if.end75_crit_edge
  %or76 = or i32 %or61, 32
  br label %if.end77

if.end77:                                         ; preds = %if.end75, %if.end48.if.end77_crit_edge
  %val.0 = phi i32 [ %or76, %if.end75 ], [ %or61, %if.end48.if.end77_crit_edge ]
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 2
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef %switch.load, i32 noundef 262142432, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %43 = and i32 %dai_id, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %43)
  %switch = icmp eq i32 %43, 18
  br i1 %switch, label %if.then82, label %if.else

if.then82:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mtk_dai_etdm_in_configure(ptr noundef %afe, i32 noundef %rate, i32 noundef %channels, i32 noundef %dai_id)
  br label %cleanup

if.else:                                          ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mtk_dai_etdm_out_configure(ptr noundef %afe, i32 noundef %rate, i32 noundef %channels, i32 noundef %dai_id)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then82, %do.end73, %do.end46, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end46 ], [ -22, %do.end73 ], [ 0, %if.else ], [ 0, %if.then82 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8195_afe_get_mclk_source_clk_id(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8195_afe_set_clk_parent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8195_afe_set_clk_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_dai_etdm_in_configure(ptr nocapture noundef readonly %afe, i32 noundef %rate, i32 noundef %channels, i32 noundef %dai_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %arrayidx = getelementptr %struct.mt8195_afe_private, ptr %1, i32 0, i32 10, i32 %dai_id
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %slave_mode1 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %slave_mode1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %slave_mode1, align 4, !range !755
  %data_mode2 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %data_mode2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_mode2, align 4
  %lrck_width3 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %lrck_width3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lrck_width3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_dai_etdm_in_configure.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_dai_etdm_in_configure, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !753

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_dai_etdm_in_configure.__UNIQUE_ID_ddebug239, ptr noundef %11, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %rate, i32 noundef %channels, i32 noundef %dai_id) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %switch.tableidx = add i32 %dai_id, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %12 = icmp ult i32 %switch.tableidx, 6
  br i1 %12, label %switch.lookup, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %do.end
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_dai_etdm_in_configure, i32 0, i32 %switch.tableidx
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep39 = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_dai_etdm_in_configure.404, i32 0, i32 %switch.tableidx
  %14 = ptrtoint ptr %switch.gep39 to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load40 = load i32, ptr %switch.gep39, align 4
  %switch.gep41 = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_dai_etdm_in_configure.405, i32 0, i32 %switch.tableidx
  %15 = ptrtoint ptr %switch.gep41 to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load42 = load i32, ptr %switch.gep41, align 4
  %switch.gep43 = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_dai_etdm_in_configure.406, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep43 to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load44 = load i32, ptr %switch.gep43, align 4
  %switch.gep45 = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_dai_etdm_in_configure.407, i32 0, i32 %switch.tableidx
  %17 = ptrtoint ptr %switch.gep45 to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load46 = load i32, ptr %switch.gep45, align 4
  %cowork_source_id = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 11
  %18 = ptrtoint ptr %cowork_source_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cowork_source_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp11.not = icmp ne i32 %19, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %extract.t = icmp ne i8 %5, 0
  %spec.select = select i1 %cmp11.not, i1 true, i1 %extract.t
  br i1 %spec.select, label %if.then15, label %if.else

if.then15:                                        ; preds = %switch.lookup
  %20 = zext i32 %dai_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.427)
  switch i32 %dai_id, label %if.then15.if.end18_crit_edge [
    i32 18, label %if.then15.sw.epilog.i_crit_edge
    i32 19, label %sw.bb4.i
  ]

if.then15.sw.epilog.i_crit_edge:                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then15.if.end18_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

sw.bb4.i:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb4.i, %if.then15.sw.epilog.i_crit_edge
  %mode.1.i = phi i32 [ 269, %sw.bb4.i ], [ 268, %if.then15.sw.epilog.i_crit_edge ]
  %reg.0.i = phi i32 [ 8856, %sw.bb4.i ], [ 8852, %if.then15.sw.epilog.i_crit_edge ]
  %regmap.i = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 2
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %reg.0.i, i32 noundef 287, i32 noundef %mode.1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end18

if.else:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp.not.i = icmp eq i32 %rate, 0
  br i1 %cmp.not.i, label %if.else.if.end.i_crit_edge, label %if.then.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @mt8195_afe_fs_timing(i32 noundef %rate) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.else.if.end.i_crit_edge
  %spec.select.i = phi i32 [ %call.i, %if.then.i ], [ 12, %if.else.if.end.i_crit_edge ]
  %spec.select1.i = phi i32 [ %call.i, %if.then.i ], [ 13, %if.else.if.end.i_crit_edge ]
  %23 = zext i32 %dai_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.428)
  switch i32 %dai_id, label %if.end.i.if.end18_crit_edge [
    i32 18, label %if.end.i.sw.epilog.i10_crit_edge
    i32 19, label %sw.bb4.i4
  ]

if.end.i.sw.epilog.i10_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i10

if.end.i.if.end18_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

sw.bb4.i4:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i10

sw.epilog.i10:                                    ; preds = %sw.bb4.i4, %if.end.i.sw.epilog.i10_crit_edge
  %mode.1.i5 = phi i32 [ %spec.select1.i, %sw.bb4.i4 ], [ %spec.select.i, %if.end.i.sw.epilog.i10_crit_edge ]
  %reg.0.i6 = phi i32 [ 8856, %sw.bb4.i4 ], [ 8852, %if.end.i.sw.epilog.i10_crit_edge ]
  %or.i7 = or i32 %mode.1.i5, 256
  %regmap.i8 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 2
  %24 = ptrtoint ptr %regmap.i8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i8, align 4
  %call.i.i9 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %reg.0.i6, i32 noundef 287, i32 noundef %or.i7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end18

if.end18:                                         ; preds = %sw.epilog.i10, %if.end.i.if.end18_crit_edge, %sw.epilog.i, %if.then15.if.end18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp19.not = icmp eq i32 %9, 0
  %sub = shl i32 %9, 20
  %shl = add i32 %sub, -1048576
  %val.0 = select i1 %cmp19.not, i32 0, i32 %shl
  %mask.0 = select i1 %cmp19.not, i32 0, i32 -1074790400
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 2
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call.i12 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef %switch.load, i32 noundef %mask.0, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br i1 %spec.select, label %if.end18.if.end34_crit_edge, label %if.then25

if.end18.if.end34_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then25:                                        ; preds = %if.end18
  %28 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.429)
  switch i32 %rate, label %if.else31 [
    i32 352800, label %if.then25.if.end34_crit_edge
    i32 384000, label %if.then25.if.end34_crit_edge47
  ]

if.then25.if.end34_crit_edge47:                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then25.if.end34_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.else31:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.end34:                                         ; preds = %if.else31, %if.then25.if.end34_crit_edge, %if.then25.if.end34_crit_edge47, %if.end18.if.end34_crit_edge
  %val.1 = phi i32 [ 0, %if.end18.if.end34_crit_edge ], [ 96, %if.else31 ], [ 128, %if.then25.if.end34_crit_edge ], [ 128, %if.then25.if.end34_crit_edge47 ]
  %mask.1 = phi i32 [ -2146467840, %if.end18.if.end34_crit_edge ], [ -2146466848, %if.else31 ], [ -2146466848, %if.then25.if.end34_crit_edge ], [ -2146466848, %if.then25.if.end34_crit_edge47 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp36 = icmp eq i32 %7, 1
  %sub38 = shl i32 %channels, 15
  %shl39 = add i32 %sub38, 2147450880
  %or40 = or i32 %shl39, -2147483648
  %or41 = select i1 %cmp36, i32 %or40, i32 0
  %val.2 = or i32 %val.1, %or41
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call.i13 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %switch.load40, i32 noundef %mask.1, i32 noundef %val.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channels)
  %cmp4629.not = icmp eq i32 %channels, 0
  br i1 %cmp4629.not, label %if.end34.for.end_crit_edge, label %if.end34.for.body_crit_edge

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  br label %for.body

if.end34.for.end_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end34.for.body_crit_edge
  %i.031 = phi i32 [ %add56, %for.inc.for.body_crit_edge ], [ 0, %if.end34.for.body_crit_edge ]
  %val.330 = phi i32 [ %val.4, %for.inc.for.body_crit_edge ], [ 0, %if.end34.for.body_crit_edge ]
  %arrayidx47 = getelementptr %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 14, i32 %i.031
  %31 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx47, align 1, !range !755
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool48.not = icmp eq i8 %32, 0
  br i1 %tobool48.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %add = or i32 %i.031, 1
  %arrayidx50 = getelementptr %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 14, i32 %add
  %33 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx50, align 1, !range !755
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool51.not = icmp eq i8 %34, 0
  br i1 %tobool51.not, label %land.lhs.true.for.inc_crit_edge, label %if.then52

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then52:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %35 = lshr exact i32 %i.031, 1
  %and = and i32 %35, 15
  %shl53 = shl nuw nsw i32 1, %and
  %or54 = or i32 %shl53, %val.330
  br label %for.inc

for.inc:                                          ; preds = %if.then52, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %val.4 = phi i32 [ %or54, %if.then52 ], [ %val.330, %land.lhs.true.for.inc_crit_edge ], [ %val.330, %for.body.for.inc_crit_edge ]
  %add56 = add i32 %i.031, 2
  %cmp46 = icmp ult i32 %add56, %channels
  br i1 %cmp46, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end34.for.end_crit_edge
  %val.3.lcssa = phi i32 [ 0, %if.end34.for.end_crit_edge ], [ %val.4, %for.inc.for.end_crit_edge ]
  br i1 %spec.select, label %if.then68.critedge, label %if.then58

if.then58:                                        ; preds = %for.end
  %36 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.430)
  switch i32 %rate, label %if.then58.get_etdm_fs_timing.exit_crit_edge [
    i32 8000, label %if.then58.if.then.i14_crit_edge
    i32 12000, label %if.then.fold.split.i
    i32 16000, label %if.then.fold.split10.i
    i32 24000, label %if.then.fold.split11.i
    i32 32000, label %if.then.fold.split12.i
    i32 48000, label %if.then.fold.split13.i
    i32 96000, label %if.then.fold.split14.i
    i32 192000, label %if.then.fold.split15.i
    i32 384000, label %if.then.fold.split16.i
    i32 11025, label %if.then.fold.split17.i
    i32 22050, label %if.then.fold.split18.i
    i32 44100, label %if.then.fold.split19.i
    i32 88200, label %if.then.fold.split20.i
    i32 176400, label %if.then.fold.split21.i
    i32 352800, label %if.then.fold.split22.i
  ]

if.then58.if.then.i14_crit_edge:                  ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i14

if.then58.get_etdm_fs_timing.exit_crit_edge:      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_etdm_fs_timing.exit

if.then.fold.split.i:                             ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i14

if.then.fold.split10.i:                           ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i14

if.then.fold.split11.i:                           ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i14

if.then.fold.split12.i:                           ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i14

if.then.fold.split13.i:                           ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i14

if.then.fold.split14.i:                           ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i14

if.then.fold.split15.i:                           ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i14

if.then.fold.split16.i:                           ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i14

if.then.fold.split17.i:                           ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i14

if.then.fold.split18.i:                           ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i14

if.then.fold.split19.i:                           ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i14

if.then.fold.split20.i:                           ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i14

if.then.fold.split21.i:                           ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i14

if.then.fold.split22.i:                           ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i14

if.then.i14:                                      ; preds = %if.then.fold.split22.i, %if.then.fold.split21.i, %if.then.fold.split20.i, %if.then.fold.split19.i, %if.then.fold.split18.i, %if.then.fold.split17.i, %if.then.fold.split16.i, %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split13.i, %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split10.i, %if.then.fold.split.i, %if.then58.if.then.i14_crit_edge
  %i.08.lcssa.i = phi i32 [ 0, %if.then58.if.then.i14_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split10.i ], [ 3, %if.then.fold.split11.i ], [ 4, %if.then.fold.split12.i ], [ 5, %if.then.fold.split13.i ], [ 6, %if.then.fold.split14.i ], [ 7, %if.then.fold.split15.i ], [ 8, %if.then.fold.split16.i ], [ 9, %if.then.fold.split17.i ], [ 10, %if.then.fold.split18.i ], [ 11, %if.then.fold.split19.i ], [ 12, %if.then.fold.split20.i ], [ 13, %if.then.fold.split21.i ], [ 14, %if.then.fold.split22.i ]
  %reg_value.i = getelementptr [15 x %struct.mtk_dai_etdm_rate], ptr @mt8195_etdm_rates, i32 0, i32 %i.08.lcssa.i, i32 1
  %37 = ptrtoint ptr %reg_value.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %reg_value.i, align 4
  %phi.bo = shl i32 %38, 26
  br label %get_etdm_fs_timing.exit

get_etdm_fs_timing.exit:                          ; preds = %if.then.i14, %if.then58.get_etdm_fs_timing.exit_crit_edge
  %retval.0.i15 = phi i32 [ %phi.bo, %if.then.i14 ], [ -1476395008, %if.then58.get_etdm_fs_timing.exit_crit_edge ]
  %or62 = or i32 %retval.0.i15, %val.3.lcssa
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call.i16 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef %switch.load42, i32 noundef 2080440319, i32 noundef %or62, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %lrck_inv78 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 3
  %41 = ptrtoint ptr %lrck_inv78 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %lrck_inv78, align 1, !range !755
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool79.not = icmp eq i8 %42, 0
  %val.7 = select i1 %tobool79.not, i32 0, i32 524288
  %bck_inv83 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 4
  %43 = ptrtoint ptr %bck_inv83 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bck_inv83, align 2, !range !755
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool84.not = icmp eq i8 %44, 0
  %or86 = or i32 %val.7, 262144
  %spec.select1 = select i1 %tobool84.not, i32 %val.7, i32 %or86
  br label %if.end88

if.then68.critedge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %call.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef %switch.load42, i32 noundef 65535, i32 noundef %val.3.lcssa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %lrck_inv = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 3
  %47 = ptrtoint ptr %lrck_inv to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %lrck_inv, align 1, !range !755
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool69.not = icmp eq i8 %48, 0
  %val.6 = select i1 %tobool69.not, i32 0, i32 131072
  %bck_inv = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 4
  %49 = ptrtoint ptr %bck_inv to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bck_inv, align 2, !range !755
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool73.not = icmp eq i8 %50, 0
  %or75 = or i32 %val.6, 65536
  %spec.select2 = select i1 %tobool73.not, i32 %val.6, i32 %or75
  br label %if.end88

if.end88:                                         ; preds = %if.then68.critedge, %get_etdm_fs_timing.exit
  %val.8 = phi i32 [ %spec.select2, %if.then68.critedge ], [ %spec.select1, %get_etdm_fs_timing.exit ]
  %51 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap, align 4
  %call.i18 = tail call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef %switch.load44, i32 noundef 983040, i32 noundef %val.8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br i1 %cmp4629.not, label %if.end88.for.end138_crit_edge, label %for.body95.lr.ph

if.end88.for.end138_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end138

for.body95.lr.ph:                                 ; preds = %if.end88
  %sub105 = add i32 %channels, -2
  br label %for.body95

for.body95:                                       ; preds = %for.inc136.for.body95_crit_edge, %for.body95.lr.ph
  %i.135 = phi i32 [ 0, %for.body95.lr.ph ], [ %add137, %for.inc136.for.body95_crit_edge ]
  %val.934 = phi i32 [ 0, %for.body95.lr.ph ], [ %val.11, %for.inc136.for.body95_crit_edge ]
  %arrayidx97 = getelementptr %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 14, i32 %i.135
  %53 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx97, align 1, !range !755
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool98.not = icmp eq i8 %54, 0
  %add126 = or i32 %i.135, 1
  %arrayidx127 = getelementptr %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 14, i32 %add126
  %55 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx127, align 1, !range !755
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool128.not = icmp eq i8 %56, 0
  br i1 %tobool98.not, label %land.lhs.true124, label %land.lhs.true99

land.lhs.true99:                                  ; preds = %for.body95
  br i1 %tobool128.not, label %if.then104, label %land.lhs.true99.for.inc136_crit_edge

land.lhs.true99.for.inc136_crit_edge:             ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc136

if.then104:                                       ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_cmp4(i32 %i.135, i32 %sub105)
  %cmp106 = icmp eq i32 %i.135, %sub105
  br i1 %cmp106, label %if.then107, label %if.else109

if.then107:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #10
  %or108 = or i32 %val.934, -2147483648
  %.pre = lshr exact i32 %i.135, 1
  %.pre38 = and i32 %.pre, 15
  br label %if.end115

if.else109:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #10
  %57 = lshr exact i32 %i.135, 1
  %and111 = and i32 %57, 15
  %add112 = or i32 %and111, 16
  %shl113 = shl nuw i32 1, %add112
  %or114 = or i32 %shl113, %val.934
  br label %if.end115

if.end115:                                        ; preds = %if.else109, %if.then107
  %and117.pre-phi = phi i32 [ %and111, %if.else109 ], [ %.pre38, %if.then107 ]
  %val.10 = phi i32 [ %or114, %if.else109 ], [ %or108, %if.then107 ]
  %shl118 = shl nuw nsw i32 1, %and117.pre-phi
  %or119 = or i32 %val.10, %shl118
  br label %for.inc136

land.lhs.true124:                                 ; preds = %for.body95
  br i1 %tobool128.not, label %land.lhs.true124.for.inc136_crit_edge, label %if.then129

land.lhs.true124.for.inc136_crit_edge:            ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc136

if.then129:                                       ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #10
  %58 = lshr exact i32 %i.135, 1
  %and131 = and i32 %58, 15
  %shl132 = shl nuw nsw i32 1, %and131
  %or133 = or i32 %shl132, %val.934
  br label %for.inc136

for.inc136:                                       ; preds = %if.then129, %land.lhs.true124.for.inc136_crit_edge, %if.end115, %land.lhs.true99.for.inc136_crit_edge
  %val.11 = phi i32 [ %or133, %if.then129 ], [ %val.934, %land.lhs.true124.for.inc136_crit_edge ], [ %or119, %if.end115 ], [ %val.934, %land.lhs.true99.for.inc136_crit_edge ]
  %add137 = add i32 %i.135, 2
  %cmp94 = icmp ult i32 %add137, %channels
  br i1 %cmp94, label %for.inc136.for.body95_crit_edge, label %for.inc136.for.end138_crit_edge

for.inc136.for.end138_crit_edge:                  ; preds = %for.inc136
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end138

for.inc136.for.body95_crit_edge:                  ; preds = %for.inc136
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body95

for.end138:                                       ; preds = %for.inc136.for.end138_crit_edge, %if.end88.for.end138_crit_edge
  %val.9.lcssa = phi i32 [ 0, %if.end88.for.end138_crit_edge ], [ %val.11, %for.inc136.for.end138_crit_edge ]
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap, align 4
  %call.i19 = tail call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef %switch.load46, i32 noundef -1, i32 noundef %val.9.lcssa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end138, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_dai_etdm_out_configure(ptr nocapture noundef readonly %afe, i32 noundef %rate, i32 noundef %channels, i32 noundef %dai_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %arrayidx = getelementptr %struct.mt8195_afe_private, ptr %1, i32 0, i32 10, i32 %dai_id
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %slave_mode1 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %slave_mode1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %slave_mode1, align 4, !range !755
  %lrck_width2 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %lrck_width2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lrck_width2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_dai_etdm_out_configure.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_dai_etdm_out_configure, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !753

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_dai_etdm_out_configure.__UNIQUE_ID_ddebug240, ptr noundef %9, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %rate, i32 noundef %channels, i32 noundef %dai_id) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %switch.tableidx = add i32 %dai_id, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 6
  br i1 %10, label %switch.lookup, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %do.end
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_dai_etdm_out_configure, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep27 = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_dai_etdm_out_configure.408, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load28 = load i32, ptr %switch.gep27, align 4
  %switch.gep29 = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_dai_etdm_out_configure.409, i32 0, i32 %switch.tableidx
  %13 = ptrtoint ptr %switch.gep29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load30 = load i32, ptr %switch.gep29, align 4
  %switch.gep31 = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_dai_etdm_out_configure.410, i32 0, i32 %switch.tableidx
  %14 = ptrtoint ptr %switch.gep31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load32 = load i32, ptr %switch.gep31, align 4
  %switch.gep33 = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_dai_etdm_out_configure.411, i32 0, i32 %switch.tableidx
  %15 = ptrtoint ptr %switch.gep33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load34 = load i32, ptr %switch.gep33, align 4
  %cowork_source_id = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 11
  %16 = ptrtoint ptr %cowork_source_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cowork_source_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp10.not = icmp ne i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %extract.t = icmp ne i8 %5, 0
  %spec.select = select i1 %cmp10.not, i1 true, i1 %extract.t
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 2
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %switch.load, i32 noundef 805306368, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp14.not = icmp eq i32 %7, 0
  %sub = shl i32 %7, 19
  %shl = add i32 %sub, -524288
  %val.0 = select i1 %cmp14.not, i32 0, i32 %shl
  %mask.0 = select i1 %cmp14.not, i32 0, i32 1073217536
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call.i12 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %switch.load28, i32 noundef %mask.0, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br i1 %spec.select, label %if.then21, label %if.else

if.then21:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call.i13 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef %switch.load30, i32 noundef 1610612736, i32 noundef 1610612736, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %dai_id)
  %switch.selectcmp.c7 = icmp eq i32 %dai_id, 21
  %switch.select.c8 = select i1 %switch.selectcmp.c7, i32 167772160, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %dai_id)
  %switch.selectcmp3.c9 = icmp eq i32 %dai_id, 20
  %switch.select4.c10 = select i1 %switch.selectcmp3.c9, i32 150994944, i32 %switch.select.c8
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call.i14 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %switch.load32, i32 noundef 520093696, i32 noundef %switch.select4.c10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %lrck_inv = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 3
  %26 = ptrtoint ptr %lrck_inv to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %lrck_inv, align 1, !range !755
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool44.not = icmp eq i8 %27, 0
  %spec.select1 = select i1 %tobool44.not, i32 0, i32 256
  %bck_inv = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 4
  %28 = ptrtoint ptr %bck_inv to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bck_inv, align 2, !range !755
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool48.not = icmp eq i8 %29, 0
  %or50 = or i32 %spec.select1, 128
  %spec.select5 = select i1 %tobool48.not, i32 %spec.select1, i32 %or50
  br label %if.end63

if.else:                                          ; preds = %switch.lookup
  %30 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.431)
  switch i32 %rate, label %if.else.get_etdm_fs_timing.exit_crit_edge [
    i32 8000, label %if.else.if.then.i_crit_edge
    i32 12000, label %if.then.fold.split.i
    i32 16000, label %if.then.fold.split10.i
    i32 24000, label %if.then.fold.split11.i
    i32 32000, label %if.then.fold.split12.i
    i32 48000, label %if.then.fold.split13.i
    i32 96000, label %if.then.fold.split14.i
    i32 192000, label %if.then.fold.split15.i
    i32 384000, label %if.then.fold.split16.i
    i32 11025, label %if.then.fold.split17.i
    i32 22050, label %if.then.fold.split18.i
    i32 44100, label %if.then.fold.split19.i
    i32 88200, label %if.then.fold.split20.i
    i32 176400, label %if.then.fold.split21.i
    i32 352800, label %if.then.fold.split22.i
  ]

if.else.if.then.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.else.get_etdm_fs_timing.exit_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_etdm_fs_timing.exit

if.then.fold.split.i:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split10.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split11.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split12.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split13.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split14.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split15.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split16.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split17.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split18.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split19.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split20.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split21.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split22.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split22.i, %if.then.fold.split21.i, %if.then.fold.split20.i, %if.then.fold.split19.i, %if.then.fold.split18.i, %if.then.fold.split17.i, %if.then.fold.split16.i, %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split13.i, %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split10.i, %if.then.fold.split.i, %if.else.if.then.i_crit_edge
  %i.08.lcssa.i = phi i32 [ 0, %if.else.if.then.i_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split10.i ], [ 3, %if.then.fold.split11.i ], [ 4, %if.then.fold.split12.i ], [ 5, %if.then.fold.split13.i ], [ 6, %if.then.fold.split14.i ], [ 7, %if.then.fold.split15.i ], [ 8, %if.then.fold.split16.i ], [ 9, %if.then.fold.split17.i ], [ 10, %if.then.fold.split18.i ], [ 11, %if.then.fold.split19.i ], [ 12, %if.then.fold.split20.i ], [ 13, %if.then.fold.split21.i ], [ 14, %if.then.fold.split22.i ]
  %reg_value.i = getelementptr [15 x %struct.mtk_dai_etdm_rate], ptr @mt8195_etdm_rates, i32 0, i32 %i.08.lcssa.i, i32 1
  %31 = ptrtoint ptr %reg_value.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg_value.i, align 4
  br label %get_etdm_fs_timing.exit

get_etdm_fs_timing.exit:                          ; preds = %if.then.i, %if.else.get_etdm_fs_timing.exit_crit_edge
  %retval.0.i15 = phi i32 [ %32, %if.then.i ], [ -22, %if.else.get_etdm_fs_timing.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %dai_id)
  %switch.selectcmp.c = icmp eq i32 %dai_id, 21
  %switch.select.c = select i1 %switch.selectcmp.c, i32 167772160, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %dai_id)
  %switch.selectcmp3.c = icmp eq i32 %dai_id, 20
  %switch.select4.c = select i1 %switch.selectcmp3.c, i32 150994944, i32 %switch.select.c
  %or38.c = or i32 %retval.0.i15, %switch.select4.c
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call.i16 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef %switch.load32, i32 noundef 520093727, i32 noundef %or38.c, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %lrck_inv53 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 3
  %35 = ptrtoint ptr %lrck_inv53 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %lrck_inv53, align 1, !range !755
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool54.not = icmp eq i8 %36, 0
  %spec.select2 = select i1 %tobool54.not, i32 0, i32 1024
  %bck_inv58 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %3, i32 0, i32 4
  %37 = ptrtoint ptr %bck_inv58 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bck_inv58, align 2, !range !755
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool59.not = icmp eq i8 %38, 0
  %or61 = or i32 %spec.select2, 512
  %spec.select6 = select i1 %tobool59.not, i32 %spec.select2, i32 %or61
  br label %if.end63

if.end63:                                         ; preds = %get_etdm_fs_timing.exit, %if.then21
  %val.4 = phi i32 [ %spec.select5, %if.then21 ], [ %spec.select6, %get_etdm_fs_timing.exit ]
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef %switch.load34, i32 noundef 1920, i32 noundef %val.4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8195_afe_fs_timing(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dai_etdm_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_dai_etdm_set_sysclk.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_dai_etdm_set_sysclk, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !753

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_dai_etdm_set_sysclk.__UNIQUE_ID_ddebug246, ptr noundef %7, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.40, i32 noundef %9, i32 noundef %freq, i32 noundef %dir) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i.i, align 4
  %platform_priv.i = getelementptr inbounds %struct.mtk_base_afe, ptr %13, i32 0, i32 25
  %14 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_priv.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i, align 4
  %arrayidx.i = getelementptr %struct.mt8195_afe_private, ptr %15, i32 0, i32 10, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %cowork_slv_count.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %cowork_slv_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cowork_slv_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 0
  br i1 %cmp.not.i, label %is_cowork_mode.exit, label %do.end.if.then6_crit_edge

do.end.if.then6_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

is_cowork_mode.exit:                              ; preds = %do.end
  %cowork_source_id.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %19, i32 0, i32 11
  %22 = ptrtoint ptr %cowork_source_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cowork_source_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp1.i.not = icmp eq i32 %23, 0
  br i1 %cmp1.i.not, label %is_cowork_mode.exit.if.end9_crit_edge, label %is_cowork_mode.exit.if.then6_crit_edge

is_cowork_mode.exit.if.then6_crit_edge:           ; preds = %is_cowork_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

is_cowork_mode.exit.if.end9_crit_edge:            ; preds = %is_cowork_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %is_cowork_mode.exit.if.then6_crit_edge, %do.end.if.then6_crit_edge
  %cowork_source_id.i25 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %19, i32 0, i32 11
  %24 = ptrtoint ptr %cowork_source_id.i25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cowork_source_id.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  %spec.select.i = select i1 %cmp.i, i32 %17, i32 %25
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %is_cowork_mode.exit.if.end9_crit_edge
  %dai_id.0 = phi i32 [ %spec.select.i, %if.then6 ], [ %17, %is_cowork_mode.exit.if.end9_crit_edge ]
  %arrayidx = getelementptr %struct.mt8195_afe_private, ptr %5, i32 0, i32 10, i32 %dai_id.0
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %mclk_dir = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %mclk_dir to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %dir, ptr %mclk_dir, align 4
  %29 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %platform_priv, align 4
  %arrayidx.i27 = getelementptr %struct.mt8195_afe_private, ptr %30, i32 0, i32 10, i32 %dai_id.0
  %31 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq)
  %cmp.i28 = icmp eq i32 %freq, 0
  br i1 %cmp.i28, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %mclk_freq.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %mclk_freq.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %mclk_freq.i, align 4
  br label %mtk_dai_etdm_cal_mclk.exit

if.end.i:                                         ; preds = %if.end9
  %call.i = tail call i32 @mt8195_afe_get_default_mclk_source_by_rate(i32 noundef %freq) #8
  %call1.i = tail call i32 @mt8195_afe_get_mclk_source_rate(ptr noundef %3, i32 noundef %call.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %freq)
  %cmp2.i = icmp slt i32 %call1.i, %freq
  br i1 %cmp2.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i29 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 1
  %34 = ptrtoint ptr %dev.i29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i29, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.16, i32 noundef %freq, i32 noundef %call1.i) #11
  br label %mtk_dai_etdm_cal_mclk.exit

if.end4.i:                                        ; preds = %if.end.i
  %rem.i = srem i32 %call1.i, %freq
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp5.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp5.not.i, label %if.end11.i, label %do.end9.i

do.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev10.i = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 1
  %36 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev10.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.21, i32 noundef %call.i) #11
  br label %mtk_dai_etdm_cal_mclk.exit

if.end11.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %mclk_apll.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %32, i32 0, i32 9
  %38 = ptrtoint ptr %mclk_apll.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call.i, ptr %mclk_apll.i, align 4
  %mclk_freq12.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %32, i32 0, i32 8
  %39 = ptrtoint ptr %mclk_freq12.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %freq, ptr %mclk_freq12.i, align 4
  br label %mtk_dai_etdm_cal_mclk.exit

mtk_dai_etdm_cal_mclk.exit:                       ; preds = %if.end11.i, %do.end9.i, %do.end.i, %if.then.i
  %retval.0.i30 = phi i32 [ 0, %if.then.i ], [ -22, %do.end.i ], [ -22, %do.end9.i ], [ 0, %if.end11.i ]
  ret i32 %retval.0.i30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dai_etdm_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_priv, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.mt8195_afe_private, ptr %5, i32 0, i32 10, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_dai_etdm_set_tdm_slot.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_dai_etdm_set_tdm_slot, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !753

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_dai_etdm_set_tdm_slot.__UNIQUE_ID_ddebug247, ptr noundef %11, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, i32 noundef %13, i32 noundef %slot_width) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %slots5 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %9, i32 0, i32 6
  %14 = ptrtoint ptr %slots5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %slots, ptr %slots5, align 4
  %lrck_width = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %9, i32 0, i32 7
  %15 = ptrtoint ptr %lrck_width to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %slot_width, ptr %lrck_width, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dai_etdm_startup(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_priv, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 4
  %arrayidx.i = getelementptr %struct.mt8195_afe_private, ptr %5, i32 0, i32 10, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %cowork_slv_count.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %cowork_slv_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cowork_slv_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i, label %is_cowork_mode.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

is_cowork_mode.exit:                              ; preds = %entry
  %cowork_source_id.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %9, i32 0, i32 11
  %12 = ptrtoint ptr %cowork_source_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cowork_source_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1.i.not = icmp eq i32 %13, 0
  br i1 %cmp1.i.not, label %if.else, label %is_cowork_mode.exit.if.then_crit_edge

is_cowork_mode.exit.if.then_crit_edge:            ; preds = %is_cowork_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %is_cowork_mode.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %cowork_source_id.i54 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %9, i32 0, i32 11
  %14 = ptrtoint ptr %cowork_source_id.i54 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cowork_source_id.i54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  %spec.select.i = select i1 %cmp.i, i32 %7, i32 %15
  %16 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.432)
  switch i32 %spec.select.i, label %if.then.if.end_crit_edge [
    i32 17, label %if.then.if.then5.sink.split_crit_edge
    i32 18, label %sw.bb1.i
    i32 19, label %sw.bb2.i
    i32 20, label %sw.bb3.i
    i32 21, label %sw.bb4.i
    i32 22, label %if.then.if.then5_crit_edge
  ]

if.then.if.then5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

if.then.if.then5.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.sink.split

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb1.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.sink.split

sw.bb2.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.sink.split

sw.bb3.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.sink.split

sw.bb4.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.sink.split

if.then5.sink.split:                              ; preds = %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then.if.then5.sink.split_crit_edge
  %.sink110 = phi i32 [ 6, %sw.bb4.i ], [ 5, %sw.bb3.i ], [ 4, %sw.bb2.i ], [ 3, %sw.bb1.i ], [ 7, %if.then.if.then5.sink.split_crit_edge ]
  %cg_id.0.i.ph.ph = phi i32 [ 31, %sw.bb4.i ], [ 32, %sw.bb3.i ], [ 29, %sw.bb2.i ], [ 30, %sw.bb1.i ], [ 33, %if.then.if.then5.sink.split_crit_edge ]
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  %arrayidx.i5696 = getelementptr ptr, ptr %18, i32 %.sink110
  %19 = ptrtoint ptr %arrayidx.i5696 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i5696, align 4
  %call1.i97 = tail call i32 @mt8195_afe_enable_clk(ptr noundef %3, ptr noundef %20) #8
  br label %if.then5

if.then5:                                         ; preds = %if.then5.sink.split, %if.then.if.then5_crit_edge
  %cg_id.0.i.ph = phi i32 [ 33, %if.then.if.then5_crit_edge ], [ %cg_id.0.i.ph.ph, %if.then5.sink.split ]
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 4
  %arrayidx = getelementptr ptr, ptr %22, i32 %cg_id.0.i.ph
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %call6 = tail call i32 @mt8195_afe_enable_clk(ptr noundef %3, ptr noundef %24) #8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %arrayidx7 = getelementptr %struct.mt8195_afe_private, ptr %5, i32 0, i32 10, i32 %spec.select.i
  %25 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx7, align 4
  %cowork_slv_count = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %cowork_slv_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cowork_slv_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp893.not = icmp eq i32 %28, 0
  br i1 %cmp893.not, label %if.end.if.end26_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.094 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx9 = getelementptr %struct.mtk_dai_etdm_priv, ptr %26, i32 0, i32 13, i32 %i.094
  %29 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx9, align 4
  %switch.tableidx = add i32 %30, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %31 = icmp ult i32 %switch.tableidx, 6
  br i1 %31, label %switch.lookup, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

switch.lookup:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_dai_etdm_startup, i32 0, i32 %switch.tableidx
  %32 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load = load i32, ptr %switch.gep, align 4
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %5, align 4
  %arrayidx14 = getelementptr ptr, ptr %34, i32 %switch.load
  %35 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx14, align 4
  %call15 = tail call i32 @mt8195_afe_enable_clk(ptr noundef %3, ptr noundef %36) #8
  br label %for.inc

for.inc:                                          ; preds = %switch.lookup, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.094, 1
  %37 = ptrtoint ptr %cowork_slv_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cowork_slv_count, align 4
  %cmp8 = icmp ult i32 %inc, %38
  br i1 %cmp8, label %for.inc.for.body_crit_edge, label %for.inc.if.end26_crit_edge

for.inc.if.end26_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.else:                                          ; preds = %is_cowork_mode.exit
  %switch.tableidx112 = add i32 %7, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx112)
  %39 = icmp ult i32 %switch.tableidx112, 5
  br i1 %39, label %switch.lookup111, label %if.else.mtk_dai_etdm_enable_mclk.exit74_crit_edge

if.else.mtk_dai_etdm_enable_mclk.exit74_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_dai_etdm_enable_mclk.exit74

switch.lookup111:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep113 = getelementptr inbounds [5 x i32], ptr @switch.table.mtk_dai_etdm_startup.412, i32 0, i32 %switch.tableidx112
  %40 = ptrtoint ptr %switch.gep113 to i32
  call void @__asan_load4_noabort(i32 %40)
  %switch.load114 = load i32, ptr %switch.gep113, align 4
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %5, align 4
  %arrayidx.i71 = getelementptr ptr, ptr %42, i32 %switch.load114
  %43 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i71, align 4
  %call1.i72 = tail call i32 @mt8195_afe_enable_clk(ptr noundef %3, ptr noundef %44) #8
  br label %mtk_dai_etdm_enable_mclk.exit74

mtk_dai_etdm_enable_mclk.exit74:                  ; preds = %switch.lookup111, %if.else.mtk_dai_etdm_enable_mclk.exit74_crit_edge
  %45 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %id.i, align 4
  %switch.tableidx116 = add i32 %46, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx116)
  %47 = icmp ult i32 %switch.tableidx116, 6
  br i1 %47, label %switch.lookup115, label %mtk_dai_etdm_enable_mclk.exit74.if.end26_crit_edge

mtk_dai_etdm_enable_mclk.exit74.if.end26_crit_edge: ; preds = %mtk_dai_etdm_enable_mclk.exit74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

switch.lookup115:                                 ; preds = %mtk_dai_etdm_enable_mclk.exit74
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep117 = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_dai_etdm_startup.413, i32 0, i32 %switch.tableidx116
  %48 = ptrtoint ptr %switch.gep117 to i32
  call void @__asan_load4_noabort(i32 %48)
  %switch.load118 = load i32, ptr %switch.gep117, align 4
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %5, align 4
  %arrayidx23 = getelementptr ptr, ptr %50, i32 %switch.load118
  %51 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx23, align 4
  %call24 = tail call i32 @mt8195_afe_enable_clk(ptr noundef %3, ptr noundef %52) #8
  br label %if.end26

if.end26:                                         ; preds = %switch.lookup115, %mtk_dai_etdm_enable_mclk.exit74.if.end26_crit_edge, %for.inc.if.end26_crit_edge, %if.end.if.end26_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_dai_etdm_shutdown(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_priv, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 4
  %arrayidx.i = getelementptr %struct.mt8195_afe_private, ptr %5, i32 0, i32 10, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %cowork_slv_count.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %cowork_slv_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cowork_slv_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i, label %is_cowork_mode.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

is_cowork_mode.exit:                              ; preds = %entry
  %cowork_source_id.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %9, i32 0, i32 11
  %12 = ptrtoint ptr %cowork_source_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cowork_source_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1.i.not = icmp eq i32 %13, 0
  br i1 %cmp1.i.not, label %if.else, label %is_cowork_mode.exit.if.then_crit_edge

is_cowork_mode.exit.if.then_crit_edge:            ; preds = %is_cowork_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %is_cowork_mode.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %cowork_source_id.i51 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %9, i32 0, i32 11
  %14 = ptrtoint ptr %cowork_source_id.i51 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cowork_source_id.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  %spec.select.i = select i1 %cmp.i, i32 %7, i32 %15
  %switch.tableidx = add i32 %spec.select.i, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %16 = icmp ult i32 %switch.tableidx, 6
  br i1 %16, label %switch.lookup, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_dai_etdm_shutdown, i32 0, i32 %switch.tableidx
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load i32, ptr %switch.gep, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 4
  %arrayidx = getelementptr ptr, ptr %19, i32 %switch.load
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  tail call void @mt8195_afe_disable_clk(ptr noundef %3, ptr noundef %21) #8
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %if.then.if.end_crit_edge
  %arrayidx5 = getelementptr %struct.mt8195_afe_private, ptr %5, i32 0, i32 10, i32 %spec.select.i
  %22 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx5, align 4
  %cowork_slv_count = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %cowork_slv_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cowork_slv_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp689.not = icmp eq i32 %25, 0
  br i1 %cmp689.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.090 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx7 = getelementptr %struct.mtk_dai_etdm_priv, ptr %23, i32 0, i32 13, i32 %i.090
  %26 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx7, align 4
  %switch.tableidx93 = add i32 %27, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx93)
  %28 = icmp ult i32 %switch.tableidx93, 6
  br i1 %28, label %switch.lookup92, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

switch.lookup92:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep94 = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_dai_etdm_shutdown.414, i32 0, i32 %switch.tableidx93
  %29 = ptrtoint ptr %switch.gep94 to i32
  call void @__asan_load4_noabort(i32 %29)
  %switch.load95 = load i32, ptr %switch.gep94, align 4
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %5, align 4
  %arrayidx12 = getelementptr ptr, ptr %31, i32 %switch.load95
  %32 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx12, align 4
  tail call void @mt8195_afe_disable_clk(ptr noundef %3, ptr noundef %33) #8
  br label %for.inc

for.inc:                                          ; preds = %switch.lookup92, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.090, 1
  %34 = ptrtoint ptr %cowork_slv_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cowork_slv_count, align 4
  %cmp6 = icmp ult i32 %inc, %35
  br i1 %cmp6, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %36 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %platform_priv, align 4
  %38 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.433)
  switch i32 %spec.select.i, label %for.end.if.end23_crit_edge [
    i32 17, label %for.end.if.end23.sink.split_crit_edge
    i32 18, label %sw.bb1.i.i
    i32 19, label %sw.bb2.i.i
    i32 20, label %sw.bb3.i.i
    i32 21, label %sw.bb4.i.i
  ]

for.end.if.end23.sink.split_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.sink.split

for.end.if.end23_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

sw.bb1.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.sink.split

sw.bb2.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.sink.split

sw.bb3.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.sink.split

sw.bb4.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.sink.split

if.else:                                          ; preds = %is_cowork_mode.exit
  %switch.tableidx97 = add i32 %7, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx97)
  %39 = icmp ult i32 %switch.tableidx97, 6
  br i1 %39, label %switch.lookup96, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

switch.lookup96:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep98 = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_dai_etdm_shutdown.415, i32 0, i32 %switch.tableidx97
  %40 = ptrtoint ptr %switch.gep98 to i32
  call void @__asan_load4_noabort(i32 %40)
  %switch.load99 = load i32, ptr %switch.gep98, align 4
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %5, align 4
  %arrayidx19 = getelementptr ptr, ptr %42, i32 %switch.load99
  %43 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx19, align 4
  tail call void @mt8195_afe_disable_clk(ptr noundef %3, ptr noundef %44) #8
  br label %if.end20

if.end20:                                         ; preds = %switch.lookup96, %if.else.if.end20_crit_edge
  %45 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %id.i, align 4
  %47 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %platform_priv, align 4
  %49 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.434)
  switch i32 %46, label %if.end20.if.end23_crit_edge [
    i32 17, label %if.end20.if.end23.sink.split_crit_edge
    i32 18, label %sw.bb1.i.i71
    i32 19, label %sw.bb2.i.i72
    i32 20, label %sw.bb3.i.i73
    i32 21, label %sw.bb4.i.i74
  ]

if.end20.if.end23.sink.split_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.sink.split

if.end20.if.end23_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

sw.bb1.i.i71:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.sink.split

sw.bb2.i.i72:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.sink.split

sw.bb3.i.i73:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.sink.split

sw.bb4.i.i74:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %sw.bb4.i.i74, %sw.bb3.i.i73, %sw.bb2.i.i72, %sw.bb1.i.i71, %if.end20.if.end23.sink.split_crit_edge, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %for.end.if.end23.sink.split_crit_edge
  %.sink91 = phi ptr [ %37, %sw.bb4.i.i ], [ %37, %sw.bb3.i.i ], [ %37, %sw.bb2.i.i ], [ %37, %sw.bb1.i.i ], [ %37, %for.end.if.end23.sink.split_crit_edge ], [ %48, %sw.bb4.i.i74 ], [ %48, %sw.bb3.i.i73 ], [ %48, %sw.bb2.i.i72 ], [ %48, %sw.bb1.i.i71 ], [ %48, %if.end20.if.end23.sink.split_crit_edge ]
  %clk_id.0.i.ph.i75.sink = phi i32 [ 6, %sw.bb4.i.i ], [ 5, %sw.bb3.i.i ], [ 4, %sw.bb2.i.i ], [ 3, %sw.bb1.i.i ], [ 7, %for.end.if.end23.sink.split_crit_edge ], [ 6, %sw.bb4.i.i74 ], [ 5, %sw.bb3.i.i73 ], [ 4, %sw.bb2.i.i72 ], [ 3, %sw.bb1.i.i71 ], [ 7, %if.end20.if.end23.sink.split_crit_edge ]
  %50 = ptrtoint ptr %.sink91 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %.sink91, align 4
  %arrayidx.i76 = getelementptr ptr, ptr %51, i32 %clk_id.0.i.ph.i75.sink
  %52 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i76, align 4
  tail call void @mt8195_afe_disable_clk(ptr noundef %3, ptr noundef %53) #8
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %if.end20.if.end23_crit_edge, %for.end.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dai_etdm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %3, %entry.if.then.i.i.i_crit_edge ], [ %6, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %4 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !754
  %add.i.i.i = or i32 %4, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.1.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #8
  %arrayidx.i.i84 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %arrayidx.i.i84 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i84, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %12, i32 0, i32 25
  %13 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %platform_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_dai_etdm_hw_params.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_dai_etdm_hw_params, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !753

if.then:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %17 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i = icmp eq i32 %18, 0
  %.str.45..str.46.i = select i1 %cmp.i, ptr @.str.45, ptr @.str.46
  %arrayidx.i.i85 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 5
  %19 = ptrtoint ptr %arrayidx.i.i85 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i85, align 4
  %arrayidx.i.i86 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 7
  %21 = ptrtoint ptr %arrayidx.i.i86 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i86, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_dai_etdm_hw_params.__UNIQUE_ID_ddebug244, ptr noundef %16, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, ptr noundef nonnull %.str.45..str.46.i, i32 noundef %20, i32 noundef %22) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %params_width.exit
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i.i, align 4
  %platform_priv.i = getelementptr inbounds %struct.mtk_base_afe, ptr %26, i32 0, i32 25
  %27 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %platform_priv.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %29 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id.i, align 4
  %arrayidx.i = getelementptr %struct.mt8195_afe_private, ptr %28, i32 0, i32 10, i32 %30
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %cowork_slv_count.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %cowork_slv_count.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cowork_slv_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.not.i = icmp eq i32 %34, 0
  br i1 %cmp.not.i, label %is_cowork_mode.exit, label %do.end.if.then12_crit_edge

do.end.if.then12_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

is_cowork_mode.exit:                              ; preds = %do.end
  %cowork_source_id.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %32, i32 0, i32 11
  %35 = ptrtoint ptr %cowork_source_id.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cowork_source_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp1.i.not = icmp eq i32 %36, 0
  br i1 %cmp1.i.not, label %if.else, label %is_cowork_mode.exit.if.then12_crit_edge

is_cowork_mode.exit.if.then12_crit_edge:          ; preds = %is_cowork_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then12:                                        ; preds = %is_cowork_mode.exit.if.then12_crit_edge, %do.end.if.then12_crit_edge
  %cowork_source_id.i92 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %32, i32 0, i32 11
  %37 = ptrtoint ptr %cowork_source_id.i92 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cowork_source_id.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i93 = icmp eq i32 %38, 0
  %spec.select.i = select i1 %cmp.i93, i32 %30, i32 %38
  %call14 = tail call fastcc i32 @mtk_dai_etdm_mclk_configure(ptr noundef %12, i32 noundef %spec.select.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.then12
  %call18 = tail call fastcc i32 @mtk_dai_etdm_configure(ptr noundef %12, i32 noundef %1, i32 noundef %8, i32 noundef %call1.i, i32 noundef %spec.select.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %arrayidx = getelementptr %struct.mt8195_afe_private, ptr %14, i32 0, i32 10, i32 %spec.select.i
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 4
  %cowork_slv_count = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %40, i32 0, i32 12
  %41 = ptrtoint ptr %cowork_slv_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cowork_slv_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp103.not = icmp eq i32 %42, 0
  br i1 %cmp103.not, label %if.end21.cleanup_crit_edge, label %for.body.lr.ph

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end21
  %regmap.i = getelementptr inbounds %struct.mtk_base_afe, ptr %12, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0104 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx22 = getelementptr %struct.mtk_dai_etdm_priv, ptr %40, i32 0, i32 13, i32 %i.0104
  %43 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx22, align 4
  %call23 = tail call fastcc i32 @mtk_dai_etdm_configure(ptr noundef %12, i32 noundef %1, i32 noundef %8, i32 noundef %call1.i, i32 noundef %44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %for.body
  %45 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %platform_priv, align 4
  %arrayidx.i95 = getelementptr %struct.mt8195_afe_private, ptr %46, i32 0, i32 10, i32 %44
  %47 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i95, align 4
  %cowork_source_id.i96 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %48, i32 0, i32 11
  %49 = ptrtoint ptr %cowork_source_id.i96 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cowork_source_id.i96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i97 = icmp eq i32 %50, 0
  br i1 %cmp.i97, label %if.end26.for.inc_crit_edge, label %if.end.i

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i:                                         ; preds = %if.end26
  %switch.tableidx109 = add i32 %50, -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx109)
  %51 = icmp ult i32 %switch.tableidx109, 5
  br i1 %51, label %if.end5.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %switch.tableidx = add i32 %44, -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %52 = icmp ult i32 %switch.tableidx, 5
  br i1 %52, label %switch.lookup, label %if.end5.i.for.inc_crit_edge

if.end5.i.for.inc_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

switch.lookup:                                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %slave_mode.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %48, i32 0, i32 2
  %53 = ptrtoint ptr %slave_mode.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %slave_mode.i, align 4, !range !755
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i.i = icmp eq i8 %54, 0
  %switch.table.mtk_dai_etdm_hw_params.416.switch.table.mtk_dai_etdm_hw_params = select i1 %tobool.not.i.i, ptr @switch.table.mtk_dai_etdm_hw_params.416, ptr @switch.table.mtk_dai_etdm_hw_params
  %switch.gep110 = getelementptr inbounds [5 x i32], ptr %switch.table.mtk_dai_etdm_hw_params.416.switch.table.mtk_dai_etdm_hw_params, i32 0, i32 %switch.tableidx109
  %55 = ptrtoint ptr %switch.gep110 to i32
  call void @__asan_load4_noabort(i32 %55)
  %switch.load111 = load i32, ptr %switch.gep110, align 4
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.mtk_dai_etdm_hw_params.417, i32 0, i32 %switch.tableidx
  %56 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %56)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep112 = getelementptr inbounds [5 x i32], ptr @switch.table.mtk_dai_etdm_hw_params.418, i32 0, i32 %switch.tableidx
  %57 = ptrtoint ptr %switch.gep112 to i32
  call void @__asan_load4_noabort(i32 %57)
  %switch.load113 = load i32, ptr %switch.gep112, align 4
  %switch.gep114 = getelementptr inbounds [5 x i32], ptr @switch.table.mtk_dai_etdm_hw_params.419, i32 0, i32 %switch.tableidx
  %58 = ptrtoint ptr %switch.gep114 to i32
  call void @__asan_load4_noabort(i32 %58)
  %switch.load115 = load i32, ptr %switch.gep114, align 4
  %shl13.i = shl nuw nsw i32 %switch.load111, %switch.load
  %59 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef %switch.load113, i32 noundef %switch.load115, i32 noundef %shl13.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %for.inc

for.inc:                                          ; preds = %switch.lookup, %if.end5.i.for.inc_crit_edge, %if.end26.for.inc_crit_edge
  %inc = add nuw i32 %i.0104, 1
  %61 = ptrtoint ptr %cowork_slv_count to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cowork_slv_count, align 4
  %cmp = icmp ult i32 %inc, %62
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.else:                                          ; preds = %is_cowork_mode.exit
  %call31 = tail call fastcc i32 @mtk_dai_etdm_mclk_configure(ptr noundef %12, i32 noundef %30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %id.i, align 4
  %call36 = tail call fastcc i32 @mtk_dai_etdm_configure(ptr noundef %12, i32 noundef %1, i32 noundef %8, i32 noundef %call1.i, i32 noundef %64)
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.else.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then12.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.then12.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ %call31, %if.else.cleanup_crit_edge ], [ %call36, %if.end34 ], [ 0, %if.end21.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ %call23, %for.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dai_etdm_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_dai_etdm_trigger.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_dai_etdm_trigger, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !753

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_dai_etdm_trigger.__UNIQUE_ID_ddebug245, ptr noundef %7, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.47, i32 noundef %cmd, i32 noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.435)
  switch i32 %cmd, label %do.end.sw.epilog_crit_edge [
    i32 1, label %do.end.sw.bb_crit_edge
    i32 6, label %do.end.sw.bb_crit_edge220
    i32 0, label %do.end.sw.bb15_crit_edge
    i32 5, label %do.end.sw.bb15_crit_edge221
  ]

do.end.sw.bb15_crit_edge221:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb15

do.end.sw.bb15_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb15

do.end.sw.bb_crit_edge220:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge220
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i.i, align 4
  %platform_priv.i = getelementptr inbounds %struct.mtk_base_afe, ptr %14, i32 0, i32 25
  %15 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %platform_priv.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %17 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id.i, align 4
  %arrayidx.i = getelementptr %struct.mt8195_afe_private, ptr %16, i32 0, i32 10, i32 %18
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %cowork_slv_count.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %cowork_slv_count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cowork_slv_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not.i = icmp eq i32 %22, 0
  br i1 %cmp.not.i, label %is_cowork_mode.exit, label %sw.bb.if.then6_crit_edge

sw.bb.if.then6_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

is_cowork_mode.exit:                              ; preds = %sw.bb
  %cowork_source_id.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %20, i32 0, i32 11
  %23 = ptrtoint ptr %cowork_source_id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cowork_source_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp1.i.not = icmp eq i32 %24, 0
  br i1 %cmp1.i.not, label %if.else, label %is_cowork_mode.exit.if.then6_crit_edge

is_cowork_mode.exit.if.then6_crit_edge:           ; preds = %is_cowork_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.then6:                                         ; preds = %is_cowork_mode.exit.if.then6_crit_edge, %sw.bb.if.then6_crit_edge
  %cowork_source_id.i76 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %20, i32 0, i32 11
  %25 = ptrtoint ptr %cowork_source_id.i76 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cowork_source_id.i76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i = icmp eq i32 %26, 0
  %spec.select.i = select i1 %cmp.i, i32 %18, i32 %26
  %arrayidx = getelementptr %struct.mt8195_afe_private, ptr %5, i32 0, i32 10, i32 %spec.select.i
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %29 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %platform_priv, align 4
  %arrayidx.i78 = getelementptr %struct.mt8195_afe_private, ptr %30, i32 0, i32 10, i32 %spec.select.i
  %31 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i78, align 4
  %afe_ctrl_lock.i = getelementptr inbounds %struct.mt8195_afe_private, ptr %30, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %afe_ctrl_lock.i) #8
  %en_ref_cnt.i = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %32, i32 0, i32 15
  %33 = ptrtoint ptr %en_ref_cnt.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %en_ref_cnt.i, align 4
  %inc.i = add i32 %34, 1
  store i32 %inc.i, ptr %en_ref_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp6.i = icmp eq i32 %34, 0
  br i1 %cmp6.i, label %if.then.i, label %if.then6.mt8195_afe_enable_etdm.exit_crit_edge

if.then6.mt8195_afe_enable_etdm.exit_crit_edge:   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt8195_afe_enable_etdm.exit

if.then.i:                                        ; preds = %if.then6
  %switch.tableidx = add i32 %spec.select.i, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %35 = icmp ult i32 %switch.tableidx, 6
  br i1 %35, label %switch.lookup, label %if.then.i.mt8195_afe_enable_etdm.exit_crit_edge

if.then.i.mt8195_afe_enable_etdm.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt8195_afe_enable_etdm.exit

switch.lookup:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_dai_etdm_trigger, i32 0, i32 %switch.tableidx
  %36 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %36)
  %switch.load = load i32, ptr %switch.gep, align 4
  %regmap.i = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %37 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef %switch.load, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %mt8195_afe_enable_etdm.exit

mt8195_afe_enable_etdm.exit:                      ; preds = %switch.lookup, %if.then.i.mt8195_afe_enable_etdm.exit_crit_edge, %if.then6.mt8195_afe_enable_etdm.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %switch.lookup ], [ 0, %if.then6.mt8195_afe_enable_etdm.exit_crit_edge ], [ -22, %if.then.i.mt8195_afe_enable_etdm.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %afe_ctrl_lock.i, i32 noundef %call2.i) #8
  %cowork_slv_count = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %28, i32 0, i32 12
  %39 = ptrtoint ptr %cowork_slv_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cowork_slv_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp196.not = icmp eq i32 %40, 0
  br i1 %cmp196.not, label %mt8195_afe_enable_etdm.exit.sw.epilog_crit_edge, label %for.body.lr.ph

mt8195_afe_enable_etdm.exit.sw.epilog_crit_edge:  ; preds = %mt8195_afe_enable_etdm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.lr.ph:                                   ; preds = %mt8195_afe_enable_etdm.exit
  %regmap.i92 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %mt8195_afe_enable_etdm.exit96.for.body_crit_edge, %for.body.lr.ph
  %ret.0198 = phi i32 [ %ret.0.i, %for.body.lr.ph ], [ %or11, %mt8195_afe_enable_etdm.exit96.for.body_crit_edge ]
  %i.0197 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %mt8195_afe_enable_etdm.exit96.for.body_crit_edge ]
  %arrayidx9 = getelementptr %struct.mtk_dai_etdm_priv, ptr %28, i32 0, i32 13, i32 %i.0197
  %41 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx9, align 4
  %43 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %platform_priv, align 4
  %arrayidx.i80 = getelementptr %struct.mt8195_afe_private, ptr %44, i32 0, i32 10, i32 %42
  %45 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i80, align 4
  %afe_ctrl_lock.i81 = getelementptr inbounds %struct.mt8195_afe_private, ptr %44, i32 0, i32 7
  %call2.i82 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %afe_ctrl_lock.i81) #8
  %en_ref_cnt.i83 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %46, i32 0, i32 15
  %47 = ptrtoint ptr %en_ref_cnt.i83 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %en_ref_cnt.i83, align 4
  %inc.i84 = add i32 %48, 1
  store i32 %inc.i84, ptr %en_ref_cnt.i83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp6.i85 = icmp eq i32 %48, 0
  br i1 %cmp6.i85, label %if.then.i86, label %for.body.mt8195_afe_enable_etdm.exit96_crit_edge

for.body.mt8195_afe_enable_etdm.exit96_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt8195_afe_enable_etdm.exit96

if.then.i86:                                      ; preds = %for.body
  %switch.tableidx201 = add i32 %42, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx201)
  %49 = icmp ult i32 %switch.tableidx201, 6
  br i1 %49, label %switch.lookup200, label %if.then.i86.mt8195_afe_enable_etdm.exit96_crit_edge

if.then.i86.mt8195_afe_enable_etdm.exit96_crit_edge: ; preds = %if.then.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt8195_afe_enable_etdm.exit96

switch.lookup200:                                 ; preds = %if.then.i86
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep202 = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_dai_etdm_trigger.420, i32 0, i32 %switch.tableidx201
  %50 = ptrtoint ptr %switch.gep202 to i32
  call void @__asan_load4_noabort(i32 %50)
  %switch.load203 = load i32, ptr %switch.gep202, align 4
  %51 = ptrtoint ptr %regmap.i92 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap.i92, align 4
  %call.i.i93 = tail call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef %switch.load203, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %mt8195_afe_enable_etdm.exit96

mt8195_afe_enable_etdm.exit96:                    ; preds = %switch.lookup200, %if.then.i86.mt8195_afe_enable_etdm.exit96_crit_edge, %for.body.mt8195_afe_enable_etdm.exit96_crit_edge
  %ret.0.i95 = phi i32 [ 0, %switch.lookup200 ], [ 0, %for.body.mt8195_afe_enable_etdm.exit96_crit_edge ], [ -22, %if.then.i86.mt8195_afe_enable_etdm.exit96_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %afe_ctrl_lock.i81, i32 noundef %call2.i82) #8
  %or11 = or i32 %ret.0.i95, %ret.0198
  %inc = add nuw i32 %i.0197, 1
  %53 = ptrtoint ptr %cowork_slv_count to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cowork_slv_count, align 4
  %cmp = icmp ult i32 %inc, %54
  br i1 %cmp, label %mt8195_afe_enable_etdm.exit96.for.body_crit_edge, label %mt8195_afe_enable_etdm.exit96.sw.epilog_crit_edge

mt8195_afe_enable_etdm.exit96.sw.epilog_crit_edge: ; preds = %mt8195_afe_enable_etdm.exit96
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

mt8195_afe_enable_etdm.exit96.for.body_crit_edge: ; preds = %mt8195_afe_enable_etdm.exit96
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.else:                                          ; preds = %is_cowork_mode.exit
  %55 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %platform_priv, align 4
  %arrayidx.i98 = getelementptr %struct.mt8195_afe_private, ptr %56, i32 0, i32 10, i32 %18
  %57 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i98, align 4
  %afe_ctrl_lock.i99 = getelementptr inbounds %struct.mt8195_afe_private, ptr %56, i32 0, i32 7
  %call2.i100 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %afe_ctrl_lock.i99) #8
  %en_ref_cnt.i101 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %58, i32 0, i32 15
  %59 = ptrtoint ptr %en_ref_cnt.i101 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %en_ref_cnt.i101, align 4
  %inc.i102 = add i32 %60, 1
  store i32 %inc.i102, ptr %en_ref_cnt.i101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp6.i103 = icmp eq i32 %60, 0
  br i1 %cmp6.i103, label %if.then.i104, label %if.else.mt8195_afe_enable_etdm.exit114_crit_edge

if.else.mt8195_afe_enable_etdm.exit114_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt8195_afe_enable_etdm.exit114

if.then.i104:                                     ; preds = %if.else
  %switch.tableidx205 = add i32 %18, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx205)
  %61 = icmp ult i32 %switch.tableidx205, 6
  br i1 %61, label %switch.lookup204, label %if.then.i104.mt8195_afe_enable_etdm.exit114_crit_edge

if.then.i104.mt8195_afe_enable_etdm.exit114_crit_edge: ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt8195_afe_enable_etdm.exit114

switch.lookup204:                                 ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep206 = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_dai_etdm_trigger.421, i32 0, i32 %switch.tableidx205
  %62 = ptrtoint ptr %switch.gep206 to i32
  call void @__asan_load4_noabort(i32 %62)
  %switch.load207 = load i32, ptr %switch.gep206, align 4
  %regmap.i110 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %63 = ptrtoint ptr %regmap.i110 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap.i110, align 4
  %call.i.i111 = tail call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef %switch.load207, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %mt8195_afe_enable_etdm.exit114

mt8195_afe_enable_etdm.exit114:                   ; preds = %switch.lookup204, %if.then.i104.mt8195_afe_enable_etdm.exit114_crit_edge, %if.else.mt8195_afe_enable_etdm.exit114_crit_edge
  %ret.0.i113 = phi i32 [ 0, %switch.lookup204 ], [ 0, %if.else.mt8195_afe_enable_etdm.exit114_crit_edge ], [ -22, %if.then.i104.mt8195_afe_enable_etdm.exit114_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %afe_ctrl_lock.i99, i32 noundef %call2.i100) #8
  br label %sw.epilog

sw.bb15:                                          ; preds = %do.end.sw.bb15_crit_edge, %do.end.sw.bb15_crit_edge221
  %65 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i116 = getelementptr inbounds %struct.device, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %driver_data.i.i.i116 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %driver_data.i.i.i116, align 4
  %platform_priv.i117 = getelementptr inbounds %struct.mtk_base_afe, ptr %68, i32 0, i32 25
  %69 = ptrtoint ptr %platform_priv.i117 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %platform_priv.i117, align 4
  %id.i118 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %71 = ptrtoint ptr %id.i118 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %id.i118, align 4
  %arrayidx.i119 = getelementptr %struct.mt8195_afe_private, ptr %70, i32 0, i32 10, i32 %72
  %73 = ptrtoint ptr %arrayidx.i119 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i119, align 4
  %cowork_slv_count.i120 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %74, i32 0, i32 12
  %75 = ptrtoint ptr %cowork_slv_count.i120 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cowork_slv_count.i120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.not.i121 = icmp eq i32 %76, 0
  br i1 %cmp.not.i121, label %is_cowork_mode.exit126, label %sw.bb15.if.then18_crit_edge

sw.bb15.if.then18_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

is_cowork_mode.exit126:                           ; preds = %sw.bb15
  %cowork_source_id.i122 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %74, i32 0, i32 11
  %77 = ptrtoint ptr %cowork_source_id.i122 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cowork_source_id.i122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp1.i123.not = icmp eq i32 %78, 0
  br i1 %cmp1.i123.not, label %if.else35, label %is_cowork_mode.exit126.if.then18_crit_edge

is_cowork_mode.exit126.if.then18_crit_edge:       ; preds = %is_cowork_mode.exit126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

if.then18:                                        ; preds = %is_cowork_mode.exit126.if.then18_crit_edge, %sw.bb15.if.then18_crit_edge
  %cowork_source_id.i132 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %74, i32 0, i32 11
  %79 = ptrtoint ptr %cowork_source_id.i132 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cowork_source_id.i132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp.i133 = icmp eq i32 %80, 0
  %spec.select.i134 = select i1 %cmp.i133, i32 %72, i32 %80
  %arrayidx21 = getelementptr %struct.mt8195_afe_private, ptr %5, i32 0, i32 10, i32 %spec.select.i134
  %81 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx21, align 4
  %cowork_slv_count23 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %82, i32 0, i32 12
  %83 = ptrtoint ptr %cowork_slv_count23 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cowork_slv_count23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp24193.not = icmp eq i32 %84, 0
  br i1 %cmp24193.not, label %if.then18.for.end32_crit_edge, label %for.body25.lr.ph

if.then18.for.end32_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end32

for.body25.lr.ph:                                 ; preds = %if.then18
  %regmap.i146 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  br label %for.body25

for.body25:                                       ; preds = %mt8195_afe_disable_etdm.exit.for.body25_crit_edge, %for.body25.lr.ph
  %ret.1195 = phi i32 [ 0, %for.body25.lr.ph ], [ %or29, %mt8195_afe_disable_etdm.exit.for.body25_crit_edge ]
  %i.1194 = phi i32 [ 0, %for.body25.lr.ph ], [ %inc31, %mt8195_afe_disable_etdm.exit.for.body25_crit_edge ]
  %arrayidx27 = getelementptr %struct.mtk_dai_etdm_priv, ptr %82, i32 0, i32 13, i32 %i.1194
  %85 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx27, align 4
  %87 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %platform_priv, align 4
  %arrayidx.i136 = getelementptr %struct.mt8195_afe_private, ptr %88, i32 0, i32 10, i32 %86
  %89 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i136, align 4
  %afe_ctrl_lock.i137 = getelementptr inbounds %struct.mt8195_afe_private, ptr %88, i32 0, i32 7
  %call2.i138 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %afe_ctrl_lock.i137) #8
  %en_ref_cnt.i139 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %90, i32 0, i32 15
  %91 = ptrtoint ptr %en_ref_cnt.i139 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %en_ref_cnt.i139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp5.not.i = icmp eq i32 %92, 0
  br i1 %cmp5.not.i, label %for.body25.mt8195_afe_disable_etdm.exit_crit_edge, label %if.then.i140

for.body25.mt8195_afe_disable_etdm.exit_crit_edge: ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt8195_afe_disable_etdm.exit

if.then.i140:                                     ; preds = %for.body25
  %dec.i = add i32 %92, -1
  %93 = ptrtoint ptr %en_ref_cnt.i139 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %dec.i, ptr %en_ref_cnt.i139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp9.i = icmp eq i32 %dec.i, 0
  br i1 %cmp9.i, label %if.then11.i, label %if.then.i140.mt8195_afe_disable_etdm.exit_crit_edge

if.then.i140.mt8195_afe_disable_etdm.exit_crit_edge: ; preds = %if.then.i140
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt8195_afe_disable_etdm.exit

if.then11.i:                                      ; preds = %if.then.i140
  %switch.tableidx209 = add i32 %86, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx209)
  %94 = icmp ult i32 %switch.tableidx209, 6
  br i1 %94, label %switch.lookup208, label %if.then11.i.mt8195_afe_disable_etdm.exit_crit_edge

if.then11.i.mt8195_afe_disable_etdm.exit_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt8195_afe_disable_etdm.exit

switch.lookup208:                                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep210 = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_dai_etdm_trigger.422, i32 0, i32 %switch.tableidx209
  %95 = ptrtoint ptr %switch.gep210 to i32
  call void @__asan_load4_noabort(i32 %95)
  %switch.load211 = load i32, ptr %switch.gep210, align 4
  %96 = ptrtoint ptr %regmap.i146 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap.i146, align 4
  %call.i.i147 = tail call i32 @regmap_update_bits_base(ptr noundef %97, i32 noundef %switch.load211, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %mt8195_afe_disable_etdm.exit

mt8195_afe_disable_etdm.exit:                     ; preds = %switch.lookup208, %if.then11.i.mt8195_afe_disable_etdm.exit_crit_edge, %if.then.i140.mt8195_afe_disable_etdm.exit_crit_edge, %for.body25.mt8195_afe_disable_etdm.exit_crit_edge
  %ret.0.i149 = phi i32 [ 0, %switch.lookup208 ], [ 0, %if.then.i140.mt8195_afe_disable_etdm.exit_crit_edge ], [ 0, %for.body25.mt8195_afe_disable_etdm.exit_crit_edge ], [ -22, %if.then11.i.mt8195_afe_disable_etdm.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %afe_ctrl_lock.i137, i32 noundef %call2.i138) #8
  %or29 = or i32 %ret.0.i149, %ret.1195
  %inc31 = add nuw i32 %i.1194, 1
  %98 = ptrtoint ptr %cowork_slv_count23 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cowork_slv_count23, align 4
  %cmp24 = icmp ult i32 %inc31, %99
  br i1 %cmp24, label %mt8195_afe_disable_etdm.exit.for.body25_crit_edge, label %mt8195_afe_disable_etdm.exit.for.end32_crit_edge

mt8195_afe_disable_etdm.exit.for.end32_crit_edge: ; preds = %mt8195_afe_disable_etdm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end32

mt8195_afe_disable_etdm.exit.for.body25_crit_edge: ; preds = %mt8195_afe_disable_etdm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body25

for.end32:                                        ; preds = %mt8195_afe_disable_etdm.exit.for.end32_crit_edge, %if.then18.for.end32_crit_edge
  %ret.1.lcssa = phi i32 [ 0, %if.then18.for.end32_crit_edge ], [ %or29, %mt8195_afe_disable_etdm.exit.for.end32_crit_edge ]
  %100 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %platform_priv, align 4
  %arrayidx.i151 = getelementptr %struct.mt8195_afe_private, ptr %101, i32 0, i32 10, i32 %spec.select.i134
  %102 = ptrtoint ptr %arrayidx.i151 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx.i151, align 4
  %afe_ctrl_lock.i152 = getelementptr inbounds %struct.mt8195_afe_private, ptr %101, i32 0, i32 7
  %call2.i153 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %afe_ctrl_lock.i152) #8
  %en_ref_cnt.i154 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %103, i32 0, i32 15
  %104 = ptrtoint ptr %en_ref_cnt.i154 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %en_ref_cnt.i154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp5.not.i155 = icmp eq i32 %105, 0
  br i1 %cmp5.not.i155, label %for.end32.mt8195_afe_disable_etdm.exit169_crit_edge, label %if.then.i158

for.end32.mt8195_afe_disable_etdm.exit169_crit_edge: ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt8195_afe_disable_etdm.exit169

if.then.i158:                                     ; preds = %for.end32
  %dec.i156 = add i32 %105, -1
  %106 = ptrtoint ptr %en_ref_cnt.i154 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %dec.i156, ptr %en_ref_cnt.i154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i156)
  %cmp9.i157 = icmp eq i32 %dec.i156, 0
  br i1 %cmp9.i157, label %if.then11.i159, label %if.then.i158.mt8195_afe_disable_etdm.exit169_crit_edge

if.then.i158.mt8195_afe_disable_etdm.exit169_crit_edge: ; preds = %if.then.i158
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt8195_afe_disable_etdm.exit169

if.then11.i159:                                   ; preds = %if.then.i158
  %switch.tableidx213 = add i32 %spec.select.i134, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx213)
  %107 = icmp ult i32 %switch.tableidx213, 6
  br i1 %107, label %switch.lookup212, label %if.then11.i159.mt8195_afe_disable_etdm.exit169_crit_edge

if.then11.i159.mt8195_afe_disable_etdm.exit169_crit_edge: ; preds = %if.then11.i159
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt8195_afe_disable_etdm.exit169

switch.lookup212:                                 ; preds = %if.then11.i159
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep214 = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_dai_etdm_trigger.423, i32 0, i32 %switch.tableidx213
  %108 = ptrtoint ptr %switch.gep214 to i32
  call void @__asan_load4_noabort(i32 %108)
  %switch.load215 = load i32, ptr %switch.gep214, align 4
  %regmap.i165 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %109 = ptrtoint ptr %regmap.i165 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regmap.i165, align 4
  %call.i.i166 = tail call i32 @regmap_update_bits_base(ptr noundef %110, i32 noundef %switch.load215, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %mt8195_afe_disable_etdm.exit169

mt8195_afe_disable_etdm.exit169:                  ; preds = %switch.lookup212, %if.then11.i159.mt8195_afe_disable_etdm.exit169_crit_edge, %if.then.i158.mt8195_afe_disable_etdm.exit169_crit_edge, %for.end32.mt8195_afe_disable_etdm.exit169_crit_edge
  %ret.0.i168 = phi i32 [ 0, %switch.lookup212 ], [ 0, %if.then.i158.mt8195_afe_disable_etdm.exit169_crit_edge ], [ 0, %for.end32.mt8195_afe_disable_etdm.exit169_crit_edge ], [ -22, %if.then11.i159.mt8195_afe_disable_etdm.exit169_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %afe_ctrl_lock.i152, i32 noundef %call2.i153) #8
  %or34 = or i32 %ret.0.i168, %ret.1.lcssa
  br label %sw.epilog

if.else35:                                        ; preds = %is_cowork_mode.exit126
  %111 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %platform_priv, align 4
  %arrayidx.i171 = getelementptr %struct.mt8195_afe_private, ptr %112, i32 0, i32 10, i32 %72
  %113 = ptrtoint ptr %arrayidx.i171 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx.i171, align 4
  %afe_ctrl_lock.i172 = getelementptr inbounds %struct.mt8195_afe_private, ptr %112, i32 0, i32 7
  %call2.i173 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %afe_ctrl_lock.i172) #8
  %en_ref_cnt.i174 = getelementptr inbounds %struct.mtk_dai_etdm_priv, ptr %114, i32 0, i32 15
  %115 = ptrtoint ptr %en_ref_cnt.i174 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %en_ref_cnt.i174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp5.not.i175 = icmp eq i32 %116, 0
  br i1 %cmp5.not.i175, label %if.else35.mt8195_afe_disable_etdm.exit189_crit_edge, label %if.then.i178

if.else35.mt8195_afe_disable_etdm.exit189_crit_edge: ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt8195_afe_disable_etdm.exit189

if.then.i178:                                     ; preds = %if.else35
  %dec.i176 = add i32 %116, -1
  %117 = ptrtoint ptr %en_ref_cnt.i174 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %dec.i176, ptr %en_ref_cnt.i174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i176)
  %cmp9.i177 = icmp eq i32 %dec.i176, 0
  br i1 %cmp9.i177, label %if.then11.i179, label %if.then.i178.mt8195_afe_disable_etdm.exit189_crit_edge

if.then.i178.mt8195_afe_disable_etdm.exit189_crit_edge: ; preds = %if.then.i178
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt8195_afe_disable_etdm.exit189

if.then11.i179:                                   ; preds = %if.then.i178
  %switch.tableidx217 = add i32 %72, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx217)
  %118 = icmp ult i32 %switch.tableidx217, 6
  br i1 %118, label %switch.lookup216, label %if.then11.i179.mt8195_afe_disable_etdm.exit189_crit_edge

if.then11.i179.mt8195_afe_disable_etdm.exit189_crit_edge: ; preds = %if.then11.i179
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt8195_afe_disable_etdm.exit189

switch.lookup216:                                 ; preds = %if.then11.i179
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep218 = getelementptr inbounds [6 x i32], ptr @switch.table.mtk_dai_etdm_trigger.424, i32 0, i32 %switch.tableidx217
  %119 = ptrtoint ptr %switch.gep218 to i32
  call void @__asan_load4_noabort(i32 %119)
  %switch.load219 = load i32, ptr %switch.gep218, align 4
  %regmap.i185 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %120 = ptrtoint ptr %regmap.i185 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regmap.i185, align 4
  %call.i.i186 = tail call i32 @regmap_update_bits_base(ptr noundef %121, i32 noundef %switch.load219, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %mt8195_afe_disable_etdm.exit189

mt8195_afe_disable_etdm.exit189:                  ; preds = %switch.lookup216, %if.then11.i179.mt8195_afe_disable_etdm.exit189_crit_edge, %if.then.i178.mt8195_afe_disable_etdm.exit189_crit_edge, %if.else35.mt8195_afe_disable_etdm.exit189_crit_edge
  %ret.0.i188 = phi i32 [ 0, %switch.lookup216 ], [ 0, %if.then.i178.mt8195_afe_disable_etdm.exit189_crit_edge ], [ 0, %if.else35.mt8195_afe_disable_etdm.exit189_crit_edge ], [ -22, %if.then11.i179.mt8195_afe_disable_etdm.exit189_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %afe_ctrl_lock.i172, i32 noundef %call2.i173) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %mt8195_afe_disable_etdm.exit189, %mt8195_afe_disable_etdm.exit169, %mt8195_afe_enable_etdm.exit114, %mt8195_afe_enable_etdm.exit96.sw.epilog_crit_edge, %mt8195_afe_enable_etdm.exit.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  %ret.2 = phi i32 [ 0, %do.end.sw.epilog_crit_edge ], [ %or34, %mt8195_afe_disable_etdm.exit169 ], [ %ret.0.i188, %mt8195_afe_disable_etdm.exit189 ], [ %ret.0.i113, %mt8195_afe_enable_etdm.exit114 ], [ %ret.0.i, %mt8195_afe_enable_etdm.exit.sw.epilog_crit_edge ], [ %or11, %mt8195_afe_enable_etdm.exit96.sw.epilog_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_etdm_clk_src_sel_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %value, align 4
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  %call2 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(23) @.str.361) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.then35_crit_edge, label %if.else

entry.if.then35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

if.else:                                          ; preds = %entry
  %call6 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(23) @.str.362) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.else.if.then35_crit_edge, label %if.else9

if.else.if.then35_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

if.else9:                                         ; preds = %if.else
  %call13 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(23) @.str.363) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.else9.if.then35_crit_edge, label %if.else16

if.else9.if.then35_crit_edge:                     ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

if.else16:                                        ; preds = %if.else9
  %call20 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(22) @.str.364) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.else16.if.then35_crit_edge, label %if.else23

if.else16.if.then35_crit_edge:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

if.else23:                                        ; preds = %if.else16
  %call27 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(22) @.str.365) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.else23.if.then35_crit_edge, label %if.else23.if.end37_crit_edge

if.else23.if.end37_crit_edge:                     ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.else23.if.then35_crit_edge:                    ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

if.then35:                                        ; preds = %if.else23.if.then35_crit_edge, %if.else16.if.then35_crit_edge, %if.else9.if.then35_crit_edge, %if.else.if.then35_crit_edge, %entry.if.then35_crit_edge
  %reg.0.ph = phi i32 [ 8968, %if.else16.if.then35_crit_edge ], [ 9168, %if.else9.if.then35_crit_edge ], [ 9136, %if.else.if.then35_crit_edge ], [ 9104, %entry.if.then35_crit_edge ], [ 9000, %if.else23.if.then35_crit_edge ]
  %mask.0.ph = phi i32 [ 7168, %if.else16.if.then35_crit_edge ], [ 448, %if.else9.if.then35_crit_edge ], [ 448, %if.else.if.then35_crit_edge ], [ 448, %entry.if.then35_crit_edge ], [ 7168, %if.else23.if.then35_crit_edge ]
  %shift.0.ph = phi i32 [ 10, %if.else16.if.then35_crit_edge ], [ 6, %if.else9.if.then35_crit_edge ], [ 6, %if.else.if.then35_crit_edge ], [ 6, %entry.if.then35_crit_edge ], [ 10, %if.else23.if.then35_crit_edge ]
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call36 = call i32 @regmap_read(ptr noundef %8, i32 noundef %reg.0.ph, ptr noundef nonnull %value) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.else23.if.end37_crit_edge
  %shift.053 = phi i32 [ %shift.0.ph, %if.then35 ], [ 0, %if.else23.if.end37_crit_edge ]
  %mask.051 = phi i32 [ %mask.0.ph, %if.then35 ], [ 0, %if.else23.if.end37_crit_edge ]
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %and = and i32 %10, %mask.051
  %shr = lshr i32 %and, %shift.053
  %value38 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value38 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr, ptr %value38, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_etdm_clk_src_sel_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = inttoptr i32 %3 to ptr
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 8
  %items = getelementptr inbounds %struct.soc_enum, ptr %4, i32 0, i32 3
  %11 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %items, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not = icmp ult i32 %10, %12
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  %call1 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(23) @.str.361) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.if.then40_crit_edge, label %if.else

if.end.if.then40_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

if.else:                                          ; preds = %if.end
  %call6 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(23) @.str.362) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.else.if.then40_crit_edge, label %if.else10

if.else.if.then40_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

if.else10:                                        ; preds = %if.else
  %call14 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(23) @.str.363) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.else10.if.then40_crit_edge, label %if.else18

if.else10.if.then40_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

if.else18:                                        ; preds = %if.else10
  %call22 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(22) @.str.364) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.else18.if.then40_crit_edge, label %if.else26

if.else18.if.then40_crit_edge:                    ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

if.else26:                                        ; preds = %if.else18
  %call30 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(22) @.str.365) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.else26.if.then40_crit_edge, label %if.else26.cleanup_crit_edge

if.else26.cleanup_crit_edge:                      ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else26.if.then40_crit_edge:                    ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

if.then40:                                        ; preds = %if.else26.if.then40_crit_edge, %if.else18.if.then40_crit_edge, %if.else10.if.then40_crit_edge, %if.else.if.then40_crit_edge, %if.end.if.then40_crit_edge
  %.sink = phi i32 [ 6, %if.end.if.then40_crit_edge ], [ 6, %if.else.if.then40_crit_edge ], [ 6, %if.else10.if.then40_crit_edge ], [ 10, %if.else18.if.then40_crit_edge ], [ 10, %if.else26.if.then40_crit_edge ]
  %mask.0.ph = phi i32 [ 448, %if.end.if.then40_crit_edge ], [ 448, %if.else.if.then40_crit_edge ], [ 448, %if.else10.if.then40_crit_edge ], [ 7168, %if.else18.if.then40_crit_edge ], [ 7168, %if.else26.if.then40_crit_edge ]
  %reg.0.ph = phi i32 [ 9104, %if.end.if.then40_crit_edge ], [ 9136, %if.else.if.then40_crit_edge ], [ 9168, %if.else10.if.then40_crit_edge ], [ 8968, %if.else18.if.then40_crit_edge ], [ 9000, %if.else26.if.then40_crit_edge ]
  %shl33 = shl i32 %10, %.sink
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %8, i32 0, i32 2
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %reg.0.ph, i32 noundef %mask.0.ph, i32 noundef %shl33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.else26.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then40 ], [ 0, %if.else26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 515)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 515)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !36, !37, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !86, !88, !89, !91, !92, !93, !95, !96, !97, !99, !101, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672, !674, !676, !678, !680, !682, !684, !686, !688, !690, !692, !694, !696, !698, !700, !702, !704, !706, !708, !709, !710, !711, !713, !714, !715, !717, !719, !720, !722, !724, !725, !727, !728, !729, !731, !733, !734, !736, !737, !738, !740, !741, !742}
!llvm.module.flags = !{!743, !744, !745, !746, !747, !748, !749, !750}
!llvm.ident = !{!751}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2390, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2393, i32 19}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2402, i32 11}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2405, i32 19}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2415, i32 11}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2418, i32 19}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2428, i32 11}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2431, i32 19}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2441, i32 11}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2444, i32 19}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2454, i32 11}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2457, i32 19}
!24 = !{ptr @mtk_dai_etdm_driver, !25, !"mtk_dai_etdm_driver", i1 false, i1 false}
!25 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2388, i32 34}
!26 = !{ptr @mtk_dai_hdmitx_dptx_ops, !27, !"mtk_dai_hdmitx_dptx_ops", i1 false, i1 false}
!27 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2353, i32 37}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2336, i32 2}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mtk_dai_hdmitx_dptx_set_sysclk.__UNIQUE_ID_ddebug249, !29, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2077, i32 3}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mtk_dai_etdm_cal_mclk._entry, !35, !"_entry", i1 false, i1 false}
!40 = !{ptr @mtk_dai_etdm_cal_mclk._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2082, i32 3}
!43 = !{ptr @mtk_dai_etdm_cal_mclk._entry.20, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mtk_dai_etdm_cal_mclk._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1879, i32 4}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @mtk_dai_etdm_mclk_configure.__UNIQUE_ID_ddebug241, !46, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1908, i32 2}
!51 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mtk_dai_etdm_configure.__UNIQUE_ID_ddebug242, !50, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1912, i32 2}
!55 = !{ptr @mtk_dai_etdm_configure.__UNIQUE_ID_ddebug243, !54, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1920, i32 3}
!58 = !{ptr @mtk_dai_etdm_configure._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mtk_dai_etdm_configure._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1939, i32 4}
!62 = !{ptr @mtk_dai_etdm_configure._entry.29, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mtk_dai_etdm_configure._entry_ptr.31, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1644, i32 2}
!66 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @mtk_dai_etdm_in_configure.__UNIQUE_ID_ddebug239, !65, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!68 = !{ptr @mt8195_etdm_rates, !69, !"mt8195_etdm_rates", i1 false, i1 false}
!69 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 122, i32 39}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1760, i32 2}
!72 = !{ptr @mtk_dai_etdm_out_configure.__UNIQUE_ID_ddebug240, !71, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2296, i32 2}
!75 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @mtk_dai_hdmitx_dptx_trigger.__UNIQUE_ID_ddebug248, !74, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2375, i32 2}
!79 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @mtk_dai_etdm_probe.__UNIQUE_ID_ddebug250, !78, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2378, i32 3}
!83 = !{ptr @mtk_dai_etdm_probe.__UNIQUE_ID_ddebug251, !82, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!84 = !{ptr @mtk_dai_etdm_ops, !85, !"mtk_dai_etdm_ops", i1 false, i1 false}
!85 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2343, i32 37}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2100, i32 2}
!88 = !{ptr @mtk_dai_etdm_set_sysclk.__UNIQUE_ID_ddebug246, !87, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2120, i32 2}
!91 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @mtk_dai_etdm_set_tdm_slot.__UNIQUE_ID_ddebug247, !90, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1970, i32 2}
!95 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @mtk_dai_etdm_hw_params.__UNIQUE_ID_ddebug244, !94, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../include/sound/pcm.h", i32 1402, i32 10}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../include/sound/pcm.h", i32 1404, i32 10}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2021, i32 2}
!103 = !{ptr @mtk_dai_etdm_trigger.__UNIQUE_ID_ddebug245, !102, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 763, i32 2}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 764, i32 2}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 765, i32 2}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 766, i32 2}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 767, i32 2}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 768, i32 2}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 769, i32 2}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 770, i32 2}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 773, i32 2}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 774, i32 2}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 775, i32 2}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 776, i32 2}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 777, i32 2}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 778, i32 2}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 779, i32 2}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 780, i32 2}
!136 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 781, i32 2}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 782, i32 2}
!140 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 783, i32 2}
!142 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 784, i32 2}
!144 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 785, i32 2}
!146 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 786, i32 2}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 787, i32 2}
!150 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 788, i32 2}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 789, i32 2}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 790, i32 2}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 791, i32 2}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 792, i32 2}
!160 = !{ptr @.str.76, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 793, i32 2}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 794, i32 2}
!164 = !{ptr @.str.78, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 795, i32 2}
!166 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 796, i32 2}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 799, i32 2}
!170 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 802, i32 2}
!172 = !{ptr @.str.82, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 805, i32 2}
!174 = !{ptr @.str.83, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 808, i32 2}
!176 = !{ptr @.str.84, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 811, i32 2}
!178 = !{ptr @.str.85, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 814, i32 2}
!180 = !{ptr @.str.86, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 817, i32 2}
!182 = !{ptr @.str.87, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 820, i32 2}
!184 = !{ptr @.str.88, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 823, i32 2}
!186 = !{ptr @.str.89, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 826, i32 2}
!188 = !{ptr @.str.90, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 829, i32 2}
!190 = !{ptr @.str.91, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 832, i32 2}
!192 = !{ptr @.str.92, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 835, i32 2}
!194 = !{ptr @.str.93, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 838, i32 2}
!196 = !{ptr @.str.94, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 841, i32 2}
!198 = !{ptr @.str.95, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 844, i32 2}
!200 = !{ptr @.str.96, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 847, i32 2}
!202 = !{ptr @.str.97, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 850, i32 2}
!204 = !{ptr @.str.98, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 853, i32 2}
!206 = !{ptr @.str.99, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 856, i32 2}
!208 = !{ptr @.str.100, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 859, i32 2}
!210 = !{ptr @.str.101, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 862, i32 2}
!212 = !{ptr @.str.102, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 865, i32 2}
!214 = !{ptr @.str.103, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 868, i32 2}
!216 = !{ptr @.str.104, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 873, i32 2}
!218 = !{ptr @.str.105, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 876, i32 2}
!220 = !{ptr @.str.106, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 879, i32 2}
!222 = !{ptr @.str.107, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 882, i32 2}
!224 = !{ptr @.str.108, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 885, i32 2}
!226 = !{ptr @.str.109, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 888, i32 2}
!228 = !{ptr @.str.110, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 891, i32 2}
!230 = !{ptr @.str.111, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 894, i32 2}
!232 = !{ptr @.str.112, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 897, i32 2}
!234 = !{ptr @.str.113, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 900, i32 2}
!236 = !{ptr @.str.114, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 903, i32 2}
!238 = !{ptr @.str.115, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 906, i32 2}
!240 = !{ptr @.str.116, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 909, i32 2}
!242 = !{ptr @.str.117, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 912, i32 2}
!244 = !{ptr @.str.118, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 915, i32 2}
!246 = !{ptr @.str.119, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 918, i32 2}
!248 = !{ptr @.str.120, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 921, i32 2}
!250 = !{ptr @.str.121, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 924, i32 2}
!252 = !{ptr @.str.122, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 927, i32 2}
!254 = !{ptr @.str.123, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 930, i32 2}
!256 = !{ptr @.str.124, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 933, i32 2}
!258 = !{ptr @.str.125, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 936, i32 2}
!260 = !{ptr @.str.126, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 939, i32 2}
!262 = !{ptr @.str.127, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 942, i32 2}
!264 = !{ptr @.str.128, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 947, i32 2}
!266 = !{ptr @.str.129, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 949, i32 2}
!268 = !{ptr @.str.130, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 952, i32 2}
!270 = !{ptr @.str.131, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 954, i32 2}
!272 = !{ptr @.str.132, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 956, i32 2}
!274 = !{ptr @.str.133, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 958, i32 2}
!276 = !{ptr @.str.134, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 960, i32 2}
!278 = !{ptr @.str.135, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 962, i32 2}
!280 = !{ptr @.str.136, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 964, i32 2}
!282 = !{ptr @.str.137, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 966, i32 2}
!284 = !{ptr @.str.138, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 969, i32 2}
!286 = !{ptr @.str.139, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 970, i32 2}
!288 = !{ptr @mtk_dai_etdm_widgets, !289, !"mtk_dai_etdm_widgets", i1 false, i1 false}
!289 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 761, i32 41}
!290 = !{ptr @.str.141, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 277, i32 2}
!292 = !{ptr @.str.142, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 278, i32 2}
!294 = !{ptr @.str.144, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 279, i32 2}
!296 = !{ptr @.str.146, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 280, i32 2}
!298 = !{ptr @mtk_dai_etdm_o048_mix, !299, !"mtk_dai_etdm_o048_mix", i1 false, i1 false}
!299 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 276, i32 38}
!300 = !{ptr @.str.148, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 284, i32 2}
!302 = !{ptr @.str.150, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 285, i32 2}
!304 = !{ptr @.str.152, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 286, i32 2}
!306 = !{ptr @.str.154, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 287, i32 2}
!308 = !{ptr @mtk_dai_etdm_o049_mix, !309, !"mtk_dai_etdm_o049_mix", i1 false, i1 false}
!309 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 283, i32 38}
!310 = !{ptr @.str.156, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 291, i32 2}
!312 = !{ptr @.str.158, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 292, i32 2}
!314 = !{ptr @mtk_dai_etdm_o050_mix, !315, !"mtk_dai_etdm_o050_mix", i1 false, i1 false}
!315 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 290, i32 38}
!316 = !{ptr @.str.160, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 296, i32 2}
!318 = !{ptr @.str.162, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 297, i32 2}
!320 = !{ptr @mtk_dai_etdm_o051_mix, !321, !"mtk_dai_etdm_o051_mix", i1 false, i1 false}
!321 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 295, i32 38}
!322 = !{ptr @.str.164, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 301, i32 2}
!324 = !{ptr @.str.166, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 302, i32 2}
!326 = !{ptr @mtk_dai_etdm_o052_mix, !327, !"mtk_dai_etdm_o052_mix", i1 false, i1 false}
!327 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 300, i32 38}
!328 = !{ptr @.str.168, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 306, i32 2}
!330 = !{ptr @.str.170, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 307, i32 2}
!332 = !{ptr @mtk_dai_etdm_o053_mix, !333, !"mtk_dai_etdm_o053_mix", i1 false, i1 false}
!333 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 305, i32 38}
!334 = !{ptr @.str.172, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 311, i32 2}
!336 = !{ptr @.str.174, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 312, i32 2}
!338 = !{ptr @mtk_dai_etdm_o054_mix, !339, !"mtk_dai_etdm_o054_mix", i1 false, i1 false}
!339 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 310, i32 38}
!340 = !{ptr @.str.176, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 316, i32 2}
!342 = !{ptr @.str.178, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 317, i32 2}
!344 = !{ptr @mtk_dai_etdm_o055_mix, !345, !"mtk_dai_etdm_o055_mix", i1 false, i1 false}
!345 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 315, i32 38}
!346 = !{ptr @.str.180, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 321, i32 2}
!348 = !{ptr @.str.182, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 322, i32 2}
!350 = !{ptr @mtk_dai_etdm_o056_mix, !351, !"mtk_dai_etdm_o056_mix", i1 false, i1 false}
!351 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 320, i32 38}
!352 = !{ptr @.str.184, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 326, i32 2}
!354 = !{ptr @.str.186, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 327, i32 2}
!356 = !{ptr @mtk_dai_etdm_o057_mix, !357, !"mtk_dai_etdm_o057_mix", i1 false, i1 false}
!357 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 325, i32 38}
!358 = !{ptr @.str.188, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 331, i32 2}
!360 = !{ptr @.str.190, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 332, i32 2}
!362 = !{ptr @mtk_dai_etdm_o058_mix, !363, !"mtk_dai_etdm_o058_mix", i1 false, i1 false}
!363 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 330, i32 38}
!364 = !{ptr @.str.192, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 336, i32 2}
!366 = !{ptr @.str.194, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 337, i32 2}
!368 = !{ptr @mtk_dai_etdm_o059_mix, !369, !"mtk_dai_etdm_o059_mix", i1 false, i1 false}
!369 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 335, i32 38}
!370 = !{ptr @.str.196, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 341, i32 2}
!372 = !{ptr @.str.198, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 342, i32 2}
!374 = !{ptr @mtk_dai_etdm_o060_mix, !375, !"mtk_dai_etdm_o060_mix", i1 false, i1 false}
!375 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 340, i32 38}
!376 = !{ptr @.str.200, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 346, i32 2}
!378 = !{ptr @.str.202, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 347, i32 2}
!380 = !{ptr @mtk_dai_etdm_o061_mix, !381, !"mtk_dai_etdm_o061_mix", i1 false, i1 false}
!381 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 345, i32 38}
!382 = !{ptr @.str.204, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 351, i32 2}
!384 = !{ptr @.str.206, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 352, i32 2}
!386 = !{ptr @mtk_dai_etdm_o062_mix, !387, !"mtk_dai_etdm_o062_mix", i1 false, i1 false}
!387 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 350, i32 38}
!388 = !{ptr @.str.208, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 356, i32 2}
!390 = !{ptr @.str.210, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 357, i32 2}
!392 = !{ptr @mtk_dai_etdm_o063_mix, !393, !"mtk_dai_etdm_o063_mix", i1 false, i1 false}
!393 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 355, i32 38}
!394 = !{ptr @.str.212, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 361, i32 2}
!396 = !{ptr @.str.214, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 362, i32 2}
!398 = !{ptr @mtk_dai_etdm_o064_mix, !399, !"mtk_dai_etdm_o064_mix", i1 false, i1 false}
!399 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 360, i32 38}
!400 = !{ptr @.str.216, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 366, i32 2}
!402 = !{ptr @.str.218, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 367, i32 2}
!404 = !{ptr @mtk_dai_etdm_o065_mix, !405, !"mtk_dai_etdm_o065_mix", i1 false, i1 false}
!405 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 365, i32 38}
!406 = !{ptr @.str.220, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 371, i32 2}
!408 = !{ptr @.str.222, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 372, i32 2}
!410 = !{ptr @mtk_dai_etdm_o066_mix, !411, !"mtk_dai_etdm_o066_mix", i1 false, i1 false}
!411 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 370, i32 38}
!412 = !{ptr @.str.224, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 376, i32 2}
!414 = !{ptr @.str.226, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 377, i32 2}
!416 = !{ptr @mtk_dai_etdm_o067_mix, !417, !"mtk_dai_etdm_o067_mix", i1 false, i1 false}
!417 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 375, i32 38}
!418 = !{ptr @.str.228, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 381, i32 2}
!420 = !{ptr @.str.230, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 382, i32 2}
!422 = !{ptr @mtk_dai_etdm_o068_mix, !423, !"mtk_dai_etdm_o068_mix", i1 false, i1 false}
!423 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 380, i32 38}
!424 = !{ptr @.str.232, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 386, i32 2}
!426 = !{ptr @.str.234, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 387, i32 2}
!428 = !{ptr @mtk_dai_etdm_o069_mix, !429, !"mtk_dai_etdm_o069_mix", i1 false, i1 false}
!429 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 385, i32 38}
!430 = !{ptr @.str.236, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 391, i32 2}
!432 = !{ptr @.str.238, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 392, i32 2}
!434 = !{ptr @mtk_dai_etdm_o070_mix, !435, !"mtk_dai_etdm_o070_mix", i1 false, i1 false}
!435 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 390, i32 38}
!436 = !{ptr @.str.240, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 396, i32 2}
!438 = !{ptr @.str.242, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 397, i32 2}
!440 = !{ptr @mtk_dai_etdm_o071_mix, !441, !"mtk_dai_etdm_o071_mix", i1 false, i1 false}
!441 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 395, i32 38}
!442 = !{ptr @mtk_dai_etdm_o072_mix, !443, !"mtk_dai_etdm_o072_mix", i1 false, i1 false}
!443 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 400, i32 38}
!444 = !{ptr @mtk_dai_etdm_o073_mix, !445, !"mtk_dai_etdm_o073_mix", i1 false, i1 false}
!445 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 407, i32 38}
!446 = !{ptr @mtk_dai_etdm_o074_mix, !447, !"mtk_dai_etdm_o074_mix", i1 false, i1 false}
!447 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 414, i32 38}
!448 = !{ptr @mtk_dai_etdm_o075_mix, !449, !"mtk_dai_etdm_o075_mix", i1 false, i1 false}
!449 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 419, i32 38}
!450 = !{ptr @mtk_dai_etdm_o076_mix, !451, !"mtk_dai_etdm_o076_mix", i1 false, i1 false}
!451 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 424, i32 38}
!452 = !{ptr @mtk_dai_etdm_o077_mix, !453, !"mtk_dai_etdm_o077_mix", i1 false, i1 false}
!453 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 429, i32 38}
!454 = !{ptr @mtk_dai_etdm_o078_mix, !455, !"mtk_dai_etdm_o078_mix", i1 false, i1 false}
!455 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 434, i32 38}
!456 = !{ptr @mtk_dai_etdm_o079_mix, !457, !"mtk_dai_etdm_o079_mix", i1 false, i1 false}
!457 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 439, i32 38}
!458 = !{ptr @mtk_dai_etdm_o080_mix, !459, !"mtk_dai_etdm_o080_mix", i1 false, i1 false}
!459 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 444, i32 38}
!460 = !{ptr @mtk_dai_etdm_o081_mix, !461, !"mtk_dai_etdm_o081_mix", i1 false, i1 false}
!461 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 449, i32 38}
!462 = !{ptr @mtk_dai_etdm_o082_mix, !463, !"mtk_dai_etdm_o082_mix", i1 false, i1 false}
!463 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 454, i32 38}
!464 = !{ptr @mtk_dai_etdm_o083_mix, !465, !"mtk_dai_etdm_o083_mix", i1 false, i1 false}
!465 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 459, i32 38}
!466 = !{ptr @mtk_dai_etdm_o084_mix, !467, !"mtk_dai_etdm_o084_mix", i1 false, i1 false}
!467 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 464, i32 38}
!468 = !{ptr @mtk_dai_etdm_o085_mix, !469, !"mtk_dai_etdm_o085_mix", i1 false, i1 false}
!469 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 469, i32 38}
!470 = !{ptr @mtk_dai_etdm_o086_mix, !471, !"mtk_dai_etdm_o086_mix", i1 false, i1 false}
!471 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 474, i32 38}
!472 = !{ptr @mtk_dai_etdm_o087_mix, !473, !"mtk_dai_etdm_o087_mix", i1 false, i1 false}
!473 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 479, i32 38}
!474 = !{ptr @mtk_dai_etdm_o088_mix, !475, !"mtk_dai_etdm_o088_mix", i1 false, i1 false}
!475 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 484, i32 38}
!476 = !{ptr @mtk_dai_etdm_o089_mix, !477, !"mtk_dai_etdm_o089_mix", i1 false, i1 false}
!477 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 489, i32 38}
!478 = !{ptr @mtk_dai_etdm_o090_mix, !479, !"mtk_dai_etdm_o090_mix", i1 false, i1 false}
!479 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 494, i32 38}
!480 = !{ptr @mtk_dai_etdm_o091_mix, !481, !"mtk_dai_etdm_o091_mix", i1 false, i1 false}
!481 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 499, i32 38}
!482 = !{ptr @mtk_dai_etdm_o092_mix, !483, !"mtk_dai_etdm_o092_mix", i1 false, i1 false}
!483 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 504, i32 38}
!484 = !{ptr @mtk_dai_etdm_o093_mix, !485, !"mtk_dai_etdm_o093_mix", i1 false, i1 false}
!485 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 509, i32 38}
!486 = !{ptr @mtk_dai_etdm_o094_mix, !487, !"mtk_dai_etdm_o094_mix", i1 false, i1 false}
!487 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 514, i32 38}
!488 = !{ptr @mtk_dai_etdm_o095_mix, !489, !"mtk_dai_etdm_o095_mix", i1 false, i1 false}
!489 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 519, i32 38}
!490 = !{ptr @hdmi_out_mux_control, !491, !"hdmi_out_mux_control", i1 false, i1 false}
!491 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 550, i32 38}
!492 = !{ptr @hdmi_out_mux_map_enum, !493, !"hdmi_out_mux_map_enum", i1 false, i1 false}
!493 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 543, i32 8}
!494 = !{ptr @.str.296, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 535, i32 2}
!496 = !{ptr @.str.297, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 535, i32 16}
!498 = !{ptr @hdmitx_dptx_mux_map, !499, !"hdmitx_dptx_mux_map", i1 false, i1 false}
!499 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 534, i32 27}
!500 = !{ptr @hdmitx_dptx_mux_map_value, !501, !"hdmitx_dptx_mux_map_value", i1 false, i1 false}
!501 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 538, i32 12}
!502 = !{ptr @dptx_out_mux_control, !503, !"dptx_out_mux_control", i1 false, i1 false}
!503 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 561, i32 38}
!504 = !{ptr @dptx_out_mux_map_enum, !505, !"dptx_out_mux_map_enum", i1 false, i1 false}
!505 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 554, i32 8}
!506 = !{ptr @hdmi_ch0_mux_control, !507, !"hdmi_ch0_mux_control", i1 false, i1 false}
!507 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 580, i32 38}
!508 = !{ptr @hdmi_ch0_mux_map_enum, !509, !"hdmi_ch0_mux_map_enum", i1 false, i1 false}
!509 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 573, i32 8}
!510 = !{ptr @.str.298, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 566, i32 2}
!512 = !{ptr @.str.299, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 566, i32 9}
!514 = !{ptr @.str.300, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 566, i32 16}
!516 = !{ptr @.str.301, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 566, i32 23}
!518 = !{ptr @.str.302, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 566, i32 30}
!520 = !{ptr @.str.303, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 566, i32 37}
!522 = !{ptr @.str.304, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 566, i32 44}
!524 = !{ptr @.str.305, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 566, i32 51}
!526 = !{ptr @afe_conn_hdmi_mux_map, !527, !"afe_conn_hdmi_mux_map", i1 false, i1 false}
!527 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 565, i32 26}
!528 = !{ptr @afe_conn_hdmi_mux_map_value, !529, !"afe_conn_hdmi_mux_map_value", i1 false, i1 false}
!529 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 569, i32 12}
!530 = !{ptr @hdmi_ch1_mux_control, !531, !"hdmi_ch1_mux_control", i1 false, i1 false}
!531 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 590, i32 38}
!532 = !{ptr @hdmi_ch1_mux_map_enum, !533, !"hdmi_ch1_mux_map_enum", i1 false, i1 false}
!533 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 583, i32 8}
!534 = !{ptr @hdmi_ch2_mux_control, !535, !"hdmi_ch2_mux_control", i1 false, i1 false}
!535 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 600, i32 38}
!536 = !{ptr @hdmi_ch2_mux_map_enum, !537, !"hdmi_ch2_mux_map_enum", i1 false, i1 false}
!537 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 593, i32 8}
!538 = !{ptr @hdmi_ch3_mux_control, !539, !"hdmi_ch3_mux_control", i1 false, i1 false}
!539 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 610, i32 38}
!540 = !{ptr @hdmi_ch3_mux_map_enum, !541, !"hdmi_ch3_mux_map_enum", i1 false, i1 false}
!541 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 603, i32 8}
!542 = !{ptr @hdmi_ch4_mux_control, !543, !"hdmi_ch4_mux_control", i1 false, i1 false}
!543 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 620, i32 38}
!544 = !{ptr @hdmi_ch4_mux_map_enum, !545, !"hdmi_ch4_mux_map_enum", i1 false, i1 false}
!545 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 613, i32 8}
!546 = !{ptr @hdmi_ch5_mux_control, !547, !"hdmi_ch5_mux_control", i1 false, i1 false}
!547 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 630, i32 38}
!548 = !{ptr @hdmi_ch5_mux_map_enum, !549, !"hdmi_ch5_mux_map_enum", i1 false, i1 false}
!549 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 623, i32 8}
!550 = !{ptr @hdmi_ch6_mux_control, !551, !"hdmi_ch6_mux_control", i1 false, i1 false}
!551 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 640, i32 38}
!552 = !{ptr @hdmi_ch6_mux_map_enum, !553, !"hdmi_ch6_mux_map_enum", i1 false, i1 false}
!553 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 633, i32 8}
!554 = !{ptr @hdmi_ch7_mux_control, !555, !"hdmi_ch7_mux_control", i1 false, i1 false}
!555 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 650, i32 38}
!556 = !{ptr @hdmi_ch7_mux_map_enum, !557, !"hdmi_ch7_mux_map_enum", i1 false, i1 false}
!557 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 643, i32 8}
!558 = !{ptr @.str.306, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1008, i32 3}
!560 = !{ptr @.str.307, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1009, i32 3}
!562 = !{ptr @.str.308, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1061, i32 26}
!564 = !{ptr @.str.309, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1062, i32 26}
!566 = !{ptr @.str.310, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1064, i32 26}
!568 = !{ptr @.str.311, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1065, i32 26}
!570 = !{ptr @.str.312, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1066, i32 26}
!572 = !{ptr @.str.313, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1067, i32 26}
!574 = !{ptr @.str.314, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1068, i32 26}
!576 = !{ptr @.str.315, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1069, i32 26}
!578 = !{ptr @.str.316, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1070, i32 26}
!580 = !{ptr @.str.317, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1071, i32 26}
!582 = !{ptr @.str.318, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1072, i32 26}
!584 = !{ptr @.str.319, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1073, i32 26}
!586 = !{ptr @.str.320, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1074, i32 26}
!588 = !{ptr @.str.321, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1075, i32 26}
!590 = !{ptr @.str.322, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1076, i32 26}
!592 = !{ptr @.str.323, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1077, i32 26}
!594 = !{ptr @.str.324, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1078, i32 26}
!596 = !{ptr @.str.325, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1079, i32 26}
!598 = !{ptr @.str.326, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1080, i32 26}
!600 = !{ptr @.str.327, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1081, i32 26}
!602 = !{ptr @.str.328, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1082, i32 26}
!604 = !{ptr @.str.329, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1083, i32 26}
!606 = !{ptr @.str.330, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1084, i32 26}
!608 = !{ptr @.str.331, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1085, i32 26}
!610 = !{ptr @.str.332, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1086, i32 26}
!612 = !{ptr @.str.333, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1087, i32 26}
!614 = !{ptr @.str.334, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1089, i32 26}
!616 = !{ptr @.str.335, !617, !"<string literal>", i1 false, i1 false}
!617 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1090, i32 26}
!618 = !{ptr @.str.336, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1091, i32 26}
!620 = !{ptr @.str.337, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1092, i32 26}
!622 = !{ptr @.str.338, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1093, i32 26}
!624 = !{ptr @.str.339, !625, !"<string literal>", i1 false, i1 false}
!625 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1094, i32 26}
!626 = !{ptr @.str.340, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1095, i32 26}
!628 = !{ptr @.str.341, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1096, i32 26}
!630 = !{ptr @.str.342, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1097, i32 26}
!632 = !{ptr @.str.343, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1098, i32 26}
!634 = !{ptr @.str.344, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1099, i32 26}
!636 = !{ptr @.str.345, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1100, i32 26}
!638 = !{ptr @.str.346, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1101, i32 26}
!640 = !{ptr @.str.347, !641, !"<string literal>", i1 false, i1 false}
!641 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1102, i32 26}
!642 = !{ptr @.str.348, !643, !"<string literal>", i1 false, i1 false}
!643 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1103, i32 26}
!644 = !{ptr @.str.349, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1104, i32 26}
!646 = !{ptr @.str.350, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1105, i32 26}
!648 = !{ptr @.str.351, !649, !"<string literal>", i1 false, i1 false}
!649 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1106, i32 26}
!650 = !{ptr @.str.352, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1107, i32 26}
!652 = !{ptr @.str.353, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1108, i32 26}
!654 = !{ptr @.str.354, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1109, i32 26}
!656 = !{ptr @.str.355, !657, !"<string literal>", i1 false, i1 false}
!657 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1110, i32 26}
!658 = !{ptr @.str.356, !659, !"<string literal>", i1 false, i1 false}
!659 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1111, i32 26}
!660 = !{ptr @.str.357, !661, !"<string literal>", i1 false, i1 false}
!661 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1112, i32 26}
!662 = !{ptr @.str.358, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1114, i32 26}
!664 = !{ptr @.str.359, !665, !"<string literal>", i1 false, i1 false}
!665 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1115, i32 26}
!666 = !{ptr @.str.360, !667, !"<string literal>", i1 false, i1 false}
!667 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 1173, i32 26}
!668 = !{ptr @mtk_dai_etdm_routes, !669, !"mtk_dai_etdm_routes", i1 false, i1 false}
!669 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 973, i32 40}
!670 = !{ptr @.str.361, !671, !"<string literal>", i1 false, i1 false}
!671 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 739, i32 2}
!672 = !{ptr @.str.362, !673, !"<string literal>", i1 false, i1 false}
!673 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 743, i32 2}
!674 = !{ptr @.str.363, !675, !"<string literal>", i1 false, i1 false}
!675 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 747, i32 2}
!676 = !{ptr @.str.364, !677, !"<string literal>", i1 false, i1 false}
!677 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 751, i32 2}
!678 = !{ptr @.str.365, !679, !"<string literal>", i1 false, i1 false}
!679 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 755, i32 2}
!680 = !{ptr @mtk_dai_etdm_controls, !681, !"mtk_dai_etdm_controls", i1 false, i1 false}
!681 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 738, i32 38}
!682 = !{ptr @etdmout_clk_src_enum, !683, !"etdmout_clk_src_enum", i1 false, i1 false}
!683 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 531, i32 8}
!684 = !{ptr @.str.366, !685, !"<string literal>", i1 false, i1 false}
!685 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 525, i32 2}
!686 = !{ptr @.str.367, !687, !"<string literal>", i1 false, i1 false}
!687 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 526, i32 2}
!688 = !{ptr @.str.368, !689, !"<string literal>", i1 false, i1 false}
!689 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 527, i32 2}
!690 = !{ptr @.str.369, !691, !"<string literal>", i1 false, i1 false}
!691 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 528, i32 2}
!692 = !{ptr @mt8195_etdm_clk_src_sel_text, !693, !"mt8195_etdm_clk_src_sel_text", i1 false, i1 false}
!693 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 524, i32 27}
!694 = !{ptr @.str.370, !695, !"<string literal>", i1 false, i1 false}
!695 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2507, i32 4}
!696 = !{ptr @.str.371, !697, !"<string literal>", i1 false, i1 false}
!697 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2508, i32 4}
!698 = !{ptr @.str.372, !699, !"<string literal>", i1 false, i1 false}
!699 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2509, i32 4}
!700 = !{ptr @.str.373, !701, !"<string literal>", i1 false, i1 false}
!701 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2510, i32 4}
!702 = !{ptr @.str.374, !703, !"<string literal>", i1 false, i1 false}
!703 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2511, i32 4}
!704 = !{ptr @.str.375, !705, !"<string literal>", i1 false, i1 false}
!705 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2519, i32 11}
!706 = !{ptr @.str.376, !707, !"<string literal>", i1 false, i1 false}
!707 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2522, i32 4}
!708 = !{ptr @.str.377, !707, !"<string literal>", i1 false, i1 false}
!709 = !{ptr @mt8195_dai_etdm_parse_of._entry, !707, !"_entry", i1 false, i1 false}
!710 = !{ptr @mt8195_dai_etdm_parse_of._entry_ptr, !707, !"_entry_ptr", i1 false, i1 false}
!711 = !{ptr @.str.379, !712, !"<string literal>", i1 false, i1 false}
!712 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2530, i32 5}
!713 = !{ptr @mt8195_dai_etdm_parse_of._entry.378, !712, !"_entry", i1 false, i1 false}
!714 = !{ptr @mt8195_dai_etdm_parse_of._entry_ptr.380, !712, !"_entry_ptr", i1 false, i1 false}
!715 = !{ptr @.str.381, !716, !"<string literal>", i1 false, i1 false}
!716 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2535, i32 11}
!717 = !{ptr @mt8195_dai_etdm_parse_of._entry.382, !718, !"_entry", i1 false, i1 false}
!718 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2538, i32 4}
!719 = !{ptr @mt8195_dai_etdm_parse_of._entry_ptr.383, !718, !"_entry_ptr", i1 false, i1 false}
!720 = !{ptr @.str.384, !721, !"<string literal>", i1 false, i1 false}
!721 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2545, i32 11}
!722 = !{ptr @mt8195_dai_etdm_parse_of._entry.385, !723, !"_entry", i1 false, i1 false}
!723 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2548, i32 4}
!724 = !{ptr @mt8195_dai_etdm_parse_of._entry_ptr.386, !723, !"_entry_ptr", i1 false, i1 false}
!725 = !{ptr @.str.388, !726, !"<string literal>", i1 false, i1 false}
!726 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2555, i32 5}
!727 = !{ptr @mt8195_dai_etdm_parse_of._entry.387, !726, !"_entry", i1 false, i1 false}
!728 = !{ptr @mt8195_dai_etdm_parse_of._entry_ptr.389, !726, !"_entry_ptr", i1 false, i1 false}
!729 = !{ptr @.str.390, !730, !"<string literal>", i1 false, i1 false}
!730 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2571, i32 11}
!731 = !{ptr @mt8195_dai_etdm_parse_of._entry.391, !732, !"_entry", i1 false, i1 false}
!732 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2574, i32 4}
!733 = !{ptr @mt8195_dai_etdm_parse_of._entry_ptr.392, !732, !"_entry_ptr", i1 false, i1 false}
!734 = !{ptr @.str.394, !735, !"<string literal>", i1 false, i1 false}
!735 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2586, i32 5}
!736 = !{ptr @mt8195_dai_etdm_parse_of._entry.393, !735, !"_entry", i1 false, i1 false}
!737 = !{ptr @mt8195_dai_etdm_parse_of._entry_ptr.395, !735, !"_entry_ptr", i1 false, i1 false}
!738 = !{ptr @.str.396, !739, !"<string literal>", i1 false, i1 false}
!739 = !{!"../sound/soc/mediatek/mt8195/mt8195-dai-etdm.c", i32 2482, i32 5}
!740 = !{ptr @.str.397, !739, !"<string literal>", i1 false, i1 false}
!741 = !{ptr @mt8195_etdm_update_sync_info._entry, !739, !"_entry", i1 false, i1 false}
!742 = !{ptr @mt8195_etdm_update_sync_info._entry_ptr, !739, !"_entry_ptr", i1 false, i1 false}
!743 = !{i32 1, !"wchar_size", i32 2}
!744 = !{i32 1, !"min_enum_size", i32 4}
!745 = !{i32 8, !"branch-target-enforcement", i32 0}
!746 = !{i32 8, !"sign-return-address", i32 0}
!747 = !{i32 8, !"sign-return-address-all", i32 0}
!748 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!749 = !{i32 7, !"uwtable", i32 1}
!750 = !{i32 7, !"frame-pointer", i32 2}
!751 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!752 = !{!"auto-init"}
!753 = !{i64 2148832408, i64 2148832413, i64 2148832426, i64 2148832470, i64 2148832504, i64 2148832525}
!754 = !{i32 0, i32 33}
!755 = !{i8 0, i8 2}
