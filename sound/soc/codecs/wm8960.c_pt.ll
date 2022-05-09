; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/wm8960.c_pt.bc'
source_filename = "../sound/soc/codecs/wm8960.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.106, ptr }
%union.anon.106 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.wm8960_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, [2 x i8], %struct.wm8960_data }
%struct.wm8960_data = type { i8, i8, [3 x i32], [2 x i32] }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.97, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.97 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.92, [128 x i8] }
%union.anon.92 = type { %union.anon.94 }
%union.anon.94 = type { [64 x i64] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_wm8960__297_1508_wm8960_i2c_driver_init6 = internal global ptr @wm8960_i2c_driver_init, section ".initcall6.init", align 4
@wm8960_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @wm8960_i2c_probe, ptr @wm8960_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wm8960_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wm8960_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_wm8960_i2c_driver_exit = internal global ptr @wm8960_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description298 = internal constant [46 x i8] c"snd_soc_wm8960.description=ASoC WM8960 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [36 x i8] c"snd_soc_wm8960.author=Liam Girdwood\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [52 x i8] c"snd_soc_wm8960.file=sound/soc/codecs/snd-soc-wm8960\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [27 x i8] c"snd_soc_wm8960.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm8960\00", [25 x i8] zeroinitializer }, align 32
@wm8960_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wlf,wm8960\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@wm8960_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wm8960\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@wm8960_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wm8960_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 7, i32 0, i32 0, i32 9, ptr null, ptr null, ptr @wm8960_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 55, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8960_reg_defaults, i32 47, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wm8960:1422:(&wm8960_regmap)->lock\00", [61 x i8] zeroinitializer }, align 32
@wm8960_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1433, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to issue reset\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8960_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/wm8960.c\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm8960_i2c_probe._entry_ptr = internal global ptr @wm8960_i2c_probe._entry, section ".printk_index", align 4
@wm8960_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1442, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to enable LRCM: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@wm8960_i2c_probe._entry_ptr.10 = internal global ptr @wm8960_i2c_probe._entry.8, section ".printk_index", align 4
@soc_component_dev_wm8960 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @wm8960_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8960_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 124, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@wm8960_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.195, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm8960_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.146, i64 68719477828, i32 254, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.149, i64 68719477828, i32 254, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@wm8960_reg_defaults = internal constant { [47 x %struct.reg_default], [72 x i8] } { [47 x %struct.reg_default] [%struct.reg_default { i32 0, i32 167 }, %struct.reg_default { i32 1, i32 167 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 8 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 10 }, %struct.reg_default { i32 8, i32 448 }, %struct.reg_default { i32 9, i32 0 }, %struct.reg_default { i32 10, i32 255 }, %struct.reg_default { i32 11, i32 255 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 17, i32 123 }, %struct.reg_default { i32 18, i32 256 }, %struct.reg_default { i32 19, i32 50 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 195 }, %struct.reg_default { i32 22, i32 195 }, %struct.reg_default { i32 23, i32 448 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 32, i32 256 }, %struct.reg_default { i32 33, i32 256 }, %struct.reg_default { i32 34, i32 80 }, %struct.reg_default { i32 37, i32 80 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 39, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 42, i32 64 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 45, i32 80 }, %struct.reg_default { i32 46, i32 80 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 48, i32 2 }, %struct.reg_default { i32 49, i32 55 }, %struct.reg_default { i32 51, i32 128 }, %struct.reg_default { i32 52, i32 8 }, %struct.reg_default { i32 53, i32 49 }, %struct.reg_default { i32 54, i32 38 }, %struct.reg_default { i32 55, i32 233 }], [72 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wlf,capless\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wlf,shared-lrclk\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wlf,gpio-cfg\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wlf,hp-cfg\00", [21 x i8] zeroinitializer }, align 32
@wm8960_snd_controls = internal constant { [42 x %struct.snd_kcontrol_new], [480 x i8] } { [42 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @inpga_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @lineinboost_tlv }, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @lineinboost_tlv }, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @lineinboost_tlv }, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @lineinboost_tlv }, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @micboost_tlv }, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @micboost_tlv }, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.60 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.62 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.66 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.68 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.70 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @wm8960_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.73 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8960_enum, i64 64) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wm8960_get_deemph, ptr @wm8960_put_deemph, %union.anon.98 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8960_enum, i64 128) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8960_enum, i64 192) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.79 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.81 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8960_enum, i64 256) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.88 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.90 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8960_enum, i64 320) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.93 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.95 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.96, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.97 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.99 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_tlv }, i32 ptrtoint (ptr @.compoundliteral.101 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @bypass_tlv }, i32 ptrtoint (ptr @.compoundliteral.103 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @bypass_tlv }, i32 ptrtoint (ptr @.compoundliteral.105 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @bypass_tlv }, i32 ptrtoint (ptr @.compoundliteral.107 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.108, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @bypass_tlv }, i32 ptrtoint (ptr @.compoundliteral.109 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8960_enum, i64 384) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.111, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8960_enum, i64 448) to i32) }], [480 x i8] zeroinitializer }, align 32
@wm8960_set_bias_level_capless._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 1037, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to enable MCLK: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wm8960_set_bias_level_capless\00", [34 x i8] zeroinitializer }, align 32
@wm8960_set_bias_level_capless._entry_ptr = internal global ptr @wm8960_set_bias_level_capless._entry, section ".printk_index", align 4
@wm8960_configure_clocking._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 754, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"slave mode, but proceeding with no clock configuration\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wm8960_configure_clocking\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wm8960_configure_clocking._entry_ptr = internal global ptr @wm8960_configure_clocking._entry, section ".printk_index", align 4
@wm8960_configure_clocking._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.5, i32 759, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No MCLK configured\0A\00", [44 x i8] zeroinitializer }, align 32
@wm8960_configure_clocking._entry_ptr.22 = internal global ptr @wm8960_configure_clocking._entry.20, section ".printk_index", align 4
@wm8960_configure_clocking._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.18, ptr @.str.5, i32 777, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No SYSCLK configured\0A\00", [42 x i8] zeroinitializer }, align 32
@wm8960_configure_clocking._entry_ptr.25 = internal global ptr @wm8960_configure_clocking._entry.23, section ".printk_index", align 4
@wm8960_configure_clocking._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.18, ptr @.str.5, i32 786, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to configure clock\0A\00", [37 x i8] zeroinitializer }, align 32
@wm8960_configure_clocking._entry_ptr.28 = internal global ptr @wm8960_configure_clocking._entry.26, section ".printk_index", align 4
@wm8960_configure_clocking._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.18, ptr @.str.5, i32 793, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to configure clock via PLL\0A\00", [61 x i8] zeroinitializer }, align 32
@wm8960_configure_clocking._entry_ptr.31 = internal global ptr @wm8960_configure_clocking._entry.29, section ".printk_index", align 4
@sysclk_divs = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 -1, i32 2, i32 -1], [16 x i8] zeroinitializer }, align 32
@dac_divs = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 256, i32 384, i32 512, i32 768, i32 1024, i32 1408, i32 1536], [36 x i8] zeroinitializer }, align 32
@bclk_divs = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 10, i32 15, i32 20, i32 30, i32 40, i32 55, i32 60, i32 80, i32 110, i32 120, i32 160, i32 220, i32 240, i32 320, i32 320, i32 320], [32 x i8] zeroinitializer }, align 32
@wm8960_set_pll.pll_div.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pll_factors.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.33, ptr @.str.5, ptr @.str.34, i8 1, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_wm8960\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll_factors\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"WM8960 PLL: setting %dHz->%dHz\0A\00", [32 x i8] zeroinitializer }, align 32
@pll_factors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.5, i32 1160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013WM8960 PLL: Unsupported N=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@pll_factors._entry_ptr = internal global ptr @pll_factors._entry, section ".printk_index", align 4
@pll_factors.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.33, ptr @.str.5, ptr @.str.36, i8 1, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"WM8960 PLL: N=%x K=%x pre_div=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@wm8960_set_bias_level_out3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.37, ptr @.str.5, i32 914, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wm8960_set_bias_level_out3\00", [37 x i8] zeroinitializer }, align 32
@wm8960_set_bias_level_out3._entry_ptr = internal global ptr @wm8960_set_bias_level_out3._entry, section ".printk_index", align 4
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Volume\00", [17 x i8] zeroinitializer }, align 32
@inpga_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1725, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 0, i32 1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Capture Volume ZC Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 0, i32 1, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 0, i32 1, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Left Input Boost Mixer LINPUT3 Volume\00", [58 x i8] zeroinitializer }, align 32
@lineinboost_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1500, i32 65836], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 43, i32 43, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Left Input Boost Mixer LINPUT2 Volume\00", [58 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 43, i32 43, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Right Input Boost Mixer RINPUT3 Volume\00", [57 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 44, i32 44, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Right Input Boost Mixer RINPUT2 Volume\00", [57 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 44, i32 44, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Right Input Boost Mixer RINPUT1 Volume\00", [57 x i8] zeroinitializer }, align 32
@micboost_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 1, i32 1, i32 8, i32 0, i32 1300, i32 2, i32 3, i32 1, i32 8, i32 2000, i32 900], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 33, i32 33, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Left Input Boost Mixer LINPUT1 Volume\00", [58 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 32, i32 32, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Playback Volume\00", [16 x i8] zeroinitializer }, align 32
@dac_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -12750, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 10, i32 11, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Headphone Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@out_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -12100, i32 65636], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 2, i32 3, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Headphone Playback ZC Switch\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 3, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Speaker Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 40, i32 41, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Speaker Playback ZC Switch\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 41, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Speaker DC Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 5, i32 5, i32 51, i32 51, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Speaker AC Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 5, i32 5, i32 51, i32 51, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PCM Playback -6dB Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 5, i32 5, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC Polarity\00", [19 x i8] zeroinitializer }, align 32
@wm8960_enum = internal constant { [8 x %struct.soc_enum], [128 x i8] } { [8 x %struct.soc_enum] [%struct.soc_enum { i32 5, i8 5, i8 5, i32 4, i32 3, ptr @wm8960_polarity, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 6, i8 5, i8 5, i32 4, i32 3, ptr @wm8960_polarity, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 16, i8 6, i8 6, i32 2, i32 1, ptr @wm8960_3d_upper_cutoff, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 16, i8 5, i8 5, i32 2, i32 1, ptr @wm8960_3d_lower_cutoff, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 17, i8 7, i8 7, i32 4, i32 3, ptr @wm8960_alcfunc, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 19, i8 8, i8 8, i32 2, i32 1, ptr @wm8960_alcmode, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 23, i8 2, i8 2, i32 4, i32 3, ptr @wm8960_adc_data_output_sel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 23, i8 4, i8 4, i32 2, i32 1, ptr @wm8960_dmonomix, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }], [128 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ADC High Pass Filter Switch\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 5, i32 5, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DAC Polarity\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DAC Deemphasis Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"3D Filter Upper Cut-Off\00", [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"3D Filter Lower Cut-Off\00", [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"3D Volume\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 16, i32 16, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"3D Switch\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16, i32 16, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ALC Function\00", [19 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ALC Max Gain\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 17, i32 17, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ALC Target\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 17, i32 17, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ALC Min Gain\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 18, i32 18, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ALC Hold Time\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 18, i32 18, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ALC Mode\00", [23 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ALC Decay\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 19, i32 19, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ALC Attack\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 19, i32 19, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Noise Gate Threshold\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 20, i32 20, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Noise Gate Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ADC PCM Capture Volume\00", [41 x i8] zeroinitializer }, align 32
@adc_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -9750, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 21, i32 22, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Left Output Mixer Boost Bypass Volume\00", [58 x i8] zeroinitializer }, align 32
@bypass_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -2100, i32 300], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 45, i32 45, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Left Output Mixer LINPUT3 Volume\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 34, i32 34, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Right Output Mixer Boost Bypass Volume\00", [57 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 46, i32 46, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Right Output Mixer RINPUT3 Volume\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 37, i32 37, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ADC Data Output Select\00", [41 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DAC Mono Mix\00", [19 x i8] zeroinitializer }, align 32
@wm8960_polarity = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115], [16 x i8] zeroinitializer }, align 32
@wm8960_3d_upper_cutoff = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.116, ptr @.str.117], [24 x i8] zeroinitializer }, align 32
@wm8960_3d_lower_cutoff = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.117, ptr @.str.116], [24 x i8] zeroinitializer }, align 32
@wm8960_alcfunc = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121], [16 x i8] zeroinitializer }, align 32
@wm8960_alcmode = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.122, ptr @.str.123], [24 x i8] zeroinitializer }, align 32
@wm8960_adc_data_output_sel = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127], [16 x i8] zeroinitializer }, align 32
@wm8960_dmonomix = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.121, ptr @.str.128], [24 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"No Inversion\00", [19 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Left Inverted\00", [18 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Right Inverted\00", [17 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Stereo Inversion\00", [47 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"High\00", [27 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Low\00", [28 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Right\00", [26 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Left\00", [27 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Stereo\00", [25 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ALC\00", [28 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Limiter\00", [24 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Left Data = Left ADC;  Right Data = Right ADC\00", [50 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Left Data = Left ADC;  Right Data = Left ADC\00", [51 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Left Data = Right ADC; Right Data = Right ADC\00", [50 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Left Data = Right ADC; Right Data = Left ADC\00", [51 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Mono\00", [27 x i8] zeroinitializer }, align 32
@deemph_settings = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 32000, i32 44100, i32 48000], [16 x i8] zeroinitializer }, align 32
@wm8960_set_deemph.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.129, ptr @.str.5, ptr @.str.130, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm8960_set_deemph\00", [46 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Set deemphasis %d\0A\00", [45 x i8] zeroinitializer }, align 32
@audio_paths = internal constant { [34 x %struct.snd_soc_dapm_route], [440 x i8] } { [34 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.169, ptr @.str.134, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.165, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.167, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.177, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.177, ptr @.str.134, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr null, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr null, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.175, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.171, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.173, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.177, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.177, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr null, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.167, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.183, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.180, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.173, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.183, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.180, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr null, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr null, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr null, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr null, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr null, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }], [440 x i8] zeroinitializer }, align 32
@audio_paths_capless = internal constant { [4 x %struct.snd_soc_dapm_route], [48 x i8] } { [4 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.159, ptr null, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr null, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr null, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@audio_paths_out3 = internal constant { [3 x %struct.snd_soc_dapm_route], [36 x i8] } { [3 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.189, ptr @.str.191, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr @.str.193, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr null, ptr @.str.189, ptr null, %struct.snd_soc_dobj zeroinitializer }], [36 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LOUT1 PGA\00", [22 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ROUT1 PGA\00", [22 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"OUT3 VMID\00", [22 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LINPUT1\00", [24 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RINPUT1\00", [24 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LINPUT2\00", [24 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RINPUT2\00", [24 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LINPUT3\00", [24 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RINPUT3\00", [24 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MICB\00", [27 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Left Boost Mixer\00", [47 x i8] zeroinitializer }, align 32
@wm8960_lin_boost = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.165, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.166 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.167, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.168 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.169, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.170 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Right Boost Mixer\00", [46 x i8] zeroinitializer }, align 32
@wm8960_rin_boost = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.171, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.172 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.173, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.174 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.175, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.176 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Left Input Mixer\00", [47 x i8] zeroinitializer }, align 32
@wm8960_lin = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.177, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.178 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Right Input Mixer\00", [46 x i8] zeroinitializer }, align 32
@wm8960_rin = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.177, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.179 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right ADC\00", [22 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left DAC\00", [23 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right DAC\00", [22 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Left Output Mixer\00", [46 x i8] zeroinitializer }, align 32
@wm8960_loutput_mixer = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.181 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.167, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.182 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.183, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.184 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Right Output Mixer\00", [45 x i8] zeroinitializer }, align 32
@wm8960_routput_mixer = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.185 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.173, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.186 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.183, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.187 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Left Speaker PGA\00", [47 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Right Speaker PGA\00", [46 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Right Speaker Output\00", [43 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Left Speaker Output\00", [44 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPK_LP\00", [25 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPK_LN\00", [25 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HP_L\00", [27 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HP_R\00", [27 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPK_RP\00", [25 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPK_RN\00", [25 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUT3\00", [27 x i8] zeroinitializer }, align 32
@wm8960_dapm_widgets = internal constant { [30 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1352 x i8] } { [30 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.134, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.135, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.136, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.137, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.138, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.139, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.140, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 25, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.141, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 25, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @wm8960_lin_boost, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.142, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 25, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @wm8960_rin_boost, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.143, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 47, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm8960_lin, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.144, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 47, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm8960_rin, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.145, ptr @.str.146, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 25, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.147, ptr @.str.146, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 25, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.148, ptr @.str.149, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.150, ptr @.str.149, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 47, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @wm8960_loutput_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 47, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @wm8960_routput_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 49, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 49, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.157, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.158, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.159, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.160, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.161, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.162, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.163, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1352 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LINPUT2 Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.166 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LINPUT3 Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.168 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LINPUT1 Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.170 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RINPUT2 Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.172 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 33, i32 33, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RINPUT3 Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.174 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 33, i32 33, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RINPUT1 Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.176 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 33, i32 33, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Boost Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.178 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.179 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 33, i32 33, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.181 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 34, i32 34, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.182 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 34, i32 34, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Boost Bypass Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.184 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.185 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.186 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.187 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@wm8960_dapm_widgets_capless = internal constant { [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [44 x i8] } { [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.133, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [44 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Mono Output Mixer\00", [46 x i8] zeroinitializer }, align 32
@wm8960_mono_out = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.191, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.192 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.193, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.194 to i32) }], [32 x i8] zeroinitializer }, align 32
@wm8960_dapm_widgets_out3 = internal constant { [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [44 x i8] } { [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.189, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @wm8960_mono_out, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [44 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Left Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.192 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Right Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.194 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8960-hifi\00", [20 x i8] zeroinitializer }, align 32
@wm8960_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @wm8960_set_dai_sysclk, ptr @wm8960_set_dai_pll, ptr @wm8960_set_dai_clkdiv, ptr null, ptr @wm8960_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8960_mute, ptr null, ptr null, ptr @wm8960_hw_params, ptr @wm8960_hw_free, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@wm8960_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.197, ptr @.str.5, i32 845, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unsupported width %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8960_hw_params\00", [47 x i8] zeroinitializer }, align 32
@wm8960_hw_params._entry_ptr = internal global ptr @wm8960_hw_params._entry, section ".printk_index", align 4
@switch.table.wm8960_set_dai_clkdiv = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 4, i32 4, i32 52, i32 8, i32 23], [44 x i8] zeroinitializer }, align 32
@switch.table.wm8960_set_dai_clkdiv.198 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 505, i32 455, i32 63, i32 63, i32 509], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.199 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.200 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.201 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.202 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.203 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.204 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.205 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.206 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@___asan_gen_.207 = private unnamed_addr constant [18 x i8] c"wm8960_i2c_driver\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 1498, i32 26 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 1500, i32 11 }
@___asan_gen_.213 = private unnamed_addr constant [16 x i8] c"wm8960_of_match\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 1492, i32 34 }
@___asan_gen_.216 = private unnamed_addr constant [14 x i8] c"wm8960_i2c_id\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 1486, i32 35 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 1416, i32 41 }
@___asan_gen_.222 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [14 x i8] c"wm8960_regmap\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 1374, i32 35 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 1422, i32 19 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 1433, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 1441, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant [25 x i8] c"soc_component_dev_wm8960\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 1364, i32 46 }
@___asan_gen_.258 = private unnamed_addr constant [11 x i8] c"wm8960_dai\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 1329, i32 34 }
@___asan_gen_.261 = private unnamed_addr constant [20 x i8] c"wm8960_reg_defaults\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 56, i32 33 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 1391, i32 32 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 1394, i32 32 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 1397, i32 33 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 1400, i32 33 }
@___asan_gen_.276 = private unnamed_addr constant [20 x i8] c"wm8960_snd_controls\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 231, i32 38 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 1035, i32 6 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 753, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 759, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 777, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 786, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 793, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant [12 x i8] c"sysclk_divs\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 593, i32 18 }
@___asan_gen_.327 = private unnamed_addr constant [9 x i8] c"dac_divs\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 596, i32 18 }
@___asan_gen_.330 = private unnamed_addr constant [10 x i8] c"bclk_divs\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 599, i32 18 }
@___asan_gen_.333 = private unnamed_addr constant [25 x i8] c"wm8960_set_pll.pll_div.0\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 1146, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 1160, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 1181, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 912, i32 6 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 232, i32 1 }
@___asan_gen_.361 = private unnamed_addr constant [10 x i8] c"inpga_tlv\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 221, i32 14 }
@___asan_gen_.364 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 234, i32 1 }
@___asan_gen_.368 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 236, i32 1 }
@___asan_gen_.372 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 239, i32 1 }
@___asan_gen_.376 = private unnamed_addr constant [16 x i8] c"lineinboost_tlv\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 225, i32 14 }
@___asan_gen_.379 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 241, i32 1 }
@___asan_gen_.383 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 243, i32 1 }
@___asan_gen_.387 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 245, i32 1 }
@___asan_gen_.391 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 247, i32 1 }
@___asan_gen_.395 = private unnamed_addr constant [13 x i8] c"micboost_tlv\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 226, i32 14 }
@___asan_gen_.398 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 249, i32 1 }
@___asan_gen_.402 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 252, i32 1 }
@___asan_gen_.406 = private unnamed_addr constant [8 x i8] c"dac_tlv\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 222, i32 14 }
@___asan_gen_.409 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 255, i32 1 }
@___asan_gen_.413 = private unnamed_addr constant [8 x i8] c"out_tlv\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 224, i32 14 }
@___asan_gen_.416 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 257, i32 1 }
@___asan_gen_.420 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 260, i32 1 }
@___asan_gen_.424 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 262, i32 1 }
@___asan_gen_.428 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 264, i32 1 }
@___asan_gen_.432 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 265, i32 1 }
@___asan_gen_.436 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 267, i32 1 }
@___asan_gen_.440 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 268, i32 1 }
@___asan_gen_.444 = private unnamed_addr constant [12 x i8] c"wm8960_enum\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 155, i32 30 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 269, i32 1 }
@___asan_gen_.450 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 271, i32 1 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 272, i32 1 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 275, i32 1 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 276, i32 1 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 277, i32 1 }
@___asan_gen_.466 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 278, i32 1 }
@___asan_gen_.470 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 280, i32 1 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 281, i32 1 }
@___asan_gen_.477 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 282, i32 1 }
@___asan_gen_.481 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 283, i32 1 }
@___asan_gen_.485 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 284, i32 1 }
@___asan_gen_.489 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 285, i32 1 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 286, i32 1 }
@___asan_gen_.496 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 287, i32 1 }
@___asan_gen_.500 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 289, i32 1 }
@___asan_gen_.504 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 290, i32 1 }
@___asan_gen_.508 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 292, i32 1 }
@___asan_gen_.512 = private unnamed_addr constant [8 x i8] c"adc_tlv\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 220, i32 14 }
@___asan_gen_.515 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 295, i32 1 }
@___asan_gen_.519 = private unnamed_addr constant [11 x i8] c"bypass_tlv\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 223, i32 14 }
@___asan_gen_.522 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 297, i32 1 }
@___asan_gen_.526 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 299, i32 1 }
@___asan_gen_.530 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 301, i32 1 }
@___asan_gen_.534 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 304, i32 1 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 305, i32 1 }
@___asan_gen_.541 = private unnamed_addr constant [16 x i8] c"wm8960_polarity\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 141, i32 20 }
@___asan_gen_.544 = private unnamed_addr constant [23 x i8] c"wm8960_3d_upper_cutoff\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 143, i32 20 }
@___asan_gen_.547 = private unnamed_addr constant [23 x i8] c"wm8960_3d_lower_cutoff\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 144, i32 20 }
@___asan_gen_.550 = private unnamed_addr constant [15 x i8] c"wm8960_alcfunc\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 145, i32 20 }
@___asan_gen_.553 = private unnamed_addr constant [15 x i8] c"wm8960_alcmode\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 146, i32 20 }
@___asan_gen_.556 = private unnamed_addr constant [27 x i8] c"wm8960_adc_data_output_sel\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 147, i32 20 }
@___asan_gen_.559 = private unnamed_addr constant [16 x i8] c"wm8960_dmonomix\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 153, i32 20 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 141, i32 41 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 141, i32 57 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 142, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 142, i32 20 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 143, i32 48 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 143, i32 56 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 145, i32 40 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 145, i32 47 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 145, i32 56 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 145, i32 64 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 146, i32 40 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 146, i32 47 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 148, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 149, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 150, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 151, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 153, i32 51 }
@___asan_gen_.613 = private unnamed_addr constant [16 x i8] c"deemph_settings\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 166, i32 18 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 189, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant [12 x i8] c"audio_paths\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 407, i32 40 }
@___asan_gen_.625 = private unnamed_addr constant [20 x i8] c"audio_paths_capless\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 462, i32 40 }
@___asan_gen_.628 = private unnamed_addr constant [17 x i8] c"audio_paths_out3\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 455, i32 40 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 507, i32 23 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 509, i32 23 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 511, i32 23 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 346, i32 1 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 347, i32 1 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 348, i32 1 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 349, i32 1 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 350, i32 1 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 351, i32 1 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 353, i32 1 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 355, i32 1 }
@___asan_gen_.664 = private unnamed_addr constant [17 x i8] c"wm8960_lin_boost\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 308, i32 38 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 357, i32 1 }
@___asan_gen_.670 = private unnamed_addr constant [17 x i8] c"wm8960_rin_boost\00", align 1
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 318, i32 38 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 360, i32 1 }
@___asan_gen_.676 = private unnamed_addr constant [11 x i8] c"wm8960_lin\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 314, i32 38 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 362, i32 1 }
@___asan_gen_.682 = private unnamed_addr constant [11 x i8] c"wm8960_rin\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 324, i32 38 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 365, i32 1 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 366, i32 1 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 368, i32 1 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 369, i32 1 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 371, i32 1 }
@___asan_gen_.706 = private unnamed_addr constant [21 x i8] c"wm8960_loutput_mixer\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 328, i32 38 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 374, i32 1 }
@___asan_gen_.712 = private unnamed_addr constant [21 x i8] c"wm8960_routput_mixer\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 334, i32 38 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 381, i32 1 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 382, i32 1 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 384, i32 1 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 385, i32 1 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 387, i32 1 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 388, i32 1 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 389, i32 1 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 390, i32 1 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 391, i32 1 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 392, i32 1 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 393, i32 1 }
@___asan_gen_.748 = private unnamed_addr constant [20 x i8] c"wm8960_dapm_widgets\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 345, i32 41 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 309, i32 1 }
@___asan_gen_.754 = private unnamed_addr constant [21 x i8] c".compoundliteral.166\00", align 1
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 310, i32 1 }
@___asan_gen_.758 = private unnamed_addr constant [21 x i8] c".compoundliteral.168\00", align 1
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 311, i32 1 }
@___asan_gen_.762 = private unnamed_addr constant [21 x i8] c".compoundliteral.170\00", align 1
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 319, i32 1 }
@___asan_gen_.766 = private unnamed_addr constant [21 x i8] c".compoundliteral.172\00", align 1
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 320, i32 1 }
@___asan_gen_.770 = private unnamed_addr constant [21 x i8] c".compoundliteral.174\00", align 1
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 321, i32 1 }
@___asan_gen_.774 = private unnamed_addr constant [21 x i8] c".compoundliteral.176\00", align 1
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 315, i32 1 }
@___asan_gen_.778 = private unnamed_addr constant [21 x i8] c".compoundliteral.178\00", align 1
@___asan_gen_.779 = private unnamed_addr constant [21 x i8] c".compoundliteral.179\00", align 1
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 329, i32 1 }
@___asan_gen_.783 = private unnamed_addr constant [21 x i8] c".compoundliteral.181\00", align 1
@___asan_gen_.784 = private unnamed_addr constant [21 x i8] c".compoundliteral.182\00", align 1
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 331, i32 1 }
@___asan_gen_.788 = private unnamed_addr constant [21 x i8] c".compoundliteral.184\00", align 1
@___asan_gen_.789 = private unnamed_addr constant [21 x i8] c".compoundliteral.185\00", align 1
@___asan_gen_.790 = private unnamed_addr constant [21 x i8] c".compoundliteral.186\00", align 1
@___asan_gen_.791 = private unnamed_addr constant [21 x i8] c".compoundliteral.187\00", align 1
@___asan_gen_.792 = private unnamed_addr constant [28 x i8] c"wm8960_dapm_widgets_capless\00", align 1
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 403, i32 41 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 397, i32 1 }
@___asan_gen_.798 = private unnamed_addr constant [16 x i8] c"wm8960_mono_out\00", align 1
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 340, i32 38 }
@___asan_gen_.801 = private unnamed_addr constant [25 x i8] c"wm8960_dapm_widgets_out3\00", align 1
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 396, i32 41 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 341, i32 1 }
@___asan_gen_.807 = private unnamed_addr constant [21 x i8] c".compoundliteral.192\00", align 1
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 342, i32 1 }
@___asan_gen_.811 = private unnamed_addr constant [21 x i8] c".compoundliteral.194\00", align 1
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 1330, i32 10 }
@___asan_gen_.815 = private unnamed_addr constant [15 x i8] c"wm8960_dai_ops\00", align 1
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 1318, i32 37 }
@___asan_gen_.818 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.824 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.825 = private constant [29 x i8] c"../sound/soc/codecs/wm8960.c\00", align 1
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.825, i32 844, i32 3 }
@___asan_gen_.827 = private unnamed_addr constant [35 x i8] c"switch.table.wm8960_set_dai_clkdiv\00", align 1
@___asan_gen_.828 = private unnamed_addr constant [39 x i8] c"switch.table.wm8960_set_dai_clkdiv.198\00", align 1
@llvm.compiler.used = appending global [260 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_wm8960_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_wm8960__297_1508_wm8960_i2c_driver_init6, ptr @pll_factors._entry, ptr @pll_factors._entry_ptr, ptr @wm8960_configure_clocking._entry, ptr @wm8960_configure_clocking._entry.20, ptr @wm8960_configure_clocking._entry.23, ptr @wm8960_configure_clocking._entry.26, ptr @wm8960_configure_clocking._entry.29, ptr @wm8960_configure_clocking._entry_ptr, ptr @wm8960_configure_clocking._entry_ptr.22, ptr @wm8960_configure_clocking._entry_ptr.25, ptr @wm8960_configure_clocking._entry_ptr.28, ptr @wm8960_configure_clocking._entry_ptr.31, ptr @wm8960_hw_params._entry, ptr @wm8960_hw_params._entry_ptr, ptr @wm8960_i2c_driver_exit, ptr @wm8960_i2c_probe._entry, ptr @wm8960_i2c_probe._entry.8, ptr @wm8960_i2c_probe._entry_ptr, ptr @wm8960_i2c_probe._entry_ptr.10, ptr @wm8960_set_bias_level_capless._entry, ptr @wm8960_set_bias_level_capless._entry_ptr, ptr @wm8960_set_bias_level_out3._entry, ptr @wm8960_set_bias_level_out3._entry_ptr, ptr @wm8960_i2c_driver, ptr @.str, ptr @wm8960_of_match, ptr @wm8960_i2c_id, ptr @.str.1, ptr @wm8960_i2c_probe._key, ptr @wm8960_regmap, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @soc_component_dev_wm8960, ptr @wm8960_dai, ptr @wm8960_reg_defaults, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @wm8960_snd_controls, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @sysclk_divs, ptr @dac_divs, ptr @bclk_divs, ptr @wm8960_set_pll.pll_div.0, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @inpga_tlv, ptr @.compoundliteral, ptr @.str.39, ptr @.compoundliteral.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @lineinboost_tlv, ptr @.compoundliteral.44, ptr @.str.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @micboost_tlv, ptr @.compoundliteral.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @dac_tlv, ptr @.compoundliteral.56, ptr @.str.57, ptr @out_tlv, ptr @.compoundliteral.58, ptr @.str.59, ptr @.compoundliteral.60, ptr @.str.61, ptr @.compoundliteral.62, ptr @.str.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @.compoundliteral.66, ptr @.str.67, ptr @.compoundliteral.68, ptr @.str.69, ptr @.compoundliteral.70, ptr @.str.71, ptr @wm8960_enum, ptr @.str.72, ptr @.compoundliteral.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.compoundliteral.79, ptr @.str.80, ptr @.compoundliteral.81, ptr @.str.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @.compoundliteral.86, ptr @.str.87, ptr @.compoundliteral.88, ptr @.str.89, ptr @.compoundliteral.90, ptr @.str.91, ptr @.str.92, ptr @.compoundliteral.93, ptr @.str.94, ptr @.compoundliteral.95, ptr @.str.96, ptr @.compoundliteral.97, ptr @.str.98, ptr @.compoundliteral.99, ptr @.str.100, ptr @adc_tlv, ptr @.compoundliteral.101, ptr @.str.102, ptr @bypass_tlv, ptr @.compoundliteral.103, ptr @.str.104, ptr @.compoundliteral.105, ptr @.str.106, ptr @.compoundliteral.107, ptr @.str.108, ptr @.compoundliteral.109, ptr @.str.110, ptr @.str.111, ptr @wm8960_polarity, ptr @wm8960_3d_upper_cutoff, ptr @wm8960_3d_lower_cutoff, ptr @wm8960_alcfunc, ptr @wm8960_alcmode, ptr @wm8960_adc_data_output_sel, ptr @wm8960_dmonomix, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @deemph_settings, ptr @.str.129, ptr @.str.130, ptr @audio_paths, ptr @audio_paths_capless, ptr @audio_paths_out3, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @wm8960_lin_boost, ptr @.str.142, ptr @wm8960_rin_boost, ptr @.str.143, ptr @wm8960_lin, ptr @.str.144, ptr @wm8960_rin, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @wm8960_loutput_mixer, ptr @.str.152, ptr @wm8960_routput_mixer, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @wm8960_dapm_widgets, ptr @.str.165, ptr @.compoundliteral.166, ptr @.str.167, ptr @.compoundliteral.168, ptr @.str.169, ptr @.compoundliteral.170, ptr @.str.171, ptr @.compoundliteral.172, ptr @.str.173, ptr @.compoundliteral.174, ptr @.str.175, ptr @.compoundliteral.176, ptr @.str.177, ptr @.compoundliteral.178, ptr @.compoundliteral.179, ptr @.str.180, ptr @.compoundliteral.181, ptr @.compoundliteral.182, ptr @.str.183, ptr @.compoundliteral.184, ptr @.compoundliteral.185, ptr @.compoundliteral.186, ptr @.compoundliteral.187, ptr @wm8960_dapm_widgets_capless, ptr @.str.189, ptr @wm8960_mono_out, ptr @wm8960_dapm_widgets_out3, ptr @.str.191, ptr @.compoundliteral.192, ptr @.str.193, ptr @.compoundliteral.194, ptr @.str.195, ptr @wm8960_dai_ops, ptr @.str.196, ptr @.str.197, ptr @switch.table.wm8960_set_dai_clkdiv, ptr @switch.table.wm8960_set_dai_clkdiv.198], section "llvm.metadata"
@0 = internal global [242 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_wm8960 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_reg_defaults to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_snd_controls to i32), i32 2016, i32 2496, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_set_bias_level_capless._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_configure_clocking._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_configure_clocking._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_configure_clocking._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_configure_clocking._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_configure_clocking._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysclk_divs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_divs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bclk_divs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_set_pll.pll_div.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_factors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_set_bias_level_out3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inpga_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lineinboost_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @micboost_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_enum to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bypass_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_polarity to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_3d_upper_cutoff to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_3d_lower_cutoff to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_alcfunc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_alcmode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_adc_data_output_sel to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_dmonomix to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deemph_settings to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_paths to i32), i32 1768, i32 2208, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_paths_capless to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_paths_out3 to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_lin_boost to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_rin_boost to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_lin to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_rin to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_loutput_mixer to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_routput_mixer to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_dapm_widgets to i32), i32 5400, i32 6752, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.166 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.168 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.170 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.172 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.174 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.176 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.178 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.179 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.181 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.182 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.184 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.185 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.186 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.187 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_dapm_widgets_capless to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_mono_out to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_dapm_widgets_out3 to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.192 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.194 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8960_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8960_set_dai_clkdiv to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8960_set_dai_clkdiv.198 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8960_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @wm8960_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm8960_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @wm8960_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8960_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 76, i32 noundef 3520) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %call.i, align 4
  %cmp10 = icmp eq ptr %call4, inttoptr (i32 -517 to ptr)
  br i1 %cmp10, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call14 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @wm8960_regmap, ptr noundef nonnull @wm8960_i2c_probe._key, ptr noundef nonnull @.str.2) #8
  %regmap = getelementptr inbounds %struct.wm8960_priv, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call14, ptr %regmap, align 4
  %cmp.i144 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %pdata22 = getelementptr inbounds %struct.wm8960_priv, ptr %call.i, i32 0, i32 13
  %5 = call ptr @memcpy(ptr %pdata22, ptr %1, i32 24)
  br label %if.end28

