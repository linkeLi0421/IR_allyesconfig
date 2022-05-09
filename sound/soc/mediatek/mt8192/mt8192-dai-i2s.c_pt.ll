; ModuleID = '/llk/IR_all_yes/sound/soc/mediatek/mt8192/mt8192-dai-i2s.c_pt.bc'
source_filename = "../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.mtk_afe_i2s_priv = type { i32, i32, i32, ptr, i32, i32, i32, i32 }
%struct.mtk_base_afe = type { ptr, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, ptr, i8, ptr, i32, ptr, i32, i32, %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mtk_base_afe_dai = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mt8192_afe_private = type { ptr, ptr, ptr, ptr, i32, i32, [44 x i8], [44 x ptr], i32, [4 x i32], [4 x i32], i32, i32, i32, i32, [11 x i32] }
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
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }

@mt8192_dai_i2s_register.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 2, i8 8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_soc_mt8192_afe\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mt8192_dai_i2s_register\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sound/soc/mediatek/mt8192/mt8192-dai-i2s.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@mtk_dai_i2s_driver = internal global { [10 x %struct.snd_soc_dai_driver], [432 x i8] } { [10 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.4, i32 27, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_dai_connsys_i2s_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.5, i64 1092, i32 192, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.6, i32 28, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_dai_i2s_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.6, i64 1092, i32 7934, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.7, i32 29, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_dai_i2s_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.7, i64 1092, i32 7934, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.8, i32 30, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_dai_i2s_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.8, i64 1092, i32 7934, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.9, i32 31, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_dai_i2s_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.9, i64 1092, i32 7934, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.10, i32 32, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_dai_i2s_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.10, i64 1092, i32 7934, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.11, i32 33, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_dai_i2s_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.11, i64 1092, i32 7934, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.12, i32 34, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_dai_i2s_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.12, i64 1092, i32 7934, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.13, i32 35, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_dai_i2s_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.13, i64 1092, i32 7934, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.14, i32 36, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_dai_i2s_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.14, i64 1092, i32 7934, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [432 x i8] zeroinitializer }, align 32
@mtk_dai_i2s_controls = internal constant { [9 x %struct.snd_kcontrol_new], [112 x i8] } { [9 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @mt8192_i2s_hd_get, ptr @mt8192_i2s_hd_set, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @mt8192_i2s_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @mt8192_i2s_hd_get, ptr @mt8192_i2s_hd_set, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @mt8192_i2s_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @mt8192_i2s_hd_get, ptr @mt8192_i2s_hd_set, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @mt8192_i2s_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @mt8192_i2s_hd_get, ptr @mt8192_i2s_hd_set, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @mt8192_i2s_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @mt8192_i2s_hd_get, ptr @mt8192_i2s_hd_set, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @mt8192_i2s_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @mt8192_i2s_hd_get, ptr @mt8192_i2s_hd_set, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @mt8192_i2s_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @mt8192_i2s_hd_get, ptr @mt8192_i2s_hd_set, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @mt8192_i2s_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @mt8192_i2s_hd_get, ptr @mt8192_i2s_hd_set, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @mt8192_i2s_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @mt8192_i2s_hd_get, ptr @mt8192_i2s_hd_set, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @mt8192_i2s_enum to i32) }], [112 x i8] zeroinitializer }, align 32
@mtk_dai_i2s_routes = internal constant { [394 x %struct.snd_soc_dapm_route], [5144 x i8] } { [394 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.5, ptr null, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.71, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.72, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.73, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.74, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.75, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.76, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.77, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.78, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.79, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.80, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.81, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.82, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.83, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.84, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.85, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.86, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.87, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr null, ptr @.str.97, ptr @mtk_afe_i2s_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr null, ptr @.str.98, ptr @mtk_afe_i2s_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.88, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.89, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.90, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.91, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.92, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.93, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.94, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.95, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.96, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr null, ptr @.str.97, ptr @mtk_afe_mclk_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr null, ptr @.str.98, ptr @mtk_afe_mclk_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.111, ptr @.str.301, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.136, ptr @.str.301, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.111, ptr @.str.301, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.136, ptr @.str.301, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.112, ptr @.str.302, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.138, ptr @.str.302, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.112, ptr @.str.302, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.138, ptr @.str.302, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.114, ptr @.str.303, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.140, ptr @.str.303, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.114, ptr @.str.303, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.140, ptr @.str.303, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.116, ptr @.str.304, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.142, ptr @.str.304, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.116, ptr @.str.304, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.142, ptr @.str.304, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.120, ptr @.str.305, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.146, ptr @.str.305, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.122, ptr @.str.306, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.148, ptr @.str.306, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.118, ptr @.str.307, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.144, ptr @.str.307, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.124, ptr @.str.308, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.150, ptr @.str.308, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.70, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.72, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.73, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.74, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.75, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.76, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.77, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.78, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.79, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.80, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.81, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.82, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.83, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.84, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.85, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.86, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.87, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr null, ptr @.str.97, ptr @mtk_afe_i2s_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr null, ptr @.str.98, ptr @mtk_afe_i2s_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.88, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.89, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.90, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.91, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.92, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.93, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.94, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.95, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.96, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr null, ptr @.str.97, ptr @mtk_afe_mclk_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr null, ptr @.str.98, ptr @mtk_afe_mclk_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.70, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.71, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.73, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.74, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.75, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.76, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.77, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.78, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.79, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.80, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.81, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.82, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.83, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.84, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.85, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.86, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.87, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr null, ptr @.str.97, ptr @mtk_afe_i2s_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr null, ptr @.str.98, ptr @mtk_afe_i2s_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.88, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.89, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.90, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.91, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.92, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.93, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.94, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.95, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.96, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr null, ptr @.str.97, ptr @mtk_afe_mclk_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr null, ptr @.str.98, ptr @mtk_afe_mclk_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.111, ptr @.str.301, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.136, ptr @.str.301, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.111, ptr @.str.301, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.136, ptr @.str.301, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.112, ptr @.str.302, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.138, ptr @.str.302, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.112, ptr @.str.302, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.138, ptr @.str.302, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.114, ptr @.str.303, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.140, ptr @.str.303, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.114, ptr @.str.303, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.140, ptr @.str.303, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.116, ptr @.str.304, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.142, ptr @.str.304, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.116, ptr @.str.304, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.142, ptr @.str.304, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.120, ptr @.str.305, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.146, ptr @.str.305, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.122, ptr @.str.306, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.148, ptr @.str.306, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.118, ptr @.str.307, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.144, ptr @.str.307, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.124, ptr @.str.308, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.150, ptr @.str.308, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.70, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.71, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.72, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.74, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.75, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.76, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.77, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.78, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.79, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.80, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.81, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.82, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.83, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.84, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.85, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.86, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.87, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr null, ptr @.str.97, ptr @mtk_afe_i2s_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr null, ptr @.str.98, ptr @mtk_afe_i2s_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.88, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.89, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.90, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.91, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.92, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.93, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.94, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.95, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.96, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr null, ptr @.str.97, ptr @mtk_afe_mclk_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr null, ptr @.str.98, ptr @mtk_afe_mclk_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr @.str.111, ptr @.str.301, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.136, ptr @.str.301, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr @.str.112, ptr @.str.302, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.138, ptr @.str.302, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr @.str.114, ptr @.str.303, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.140, ptr @.str.303, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr @.str.116, ptr @.str.304, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.142, ptr @.str.304, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr @.str.120, ptr @.str.305, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.146, ptr @.str.305, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr @.str.122, ptr @.str.306, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.148, ptr @.str.306, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr @.str.118, ptr @.str.307, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.144, ptr @.str.307, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr @.str.124, ptr @.str.308, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.150, ptr @.str.308, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.70, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.71, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.72, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.73, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.75, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.76, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.77, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.78, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.79, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.80, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.81, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.82, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.83, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.84, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.85, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.86, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.87, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr null, ptr @.str.97, ptr @mtk_afe_i2s_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr null, ptr @.str.98, ptr @mtk_afe_i2s_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.88, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.89, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.90, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.91, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.92, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.93, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.94, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.95, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.10, ptr null, ptr @.str.96, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr null, ptr @.str.97, ptr @mtk_afe_mclk_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr null, ptr @.str.98, ptr @mtk_afe_mclk_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.70, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.71, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.72, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.73, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.74, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.76, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.77, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.78, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.79, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.80, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.81, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.82, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.83, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.84, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.85, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.86, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.87, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr null, ptr @.str.97, ptr @mtk_afe_i2s_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr null, ptr @.str.98, ptr @mtk_afe_i2s_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.88, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.89, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.90, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.91, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.92, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.93, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.94, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.95, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.11, ptr null, ptr @.str.96, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr null, ptr @.str.97, ptr @mtk_afe_mclk_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr null, ptr @.str.98, ptr @mtk_afe_mclk_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.70, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.71, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.72, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.73, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.74, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.75, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.77, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.78, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.79, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.80, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.81, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.82, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.83, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.84, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.85, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.86, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.87, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr null, ptr @.str.97, ptr @mtk_afe_i2s_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr null, ptr @.str.98, ptr @mtk_afe_i2s_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.88, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.89, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.90, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.91, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.92, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.93, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.94, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.95, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.96, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr null, ptr @.str.97, ptr @mtk_afe_mclk_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr null, ptr @.str.98, ptr @mtk_afe_mclk_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.70, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.71, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.72, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.73, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.74, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.75, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.76, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.78, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.79, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.80, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.81, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.82, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.83, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.84, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.85, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.86, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.87, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr null, ptr @.str.97, ptr @mtk_afe_i2s_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr null, ptr @.str.98, ptr @mtk_afe_i2s_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.88, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.89, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.90, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.91, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.92, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.93, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.94, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.95, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.96, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr null, ptr @.str.97, ptr @mtk_afe_mclk_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr null, ptr @.str.98, ptr @mtk_afe_mclk_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr @.str.111, ptr @.str.301, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.136, ptr @.str.301, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr @.str.112, ptr @.str.302, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.138, ptr @.str.302, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr @.str.114, ptr @.str.303, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.140, ptr @.str.303, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr @.str.116, ptr @.str.304, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.142, ptr @.str.304, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr @.str.120, ptr @.str.305, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.146, ptr @.str.305, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr @.str.122, ptr @.str.306, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.148, ptr @.str.306, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr @.str.118, ptr @.str.307, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.144, ptr @.str.307, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr @.str.124, ptr @.str.308, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.150, ptr @.str.308, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr @.str.126, ptr @.str.309, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.152, ptr @.str.309, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.70, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.71, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.72, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.73, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.74, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.75, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.76, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.77, ptr @mtk_afe_i2s_share_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.79, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.80, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.81, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.82, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.83, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.84, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.85, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.86, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.87, ptr @mtk_afe_i2s_hd_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr null, ptr @.str.97, ptr @mtk_afe_i2s_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr null, ptr @.str.98, ptr @mtk_afe_i2s_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.88, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.89, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.90, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.91, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.92, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.93, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.94, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.95, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.96, ptr @mtk_afe_i2s_mclk_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr null, ptr @.str.97, ptr @mtk_afe_mclk_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr null, ptr @.str.98, ptr @mtk_afe_mclk_apll_connect, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.292, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr @.str.292, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.292, ptr @.str.7, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.292, ptr @.str.9, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.292, ptr @.str.10, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.292, ptr @.str.12, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr @.str.292, ptr @.str.14, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr @.str.300, ptr @.str.9, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.300, ptr @.str.7, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.6, ptr null, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.8, ptr null, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }], [5144 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CONNSYS_I2S\00", [20 x i8] zeroinitializer }, align 32
@mtk_dai_connsys_i2s_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_dai_connsys_i2s_hw_params, ptr null, ptr null, ptr @mtk_dai_connsys_i2s_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Connsys I2S\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S0\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_i2s_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @mtk_dai_i2s_set_sysclk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_dai_i2s_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S1\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S2\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S3\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S5\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S6\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S7\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S8\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S9\00", [27 x i8] zeroinitializer }, align 32
@mtk_dai_connsys_i2s_hw_params.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 1, i8 -127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mtk_dai_connsys_i2s_hw_params\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(), id %d, stream %d, rate %d\0A\00", [63 x i8] zeroinitializer }, align 32
@mtk_dai_connsys_i2s_trigger.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 1, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mtk_dai_connsys_i2s_trigger\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(), cmd %d, stream %d\0A\00", [39 x i8] zeroinitializer }, align 32
@mtk_dai_i2s_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 1784, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(), i2s_priv == NULL\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk_dai_i2s_set_sysclk\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_dai_i2s_set_sysclk._entry_ptr = internal global ptr @mtk_dai_i2s_set_sysclk._entry, section ".printk_index", align 4
@mtk_dai_i2s_set_sysclk._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.2, i32 1789, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(), dir != SND_SOC_CLOCK_OUT\00", [33 x i8] zeroinitializer }, align 32
@mtk_dai_i2s_set_sysclk._entry_ptr.25 = internal global ptr @mtk_dai_i2s_set_sysclk._entry.23, section ".printk_index", align 4
@mtk_dai_i2s_set_sysclk.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.26, i8 1, i8 -64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s(), freq %d\0A\00", [17 x i8] zeroinitializer }, align 32
@mtk_dai_i2s_set_sysclk._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.2, i32 1799, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(), freq > apll rate\00", [41 x i8] zeroinitializer }, align 32
@mtk_dai_i2s_set_sysclk._entry_ptr.29 = internal global ptr @mtk_dai_i2s_set_sysclk._entry.27, section ".printk_index", align 4
@mtk_dai_i2s_set_sysclk._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.20, ptr @.str.2, i32 1804, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s(), APLL can't gen freq Hz\00", [35 x i8] zeroinitializer }, align 32
@mtk_dai_i2s_set_sysclk._entry_ptr.32 = internal global ptr @mtk_dai_i2s_set_sysclk._entry.30, section ".printk_index", align 4
@mtk_dai_i2s_set_sysclk._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.20, ptr @.str.2, i32 1817, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(), share_i2s_priv = NULL\00", [36 x i8] zeroinitializer }, align 32
@mtk_dai_i2s_set_sysclk._entry_ptr.35 = internal global ptr @mtk_dai_i2s_set_sysclk._entry.33, section ".printk_index", align 4
@mtk_dai_i2s_config.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 1, i8 -93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtk_dai_i2s_config\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(), id %d, rate %d, format %d\0A\00", [63 x i8] zeroinitializer }, align 32
@mtk_dai_i2s_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.36, ptr @.str.2, i32 1683, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@mtk_dai_i2s_config._entry_ptr = internal global ptr @mtk_dai_i2s_config._entry, section ".printk_index", align 4
@mtk_dai_i2s_config._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.2, i32 1754, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(), id %d not support\0A\00", [39 x i8] zeroinitializer }, align 32
@mtk_dai_i2s_config._entry_ptr.40 = internal global ptr @mtk_dai_i2s_config._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I2S0_HD_Mux\00", [20 x i8] zeroinitializer }, align 32
@mt8192_i2s_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 2, i32 0, ptr @mt8192_i2s_hd_str, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I2S1_HD_Mux\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I2S2_HD_Mux\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I2S3_HD_Mux\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I2S5_HD_Mux\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I2S6_HD_Mux\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I2S7_HD_Mux\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I2S8_HD_Mux\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I2S9_HD_Mux\00", [20 x i8] zeroinitializer }, align 32
@mt8192_i2s_hd_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.50, ptr @.str.2, i32 146, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt8192_i2s_hd_get\00", [46 x i8] zeroinitializer }, align 32
@mt8192_i2s_hd_get._entry_ptr = internal global ptr @mt8192_i2s_hd_get._entry, section ".printk_index", align 4
@mt8192_i2s_hd_set.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt8192_i2s_hd_set\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(), kcontrol name %s, hd_en %d\0A\00", [62 x i8] zeroinitializer }, align 32
@mt8192_i2s_hd_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.51, ptr @.str.2, i32 175, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@mt8192_i2s_hd_set._entry_ptr = internal global ptr @mt8192_i2s_hd_set._entry, section ".printk_index", align 4
@mt8192_i2s_hd_str = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.53, ptr @.str.54], [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Normal\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Low_Jitter\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CONNSYS\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"I2S1_CH1\00", [23 x i8] zeroinitializer }, align 32
@mtk_i2s1_ch1_mix = internal constant { [13 x %struct.snd_kcontrol_new], [144 x i8] } { [13 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.111, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.113 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.115 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.116, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.117 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.119 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.121 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.123 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.125 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.127 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.129 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.131 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.133 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.135 to i32) }], [144 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"I2S1_CH2\00", [23 x i8] zeroinitializer }, align 32
@mtk_i2s1_ch2_mix = internal constant { [15 x %struct.snd_kcontrol_new], [176 x i8] } { [15 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.136, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.137 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.138, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.139 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.140, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.141 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.142, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.143 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.144, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.145 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.146, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.147 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.148, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.149 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.150, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.151 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.152, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.153 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.154, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.155 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.156, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.157 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.158 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.159 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.160, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.161 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.162, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.163 to i32) }], [176 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"I2S3_CH1\00", [23 x i8] zeroinitializer }, align 32
@mtk_i2s3_ch1_mix = internal constant { [15 x %struct.snd_kcontrol_new], [176 x i8] } { [15 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.111, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.164 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.165 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.166 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.116, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.167 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.168 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.169 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.170 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.171 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.172 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.173 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.174 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.156, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.175 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.177 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.178 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.179 to i32) }], [176 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"I2S3_CH2\00", [23 x i8] zeroinitializer }, align 32
@mtk_i2s3_ch2_mix = internal constant { [17 x %struct.snd_kcontrol_new], [208 x i8] } { [17 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.136, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.180 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.138, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.181 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.140, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.182 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.142, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.183 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.144, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.184 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.146, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.185 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.148, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.186 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.150, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.187 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.152, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.188 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.154, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.189 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.190 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.156, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.191 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.192 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.193 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.194 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.160, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.195 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.162, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.196 to i32) }], [208 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"I2S5_CH1\00", [23 x i8] zeroinitializer }, align 32
@mtk_i2s5_ch1_mix = internal constant { [13 x %struct.snd_kcontrol_new], [144 x i8] } { [13 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.111, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.197 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.198 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.199 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.116, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.200 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.201 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.202 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.203 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.204 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.205 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.206 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.207 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.208 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.209 to i32) }], [144 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"I2S5_CH2\00", [23 x i8] zeroinitializer }, align 32
@mtk_i2s5_ch2_mix = internal constant { [15 x %struct.snd_kcontrol_new], [176 x i8] } { [15 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.136, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.210 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.138, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.211 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.140, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.212 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.142, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.213 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.144, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.214 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.146, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.215 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.148, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.216 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.150, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.217 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.152, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.218 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.154, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.219 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.156, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.220 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.221 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.222 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.160, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.223 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.162, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.224 to i32) }], [176 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"I2S7_CH1\00", [23 x i8] zeroinitializer }, align 32
@mtk_i2s7_ch1_mix = internal constant { [12 x %struct.snd_kcontrol_new], [128 x i8] } { [12 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.111, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.225 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.226 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.227 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.116, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.228 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.229 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.230 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.231 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.232 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.233 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.234 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.235 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.236 to i32) }], [128 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"I2S7_CH2\00", [23 x i8] zeroinitializer }, align 32
@mtk_i2s7_ch2_mix = internal constant { [14 x %struct.snd_kcontrol_new], [160 x i8] } { [14 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.136, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.237 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.138, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.238 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.140, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.239 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.142, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.240 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.144, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.241 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.146, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.242 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.148, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.243 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.152, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.244 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.154, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.245 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.156, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.246 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.247 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.248 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.160, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.249 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.162, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.250 to i32) }], [160 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"I2S9_CH1\00", [23 x i8] zeroinitializer }, align 32
@mtk_i2s9_ch1_mix = internal constant { [13 x %struct.snd_kcontrol_new], [144 x i8] } { [13 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.111, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.251 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.252 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.253 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.116, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.254 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.255 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.256 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.257 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.258 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.259 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.260 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.261 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.262 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.263 to i32) }], [144 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"I2S9_CH2\00", [23 x i8] zeroinitializer }, align 32
@mtk_i2s9_ch2_mix = internal constant { [15 x %struct.snd_kcontrol_new], [176 x i8] } { [15 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.136, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.264 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.138, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.265 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.140, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.266 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.142, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.267 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.144, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.268 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.146, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.269 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.148, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.270 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.150, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.271 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.152, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.272 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.154, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.273 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.156, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.274 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.275 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.276 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.160, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.277 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.162, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.278 to i32) }], [176 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"I2S1_TINYCONN_CH1_MUX\00", [42 x i8] zeroinitializer }, align 32
@i2s1_tinyconn_ch1_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.282, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @i2s1_tinyconn_ch1_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"I2S1_TINYCONN_CH2_MUX\00", [42 x i8] zeroinitializer }, align 32
@i2s1_tinyconn_ch2_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.284, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @i2s1_tinyconn_ch2_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"I2S3_TINYCONN_CH1_MUX\00", [42 x i8] zeroinitializer }, align 32
@i2s3_tinyconn_ch1_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.285, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @i2s3_tinyconn_ch1_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"I2S3_TINYCONN_CH2_MUX\00", [42 x i8] zeroinitializer }, align 32
@i2s3_tinyconn_ch2_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.286, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @i2s3_tinyconn_ch2_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"I2S0_EN\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"I2S1_EN\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"I2S2_EN\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"I2S3_EN\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"I2S5_EN\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"I2S6_EN\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"I2S7_EN\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"I2S8_EN\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"I2S9_EN\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I2S0_HD_EN\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I2S1_HD_EN\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I2S2_HD_EN\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I2S3_HD_EN\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I2S5_HD_EN\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I2S6_HD_EN\00", [21 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I2S7_HD_EN\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I2S8_HD_EN\00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I2S9_HD_EN\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I2S0_MCLK_EN\00", [19 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I2S1_MCLK_EN\00", [19 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I2S2_MCLK_EN\00", [19 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I2S3_MCLK_EN\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I2S5_MCLK_EN\00", [19 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I2S6_MCLK_EN\00", [19 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I2S7_MCLK_EN\00", [19 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I2S8_MCLK_EN\00", [19 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I2S9_MCLK_EN\00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"APLL1\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"APLL2\00", [26 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"I2S_DUMMY_OUT\00", [18 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I2S1_Out_Mux\00", [19 x i8] zeroinitializer }, align 32
@i2s1_out_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.291, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @i2s_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I2S3_Out_Mux\00", [19 x i8] zeroinitializer }, align 32
@i2s3_out_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.293, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @i2s_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I2S5_Out_Mux\00", [19 x i8] zeroinitializer }, align 32
@i2s5_out_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.294, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @i2s_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I2S7_Out_Mux\00", [19 x i8] zeroinitializer }, align 32
@i2s7_out_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.295, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @i2s_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I2S9_Out_Mux\00", [19 x i8] zeroinitializer }, align 32
@i2s9_out_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.296, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @i2s_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I2S_DUMMY_IN\00", [19 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I2S0_In_Mux\00", [20 x i8] zeroinitializer }, align 32
@i2s0_in_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.297, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @i2s_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I2S8_In_Mux\00", [20 x i8] zeroinitializer }, align 32
@i2s8_in_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.298, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @i2s_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"I2S0_Lpbk_Mux\00", [18 x i8] zeroinitializer }, align 32
@i2s0_lpbk_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.299, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @i2s0_lpbk_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"I2S2_Lpbk_Mux\00", [18 x i8] zeroinitializer }, align 32
@i2s2_lpbk_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.299, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @i2s2_lpbk_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@mtk_dai_i2s_widgets = internal constant { [55 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [2484 x i8] } { [55 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.55, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.56, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 13, ptr @mtk_i2s1_ch1_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.57, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 15, ptr @mtk_i2s1_ch2_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.58, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 15, ptr @mtk_i2s3_ch1_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 17, ptr @mtk_i2s3_ch2_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.60, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 13, ptr @mtk_i2s5_ch1_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 15, ptr @mtk_i2s5_ch2_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 12, ptr @mtk_i2s7_ch1_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.63, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 14, ptr @mtk_i2s7_ch2_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.64, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 13, ptr @mtk_i2s9_ch1_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.65, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 15, ptr @mtk_i2s9_ch2_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.66, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 5, ptr @i2s_out_tinyconn_event, i32 1, ptr @i2s1_tinyconn_ch1_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 5, ptr @i2s_out_tinyconn_event, i32 1, ptr @i2s1_tinyconn_ch2_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.68, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 5, ptr @i2s_out_tinyconn_event, i32 1, ptr @i2s3_tinyconn_ch1_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.69, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 5, ptr @i2s_out_tinyconn_event, i32 1, ptr @i2s3_tinyconn_ch2_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.70, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 24, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 9, ptr @mtk_i2s_en_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.71, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 52, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 9, ptr @mtk_i2s_en_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.72, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 56, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 9, ptr @mtk_i2s_en_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.73, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 64, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 9, ptr @mtk_i2s_en_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2552, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 9, ptr @mtk_i2s_en_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1380, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 9, ptr @mtk_i2s_en_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.76, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1384, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 9, ptr @mtk_i2s_en_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1388, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 9, ptr @mtk_i2s_en_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1392, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 9, ptr @mtk_i2s_en_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 24, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 52, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.81, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 56, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.82, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 64, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2552, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1380, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.85, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1384, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1388, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1392, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 9, ptr @mtk_mclk_en_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.89, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 9, ptr @mtk_mclk_en_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.90, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 9, ptr @mtk_mclk_en_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 9, ptr @mtk_mclk_en_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 9, ptr @mtk_mclk_en_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 9, ptr @mtk_mclk_en_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.94, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 9, ptr @mtk_mclk_en_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 9, ptr @mtk_mclk_en_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 9, ptr @mtk_mclk_en_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @mtk_apll_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @mtk_apll_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @i2s1_out_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @i2s3_out_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @i2s5_out_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @i2s7_out_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @i2s9_out_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.106, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @i2s0_in_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.107, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @i2s8_in_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @i2s0_lpbk_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.109, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @i2s2_lpbk_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [2484 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL1_CH1\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1212, i32 1212, i32 5, i32 5, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL2_CH1\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1212, i32 1212, i32 7, i32 7, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL3_CH1\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1212, i32 1212, i32 23, i32 23, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DL12_CH1\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.117 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1212, i32 1212, i32 19, i32 19, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL6_CH1\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.119 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2416, i32 2416, i32 12, i32 12, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL4_CH1\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.121 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2416, i32 2416, i32 8, i32 8, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL5_CH1\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.123 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2416, i32 2416, i32 10, i32 10, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL8_CH1\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2416, i32 2416, i32 16, i32 16, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL9_CH1\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2416, i32 2416, i32 18, i32 18, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GAIN1_OUT_CH1\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.129 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1212, i32 1212, i32 10, i32 10, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADDA_UL_CH1\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.131 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1212, i32 1212, i32 3, i32 3, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCM_1_CAP_CH1\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.133 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1212, i32 1212, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCM_2_CAP_CH1\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.135 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1212, i32 1212, i32 14, i32 14, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL1_CH2\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.137 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1216, i32 1216, i32 6, i32 6, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL2_CH2\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.139 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1216, i32 1216, i32 8, i32 8, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL3_CH2\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.141 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1216, i32 1216, i32 24, i32 24, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DL12_CH2\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1216, i32 1216, i32 20, i32 20, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL6_CH2\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2420, i32 2420, i32 13, i32 13, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL4_CH2\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.147 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2420, i32 2420, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL5_CH2\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.149 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2420, i32 2420, i32 11, i32 11, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL8_CH2\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.151 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2420, i32 2420, i32 17, i32 17, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL9_CH2\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.153 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2420, i32 2420, i32 19, i32 19, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GAIN1_OUT_CH2\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.155 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1216, i32 1216, i32 11, i32 11, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADDA_UL_CH2\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.157 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1216, i32 1216, i32 4, i32 4, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.158 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1216, i32 1216, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.159 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1216, i32 1216, i32 14, i32 14, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCM_1_CAP_CH2\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.161 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1216, i32 1216, i32 22, i32 22, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCM_2_CAP_CH2\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.163 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1216, i32 1216, i32 21, i32 21, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.164 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 5, i32 5, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.165 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 7, i32 7, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.166 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 23, i32 23, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.167 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 19, i32 19, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.168 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2304, i32 2304, i32 12, i32 12, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.169 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2304, i32 2304, i32 8, i32 8, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.170 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2304, i32 2304, i32 10, i32 10, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.171 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2304, i32 2304, i32 16, i32 16, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.172 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2304, i32 2304, i32 18, i32 18, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.173 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 10, i32 10, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.174 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 3, i32 3, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.175 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 4, i32 4, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADDA_UL_CH3\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.177 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 17, i32 17, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.178 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.179 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 14, i32 14, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.180 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 6, i32 6, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.181 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 8, i32 8, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.182 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 24, i32 24, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.183 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 20, i32 20, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.184 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2308, i32 2308, i32 13, i32 13, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.185 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2308, i32 2308, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.186 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2308, i32 2308, i32 11, i32 11, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.187 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2308, i32 2308, i32 17, i32 17, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.188 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2308, i32 2308, i32 19, i32 19, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.189 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 11, i32 11, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.190 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 3, i32 3, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.191 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 4, i32 4, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.192 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 17, i32 17, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.193 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.194 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 14, i32 14, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.195 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 22, i32 22, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.196 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 21, i32 21, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.197 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1220, i32 1220, i32 5, i32 5, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.198 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1220, i32 1220, i32 7, i32 7, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.199 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1220, i32 1220, i32 23, i32 23, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.200 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1220, i32 1220, i32 19, i32 19, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.201 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2424, i32 2424, i32 12, i32 12, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.202 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2424, i32 2424, i32 8, i32 8, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.203 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2424, i32 2424, i32 10, i32 10, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.204 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2424, i32 2424, i32 16, i32 16, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.205 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2424, i32 2424, i32 18, i32 18, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.206 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1220, i32 1220, i32 10, i32 10, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.207 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1220, i32 1220, i32 3, i32 3, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.208 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1220, i32 1220, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.209 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1220, i32 1220, i32 14, i32 14, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.210 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1224, i32 1224, i32 6, i32 6, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.211 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1224, i32 1224, i32 8, i32 8, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.212 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1224, i32 1224, i32 24, i32 24, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.213 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1224, i32 1224, i32 20, i32 20, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.214 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2428, i32 2428, i32 13, i32 13, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.215 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2428, i32 2428, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.216 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2428, i32 2428, i32 11, i32 11, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.217 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2428, i32 2428, i32 17, i32 17, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.218 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2428, i32 2428, i32 19, i32 19, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.219 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1224, i32 1224, i32 11, i32 11, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.220 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1224, i32 1224, i32 4, i32 4, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.221 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1224, i32 1224, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.222 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1224, i32 1224, i32 14, i32 14, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.223 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1224, i32 1224, i32 22, i32 22, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.224 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1224, i32 1224, i32 21, i32 21, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.225 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3800, i32 3800, i32 5, i32 5, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.226 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3800, i32 3800, i32 7, i32 7, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.227 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3800, i32 3800, i32 23, i32 23, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.228 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3800, i32 3800, i32 19, i32 19, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.229 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3832, i32 3832, i32 12, i32 12, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.230 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3832, i32 3832, i32 8, i32 8, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.231 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3832, i32 3832, i32 10, i32 10, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.232 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3832, i32 3832, i32 18, i32 18, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.233 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3800, i32 3800, i32 10, i32 10, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.234 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3800, i32 3800, i32 3, i32 3, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.235 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3800, i32 3800, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.236 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3800, i32 3800, i32 14, i32 14, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.237 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3804, i32 3804, i32 6, i32 6, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.238 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3804, i32 3804, i32 8, i32 8, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.239 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3804, i32 3804, i32 24, i32 24, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.240 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3804, i32 3804, i32 20, i32 20, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.241 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3836, i32 3836, i32 13, i32 13, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.242 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3836, i32 3836, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.243 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3836, i32 3836, i32 11, i32 11, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.244 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3836, i32 3836, i32 19, i32 19, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.245 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3804, i32 3804, i32 11, i32 11, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.246 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3804, i32 3804, i32 4, i32 4, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.247 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3804, i32 3804, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.248 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3804, i32 3804, i32 14, i32 14, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.249 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3804, i32 3804, i32 22, i32 22, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.250 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3804, i32 3804, i32 21, i32 21, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.251 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1280, i32 1280, i32 5, i32 5, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.252 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1280, i32 1280, i32 7, i32 7, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.253 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1280, i32 1280, i32 23, i32 23, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.254 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1280, i32 1280, i32 19, i32 19, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.255 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1296, i32 1296, i32 12, i32 12, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.256 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1296, i32 1296, i32 8, i32 8, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.257 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1296, i32 1296, i32 10, i32 10, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.258 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1296, i32 1296, i32 16, i32 16, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.259 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1296, i32 1296, i32 18, i32 18, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.260 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1280, i32 1280, i32 10, i32 10, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.261 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1280, i32 1280, i32 3, i32 3, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.262 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1280, i32 1280, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.263 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1280, i32 1280, i32 14, i32 14, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.264 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1284, i32 1284, i32 6, i32 6, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.265 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1284, i32 1284, i32 8, i32 8, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.266 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1284, i32 1284, i32 24, i32 24, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.267 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1284, i32 1284, i32 20, i32 20, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.268 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1300, i32 1300, i32 13, i32 13, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.269 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1300, i32 1300, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.270 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1300, i32 1300, i32 11, i32 11, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.271 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1300, i32 1300, i32 17, i32 17, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.272 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1300, i32 1300, i32 19, i32 19, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.273 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1284, i32 1284, i32 11, i32 11, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.274 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1284, i32 1284, i32 4, i32 4, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.275 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1284, i32 1284, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.276 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1284, i32 1284, i32 14, i32 14, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.277 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1284, i32 1284, i32 22, i32 22, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.278 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1284, i32 1284, i32 21, i32 21, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@i2s_out_tinyconn_event.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.279, ptr @.str.2, ptr @.str.280, i8 0, i8 -93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.279 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i2s_out_tinyconn_event\00", [41 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s(), event 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@i2s_out_tinyconn_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.281, ptr @.str.279, ptr @.str.2, i32 682, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(), error widget name %s, use i2s1\0A\00", [58 x i8] zeroinitializer }, align 32
@i2s_out_tinyconn_event._entry_ptr = internal global ptr @i2s_out_tinyconn_event._entry, section ".printk_index", align 4
@.str.282 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"i2s1 ch1 tinyconn Select\00", [39 x i8] zeroinitializer }, align 32
@i2s1_tinyconn_ch1_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 1324, i8 0, i8 0, i32 9, i32 31, ptr @tinyconn_mux_map, ptr @tinyconn_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@tinyconn_mux_map = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.283, ptr @.str.111, ptr @.str.136, ptr @.str.116, ptr @.str.142, ptr @.str.112, ptr @.str.138, ptr @.str.114, ptr @.str.140], [60 x i8] zeroinitializer }, align 32
@tinyconn_mux_map_value = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], [60 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"i2s1 ch2 tinyconn Select\00", [39 x i8] zeroinitializer }, align 32
@i2s1_tinyconn_ch2_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 1324, i8 8, i8 8, i32 9, i32 31, ptr @tinyconn_mux_map, ptr @tinyconn_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"i2s3 ch1 tinyconn Select\00", [39 x i8] zeroinitializer }, align 32
@i2s3_tinyconn_ch1_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 1324, i8 16, i8 16, i32 9, i32 31, ptr @tinyconn_mux_map, ptr @tinyconn_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"i2s3 ch2 tinyconn Select\00", [39 x i8] zeroinitializer }, align 32
@i2s3_tinyconn_ch2_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 1324, i8 24, i8 24, i32 9, i32 31, ptr @tinyconn_mux_map, ptr @tinyconn_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@mtk_i2s_en_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.287, ptr @.str.2, i32 594, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk_i2s_en_event\00", [47 x i8] zeroinitializer }, align 32
@mtk_i2s_en_event._entry_ptr = internal global ptr @mtk_i2s_en_event._entry, section ".printk_index", align 4
@mtk_i2s_en_event.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.287, ptr @.str.2, ptr @.str.288, i8 0, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.288 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(), name %s, event 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@mtk_mclk_en_event.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.289, ptr @.str.2, ptr @.str.288, i8 0, i8 -79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.289 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_mclk_en_event\00", [46 x i8] zeroinitializer }, align 32
@mtk_mclk_en_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.289, ptr @.str.2, i32 714, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@mtk_mclk_en_event._entry_ptr = internal global ptr @mtk_mclk_en_event._entry, section ".printk_index", align 4
@mtk_apll_event.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.290, ptr @.str.2, ptr @.str.288, i8 0, i8 -101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.290 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_apll_event\00", [17 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"I2S1 Out Select\00", [16 x i8] zeroinitializer }, align 32
@i2s_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 2, i32 1, ptr @i2s_mux_map, ptr @i2s_mux_map_value, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@i2s_mux_map = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.53, ptr @.str.292], [24 x i8] zeroinitializer }, align 32
@i2s_mux_map_value = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 1], [24 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Dummy_Widget\00", [19 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"I2S3 Out Select\00", [16 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"I2S5 Out Select\00", [16 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"I2S7 Out Select\00", [16 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"I2S9 Out Select\00", [16 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"I2S0 In Select\00", [17 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"I2S8 In Select\00", [17 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"I2S Lpbk Select\00", [16 x i8] zeroinitializer }, align 32
@i2s0_lpbk_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 24, i8 20, i8 20, i32 2, i32 1, ptr @i2s_lpbk_mux_map, ptr @i2s_lpbk_mux_map_value, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@i2s_lpbk_mux_map = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.53, ptr @.str.300], [24 x i8] zeroinitializer }, align 32
@i2s_lpbk_mux_map_value = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 1], [24 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Lpbk\00", [27 x i8] zeroinitializer }, align 32
@i2s2_lpbk_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 56, i8 20, i8 20, i32 2, i32 1, ptr @i2s_lpbk_mux_map, ptr @i2s_lpbk_mux_map_value, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL1\00", [28 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL2\00", [28 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL3\00", [28 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DL12\00", [27 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL4\00", [28 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL5\00", [28 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL6\00", [28 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL8\00", [28 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL9\00", [28 x i8] zeroinitializer }, align 32
@mtk_afe_i2s_share_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.310, ptr @.str.2, i32 929, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mtk_afe_i2s_share_connect\00", [38 x i8] zeroinitializer }, align 32
@mtk_afe_i2s_share_connect._entry_ptr = internal global ptr @mtk_afe_i2s_share_connect._entry, section ".printk_index", align 4
@mtk_afe_i2s_hd_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.311, ptr @.str.2, i32 949, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk_afe_i2s_hd_connect\00", [41 x i8] zeroinitializer }, align 32
@mtk_afe_i2s_hd_connect._entry_ptr = internal global ptr @mtk_afe_i2s_hd_connect._entry, section ".printk_index", align 4
@mtk_afe_i2s_apll_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.312, ptr @.str.2, i32 979, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mtk_afe_i2s_apll_connect\00", [39 x i8] zeroinitializer }, align 32
@mtk_afe_i2s_apll_connect._entry_ptr = internal global ptr @mtk_afe_i2s_apll_connect._entry, section ".printk_index", align 4
@mtk_afe_i2s_mclk_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.313, ptr @.str.2, i32 1005, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mtk_afe_i2s_mclk_connect\00", [39 x i8] zeroinitializer }, align 32
@mtk_afe_i2s_mclk_connect._entry_ptr = internal global ptr @mtk_afe_i2s_mclk_connect._entry, section ".printk_index", align 4
@mtk_afe_mclk_apll_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.314, ptr @.str.2, i32 1034, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mtk_afe_mclk_apll_connect\00", [38 x i8] zeroinitializer }, align 32
@mtk_afe_mclk_apll_connect._entry_ptr = internal global ptr @mtk_afe_mclk_apll_connect._entry, section ".printk_index", align 4
@mt8192_i2s_priv = internal constant { [9 x %struct.mtk_afe_i2s_priv], [64 x i8] } { [9 x %struct.mtk_afe_i2s_priv] [%struct.mtk_afe_i2s_priv { i32 28, i32 0, i32 0, ptr @.str.315, i32 -1, i32 0, i32 0, i32 0 }, %struct.mtk_afe_i2s_priv { i32 29, i32 0, i32 0, ptr @.str.316, i32 -1, i32 1, i32 0, i32 0 }, %struct.mtk_afe_i2s_priv { i32 30, i32 0, i32 0, ptr @.str.317, i32 -1, i32 2, i32 0, i32 0 }, %struct.mtk_afe_i2s_priv { i32 31, i32 0, i32 0, ptr @.str.318, i32 -1, i32 3, i32 0, i32 0 }, %struct.mtk_afe_i2s_priv { i32 32, i32 0, i32 0, ptr @.str.319, i32 -1, i32 6, i32 0, i32 0 }, %struct.mtk_afe_i2s_priv { i32 33, i32 0, i32 0, ptr @.str.320, i32 -1, i32 7, i32 0, i32 0 }, %struct.mtk_afe_i2s_priv { i32 34, i32 0, i32 0, ptr @.str.321, i32 -1, i32 8, i32 0, i32 0 }, %struct.mtk_afe_i2s_priv { i32 35, i32 0, i32 0, ptr @.str.322, i32 -1, i32 9, i32 0, i32 0 }, %struct.mtk_afe_i2s_priv { i32 36, i32 0, i32 0, ptr @.str.323, i32 -1, i32 10, i32 0, i32 0 }], [64 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2s0-share\00", [21 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2s1-share\00", [21 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2s2-share\00", [21 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2s3-share\00", [21 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2s5-share\00", [21 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2s6-share\00", [21 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2s7-share\00", [21 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2s8-share\00", [21 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2s9-share\00", [21 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_i2s_config = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 268435464, i32 8, i32 134217736, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8], [60 x i8] zeroinitializer }, align 32
@switch.table.mtk_dai_i2s_config.324 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 24, i32 52, i32 56, i32 64, i32 2552, i32 1380, i32 1384, i32 1388, i32 1392], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.325 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.326 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.327 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.328 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 2081, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant [19 x i8] c"mtk_dai_i2s_driver\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1846, i32 34 }
@___asan_gen_.344 = private unnamed_addr constant [21 x i8] c"mtk_dai_i2s_controls\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 184, i32 38 }
@___asan_gen_.347 = private unnamed_addr constant [19 x i8] c"mtk_dai_i2s_routes\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1047, i32 40 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1848, i32 11 }
@___asan_gen_.353 = private unnamed_addr constant [24 x i8] c"mtk_dai_connsys_i2s_ops\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1657, i32 37 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1851, i32 19 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1860, i32 11 }
@___asan_gen_.362 = private unnamed_addr constant [16 x i8] c"mtk_dai_i2s_ops\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1828, i32 37 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1872, i32 11 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1884, i32 11 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1896, i32 11 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1908, i32 11 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1920, i32 11 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1932, i32 11 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1944, i32 11 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1956, i32 11 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1539, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1596, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1784, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1789, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1793, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1799, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1804, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1816, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1677, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1683, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1753, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 185, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant [16 x i8] c"mt8192_i2s_enum\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 134, i32 8 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 187, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 189, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 191, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 193, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 195, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 197, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 199, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 201, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 146, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 169, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 175, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant [18 x i8] c"mt8192_i2s_hd_str\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 130, i32 27 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 131, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 131, i32 12 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 734, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 736, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant [17 x i8] c"mtk_i2s1_ch1_mix\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 402, i32 38 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 739, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant [17 x i8] c"mtk_i2s1_ch2_mix\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 422, i32 38 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 743, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant [17 x i8] c"mtk_i2s3_ch1_mix\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 350, i32 38 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 746, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant [17 x i8] c"mtk_i2s3_ch2_mix\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 374, i32 38 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 750, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant [17 x i8] c"mtk_i2s5_ch1_mix\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 446, i32 38 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 753, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant [17 x i8] c"mtk_i2s5_ch2_mix\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 466, i32 38 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 757, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant [17 x i8] c"mtk_i2s7_ch1_mix\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 490, i32 38 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 760, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant [17 x i8] c"mtk_i2s7_ch2_mix\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 509, i32 38 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 764, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant [17 x i8] c"mtk_i2s9_ch1_mix\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 532, i32 38 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 767, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant [17 x i8] c"mtk_i2s9_ch2_mix\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 552, i32 38 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 771, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant [30 x i8] c"i2s1_tinyconn_ch1_mux_control\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 286, i32 38 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 775, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant [30 x i8] c"i2s1_tinyconn_ch2_mux_control\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 296, i32 38 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 779, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant [30 x i8] c"i2s3_tinyconn_ch1_mux_control\00", align 1
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 306, i32 38 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 783, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant [30 x i8] c"i2s3_tinyconn_ch2_mux_control\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 316, i32 38 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 789, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 793, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 797, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 801, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 805, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 809, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 813, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 817, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 821, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 826, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 828, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 830, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 832, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 834, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 836, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 838, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 840, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 842, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 846, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 850, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 854, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 858, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 862, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 866, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 870, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 874, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 878, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 884, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 888, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 894, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 895, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant [21 x i8] c"i2s1_out_mux_control\00", align 1
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 228, i32 38 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 897, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant [21 x i8] c"i2s3_out_mux_control\00", align 1
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 231, i32 38 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 899, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant [21 x i8] c"i2s5_out_mux_control\00", align 1
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 234, i32 38 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 901, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant [21 x i8] c"i2s7_out_mux_control\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 237, i32 38 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 903, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant [21 x i8] c"i2s9_out_mux_control\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 240, i32 38 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 906, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 907, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant [20 x i8] c"i2s0_in_mux_control\00", align 1
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 222, i32 38 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 909, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant [20 x i8] c"i2s8_in_mux_control\00", align 1
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 225, i32 38 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 913, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant [22 x i8] c"i2s0_lpbk_mux_control\00", align 1
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 336, i32 38 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 915, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant [22 x i8] c"i2s2_lpbk_mux_control\00", align 1
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 346, i32 38 }
@___asan_gen_.746 = private unnamed_addr constant [20 x i8] c"mtk_dai_i2s_widgets\00", align 1
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 733, i32 41 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 403, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 404, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 405, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 406, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant [21 x i8] c".compoundliteral.117\00", align 1
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 407, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant [21 x i8] c".compoundliteral.119\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 408, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant [21 x i8] c".compoundliteral.121\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 409, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant [21 x i8] c".compoundliteral.123\00", align 1
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 410, i32 2 }
@___asan_gen_.780 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 411, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 412, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant [21 x i8] c".compoundliteral.129\00", align 1
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 414, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant [21 x i8] c".compoundliteral.131\00", align 1
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 416, i32 2 }
@___asan_gen_.796 = private unnamed_addr constant [21 x i8] c".compoundliteral.133\00", align 1
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 418, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant [21 x i8] c".compoundliteral.135\00", align 1
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 423, i32 2 }
@___asan_gen_.804 = private unnamed_addr constant [21 x i8] c".compoundliteral.137\00", align 1
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 424, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant [21 x i8] c".compoundliteral.139\00", align 1
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 425, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant [21 x i8] c".compoundliteral.141\00", align 1
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 426, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 427, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 428, i32 2 }
@___asan_gen_.824 = private unnamed_addr constant [21 x i8] c".compoundliteral.147\00", align 1
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 429, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant [21 x i8] c".compoundliteral.149\00", align 1
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 430, i32 2 }
@___asan_gen_.832 = private unnamed_addr constant [21 x i8] c".compoundliteral.151\00", align 1
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 431, i32 2 }
@___asan_gen_.836 = private unnamed_addr constant [21 x i8] c".compoundliteral.153\00", align 1
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 432, i32 2 }
@___asan_gen_.840 = private unnamed_addr constant [21 x i8] c".compoundliteral.155\00", align 1
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 434, i32 2 }
@___asan_gen_.844 = private unnamed_addr constant [21 x i8] c".compoundliteral.157\00", align 1
@___asan_gen_.845 = private unnamed_addr constant [21 x i8] c".compoundliteral.158\00", align 1
@___asan_gen_.846 = private unnamed_addr constant [21 x i8] c".compoundliteral.159\00", align 1
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 440, i32 2 }
@___asan_gen_.850 = private unnamed_addr constant [21 x i8] c".compoundliteral.161\00", align 1
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 442, i32 2 }
@___asan_gen_.854 = private unnamed_addr constant [21 x i8] c".compoundliteral.163\00", align 1
@___asan_gen_.855 = private unnamed_addr constant [21 x i8] c".compoundliteral.164\00", align 1
@___asan_gen_.856 = private unnamed_addr constant [21 x i8] c".compoundliteral.165\00", align 1
@___asan_gen_.857 = private unnamed_addr constant [21 x i8] c".compoundliteral.166\00", align 1
@___asan_gen_.858 = private unnamed_addr constant [21 x i8] c".compoundliteral.167\00", align 1
@___asan_gen_.859 = private unnamed_addr constant [21 x i8] c".compoundliteral.168\00", align 1
@___asan_gen_.860 = private unnamed_addr constant [21 x i8] c".compoundliteral.169\00", align 1
@___asan_gen_.861 = private unnamed_addr constant [21 x i8] c".compoundliteral.170\00", align 1
@___asan_gen_.862 = private unnamed_addr constant [21 x i8] c".compoundliteral.171\00", align 1
@___asan_gen_.863 = private unnamed_addr constant [21 x i8] c".compoundliteral.172\00", align 1
@___asan_gen_.864 = private unnamed_addr constant [21 x i8] c".compoundliteral.173\00", align 1
@___asan_gen_.865 = private unnamed_addr constant [21 x i8] c".compoundliteral.174\00", align 1
@___asan_gen_.866 = private unnamed_addr constant [21 x i8] c".compoundliteral.175\00", align 1
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 366, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant [21 x i8] c".compoundliteral.177\00", align 1
@___asan_gen_.871 = private unnamed_addr constant [21 x i8] c".compoundliteral.178\00", align 1
@___asan_gen_.872 = private unnamed_addr constant [21 x i8] c".compoundliteral.179\00", align 1
@___asan_gen_.873 = private unnamed_addr constant [21 x i8] c".compoundliteral.180\00", align 1
@___asan_gen_.874 = private unnamed_addr constant [21 x i8] c".compoundliteral.181\00", align 1
@___asan_gen_.875 = private unnamed_addr constant [21 x i8] c".compoundliteral.182\00", align 1
@___asan_gen_.876 = private unnamed_addr constant [21 x i8] c".compoundliteral.183\00", align 1
@___asan_gen_.877 = private unnamed_addr constant [21 x i8] c".compoundliteral.184\00", align 1
@___asan_gen_.878 = private unnamed_addr constant [21 x i8] c".compoundliteral.185\00", align 1
@___asan_gen_.879 = private unnamed_addr constant [21 x i8] c".compoundliteral.186\00", align 1
@___asan_gen_.880 = private unnamed_addr constant [21 x i8] c".compoundliteral.187\00", align 1
@___asan_gen_.881 = private unnamed_addr constant [21 x i8] c".compoundliteral.188\00", align 1
@___asan_gen_.882 = private unnamed_addr constant [21 x i8] c".compoundliteral.189\00", align 1
@___asan_gen_.883 = private unnamed_addr constant [21 x i8] c".compoundliteral.190\00", align 1
@___asan_gen_.884 = private unnamed_addr constant [21 x i8] c".compoundliteral.191\00", align 1
@___asan_gen_.885 = private unnamed_addr constant [21 x i8] c".compoundliteral.192\00", align 1
@___asan_gen_.886 = private unnamed_addr constant [21 x i8] c".compoundliteral.193\00", align 1
@___asan_gen_.887 = private unnamed_addr constant [21 x i8] c".compoundliteral.194\00", align 1
@___asan_gen_.888 = private unnamed_addr constant [21 x i8] c".compoundliteral.195\00", align 1
@___asan_gen_.889 = private unnamed_addr constant [21 x i8] c".compoundliteral.196\00", align 1
@___asan_gen_.890 = private unnamed_addr constant [21 x i8] c".compoundliteral.197\00", align 1
@___asan_gen_.891 = private unnamed_addr constant [21 x i8] c".compoundliteral.198\00", align 1
@___asan_gen_.892 = private unnamed_addr constant [21 x i8] c".compoundliteral.199\00", align 1
@___asan_gen_.893 = private unnamed_addr constant [21 x i8] c".compoundliteral.200\00", align 1
@___asan_gen_.894 = private unnamed_addr constant [21 x i8] c".compoundliteral.201\00", align 1
@___asan_gen_.895 = private unnamed_addr constant [21 x i8] c".compoundliteral.202\00", align 1
@___asan_gen_.896 = private unnamed_addr constant [21 x i8] c".compoundliteral.203\00", align 1
@___asan_gen_.897 = private unnamed_addr constant [21 x i8] c".compoundliteral.204\00", align 1
@___asan_gen_.898 = private unnamed_addr constant [21 x i8] c".compoundliteral.205\00", align 1
@___asan_gen_.899 = private unnamed_addr constant [21 x i8] c".compoundliteral.206\00", align 1
@___asan_gen_.900 = private unnamed_addr constant [21 x i8] c".compoundliteral.207\00", align 1
@___asan_gen_.901 = private unnamed_addr constant [21 x i8] c".compoundliteral.208\00", align 1
@___asan_gen_.902 = private unnamed_addr constant [21 x i8] c".compoundliteral.209\00", align 1
@___asan_gen_.903 = private unnamed_addr constant [21 x i8] c".compoundliteral.210\00", align 1
@___asan_gen_.904 = private unnamed_addr constant [21 x i8] c".compoundliteral.211\00", align 1
@___asan_gen_.905 = private unnamed_addr constant [21 x i8] c".compoundliteral.212\00", align 1
@___asan_gen_.906 = private unnamed_addr constant [21 x i8] c".compoundliteral.213\00", align 1
@___asan_gen_.907 = private unnamed_addr constant [21 x i8] c".compoundliteral.214\00", align 1
@___asan_gen_.908 = private unnamed_addr constant [21 x i8] c".compoundliteral.215\00", align 1
@___asan_gen_.909 = private unnamed_addr constant [21 x i8] c".compoundliteral.216\00", align 1
@___asan_gen_.910 = private unnamed_addr constant [21 x i8] c".compoundliteral.217\00", align 1
@___asan_gen_.911 = private unnamed_addr constant [21 x i8] c".compoundliteral.218\00", align 1
@___asan_gen_.912 = private unnamed_addr constant [21 x i8] c".compoundliteral.219\00", align 1
@___asan_gen_.913 = private unnamed_addr constant [21 x i8] c".compoundliteral.220\00", align 1
@___asan_gen_.914 = private unnamed_addr constant [21 x i8] c".compoundliteral.221\00", align 1
@___asan_gen_.915 = private unnamed_addr constant [21 x i8] c".compoundliteral.222\00", align 1
@___asan_gen_.916 = private unnamed_addr constant [21 x i8] c".compoundliteral.223\00", align 1
@___asan_gen_.917 = private unnamed_addr constant [21 x i8] c".compoundliteral.224\00", align 1
@___asan_gen_.918 = private unnamed_addr constant [21 x i8] c".compoundliteral.225\00", align 1
@___asan_gen_.919 = private unnamed_addr constant [21 x i8] c".compoundliteral.226\00", align 1
@___asan_gen_.920 = private unnamed_addr constant [21 x i8] c".compoundliteral.227\00", align 1
@___asan_gen_.921 = private unnamed_addr constant [21 x i8] c".compoundliteral.228\00", align 1
@___asan_gen_.922 = private unnamed_addr constant [21 x i8] c".compoundliteral.229\00", align 1
@___asan_gen_.923 = private unnamed_addr constant [21 x i8] c".compoundliteral.230\00", align 1
@___asan_gen_.924 = private unnamed_addr constant [21 x i8] c".compoundliteral.231\00", align 1
@___asan_gen_.925 = private unnamed_addr constant [21 x i8] c".compoundliteral.232\00", align 1
@___asan_gen_.926 = private unnamed_addr constant [21 x i8] c".compoundliteral.233\00", align 1
@___asan_gen_.927 = private unnamed_addr constant [21 x i8] c".compoundliteral.234\00", align 1
@___asan_gen_.928 = private unnamed_addr constant [21 x i8] c".compoundliteral.235\00", align 1
@___asan_gen_.929 = private unnamed_addr constant [21 x i8] c".compoundliteral.236\00", align 1
@___asan_gen_.930 = private unnamed_addr constant [21 x i8] c".compoundliteral.237\00", align 1
@___asan_gen_.931 = private unnamed_addr constant [21 x i8] c".compoundliteral.238\00", align 1
@___asan_gen_.932 = private unnamed_addr constant [21 x i8] c".compoundliteral.239\00", align 1
@___asan_gen_.933 = private unnamed_addr constant [21 x i8] c".compoundliteral.240\00", align 1
@___asan_gen_.934 = private unnamed_addr constant [21 x i8] c".compoundliteral.241\00", align 1
@___asan_gen_.935 = private unnamed_addr constant [21 x i8] c".compoundliteral.242\00", align 1
@___asan_gen_.936 = private unnamed_addr constant [21 x i8] c".compoundliteral.243\00", align 1
@___asan_gen_.937 = private unnamed_addr constant [21 x i8] c".compoundliteral.244\00", align 1
@___asan_gen_.938 = private unnamed_addr constant [21 x i8] c".compoundliteral.245\00", align 1
@___asan_gen_.939 = private unnamed_addr constant [21 x i8] c".compoundliteral.246\00", align 1
@___asan_gen_.940 = private unnamed_addr constant [21 x i8] c".compoundliteral.247\00", align 1
@___asan_gen_.941 = private unnamed_addr constant [21 x i8] c".compoundliteral.248\00", align 1
@___asan_gen_.942 = private unnamed_addr constant [21 x i8] c".compoundliteral.249\00", align 1
@___asan_gen_.943 = private unnamed_addr constant [21 x i8] c".compoundliteral.250\00", align 1
@___asan_gen_.944 = private unnamed_addr constant [21 x i8] c".compoundliteral.251\00", align 1
@___asan_gen_.945 = private unnamed_addr constant [21 x i8] c".compoundliteral.252\00", align 1
@___asan_gen_.946 = private unnamed_addr constant [21 x i8] c".compoundliteral.253\00", align 1
@___asan_gen_.947 = private unnamed_addr constant [21 x i8] c".compoundliteral.254\00", align 1
@___asan_gen_.948 = private unnamed_addr constant [21 x i8] c".compoundliteral.255\00", align 1
@___asan_gen_.949 = private unnamed_addr constant [21 x i8] c".compoundliteral.256\00", align 1
@___asan_gen_.950 = private unnamed_addr constant [21 x i8] c".compoundliteral.257\00", align 1
@___asan_gen_.951 = private unnamed_addr constant [21 x i8] c".compoundliteral.258\00", align 1
@___asan_gen_.952 = private unnamed_addr constant [21 x i8] c".compoundliteral.259\00", align 1
@___asan_gen_.953 = private unnamed_addr constant [21 x i8] c".compoundliteral.260\00", align 1
@___asan_gen_.954 = private unnamed_addr constant [21 x i8] c".compoundliteral.261\00", align 1
@___asan_gen_.955 = private unnamed_addr constant [21 x i8] c".compoundliteral.262\00", align 1
@___asan_gen_.956 = private unnamed_addr constant [21 x i8] c".compoundliteral.263\00", align 1
@___asan_gen_.957 = private unnamed_addr constant [21 x i8] c".compoundliteral.264\00", align 1
@___asan_gen_.958 = private unnamed_addr constant [21 x i8] c".compoundliteral.265\00", align 1
@___asan_gen_.959 = private unnamed_addr constant [21 x i8] c".compoundliteral.266\00", align 1
@___asan_gen_.960 = private unnamed_addr constant [21 x i8] c".compoundliteral.267\00", align 1
@___asan_gen_.961 = private unnamed_addr constant [21 x i8] c".compoundliteral.268\00", align 1
@___asan_gen_.962 = private unnamed_addr constant [21 x i8] c".compoundliteral.269\00", align 1
@___asan_gen_.963 = private unnamed_addr constant [21 x i8] c".compoundliteral.270\00", align 1
@___asan_gen_.964 = private unnamed_addr constant [21 x i8] c".compoundliteral.271\00", align 1
@___asan_gen_.965 = private unnamed_addr constant [21 x i8] c".compoundliteral.272\00", align 1
@___asan_gen_.966 = private unnamed_addr constant [21 x i8] c".compoundliteral.273\00", align 1
@___asan_gen_.967 = private unnamed_addr constant [21 x i8] c".compoundliteral.274\00", align 1
@___asan_gen_.968 = private unnamed_addr constant [21 x i8] c".compoundliteral.275\00", align 1
@___asan_gen_.969 = private unnamed_addr constant [21 x i8] c".compoundliteral.276\00", align 1
@___asan_gen_.970 = private unnamed_addr constant [21 x i8] c".compoundliteral.277\00", align 1
@___asan_gen_.971 = private unnamed_addr constant [21 x i8] c".compoundliteral.278\00", align 1
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 655, i32 2 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 681, i32 3 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 287, i32 2 }
@___asan_gen_.987 = private unnamed_addr constant [31 x i8] c"i2s1_tinyconn_ch1_mux_map_enum\00", align 1
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 280, i32 8 }
@___asan_gen_.990 = private unnamed_addr constant [17 x i8] c"tinyconn_mux_map\00", align 1
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 256, i32 27 }
@___asan_gen_.993 = private unnamed_addr constant [23 x i8] c"tinyconn_mux_map_value\00", align 1
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 268, i32 12 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 257, i32 2 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 297, i32 2 }
@___asan_gen_.1002 = private unnamed_addr constant [31 x i8] c"i2s1_tinyconn_ch2_mux_map_enum\00", align 1
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 290, i32 8 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 307, i32 2 }
@___asan_gen_.1008 = private unnamed_addr constant [31 x i8] c"i2s3_tinyconn_ch1_mux_map_enum\00", align 1
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 300, i32 8 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 317, i32 2 }
@___asan_gen_.1014 = private unnamed_addr constant [31 x i8] c"i2s3_tinyconn_ch2_mux_map_enum\00", align 1
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 310, i32 8 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 594, i32 3 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 598, i32 2 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 709, i32 2 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 714, i32 3 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 622, i32 2 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 229, i32 2 }
@___asan_gen_.1038 = private unnamed_addr constant [17 x i8] c"i2s_mux_map_enum\00", align 1
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 215, i32 8 }
@___asan_gen_.1041 = private unnamed_addr constant [12 x i8] c"i2s_mux_map\00", align 1
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 207, i32 27 }
@___asan_gen_.1044 = private unnamed_addr constant [18 x i8] c"i2s_mux_map_value\00", align 1
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 211, i32 12 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 208, i32 12 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 232, i32 2 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 235, i32 2 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 238, i32 2 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 241, i32 2 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 223, i32 2 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 226, i32 2 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 337, i32 2 }
@___asan_gen_.1071 = private unnamed_addr constant [23 x i8] c"i2s0_lpbk_mux_map_enum\00", align 1
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 329, i32 8 }
@___asan_gen_.1074 = private unnamed_addr constant [17 x i8] c"i2s_lpbk_mux_map\00", align 1
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 321, i32 27 }
@___asan_gen_.1077 = private unnamed_addr constant [23 x i8] c"i2s_lpbk_mux_map_value\00", align 1
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 325, i32 12 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 322, i32 12 }
@___asan_gen_.1083 = private unnamed_addr constant [23 x i8] c"i2s2_lpbk_mux_map_enum\00", align 1
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 339, i32 8 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1086, i32 26 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1091, i32 26 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1096, i32 26 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1101, i32 27 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1106, i32 26 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1109, i32 26 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1112, i32 26 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1115, i32 26 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1459, i32 26 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 929, i32 3 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 949, i32 3 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 979, i32 3 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1005, i32 3 }
@___asan_gen_.1137 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1034, i32 3 }
@___asan_gen_.1143 = private unnamed_addr constant [16 x i8] c"mt8192_i2s_priv\00", align 1
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1983, i32 38 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1987, i32 26 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1993, i32 26 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1999, i32 26 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 2005, i32 26 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 2011, i32 26 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 2017, i32 26 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 2023, i32 26 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 2029, i32 26 }
@___asan_gen_.1170 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1171 = private constant [46 x i8] c"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c\00", align 1
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 2035, i32 26 }
@___asan_gen_.1173 = private unnamed_addr constant [32 x i8] c"switch.table.mtk_dai_i2s_config\00", align 1
@___asan_gen_.1174 = private unnamed_addr constant [36 x i8] c"switch.table.mtk_dai_i2s_config.324\00", align 1
@llvm.compiler.used = appending global [395 x ptr] [ptr @i2s_out_tinyconn_event._entry, ptr @i2s_out_tinyconn_event._entry_ptr, ptr @mt8192_i2s_hd_get._entry, ptr @mt8192_i2s_hd_get._entry_ptr, ptr @mt8192_i2s_hd_set._entry, ptr @mt8192_i2s_hd_set._entry_ptr, ptr @mtk_afe_i2s_apll_connect._entry, ptr @mtk_afe_i2s_apll_connect._entry_ptr, ptr @mtk_afe_i2s_hd_connect._entry, ptr @mtk_afe_i2s_hd_connect._entry_ptr, ptr @mtk_afe_i2s_mclk_connect._entry, ptr @mtk_afe_i2s_mclk_connect._entry_ptr, ptr @mtk_afe_i2s_share_connect._entry, ptr @mtk_afe_i2s_share_connect._entry_ptr, ptr @mtk_afe_mclk_apll_connect._entry, ptr @mtk_afe_mclk_apll_connect._entry_ptr, ptr @mtk_dai_i2s_config._entry, ptr @mtk_dai_i2s_config._entry.38, ptr @mtk_dai_i2s_config._entry_ptr, ptr @mtk_dai_i2s_config._entry_ptr.40, ptr @mtk_dai_i2s_set_sysclk._entry, ptr @mtk_dai_i2s_set_sysclk._entry.23, ptr @mtk_dai_i2s_set_sysclk._entry.27, ptr @mtk_dai_i2s_set_sysclk._entry.30, ptr @mtk_dai_i2s_set_sysclk._entry.33, ptr @mtk_dai_i2s_set_sysclk._entry_ptr, ptr @mtk_dai_i2s_set_sysclk._entry_ptr.25, ptr @mtk_dai_i2s_set_sysclk._entry_ptr.29, ptr @mtk_dai_i2s_set_sysclk._entry_ptr.32, ptr @mtk_dai_i2s_set_sysclk._entry_ptr.35, ptr @mtk_i2s_en_event._entry, ptr @mtk_i2s_en_event._entry_ptr, ptr @mtk_mclk_en_event._entry, ptr @mtk_mclk_en_event._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mtk_dai_i2s_driver, ptr @mtk_dai_i2s_controls, ptr @mtk_dai_i2s_routes, ptr @.str.4, ptr @mtk_dai_connsys_i2s_ops, ptr @.str.5, ptr @.str.6, ptr @mtk_dai_i2s_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @mt8192_i2s_enum, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @mt8192_i2s_hd_str, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @mtk_i2s1_ch1_mix, ptr @.str.57, ptr @mtk_i2s1_ch2_mix, ptr @.str.58, ptr @mtk_i2s3_ch1_mix, ptr @.str.59, ptr @mtk_i2s3_ch2_mix, ptr @.str.60, ptr @mtk_i2s5_ch1_mix, ptr @.str.61, ptr @mtk_i2s5_ch2_mix, ptr @.str.62, ptr @mtk_i2s7_ch1_mix, ptr @.str.63, ptr @mtk_i2s7_ch2_mix, ptr @.str.64, ptr @mtk_i2s9_ch1_mix, ptr @.str.65, ptr @mtk_i2s9_ch2_mix, ptr @.str.66, ptr @i2s1_tinyconn_ch1_mux_control, ptr @.str.67, ptr @i2s1_tinyconn_ch2_mux_control, ptr @.str.68, ptr @i2s3_tinyconn_ch1_mux_control, ptr @.str.69, ptr @i2s3_tinyconn_ch2_mux_control, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @i2s1_out_mux_control, ptr @.str.101, ptr @i2s3_out_mux_control, ptr @.str.102, ptr @i2s5_out_mux_control, ptr @.str.103, ptr @i2s7_out_mux_control, ptr @.str.104, ptr @i2s9_out_mux_control, ptr @.str.105, ptr @.str.106, ptr @i2s0_in_mux_control, ptr @.str.107, ptr @i2s8_in_mux_control, ptr @.str.108, ptr @i2s0_lpbk_mux_control, ptr @.str.109, ptr @i2s2_lpbk_mux_control, ptr @mtk_dai_i2s_widgets, ptr @.str.111, ptr @.compoundliteral, ptr @.str.112, ptr @.compoundliteral.113, ptr @.str.114, ptr @.compoundliteral.115, ptr @.str.116, ptr @.compoundliteral.117, ptr @.str.118, ptr @.compoundliteral.119, ptr @.str.120, ptr @.compoundliteral.121, ptr @.str.122, ptr @.compoundliteral.123, ptr @.str.124, ptr @.compoundliteral.125, ptr @.str.126, ptr @.compoundliteral.127, ptr @.str.128, ptr @.compoundliteral.129, ptr @.str.130, ptr @.compoundliteral.131, ptr @.str.132, ptr @.compoundliteral.133, ptr @.str.134, ptr @.compoundliteral.135, ptr @.str.136, ptr @.compoundliteral.137, ptr @.str.138, ptr @.compoundliteral.139, ptr @.str.140, ptr @.compoundliteral.141, ptr @.str.142, ptr @.compoundliteral.143, ptr @.str.144, ptr @.compoundliteral.145, ptr @.str.146, ptr @.compoundliteral.147, ptr @.str.148, ptr @.compoundliteral.149, ptr @.str.150, ptr @.compoundliteral.151, ptr @.str.152, ptr @.compoundliteral.153, ptr @.str.154, ptr @.compoundliteral.155, ptr @.str.156, ptr @.compoundliteral.157, ptr @.compoundliteral.158, ptr @.compoundliteral.159, ptr @.str.160, ptr @.compoundliteral.161, ptr @.str.162, ptr @.compoundliteral.163, ptr @.compoundliteral.164, ptr @.compoundliteral.165, ptr @.compoundliteral.166, ptr @.compoundliteral.167, ptr @.compoundliteral.168, ptr @.compoundliteral.169, ptr @.compoundliteral.170, ptr @.compoundliteral.171, ptr @.compoundliteral.172, ptr @.compoundliteral.173, ptr @.compoundliteral.174, ptr @.compoundliteral.175, ptr @.str.176, ptr @.compoundliteral.177, ptr @.compoundliteral.178, ptr @.compoundliteral.179, ptr @.compoundliteral.180, ptr @.compoundliteral.181, ptr @.compoundliteral.182, ptr @.compoundliteral.183, ptr @.compoundliteral.184, ptr @.compoundliteral.185, ptr @.compoundliteral.186, ptr @.compoundliteral.187, ptr @.compoundliteral.188, ptr @.compoundliteral.189, ptr @.compoundliteral.190, ptr @.compoundliteral.191, ptr @.compoundliteral.192, ptr @.compoundliteral.193, ptr @.compoundliteral.194, ptr @.compoundliteral.195, ptr @.compoundliteral.196, ptr @.compoundliteral.197, ptr @.compoundliteral.198, ptr @.compoundliteral.199, ptr @.compoundliteral.200, ptr @.compoundliteral.201, ptr @.compoundliteral.202, ptr @.compoundliteral.203, ptr @.compoundliteral.204, ptr @.compoundliteral.205, ptr @.compoundliteral.206, ptr @.compoundliteral.207, ptr @.compoundliteral.208, ptr @.compoundliteral.209, ptr @.compoundliteral.210, ptr @.compoundliteral.211, ptr @.compoundliteral.212, ptr @.compoundliteral.213, ptr @.compoundliteral.214, ptr @.compoundliteral.215, ptr @.compoundliteral.216, ptr @.compoundliteral.217, ptr @.compoundliteral.218, ptr @.compoundliteral.219, ptr @.compoundliteral.220, ptr @.compoundliteral.221, ptr @.compoundliteral.222, ptr @.compoundliteral.223, ptr @.compoundliteral.224, ptr @.compoundliteral.225, ptr @.compoundliteral.226, ptr @.compoundliteral.227, ptr @.compoundliteral.228, ptr @.compoundliteral.229, ptr @.compoundliteral.230, ptr @.compoundliteral.231, ptr @.compoundliteral.232, ptr @.compoundliteral.233, ptr @.compoundliteral.234, ptr @.compoundliteral.235, ptr @.compoundliteral.236, ptr @.compoundliteral.237, ptr @.compoundliteral.238, ptr @.compoundliteral.239, ptr @.compoundliteral.240, ptr @.compoundliteral.241, ptr @.compoundliteral.242, ptr @.compoundliteral.243, ptr @.compoundliteral.244, ptr @.compoundliteral.245, ptr @.compoundliteral.246, ptr @.compoundliteral.247, ptr @.compoundliteral.248, ptr @.compoundliteral.249, ptr @.compoundliteral.250, ptr @.compoundliteral.251, ptr @.compoundliteral.252, ptr @.compoundliteral.253, ptr @.compoundliteral.254, ptr @.compoundliteral.255, ptr @.compoundliteral.256, ptr @.compoundliteral.257, ptr @.compoundliteral.258, ptr @.compoundliteral.259, ptr @.compoundliteral.260, ptr @.compoundliteral.261, ptr @.compoundliteral.262, ptr @.compoundliteral.263, ptr @.compoundliteral.264, ptr @.compoundliteral.265, ptr @.compoundliteral.266, ptr @.compoundliteral.267, ptr @.compoundliteral.268, ptr @.compoundliteral.269, ptr @.compoundliteral.270, ptr @.compoundliteral.271, ptr @.compoundliteral.272, ptr @.compoundliteral.273, ptr @.compoundliteral.274, ptr @.compoundliteral.275, ptr @.compoundliteral.276, ptr @.compoundliteral.277, ptr @.compoundliteral.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @i2s1_tinyconn_ch1_mux_map_enum, ptr @tinyconn_mux_map, ptr @tinyconn_mux_map_value, ptr @.str.283, ptr @.str.284, ptr @i2s1_tinyconn_ch2_mux_map_enum, ptr @.str.285, ptr @i2s3_tinyconn_ch1_mux_map_enum, ptr @.str.286, ptr @i2s3_tinyconn_ch2_mux_map_enum, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @i2s_mux_map_enum, ptr @i2s_mux_map, ptr @i2s_mux_map_value, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @i2s0_lpbk_mux_map_enum, ptr @i2s_lpbk_mux_map, ptr @i2s_lpbk_mux_map_value, ptr @.str.300, ptr @i2s2_lpbk_mux_map_enum, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @mt8192_i2s_priv, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @switch.table.mtk_dai_i2s_config, ptr @switch.table.mtk_dai_i2s_config.324], section "llvm.metadata"
@0 = internal global [378 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_i2s_driver to i32), i32 1680, i32 2112, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_i2s_controls to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_i2s_routes to i32), i32 20488, i32 25632, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_connsys_i2s_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_i2s_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_i2s_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_i2s_set_sysclk._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_i2s_set_sysclk._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_i2s_set_sysclk._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_i2s_set_sysclk._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_i2s_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_i2s_config._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_i2s_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_i2s_hd_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_i2s_hd_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_i2s_hd_str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2s1_ch1_mix to i32), i32 624, i32 768, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2s1_ch2_mix to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2s3_ch1_mix to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2s3_ch2_mix to i32), i32 816, i32 1024, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2s5_ch1_mix to i32), i32 624, i32 768, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2s5_ch2_mix to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2s7_ch1_mix to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2s7_ch2_mix to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2s9_ch1_mix to i32), i32 624, i32 768, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2s9_ch2_mix to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_tinyconn_ch1_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_tinyconn_ch2_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_tinyconn_ch1_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_tinyconn_ch2_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_out_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_out_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s5_out_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s7_out_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s9_out_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s0_in_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s8_in_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s0_lpbk_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s2_lpbk_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_dai_i2s_widgets to i32), i32 9900, i32 12384, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.117 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.119 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.121 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.123 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.129 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.131 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.133 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.135 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.137 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.139 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.141 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.147 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.149 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.151 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.153 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.155 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.157 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.158 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.159 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.161 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.163 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.164 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.165 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.166 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.167 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.168 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.169 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.170 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.171 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.172 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.173 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.174 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.175 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.177 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.178 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.179 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.180 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.181 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.182 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.183 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.184 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.185 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.186 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.187 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.188 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.189 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.190 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.191 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.192 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.193 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.194 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.195 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.196 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.197 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.198 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.199 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.200 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.201 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.202 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.203 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.204 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.205 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.206 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.207 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.208 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.209 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.210 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.211 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.212 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.213 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.214 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.215 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.216 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.217 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.218 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.219 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.220 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.221 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.222 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.223 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.224 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.225 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.226 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.227 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.228 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.229 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.230 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.231 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.232 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.233 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.234 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.235 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.236 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.237 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.238 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.239 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.240 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.241 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.242 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.243 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.244 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.245 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.246 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.247 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.248 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.249 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.250 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.251 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.252 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.253 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.254 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.255 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.256 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.257 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.258 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.259 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.260 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.261 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.262 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.263 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.264 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.265 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.266 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.267 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.268 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.269 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.270 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.271 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.272 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.273 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.274 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.275 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.276 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.277 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.278 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_out_tinyconn_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_tinyconn_ch1_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tinyconn_mux_map to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tinyconn_mux_map_value to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_tinyconn_ch2_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_tinyconn_ch1_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_tinyconn_ch2_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2s_en_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mclk_en_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_mux_map to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_mux_map_value to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s0_lpbk_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_lpbk_mux_map to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_lpbk_mux_map_value to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s2_lpbk_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_afe_i2s_share_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_afe_i2s_hd_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_afe_i2s_apll_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_afe_i2s_mclk_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_afe_mclk_apll_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_i2s_priv to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_i2s_config to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_dai_i2s_config.324 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt8192_dai_i2s_register(ptr noundef %afe) local_unnamed_addr #0 align 64 {
entry:
  %of_str.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_dai_i2s_register.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_dai_i2s_register, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !479

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_dai_i2s_register.__UNIQUE_ID_ddebug247, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev3 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 40, i32 noundef 3520) #7
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %list = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 8
  %sub_dais = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 15
  %4 = ptrtoint ptr %sub_dais to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sub_dais, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %sub_dais, ptr noundef %5) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.list_add.exit_crit_edge