if.else:                                          ; preds = %if.end20
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %tobool24.not = icmp eq ptr %7, null
  br i1 %tobool24.not, label %if.else.if.end28_crit_edge, label %if.then25

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then25:                                        ; preds = %if.else
  %call.i.i = tail call ptr @of_find_property(ptr noundef nonnull %7, ptr noundef nonnull @.str.11, ptr noundef null) #8
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.then25.if.end.i_crit_edge, label %if.then.i

if.then25.if.end.i_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %pdata26 = getelementptr inbounds %struct.wm8960_priv, ptr %call.i, i32 0, i32 13
  %8 = ptrtoint ptr %pdata26 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %pdata26, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then25.if.end.i_crit_edge
  %call.i13.i = tail call ptr @of_find_property(ptr noundef nonnull %7, ptr noundef nonnull @.str.12, ptr noundef null) #8
  %tobool.i14.not.i = icmp eq ptr %call.i13.i, null
  br i1 %tobool.i14.not.i, label %if.end.i.wm8960_set_pdata_from_of.exit_crit_edge, label %if.then2.i

if.end.i.wm8960_set_pdata_from_of.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8960_set_pdata_from_of.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %shared_lrclk.i = getelementptr inbounds %struct.wm8960_priv, ptr %call.i, i32 0, i32 13, i32 1
  %9 = ptrtoint ptr %shared_lrclk.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %shared_lrclk.i, align 1
  br label %wm8960_set_pdata_from_of.exit

wm8960_set_pdata_from_of.exit:                    ; preds = %if.then2.i, %if.end.i.wm8960_set_pdata_from_of.exit_crit_edge
  %gpio_cfg.i = getelementptr inbounds %struct.wm8960_priv, ptr %call.i, i32 0, i32 13, i32 3
  %call.i15.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %7, ptr noundef nonnull @.str.13, ptr noundef %gpio_cfg.i, i32 noundef 2, i32 noundef 0) #8
  %hp_cfg.i = getelementptr inbounds %struct.wm8960_priv, ptr %call.i, i32 0, i32 13, i32 2
  %call.i16.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %7, ptr noundef nonnull @.str.14, ptr noundef %hp_cfg.i, i32 noundef 3, i32 noundef 0) #8
  br label %if.end28

if.end28:                                         ; preds = %wm8960_set_pdata_from_of.exit, %if.else.if.end28_crit_edge, %if.then21
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call30 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 15, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31.not = icmp eq i32 %call30, 0
  br i1 %cmp31.not, label %if.end34, label %do.end

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %shared_lrclk = getelementptr inbounds %struct.wm8960_priv, ptr %call.i, i32 0, i32 13, i32 1
  %12 = ptrtoint ptr %shared_lrclk to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %shared_lrclk, align 1, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool36.not = icmp eq i8 %13, 0
  br i1 %tobool36.not, label %if.end34.if.end47_crit_edge, label %if.then37