if.end7.list_add.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %sub_dais, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %sub_dais to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %sub_dais, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end7.list_add.exit_crit_edge
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mtk_dai_i2s_driver, ptr %call.i, align 4
  %num_dai_drivers = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %num_dai_drivers to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 10, ptr %num_dai_drivers, align 4
  %controls = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %controls to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mtk_dai_i2s_controls, ptr %controls, align 4
  %num_controls = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %num_controls to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 9, ptr %num_controls, align 4
  %dapm_widgets = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mtk_dai_i2s_widgets, ptr %dapm_widgets, align 4
  %num_dapm_widgets = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %num_dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 55, ptr %num_dapm_widgets, align 4
  %dapm_routes = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mtk_dai_i2s_routes, ptr %dapm_routes, align 4
  %num_dapm_routes = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 7
  %17 = ptrtoint ptr %num_dapm_routes to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 394, ptr %num_dapm_routes, align 4
  %call.i33 = tail call i32 @mt8192_dai_set_priv(ptr noundef %afe, i32 noundef 28, i32 noundef 32, ptr noundef nonnull @mt8192_i2s_priv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool.not.i = icmp eq i32 %call.i33, 0
  br i1 %tobool.not.i, label %for.cond.i, label %list_add.exit.cleanup_crit_edge

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.i:                                       ; preds = %list_add.exit
  %call.1.i = tail call i32 @mt8192_dai_set_priv(ptr noundef %afe, i32 noundef 29, i32 noundef 32, ptr noundef getelementptr inbounds ([9 x %struct.mtk_afe_i2s_priv], ptr @mt8192_i2s_priv, i32 0, i32 1)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call i32 @mt8192_dai_set_priv(ptr noundef %afe, i32 noundef 30, i32 noundef 32, ptr noundef getelementptr inbounds ([9 x %struct.mtk_afe_i2s_priv], ptr @mt8192_i2s_priv, i32 0, i32 2)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.cleanup_crit_edge

for.cond.1.i.cleanup_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = tail call i32 @mt8192_dai_set_priv(ptr noundef %afe, i32 noundef 31, i32 noundef 32, ptr noundef getelementptr inbounds ([9 x %struct.mtk_afe_i2s_priv], ptr @mt8192_i2s_priv, i32 0, i32 3)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.cond.3.i, label %for.cond.2.i.cleanup_crit_edge

for.cond.2.i.cleanup_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %call.4.i = tail call i32 @mt8192_dai_set_priv(ptr noundef %afe, i32 noundef 32, i32 noundef 32, ptr noundef getelementptr inbounds ([9 x %struct.mtk_afe_i2s_priv], ptr @mt8192_i2s_priv, i32 0, i32 4)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %tobool.not.4.i = icmp eq i32 %call.4.i, 0
  br i1 %tobool.not.4.i, label %for.cond.4.i, label %for.cond.3.i.cleanup_crit_edge

for.cond.3.i.cleanup_crit_edge:                   ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %call.5.i = tail call i32 @mt8192_dai_set_priv(ptr noundef %afe, i32 noundef 33, i32 noundef 32, ptr noundef getelementptr inbounds ([9 x %struct.mtk_afe_i2s_priv], ptr @mt8192_i2s_priv, i32 0, i32 5)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %tobool.not.5.i = icmp eq i32 %call.5.i, 0
  br i1 %tobool.not.5.i, label %for.cond.5.i, label %for.cond.4.i.cleanup_crit_edge

for.cond.4.i.cleanup_crit_edge:                   ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %call.6.i = tail call i32 @mt8192_dai_set_priv(ptr noundef %afe, i32 noundef 34, i32 noundef 32, ptr noundef getelementptr inbounds ([9 x %struct.mtk_afe_i2s_priv], ptr @mt8192_i2s_priv, i32 0, i32 6)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %tobool.not.6.i = icmp eq i32 %call.6.i, 0
  br i1 %tobool.not.6.i, label %for.cond.6.i, label %for.cond.5.i.cleanup_crit_edge

for.cond.5.i.cleanup_crit_edge:                   ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %call.7.i = tail call i32 @mt8192_dai_set_priv(ptr noundef %afe, i32 noundef 35, i32 noundef 32, ptr noundef getelementptr inbounds ([9 x %struct.mtk_afe_i2s_priv], ptr @mt8192_i2s_priv, i32 0, i32 7)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i)
  %tobool.not.7.i = icmp eq i32 %call.7.i, 0
  br i1 %tobool.not.7.i, label %mt8192_dai_i2s_set_priv.exit, label %for.cond.6.i.cleanup_crit_edge

for.cond.6.i.cleanup_crit_edge:                   ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mt8192_dai_i2s_set_priv.exit:                     ; preds = %for.cond.6.i
  %call.8.i = tail call i32 @mt8192_dai_set_priv(ptr noundef %afe, i32 noundef 36, i32 noundef 32, ptr noundef getelementptr inbounds ([9 x %struct.mtk_afe_i2s_priv], ptr @mt8192_i2s_priv, i32 0, i32 8)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8.i)
  %tobool9.not = icmp eq i32 %call.8.i, 0
  br i1 %tobool9.not, label %if.end11, label %mt8192_dai_i2s_set_priv.exit.cleanup_crit_edge

mt8192_dai_i2s_set_priv.exit.cleanup_crit_edge:   ; preds = %mt8192_dai_i2s_set_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %mt8192_dai_i2s_set_priv.exit
  %platform_priv.i = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %18 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %platform_priv.i, align 4
  %20 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev3, align 4
  %of_node1.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %of_node1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node1.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %of_str.i) #7
  %24 = ptrtoint ptr %of_str.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %of_str.i, align 4, !annotation !480
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end11
  %i.01.i = phi i32 [ 0, %if.end11 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [9 x %struct.mtk_afe_i2s_priv], ptr @mt8192_i2s_priv, i32 0, i32 %i.01.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr %struct.mt8192_afe_private, ptr %19, i32 0, i32 7, i32 %26
  %27 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx2.i, align 4
  %share_property_name.i = getelementptr [9 x %struct.mtk_afe_i2s_priv], ptr @mt8192_i2s_priv, i32 0, i32 %i.01.i, i32 3
  %29 = ptrtoint ptr %share_property_name.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %share_property_name.i, align 4
  %call.i35 = call i32 @of_property_read_string(ptr noundef %23, ptr noundef %30, ptr noundef nonnull %of_str.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool.not.i36 = icmp eq i32 %call.i35, 0
  br i1 %tobool.not.i36, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %of_str.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_str.i, align 4
  %call4.i = call fastcc i32 @get_i2s_id_by_name(ptr noundef %32) #7
  %share_i2s_id.i = getelementptr inbounds %struct.mtk_afe_i2s_priv, ptr %28, i32 0, i32 4
  %33 = ptrtoint ptr %share_i2s_id.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call4.i, ptr %share_i2s_id.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 9
  br i1 %exitcond.not.i, label %mt8192_dai_i2s_get_share.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

mt8192_dai_i2s_get_share.exit:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %of_str.i) #7
  br label %cleanup

cleanup:                                          ; preds = %mt8192_dai_i2s_get_share.exit, %mt8192_dai_i2s_set_priv.exit.cleanup_crit_edge, %for.cond.6.i.cleanup_crit_edge, %for.cond.5.i.cleanup_crit_edge, %for.cond.4.i.cleanup_crit_edge, %for.cond.3.i.cleanup_crit_edge, %for.cond.2.i.cleanup_crit_edge, %for.cond.1.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %list_add.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mt8192_dai_i2s_get_share.exit ], [ -12, %do.end.cleanup_crit_edge ], [ %call.8.i, %mt8192_dai_i2s_set_priv.exit.cleanup_crit_edge ], [ %call.7.i, %for.cond.6.i.cleanup_crit_edge ], [ %call.6.i, %for.cond.5.i.cleanup_crit_edge ], [ %call.5.i, %for.cond.4.i.cleanup_crit_edge ], [ %call.4.i, %for.cond.3.i.cleanup_crit_edge ], [ %call.3.i, %for.cond.2.i.cleanup_crit_edge ], [ %call.2.i, %for.cond.1.i.cleanup_crit_edge ], [ %call.1.i, %for.cond.i.cleanup_crit_edge ], [ %call.i33, %list_add.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dai_connsys_i2s_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %call2 = tail call i32 @mt8192_rate_transform(ptr noundef %7, i32 noundef %5, i32 noundef %9) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_dai_connsys_i2s_hw_params.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_dai_connsys_i2s_hw_params, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !479

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %14 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_dai_connsys_i2s_hw_params.__UNIQUE_ID_ddebug243, ptr noundef %11, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef %13, i32 noundef %15, i32 noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call i32 @snd_pcm_format_physical_width(i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 16
  %or11 = select i1 %cmp.i, i32 14, i32 12
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call13 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 3192, i32 noundef %or11) #7
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i60 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 3192, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %shl17 = shl i32 %call2, 8
  %call.i61 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 3192, i32 noundef 3840, i32 noundef %shl17, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 44100, i32 %5)
  %switch.selectcmp = icmp eq i32 %5, 44100
  %switch.select = select i1 %switch.selectcmp, i32 1806336, i32 1966080
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %5)
  %switch.selectcmp65 = icmp eq i32 %5, 32000
  %switch.select66 = select i1 %switch.selectcmp65, i32 1310720, i32 %switch.select
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call25 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 3212, i32 noundef %switch.select66) #7
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call27 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 3216, i32 noundef 1310720) #7
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call29 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 3236, i32 noundef 221184) #7
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call31 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 3240, i32 noundef 195584) #7
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call33 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 3224, i32 noundef 32500) #7
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call35 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 3220, i32 noundef 16734598) #7
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call.i62 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 3208, i32 noundef 65536, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dai_connsys_i2s_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_dai_connsys_i2s_trigger.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_dai_connsys_i2s_trigger, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !479

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_dai_connsys_i2s_trigger.__UNIQUE_ID_ddebug244, ptr noundef %7, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef %cmd, i32 noundef %9) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %do.end.cleanup_crit_edge [
    i32 1, label %do.end.sw.bb_crit_edge
    i32 6, label %do.end.sw.bb_crit_edge46
    i32 0, label %do.end.sw.bb11_crit_edge
    i32 5, label %do.end.sw.bb11_crit_edge47
  ]