if.end34.if.end47_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then37:                                        ; preds = %if.end34
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i145 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 24, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %cmp40.not = icmp eq i32 %call.i145, 0
  br i1 %cmp40.not, label %if.then37.if.end47_crit_edge, label %do.end44

if.then37.if.end47_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

do.end44:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call.i145) #11
  br label %cleanup

if.end47:                                         ; preds = %if.then37.if.end47_crit_edge, %if.end34.if.end47_crit_edge
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i146 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 0, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i147 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 1, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call.i148 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 21, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call.i149 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 22, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call.i150 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 10, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call.i151 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 11, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call.i152 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 2, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call.i153 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 3, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call.i154 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 40, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call.i155 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 41, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %gpio_cfg = getelementptr inbounds %struct.wm8960_priv, ptr %call.i, i32 0, i32 13, i32 3
  %38 = ptrtoint ptr %gpio_cfg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %gpio_cfg, align 4
  %shl = shl i32 %39, 6
  %call.i156 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 9, i32 noundef 64, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %arrayidx74 = getelementptr %struct.wm8960_priv, ptr %call.i, i32 0, i32 13, i32 3, i32 1
  %42 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx74, align 4
  %shl75 = shl i32 %43, 4
  %call.i157 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 48, i32 noundef 240, i32 noundef %shl75, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %hp_cfg = getelementptr inbounds %struct.wm8960_priv, ptr %call.i, i32 0, i32 13, i32 2
  %46 = ptrtoint ptr %hp_cfg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hp_cfg, align 4
  %shl80 = shl i32 %47, 2
  %call.i158 = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 48, i32 noundef 12, i32 noundef %shl80, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %arrayidx85 = getelementptr %struct.wm8960_priv, ptr %call.i, i32 0, i32 13, i32 2, i32 1
  %50 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx85, align 4
  %shl86 = shl i32 %51, 5
  %call.i159 = tail call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 24, i32 noundef 96, i32 noundef %shl86, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 4
  %arrayidx91 = getelementptr %struct.wm8960_priv, ptr %call.i, i32 0, i32 13, i32 2, i32 2
  %54 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx91, align 4
  %call.i160 = tail call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 23, i32 noundef 3, i32 noundef %55, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %56 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call94 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_wm8960, ptr noundef nonnull @wm8960_dai, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %do.end44, %do.end, %if.then17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then17 ], [ %call30, %do.end ], [ %call.i145, %do.end44 ], [ %call94, %if.end47 ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8960_i2c_remove(ptr nocapture noundef readnone %client) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8960_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %reg)
  %cond = icmp eq i32 %reg, 15
  ret i1 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8960_probe(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pdata1 = getelementptr inbounds %struct.wm8960_priv, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pdata1, align 4, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %spec.select = select i1 %tobool.not, ptr @wm8960_set_bias_level_out3, ptr @wm8960_set_bias_level_capless
  %6 = getelementptr inbounds %struct.wm8960_priv, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.select, ptr %6, align 4
  %call3 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @wm8960_snd_controls, i32 noundef 42) #8
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %pdata1.i = getelementptr inbounds %struct.wm8960_priv, ptr %11, i32 0, i32 13
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call3.i = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i.i, ptr noundef nonnull @wm8960_dapm_widgets, i32 noundef 30) #8
  %call4.i = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i.i, ptr noundef nonnull @audio_paths, i32 noundef 34) #8
  %12 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pdata1.i, align 4, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not.i = icmp eq i8 %13, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i.i, ptr noundef nonnull @wm8960_dapm_widgets_capless, i32 noundef 1) #8
  %call7.i = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i.i, ptr noundef nonnull @audio_paths_capless, i32 noundef 4) #8
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i.i, ptr noundef nonnull @wm8960_dapm_widgets_out3, i32 noundef 1) #8
  %call9.i = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i.i, ptr noundef nonnull @audio_paths_out3, i32 noundef 3) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %card.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 4
  %14 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card.i, align 4
  %widgets.i = getelementptr inbounds %struct.snd_soc_card, ptr %15, i32 0, i32 45
  %16 = ptrtoint ptr %widgets.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn1.i = load ptr, ptr %widgets.i, align 4
  %cmp.not4.i = icmp eq ptr %.pn1.i, %widgets.i
  br i1 %cmp.not4.i, label %if.end.i.wm8960_add_widgets.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.wm8960_add_widgets.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8960_add_widgets.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %lout1.i = getelementptr inbounds %struct.wm8960_priv, ptr %11, i32 0, i32 3
  %rout1.i = getelementptr inbounds %struct.wm8960_priv, ptr %11, i32 0, i32 4
  %out3.i = getelementptr inbounds %struct.wm8960_priv, ptr %11, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn5.i = phi ptr [ %.pn1.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %w.06.i = getelementptr i8, ptr %.pn5.i, i32 -12
  %dapm12.i = getelementptr i8, ptr %.pn5.i, i32 8
  %17 = ptrtoint ptr %dapm12.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dapm12.i, align 4
  %cmp13.not.i = icmp eq ptr %18, %dapm.i.i
  br i1 %cmp13.not.i, label %if.end15.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end15.i:                                       ; preds = %for.body.i
  %name.i = getelementptr i8, ptr %.pn5.i, i32 -8
  %19 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name.i, align 4
  %call16.i = tail call i32 @strcmp(ptr noundef %20, ptr noundef nonnull dereferenceable(10) @.str.131) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp eq i32 %call16.i, 0
  br i1 %cmp17.i, label %if.then18.i, label %if.end15.i.if.end19.i_crit_edge

if.end15.i.if.end19.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %lout1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %w.06.i, ptr %lout1.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %if.end15.i.if.end19.i_crit_edge
  %22 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name.i, align 4
  %call21.i = tail call i32 @strcmp(ptr noundef %23, ptr noundef nonnull dereferenceable(10) @.str.132) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp eq i32 %call21.i, 0
  br i1 %cmp22.i, label %if.then23.i, label %if.end19.i.if.end24.i_crit_edge

if.end19.i.if.end24.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %rout1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %w.06.i, ptr %rout1.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then23.i, %if.end19.i.if.end24.i_crit_edge
  %25 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name.i, align 4
  %call26.i = tail call i32 @strcmp(ptr noundef %26, ptr noundef nonnull dereferenceable(10) @.str.133) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp eq i32 %call26.i, 0
  br i1 %cmp27.i, label %if.then28.i, label %if.end24.i.for.inc.i_crit_edge

if.end24.i.for.inc.i_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %out3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %w.06.i, ptr %out3.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then28.i, %if.end24.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %28 = ptrtoint ptr %.pn5.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i = load ptr, ptr %.pn5.i, align 4
  %29 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card.i, align 4
  %widgets11.i = getelementptr inbounds %struct.snd_soc_card, ptr %30, i32 0, i32 45
  %cmp.not.i = icmp eq ptr %.pn.i, %widgets11.i
  br i1 %cmp.not.i, label %for.inc.i.wm8960_add_widgets.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.wm8960_add_widgets.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8960_add_widgets.exit

wm8960_add_widgets.exit:                          ; preds = %for.inc.i.wm8960_add_widgets.exit_crit_edge, %if.end.i.wm8960_add_widgets.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8960_set_bias_level(ptr noundef %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %set_bias_level = getelementptr inbounds %struct.wm8960_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %set_bias_level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_bias_level, align 4
  %call1 = tail call i32 %5(ptr noundef %component, i32 noundef %level) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8960_set_bias_level_capless(ptr noundef %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 26) #8
  %4 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %level, label %entry.sw.epilog71_crit_edge [
    i32 1, label %sw.bb64
    i32 2, label %sw.bb
  ]

entry.sw.epilog71_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog71

sw.bb:                                            ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %5 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dapm.i.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %6, label %sw.bb.sw.epilog71_crit_edge [
    i32 1, label %sw.bb3
    i32 3, label %sw.bb47
    i32 0, label %sw.bb62
  ]

sw.bb.sw.epilog71_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog71

sw.bb3:                                           ; preds = %sw.bb
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 28, i32 noundef 148, i32 noundef 148) #8
  %lout1 = getelementptr inbounds %struct.wm8960_priv, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %lout1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lout1, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %sw.bb3.if.end_crit_edge, label %land.lhs.true

sw.bb3.if.end_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %power = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %power to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %power, align 4
  %11 = lshr i16 %bf.load, 9
  %12 = and i16 %11, 64
  %13 = zext i16 %12 to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %sw.bb3.if.end_crit_edge
  %reg.0 = phi i32 [ 0, %sw.bb3.if.end_crit_edge ], [ %13, %land.lhs.true ]
  %rout1 = getelementptr inbounds %struct.wm8960_priv, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %rout1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rout1, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %if.end.if.end19_crit_edge, label %land.lhs.true9

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

land.lhs.true9:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %power11 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %power11 to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load12 = load i16, ptr %power11, align 4
  %or18 = or i32 %reg.0, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load12)
  %tobool16.not117 = icmp slt i16 %bf.load12, 0
  %spec.select109 = select i1 %tobool16.not117, i32 %or18, i32 %reg.0
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true9, %if.end.if.end19_crit_edge
  %reg.1 = phi i32 [ %reg.0, %if.end.if.end19_crit_edge ], [ %spec.select109, %land.lhs.true9 ]
  %out3 = getelementptr inbounds %struct.wm8960_priv, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %out3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %out3, align 4
  %tobool20.not = icmp eq ptr %18, null
  br i1 %tobool20.not, label %if.end19.if.end31_crit_edge, label %land.lhs.true21

if.end19.if.end31_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true21:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %power23 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %power23 to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load24 = load i16, ptr %power23, align 4
  %or30 = or i32 %reg.1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load24)
  %tobool28.not118 = icmp slt i16 %bf.load24, 0
  %spec.select110 = select i1 %tobool28.not118, i32 %or30, i32 %reg.1
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true21, %if.end19.if.end31_crit_edge
  %reg.2 = phi i32 [ %reg.1, %if.end19.if.end31_crit_edge ], [ %spec.select110, %land.lhs.true21 ]
  %call32 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 26, i32 noundef 98, i32 noundef %reg.2) #8
  %call33 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 25, i32 noundef 384, i32 noundef 128) #8
  tail call void @msleep(i32 noundef 100) #8
  %call34 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 25, i32 noundef 64, i32 noundef 64) #8
  tail call void @msleep(i32 noundef 100) #8
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %cmp.i = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end31.if.end42_crit_edge, label %if.then36

if.end31.if.end42_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then36:                                        ; preds = %if.end31
  %call.i = tail call i32 @clk_prepare(ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then36.do.end_crit_edge

if.then36.do.end_crit_edge:                       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %if.then36
  %call1.i = tail call i32 @clk_enable(ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end42_crit_edge, label %if.then3.i

if.end.i.if.end42_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %21) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then36.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then36.do.end_crit_edge ]
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i.ph) #11
  br label %cleanup

if.end42:                                         ; preds = %if.end.i.if.end42_crit_edge, %if.end31.if.end42_crit_edge
  %call43 = tail call fastcc i32 @wm8960_configure_clocking(ptr noundef %component)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end42.sw.epilog71_crit_edge, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end42.sw.epilog71_crit_edge:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog71

sw.bb47:                                          ; preds = %sw.bb
  %clk_id = getelementptr inbounds %struct.wm8960_priv, ptr %3, i32 0, i32 10
  %24 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %clk_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp = icmp ne i32 %25, 2
  %and = and i32 %call1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool51.not
  br i1 %or.cond, label %sw.bb47.if.end54_crit_edge, label %if.then52

sw.bb47.if.end54_crit_edge:                       ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then52:                                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #10
  %call4.c65.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 1, i32 noundef 0) #8
  %call5.c66.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 26, i32 noundef 1, i32 noundef 0) #8
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %sw.bb47.if.end54_crit_edge
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %cmp.i112 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112, label %if.end54.if.end59_crit_edge, label %if.then57

if.end54.if.end59_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef %27) #8
  tail call void @clk_unprepare(ptr noundef %27) #8
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end54.if.end59_crit_edge
  %call60 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 28, i32 noundef 148, i32 noundef 148) #8
  %call61 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 25, i32 noundef 448, i32 noundef 0) #8
  br label %sw.epilog71

sw.bb62:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.wm8960_priv, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call63 = tail call i32 @regcache_sync(ptr noundef %29) #8
  br label %sw.epilog71

sw.bb64:                                          ; preds = %entry
  %dapm.i.i113 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %30 = ptrtoint ptr %dapm.i.i113 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dapm.i.i113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cond = icmp eq i32 %31, 2
  br i1 %cond, label %sw.bb66, label %sw.bb64.sw.epilog71_crit_edge

sw.bb64.sw.epilog71_crit_edge:                    ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog71

sw.bb66:                                          ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #10
  %call67 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 29, i32 noundef 112, i32 noundef 0) #8
  %call68 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 28, i32 noundef 148, i32 noundef 148) #8
  br label %sw.epilog71

sw.epilog71:                                      ; preds = %sw.bb66, %sw.bb64.sw.epilog71_crit_edge, %sw.bb62, %if.end59, %if.end42.sw.epilog71_crit_edge, %sw.bb.sw.epilog71_crit_edge, %entry.sw.epilog71_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog71, %if.end42.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %sw.epilog71 ], [ %retval.0.i.ph, %do.end ], [ %call43, %if.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8960_set_bias_level_out3(ptr noundef %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 26) #8
  %4 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb38
    i32 2, label %sw.bb
    i32 1, label %sw.bb26
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %5 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dapm.i.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %6, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb3
    i32 3, label %sw.bb14
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %cmp.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sw.bb3.if.end8_crit_edge, label %if.then

sw.bb3.if.end8_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %sw.bb3
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end8_crit_edge, label %if.then3.i

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then.do.end_crit_edge ]
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i.ph) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end.i.if.end8_crit_edge, %sw.bb3.if.end8_crit_edge
  %call9 = tail call fastcc i32 @wm8960_configure_clocking(ptr noundef %component)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 25, i32 noundef 384, i32 noundef 128) #8
  br label %cleanup

sw.bb14:                                          ; preds = %sw.bb
  %clk_id = getelementptr inbounds %struct.wm8960_priv, ptr %3, i32 0, i32 10
  %12 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clk_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp = icmp ne i32 %13, 2
  %and = and i32 %call1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool17.not
  br i1 %or.cond, label %sw.bb14.if.end20_crit_edge, label %if.then18

sw.bb14.if.end20_crit_edge:                       ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then18:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  %call4.c65.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 1, i32 noundef 0) #8
  %call5.c66.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 26, i32 noundef 1, i32 noundef 0) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %sw.bb14.if.end20_crit_edge
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %cmp.i68 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68, label %if.end20.cleanup_crit_edge, label %if.then23

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef %15) #8
  tail call void @clk_unprepare(ptr noundef %15) #8
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  %dapm.i.i69 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %16 = ptrtoint ptr %dapm.i.i69 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dapm.i.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp28 = icmp eq i32 %17, 0
  br i1 %cmp28, label %if.then30, label %sw.bb26.if.end36_crit_edge

sw.bb26.if.end36_crit_edge:                       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then30:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.wm8960_priv, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call31 = tail call i32 @regcache_sync(ptr noundef %19) #8
  %call32 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 28, i32 noundef 156) #8
  %call33 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 25, i32 noundef 128, i32 noundef 128) #8
  tail call void @msleep(i32 noundef 100) #8
  %call34 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 25, i32 noundef 64, i32 noundef 64) #8
  %call35 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 28, i32 noundef 8) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %sw.bb26.if.end36_crit_edge
  %call37 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 25, i32 noundef 384, i32 noundef 256) #8
  br label %cleanup

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call39 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 28, i32 noundef 156) #8
  %call40 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 25, i32 noundef 0) #8
  tail call void @msleep(i32 noundef 600) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb38, %if.end36, %if.then23, %if.end20.cleanup_crit_edge, %if.end12, %if.end8.cleanup_crit_edge, %do.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call9, %if.end8.cleanup_crit_edge ], [ 0, %if.end12 ], [ 0, %if.then23 ], [ 0, %if.end20.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb38 ], [ 0, %if.end36 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wm8960_configure_clocking(ptr noundef %component) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 7) #8
  %and = and i32 %call1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sysclk = getelementptr inbounds %struct.wm8960_priv, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.17) #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %clk_id = getelementptr inbounds %struct.wm8960_priv, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clk_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  %freq_in14112 = getelementptr inbounds %struct.wm8960_priv, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %freq_in14112 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %freq_in14112, align 4
  br i1 %cmp.not, label %if.end.if.else_crit_edge, label %land.lhs.true5

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true5:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %do.end11, label %if.end13

do.end11:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.21) #11
  br label %cleanup

if.end13:                                         ; preds = %land.lhs.true5
  %14 = ptrtoint ptr %freq_in14112 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %freq_in14112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp16 = icmp eq i32 %9, 2
  br i1 %cmp16, label %if.then18, label %if.end13.if.else_crit_edge

if.end13.if.else_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %call4.c65.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 1, i32 noundef 0) #8
  %call5.c66.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 26, i32 noundef 1, i32 noundef 0) #8
  br label %if.end30

if.else:                                          ; preds = %if.end13.if.else_crit_edge, %if.end.if.else_crit_edge
  %16 = phi i32 [ %15, %if.end13.if.else_crit_edge ], [ %11, %if.end.if.else_crit_edge ]
  %sysclk20 = getelementptr inbounds %struct.wm8960_priv, ptr %3, i32 0, i32 9
  %17 = ptrtoint ptr %sysclk20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sysclk20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool21.not = icmp eq i32 %18, 0
  br i1 %tobool21.not, label %do.end27, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

do.end27:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.24) #11
  br label %cleanup

if.end30:                                         ; preds = %if.else.if.end30_crit_edge, %if.then18
  %21 = phi i32 [ %15, %if.then18 ], [ %16, %if.else.if.end30_crit_edge ]
  %freq_out.0 = phi i32 [ %15, %if.then18 ], [ %18, %if.else.if.end30_crit_edge ]
  %22 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %clk_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp32.not = icmp eq i32 %23, 1
  br i1 %cmp32.not, label %if.end30.if.end50_crit_edge, label %for.body.i.outer

if.end30.if.end50_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