do.end.sw.bb11_crit_edge47:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11

do.end.sw.bb11_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11

do.end.sw.bb_crit_edge46:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge46
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 3192, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i37 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 3220, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i38 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 3200, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i39 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 3200, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup.sink.split

sw.bb11:                                          ; preds = %do.end.sw.bb11_crit_edge, %do.end.sw.bb11_crit_edge47
  %regmap12 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %regmap12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap12, align 4
  %call.i40 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 3200, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %21 = ptrtoint ptr %regmap12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap12, align 4
  %call.i41 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 3220, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %23 = ptrtoint ptr %regmap12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap12, align 4
  %call.i42 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 3192, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %25 = ptrtoint ptr %regmap12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap12, align 4
  %call.i43 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 3192, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb11, %sw.bb
  %.sink = phi i8 [ 1, %sw.bb ], [ 0, %sw.bb11 ]
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.mt8192_afe_private, ptr %5, i32 0, i32 6, i32 %28
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %.sink, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8192_rate_transform(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dai_i2s_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_priv, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.mt8192_afe_private, ptr %5, i32 0, i32 7, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev1 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #10
  br label %cleanup51

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp.not = icmp eq i32 %dir, 1
  br i1 %cmp.not, label %do.body8, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev6 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.20) #10
  br label %cleanup51

do.body8:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_dai_i2s_set_sysclk.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_dai_i2s_set_sysclk, %if.then13)) #7
          to label %do.end17 [label %if.then13], !srcloc !479

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %dev14 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_dai_i2s_set_sysclk.__UNIQUE_ID_ddebug246, ptr noundef %15, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.20, i32 noundef %freq) #7
  br label %do.end17

do.end17:                                         ; preds = %if.then13, %do.body8
  %call18 = tail call i32 @mt8192_get_apll_by_rate(ptr noundef %3, i32 noundef %freq) #7
  %call19 = tail call i32 @mt8192_get_apll_rate(ptr noundef %3, i32 noundef %call18) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call19, i32 %freq)
  %cmp20 = icmp ult i32 %call19, %freq
  br i1 %cmp20, label %do.end24, label %if.end26

do.end24:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  %dev25 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.20) #10
  br label %cleanup51

if.end26:                                         ; preds = %do.end17
  %rem = urem i32 %call19, %freq
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp27.not = icmp eq i32 %rem, 0
  br i1 %cmp27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %dev32 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev32, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.20) #10
  br label %cleanup51

if.end33:                                         ; preds = %if.end26
  %mclk_rate = getelementptr inbounds %struct.mtk_afe_i2s_priv, ptr %9, i32 0, i32 6
  %20 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %freq, ptr %mclk_rate, align 4
  %mclk_apll = getelementptr inbounds %struct.mtk_afe_i2s_priv, ptr %9, i32 0, i32 7
  %21 = ptrtoint ptr %mclk_apll to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call18, ptr %mclk_apll, align 4
  %share_i2s_id = getelementptr inbounds %struct.mtk_afe_i2s_priv, ptr %9, i32 0, i32 4
  %22 = ptrtoint ptr %share_i2s_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %share_i2s_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp34 = icmp sgt i32 %23, 0
  br i1 %cmp34, label %if.then35, label %if.end33.cleanup51_crit_edge