for.body.i.outer:                                 ; preds = %if.end30
  %bclk1.i = getelementptr inbounds %struct.wm8960_priv, ptr %3, i32 0, i32 8
  %24 = ptrtoint ptr %bclk1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bclk1.i, align 4
  %lrclk2.i = getelementptr inbounds %struct.wm8960_priv, ptr %3, i32 0, i32 7
  %26 = ptrtoint ptr %lrclk2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lrclk2.i, align 4
  %mul16.i = mul i32 %25, 10
  %div17.neg.i = sdiv i32 %mul16.i, -10
  %mul16.1.i = mul i32 %25, 15
  %div17.neg.1.i = sdiv i32 %mul16.1.i, -10
  %mul16.2.i = mul i32 %25, 20
  %div17.neg.2.i = sdiv i32 %mul16.2.i, -10
  %mul16.3.i = mul i32 %25, 30
  %div17.neg.3.i = sdiv i32 %mul16.3.i, -10
  %mul16.4.i = mul i32 %25, 40
  %div17.neg.4.i = sdiv i32 %mul16.4.i, -10
  %mul16.5.i = mul i32 %25, 55
  %div17.neg.5.i = sdiv i32 %mul16.5.i, -10
  %mul16.6.i = mul i32 %25, 60
  %div17.neg.6.i = sdiv i32 %mul16.6.i, -10
  %mul16.7.i = mul i32 %25, 80
  %div17.neg.7.i = sdiv i32 %mul16.7.i, -10
  %mul16.8.i = mul i32 %25, 110
  %div17.neg.8.i = sdiv i32 %mul16.8.i, -10
  %mul16.9.i = mul i32 %25, 120
  %div17.neg.9.i = sdiv i32 %mul16.9.i, -10
  %mul16.10.i = mul i32 %25, 160
  %div17.neg.10.i = sdiv i32 %mul16.10.i, -10
  %mul16.11.i = mul i32 %25, 220
  %div17.neg.11.i = sdiv i32 %mul16.11.i, -10
  %mul16.12.i = mul i32 %25, 240
  %div17.neg.12.i = sdiv i32 %mul16.12.i, -10
  %mul16.13.i = mul i32 %25, 320
  %div17.neg.13.i = sdiv i32 %mul16.13.i, -10
  %mul.i = shl i32 %27, 8
  %mul.i.1 = mul i32 %27, 384
  %mul.i.2 = shl i32 %27, 9
  %mul.i.3 = mul i32 %27, 768
  %mul.i.4 = shl i32 %27, 10
  %mul.i.5 = mul i32 %27, 1408
  %mul.i.6 = mul i32 %27, 1536
  %sub.i = sub i32 0, %freq_out.0
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.i, i32 %sub.i)
  %cmp18.i = icmp eq i32 %div17.neg.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.1.i, i32 %sub.i)
  %cmp18.1.i = icmp eq i32 %div17.neg.1.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.2.i, i32 %sub.i)
  %cmp18.2.i = icmp eq i32 %div17.neg.2.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.3.i, i32 %sub.i)
  %cmp18.3.i = icmp eq i32 %div17.neg.3.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.4.i, i32 %sub.i)
  %cmp18.4.i = icmp eq i32 %div17.neg.4.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.5.i, i32 %sub.i)
  %cmp18.5.i = icmp eq i32 %div17.neg.5.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.6.i, i32 %sub.i)
  %cmp18.6.i = icmp eq i32 %div17.neg.6.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.7.i, i32 %sub.i)
  %cmp18.7.i = icmp eq i32 %div17.neg.7.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.8.i, i32 %sub.i)
  %cmp18.8.i = icmp eq i32 %div17.neg.8.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.9.i, i32 %sub.i)
  %cmp18.9.i = icmp eq i32 %div17.neg.9.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.10.i, i32 %sub.i)
  %cmp18.10.i = icmp eq i32 %div17.neg.10.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.11.i, i32 %sub.i)
  %cmp18.11.i = icmp eq i32 %div17.neg.11.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.12.i, i32 %sub.i)
  %cmp18.12.i = icmp eq i32 %div17.neg.12.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.13.i, i32 %sub.i)
  %cmp18.13.i = icmp ne i32 %div17.neg.13.i, %sub.i
  %brmerge.i = select i1 %cmp18.i, i1 true, i1 %cmp18.1.i
  %brmerge64.i = select i1 %brmerge.i, i1 true, i1 %cmp18.2.i
  %brmerge65.i = select i1 %brmerge64.i, i1 true, i1 %cmp18.3.i
  %brmerge66.i = select i1 %brmerge65.i, i1 true, i1 %cmp18.4.i
  %brmerge67.i = select i1 %brmerge66.i, i1 true, i1 %cmp18.5.i
  %brmerge68.i = select i1 %brmerge67.i, i1 true, i1 %cmp18.6.i
  %brmerge69.i = select i1 %brmerge68.i, i1 true, i1 %cmp18.7.i
  %brmerge70.i = select i1 %brmerge69.i, i1 true, i1 %cmp18.8.i
  %brmerge71.i = select i1 %brmerge70.i, i1 true, i1 %cmp18.9.i
  %brmerge72.i = select i1 %brmerge71.i, i1 true, i1 %cmp18.10.i
  %brmerge73.i = select i1 %brmerge72.i, i1 true, i1 %cmp18.11.i
  %brmerge74.i = select i1 %brmerge73.i, i1 true, i1 %cmp18.12.i
  %not.brmerge74.i = xor i1 %brmerge74.i, true
  %brmerge75.i = select i1 %not.brmerge74.i, i1 %cmp18.13.i, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %freq_out.0, i32 %mul.i)
  %cmp9.not.i = icmp ne i32 %freq_out.0, %mul.i
  %brmerge = select i1 %cmp9.not.i, i1 true, i1 %brmerge75.i
  br i1 %brmerge, label %for.inc24.i, label %for.body.i.outer.configure_clock.loopexit_crit_edge

for.body.i.outer.configure_clock.loopexit_crit_edge: ; preds = %for.body.i.outer
  call void @__sanitizer_cov_trace_pc() #10
  br label %configure_clock.loopexit

for.inc24.i:                                      ; preds = %for.body.i.outer
  call void @__sanitizer_cov_trace_cmp4(i32 %freq_out.0, i32 %mul.i.1)
  %cmp9.not.i.1 = icmp ne i32 %freq_out.0, %mul.i.1
  %brmerge.1 = select i1 %cmp9.not.i.1, i1 true, i1 %brmerge75.i
  br i1 %brmerge.1, label %for.inc24.i.1, label %for.inc24.i.configure_clock.loopexit_crit_edge

for.inc24.i.configure_clock.loopexit_crit_edge:   ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %configure_clock.loopexit

for.inc24.i.1:                                    ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_cmp4(i32 %freq_out.0, i32 %mul.i.2)
  %cmp9.not.i.2 = icmp ne i32 %freq_out.0, %mul.i.2
  %brmerge.2 = select i1 %cmp9.not.i.2, i1 true, i1 %brmerge75.i
  br i1 %brmerge.2, label %for.inc24.i.2, label %for.inc24.i.1.configure_clock.loopexit_crit_edge

for.inc24.i.1.configure_clock.loopexit_crit_edge: ; preds = %for.inc24.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %configure_clock.loopexit

for.inc24.i.2:                                    ; preds = %for.inc24.i.1
  call void @__sanitizer_cov_trace_cmp4(i32 %freq_out.0, i32 %mul.i.3)
  %cmp9.not.i.3 = icmp ne i32 %freq_out.0, %mul.i.3
  %brmerge.3 = select i1 %cmp9.not.i.3, i1 true, i1 %brmerge75.i
  br i1 %brmerge.3, label %for.inc24.i.3, label %for.inc24.i.2.configure_clock.loopexit_crit_edge

for.inc24.i.2.configure_clock.loopexit_crit_edge: ; preds = %for.inc24.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %configure_clock.loopexit

for.inc24.i.3:                                    ; preds = %for.inc24.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %freq_out.0, i32 %mul.i.4)
  %cmp9.not.i.4 = icmp ne i32 %freq_out.0, %mul.i.4
  %brmerge.4 = select i1 %cmp9.not.i.4, i1 true, i1 %brmerge75.i
  br i1 %brmerge.4, label %for.inc24.i.4, label %for.inc24.i.3.configure_clock.loopexit_crit_edge

for.inc24.i.3.configure_clock.loopexit_crit_edge: ; preds = %for.inc24.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %configure_clock.loopexit

for.inc24.i.4:                                    ; preds = %for.inc24.i.3
  call void @__sanitizer_cov_trace_cmp4(i32 %freq_out.0, i32 %mul.i.5)
  %cmp9.not.i.5 = icmp ne i32 %freq_out.0, %mul.i.5
  %brmerge.5 = select i1 %cmp9.not.i.5, i1 true, i1 %brmerge75.i
  br i1 %brmerge.5, label %for.inc24.i.5, label %for.inc24.i.4.configure_clock.loopexit_crit_edge

for.inc24.i.4.configure_clock.loopexit_crit_edge: ; preds = %for.inc24.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %configure_clock.loopexit

for.inc24.i.5:                                    ; preds = %for.inc24.i.4
  call void @__sanitizer_cov_trace_cmp4(i32 %freq_out.0, i32 %mul.i.6)
  %cmp9.not.i.6 = icmp ne i32 %freq_out.0, %mul.i.6
  %brmerge.6 = select i1 %cmp9.not.i.6, i1 true, i1 %brmerge75.i
  br i1 %brmerge.6, label %if.end.i.2, label %for.inc24.i.5.configure_clock.loopexit_crit_edge

for.inc24.i.5.configure_clock.loopexit_crit_edge: ; preds = %for.inc24.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %configure_clock.loopexit

if.end.i.2:                                       ; preds = %for.inc24.i.5
  %div.i.2 = sdiv i32 %freq_out.0, 2
  %sub.i.2 = sub nsw i32 0, %div.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.i, i32 %sub.i.2)
  %cmp18.i.2 = icmp eq i32 %div17.neg.i, %sub.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.1.i, i32 %sub.i.2)
  %cmp18.1.i.2 = icmp eq i32 %div17.neg.1.i, %sub.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.2.i, i32 %sub.i.2)
  %cmp18.2.i.2 = icmp eq i32 %div17.neg.2.i, %sub.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.3.i, i32 %sub.i.2)
  %cmp18.3.i.2 = icmp eq i32 %div17.neg.3.i, %sub.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.4.i, i32 %sub.i.2)
  %cmp18.4.i.2 = icmp eq i32 %div17.neg.4.i, %sub.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.5.i, i32 %sub.i.2)
  %cmp18.5.i.2 = icmp eq i32 %div17.neg.5.i, %sub.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.6.i, i32 %sub.i.2)
  %cmp18.6.i.2 = icmp eq i32 %div17.neg.6.i, %sub.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.7.i, i32 %sub.i.2)
  %cmp18.7.i.2 = icmp eq i32 %div17.neg.7.i, %sub.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.8.i, i32 %sub.i.2)
  %cmp18.8.i.2 = icmp eq i32 %div17.neg.8.i, %sub.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.9.i, i32 %sub.i.2)
  %cmp18.9.i.2 = icmp eq i32 %div17.neg.9.i, %sub.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.10.i, i32 %sub.i.2)
  %cmp18.10.i.2 = icmp eq i32 %div17.neg.10.i, %sub.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.11.i, i32 %sub.i.2)
  %cmp18.11.i.2 = icmp eq i32 %div17.neg.11.i, %sub.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.12.i, i32 %sub.i.2)
  %cmp18.12.i.2 = icmp eq i32 %div17.neg.12.i, %sub.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div17.neg.13.i, i32 %sub.i.2)
  %cmp18.13.i.2 = icmp ne i32 %div17.neg.13.i, %sub.i.2
  %brmerge.i.2 = select i1 %cmp18.i.2, i1 true, i1 %cmp18.1.i.2
  %brmerge64.i.2 = select i1 %brmerge.i.2, i1 true, i1 %cmp18.2.i.2
  %brmerge65.i.2 = select i1 %brmerge64.i.2, i1 true, i1 %cmp18.3.i.2
  %brmerge66.i.2 = select i1 %brmerge65.i.2, i1 true, i1 %cmp18.4.i.2
  %brmerge67.i.2 = select i1 %brmerge66.i.2, i1 true, i1 %cmp18.5.i.2
  %brmerge68.i.2 = select i1 %brmerge67.i.2, i1 true, i1 %cmp18.6.i.2
  %brmerge69.i.2 = select i1 %brmerge68.i.2, i1 true, i1 %cmp18.7.i.2
  %brmerge70.i.2 = select i1 %brmerge69.i.2, i1 true, i1 %cmp18.8.i.2
  %brmerge71.i.2 = select i1 %brmerge70.i.2, i1 true, i1 %cmp18.9.i.2
  %brmerge72.i.2 = select i1 %brmerge71.i.2, i1 true, i1 %cmp18.10.i.2
  %brmerge73.i.2 = select i1 %brmerge72.i.2, i1 true, i1 %cmp18.11.i.2
  %brmerge74.i.2 = select i1 %brmerge73.i.2, i1 true, i1 %cmp18.12.i.2
  %not.brmerge74.i.2 = xor i1 %brmerge74.i.2, true
  %brmerge75.i.2 = select i1 %not.brmerge74.i.2, i1 %cmp18.13.i.2, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.2, i32 %mul.i)
  %cmp9.not.i.2159 = icmp ne i32 %div.i.2, %mul.i
  %brmerge.2160 = select i1 %cmp9.not.i.2159, i1 true, i1 %brmerge75.i.2
  br i1 %brmerge.2160, label %for.inc24.i.2161, label %if.end.i.2.configure_clock.loopexit_crit_edge

if.end.i.2.configure_clock.loopexit_crit_edge:    ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %configure_clock.loopexit

for.inc24.i.2161:                                 ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.2, i32 %mul.i.1)
  %cmp9.not.i.1.2 = icmp ne i32 %div.i.2, %mul.i.1
  %brmerge.1.2 = select i1 %cmp9.not.i.1.2, i1 true, i1 %brmerge75.i.2
  br i1 %brmerge.1.2, label %for.inc24.i.1.2, label %for.inc24.i.2161.configure_clock.loopexit_crit_edge

for.inc24.i.2161.configure_clock.loopexit_crit_edge: ; preds = %for.inc24.i.2161
  call void @__sanitizer_cov_trace_pc() #10
  br label %configure_clock.loopexit

for.inc24.i.1.2:                                  ; preds = %for.inc24.i.2161
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.2, i32 %mul.i.2)
  %cmp9.not.i.2.2 = icmp ne i32 %div.i.2, %mul.i.2
  %brmerge.2.2 = select i1 %cmp9.not.i.2.2, i1 true, i1 %brmerge75.i.2
  br i1 %brmerge.2.2, label %for.inc24.i.2.2, label %for.inc24.i.1.2.configure_clock.loopexit_crit_edge

for.inc24.i.1.2.configure_clock.loopexit_crit_edge: ; preds = %for.inc24.i.1.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %configure_clock.loopexit

for.inc24.i.2.2:                                  ; preds = %for.inc24.i.1.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.2, i32 %mul.i.3)
  %cmp9.not.i.3.2 = icmp ne i32 %div.i.2, %mul.i.3
  %brmerge.3.2 = select i1 %cmp9.not.i.3.2, i1 true, i1 %brmerge75.i.2
  br i1 %brmerge.3.2, label %for.inc24.i.3.2, label %for.inc24.i.2.2.configure_clock.loopexit_crit_edge

for.inc24.i.2.2.configure_clock.loopexit_crit_edge: ; preds = %for.inc24.i.2.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %configure_clock.loopexit

for.inc24.i.3.2:                                  ; preds = %for.inc24.i.2.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.2, i32 %mul.i.4)
  %cmp9.not.i.4.2 = icmp ne i32 %div.i.2, %mul.i.4
  %brmerge.4.2 = select i1 %cmp9.not.i.4.2, i1 true, i1 %brmerge75.i.2
  br i1 %brmerge.4.2, label %for.inc24.i.4.2, label %for.inc24.i.3.2.configure_clock.loopexit_crit_edge

for.inc24.i.3.2.configure_clock.loopexit_crit_edge: ; preds = %for.inc24.i.3.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %configure_clock.loopexit

for.inc24.i.4.2:                                  ; preds = %for.inc24.i.3.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.2, i32 %mul.i.5)
  %cmp9.not.i.5.2 = icmp ne i32 %div.i.2, %mul.i.5
  %brmerge.5.2 = select i1 %cmp9.not.i.5.2, i1 true, i1 %brmerge75.i.2
  br i1 %brmerge.5.2, label %for.inc24.i.5.2, label %for.inc24.i.4.2.configure_clock.loopexit_crit_edge

for.inc24.i.4.2.configure_clock.loopexit_crit_edge: ; preds = %for.inc24.i.4.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %configure_clock.loopexit

for.inc24.i.5.2:                                  ; preds = %for.inc24.i.4.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.2, i32 %mul.i.6)
  %cmp9.not.i.6.2 = icmp ne i32 %div.i.2, %mul.i.6
  %brmerge.6.2 = select i1 %cmp9.not.i.6.2, i1 true, i1 %brmerge75.i.2
  br i1 %brmerge.6.2, label %for.inc30.i.3, label %for.inc24.i.5.2.configure_clock.loopexit_crit_edge

for.inc24.i.5.2.configure_clock.loopexit_crit_edge: ; preds = %for.inc24.i.5.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %configure_clock.loopexit

for.inc30.i.3:                                    ; preds = %for.inc24.i.5.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp41.not = icmp eq i32 %23, 2
  br i1 %cmp41.not, label %for.inc30.i.3.if.end50_crit_edge, label %do.end46

for.inc30.i.3.if.end50_crit_edge:                 ; preds = %for.inc30.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end46:                                         ; preds = %for.inc30.i.3
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.27) #11
  br label %cleanup

if.end50:                                         ; preds = %for.inc30.i.3.if.end50_crit_edge, %if.end30.if.end50_crit_edge
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %driver_data.i.i.i, align 4
  %bclk1.i101 = getelementptr inbounds %struct.wm8960_priv, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %bclk1.i101 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bclk1.i101, align 4
  %lrclk2.i102 = getelementptr inbounds %struct.wm8960_priv, ptr %33, i32 0, i32 7
  %36 = ptrtoint ptr %lrclk2.i102 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lrclk2.i102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i = icmp eq i32 %21, 0
  %shr.i.i = lshr i32 %21, 1
  br label %for.body.i103

for.body.i103:                                    ; preds = %for.inc28.i.for.body.i103_crit_edge, %if.end50
  %i.2 = phi i32 [ -1, %if.end50 ], [ %i.6, %for.inc28.i.for.body.i103_crit_edge ]
  %j.2 = phi i32 [ -1, %if.end50 ], [ %j.6, %for.inc28.i.for.body.i103_crit_edge ]
  %k.2 = phi i32 [ -1, %if.end50 ], [ %k.6, %for.inc28.i.for.body.i103_crit_edge ]
  %i.085.i = phi i32 [ 3, %if.end50 ], [ %dec.i, %for.inc28.i.for.body.i103_crit_edge ]
  %best_freq_out.084.i = phi i32 [ -22, %if.end50 ], [ %best_freq_out.4.i, %for.inc28.i.for.body.i103_crit_edge ]
  %closest.083.i = phi i32 [ %21, %if.end50 ], [ %closest.4.i, %for.inc28.i.for.body.i103_crit_edge ]
  %38 = and i32 %i.085.i, 1073741821
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %for.body.i103.for.inc28.i_crit_edge, label %for.cond4.preheader.i

for.body.i103.for.inc28.i_crit_edge:              ; preds = %for.body.i103
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc28.i

for.cond4.preheader.i:                            ; preds = %for.body.i103
  %arrayidx.i104 = getelementptr [4 x i32], ptr @sysclk_divs, i32 0, i32 %i.085.i
  %40 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i104, align 4
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.inc25.i.for.body6.i_crit_edge, %for.cond4.preheader.i
  %i.3 = phi i32 [ %i.2, %for.cond4.preheader.i ], [ %i.5, %for.inc25.i.for.body6.i_crit_edge ]
  %j.3 = phi i32 [ %j.2, %for.cond4.preheader.i ], [ %j.5, %for.inc25.i.for.body6.i_crit_edge ]
  %k.3 = phi i32 [ %k.2, %for.cond4.preheader.i ], [ %k.5, %for.inc25.i.for.body6.i_crit_edge ]
  %j.082.i = phi i32 [ 0, %for.cond4.preheader.i ], [ %inc26.i, %for.inc25.i.for.body6.i_crit_edge ]
  %best_freq_out.181.i = phi i32 [ %best_freq_out.084.i, %for.cond4.preheader.i ], [ %best_freq_out.3.i, %for.inc25.i.for.body6.i_crit_edge ]
  %closest.180.i = phi i32 [ %closest.083.i, %for.cond4.preheader.i ], [ %closest.3.i, %for.inc25.i.for.body6.i_crit_edge ]
  %arrayidx7.i = getelementptr [7 x i32], ptr @dac_divs, i32 0, i32 %j.082.i
  %42 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx7.i, align 4
  %mul.i105 = mul i32 %43, %37
  %mul9.i = mul i32 %mul.i105, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul9.i)
  %cmp1.i.i = icmp eq i32 %mul9.i, 0
  %or.cond.i.i = or i1 %cmp.i.i, %cmp1.i.i
  %mul.i.i = shl i32 %mul9.i, 2
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.inc.i.for.body12.i_crit_edge, %for.body6.i
  %i.4 = phi i32 [ %i.3, %for.body6.i ], [ %i.5, %for.inc.i.for.body12.i_crit_edge ]
  %j.4 = phi i32 [ %j.3, %for.body6.i ], [ %j.5, %for.inc.i.for.body12.i_crit_edge ]
  %k.4 = phi i32 [ %k.3, %for.body6.i ], [ %k.5, %for.inc.i.for.body12.i_crit_edge ]
  %k.078.i = phi i32 [ 0, %for.body6.i ], [ %inc.i, %for.inc.i.for.body12.i_crit_edge ]
  %best_freq_out.277.i = phi i32 [ %best_freq_out.181.i, %for.body6.i ], [ %best_freq_out.3.i, %for.inc.i.for.body12.i_crit_edge ]
  %closest.276.i = phi i32 [ %closest.180.i, %for.body6.i ], [ %closest.3.i, %for.inc.i.for.body12.i_crit_edge ]
  br i1 %or.cond.i.i, label %for.body12.i.for.inc.i_crit_edge, label %if.end.i.i