if.end33.cleanup51_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup51

if.then35:                                        ; preds = %if.end33
  %arrayidx38 = getelementptr %struct.mt8192_afe_private, ptr %5, i32 0, i32 7, i32 %23
  %24 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx38, align 4
  %tobool39.not = icmp eq ptr %25, null
  br i1 %tobool39.not, label %do.end43, label %if.end45

do.end43:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  %dev44 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 1
  %26 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev44, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.20) #10
  br label %cleanup51

if.end45:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  %mclk_rate47 = getelementptr inbounds %struct.mtk_afe_i2s_priv, ptr %25, i32 0, i32 6
  %28 = ptrtoint ptr %mclk_rate47 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %freq, ptr %mclk_rate47, align 4
  %29 = ptrtoint ptr %mclk_apll to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mclk_apll, align 4
  %mclk_apll49 = getelementptr inbounds %struct.mtk_afe_i2s_priv, ptr %25, i32 0, i32 7
  %31 = ptrtoint ptr %mclk_apll49 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %mclk_apll49, align 4
  br label %cleanup51

cleanup51:                                        ; preds = %if.end45, %do.end43, %if.end33.cleanup51_crit_edge, %do.end31, %do.end24, %do.end5, %do.end
  %retval.1 = phi i32 [ -22, %do.end5 ], [ -22, %do.end24 ], [ -22, %do.end31 ], [ -22, %do.end ], [ -22, %do.end43 ], [ 0, %if.end45 ], [ 0, %if.end33.cleanup51_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_dai_i2s_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %call1 = tail call fastcc i32 @mtk_dai_i2s_config(ptr noundef %3, ptr noundef %params, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8192_get_apll_by_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8192_get_apll_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_dai_i2s_config(ptr nocapture noundef readonly %afe, ptr nocapture noundef readonly %params, i32 noundef %i2s_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %arrayidx.i.i174 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %regmap84 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 2
  br label %tailrecurse

tailrecurse:                                      ; preds = %land.lhs.true.tailrecurse_crit_edge, %entry
  %i2s_id.tr = phi i32 [ %i2s_id, %entry ], [ %26, %land.lhs.true.tailrecurse_crit_edge ]
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %arrayidx = getelementptr %struct.mt8192_afe_private, ptr %1, i32 0, i32 7, i32 %i2s_id.tr
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call1 = tail call i32 @mt8192_rate_transform(ptr noundef %7, i32 noundef %5, i32 noundef %i2s_id.tr) #7
  %8 = ptrtoint ptr %arrayidx.i.i174 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %tailrecurse.if.then.i.i_crit_edge

tailrecurse.if.then.i.i_crit_edge:                ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %tailrecurse.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %tailrecurse.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %9, %tailrecurse.if.then.i.i_crit_edge ], [ %12, %for.inc.i.i.if.then.i.i_crit_edge ]
  %10 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #7, !range !481
  %add.i.i = or i32 %10, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %tailrecurse
  %11 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.1.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_dai_i2s_config.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_dai_i2s_config, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !479

if.then:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_dai_i2s_config.__UNIQUE_ID_ddebug245, ptr noundef %14, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36, i32 noundef %i2s_id.tr, i32 noundef %5, i32 noundef %retval.0.i.i) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %params_format.exit
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %do.end12, label %if.then8

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %rate9 = getelementptr inbounds %struct.mtk_afe_i2s_priv, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %rate9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %5, ptr %rate9, align 4
  br label %if.end14

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.36) #10
  br label %if.end14

if.end14:                                         ; preds = %do.end12, %if.then8
  %switch.tableidx = add i32 %i2s_id.tr, -28
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %18 = icmp ult i32 %switch.tableidx, 9
  br i1 %18, label %switch.lookup, label %do.end88

do.end88:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.36, i32 noundef %i2s_id.tr) #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.end14
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.mtk_dai_i2s_config, i32 0, i32 %switch.tableidx
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep215 = getelementptr inbounds [9 x i32], ptr @switch.table.mtk_dai_i2s_config.324, i32 0, i32 %switch.tableidx
  %22 = ptrtoint ptr %switch.gep215 to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load216 = load i32, ptr %switch.gep215, align 4
  %shl79 = shl i32 %call1, 8
  %call.i204 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %retval.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i204)
  %cmp.i205 = icmp sgt i32 %call.i204, 16
  %shl82 = select i1 %cmp.i205, i32 2, i32 0
  %or80 = or i32 %shl82, %shl79
  %or83 = or i32 %or80, %switch.load
  %23 = ptrtoint ptr %regmap84 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap84, align 4
  %call.i207 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef %switch.load216, i32 noundef -4098, i32 noundef %or83, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br i1 %tobool7.not, label %switch.lookup.cleanup_crit_edge, label %land.lhs.true

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %switch.lookup
  %share_i2s_id = getelementptr inbounds %struct.mtk_afe_i2s_priv, ptr %3, i32 0, i32 4
  %25 = ptrtoint ptr %share_i2s_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %share_i2s_id, align 4
  %cmp = icmp sgt i32 %26, -1
  br i1 %cmp, label %land.lhs.true.tailrecurse_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.tailrecurse_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %tailrecurse

cleanup:                                          ; preds = %land.lhs.true.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %do.end88
  %retval.0 = phi i32 [ -22, %do.end88 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8192_i2s_hd_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  %call.i = tail call fastcc i32 @get_i2s_id_by_name(ptr noundef %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %get_i2s_priv_by_name.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

get_i2s_priv_by_name.exit:                        ; preds = %entry
  %platform_priv.i = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_priv.i, align 4
  %arrayidx.i = getelementptr %struct.mt8192_afe_private, ptr %7, i32 0, i32 7, i32 %call.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %get_i2s_priv_by_name.exit.do.end_crit_edge, label %if.end

get_i2s_priv_by_name.exit.do.end_crit_edge:       ; preds = %get_i2s_priv_by_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %get_i2s_priv_by_name.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.50) #10
  br label %cleanup

if.end:                                           ; preds = %get_i2s_priv_by_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %low_jitter_en = getelementptr inbounds %struct.mtk_afe_i2s_priv, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %low_jitter_en to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %low_jitter_en, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8192_i2s_hd_set(ptr noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 8
  %items = getelementptr inbounds %struct.soc_enum, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %items, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not = icmp ult i32 %10, %12
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8192_i2s_hd_set.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8192_i2s_hd_set, %if.then7)) #7
          to label %do.end [label %if.then7], !srcloc !479

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8192_i2s_hd_set.__UNIQUE_ID_ddebug238, ptr noundef %14, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51, ptr noundef %name, i32 noundef %10) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end
  %name10 = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 4
  %call.i = tail call fastcc i32 @get_i2s_id_by_name(ptr noundef %name10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.do.end17_crit_edge, label %get_i2s_priv_by_name.exit

do.end.do.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

get_i2s_priv_by_name.exit:                        ; preds = %do.end
  %platform_priv.i = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 25
  %15 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %platform_priv.i, align 4
  %arrayidx.i = getelementptr %struct.mt8192_afe_private, ptr %16, i32 0, i32 7, i32 %call.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %tobool13.not = icmp eq ptr %18, null
  br i1 %tobool13.not, label %get_i2s_priv_by_name.exit.do.end17_crit_edge, label %if.end19

get_i2s_priv_by_name.exit.do.end17_crit_edge:     ; preds = %get_i2s_priv_by_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

do.end17:                                         ; preds = %get_i2s_priv_by_name.exit.do.end17_crit_edge, %do.end.do.end17_crit_edge
  %dev18 = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.51) #10
  br label %cleanup

if.end19:                                         ; preds = %get_i2s_priv_by_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %low_jitter_en = getelementptr inbounds %struct.mtk_afe_i2s_priv, ptr %18, i32 0, i32 2
  %21 = ptrtoint ptr %low_jitter_en to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %10, ptr %low_jitter_en, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -22, %do.end17 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @get_i2s_id_by_name(ptr nocapture noundef readonly %name) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @.str.6, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.else

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @.str.7, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.else.return_crit_edge, label %if.else4

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.else4:                                         ; preds = %if.else
  %call5 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @.str.8, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.else4.return_crit_edge, label %if.else8

if.else4.return_crit_edge:                        ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.else8:                                         ; preds = %if.else4
  %call9 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @.str.9, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.else8.return_crit_edge, label %if.else12

if.else8.return_crit_edge:                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.else12:                                        ; preds = %if.else8
  %call13 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @.str.10, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.else12.return_crit_edge, label %if.else16

if.else12.return_crit_edge:                       ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.else16:                                        ; preds = %if.else12
  %call17 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @.str.11, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.else16.return_crit_edge, label %if.else20

if.else16.return_crit_edge:                       ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.else20:                                        ; preds = %if.else16
  %call21 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @.str.12, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.else20.return_crit_edge, label %if.else24

if.else20.return_crit_edge:                       ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.else24:                                        ; preds = %if.else20
  %call25 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @.str.13, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.else24.return_crit_edge, label %if.else28

if.else24.return_crit_edge:                       ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.else28:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(5) @.str.14, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp eq i32 %call29, 0
  %. = select i1 %cmp30, i32 36, i32 -22
  br label %return

return:                                           ; preds = %if.else28, %if.else24.return_crit_edge, %if.else20.return_crit_edge, %if.else16.return_crit_edge, %if.else12.return_crit_edge, %if.else8.return_crit_edge, %if.else4.return_crit_edge, %if.else.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 28, %entry.return_crit_edge ], [ 29, %if.else.return_crit_edge ], [ 30, %if.else4.return_crit_edge ], [ 31, %if.else8.return_crit_edge ], [ 32, %if.else12.return_crit_edge ], [ 33, %if.else16.return_crit_edge ], [ 34, %if.else20.return_crit_edge ], [ 35, %if.else24.return_crit_edge ], [ %., %if.else28 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2s_out_tinyconn_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2s_out_tinyconn_event.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2s_out_tinyconn_event, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !479

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2s_out_tinyconn_event.__UNIQUE_ID_ddebug241, ptr noundef %7, ptr noundef nonnull @.str.280, ptr noundef nonnull @.str.279, i32 noundef %event) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %call5 = tail call ptr @strstr(ptr noundef %9, ptr noundef nonnull @.str.7)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.else, label %do.end.if.end37_crit_edge

do.end.if.end37_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.else:                                          ; preds = %do.end
  %call9 = tail call ptr @strstr(ptr noundef %9, ptr noundef nonnull @.str.9)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.else12, label %if.else.if.end37_crit_edge

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.else12:                                        ; preds = %if.else
  %call14 = tail call ptr @strstr(ptr noundef %9, ptr noundef nonnull @.str.10)
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.else17, label %if.else12.if.end37_crit_edge

if.else12.if.end37_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.else17:                                        ; preds = %if.else12
  %call19 = tail call ptr @strstr(ptr noundef %9, ptr noundef nonnull @.str.12)
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.else22, label %if.else17.if.end37_crit_edge

if.else17.if.end37_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.else22:                                        ; preds = %if.else17
  %call24 = tail call ptr @strstr(ptr noundef %9, ptr noundef nonnull @.str.14)
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.else27, label %if.else22.if.end37_crit_edge

if.else22.if.end37_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.else27:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #9
  %dev31 = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.281, ptr noundef nonnull @.str.279, ptr noundef %9) #10
  br label %if.end37

if.end37:                                         ; preds = %if.else27, %if.else22.if.end37_crit_edge, %if.else17.if.end37_crit_edge, %if.else12.if.end37_crit_edge, %if.else.if.end37_crit_edge, %do.end.if.end37_crit_edge
  %reg.0 = phi i32 [ 52, %if.else27 ], [ 52, %do.end.if.end37_crit_edge ], [ 64, %if.else.if.end37_crit_edge ], [ 2552, %if.else12.if.end37_crit_edge ], [ 1384, %if.else17.if.end37_crit_edge ], [ 1392, %if.else22.if.end37_crit_edge ]
  %12 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.325)
  switch i32 %event, label %if.end37.sw.epilog_crit_edge [
    i32 1, label %if.end37.sw.epilog.sink.split_crit_edge
    i32 4, label %sw.bb39
  ]