for.body12.i.for.inc.i_crit_edge:                 ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i.i:                                       ; preds = %for.body12.i
  %div.i.i = udiv i32 %mul.i.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %div.i.i)
  %cmp2.i.i = icmp ult i32 %div.i.i, 6
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end.i.i.is_pll_freq_available.exit.i_crit_edge

if.end.i.i.is_pll_freq_available.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_pll_freq_available.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %div4.i.i = udiv i32 %mul.i.i, %shr.i.i
  br label %is_pll_freq_available.exit.i

is_pll_freq_available.exit.i:                     ; preds = %if.then3.i.i, %if.end.i.i.is_pll_freq_available.exit.i_crit_edge
  %Ndiv.0.i.i = phi i32 [ %div4.i.i, %if.then3.i.i ], [ %div.i.i, %if.end.i.i.is_pll_freq_available.exit.i_crit_edge ]
  %44 = add i32 %Ndiv.0.i.i, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %44)
  %45 = icmp ult i32 %44, 7
  br i1 %45, label %if.end15.i, label %is_pll_freq_available.exit.i.for.inc.i_crit_edge

is_pll_freq_available.exit.i.for.inc.i_crit_edge: ; preds = %is_pll_freq_available.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end15.i:                                       ; preds = %is_pll_freq_available.exit.i
  %arrayidx16.i = getelementptr [16 x i32], ptr @bclk_divs, i32 0, i32 %k.078.i
  %46 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx16.i, align 4
  %mul17.i = mul i32 %47, %35
  %div.neg.i = sdiv i32 %mul17.i, -10
  %sub.i106 = add i32 %div.neg.i, %mul.i105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i106)
  %cmp18.i107 = icmp eq i32 %sub.i106, 0
  br i1 %cmp18.i107, label %if.end15.i.wm8960_configure_pll.exit_crit_edge, label %if.end20.i

if.end15.i.wm8960_configure_pll.exit_crit_edge:   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8960_configure_pll.exit

if.end20.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i106)
  %cmp21.i = icmp sgt i32 %sub.i106, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %closest.276.i, i32 %sub.i106)
  %cmp22.i = icmp sgt i32 %closest.276.i, %sub.i106
  %or.cond.i108 = select i1 %cmp21.i, i1 %cmp22.i, i1 false
  br i1 %or.cond.i108, label %if.then23.i, label %if.end20.i.for.inc.i_crit_edge

if.end20.i.for.inc.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then23.i, %if.end20.i.for.inc.i_crit_edge, %is_pll_freq_available.exit.i.for.inc.i_crit_edge, %for.body12.i.for.inc.i_crit_edge
  %i.5 = phi i32 [ %i.4, %for.body12.i.for.inc.i_crit_edge ], [ %i.085.i, %if.then23.i ], [ %i.4, %if.end20.i.for.inc.i_crit_edge ], [ %i.4, %is_pll_freq_available.exit.i.for.inc.i_crit_edge ]
  %j.5 = phi i32 [ %j.4, %for.body12.i.for.inc.i_crit_edge ], [ %j.082.i, %if.then23.i ], [ %j.4, %if.end20.i.for.inc.i_crit_edge ], [ %j.4, %is_pll_freq_available.exit.i.for.inc.i_crit_edge ]
  %k.5 = phi i32 [ %k.4, %for.body12.i.for.inc.i_crit_edge ], [ %k.078.i, %if.then23.i ], [ %k.4, %if.end20.i.for.inc.i_crit_edge ], [ %k.4, %is_pll_freq_available.exit.i.for.inc.i_crit_edge ]
  %closest.3.i = phi i32 [ %closest.276.i, %for.body12.i.for.inc.i_crit_edge ], [ %sub.i106, %if.then23.i ], [ %closest.276.i, %if.end20.i.for.inc.i_crit_edge ], [ %closest.276.i, %is_pll_freq_available.exit.i.for.inc.i_crit_edge ]
  %best_freq_out.3.i = phi i32 [ %best_freq_out.277.i, %for.body12.i.for.inc.i_crit_edge ], [ %mul9.i, %if.then23.i ], [ %best_freq_out.277.i, %if.end20.i.for.inc.i_crit_edge ], [ %best_freq_out.277.i, %is_pll_freq_available.exit.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %k.078.i, 1
  %exitcond.not.i109 = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i109, label %for.inc25.i, label %for.inc.i.for.body12.i_crit_edge

for.inc.i.for.body12.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body12.i

for.inc25.i:                                      ; preds = %for.inc.i
  %inc26.i = add nuw nsw i32 %j.082.i, 1
  %exitcond91.not.i = icmp eq i32 %inc26.i, 7
  br i1 %exitcond91.not.i, label %for.inc25.i.for.inc28.i_crit_edge, label %for.inc25.i.for.body6.i_crit_edge

for.inc25.i.for.body6.i_crit_edge:                ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.i

for.inc25.i.for.inc28.i_crit_edge:                ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc28.i

for.inc28.i:                                      ; preds = %for.inc25.i.for.inc28.i_crit_edge, %for.body.i103.for.inc28.i_crit_edge
  %i.6 = phi i32 [ %i.2, %for.body.i103.for.inc28.i_crit_edge ], [ %i.5, %for.inc25.i.for.inc28.i_crit_edge ]
  %j.6 = phi i32 [ %j.2, %for.body.i103.for.inc28.i_crit_edge ], [ %j.5, %for.inc25.i.for.inc28.i_crit_edge ]
  %k.6 = phi i32 [ %k.2, %for.body.i103.for.inc28.i_crit_edge ], [ %k.5, %for.inc25.i.for.inc28.i_crit_edge ]
  %closest.4.i = phi i32 [ %closest.083.i, %for.body.i103.for.inc28.i_crit_edge ], [ %closest.3.i, %for.inc25.i.for.inc28.i_crit_edge ]
  %best_freq_out.4.i = phi i32 [ %best_freq_out.084.i, %for.body.i103.for.inc28.i_crit_edge ], [ %best_freq_out.3.i, %for.inc25.i.for.inc28.i_crit_edge ]
  %dec.i = add nsw i32 %i.085.i, -1
  %cmp.i.not = icmp eq i32 %i.085.i, 0
  br i1 %cmp.i.not, label %for.inc28.i.wm8960_configure_pll.exit_crit_edge, label %for.inc28.i.for.body.i103_crit_edge

for.inc28.i.for.body.i103_crit_edge:              ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i103

for.inc28.i.wm8960_configure_pll.exit_crit_edge:  ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wm8960_configure_pll.exit

wm8960_configure_pll.exit:                        ; preds = %for.inc28.i.wm8960_configure_pll.exit_crit_edge, %if.end15.i.wm8960_configure_pll.exit_crit_edge
  %i.7 = phi i32 [ %i.085.i, %if.end15.i.wm8960_configure_pll.exit_crit_edge ], [ %i.6, %for.inc28.i.wm8960_configure_pll.exit_crit_edge ]
  %j.7 = phi i32 [ %j.082.i, %if.end15.i.wm8960_configure_pll.exit_crit_edge ], [ %j.6, %for.inc28.i.wm8960_configure_pll.exit_crit_edge ]
  %k.7 = phi i32 [ %k.078.i, %if.end15.i.wm8960_configure_pll.exit_crit_edge ], [ %k.6, %for.inc28.i.wm8960_configure_pll.exit_crit_edge ]
  %retval.0.i = phi i32 [ %mul9.i, %if.end15.i.wm8960_configure_pll.exit_crit_edge ], [ %best_freq_out.4.i, %for.inc28.i.wm8960_configure_pll.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp52 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp52, label %do.end57, label %if.end59

do.end57:                                         ; preds = %wm8960_configure_pll.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.30) #11
  br label %cleanup

if.end59:                                         ; preds = %wm8960_configure_pll.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call60 = tail call fastcc i32 @wm8960_set_pll(ptr noundef %component, i32 noundef %21, i32 noundef %retval.0.i)
  br label %configure_clock

configure_clock.loopexit:                         ; preds = %for.inc24.i.5.2.configure_clock.loopexit_crit_edge, %for.inc24.i.4.2.configure_clock.loopexit_crit_edge, %for.inc24.i.3.2.configure_clock.loopexit_crit_edge, %for.inc24.i.2.2.configure_clock.loopexit_crit_edge, %for.inc24.i.1.2.configure_clock.loopexit_crit_edge, %for.inc24.i.2161.configure_clock.loopexit_crit_edge, %if.end.i.2.configure_clock.loopexit_crit_edge, %for.inc24.i.5.configure_clock.loopexit_crit_edge, %for.inc24.i.4.configure_clock.loopexit_crit_edge, %for.inc24.i.3.configure_clock.loopexit_crit_edge, %for.inc24.i.2.configure_clock.loopexit_crit_edge, %for.inc24.i.1.configure_clock.loopexit_crit_edge, %for.inc24.i.configure_clock.loopexit_crit_edge, %for.body.i.outer.configure_clock.loopexit_crit_edge
  %i.056.i.lcssa = phi i32 [ 0, %for.body.i.outer.configure_clock.loopexit_crit_edge ], [ 0, %for.inc24.i.configure_clock.loopexit_crit_edge ], [ 0, %for.inc24.i.1.configure_clock.loopexit_crit_edge ], [ 0, %for.inc24.i.2.configure_clock.loopexit_crit_edge ], [ 0, %for.inc24.i.3.configure_clock.loopexit_crit_edge ], [ 0, %for.inc24.i.4.configure_clock.loopexit_crit_edge ], [ 0, %for.inc24.i.5.configure_clock.loopexit_crit_edge ], [ 2, %if.end.i.2.configure_clock.loopexit_crit_edge ], [ 2, %for.inc24.i.2161.configure_clock.loopexit_crit_edge ], [ 2, %for.inc24.i.1.2.configure_clock.loopexit_crit_edge ], [ 2, %for.inc24.i.2.2.configure_clock.loopexit_crit_edge ], [ 2, %for.inc24.i.3.2.configure_clock.loopexit_crit_edge ], [ 2, %for.inc24.i.4.2.configure_clock.loopexit_crit_edge ], [ 2, %for.inc24.i.5.2.configure_clock.loopexit_crit_edge ]
  %cmp18.i.lcssa = phi i1 [ %cmp18.i, %for.body.i.outer.configure_clock.loopexit_crit_edge ], [ %cmp18.i, %for.inc24.i.configure_clock.loopexit_crit_edge ], [ %cmp18.i, %for.inc24.i.1.configure_clock.loopexit_crit_edge ], [ %cmp18.i, %for.inc24.i.2.configure_clock.loopexit_crit_edge ], [ %cmp18.i, %for.inc24.i.3.configure_clock.loopexit_crit_edge ], [ %cmp18.i, %for.inc24.i.4.configure_clock.loopexit_crit_edge ], [ %cmp18.i, %for.inc24.i.5.configure_clock.loopexit_crit_edge ], [ %cmp18.i.2, %if.end.i.2.configure_clock.loopexit_crit_edge ], [ %cmp18.i.2, %for.inc24.i.2161.configure_clock.loopexit_crit_edge ], [ %cmp18.i.2, %for.inc24.i.1.2.configure_clock.loopexit_crit_edge ], [ %cmp18.i.2, %for.inc24.i.2.2.configure_clock.loopexit_crit_edge ], [ %cmp18.i.2, %for.inc24.i.3.2.configure_clock.loopexit_crit_edge ], [ %cmp18.i.2, %for.inc24.i.4.2.configure_clock.loopexit_crit_edge ], [ %cmp18.i.2, %for.inc24.i.5.2.configure_clock.loopexit_crit_edge ]
  %brmerge.i.lcssa = phi i1 [ %brmerge.i, %for.body.i.outer.configure_clock.loopexit_crit_edge ], [ %brmerge.i, %for.inc24.i.configure_clock.loopexit_crit_edge ], [ %brmerge.i, %for.inc24.i.1.configure_clock.loopexit_crit_edge ], [ %brmerge.i, %for.inc24.i.2.configure_clock.loopexit_crit_edge ], [ %brmerge.i, %for.inc24.i.3.configure_clock.loopexit_crit_edge ], [ %brmerge.i, %for.inc24.i.4.configure_clock.loopexit_crit_edge ], [ %brmerge.i, %for.inc24.i.5.configure_clock.loopexit_crit_edge ], [ %brmerge.i.2, %if.end.i.2.configure_clock.loopexit_crit_edge ], [ %brmerge.i.2, %for.inc24.i.2161.configure_clock.loopexit_crit_edge ], [ %brmerge.i.2, %for.inc24.i.1.2.configure_clock.loopexit_crit_edge ], [ %brmerge.i.2, %for.inc24.i.2.2.configure_clock.loopexit_crit_edge ], [ %brmerge.i.2, %for.inc24.i.3.2.configure_clock.loopexit_crit_edge ], [ %brmerge.i.2, %for.inc24.i.4.2.configure_clock.loopexit_crit_edge ], [ %brmerge.i.2, %for.inc24.i.5.2.configure_clock.loopexit_crit_edge ]
  %brmerge64.i.lcssa = phi i1 [ %brmerge64.i, %for.body.i.outer.configure_clock.loopexit_crit_edge ], [ %brmerge64.i, %for.inc24.i.configure_clock.loopexit_crit_edge ], [ %brmerge64.i, %for.inc24.i.1.configure_clock.loopexit_crit_edge ], [ %brmerge64.i, %for.inc24.i.2.configure_clock.loopexit_crit_edge ], [ %brmerge64.i, %for.inc24.i.3.configure_clock.loopexit_crit_edge ], [ %brmerge64.i, %for.inc24.i.4.configure_clock.loopexit_crit_edge ], [ %brmerge64.i, %for.inc24.i.5.configure_clock.loopexit_crit_edge ], [ %brmerge64.i.2, %if.end.i.2.configure_clock.loopexit_crit_edge ], [ %brmerge64.i.2, %for.inc24.i.2161.configure_clock.loopexit_crit_edge ], [ %brmerge64.i.2, %for.inc24.i.1.2.configure_clock.loopexit_crit_edge ], [ %brmerge64.i.2, %for.inc24.i.2.2.configure_clock.loopexit_crit_edge ], [ %brmerge64.i.2, %for.inc24.i.3.2.configure_clock.loopexit_crit_edge ], [ %brmerge64.i.2, %for.inc24.i.4.2.configure_clock.loopexit_crit_edge ], [ %brmerge64.i.2, %for.inc24.i.5.2.configure_clock.loopexit_crit_edge ]
  %brmerge65.i.lcssa = phi i1 [ %brmerge65.i, %for.body.i.outer.configure_clock.loopexit_crit_edge ], [ %brmerge65.i, %for.inc24.i.configure_clock.loopexit_crit_edge ], [ %brmerge65.i, %for.inc24.i.1.configure_clock.loopexit_crit_edge ], [ %brmerge65.i, %for.inc24.i.2.configure_clock.loopexit_crit_edge ], [ %brmerge65.i, %for.inc24.i.3.configure_clock.loopexit_crit_edge ], [ %brmerge65.i, %for.inc24.i.4.configure_clock.loopexit_crit_edge ], [ %brmerge65.i, %for.inc24.i.5.configure_clock.loopexit_crit_edge ], [ %brmerge65.i.2, %if.end.i.2.configure_clock.loopexit_crit_edge ], [ %brmerge65.i.2, %for.inc24.i.2161.configure_clock.loopexit_crit_edge ], [ %brmerge65.i.2, %for.inc24.i.1.2.configure_clock.loopexit_crit_edge ], [ %brmerge65.i.2, %for.inc24.i.2.2.configure_clock.loopexit_crit_edge ], [ %brmerge65.i.2, %for.inc24.i.3.2.configure_clock.loopexit_crit_edge ], [ %brmerge65.i.2, %for.inc24.i.4.2.configure_clock.loopexit_crit_edge ], [ %brmerge65.i.2, %for.inc24.i.5.2.configure_clock.loopexit_crit_edge ]
  %brmerge66.i.lcssa = phi i1 [ %brmerge66.i, %for.body.i.outer.configure_clock.loopexit_crit_edge ], [ %brmerge66.i, %for.inc24.i.configure_clock.loopexit_crit_edge ], [ %brmerge66.i, %for.inc24.i.1.configure_clock.loopexit_crit_edge ], [ %brmerge66.i, %for.inc24.i.2.configure_clock.loopexit_crit_edge ], [ %brmerge66.i, %for.inc24.i.3.configure_clock.loopexit_crit_edge ], [ %brmerge66.i, %for.inc24.i.4.configure_clock.loopexit_crit_edge ], [ %brmerge66.i, %for.inc24.i.5.configure_clock.loopexit_crit_edge ], [ %brmerge66.i.2, %if.end.i.2.configure_clock.loopexit_crit_edge ], [ %brmerge66.i.2, %for.inc24.i.2161.configure_clock.loopexit_crit_edge ], [ %brmerge66.i.2, %for.inc24.i.1.2.configure_clock.loopexit_crit_edge ], [ %brmerge66.i.2, %for.inc24.i.2.2.configure_clock.loopexit_crit_edge ], [ %brmerge66.i.2, %for.inc24.i.3.2.configure_clock.loopexit_crit_edge ], [ %brmerge66.i.2, %for.inc24.i.4.2.configure_clock.loopexit_crit_edge ], [ %brmerge66.i.2, %for.inc24.i.5.2.configure_clock.loopexit_crit_edge ]
  %brmerge67.i.lcssa = phi i1 [ %brmerge67.i, %for.body.i.outer.configure_clock.loopexit_crit_edge ], [ %brmerge67.i, %for.inc24.i.configure_clock.loopexit_crit_edge ], [ %brmerge67.i, %for.inc24.i.1.configure_clock.loopexit_crit_edge ], [ %brmerge67.i, %for.inc24.i.2.configure_clock.loopexit_crit_edge ], [ %brmerge67.i, %for.inc24.i.3.configure_clock.loopexit_crit_edge ], [ %brmerge67.i, %for.inc24.i.4.configure_clock.loopexit_crit_edge ], [ %brmerge67.i, %for.inc24.i.5.configure_clock.loopexit_crit_edge ], [ %brmerge67.i.2, %if.end.i.2.configure_clock.loopexit_crit_edge ], [ %brmerge67.i.2, %for.inc24.i.2161.configure_clock.loopexit_crit_edge ], [ %brmerge67.i.2, %for.inc24.i.1.2.configure_clock.loopexit_crit_edge ], [ %brmerge67.i.2, %for.inc24.i.2.2.configure_clock.loopexit_crit_edge ], [ %brmerge67.i.2, %for.inc24.i.3.2.configure_clock.loopexit_crit_edge ], [ %brmerge67.i.2, %for.inc24.i.4.2.configure_clock.loopexit_crit_edge ], [ %brmerge67.i.2, %for.inc24.i.5.2.configure_clock.loopexit_crit_edge ]
  %brmerge68.i.lcssa = phi i1 [ %brmerge68.i, %for.body.i.outer.configure_clock.loopexit_crit_edge ], [ %brmerge68.i, %for.inc24.i.configure_clock.loopexit_crit_edge ], [ %brmerge68.i, %for.inc24.i.1.configure_clock.loopexit_crit_edge ], [ %brmerge68.i, %for.inc24.i.2.configure_clock.loopexit_crit_edge ], [ %brmerge68.i, %for.inc24.i.3.configure_clock.loopexit_crit_edge ], [ %brmerge68.i, %for.inc24.i.4.configure_clock.loopexit_crit_edge ], [ %brmerge68.i, %for.inc24.i.5.configure_clock.loopexit_crit_edge ], [ %brmerge68.i.2, %if.end.i.2.configure_clock.loopexit_crit_edge ], [ %brmerge68.i.2, %for.inc24.i.2161.configure_clock.loopexit_crit_edge ], [ %brmerge68.i.2, %for.inc24.i.1.2.configure_clock.loopexit_crit_edge ], [ %brmerge68.i.2, %for.inc24.i.2.2.configure_clock.loopexit_crit_edge ], [ %brmerge68.i.2, %for.inc24.i.3.2.configure_clock.loopexit_crit_edge ], [ %brmerge68.i.2, %for.inc24.i.4.2.configure_clock.loopexit_crit_edge ], [ %brmerge68.i.2, %for.inc24.i.5.2.configure_clock.loopexit_crit_edge ]
  %brmerge69.i.lcssa = phi i1 [ %brmerge69.i, %for.body.i.outer.configure_clock.loopexit_crit_edge ], [ %brmerge69.i, %for.inc24.i.configure_clock.loopexit_crit_edge ], [ %brmerge69.i, %for.inc24.i.1.configure_clock.loopexit_crit_edge ], [ %brmerge69.i, %for.inc24.i.2.configure_clock.loopexit_crit_edge ], [ %brmerge69.i, %for.inc24.i.3.configure_clock.loopexit_crit_edge ], [ %brmerge69.i, %for.inc24.i.4.configure_clock.loopexit_crit_edge ], [ %brmerge69.i, %for.inc24.i.5.configure_clock.loopexit_crit_edge ], [ %brmerge69.i.2, %if.end.i.2.configure_clock.loopexit_crit_edge ], [ %brmerge69.i.2, %for.inc24.i.2161.configure_clock.loopexit_crit_edge ], [ %brmerge69.i.2, %for.inc24.i.1.2.configure_clock.loopexit_crit_edge ], [ %brmerge69.i.2, %for.inc24.i.2.2.configure_clock.loopexit_crit_edge ], [ %brmerge69.i.2, %for.inc24.i.3.2.configure_clock.loopexit_crit_edge ], [ %brmerge69.i.2, %for.inc24.i.4.2.configure_clock.loopexit_crit_edge ], [ %brmerge69.i.2, %for.inc24.i.5.2.configure_clock.loopexit_crit_edge ]
  %brmerge70.i.lcssa = phi i1 [ %brmerge70.i, %for.body.i.outer.configure_clock.loopexit_crit_edge ], [ %brmerge70.i, %for.inc24.i.configure_clock.loopexit_crit_edge ], [ %brmerge70.i, %for.inc24.i.1.configure_clock.loopexit_crit_edge ], [ %brmerge70.i, %for.inc24.i.2.configure_clock.loopexit_crit_edge ], [ %brmerge70.i, %for.inc24.i.3.configure_clock.loopexit_crit_edge ], [ %brmerge70.i, %for.inc24.i.4.configure_clock.loopexit_crit_edge ], [ %brmerge70.i, %for.inc24.i.5.configure_clock.loopexit_crit_edge ], [ %brmerge70.i.2, %if.end.i.2.configure_clock.loopexit_crit_edge ], [ %brmerge70.i.2, %for.inc24.i.2161.configure_clock.loopexit_crit_edge ], [ %brmerge70.i.2, %for.inc24.i.1.2.configure_clock.loopexit_crit_edge ], [ %brmerge70.i.2, %for.inc24.i.2.2.configure_clock.loopexit_crit_edge ], [ %brmerge70.i.2, %for.inc24.i.3.2.configure_clock.loopexit_crit_edge ], [ %brmerge70.i.2, %for.inc24.i.4.2.configure_clock.loopexit_crit_edge ], [ %brmerge70.i.2, %for.inc24.i.5.2.configure_clock.loopexit_crit_edge ]
  %brmerge71.i.lcssa = phi i1 [ %brmerge71.i, %for.body.i.outer.configure_clock.loopexit_crit_edge ], [ %brmerge71.i, %for.inc24.i.configure_clock.loopexit_crit_edge ], [ %brmerge71.i, %for.inc24.i.1.configure_clock.loopexit_crit_edge ], [ %brmerge71.i, %for.inc24.i.2.configure_clock.loopexit_crit_edge ], [ %brmerge71.i, %for.inc24.i.3.configure_clock.loopexit_crit_edge ], [ %brmerge71.i, %for.inc24.i.4.configure_clock.loopexit_crit_edge ], [ %brmerge71.i, %for.inc24.i.5.configure_clock.loopexit_crit_edge ], [ %brmerge71.i.2, %if.end.i.2.configure_clock.loopexit_crit_edge ], [ %brmerge71.i.2, %for.inc24.i.2161.configure_clock.loopexit_crit_edge ], [ %brmerge71.i.2, %for.inc24.i.1.2.configure_clock.loopexit_crit_edge ], [ %brmerge71.i.2, %for.inc24.i.2.2.configure_clock.loopexit_crit_edge ], [ %brmerge71.i.2, %for.inc24.i.3.2.configure_clock.loopexit_crit_edge ], [ %brmerge71.i.2, %for.inc24.i.4.2.configure_clock.loopexit_crit_edge ], [ %brmerge71.i.2, %for.inc24.i.5.2.configure_clock.loopexit_crit_edge ]
  %brmerge72.i.lcssa = phi i1 [ %brmerge72.i, %for.body.i.outer.configure_clock.loopexit_crit_edge ], [ %brmerge72.i, %for.inc24.i.configure_clock.loopexit_crit_edge ], [ %brmerge72.i, %for.inc24.i.1.configure_clock.loopexit_crit_edge ], [ %brmerge72.i, %for.inc24.i.2.configure_clock.loopexit_crit_edge ], [ %brmerge72.i, %for.inc24.i.3.configure_clock.loopexit_crit_edge ], [ %brmerge72.i, %for.inc24.i.4.configure_clock.loopexit_crit_edge ], [ %brmerge72.i, %for.inc24.i.5.configure_clock.loopexit_crit_edge ], [ %brmerge72.i.2, %if.end.i.2.configure_clock.loopexit_crit_edge ], [ %brmerge72.i.2, %for.inc24.i.2161.configure_clock.loopexit_crit_edge ], [ %brmerge72.i.2, %for.inc24.i.1.2.configure_clock.loopexit_crit_edge ], [ %brmerge72.i.2, %for.inc24.i.2.2.configure_clock.loopexit_crit_edge ], [ %brmerge72.i.2, %for.inc24.i.3.2.configure_clock.loopexit_crit_edge ], [ %brmerge72.i.2, %for.inc24.i.4.2.configure_clock.loopexit_crit_edge ], [ %brmerge72.i.2, %for.inc24.i.5.2.configure_clock.loopexit_crit_edge ]
  %brmerge73.i.lcssa = phi i1 [ %brmerge73.i, %for.body.i.outer.configure_clock.loopexit_crit_edge ], [ %brmerge73.i, %for.inc24.i.configure_clock.loopexit_crit_edge ], [ %brmerge73.i, %for.inc24.i.1.configure_clock.loopexit_crit_edge ], [ %brmerge73.i, %for.inc24.i.2.configure_clock.loopexit_crit_edge ], [ %brmerge73.i, %for.inc24.i.3.configure_clock.loopexit_crit_edge ], [ %brmerge73.i, %for.inc24.i.4.configure_clock.loopexit_crit_edge ], [ %brmerge73.i, %for.inc24.i.5.configure_clock.loopexit_crit_edge ], [ %brmerge73.i.2, %if.end.i.2.configure_clock.loopexit_crit_edge ], [ %brmerge73.i.2, %for.inc24.i.2161.configure_clock.loopexit_crit_edge ], [ %brmerge73.i.2, %for.inc24.i.1.2.configure_clock.loopexit_crit_edge ], [ %brmerge73.i.2, %for.inc24.i.2.2.configure_clock.loopexit_crit_edge ], [ %brmerge73.i.2, %for.inc24.i.3.2.configure_clock.loopexit_crit_edge ], [ %brmerge73.i.2, %for.inc24.i.4.2.configure_clock.loopexit_crit_edge ], [ %brmerge73.i.2, %for.inc24.i.5.2.configure_clock.loopexit_crit_edge ]
  %brmerge74.i.lcssa = phi i1 [ %brmerge74.i, %for.body.i.outer.configure_clock.loopexit_crit_edge ], [ %brmerge74.i, %for.inc24.i.configure_clock.loopexit_crit_edge ], [ %brmerge74.i, %for.inc24.i.1.configure_clock.loopexit_crit_edge ], [ %brmerge74.i, %for.inc24.i.2.configure_clock.loopexit_crit_edge ], [ %brmerge74.i, %for.inc24.i.3.configure_clock.loopexit_crit_edge ], [ %brmerge74.i, %for.inc24.i.4.configure_clock.loopexit_crit_edge ], [ %brmerge74.i, %for.inc24.i.5.configure_clock.loopexit_crit_edge ], [ %brmerge74.i.2, %if.end.i.2.configure_clock.loopexit_crit_edge ], [ %brmerge74.i.2, %for.inc24.i.2161.configure_clock.loopexit_crit_edge ], [ %brmerge74.i.2, %for.inc24.i.1.2.configure_clock.loopexit_crit_edge ], [ %brmerge74.i.2, %for.inc24.i.2.2.configure_clock.loopexit_crit_edge ], [ %brmerge74.i.2, %for.inc24.i.3.2.configure_clock.loopexit_crit_edge ], [ %brmerge74.i.2, %for.inc24.i.4.2.configure_clock.loopexit_crit_edge ], [ %brmerge74.i.2, %for.inc24.i.5.2.configure_clock.loopexit_crit_edge ]
  %j.054.i.lcssa = phi i32 [ 0, %for.body.i.outer.configure_clock.loopexit_crit_edge ], [ 1, %for.inc24.i.configure_clock.loopexit_crit_edge ], [ 2, %for.inc24.i.1.configure_clock.loopexit_crit_edge ], [ 3, %for.inc24.i.2.configure_clock.loopexit_crit_edge ], [ 4, %for.inc24.i.3.configure_clock.loopexit_crit_edge ], [ 5, %for.inc24.i.4.configure_clock.loopexit_crit_edge ], [ 6, %for.inc24.i.5.configure_clock.loopexit_crit_edge ], [ 0, %if.end.i.2.configure_clock.loopexit_crit_edge ], [ 1, %for.inc24.i.2161.configure_clock.loopexit_crit_edge ], [ 2, %for.inc24.i.1.2.configure_clock.loopexit_crit_edge ], [ 3, %for.inc24.i.2.2.configure_clock.loopexit_crit_edge ], [ 4, %for.inc24.i.3.2.configure_clock.loopexit_crit_edge ], [ 5, %for.inc24.i.4.2.configure_clock.loopexit_crit_edge ], [ 6, %for.inc24.i.5.2.configure_clock.loopexit_crit_edge ]
  %not.cmp18.i = xor i1 %cmp18.i.lcssa, true
  %.mux.i = zext i1 %not.cmp18.i to i32
  %.mux.mux.i = select i1 %brmerge.i.lcssa, i32 %.mux.i, i32 2
  %.mux.mux.mux.i = select i1 %brmerge64.i.lcssa, i32 %.mux.mux.i, i32 3
  %.mux.mux.mux.mux.i = select i1 %brmerge65.i.lcssa, i32 %.mux.mux.mux.i, i32 4
  %.mux.mux.mux.mux.mux.i = select i1 %brmerge66.i.lcssa, i32 %.mux.mux.mux.mux.i, i32 5
  %.mux.mux.mux.mux.mux.mux.i = select i1 %brmerge67.i.lcssa, i32 %.mux.mux.mux.mux.mux.i, i32 6
  %.mux.mux.mux.mux.mux.mux.mux.i = select i1 %brmerge68.i.lcssa, i32 %.mux.mux.mux.mux.mux.mux.i, i32 7
  %.mux.mux.mux.mux.mux.mux.mux.mux.i = select i1 %brmerge69.i.lcssa, i32 %.mux.mux.mux.mux.mux.mux.mux.i, i32 8
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.i = select i1 %brmerge70.i.lcssa, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.i, i32 9
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.i = select i1 %brmerge71.i.lcssa, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.i, i32 10
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.i = select i1 %brmerge72.i.lcssa, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.i, i32 11
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.i = select i1 %brmerge73.i.lcssa, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.i, i32 12
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.i = select i1 %brmerge74.i.lcssa, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.i, i32 13
  br label %configure_clock

configure_clock:                                  ; preds = %configure_clock.loopexit, %if.end59
  %i.8 = phi i32 [ %i.7, %if.end59 ], [ %i.056.i.lcssa, %configure_clock.loopexit ]
  %j.8 = phi i32 [ %j.7, %if.end59 ], [ %j.054.i.lcssa, %configure_clock.loopexit ]
  %k.8 = phi i32 [ %k.7, %if.end59 ], [ %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.i, %configure_clock.loopexit ]
  %shl = shl i32 %i.8, 1
  %call61 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 6, i32 noundef %shl) #8
  %shl62 = shl i32 %j.8, 3
  %call63 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 56, i32 noundef %shl62) #8
  %shl64 = shl i32 %j.8, 6
  %call65 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 448, i32 noundef %shl64) #8
  %call66 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 8, i32 noundef 15, i32 noundef %k.8) #8
  br label %cleanup

cleanup:                                          ; preds = %configure_clock, %do.end57, %do.end46, %do.end27, %do.end11, %do.end
  %retval.0 = phi i32 [ 0, %configure_clock ], [ -22, %do.end46 ], [ %retval.0.i, %do.end57 ], [ -22, %do.end27 ], [ -22, %do.end11 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wm8960_set_pll(ptr noundef %component, i32 noundef %freq_in, i32 noundef %freq_out) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_in)
  %tobool.not = icmp eq i32 %freq_in, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_out)
  %tobool1.not = icmp eq i32 %freq_out, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %cleanup.critedge, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @pll_factors(i32 noundef %freq_in, i32 noundef %freq_out)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end9.critedge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9.critedge:                                 ; preds = %if.then
  %call4.c = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 1, i32 noundef 0) #8
  %call5.c = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 26, i32 noundef 1, i32 noundef 0) #8
  %call10 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 52) #8
  %conv = and i32 %call10, 65472
  %bf.load = load i32, ptr @wm8960_set_pll.pll_div.0, align 4
  %0 = lshr i32 %bf.load, 27
  %shl = and i32 %0, 16
  %or = or i32 %shl, %conv
  %bf.clear = and i32 %0, 15
  %or16 = or i32 %or, %bf.clear
  %1 = and i32 %bf.load, 134217720
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool21.not = icmp eq i32 %1, 0
  br i1 %tobool21.not, label %if.end9.critedge.if.end42_crit_edge, label %if.then22

if.end9.critedge.if.end42_crit_edge:              ; preds = %if.end9.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then22:                                        ; preds = %if.end9.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %or24 = or i32 %or16, 32
  %2 = lshr i32 %bf.load, 19
  %and29 = and i32 %2, 255
  %call30 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 53, i32 noundef %and29) #8
  %bf.load31 = load i32, ptr @wm8960_set_pll.pll_div.0, align 4
  %bf.lshr32 = lshr i32 %bf.load31, 11
  %and35 = and i32 %bf.lshr32, 255
  %call36 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 54, i32 noundef %and35) #8
  %bf.load37 = load i32, ptr @wm8960_set_pll.pll_div.0, align 4
  %bf.lshr38 = lshr i32 %bf.load37, 3
  %and40 = and i32 %bf.lshr38, 255
  %call41 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 55, i32 noundef %and40) #8
  br label %if.end42

if.end42:                                         ; preds = %if.then22, %if.end9.critedge.if.end42_crit_edge
  %reg.0 = phi i32 [ %or24, %if.then22 ], [ %or16, %if.end9.critedge.if.end42_crit_edge ]
  %conv43 = and i32 %reg.0, 65535
  %call44 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 52, i32 noundef %conv43) #8
  %call45 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 26, i32 noundef 1, i32 noundef 1) #8
  tail call void @msleep(i32 noundef 250) #8
  %call46 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 1, i32 noundef 1) #8
  br label %cleanup

cleanup.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4.c65 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 1, i32 noundef 0) #8
  %call5.c66 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 26, i32 noundef 1, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %if.end42, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end42 ], [ %call, %if.then.cleanup_crit_edge ], [ 0, %cleanup.critedge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pll_factors(i32 noundef %source, i32 noundef %target) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pll_factors.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pll_factors, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !393

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pll_factors.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.34, i32 noundef %source, i32 noundef %target) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mul = shl i32 %target, 2
  %div = udiv i32 %mul, %source
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %div)
  %cmp = icmp ult i32 %div, 6
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i32 %source, 1
  %bf.load = load i32, ptr @wm8960_set_pll.pll_div.0, align 4
  %bf.set = or i32 %bf.load, -2147483648
  store i32 %bf.set, ptr @wm8960_set_pll.pll_div.0, align 4
  %div4 = udiv i32 %mul, %shr
  br label %if.end8

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %bf.load5 = load i32, ptr @wm8960_set_pll.pll_div.0, align 4
  %bf.clear6 = and i32 %bf.load5, 2147483647
  store i32 %bf.clear6, ptr @wm8960_set_pll.pll_div.0, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then3
  %Ndiv.0 = phi i32 [ %div4, %if.then3 ], [ %div, %if.else ]
  %source.addr.0 = phi i32 [ %shr, %if.then3 ], [ %source, %if.else ]
  %0 = add i32 %Ndiv.0, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %0)
  %1 = icmp ult i32 %0, -7
  br i1 %1, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %Ndiv.0) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %bf.load18 = load i32, ptr @wm8960_set_pll.pll_div.0, align 4
  %bf.value = shl nuw nsw i32 %Ndiv.0, 27
  %bf.shl = and i32 %bf.value, 2013265920
  %bf.clear19 = and i32 %bf.load18, -2147483641
  %bf.set20 = or i32 %bf.clear19, %bf.shl
  %rem = urem i32 %mul, %source.addr.0
  %conv = zext i32 %rem to i64
  %mul21 = mul nuw nsw i64 %conv, 167772160
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul21)
  %cmp198 = icmp ult i64 %mul21, 4294967296
  br i1 %cmp198, label %if.then206, label %if.else212, !prof !394

if.then206:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %conv207 = trunc i64 %mul21 to i32
  %div210 = udiv i32 %conv207, %source.addr.0
  br label %if.end216

if.else212:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %source.addr.0, i64 %mul21) #13, !srcloc !395
  %asmresult1.i = extractvalue { i64, i64 } %2, 1
  %extract.t32 = trunc i64 %asmresult1.i to i32
  br label %if.end216

if.end216:                                        ; preds = %if.else212, %if.then206
  %Kpart.0.off0 = phi i32 [ %div210, %if.then206 ], [ %extract.t32, %if.else212 ]
  %rem220 = urem i32 %Kpart.0.off0, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rem220)
  %cmp221 = icmp ugt i32 %rem220, 4
  %add224 = add i32 %Kpart.0.off0, 5
  %spec.select = select i1 %cmp221, i32 %add224, i32 %Kpart.0.off0
  %div226 = udiv i32 %spec.select, 10
  %bf.value228 = shl nuw i32 %div226, 3
  %bf.shl229 = and i32 %bf.value228, 134217720
  %bf.set231 = or i32 %bf.shl229, %bf.set20
  store i32 %bf.set231, ptr @wm8960_set_pll.pll_div.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pll_factors.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pll_factors, %if.then244)) #8
          to label %cleanup [label %if.then244], !srcloc !393