if.end37.sw.epilog.sink.split_crit_edge:          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.end37.sw.epilog_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb39, %if.end37.sw.epilog.sink.split_crit_edge
  %.sink58 = phi i32 [ 0, %sw.bb39 ], [ 8192, %if.end37.sw.epilog.sink.split_crit_edge ]
  %regmap40 = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %regmap40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap40, align 4
  %call.i56 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %reg.0, i32 noundef 8192, i32 noundef %.sink58, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end37.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_i2s_en_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call.i = tail call fastcc i32 @get_i2s_id_by_name(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %get_i2s_priv_by_name.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

get_i2s_priv_by_name.exit:                        ; preds = %entry
  %platform_priv.i = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 25
  %8 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_priv.i, align 4
  %arrayidx.i = getelementptr %struct.mt8192_afe_private, ptr %9, i32 0, i32 7, i32 %call.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %get_i2s_priv_by_name.exit.do.end_crit_edge, label %do.body3

get_i2s_priv_by_name.exit.do.end_crit_edge:       ; preds = %get_i2s_priv_by_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %get_i2s_priv_by_name.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.287) #10
  br label %cleanup

do.body3:                                         ; preds = %get_i2s_priv_by_name.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_i2s_en_event.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_i2s_en_event, %if.then8)) #7
          to label %do.end13 [label %if.then8], !srcloc !479

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_i2s_en_event.__UNIQUE_ID_ddebug239, ptr noundef %15, ptr noundef nonnull @.str.288, ptr noundef nonnull @.str.287, ptr noundef %17, i32 noundef %event) #7
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %do.body3
  %18 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.326)
  switch i32 %event, label %do.end13.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb16
  ]

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  %dev14 = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev14, align 4
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %11, align 4
  %call15 = tail call i32 @mt8192_afe_gpio_request(ptr noundef %20, i1 noundef zeroext true, i32 noundef %22, i32 noundef 0) #7
  br label %cleanup

sw.bb16:                                          ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  %dev17 = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 1
  %23 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev17, align 4
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %11, align 4
  %call19 = tail call i32 @mt8192_afe_gpio_request(ptr noundef %24, i1 noundef zeroext false, i32 noundef %26, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb16, %sw.bb, %do.end13.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end13.cleanup_crit_edge ], [ 0, %sw.bb16 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mclk_en_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_mclk_en_event.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_mclk_en_event, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !479

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_mclk_en_event.__UNIQUE_ID_ddebug242, ptr noundef %7, ptr noundef nonnull @.str.288, ptr noundef nonnull @.str.289, ptr noundef %9, i32 noundef %event) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %name5 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %10 = ptrtoint ptr %name5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name5, align 4
  %call.i = tail call fastcc i32 @get_i2s_id_by_name(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.do.end11_crit_edge, label %get_i2s_priv_by_name.exit

do.end.do.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

get_i2s_priv_by_name.exit:                        ; preds = %do.end
  %platform_priv.i = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 25
  %12 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %platform_priv.i, align 4
  %arrayidx.i = getelementptr %struct.mt8192_afe_private, ptr %13, i32 0, i32 7, i32 %call.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool7.not = icmp eq ptr %15, null
  br i1 %tobool7.not, label %get_i2s_priv_by_name.exit.do.end11_crit_edge, label %if.end13

get_i2s_priv_by_name.exit.do.end11_crit_edge:     ; preds = %get_i2s_priv_by_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.end11:                                         ; preds = %get_i2s_priv_by_name.exit.do.end11_crit_edge, %do.end.do.end11_crit_edge
  %dev12 = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.289) #10
  br label %cleanup

if.end13:                                         ; preds = %get_i2s_priv_by_name.exit
  %18 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.327)
  switch i32 %event, label %if.end13.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb15
  ]

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %mclk_id = getelementptr inbounds %struct.mtk_afe_i2s_priv, ptr %15, i32 0, i32 5
  %19 = ptrtoint ptr %mclk_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mclk_id, align 4
  %mclk_rate = getelementptr inbounds %struct.mtk_afe_i2s_priv, ptr %15, i32 0, i32 6
  %21 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mclk_rate, align 4
  %call14 = tail call i32 @mt8192_mck_enable(ptr noundef %5, i32 noundef %20, i32 noundef %22) #7
  br label %cleanup

sw.bb15:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %mclk_rate16 = getelementptr inbounds %struct.mtk_afe_i2s_priv, ptr %15, i32 0, i32 6
  %23 = ptrtoint ptr %mclk_rate16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %mclk_rate16, align 4
  %mclk_id17 = getelementptr inbounds %struct.mtk_afe_i2s_priv, ptr %15, i32 0, i32 5
  %24 = ptrtoint ptr %mclk_id17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mclk_id17, align 4
  tail call void @mt8192_mck_disable(ptr noundef %5, i32 noundef %25) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb15, %sw.bb, %if.end13.cleanup_crit_edge, %do.end11
  %retval.0 = phi i32 [ -22, %do.end11 ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %sw.bb15 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_apll_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_apll_event.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_apll_event, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !479

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_apll_event.__UNIQUE_ID_ddebug240, ptr noundef %7, ptr noundef nonnull @.str.288, ptr noundef nonnull @.str.290, ptr noundef %9, i32 noundef %event) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.328)
  switch i32 %event, label %do.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb11
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %name5 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %11 = ptrtoint ptr %name5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name5, align 4
  %call6 = tail call i32 @strcmp(ptr noundef %12, ptr noundef nonnull dereferenceable(6) @.str.97) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp eq i32 %call6, 0
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 @mt8192_apll1_enable(ptr noundef %5) #7
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @mt8192_apll2_enable(ptr noundef %5) #7
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end
  %name12 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %13 = ptrtoint ptr %name12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name12, align 4
  %call13 = tail call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(6) @.str.97) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mt8192_apll1_disable(ptr noundef %5) #7
  br label %sw.epilog

if.else16:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mt8192_apll2_disable(ptr noundef %5) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else16, %if.then15, %if.else, %if.then7, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8192_afe_gpio_request(ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8192_mck_enable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt8192_mck_disable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8192_apll1_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8192_apll2_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt8192_apll1_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt8192_apll2_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_afe_i2s_share_connect(ptr nocapture noundef readonly %source, ptr nocapture noundef readonly %sink) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %sink, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %sink, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call.i = tail call fastcc i32 @get_i2s_id_by_name(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %get_i2s_priv_by_name.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

get_i2s_priv_by_name.exit:                        ; preds = %entry
  %platform_priv.i = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 25
  %8 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_priv.i, align 4
  %arrayidx.i = getelementptr %struct.mt8192_afe_private, ptr %9, i32 0, i32 7, i32 %call.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %get_i2s_priv_by_name.exit.do.end_crit_edge, label %if.end

get_i2s_priv_by_name.exit.do.end_crit_edge:       ; preds = %get_i2s_priv_by_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %get_i2s_priv_by_name.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.310) #10
  br label %cleanup

if.end:                                           ; preds = %get_i2s_priv_by_name.exit
  %share_i2s_id = getelementptr inbounds %struct.mtk_afe_i2s_priv, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %share_i2s_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %share_i2s_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp slt i32 %15, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %name6 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %source, i32 0, i32 1
  %16 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name6, align 4
  %call7 = tail call fastcc i32 @get_i2s_id_by_name(ptr noundef %17)
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %call7)
  %cmp8 = icmp eq i32 %15, %call7
  %conv = zext i1 %cmp8 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %conv, %if.end4 ], [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_afe_i2s_hd_connect(ptr nocapture noundef readonly %source, ptr nocapture noundef readonly %sink) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %sink, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %sink, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call.i = tail call fastcc i32 @get_i2s_id_by_name(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %get_i2s_priv_by_name.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

get_i2s_priv_by_name.exit:                        ; preds = %entry
  %platform_priv.i = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 25
  %8 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_priv.i, align 4
  %arrayidx.i = getelementptr %struct.mt8192_afe_private, ptr %9, i32 0, i32 7, i32 %call.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %get_i2s_priv_by_name.exit.do.end_crit_edge, label %if.end

get_i2s_priv_by_name.exit.do.end_crit_edge:       ; preds = %get_i2s_priv_by_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %get_i2s_priv_by_name.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.311) #10
  br label %cleanup

if.end:                                           ; preds = %get_i2s_priv_by_name.exit
  %call4 = tail call fastcc i32 @get_i2s_id_by_name(ptr noundef %7)
  %name5 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %source, i32 0, i32 1
  %14 = ptrtoint ptr %name5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name5, align 4
  %call6 = tail call fastcc i32 @get_i2s_id_by_name(ptr noundef %15)
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %call6)
  %cmp = icmp eq i32 %call4, %call6
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %low_jitter_en = getelementptr inbounds %struct.mtk_afe_i2s_priv, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %low_jitter_en to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %low_jitter_en, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %share_i2s_id = getelementptr inbounds %struct.mtk_afe_i2s_priv, ptr %11, i32 0, i32 4
  %18 = ptrtoint ptr %share_i2s_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %share_i2s_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp9 = icmp sgt i32 %19, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %call6)
  %cmp15 = icmp eq i32 %19, %call6
  %or.cond = select i1 %cmp9, i1 %cmp15, i1 false
  br i1 %or.cond, label %if.then16, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %low_jitter_en17 = getelementptr inbounds %struct.mtk_afe_i2s_priv, ptr %11, i32 0, i32 2
  %20 = ptrtoint ptr %low_jitter_en17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %low_jitter_en17, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end8.cleanup_crit_edge, %if.then7, %do.end
  %retval.0 = phi i32 [ %17, %if.then7 ], [ %21, %if.then16 ], [ 0, %do.end ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_afe_i2s_apll_connect(ptr nocapture noundef readonly %source, ptr nocapture noundef readonly %sink) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %sink, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %sink, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call.i = tail call fastcc i32 @get_i2s_id_by_name(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %get_i2s_priv_by_name.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

get_i2s_priv_by_name.exit:                        ; preds = %entry
  %platform_priv.i = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 25
  %8 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_priv.i, align 4
  %arrayidx.i = getelementptr %struct.mt8192_afe_private, ptr %9, i32 0, i32 7, i32 %call.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %get_i2s_priv_by_name.exit.do.end_crit_edge, label %if.end

get_i2s_priv_by_name.exit.do.end_crit_edge:       ; preds = %get_i2s_priv_by_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %get_i2s_priv_by_name.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.312) #10
  br label %cleanup

if.end:                                           ; preds = %get_i2s_priv_by_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %name3 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %source, i32 0, i32 1
  %14 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name3, align 4
  %call4 = tail call i32 @mt8192_get_apll_by_name(ptr noundef %5, ptr noundef %15) #7
  %rate = getelementptr inbounds %struct.mtk_afe_i2s_priv, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rate, align 4
  %call5 = tail call i32 @mt8192_get_apll_by_rate(ptr noundef %5, i32 noundef %17) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %call4)
  %cmp = icmp eq i32 %call5, %call4
  %. = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_afe_i2s_mclk_connect(ptr nocapture noundef readonly %source, ptr nocapture noundef readonly %sink) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %sink, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %sink, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call.i = tail call fastcc i32 @get_i2s_id_by_name(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %get_i2s_priv_by_name.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

get_i2s_priv_by_name.exit:                        ; preds = %entry
  %platform_priv.i = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 25
  %8 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_priv.i, align 4
  %arrayidx.i = getelementptr %struct.mt8192_afe_private, ptr %9, i32 0, i32 7, i32 %call.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %get_i2s_priv_by_name.exit.do.end_crit_edge, label %if.end

get_i2s_priv_by_name.exit.do.end_crit_edge:       ; preds = %get_i2s_priv_by_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %get_i2s_priv_by_name.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.313) #10
  br label %cleanup

if.end:                                           ; preds = %get_i2s_priv_by_name.exit
  %call4 = tail call fastcc i32 @get_i2s_id_by_name(ptr noundef %7)
  %name5 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %source, i32 0, i32 1
  %14 = ptrtoint ptr %name5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name5, align 4
  %call6 = tail call fastcc i32 @get_i2s_id_by_name(ptr noundef %15)
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %call6)
  %cmp = icmp eq i32 %call4, %call6
  br i1 %cmp, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mclk_rate = getelementptr inbounds %struct.mtk_afe_i2s_priv, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mclk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp8 = icmp sgt i32 %17, 0
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %share_i2s_id = getelementptr inbounds %struct.mtk_afe_i2s_priv, ptr %11, i32 0, i32 4
  %18 = ptrtoint ptr %share_i2s_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %share_i2s_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp10 = icmp sgt i32 %19, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %call6)
  %cmp16 = icmp eq i32 %19, %call6
  %or.cond = select i1 %cmp10, i1 %cmp16, i1 false
  br i1 %or.cond, label %if.then17, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %mclk_rate18 = getelementptr inbounds %struct.mtk_afe_i2s_priv, ptr %11, i32 0, i32 6
  %20 = ptrtoint ptr %mclk_rate18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mclk_rate18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp19 = icmp sgt i32 %21, 0
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end9.cleanup_crit_edge, %if.then7, %do.end
  %retval.0.shrunk = phi i1 [ %cmp8, %if.then7 ], [ %cmp19, %if.then17 ], [ false, %do.end ], [ false, %if.end9.cleanup_crit_edge ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_afe_mclk_apll_connect(ptr nocapture noundef readonly %source, ptr nocapture noundef readonly %sink) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %sink, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %sink, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call.i = tail call fastcc i32 @get_i2s_id_by_name(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %get_i2s_priv_by_name.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

get_i2s_priv_by_name.exit:                        ; preds = %entry
  %platform_priv.i = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 25
  %8 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_priv.i, align 4
  %arrayidx.i = getelementptr %struct.mt8192_afe_private, ptr %9, i32 0, i32 7, i32 %call.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %get_i2s_priv_by_name.exit.do.end_crit_edge, label %if.end

get_i2s_priv_by_name.exit.do.end_crit_edge:       ; preds = %get_i2s_priv_by_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %get_i2s_priv_by_name.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.314) #10
  br label %cleanup

if.end:                                           ; preds = %get_i2s_priv_by_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %name3 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %source, i32 0, i32 1
  %14 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name3, align 4
  %call4 = tail call i32 @mt8192_get_apll_by_name(ptr noundef %5, ptr noundef %15) #7
  %mclk_apll = getelementptr inbounds %struct.mtk_afe_i2s_priv, ptr %11, i32 0, i32 7
  %16 = ptrtoint ptr %mclk_apll to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mclk_apll, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %call4)
  %cmp = icmp eq i32 %17, %call4
  %. = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8192_get_apll_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8192_dai_set_priv(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 378)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 378)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !103, !105, !106, !107, !109, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !307, !308, !310, !311, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !345, !346, !348, !349, !351, !352, !354, !355, !357, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !433, !434, !436, !437, !438, !440, !441, !442, !444, !445, !446, !448, !449, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468}