if.then244:                                       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #10
  %bf.load245 = load i32, ptr @wm8960_set_pll.pll_div.0, align 4
  %bf.lshr = lshr i32 %bf.load245, 27
  %bf.clear246 = and i32 %bf.lshr, 15
  %bf.lshr248 = lshr i32 %bf.load245, 3
  %bf.clear249 = and i32 %bf.lshr248, 16777215
  %bf.lshr251 = lshr i32 %bf.load245, 31
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pll_factors.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.36, i32 noundef %bf.clear246, i32 noundef %bf.clear249, i32 noundef %bf.lshr251) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then244, %if.end216, %do.end14
  %retval.0 = phi i32 [ -22, %do.end14 ], [ 0, %if.then244 ], [ 0, %if.end216 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8960_get_deemph(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
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
  %deemph = getelementptr inbounds %struct.wm8960_priv, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %deemph to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %deemph, align 4, !range !392
  %8 = zext i8 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8960_put_deemph(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  %deemph2 = getelementptr inbounds %struct.wm8960_priv, ptr %7, i32 0, i32 6
  %frombool = zext i1 %tobool to i8
  %8 = ptrtoint ptr %deemph2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %deemph2, align 4
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i, align 4
  %deemph.i = getelementptr inbounds %struct.wm8960_priv, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %deemph.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %deemph.i, align 4, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.end.do.body.i_crit_edge, label %for.cond.preheader.i

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

for.cond.preheader.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %lrclk.i = getelementptr inbounds %struct.wm8960_priv, ptr %12, i32 0, i32 7
  %15 = ptrtoint ptr %lrclk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lrclk.i, align 4
  %sub.i = sub i32 44100, %16
  %17 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #8
  %sub6.i = sub i32 32000, %16
  %18 = tail call i32 @llvm.abs.i32(i32 %sub6.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %18)
  %cmp14.i = icmp slt i32 %17, %18
  %best.1.i = select i1 %cmp14.i, i32 2, i32 1
  %sub.1.i = sub i32 48000, %16
  %19 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 false) #8
  %arrayidx4.1.i = getelementptr [4 x i32], ptr @deemph_settings, i32 0, i32 %best.1.i
  %20 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx4.1.i, align 4
  %sub6.1.i = sub i32 %21, %16
  %22 = tail call i32 @llvm.abs.i32(i32 %sub6.1.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %22)
  %cmp14.1.i = icmp slt i32 %19, %22
  %best.1.op.i = shl nuw nsw i32 %best.1.i, 1
  %shl.i = select i1 %cmp14.1.i, i32 6, i32 %best.1.op.i
  br label %do.body.i

do.body.i:                                        ; preds = %for.cond.preheader.i, %if.end.do.body.i_crit_edge
  %val.0.i = phi i32 [ %shl.i, %for.cond.preheader.i ], [ 0, %if.end.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8960_set_deemph.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8960_put_deemph, %if.then22.i)) #8
          to label %wm8960_set_deemph.exit [label %if.then22.i], !srcloc !393

if.then22.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8960_set_deemph.__UNIQUE_ID_ddebug294, ptr noundef %24, ptr noundef nonnull @.str.130, i32 noundef %val.0.i) #8
  br label %wm8960_set_deemph.exit

wm8960_set_deemph.exit:                           ; preds = %if.then22.i, %do.body.i
  %call24.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 5, i32 noundef 6, i32 noundef %val.0.i) #8
  br label %cleanup

cleanup:                                          ; preds = %wm8960_set_deemph.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24.i, %wm8960_set_deemph.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8960_set_dai_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %clk_id, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog.sink.split_crit_edge
    i32 1, label %entry.sw.epilog.sink.split_crit_edge11
    i32 2, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog.sink.split_crit_edge11:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %entry.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge11
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4, i32 noundef 1, i32 noundef %clk_id) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %sysclk = getelementptr inbounds %struct.wm8960_priv, ptr %5, i32 0, i32 9
  %7 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %freq, ptr %sysclk, align 4
  %clk_id5 = getelementptr inbounds %struct.wm8960_priv, ptr %5, i32 0, i32 10
  %8 = ptrtoint ptr %clk_id5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %clk_id, ptr %clk_id5, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8960_set_dai_pll(ptr nocapture noundef readonly %codec_dai, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %freq_in2 = getelementptr inbounds %struct.wm8960_priv, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %freq_in2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %freq_in, ptr %freq_in2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pll_id)
  %cmp = icmp eq i32 %pll_id, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call fastcc i32 @wm8960_set_pll(ptr noundef %1, i32 noundef %freq_in, i32 noundef %freq_out)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8960_set_dai_clkdiv(ptr nocapture noundef readonly %codec_dai, i32 noundef %div_id, i32 noundef %div) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %div_id)
  %0 = icmp ult i32 %div_id, 5
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %1 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %component1, align 4
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.wm8960_set_dai_clkdiv, i32 0, i32 %div_id
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep52 = getelementptr inbounds [5 x i32], ptr @switch.table.wm8960_set_dai_clkdiv.198, i32 0, i32 %div_id
  %4 = ptrtoint ptr %switch.gep52 to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load53 = load i32, ptr %switch.gep52, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %2, i32 noundef %switch.load) #8
  %conv = and i32 %call, %switch.load53
  %or = or i32 %conv, %div
  %call3 = tail call i32 @snd_soc_component_write(ptr noundef %2, i32 noundef %switch.load, i32 noundef %or) #8
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8960_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %2 = trunc i32 %fmt to i16
  %trunc = and i16 %2, -4096
  %3 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.203)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %sw.bb
    i16 16384, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %iface.0 = phi i16 [ 0, %entry.sw.epilog_crit_edge ], [ 64, %sw.bb ]
  %and3 = and i32 %fmt, 15
  %4 = zext i32 %and3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.204)
  switch i32 %and3, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.bb4
    i32 2, label %sw.epilog.sw.epilog21_crit_edge
    i32 3, label %sw.bb8
    i32 4, label %sw.bb12
    i32 5, label %sw.bb16
  ]

sw.epilog.sw.epilog21_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog21

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb4:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %5 = or i16 %iface.0, 2
  br label %sw.epilog21

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %6 = or i16 %iface.0, 1
  br label %sw.epilog21

sw.bb12:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %7 = or i16 %iface.0, 3
  br label %sw.epilog21

sw.bb16:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %8 = or i16 %iface.0, 19
  br label %sw.epilog21

sw.epilog21:                                      ; preds = %sw.bb16, %sw.bb12, %sw.bb8, %sw.bb4, %sw.epilog.sw.epilog21_crit_edge
  %iface.1 = phi i16 [ %8, %sw.bb16 ], [ %7, %sw.bb12 ], [ %6, %sw.bb8 ], [ %iface.0, %sw.epilog.sw.epilog21_crit_edge ], [ %5, %sw.bb4 ]
  %and22 = lshr i32 %fmt, 8
  %9 = and i32 %and22, 15
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %9, label %sw.epilog21.cleanup_crit_edge [
    i32 0, label %sw.epilog21.sw.epilog36_crit_edge
    i32 4, label %sw.bb23
    i32 3, label %sw.bb27
    i32 2, label %sw.bb31
  ]

sw.epilog21.sw.epilog36_crit_edge:                ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog36

sw.epilog21.cleanup_crit_edge:                    ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb23:                                          ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #10
  %11 = or i16 %iface.1, 144
  br label %sw.epilog36

sw.bb27:                                          ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #10
  %12 = or i16 %iface.1, 128
  br label %sw.epilog36

sw.bb31:                                          ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #10
  %13 = or i16 %iface.1, 16
  br label %sw.epilog36

sw.epilog36:                                      ; preds = %sw.bb31, %sw.bb27, %sw.bb23, %sw.epilog21.sw.epilog36_crit_edge
  %iface.2 = phi i16 [ %13, %sw.bb31 ], [ %12, %sw.bb27 ], [ %11, %sw.bb23 ], [ %iface.1, %sw.epilog21.sw.epilog36_crit_edge ]
  %conv37 = zext i16 %iface.2 to i32
  %call = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 7, i32 noundef %conv37) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog36, %sw.epilog21.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog36 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8960_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %. = select i1 %tobool.not, i32 0, i32 8
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 5, i32 noundef 8, i32 noundef %.) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8960_hw_params(ptr nocapture noundef readonly %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 7) #8
  %6 = trunc i32 %call2 to i16
  %conv = and i16 %6, -13
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %7 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  %call4 = tail call i32 @snd_soc_params_to_bclk(ptr noundef %params) #8
  %bclk = getelementptr inbounds %struct.wm8960_priv, ptr %5, i32 0, i32 8
  %9 = ptrtoint ptr %bclk to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call4, ptr %bclk, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp6 = icmp eq i32 %11, 1
  br i1 %cmp6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mul = shl i32 %call4, 1
  %12 = ptrtoint ptr %bclk to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul, ptr %bclk, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end.if.then.i.i.i_crit_edge

if.end.if.then.i.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.end.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %14, %if.end.if.then.i.i.i_crit_edge ], [ %17, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %15 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !396
  %add.i.i.i = or i32 %15, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.end
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.1.i.i.i = icmp eq i32 %17, 0
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
  %18 = add i32 %call1.i, -16
  %19 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 30)
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %19, label %params_width.exit.do.end_crit_edge [
    i32 0, label %params_width.exit.sw.epilog_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb12
    i32 4, label %sw.bb16
  ]

params_width.exit.sw.epilog_crit_edge:            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

params_width.exit.do.end_crit_edge:               ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.bb:                                            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  %21 = or i16 %conv, 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  %22 = or i16 %conv, 8
  br label %sw.epilog

sw.bb16:                                          ; preds = %params_width.exit
  %and18 = and i32 %call2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %cmp19.not = icmp eq i32 %and18, 0
  br i1 %cmp19.not, label %sw.bb16.do.end_crit_edge, label %if.then21

sw.bb16.do.end_crit_edge:                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then21:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  %or23 = or i16 %6, 12
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb16.do.end_crit_edge, %params_width.exit.do.end_crit_edge
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %25 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i.i80 = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i.i80, label %for.inc.i.i.i87, label %do.end.if.then.i.i.i84_crit_edge

do.end.if.then.i.i.i84_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i84

if.then.i.i.i84:                                  ; preds = %for.inc.i.i.i87.if.then.i.i.i84_crit_edge, %do.end.if.then.i.i.i84_crit_edge
  %i.09.lcssa.i.i.i81 = phi i32 [ 0, %do.end.if.then.i.i.i84_crit_edge ], [ 32, %for.inc.i.i.i87.if.then.i.i.i84_crit_edge ]
  %.lcssa.i.i.i82 = phi i32 [ %26, %do.end.if.then.i.i.i84_crit_edge ], [ %29, %for.inc.i.i.i87.if.then.i.i.i84_crit_edge ]
  %27 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i82, i1 true) #8, !range !396
  %add.i.i.i83 = or i32 %27, %i.09.lcssa.i.i.i81
  br label %params_width.exit90

for.inc.i.i.i87:                                  ; preds = %do.end
  %arrayidx.1.i.i.i85 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx.1.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.1.i.i.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.1.i.i.i86 = icmp eq i32 %29, 0
  br i1 %tobool.not.1.i.i.i86, label %for.inc.i.i.i87.params_width.exit90_crit_edge, label %for.inc.i.i.i87.if.then.i.i.i84_crit_edge

for.inc.i.i.i87.if.then.i.i.i84_crit_edge:        ; preds = %for.inc.i.i.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i84

for.inc.i.i.i87.params_width.exit90_crit_edge:    ; preds = %for.inc.i.i.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_width.exit90

params_width.exit90:                              ; preds = %for.inc.i.i.i87.params_width.exit90_crit_edge, %if.then.i.i.i84
  %retval.0.i.i.i88 = phi i32 [ %add.i.i.i83, %if.then.i.i.i84 ], [ 0, %for.inc.i.i.i87.params_width.exit90_crit_edge ]
  %call1.i89 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i88) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.196, i32 noundef %call1.i89) #11
  br label %cleanup

sw.epilog:                                        ; preds = %if.then21, %sw.bb12, %sw.bb, %params_width.exit.sw.epilog_crit_edge
  %iface.0 = phi i16 [ %or23, %if.then21 ], [ %22, %sw.bb12 ], [ %21, %sw.bb ], [ %conv, %params_width.exit.sw.epilog_crit_edge ]
  %arrayidx.i.i91 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %arrayidx.i.i91 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i91, align 4
  %lrclk = getelementptr inbounds %struct.wm8960_priv, ptr %5, i32 0, i32 7
  %32 = ptrtoint ptr %lrclk to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %lrclk, align 4
  br i1 %cmp, label %if.then28, label %for.body.preheader

for.body.preheader:                               ; preds = %sw.epilog
  %33 = ptrtoint ptr %arrayidx.i.i91 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %34)
  %cmp33 = icmp eq i32 %34, 48000
  br i1 %cmp33, label %if.then35, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then28:                                        ; preds = %sw.epilog
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i.i.i, align 4
  %deemph.i = getelementptr inbounds %struct.wm8960_priv, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %deemph.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %deemph.i, align 4, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i, label %if.then28.do.body.i_crit_edge, label %for.cond.preheader.i

if.then28.do.body.i_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

for.cond.preheader.i:                             ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %lrclk.i = getelementptr inbounds %struct.wm8960_priv, ptr %38, i32 0, i32 7
  %41 = ptrtoint ptr %lrclk.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %lrclk.i, align 4
  %sub.i = sub i32 44100, %42
  %43 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #8
  %sub6.i = sub i32 32000, %42
  %44 = tail call i32 @llvm.abs.i32(i32 %sub6.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %44)
  %cmp14.i = icmp slt i32 %43, %44
  %best.1.i = select i1 %cmp14.i, i32 2, i32 1
  %sub.1.i = sub i32 48000, %42
  %45 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 false) #8
  %arrayidx4.1.i = getelementptr [4 x i32], ptr @deemph_settings, i32 0, i32 %best.1.i
  %46 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx4.1.i, align 4
  %sub6.1.i = sub i32 %47, %42
  %48 = tail call i32 @llvm.abs.i32(i32 %sub6.1.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %48)
  %cmp14.1.i = icmp slt i32 %45, %48
  %best.1.op.i = shl nuw nsw i32 %best.1.i, 1
  %shl.i = select i1 %cmp14.1.i, i32 6, i32 %best.1.op.i
  br label %do.body.i

do.body.i:                                        ; preds = %for.cond.preheader.i, %if.then28.do.body.i_crit_edge
  %val.0.i = phi i32 [ %shl.i, %for.cond.preheader.i ], [ 0, %if.then28.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8960_set_deemph.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8960_hw_params, %if.then22.i)) #8
          to label %wm8960_set_deemph.exit [label %if.then22.i], !srcloc !393

if.then22.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8960_set_deemph.__UNIQUE_ID_ddebug294, ptr noundef %50, ptr noundef nonnull @.str.130, i32 noundef %val.0.i) #8
  br label %wm8960_set_deemph.exit

wm8960_set_deemph.exit:                           ; preds = %if.then22.i, %do.body.i
  %call24.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 5, i32 noundef 6, i32 noundef %val.0.i) #8
  br label %if.end39

if.then35:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %call37 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 27, i32 noundef 7, i32 noundef 0) #8
  %51 = ptrtoint ptr %arrayidx.i.i91 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr = load i32, ptr %arrayidx.i.i91, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then35, %for.body.preheader.for.inc_crit_edge
  %52 = phi i32 [ %34, %for.body.preheader.for.inc_crit_edge ], [ %.pr, %if.then35 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 44100, i32 %52)
  %cmp33.1 = icmp eq i32 %52, 44100
  br i1 %cmp33.1, label %if.then35.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then35.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %call37.1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 27, i32 noundef 7, i32 noundef 0) #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then35.1, %for.inc.for.inc.1_crit_edge
  %53 = ptrtoint ptr %arrayidx.i.i91 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %54)
  %cmp33.2 = icmp eq i32 %54, 32000
  br i1 %cmp33.2, label %if.then35.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then35.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %call37.2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 27, i32 noundef 7, i32 noundef 1) #8
  %55 = ptrtoint ptr %arrayidx.i.i91 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr95 = load i32, ptr %arrayidx.i.i91, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then35.2, %for.inc.1.for.inc.2_crit_edge
  %56 = phi i32 [ %.pr95, %if.then35.2 ], [ %54, %for.inc.1.for.inc.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 22050, i32 %56)
  %cmp33.3 = icmp eq i32 %56, 22050
  br i1 %cmp33.3, label %if.then35.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.then35.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %call37.3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 27, i32 noundef 7, i32 noundef 2) #8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then35.3, %for.inc.2.for.inc.3_crit_edge
  %57 = ptrtoint ptr %arrayidx.i.i91 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000, i32 %58)
  %cmp33.4 = icmp eq i32 %58, 24000
  br i1 %cmp33.4, label %if.then35.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

if.then35.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  %call37.4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 27, i32 noundef 7, i32 noundef 2) #8
  %59 = ptrtoint ptr %arrayidx.i.i91 to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pr96 = load i32, ptr %arrayidx.i.i91, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then35.4, %for.inc.3.for.inc.4_crit_edge
  %60 = phi i32 [ %.pr96, %if.then35.4 ], [ %58, %for.inc.3.for.inc.4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %60)
  %cmp33.5 = icmp eq i32 %60, 16000
  br i1 %cmp33.5, label %if.then35.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5

if.then35.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  %call37.5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 27, i32 noundef 7, i32 noundef 3) #8
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then35.5, %for.inc.4.for.inc.5_crit_edge
  %61 = ptrtoint ptr %arrayidx.i.i91 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11025, i32 %62)
  %cmp33.6 = icmp eq i32 %62, 11025
  br i1 %cmp33.6, label %if.then35.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6

if.then35.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  %call37.6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 27, i32 noundef 7, i32 noundef 4) #8
  %63 = ptrtoint ptr %arrayidx.i.i91 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pr97 = load i32, ptr %arrayidx.i.i91, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then35.6, %for.inc.5.for.inc.6_crit_edge
  %64 = phi i32 [ %.pr97, %if.then35.6 ], [ %62, %for.inc.5.for.inc.6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000, i32 %64)
  %cmp33.7 = icmp eq i32 %64, 12000
  br i1 %cmp33.7, label %if.then35.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7

if.then35.7:                                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  %call37.7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 27, i32 noundef 7, i32 noundef 4) #8
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then35.7, %for.inc.6.for.inc.7_crit_edge
  %65 = ptrtoint ptr %arrayidx.i.i91 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %66)
  %cmp33.8 = icmp eq i32 %66, 8000
  br i1 %cmp33.8, label %if.then35.8, label %for.inc.7.if.end39_crit_edge

for.inc.7.if.end39_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then35.8:                                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  %call37.8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 27, i32 noundef 7, i32 noundef 5) #8
  br label %if.end39

if.end39:                                         ; preds = %if.then35.8, %for.inc.7.if.end39_crit_edge, %wm8960_set_deemph.exit
  %conv40 = zext i16 %iface.0 to i32
  %call41 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 7, i32 noundef %conv40) #8
  %idxprom = zext i1 %cmp to i32
  %arrayidx43 = getelementptr %struct.wm8960_priv, ptr %5, i32 0, i32 12, i32 %idxprom
  %67 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %arrayidx43, align 1
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %arrayidx46 = getelementptr %struct.wm8960_priv, ptr %5, i32 0, i32 12, i32 %lnot.ext
  %68 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx46, align 1, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool47.not = icmp eq i8 %69, 0
  br i1 %tobool47.not, label %if.then48, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then48:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %call49 = tail call fastcc i32 @wm8960_configure_clocking(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.end39.cleanup_crit_edge, %params_width.exit90
  %retval.0 = phi i32 [ -22, %params_width.exit90 ], [ %call49, %if.then48 ], [ 0, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8960_hw_free(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %idxprom = zext i1 %cmp to i32
  %arrayidx = getelementptr %struct.wm8960_priv, ptr %5, i32 0, i32 12, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_bclk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 242)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 242)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !94, !95, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !245, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !283, !285, !287, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !375, !376, !377, !379, !381}
!llvm.module.flags = !{!383, !384, !385, !386, !387, !388, !389, !390}
!llvm.ident = !{!391}

!0 = !{ptr @__initcall__kmod_snd_soc_wm8960__297_1508_wm8960_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_wm8960__297_1508_wm8960_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/wm8960.c", i32 1508, i32 1}
!2 = !{ptr @__exitcall_wm8960_i2c_driver_exit, !1, !"__exitcall_wm8960_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description298, !4, !"__UNIQUE_ID_description298", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/wm8960.c", i32 1510, i32 1}
!5 = !{ptr @__UNIQUE_ID_author299, !6, !"__UNIQUE_ID_author299", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/wm8960.c", i32 1511, i32 1}
!7 = !{ptr @__UNIQUE_ID_file300, !8, !"__UNIQUE_ID_file300", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/wm8960.c", i32 1512, i32 1}
!9 = !{ptr @__UNIQUE_ID_license301, !8, !"__UNIQUE_ID_license301", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/wm8960.c", i32 1500, i32 11}
!12 = !{ptr @wm8960_i2c_driver, !13, !"wm8960_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/wm8960.c", i32 1498, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/wm8960.c", i32 1416, i32 41}
!16 = !{ptr @wm8960_i2c_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/wm8960.c", i32 1422, i32 19}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/wm8960.c", i32 1433, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @wm8960_i2c_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @wm8960_i2c_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/wm8960.c", i32 1441, i32 4}
!29 = !{ptr @wm8960_i2c_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @wm8960_i2c_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @wm8960_regmap, !32, !"wm8960_regmap", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/wm8960.c", i32 1374, i32 35}
!33 = !{ptr @wm8960_reg_defaults, !34, !"wm8960_reg_defaults", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/wm8960.c", i32 56, i32 33}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/wm8960.c", i32 1391, i32 32}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/wm8960.c", i32 1394, i32 32}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/wm8960.c", i32 1397, i32 33}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/wm8960.c", i32 1400, i32 33}
!43 = !{ptr @soc_component_dev_wm8960, !44, !"soc_component_dev_wm8960", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/wm8960.c", i32 1364, i32 46}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/wm8960.c", i32 1035, i32 6}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @wm8960_set_bias_level_capless._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @wm8960_set_bias_level_capless._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/wm8960.c", i32 753, i32 3}
!52 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @wm8960_configure_clocking._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @wm8960_configure_clocking._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/wm8960.c", i32 759, i32 3}
!58 = !{ptr @wm8960_configure_clocking._entry.20, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @wm8960_configure_clocking._entry_ptr.22, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/wm8960.c", i32 777, i32 3}
!62 = !{ptr @wm8960_configure_clocking._entry.23, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @wm8960_configure_clocking._entry_ptr.25, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/wm8960.c", i32 786, i32 4}
!66 = !{ptr @wm8960_configure_clocking._entry.26, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @wm8960_configure_clocking._entry_ptr.28, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/wm8960.c", i32 793, i32 3}
!70 = !{ptr @wm8960_configure_clocking._entry.29, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @wm8960_configure_clocking._entry_ptr.31, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @sysclk_divs, !73, !"sysclk_divs", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/wm8960.c", i32 593, i32 18}
!74 = !{ptr @dac_divs, !75, !"dac_divs", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/wm8960.c", i32 596, i32 18}
!76 = !{ptr @bclk_divs, !77, !"bclk_divs", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/wm8960.c", i32 599, i32 18}
!78 = distinct !{null, !79, !"pll_div", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/wm8960.c", i32 1191, i32 25}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/wm8960.c", i32 1146, i32 2}
!82 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @pll_factors.__UNIQUE_ID_ddebug295, !81, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/wm8960.c", i32 1160, i32 3}
!87 = !{ptr @pll_factors._entry, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @pll_factors._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/wm8960.c", i32 1181, i32 2}
!91 = !{ptr @pll_factors.__UNIQUE_ID_ddebug296, !90, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/wm8960.c", i32 912, i32 6}
!94 = !{ptr @wm8960_set_bias_level_out3._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @wm8960_set_bias_level_out3._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/wm8960.c", i32 232, i32 1}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/wm8960.c", i32 234, i32 1}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/wm8960.c", i32 236, i32 1}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/wm8960.c", i32 239, i32 1}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/wm8960.c", i32 241, i32 1}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/wm8960.c", i32 243, i32 1}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/wm8960.c", i32 245, i32 1}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/wm8960.c", i32 247, i32 1}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/wm8960.c", i32 249, i32 1}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/wm8960.c", i32 252, i32 1}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/wm8960.c", i32 255, i32 1}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/wm8960.c", i32 257, i32 1}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/wm8960.c", i32 260, i32 1}
!122 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/wm8960.c", i32 262, i32 1}
!124 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/wm8960.c", i32 264, i32 1}
!126 = !{ptr @.str.67, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/wm8960.c", i32 265, i32 1}
!128 = !{ptr @.str.69, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/wm8960.c", i32 267, i32 1}
!130 = !{ptr @.str.71, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/wm8960.c", i32 268, i32 1}
!132 = !{ptr @.str.72, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/wm8960.c", i32 269, i32 1}
!134 = !{ptr @.str.74, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/wm8960.c", i32 271, i32 1}
!136 = !{ptr @.str.75, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/wm8960.c", i32 272, i32 1}
!138 = !{ptr @.str.76, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/wm8960.c", i32 275, i32 1}
!140 = !{ptr @.str.77, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/wm8960.c", i32 276, i32 1}
!142 = !{ptr @.str.78, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/wm8960.c", i32 277, i32 1}
!144 = !{ptr @.str.80, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/wm8960.c", i32 278, i32 1}
!146 = !{ptr @.str.82, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/wm8960.c", i32 280, i32 1}
!148 = !{ptr @.str.83, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/wm8960.c", i32 281, i32 1}
!150 = !{ptr @.str.85, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/wm8960.c", i32 282, i32 1}
!152 = !{ptr @.str.87, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/wm8960.c", i32 283, i32 1}
!154 = !{ptr @.str.89, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/wm8960.c", i32 284, i32 1}
!156 = !{ptr @.str.91, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/wm8960.c", i32 285, i32 1}
!158 = !{ptr @.str.92, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/wm8960.c", i32 286, i32 1}
!160 = !{ptr @.str.94, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/wm8960.c", i32 287, i32 1}
!162 = !{ptr @.str.96, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/wm8960.c", i32 289, i32 1}
!164 = !{ptr @.str.98, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/wm8960.c", i32 290, i32 1}
!166 = !{ptr @.str.100, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/wm8960.c", i32 292, i32 1}
!168 = !{ptr @.str.102, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/wm8960.c", i32 295, i32 1}
!170 = !{ptr @.str.104, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/wm8960.c", i32 297, i32 1}
!172 = !{ptr @.str.106, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/wm8960.c", i32 299, i32 1}
!174 = !{ptr @.str.108, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/wm8960.c", i32 301, i32 1}
!176 = !{ptr @.str.110, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/wm8960.c", i32 304, i32 1}
!178 = !{ptr @.str.111, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/wm8960.c", i32 305, i32 1}
!180 = !{ptr @wm8960_snd_controls, !181, !"wm8960_snd_controls", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/wm8960.c", i32 231, i32 38}
!182 = !{ptr @inpga_tlv, !183, !"inpga_tlv", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/wm8960.c", i32 221, i32 14}
!184 = !{ptr @lineinboost_tlv, !185, !"lineinboost_tlv", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/wm8960.c", i32 225, i32 14}
!186 = !{ptr @micboost_tlv, !187, !"micboost_tlv", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/wm8960.c", i32 226, i32 14}
!188 = !{ptr @dac_tlv, !189, !"dac_tlv", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/wm8960.c", i32 222, i32 14}
!190 = !{ptr @out_tlv, !191, !"out_tlv", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/wm8960.c", i32 224, i32 14}
!192 = !{ptr @wm8960_enum, !193, !"wm8960_enum", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/wm8960.c", i32 155, i32 30}
!194 = !{ptr @.str.112, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/wm8960.c", i32 141, i32 41}
!196 = !{ptr @.str.113, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/wm8960.c", i32 141, i32 57}
!198 = !{ptr @.str.114, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/wm8960.c", i32 142, i32 2}
!200 = !{ptr @.str.115, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/wm8960.c", i32 142, i32 20}
!202 = !{ptr @wm8960_polarity, !203, !"wm8960_polarity", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/wm8960.c", i32 141, i32 20}
!204 = !{ptr @.str.116, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/wm8960.c", i32 143, i32 48}
!206 = !{ptr @.str.117, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/wm8960.c", i32 143, i32 56}
!208 = !{ptr @wm8960_3d_upper_cutoff, !209, !"wm8960_3d_upper_cutoff", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/wm8960.c", i32 143, i32 20}
!210 = !{ptr @wm8960_3d_lower_cutoff, !211, !"wm8960_3d_lower_cutoff", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/wm8960.c", i32 144, i32 20}
!212 = !{ptr @.str.118, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/wm8960.c", i32 145, i32 40}
!214 = !{ptr @.str.119, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/wm8960.c", i32 145, i32 47}
!216 = !{ptr @.str.120, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/wm8960.c", i32 145, i32 56}
!218 = !{ptr @.str.121, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/wm8960.c", i32 145, i32 64}
!220 = !{ptr @wm8960_alcfunc, !221, !"wm8960_alcfunc", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/wm8960.c", i32 145, i32 20}
!222 = !{ptr @.str.122, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/wm8960.c", i32 146, i32 40}
!224 = !{ptr @.str.123, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/wm8960.c", i32 146, i32 47}
!226 = !{ptr @wm8960_alcmode, !227, !"wm8960_alcmode", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/wm8960.c", i32 146, i32 20}
!228 = !{ptr @.str.124, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/wm8960.c", i32 148, i32 2}
!230 = !{ptr @.str.125, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/wm8960.c", i32 149, i32 2}
!232 = !{ptr @.str.126, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/wm8960.c", i32 150, i32 2}
!234 = !{ptr @.str.127, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/wm8960.c", i32 151, i32 2}
!236 = !{ptr @wm8960_adc_data_output_sel, !237, !"wm8960_adc_data_output_sel", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/wm8960.c", i32 147, i32 20}
!238 = !{ptr @.str.128, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/wm8960.c", i32 153, i32 51}
!240 = !{ptr @wm8960_dmonomix, !241, !"wm8960_dmonomix", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/wm8960.c", i32 153, i32 20}
!242 = !{ptr @.str.129, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/wm8960.c", i32 189, i32 2}
!244 = !{ptr @.str.130, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @wm8960_set_deemph.__UNIQUE_ID_ddebug294, !243, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!246 = !{ptr @deemph_settings, !247, !"deemph_settings", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/wm8960.c", i32 166, i32 18}
!248 = !{ptr @adc_tlv, !249, !"adc_tlv", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/wm8960.c", i32 220, i32 14}
!250 = !{ptr @bypass_tlv, !251, !"bypass_tlv", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/wm8960.c", i32 223, i32 14}
!252 = !{ptr @.str.131, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/soc/codecs/wm8960.c", i32 507, i32 23}
!254 = !{ptr @.str.132, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/wm8960.c", i32 509, i32 23}
!256 = !{ptr @.str.133, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/wm8960.c", i32 511, i32 23}
!258 = !{ptr @.str.134, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/wm8960.c", i32 346, i32 1}
!260 = !{ptr @.str.135, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/wm8960.c", i32 347, i32 1}
!262 = !{ptr @.str.136, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/wm8960.c", i32 348, i32 1}
!264 = !{ptr @.str.137, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/wm8960.c", i32 349, i32 1}
!266 = !{ptr @.str.138, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/wm8960.c", i32 350, i32 1}
!268 = !{ptr @.str.139, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/wm8960.c", i32 351, i32 1}
!270 = !{ptr @.str.140, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/wm8960.c", i32 353, i32 1}
!272 = !{ptr @.str.141, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/wm8960.c", i32 355, i32 1}
!274 = !{ptr @.str.142, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/wm8960.c", i32 357, i32 1}
!276 = !{ptr @.str.143, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/wm8960.c", i32 360, i32 1}
!278 = !{ptr @.str.144, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/wm8960.c", i32 362, i32 1}
!280 = !{ptr @.str.145, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/wm8960.c", i32 365, i32 1}
!282 = !{ptr @.str.146, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @.str.147, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/wm8960.c", i32 366, i32 1}
!285 = !{ptr @.str.148, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/wm8960.c", i32 368, i32 1}
!287 = !{ptr @.str.149, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @.str.150, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/wm8960.c", i32 369, i32 1}
!290 = !{ptr @.str.151, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/wm8960.c", i32 371, i32 1}
!292 = !{ptr @.str.152, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/soc/codecs/wm8960.c", i32 374, i32 1}
!294 = !{ptr @.str.153, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/wm8960.c", i32 381, i32 1}
!296 = !{ptr @.str.154, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/wm8960.c", i32 382, i32 1}
!298 = !{ptr @.str.155, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/soc/codecs/wm8960.c", i32 384, i32 1}
!300 = !{ptr @.str.156, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/wm8960.c", i32 385, i32 1}
!302 = !{ptr @.str.157, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/wm8960.c", i32 387, i32 1}
!304 = !{ptr @.str.158, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/wm8960.c", i32 388, i32 1}
!306 = !{ptr @.str.159, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/wm8960.c", i32 389, i32 1}
!308 = !{ptr @.str.160, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/wm8960.c", i32 390, i32 1}
!310 = !{ptr @.str.161, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/wm8960.c", i32 391, i32 1}
!312 = !{ptr @.str.162, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/wm8960.c", i32 392, i32 1}
!314 = !{ptr @.str.163, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/wm8960.c", i32 393, i32 1}
!316 = !{ptr @wm8960_dapm_widgets, !317, !"wm8960_dapm_widgets", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/wm8960.c", i32 345, i32 41}
!318 = !{ptr @.str.165, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/wm8960.c", i32 309, i32 1}
!320 = !{ptr @.str.167, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/wm8960.c", i32 310, i32 1}
!322 = !{ptr @.str.169, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/wm8960.c", i32 311, i32 1}
!324 = !{ptr @wm8960_lin_boost, !325, !"wm8960_lin_boost", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/wm8960.c", i32 308, i32 38}
!326 = !{ptr @.str.171, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/wm8960.c", i32 319, i32 1}
!328 = !{ptr @.str.173, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/soc/codecs/wm8960.c", i32 320, i32 1}
!330 = !{ptr @.str.175, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/soc/codecs/wm8960.c", i32 321, i32 1}
!332 = !{ptr @wm8960_rin_boost, !333, !"wm8960_rin_boost", i1 false, i1 false}
!333 = !{!"../sound/soc/codecs/wm8960.c", i32 318, i32 38}
!334 = !{ptr @.str.177, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/wm8960.c", i32 315, i32 1}
!336 = !{ptr @wm8960_lin, !337, !"wm8960_lin", i1 false, i1 false}
!337 = !{!"../sound/soc/codecs/wm8960.c", i32 314, i32 38}
!338 = !{ptr @wm8960_rin, !339, !"wm8960_rin", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/wm8960.c", i32 324, i32 38}
!340 = !{ptr @.str.180, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../sound/soc/codecs/wm8960.c", i32 329, i32 1}
!342 = !{ptr @.str.183, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/soc/codecs/wm8960.c", i32 331, i32 1}
!344 = !{ptr @wm8960_loutput_mixer, !345, !"wm8960_loutput_mixer", i1 false, i1 false}
!345 = !{!"../sound/soc/codecs/wm8960.c", i32 328, i32 38}
!346 = !{ptr @wm8960_routput_mixer, !347, !"wm8960_routput_mixer", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/wm8960.c", i32 334, i32 38}
!348 = !{ptr @audio_paths, !349, !"audio_paths", i1 false, i1 false}
!349 = !{!"../sound/soc/codecs/wm8960.c", i32 407, i32 40}
!350 = !{ptr @wm8960_dapm_widgets_capless, !351, !"wm8960_dapm_widgets_capless", i1 false, i1 false}
!351 = !{!"../sound/soc/codecs/wm8960.c", i32 403, i32 41}
!352 = !{ptr @audio_paths_capless, !353, !"audio_paths_capless", i1 false, i1 false}
!353 = !{!"../sound/soc/codecs/wm8960.c", i32 462, i32 40}
!354 = !{ptr @.str.189, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/soc/codecs/wm8960.c", i32 397, i32 1}
!356 = !{ptr @wm8960_dapm_widgets_out3, !357, !"wm8960_dapm_widgets_out3", i1 false, i1 false}
!357 = !{!"../sound/soc/codecs/wm8960.c", i32 396, i32 41}
!358 = !{ptr @.str.191, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../sound/soc/codecs/wm8960.c", i32 341, i32 1}
!360 = !{ptr @.str.193, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/soc/codecs/wm8960.c", i32 342, i32 1}
!362 = !{ptr @wm8960_mono_out, !363, !"wm8960_mono_out", i1 false, i1 false}
!363 = !{!"../sound/soc/codecs/wm8960.c", i32 340, i32 38}
!364 = !{ptr @audio_paths_out3, !365, !"audio_paths_out3", i1 false, i1 false}
!365 = !{!"../sound/soc/codecs/wm8960.c", i32 455, i32 40}
!366 = !{ptr @.str.195, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../sound/soc/codecs/wm8960.c", i32 1330, i32 10}
!368 = !{ptr @wm8960_dai, !369, !"wm8960_dai", i1 false, i1 false}
!369 = !{!"../sound/soc/codecs/wm8960.c", i32 1329, i32 34}
!370 = !{ptr @wm8960_dai_ops, !371, !"wm8960_dai_ops", i1 false, i1 false}
!371 = !{!"../sound/soc/codecs/wm8960.c", i32 1318, i32 37}
!372 = !{ptr @.str.196, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../sound/soc/codecs/wm8960.c", i32 844, i32 3}
!374 = !{ptr @.str.197, !373, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @wm8960_hw_params._entry, !373, !"_entry", i1 false, i1 false}
!376 = !{ptr @wm8960_hw_params._entry_ptr, !373, !"_entry_ptr", i1 false, i1 false}
!377 = distinct !{null, !378, !"alc_rates", i1 false, i1 false}
!378 = !{!"../sound/soc/codecs/wm8960.c", i32 580, i32 3}
!379 = !{ptr @wm8960_of_match, !380, !"wm8960_of_match", i1 false, i1 false}
!380 = !{!"../sound/soc/codecs/wm8960.c", i32 1492, i32 34}
!381 = !{ptr @wm8960_i2c_id, !382, !"wm8960_i2c_id", i1 false, i1 false}
!382 = !{!"../sound/soc/codecs/wm8960.c", i32 1486, i32 35}
!383 = !{i32 1, !"wchar_size", i32 2}
!384 = !{i32 1, !"min_enum_size", i32 4}
!385 = !{i32 8, !"branch-target-enforcement", i32 0}
!386 = !{i32 8, !"sign-return-address", i32 0}
!387 = !{i32 8, !"sign-return-address-all", i32 0}
!388 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!389 = !{i32 7, !"uwtable", i32 1}
!390 = !{i32 7, !"frame-pointer", i32 2}
!391 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!392 = !{i8 0, i8 2}
!393 = !{i64 2148993902, i64 2148993907, i64 2148993920, i64 2148993964, i64 2148993998, i64 2148994019}
!394 = !{!"branch_weights", i32 2000, i32 1}
!395 = !{i64 2148226949, i64 2148227229, i64 2148227563, i64 2148227897}
!396 = !{i32 0, i32 33}