!llvm.module.flags = !{!470, !471, !472, !473, !474, !475, !476, !477}
!llvm.ident = !{!478}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 2081, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mt8192_dai_i2s_register.__UNIQUE_ID_ddebug247, !1, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1848, i32 11}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1851, i32 19}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1860, i32 11}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1872, i32 11}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1884, i32 11}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1896, i32 11}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1908, i32 11}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1920, i32 11}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1932, i32 11}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1944, i32 11}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1956, i32 11}
!28 = !{ptr @mtk_dai_i2s_driver, !29, !"mtk_dai_i2s_driver", i1 false, i1 false}
!29 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1846, i32 34}
!30 = !{ptr @mtk_dai_connsys_i2s_ops, !31, !"mtk_dai_connsys_i2s_ops", i1 false, i1 false}
!31 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1657, i32 37}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1539, i32 2}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mtk_dai_connsys_i2s_hw_params.__UNIQUE_ID_ddebug243, !33, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1596, i32 2}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mtk_dai_connsys_i2s_trigger.__UNIQUE_ID_ddebug244, !37, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!40 = !{ptr @mtk_dai_i2s_ops, !41, !"mtk_dai_i2s_ops", i1 false, i1 false}
!41 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1828, i32 37}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1784, i32 3}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mtk_dai_i2s_set_sysclk._entry, !43, !"_entry", i1 false, i1 false}
!48 = !{ptr @mtk_dai_i2s_set_sysclk._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1789, i32 3}
!51 = !{ptr @mtk_dai_i2s_set_sysclk._entry.23, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mtk_dai_i2s_set_sysclk._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1793, i32 2}
!55 = !{ptr @mtk_dai_i2s_set_sysclk.__UNIQUE_ID_ddebug246, !54, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1799, i32 3}
!58 = !{ptr @mtk_dai_i2s_set_sysclk._entry.27, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mtk_dai_i2s_set_sysclk._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1804, i32 3}
!62 = !{ptr @mtk_dai_i2s_set_sysclk._entry.30, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mtk_dai_i2s_set_sysclk._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1816, i32 4}
!66 = !{ptr @mtk_dai_i2s_set_sysclk._entry.33, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mtk_dai_i2s_set_sysclk._entry_ptr.35, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1677, i32 2}
!70 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mtk_dai_i2s_config.__UNIQUE_ID_ddebug245, !69, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!72 = !{ptr @mtk_dai_i2s_config._entry, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1683, i32 3}
!74 = !{ptr @mtk_dai_i2s_config._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1753, i32 3}
!77 = !{ptr @mtk_dai_i2s_config._entry.38, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @mtk_dai_i2s_config._entry_ptr.40, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 185, i32 2}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 187, i32 2}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 189, i32 2}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 191, i32 2}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 193, i32 2}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 195, i32 2}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 197, i32 2}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 199, i32 2}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 201, i32 2}
!97 = !{ptr @mtk_dai_i2s_controls, !98, !"mtk_dai_i2s_controls", i1 false, i1 false}
!98 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 184, i32 38}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 146, i32 3}
!101 = !{ptr @mt8192_i2s_hd_get._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @mt8192_i2s_hd_get._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 169, i32 2}
!105 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @mt8192_i2s_hd_set.__UNIQUE_ID_ddebug238, !104, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!107 = !{ptr @mt8192_i2s_hd_set._entry, !108, !"_entry", i1 false, i1 false}
!108 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 175, i32 3}
!109 = !{ptr @mt8192_i2s_hd_set._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @mt8192_i2s_enum, !111, !"mt8192_i2s_enum", i1 false, i1 false}
!111 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 134, i32 8}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 131, i32 2}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 131, i32 12}
!116 = !{ptr @mt8192_i2s_hd_str, !117, !"mt8192_i2s_hd_str", i1 false, i1 false}
!117 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 130, i32 27}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 734, i32 2}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 736, i32 2}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 739, i32 2}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 743, i32 2}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 746, i32 2}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 750, i32 2}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 753, i32 2}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 757, i32 2}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 760, i32 2}
!136 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 764, i32 2}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 767, i32 2}
!140 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 771, i32 2}
!142 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 775, i32 2}
!144 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 779, i32 2}
!146 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 783, i32 2}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 789, i32 2}
!150 = !{ptr @.str.71, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 793, i32 2}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 797, i32 2}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 801, i32 2}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 805, i32 2}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 809, i32 2}
!160 = !{ptr @.str.76, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 813, i32 2}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 817, i32 2}
!164 = !{ptr @.str.78, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 821, i32 2}
!166 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 826, i32 2}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 828, i32 2}
!170 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 830, i32 2}
!172 = !{ptr @.str.82, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 832, i32 2}
!174 = !{ptr @.str.83, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 834, i32 2}
!176 = !{ptr @.str.84, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 836, i32 2}
!178 = !{ptr @.str.85, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 838, i32 2}
!180 = !{ptr @.str.86, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 840, i32 2}
!182 = !{ptr @.str.87, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 842, i32 2}
!184 = !{ptr @.str.88, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 846, i32 2}
!186 = !{ptr @.str.89, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 850, i32 2}
!188 = !{ptr @.str.90, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 854, i32 2}
!190 = !{ptr @.str.91, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 858, i32 2}
!192 = !{ptr @.str.92, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 862, i32 2}
!194 = !{ptr @.str.93, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 866, i32 2}
!196 = !{ptr @.str.94, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 870, i32 2}
!198 = !{ptr @.str.95, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 874, i32 2}
!200 = !{ptr @.str.96, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 878, i32 2}
!202 = !{ptr @.str.97, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 884, i32 2}
!204 = !{ptr @.str.98, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 888, i32 2}
!206 = !{ptr @.str.99, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 894, i32 2}
!208 = !{ptr @.str.100, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 895, i32 2}
!210 = !{ptr @.str.101, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 897, i32 2}
!212 = !{ptr @.str.102, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 899, i32 2}
!214 = !{ptr @.str.103, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 901, i32 2}
!216 = !{ptr @.str.104, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 903, i32 2}
!218 = !{ptr @.str.105, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 906, i32 2}
!220 = !{ptr @.str.106, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 907, i32 2}
!222 = !{ptr @.str.107, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 909, i32 2}
!224 = !{ptr @.str.108, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 913, i32 2}
!226 = !{ptr @.str.109, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 915, i32 2}
!228 = !{ptr @mtk_dai_i2s_widgets, !229, !"mtk_dai_i2s_widgets", i1 false, i1 false}
!229 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 733, i32 41}
!230 = !{ptr @.str.111, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 403, i32 2}
!232 = !{ptr @.str.112, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 404, i32 2}
!234 = !{ptr @.str.114, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 405, i32 2}
!236 = !{ptr @.str.116, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 406, i32 2}
!238 = !{ptr @.str.118, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 407, i32 2}
!240 = !{ptr @.str.120, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 408, i32 2}
!242 = !{ptr @.str.122, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 409, i32 2}
!244 = !{ptr @.str.124, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 410, i32 2}
!246 = !{ptr @.str.126, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 411, i32 2}
!248 = !{ptr @.str.128, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 412, i32 2}
!250 = !{ptr @.str.130, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 414, i32 2}
!252 = !{ptr @.str.132, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 416, i32 2}
!254 = !{ptr @.str.134, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 418, i32 2}
!256 = !{ptr @mtk_i2s1_ch1_mix, !257, !"mtk_i2s1_ch1_mix", i1 false, i1 false}
!257 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 402, i32 38}
!258 = !{ptr @.str.136, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 423, i32 2}
!260 = !{ptr @.str.138, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 424, i32 2}
!262 = !{ptr @.str.140, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 425, i32 2}
!264 = !{ptr @.str.142, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 426, i32 2}
!266 = !{ptr @.str.144, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 427, i32 2}
!268 = !{ptr @.str.146, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 428, i32 2}
!270 = !{ptr @.str.148, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 429, i32 2}
!272 = !{ptr @.str.150, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 430, i32 2}
!274 = !{ptr @.str.152, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 431, i32 2}
!276 = !{ptr @.str.154, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 432, i32 2}
!278 = !{ptr @.str.156, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 434, i32 2}
!280 = !{ptr @.str.160, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 440, i32 2}
!282 = !{ptr @.str.162, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 442, i32 2}
!284 = !{ptr @mtk_i2s1_ch2_mix, !285, !"mtk_i2s1_ch2_mix", i1 false, i1 false}
!285 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 422, i32 38}
!286 = !{ptr @.str.176, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 366, i32 2}
!288 = !{ptr @mtk_i2s3_ch1_mix, !289, !"mtk_i2s3_ch1_mix", i1 false, i1 false}
!289 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 350, i32 38}
!290 = !{ptr @mtk_i2s3_ch2_mix, !291, !"mtk_i2s3_ch2_mix", i1 false, i1 false}
!291 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 374, i32 38}
!292 = !{ptr @mtk_i2s5_ch1_mix, !293, !"mtk_i2s5_ch1_mix", i1 false, i1 false}
!293 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 446, i32 38}
!294 = !{ptr @mtk_i2s5_ch2_mix, !295, !"mtk_i2s5_ch2_mix", i1 false, i1 false}
!295 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 466, i32 38}
!296 = !{ptr @mtk_i2s7_ch1_mix, !297, !"mtk_i2s7_ch1_mix", i1 false, i1 false}
!297 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 490, i32 38}
!298 = !{ptr @mtk_i2s7_ch2_mix, !299, !"mtk_i2s7_ch2_mix", i1 false, i1 false}
!299 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 509, i32 38}
!300 = !{ptr @mtk_i2s9_ch1_mix, !301, !"mtk_i2s9_ch1_mix", i1 false, i1 false}
!301 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 532, i32 38}
!302 = !{ptr @mtk_i2s9_ch2_mix, !303, !"mtk_i2s9_ch2_mix", i1 false, i1 false}
!303 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 552, i32 38}
!304 = !{ptr @.str.279, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 655, i32 2}
!306 = !{ptr @.str.280, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @i2s_out_tinyconn_event.__UNIQUE_ID_ddebug241, !305, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!308 = !{ptr @.str.281, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 681, i32 3}
!310 = !{ptr @i2s_out_tinyconn_event._entry, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @i2s_out_tinyconn_event._entry_ptr, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.282, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 287, i32 2}
!314 = !{ptr @i2s1_tinyconn_ch1_mux_control, !315, !"i2s1_tinyconn_ch1_mux_control", i1 false, i1 false}
!315 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 286, i32 38}
!316 = !{ptr @i2s1_tinyconn_ch1_mux_map_enum, !317, !"i2s1_tinyconn_ch1_mux_map_enum", i1 false, i1 false}
!317 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 280, i32 8}
!318 = !{ptr @.str.283, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 257, i32 2}
!320 = !{ptr @tinyconn_mux_map, !321, !"tinyconn_mux_map", i1 false, i1 false}
!321 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 256, i32 27}
!322 = !{ptr @tinyconn_mux_map_value, !323, !"tinyconn_mux_map_value", i1 false, i1 false}
!323 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 268, i32 12}
!324 = !{ptr @.str.284, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 297, i32 2}
!326 = !{ptr @i2s1_tinyconn_ch2_mux_control, !327, !"i2s1_tinyconn_ch2_mux_control", i1 false, i1 false}
!327 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 296, i32 38}
!328 = !{ptr @i2s1_tinyconn_ch2_mux_map_enum, !329, !"i2s1_tinyconn_ch2_mux_map_enum", i1 false, i1 false}
!329 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 290, i32 8}
!330 = !{ptr @.str.285, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 307, i32 2}
!332 = !{ptr @i2s3_tinyconn_ch1_mux_control, !333, !"i2s3_tinyconn_ch1_mux_control", i1 false, i1 false}
!333 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 306, i32 38}
!334 = !{ptr @i2s3_tinyconn_ch1_mux_map_enum, !335, !"i2s3_tinyconn_ch1_mux_map_enum", i1 false, i1 false}
!335 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 300, i32 8}
!336 = !{ptr @.str.286, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 317, i32 2}
!338 = !{ptr @i2s3_tinyconn_ch2_mux_control, !339, !"i2s3_tinyconn_ch2_mux_control", i1 false, i1 false}
!339 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 316, i32 38}
!340 = !{ptr @i2s3_tinyconn_ch2_mux_map_enum, !341, !"i2s3_tinyconn_ch2_mux_map_enum", i1 false, i1 false}
!341 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 310, i32 8}
!342 = !{ptr @.str.287, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 594, i32 3}
!344 = !{ptr @mtk_i2s_en_event._entry, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @mtk_i2s_en_event._entry_ptr, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.288, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 598, i32 2}
!348 = !{ptr @mtk_i2s_en_event.__UNIQUE_ID_ddebug239, !347, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!349 = !{ptr @.str.289, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 709, i32 2}
!351 = !{ptr @mtk_mclk_en_event.__UNIQUE_ID_ddebug242, !350, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!352 = !{ptr @mtk_mclk_en_event._entry, !353, !"_entry", i1 false, i1 false}
!353 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 714, i32 3}
!354 = !{ptr @mtk_mclk_en_event._entry_ptr, !353, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.290, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 622, i32 2}
!357 = !{ptr @mtk_apll_event.__UNIQUE_ID_ddebug240, !356, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!358 = !{ptr @.str.291, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 229, i32 2}
!360 = !{ptr @i2s1_out_mux_control, !361, !"i2s1_out_mux_control", i1 false, i1 false}
!361 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 228, i32 38}
!362 = !{ptr @i2s_mux_map_enum, !363, !"i2s_mux_map_enum", i1 false, i1 false}
!363 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 215, i32 8}
!364 = !{ptr @.str.292, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 208, i32 12}
!366 = !{ptr @i2s_mux_map, !367, !"i2s_mux_map", i1 false, i1 false}
!367 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 207, i32 27}
!368 = !{ptr @i2s_mux_map_value, !369, !"i2s_mux_map_value", i1 false, i1 false}
!369 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 211, i32 12}
!370 = !{ptr @.str.293, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 232, i32 2}
!372 = !{ptr @i2s3_out_mux_control, !373, !"i2s3_out_mux_control", i1 false, i1 false}
!373 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 231, i32 38}
!374 = !{ptr @.str.294, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 235, i32 2}
!376 = !{ptr @i2s5_out_mux_control, !377, !"i2s5_out_mux_control", i1 false, i1 false}
!377 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 234, i32 38}
!378 = !{ptr @.str.295, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 238, i32 2}
!380 = !{ptr @i2s7_out_mux_control, !381, !"i2s7_out_mux_control", i1 false, i1 false}
!381 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 237, i32 38}
!382 = !{ptr @.str.296, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 241, i32 2}
!384 = !{ptr @i2s9_out_mux_control, !385, !"i2s9_out_mux_control", i1 false, i1 false}
!385 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 240, i32 38}
!386 = !{ptr @.str.297, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 223, i32 2}
!388 = !{ptr @i2s0_in_mux_control, !389, !"i2s0_in_mux_control", i1 false, i1 false}
!389 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 222, i32 38}
!390 = !{ptr @.str.298, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 226, i32 2}
!392 = !{ptr @i2s8_in_mux_control, !393, !"i2s8_in_mux_control", i1 false, i1 false}
!393 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 225, i32 38}
!394 = !{ptr @.str.299, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 337, i32 2}
!396 = !{ptr @i2s0_lpbk_mux_control, !397, !"i2s0_lpbk_mux_control", i1 false, i1 false}
!397 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 336, i32 38}
!398 = !{ptr @i2s0_lpbk_mux_map_enum, !399, !"i2s0_lpbk_mux_map_enum", i1 false, i1 false}
!399 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 329, i32 8}
!400 = !{ptr @.str.300, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 322, i32 12}
!402 = !{ptr @i2s_lpbk_mux_map, !403, !"i2s_lpbk_mux_map", i1 false, i1 false}
!403 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 321, i32 27}
!404 = !{ptr @i2s_lpbk_mux_map_value, !405, !"i2s_lpbk_mux_map_value", i1 false, i1 false}
!405 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 325, i32 12}
!406 = !{ptr @i2s2_lpbk_mux_control, !407, !"i2s2_lpbk_mux_control", i1 false, i1 false}
!407 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 346, i32 38}
!408 = !{ptr @i2s2_lpbk_mux_map_enum, !409, !"i2s2_lpbk_mux_map_enum", i1 false, i1 false}
!409 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 339, i32 8}
!410 = !{ptr @.str.301, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1086, i32 26}
!412 = !{ptr @.str.302, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1091, i32 26}
!414 = !{ptr @.str.303, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1096, i32 26}
!416 = !{ptr @.str.304, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1101, i32 27}
!418 = !{ptr @.str.305, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1106, i32 26}
!420 = !{ptr @.str.306, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1109, i32 26}
!422 = !{ptr @.str.307, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1112, i32 26}
!424 = !{ptr @.str.308, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1115, i32 26}
!426 = !{ptr @.str.309, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1459, i32 26}
!428 = !{ptr @mtk_dai_i2s_routes, !429, !"mtk_dai_i2s_routes", i1 false, i1 false}
!429 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1047, i32 40}
!430 = !{ptr @.str.310, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 929, i32 3}
!432 = !{ptr @mtk_afe_i2s_share_connect._entry, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @mtk_afe_i2s_share_connect._entry_ptr, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.311, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 949, i32 3}
!436 = !{ptr @mtk_afe_i2s_hd_connect._entry, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @mtk_afe_i2s_hd_connect._entry_ptr, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.312, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 979, i32 3}
!440 = !{ptr @mtk_afe_i2s_apll_connect._entry, !439, !"_entry", i1 false, i1 false}
!441 = !{ptr @mtk_afe_i2s_apll_connect._entry_ptr, !439, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.313, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1005, i32 3}
!444 = !{ptr @mtk_afe_i2s_mclk_connect._entry, !443, !"_entry", i1 false, i1 false}
!445 = !{ptr @mtk_afe_i2s_mclk_connect._entry_ptr, !443, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @.str.314, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1034, i32 3}
!448 = !{ptr @mtk_afe_mclk_apll_connect._entry, !447, !"_entry", i1 false, i1 false}
!449 = !{ptr @mtk_afe_mclk_apll_connect._entry_ptr, !447, !"_entry_ptr", i1 false, i1 false}
!450 = !{ptr @.str.315, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1987, i32 26}
!452 = !{ptr @.str.316, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1993, i32 26}
!454 = !{ptr @.str.317, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1999, i32 26}
!456 = !{ptr @.str.318, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 2005, i32 26}
!458 = !{ptr @.str.319, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 2011, i32 26}
!460 = !{ptr @.str.320, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 2017, i32 26}
!462 = !{ptr @.str.321, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 2023, i32 26}
!464 = !{ptr @.str.322, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 2029, i32 26}
!466 = !{ptr @.str.323, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 2035, i32 26}
!468 = !{ptr @mt8192_i2s_priv, !469, !"mt8192_i2s_priv", i1 false, i1 false}
!469 = !{!"../sound/soc/mediatek/mt8192/mt8192-dai-i2s.c", i32 1983, i32 38}
!470 = !{i32 1, !"wchar_size", i32 2}
!471 = !{i32 1, !"min_enum_size", i32 4}
!472 = !{i32 8, !"branch-target-enforcement", i32 0}
!473 = !{i32 8, !"sign-return-address", i32 0}
!474 = !{i32 8, !"sign-return-address-all", i32 0}
!475 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!476 = !{i32 7, !"uwtable", i32 1}
!477 = !{i32 7, !"frame-pointer", i32 2}
!478 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!479 = !{i64 2148930715, i64 2148930720, i64 2148930733, i64 2148930777, i64 2148930811, i64 2148930832}
!480 = !{!"auto-init"}
!481 = !{i32 0, i32 33}
