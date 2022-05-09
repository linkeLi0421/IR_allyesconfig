; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/lpass-tx-macro.c_pt.bc'
source_filename = "../sound/soc/codecs/lpass-tx-macro.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reg_default = type { i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tx_macro = type { ptr, ptr, [8 x %struct.hpf_work], [8 x %struct.tx_mute_work], [4 x i32], [4 x i32], [4 x i32], ptr, [5 x %struct.clk_bulk_data], %struct.clk_hw, [8 x i8], i8, i32, i16, i8, [8 x i32], i8 }
%struct.hpf_work = type { ptr, i8, i8, %struct.delayed_work }
%struct.tx_mute_work = type { ptr, i32, %struct.delayed_work }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_lpass_tx_macro__238_1879_tx_macro_driver_init6 = internal global ptr @tx_macro_driver_init, section ".initcall6.init", align 4
@tx_macro_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tx_macro_probe, ptr @tx_macro_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @tx_macro_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tx_macro_driver_exit = internal global ptr @tx_macro_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [51 x i8] c"snd_soc_lpass_tx_macro.description=TX macro driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [68 x i8] c"snd_soc_lpass_tx_macro.file=sound/soc/codecs/snd-soc-lpass-tx-macro\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [35 x i8] c"snd_soc_lpass_tx_macro.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_macro\00", [23 x i8] zeroinitializer }, align 32
@tx_macro_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-lpass-tx-macro\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-lpass-tx-macro\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"macro\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dcodec\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"npl\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fsgen\00", [26 x i8] zeroinitializer }, align 32
@tx_macro_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1801, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error getting RX Clocks (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tx_macro_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sound/soc/codecs/lpass-tx-macro.c\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tx_macro_probe._entry_ptr = internal global ptr @tx_macro_probe._entry, section ".printk_index", align 4
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qcom,sc7280-lpass-tx-macro\00", [37 x i8] zeroinitializer }, align 32
@tx_defaults = internal global { [139 x %struct.reg_default], [264 x i8] } { [139 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 128, i32 0 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 136, i32 0 }, %struct.reg_default { i32 144, i32 0 }, %struct.reg_default { i32 148, i32 0 }, %struct.reg_default { i32 152, i32 0 }, %struct.reg_default { i32 164, i32 12 }, %struct.reg_default { i32 168, i32 0 }, %struct.reg_default { i32 172, i32 0 }, %struct.reg_default { i32 192, i32 0 }, %struct.reg_default { i32 196, i32 0 }, %struct.reg_default { i32 200, i32 0 }, %struct.reg_default { i32 204, i32 0 }, %struct.reg_default { i32 208, i32 0 }, %struct.reg_default { i32 212, i32 0 }, %struct.reg_default { i32 256, i32 0 }, %struct.reg_default { i32 260, i32 0 }, %struct.reg_default { i32 264, i32 0 }, %struct.reg_default { i32 268, i32 0 }, %struct.reg_default { i32 272, i32 0 }, %struct.reg_default { i32 276, i32 0 }, %struct.reg_default { i32 280, i32 0 }, %struct.reg_default { i32 284, i32 0 }, %struct.reg_default { i32 288, i32 0 }, %struct.reg_default { i32 292, i32 0 }, %struct.reg_default { i32 296, i32 0 }, %struct.reg_default { i32 300, i32 0 }, %struct.reg_default { i32 304, i32 0 }, %struct.reg_default { i32 308, i32 0 }, %struct.reg_default { i32 312, i32 0 }, %struct.reg_default { i32 316, i32 0 }, %struct.reg_default { i32 512, i32 0 }, %struct.reg_default { i32 516, i32 0 }, %struct.reg_default { i32 520, i32 0 }, %struct.reg_default { i32 524, i32 0 }, %struct.reg_default { i32 528, i32 0 }, %struct.reg_default { i32 532, i32 0 }, %struct.reg_default { i32 536, i32 0 }, %struct.reg_default { i32 540, i32 0 }, %struct.reg_default { i32 544, i32 0 }, %struct.reg_default { i32 548, i32 0 }, %struct.reg_default { i32 552, i32 0 }, %struct.reg_default { i32 556, i32 0 }, %struct.reg_default { i32 560, i32 0 }, %struct.reg_default { i32 564, i32 0 }, %struct.reg_default { i32 568, i32 0 }, %struct.reg_default { i32 572, i32 0 }, %struct.reg_default { i32 1024, i32 4 }, %struct.reg_default { i32 1028, i32 16 }, %struct.reg_default { i32 1032, i32 11 }, %struct.reg_default { i32 1036, i32 0 }, %struct.reg_default { i32 1040, i32 0 }, %struct.reg_default { i32 1044, i32 0 }, %struct.reg_default { i32 1048, i32 1 }, %struct.reg_default { i32 1052, i32 60 }, %struct.reg_default { i32 1056, i32 32 }, %struct.reg_default { i32 1060, i32 0 }, %struct.reg_default { i32 1064, i32 0 }, %struct.reg_default { i32 1068, i32 37 }, %struct.reg_default { i32 1152, i32 4 }, %struct.reg_default { i32 1156, i32 16 }, %struct.reg_default { i32 1160, i32 11 }, %struct.reg_default { i32 1164, i32 0 }, %struct.reg_default { i32 1168, i32 0 }, %struct.reg_default { i32 1172, i32 0 }, %struct.reg_default { i32 1176, i32 1 }, %struct.reg_default { i32 1180, i32 60 }, %struct.reg_default { i32 1184, i32 32 }, %struct.reg_default { i32 1188, i32 0 }, %struct.reg_default { i32 1192, i32 0 }, %struct.reg_default { i32 1280, i32 4 }, %struct.reg_default { i32 1284, i32 16 }, %struct.reg_default { i32 1288, i32 11 }, %struct.reg_default { i32 1292, i32 0 }, %struct.reg_default { i32 1296, i32 0 }, %struct.reg_default { i32 1300, i32 0 }, %struct.reg_default { i32 1304, i32 1 }, %struct.reg_default { i32 1308, i32 60 }, %struct.reg_default { i32 1312, i32 32 }, %struct.reg_default { i32 1316, i32 0 }, %struct.reg_default { i32 1320, i32 0 }, %struct.reg_default { i32 1408, i32 4 }, %struct.reg_default { i32 1412, i32 16 }, %struct.reg_default { i32 1416, i32 11 }, %struct.reg_default { i32 1420, i32 0 }, %struct.reg_default { i32 1424, i32 0 }, %struct.reg_default { i32 1428, i32 0 }, %struct.reg_default { i32 1432, i32 1 }, %struct.reg_default { i32 1436, i32 60 }, %struct.reg_default { i32 1440, i32 32 }, %struct.reg_default { i32 1444, i32 0 }, %struct.reg_default { i32 1448, i32 0 }, %struct.reg_default { i32 1536, i32 4 }, %struct.reg_default { i32 1540, i32 16 }, %struct.reg_default { i32 1544, i32 11 }, %struct.reg_default { i32 1548, i32 0 }, %struct.reg_default { i32 1552, i32 0 }, %struct.reg_default { i32 1556, i32 0 }, %struct.reg_default { i32 1560, i32 1 }, %struct.reg_default { i32 1564, i32 60 }, %struct.reg_default { i32 1568, i32 32 }, %struct.reg_default { i32 1572, i32 0 }, %struct.reg_default { i32 1576, i32 0 }, %struct.reg_default { i32 1664, i32 4 }, %struct.reg_default { i32 1668, i32 16 }, %struct.reg_default { i32 1672, i32 11 }, %struct.reg_default { i32 1676, i32 0 }, %struct.reg_default { i32 1680, i32 0 }, %struct.reg_default { i32 1684, i32 0 }, %struct.reg_default { i32 1688, i32 1 }, %struct.reg_default { i32 1692, i32 60 }, %struct.reg_default { i32 1696, i32 32 }, %struct.reg_default { i32 1700, i32 0 }, %struct.reg_default { i32 1704, i32 0 }, %struct.reg_default { i32 1792, i32 4 }, %struct.reg_default { i32 1796, i32 16 }, %struct.reg_default { i32 1800, i32 11 }, %struct.reg_default { i32 1804, i32 0 }, %struct.reg_default { i32 1808, i32 0 }, %struct.reg_default { i32 1812, i32 0 }, %struct.reg_default { i32 1816, i32 1 }, %struct.reg_default { i32 1820, i32 60 }, %struct.reg_default { i32 1824, i32 32 }, %struct.reg_default { i32 1828, i32 0 }, %struct.reg_default { i32 1832, i32 0 }, %struct.reg_default { i32 1920, i32 4 }, %struct.reg_default { i32 1924, i32 16 }, %struct.reg_default { i32 1928, i32 11 }, %struct.reg_default { i32 1932, i32 0 }, %struct.reg_default { i32 1936, i32 0 }, %struct.reg_default { i32 1940, i32 0 }, %struct.reg_default { i32 1944, i32 1 }, %struct.reg_default { i32 1948, i32 60 }, %struct.reg_default { i32 1952, i32 32 }, %struct.reg_default { i32 1956, i32 0 }, %struct.reg_default { i32 1960, i32 0 }], [264 x i8] zeroinitializer }, align 32
@tx_macro_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tx_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str, i32 16, i32 4, i32 0, i32 32, ptr @tx_is_rw_register, ptr @tx_is_rw_register, ptr @tx_is_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1960, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tx_defaults, i32 139, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"lpass_tx_macro:1823:(&tx_regmap_config)->lock\00", [50 x i8] zeroinitializer }, align 32
@tx_macro_component_drv = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.16, ptr @tx_macro_snd_controls, i32 17, ptr @tx_macro_dapm_widgets, i32 37, ptr @tx_audio_map, i32 150, ptr @tx_macro_component_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@tx_macro_dai = internal global { [3 x %struct.snd_soc_dai_driver], [104 x i8] } { [3 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.157, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tx_macro_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.46, i64 4294967364, i32 5290, i32 8000, i32 192000, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.158, i32 2, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tx_macro_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.48, i64 4294967364, i32 5290, i32 8000, i32 192000, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.159, i32 3, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tx_macro_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.50, i64 4294967364, i32 5290, i32 8000, i32 192000, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }], [104 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lpass-tx-mclk\00", [18 x i8] zeroinitializer }, align 32
@swclk_gate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @swclk_gate_enable, ptr @swclk_gate_disable, ptr null, ptr null, ptr null, ptr null, ptr @swclk_gate_is_enabled, ptr null, ptr null, ptr null, ptr @swclk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tx_macro_mclk_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.8, i32 614, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"clock already disabled\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx_macro_mclk_enable\00", [43 x i8] zeroinitializer }, align 32
@tx_macro_mclk_enable._entry_ptr = internal global ptr @tx_macro_mclk_enable._entry, section ".printk_index", align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RX-MACRO\00", [23 x i8] zeroinitializer }, align 32
@tx_macro_snd_controls = internal constant { [17 x %struct.snd_kcontrol_new], [208 x i8] } { [17 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral.19 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral.23 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral.25 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral.27 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral.29 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral.31 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tx_macro_dec_mode_get, ptr @tx_macro_dec_mode_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @dec_mode_mux_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tx_macro_dec_mode_get, ptr @tx_macro_dec_mode_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @dec_mode_mux_enum, i64 64) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tx_macro_dec_mode_get, ptr @tx_macro_dec_mode_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @dec_mode_mux_enum, i64 128) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tx_macro_dec_mode_get, ptr @tx_macro_dec_mode_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @dec_mode_mux_enum, i64 192) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tx_macro_dec_mode_get, ptr @tx_macro_dec_mode_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @dec_mode_mux_enum, i64 256) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tx_macro_dec_mode_get, ptr @tx_macro_dec_mode_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @dec_mode_mux_enum, i64 320) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tx_macro_dec_mode_get, ptr @tx_macro_dec_mode_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @dec_mode_mux_enum, i64 384) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tx_macro_dec_mode_get, ptr @tx_macro_dec_mode_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @dec_mode_mux_enum, i64 448) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tx_macro_get_bcs, ptr @tx_macro_set_bcs, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.41 to i32) }], [208 x i8] zeroinitializer }, align 32
@tx_audio_map = internal constant { [150 x %struct.snd_soc_dapm_route], [1928 x i8] } { [150 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr null, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr null, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr @.str.86, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr @.str.88, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr @.str.90, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr @.str.92, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr @.str.94, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr @.str.96, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr @.str.98, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr @.str.100, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr @.str.86, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr @.str.88, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr @.str.90, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr @.str.92, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr @.str.94, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr @.str.96, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr @.str.98, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr @.str.100, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr @.str.86, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr @.str.88, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr @.str.90, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr @.str.92, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr @.str.94, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr @.str.96, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr @.str.98, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr @.str.100, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.76, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr @.str.141, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.120, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.121, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.122, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.123, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.124, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.125, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.126, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.127, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.128, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.129, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.130, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.131, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr @.str.141, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.120, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.121, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.122, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.123, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.124, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.125, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.126, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.127, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.128, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.129, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.130, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.131, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.76, ptr @.str.141, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.120, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.121, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.122, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.123, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.124, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.125, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.126, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.127, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.128, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.129, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.130, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.131, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr @.str.141, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.120, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.121, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.122, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.123, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.124, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.125, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.126, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.127, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.128, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.129, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.130, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.131, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr @.str.141, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.120, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.121, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.122, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.123, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.124, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.125, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.126, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.127, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.128, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.129, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.130, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.131, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr @.str.141, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.120, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.121, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.122, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.123, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.124, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.125, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.126, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.127, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.128, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.129, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.130, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.131, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr @.str.141, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr @.str.120, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr @.str.121, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr @.str.122, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr @.str.123, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr @.str.124, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr @.str.125, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr @.str.126, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr @.str.127, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr @.str.128, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr @.str.129, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr @.str.130, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr @.str.131, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr @.str.141, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.120, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.121, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.122, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.123, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.124, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.125, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.126, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.127, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.128, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.129, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.130, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.131, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }], [1928 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TX_DEC0 Volume\00", [17 x i8] zeroinitializer }, align 32
@digital_gain = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -8400, i32 65636], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 1036, i32 1036, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TX_DEC1 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 1164, i32 1164, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TX_DEC2 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 1292, i32 1292, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TX_DEC3 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 1420, i32 1420, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TX_DEC4 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 1548, i32 1548, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TX_DEC5 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 1676, i32 1676, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TX_DEC6 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 1804, i32 1804, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TX_DEC7 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 1932, i32 1932, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DEC0 MODE\00", [22 x i8] zeroinitializer }, align 32
@dec_mode_mux_enum = internal constant { [8 x %struct.soc_enum], [128 x i8] } { [8 x %struct.soc_enum] [%struct.soc_enum { i32 -1, i8 0, i8 0, i32 3, i32 3, ptr @dec_mode_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 -1, i8 1, i8 1, i32 3, i32 3, ptr @dec_mode_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 -1, i8 2, i8 2, i32 3, i32 3, ptr @dec_mode_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 -1, i8 3, i8 3, i32 3, i32 3, ptr @dec_mode_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 -1, i8 4, i8 4, i32 3, i32 3, ptr @dec_mode_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 -1, i8 5, i8 5, i32 3, i32 3, ptr @dec_mode_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 -1, i8 6, i8 6, i32 3, i32 3, ptr @dec_mode_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 -1, i8 7, i8 7, i32 3, i32 3, ptr @dec_mode_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }], [128 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DEC1 MODE\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DEC2 MODE\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DEC3 MODE\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DEC4 MODE\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DEC5 MODE\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DEC6 MODE\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DEC7 MODE\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DEC0_BCS Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@dec_mode_mux_text = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.42, ptr @.str.43, ptr @.str.44], [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC_DEFAULT\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC_LOW_PWR\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ADC_HIGH_PERF\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX_AIF1 CAP\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TX_AIF1 Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX_AIF2 CAP\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TX_AIF2 Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX_AIF3 CAP\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TX_AIF3 Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX_AIF1_CAP Mixer\00", [46 x i8] zeroinitializer }, align 32
@tx_aif1_cap_mixer = internal constant { [8 x %struct.snd_kcontrol_new], [96 x i8] } { [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tx_macro_tx_mixer_get, ptr @tx_macro_tx_mixer_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.87 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tx_macro_tx_mixer_get, ptr @tx_macro_tx_mixer_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.89 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tx_macro_tx_mixer_get, ptr @tx_macro_tx_mixer_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.91 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tx_macro_tx_mixer_get, ptr @tx_macro_tx_mixer_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.93 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tx_macro_tx_mixer_get, ptr @tx_macro_tx_mixer_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.95 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.96, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tx_macro_tx_mixer_get, ptr @tx_macro_tx_mixer_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.97 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tx_macro_tx_mixer_get, ptr @tx_macro_tx_mixer_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.99 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tx_macro_tx_mixer_get, ptr @tx_macro_tx_mixer_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.101 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX_AIF2_CAP Mixer\00", [46 x i8] zeroinitializer }, align 32
@tx_aif2_cap_mixer = internal constant { [8 x %struct.snd_kcontrol_new], [96 x i8] } { [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tx_macro_tx_mixer_get, ptr @tx_macro_tx_mixer_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.102 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tx_macro_tx_mixer_get, ptr @tx_macro_tx_mixer_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.103 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tx_macro_tx_mixer_get, ptr @tx_macro_tx_mixer_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.104 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tx_macro_tx_mixer_get, ptr @tx_macro_tx_mixer_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.105 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tx_macro_tx_mixer_get, ptr @tx_macro_tx_mixer_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.106 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.96, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tx_macro_tx_mixer_get, ptr @tx_macro_tx_mixer_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.107 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tx_macro_tx_mixer_get, ptr @tx_macro_tx_mixer_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.108 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tx_macro_tx_mixer_get, ptr @tx_macro_tx_mixer_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.109 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX_AIF3_CAP Mixer\00", [46 x i8] zeroinitializer }, align 32
@tx_aif3_cap_mixer = internal constant { [8 x %struct.snd_kcontrol_new], [96 x i8] } { [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tx_macro_tx_mixer_get, ptr @tx_macro_tx_mixer_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.110 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tx_macro_tx_mixer_get, ptr @tx_macro_tx_mixer_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.111 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tx_macro_tx_mixer_get, ptr @tx_macro_tx_mixer_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.112 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tx_macro_tx_mixer_get, ptr @tx_macro_tx_mixer_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.113 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tx_macro_tx_mixer_get, ptr @tx_macro_tx_mixer_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.114 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.96, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tx_macro_tx_mixer_get, ptr @tx_macro_tx_mixer_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.115 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tx_macro_tx_mixer_get, ptr @tx_macro_tx_mixer_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.116 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tx_macro_tx_mixer_get, ptr @tx_macro_tx_mixer_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.117 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TX SMIC MUX0\00", [19 x i8] zeroinitializer }, align 32
@tx_smic0_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @tx_macro_put_dec_enum, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @tx_smic0_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TX SMIC MUX1\00", [19 x i8] zeroinitializer }, align 32
@tx_smic1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @tx_macro_put_dec_enum, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @tx_smic1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TX SMIC MUX2\00", [19 x i8] zeroinitializer }, align 32
@tx_smic2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @tx_macro_put_dec_enum, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @tx_smic2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TX SMIC MUX3\00", [19 x i8] zeroinitializer }, align 32
@tx_smic3_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @tx_macro_put_dec_enum, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @tx_smic3_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TX SMIC MUX4\00", [19 x i8] zeroinitializer }, align 32
@tx_smic4_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @tx_macro_put_dec_enum, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @tx_smic4_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TX SMIC MUX5\00", [19 x i8] zeroinitializer }, align 32
@tx_smic5_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.136, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @tx_macro_put_dec_enum, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @tx_smic5_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TX SMIC MUX6\00", [19 x i8] zeroinitializer }, align 32
@tx_smic6_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @tx_macro_put_dec_enum, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @tx_smic6_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TX SMIC MUX7\00", [19 x i8] zeroinitializer }, align 32
@tx_smic7_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.138, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @tx_macro_put_dec_enum, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @tx_smic7_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX SWR_ADC0\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX SWR_ADC1\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX SWR_ADC2\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX SWR_ADC3\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TX SWR_DMIC0\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TX SWR_DMIC1\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TX SWR_DMIC2\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TX SWR_DMIC3\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TX SWR_DMIC4\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TX SWR_DMIC5\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TX SWR_DMIC6\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TX SWR_DMIC7\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX DEC0 MUX\00", [20 x i8] zeroinitializer }, align 32
@tx_dec0_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.139, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @tx_dec0_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX DEC1 MUX\00", [20 x i8] zeroinitializer }, align 32
@tx_dec1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.143, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @tx_dec1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX DEC2 MUX\00", [20 x i8] zeroinitializer }, align 32
@tx_dec2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.144, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @tx_dec2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX DEC3 MUX\00", [20 x i8] zeroinitializer }, align 32
@tx_dec3_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.145, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @tx_dec3_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX DEC4 MUX\00", [20 x i8] zeroinitializer }, align 32
@tx_dec4_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.146, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @tx_dec4_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX DEC5 MUX\00", [20 x i8] zeroinitializer }, align 32
@tx_dec5_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.147, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @tx_dec5_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX DEC6 MUX\00", [20 x i8] zeroinitializer }, align 32
@tx_dec6_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.148, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @tx_dec6_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX DEC7 MUX\00", [20 x i8] zeroinitializer }, align 32
@tx_dec7_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.149, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @tx_dec7_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TX_MCLK\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TX_SWR_CLK\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VA_SWR_CLK\00", [21 x i8] zeroinitializer }, align 32
@tx_macro_dapm_widgets = internal constant { [37 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1692 x i8] } { [37 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.45, ptr @.str.46, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.47, ptr @.str.48, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.49, ptr @.str.50, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.51, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 8, ptr @tx_aif1_cap_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.52, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 8, ptr @tx_aif2_cap_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.53, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 8, ptr @tx_aif3_cap_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.54, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @tx_smic0_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.55, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @tx_smic1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.56, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @tx_smic2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.57, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @tx_smic3_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.58, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @tx_smic4_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @tx_smic5_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.60, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @tx_smic6_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @tx_smic7_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.63, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.64, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.65, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.66, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.68, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.69, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.70, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.71, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.72, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.73, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @tx_macro_enable_dec, i32 1, ptr @tx_dec0_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @tx_macro_enable_dec, i32 1, ptr @tx_dec1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.76, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @tx_macro_enable_dec, i32 1, ptr @tx_dec2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @tx_macro_enable_dec, i32 1, ptr @tx_dec3_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @tx_macro_enable_dec, i32 1, ptr @tx_dec4_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @tx_macro_enable_dec, i32 1, ptr @tx_dec5_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @tx_macro_enable_dec, i32 1, ptr @tx_dec6_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.81, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @tx_macro_enable_dec, i32 1, ptr @tx_dec7_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.82, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @tx_macro_mclk_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1692 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DEC0\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DEC1\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DEC2\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DEC3\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DEC4\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DEC5\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DEC6\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DEC7\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.110 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.112 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.114 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.117 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_smic0\00", [23 x i8] zeroinitializer }, align 32
@tx_smic0_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 256, i8 0, i8 0, i32 13, i32 15, ptr @smic_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@smic_mux_text = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131], [44 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ZERO\00", [27 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC0\00", [27 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC1\00", [27 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC2\00", [27 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC3\00", [27 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SWR_DMIC0\00", [22 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SWR_DMIC1\00", [22 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SWR_DMIC2\00", [22 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SWR_DMIC3\00", [22 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SWR_DMIC4\00", [22 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SWR_DMIC5\00", [22 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SWR_DMIC6\00", [22 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SWR_DMIC7\00", [22 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_smic1\00", [23 x i8] zeroinitializer }, align 32
@tx_smic1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 264, i8 0, i8 0, i32 13, i32 15, ptr @smic_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_smic2\00", [23 x i8] zeroinitializer }, align 32
@tx_smic2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 272, i8 0, i8 0, i32 13, i32 15, ptr @smic_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_smic3\00", [23 x i8] zeroinitializer }, align 32
@tx_smic3_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 280, i8 0, i8 0, i32 13, i32 15, ptr @smic_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_smic4\00", [23 x i8] zeroinitializer }, align 32
@tx_smic4_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 288, i8 0, i8 0, i32 13, i32 15, ptr @smic_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_smic5\00", [23 x i8] zeroinitializer }, align 32
@tx_smic5_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 296, i8 0, i8 0, i32 13, i32 15, ptr @smic_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_smic6\00", [23 x i8] zeroinitializer }, align 32
@tx_smic6_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 304, i8 0, i8 0, i32 13, i32 15, ptr @smic_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_smic7\00", [23 x i8] zeroinitializer }, align 32
@tx_smic7_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 312, i8 0, i8 0, i32 13, i32 15, ptr @smic_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@system_freezable_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.139 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tx_dec0\00", [24 x i8] zeroinitializer }, align 32
@tx_dec0_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 260, i8 0, i8 0, i32 3, i32 3, ptr @adc_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adc_mux_text = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.140, ptr @.str.141, ptr @.str.142], [20 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MSM_DMIC\00", [23 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SWR_MIC\00", [24 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ANC_FB_TUNE1\00", [19 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tx_dec1\00", [24 x i8] zeroinitializer }, align 32
@tx_dec1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 268, i8 0, i8 0, i32 3, i32 3, ptr @adc_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tx_dec2\00", [24 x i8] zeroinitializer }, align 32
@tx_dec2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 276, i8 0, i8 0, i32 3, i32 3, ptr @adc_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tx_dec3\00", [24 x i8] zeroinitializer }, align 32
@tx_dec3_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 284, i8 0, i8 0, i32 3, i32 3, ptr @adc_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tx_dec4\00", [24 x i8] zeroinitializer }, align 32
@tx_dec4_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 292, i8 0, i8 0, i32 3, i32 3, ptr @adc_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tx_dec5\00", [24 x i8] zeroinitializer }, align 32
@tx_dec5_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 300, i8 0, i8 0, i32 3, i32 3, ptr @adc_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tx_dec6\00", [24 x i8] zeroinitializer }, align 32
@tx_dec6_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 308, i8 0, i8 0, i32 3, i32 3, ptr @adc_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tx_dec7\00", [24 x i8] zeroinitializer }, align 32
@tx_dec7_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 316, i8 0, i8 0, i32 3, i32 3, ptr @adc_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@tx_macro_component_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.150 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&(&tx->tx_hpf_work[i].dwork)->work)\00", [42 x i8] zeroinitializer }, align 32
@tx_macro_component_probe.__key.151 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.152 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&(&tx->tx_hpf_work[i].dwork)->timer\00", [60 x i8] zeroinitializer }, align 32
@tx_macro_component_probe.__key.153 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.154 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"(work_completion)(&(&tx->tx_mute_dwork[i].dwork)->work)\00", [40 x i8] zeroinitializer }, align 32
@tx_macro_component_probe.__key.155 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.156 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"&(&tx->tx_mute_dwork[i].dwork)->timer\00", [58 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_macro_tx1\00", [19 x i8] zeroinitializer }, align 32
@tx_macro_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tx_macro_get_channel_map, ptr null, ptr null, ptr null, ptr @tx_macro_digital_mute, ptr null, ptr null, ptr @tx_macro_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_macro_tx2\00", [19 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tx_macro_tx3\00", [19 x i8] zeroinitializer }, align 32
@tx_macro_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.8, i32 1076, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Invalid TX sample rate: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tx_macro_hw_params\00", [45 x i8] zeroinitializer }, align 32
@tx_macro_hw_params._entry_ptr = internal global ptr @tx_macro_hw_params._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 208, i64 212]
@__sancov_gen_cov_switch_values.162 = internal global [141 x i64] [i64 139, i64 32, i64 0, i64 4, i64 8, i64 128, i64 132, i64 136, i64 144, i64 148, i64 152, i64 164, i64 168, i64 172, i64 192, i64 196, i64 200, i64 204, i64 208, i64 212, i64 256, i64 260, i64 264, i64 268, i64 272, i64 276, i64 280, i64 284, i64 288, i64 292, i64 296, i64 300, i64 304, i64 308, i64 312, i64 316, i64 512, i64 516, i64 520, i64 524, i64 528, i64 532, i64 536, i64 540, i64 544, i64 548, i64 552, i64 556, i64 560, i64 564, i64 568, i64 572, i64 1024, i64 1028, i64 1032, i64 1036, i64 1040, i64 1044, i64 1048, i64 1052, i64 1056, i64 1060, i64 1064, i64 1068, i64 1152, i64 1156, i64 1160, i64 1164, i64 1168, i64 1172, i64 1176, i64 1180, i64 1184, i64 1188, i64 1192, i64 1280, i64 1284, i64 1288, i64 1292, i64 1296, i64 1300, i64 1304, i64 1308, i64 1312, i64 1316, i64 1320, i64 1408, i64 1412, i64 1416, i64 1420, i64 1424, i64 1428, i64 1432, i64 1436, i64 1440, i64 1444, i64 1448, i64 1536, i64 1540, i64 1544, i64 1548, i64 1552, i64 1556, i64 1560, i64 1564, i64 1568, i64 1572, i64 1576, i64 1664, i64 1668, i64 1672, i64 1676, i64 1680, i64 1684, i64 1688, i64 1692, i64 1696, i64 1700, i64 1704, i64 1792, i64 1796, i64 1800, i64 1804, i64 1808, i64 1812, i64 1816, i64 1820, i64 1824, i64 1828, i64 1832, i64 1920, i64 1924, i64 1928, i64 1932, i64 1936, i64 1940, i64 1944, i64 1948, i64 1952, i64 1956, i64 1960]
@__sancov_gen_cov_switch_values.163 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.164 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.165 = internal global [9 x i64] [i64 7, i64 32, i64 8000, i64 16000, i64 32000, i64 48000, i64 96000, i64 192000, i64 384000]
@___asan_gen_.166 = private unnamed_addr constant [16 x i8] c"tx_macro_driver\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1869, i32 31 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1871, i32 11 }
@___asan_gen_.172 = private unnamed_addr constant [18 x i8] c"tx_macro_dt_match\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1863, i32 34 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1793, i32 19 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1794, i32 19 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1795, i32 19 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1796, i32 19 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1797, i32 19 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1801, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1810, i32 34 }
@___asan_gen_.211 = private unnamed_addr constant [12 x i8] c"tx_defaults\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 275, i32 27 }
@___asan_gen_.214 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"tx_regmap_config\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 579, i32 35 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1823, i32 15 }
@___asan_gen_.223 = private unnamed_addr constant [23 x i8] c"tx_macro_component_drv\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1770, i32 46 }
@___asan_gen_.226 = private unnamed_addr constant [13 x i8] c"tx_macro_dai\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1133, i32 34 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1747, i32 25 }
@___asan_gen_.232 = private unnamed_addr constant [15 x i8] c"swclk_gate_ops\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1734, i32 29 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 614, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1771, i32 10 }
@___asan_gen_.247 = private unnamed_addr constant [22 x i8] c"tx_macro_snd_controls\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1599, i32 38 }
@___asan_gen_.250 = private unnamed_addr constant [13 x i8] c"tx_audio_map\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1433, i32 40 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1600, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant [13 x i8] c"digital_gain\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 273, i32 14 }
@___asan_gen_.259 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1603, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1606, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1609, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1612, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1615, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1618, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1621, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1625, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant [18 x i8] c"dec_mode_mux_enum\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1259, i32 30 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1628, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1631, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1634, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1637, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1640, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1643, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1646, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1649, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [18 x i8] c"dec_mode_mux_text\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1255, i32 27 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1256, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1256, i32 17 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1256, i32 32 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1336, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1339, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1342, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1345, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant [18 x i8] c"tx_aif1_cap_mixer\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1278, i32 38 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1348, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant [18 x i8] c"tx_aif2_cap_mixer\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1297, i32 38 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1351, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [18 x i8] c"tx_aif3_cap_mixer\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1316, i32 38 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1354, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant [13 x i8] c"tx_smic0_mux\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1238, i32 38 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1355, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant [13 x i8] c"tx_smic1_mux\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1240, i32 38 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1356, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant [13 x i8] c"tx_smic2_mux\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1242, i32 38 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1357, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant [13 x i8] c"tx_smic3_mux\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1244, i32 38 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1358, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant [13 x i8] c"tx_smic4_mux\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1246, i32 38 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1359, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant [13 x i8] c"tx_smic5_mux\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1248, i32 38 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1360, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant [13 x i8] c"tx_smic6_mux\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1250, i32 38 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1361, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant [13 x i8] c"tx_smic7_mux\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1252, i32 38 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1363, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1364, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1365, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1366, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1367, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1368, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1369, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1370, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1371, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1372, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1373, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1374, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1376, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant [12 x i8] c"tx_dec0_mux\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1199, i32 38 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1382, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant [12 x i8] c"tx_dec1_mux\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1200, i32 38 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1388, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant [12 x i8] c"tx_dec2_mux\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1201, i32 38 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1394, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant [12 x i8] c"tx_dec3_mux\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1202, i32 38 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1400, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant [12 x i8] c"tx_dec4_mux\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1203, i32 38 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1406, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant [12 x i8] c"tx_dec5_mux\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1204, i32 38 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1412, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant [12 x i8] c"tx_dec6_mux\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1205, i32 38 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1418, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant [12 x i8] c"tx_dec7_mux\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1206, i32 38 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1424, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1427, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1429, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant [22 x i8] c"tx_macro_dapm_widgets\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1335, i32 41 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1279, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1281, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1283, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1285, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1287, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1289, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1291, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1293, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.543 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.544 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.545 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.546 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.547 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.548 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.549 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.550 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.551 = private unnamed_addr constant [21 x i8] c".compoundliteral.110\00", align 1
@___asan_gen_.552 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.553 = private unnamed_addr constant [21 x i8] c".compoundliteral.112\00", align 1
@___asan_gen_.554 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.555 = private unnamed_addr constant [21 x i8] c".compoundliteral.114\00", align 1
@___asan_gen_.556 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.557 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.558 = private unnamed_addr constant [21 x i8] c".compoundliteral.117\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1238, i32 53 }
@___asan_gen_.562 = private unnamed_addr constant [14 x i8] c"tx_smic0_enum\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1214, i32 8 }
@___asan_gen_.565 = private unnamed_addr constant [14 x i8] c"smic_mux_text\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1208, i32 27 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1209, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1209, i32 10 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1209, i32 18 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1209, i32 26 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1209, i32 34 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1209, i32 42 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1210, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1210, i32 15 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1210, i32 28 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1210, i32 41 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1211, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1211, i32 15 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1211, i32 28 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1240, i32 53 }
@___asan_gen_.610 = private unnamed_addr constant [14 x i8] c"tx_smic1_enum\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1217, i32 8 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1242, i32 53 }
@___asan_gen_.616 = private unnamed_addr constant [14 x i8] c"tx_smic2_enum\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1220, i32 8 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1244, i32 53 }
@___asan_gen_.622 = private unnamed_addr constant [14 x i8] c"tx_smic3_enum\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1223, i32 8 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1246, i32 53 }
@___asan_gen_.628 = private unnamed_addr constant [14 x i8] c"tx_smic4_enum\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1226, i32 8 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1248, i32 53 }
@___asan_gen_.634 = private unnamed_addr constant [14 x i8] c"tx_smic5_enum\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1229, i32 8 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1250, i32 53 }
@___asan_gen_.640 = private unnamed_addr constant [14 x i8] c"tx_smic6_enum\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1232, i32 8 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1252, i32 53 }
@___asan_gen_.646 = private unnamed_addr constant [14 x i8] c"tx_smic7_enum\00", align 1
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1235, i32 8 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1199, i32 52 }
@___asan_gen_.652 = private unnamed_addr constant [13 x i8] c"tx_dec0_enum\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1182, i32 8 }
@___asan_gen_.655 = private unnamed_addr constant [13 x i8] c"adc_mux_text\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1178, i32 27 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1179, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1179, i32 14 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1179, i32 25 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1200, i32 52 }
@___asan_gen_.670 = private unnamed_addr constant [13 x i8] c"tx_dec1_enum\00", align 1
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1184, i32 8 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1201, i32 52 }
@___asan_gen_.676 = private unnamed_addr constant [13 x i8] c"tx_dec2_enum\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1186, i32 8 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1202, i32 52 }
@___asan_gen_.682 = private unnamed_addr constant [13 x i8] c"tx_dec3_enum\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1188, i32 8 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1203, i32 52 }
@___asan_gen_.688 = private unnamed_addr constant [13 x i8] c"tx_dec4_enum\00", align 1
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1190, i32 8 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1204, i32 52 }
@___asan_gen_.694 = private unnamed_addr constant [13 x i8] c"tx_dec5_enum\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1192, i32 8 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1205, i32 52 }
@___asan_gen_.700 = private unnamed_addr constant [13 x i8] c"tx_dec6_enum\00", align 1
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1194, i32 8 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1206, i32 52 }
@___asan_gen_.706 = private unnamed_addr constant [13 x i8] c"tx_dec7_enum\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1196, i32 8 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1663, i32 3 }
@___asan_gen_.727 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1670, i32 3 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1135, i32 11 }
@___asan_gen_.736 = private unnamed_addr constant [17 x i8] c"tx_macro_dai_ops\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1127, i32 37 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1149, i32 11 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1163, i32 11 }
@___asan_gen_.745 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.751 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.752 = private constant [37 x i8] c"../sound/soc/codecs/lpass-tx-macro.c\00", align 1
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.752, i32 1075, i32 3 }
@llvm.compiler.used = appending global [227 x ptr] [ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_tx_macro_driver_exit, ptr @__initcall__kmod_snd_soc_lpass_tx_macro__238_1879_tx_macro_driver_init6, ptr @tx_macro_driver_exit, ptr @tx_macro_hw_params._entry, ptr @tx_macro_hw_params._entry_ptr, ptr @tx_macro_mclk_enable._entry, ptr @tx_macro_mclk_enable._entry_ptr, ptr @tx_macro_probe._entry, ptr @tx_macro_probe._entry_ptr, ptr @tx_macro_driver, ptr @.str, ptr @tx_macro_dt_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @tx_defaults, ptr @tx_macro_probe._key, ptr @tx_regmap_config, ptr @.str.12, ptr @tx_macro_component_drv, ptr @tx_macro_dai, ptr @.str.13, ptr @swclk_gate_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @tx_macro_snd_controls, ptr @tx_audio_map, ptr @.str.17, ptr @digital_gain, ptr @.compoundliteral, ptr @.str.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @dec_mode_mux_enum, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.compoundliteral.41, ptr @dec_mode_mux_text, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @tx_aif1_cap_mixer, ptr @.str.52, ptr @tx_aif2_cap_mixer, ptr @.str.53, ptr @tx_aif3_cap_mixer, ptr @.str.54, ptr @tx_smic0_mux, ptr @.str.55, ptr @tx_smic1_mux, ptr @.str.56, ptr @tx_smic2_mux, ptr @.str.57, ptr @tx_smic3_mux, ptr @.str.58, ptr @tx_smic4_mux, ptr @.str.59, ptr @tx_smic5_mux, ptr @.str.60, ptr @tx_smic6_mux, ptr @.str.61, ptr @tx_smic7_mux, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @tx_dec0_mux, ptr @.str.75, ptr @tx_dec1_mux, ptr @.str.76, ptr @tx_dec2_mux, ptr @.str.77, ptr @tx_dec3_mux, ptr @.str.78, ptr @tx_dec4_mux, ptr @.str.79, ptr @tx_dec5_mux, ptr @.str.80, ptr @tx_dec6_mux, ptr @.str.81, ptr @tx_dec7_mux, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @tx_macro_dapm_widgets, ptr @.str.86, ptr @.compoundliteral.87, ptr @.str.88, ptr @.compoundliteral.89, ptr @.str.90, ptr @.compoundliteral.91, ptr @.str.92, ptr @.compoundliteral.93, ptr @.str.94, ptr @.compoundliteral.95, ptr @.str.96, ptr @.compoundliteral.97, ptr @.str.98, ptr @.compoundliteral.99, ptr @.str.100, ptr @.compoundliteral.101, ptr @.compoundliteral.102, ptr @.compoundliteral.103, ptr @.compoundliteral.104, ptr @.compoundliteral.105, ptr @.compoundliteral.106, ptr @.compoundliteral.107, ptr @.compoundliteral.108, ptr @.compoundliteral.109, ptr @.compoundliteral.110, ptr @.compoundliteral.111, ptr @.compoundliteral.112, ptr @.compoundliteral.113, ptr @.compoundliteral.114, ptr @.compoundliteral.115, ptr @.compoundliteral.116, ptr @.compoundliteral.117, ptr @.str.118, ptr @tx_smic0_enum, ptr @smic_mux_text, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @tx_smic1_enum, ptr @.str.133, ptr @tx_smic2_enum, ptr @.str.134, ptr @tx_smic3_enum, ptr @.str.135, ptr @tx_smic4_enum, ptr @.str.136, ptr @tx_smic5_enum, ptr @.str.137, ptr @tx_smic6_enum, ptr @.str.138, ptr @tx_smic7_enum, ptr @.str.139, ptr @tx_dec0_enum, ptr @adc_mux_text, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @tx_dec1_enum, ptr @.str.144, ptr @tx_dec2_enum, ptr @.str.145, ptr @tx_dec3_enum, ptr @.str.146, ptr @tx_dec4_enum, ptr @.str.147, ptr @tx_dec5_enum, ptr @.str.148, ptr @tx_dec6_enum, ptr @.str.149, ptr @tx_dec7_enum, ptr @tx_macro_component_probe.__key, ptr @.str.150, ptr @tx_macro_component_probe.__key.151, ptr @.str.152, ptr @tx_macro_component_probe.__key.153, ptr @.str.154, ptr @tx_macro_component_probe.__key.155, ptr @.str.156, ptr @.str.157, ptr @tx_macro_dai_ops, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161], section "llvm.metadata"
@0 = internal global [218 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_macro_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_macro_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_macro_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_defaults to i32), i32 1112, i32 1376, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_macro_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_macro_component_drv to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_macro_dai to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swclk_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_macro_mclk_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_macro_snd_controls to i32), i32 816, i32 1024, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_audio_map to i32), i32 7800, i32 9728, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_gain to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dec_mode_mux_enum to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dec_mode_mux_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_aif1_cap_mixer to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_aif2_cap_mixer to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_aif3_cap_mixer to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_smic0_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_smic1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_smic2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_smic3_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_smic4_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_smic5_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_smic6_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_smic7_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_dec0_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_dec1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_dec2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_dec3_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_dec4_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_dec5_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_dec6_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_dec7_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_macro_dapm_widgets to i32), i32 6660, i32 8352, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.110 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.112 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.114 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.117 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_smic0_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smic_mux_text to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_smic1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_smic2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_smic3_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_smic4_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_smic5_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_smic6_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_smic7_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_dec0_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_mux_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_dec1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_dec2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_dec3_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_dec4_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_dec5_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_dec6_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_dec7_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_macro_component_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_macro_component_probe.__key.151 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_macro_component_probe.__key.153 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_macro_component_probe.__key.155 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_macro_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_macro_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_macro_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tx_macro_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tx_macro_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @tx_macro_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_macro_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %parent_clk_name.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1896, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %clks = getelementptr inbounds %struct.tx_macro, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.1, ptr %clks, align 4
  %arrayidx3 = getelementptr %struct.tx_macro, ptr %call.i, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.2, ptr %arrayidx3, align 4
  %arrayidx6 = getelementptr %struct.tx_macro, ptr %call.i, i32 0, i32 8, i32 2
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.3, ptr %arrayidx6, align 4
  %arrayidx9 = getelementptr %struct.tx_macro, ptr %call.i, i32 0, i32 8, i32 3
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.4, ptr %arrayidx9, align 4
  %arrayidx12 = getelementptr %struct.tx_macro, ptr %call.i, i32 0, i32 8, i32 4
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.5, ptr %arrayidx12, align 4
  %call15 = tail call i32 @devm_clk_bulk_get_optional(ptr noundef %dev1, i32 noundef 5, ptr noundef %clks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef %call15) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %call19 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %call24 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.if.end30_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  br label %for.body

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end23.for.body_crit_edge
  %reg.099 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end23.for.body_crit_edge ]
  %arrayidx27 = getelementptr [139 x %struct.reg_default], ptr @tx_defaults, i32 0, i32 %reg.099
  %8 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx27, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %for.body.for.inc_crit_edge [
    i32 208, label %for.body.sw.bb_crit_edge
    i32 212, label %for.body.sw.bb_crit_edge101
  ]

for.body.sw.bb_crit_edge101:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

for.body.sw.bb_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb:                                            ; preds = %for.body.sw.bb_crit_edge, %for.body.sw.bb_crit_edge101
  %def = getelementptr [139 x %struct.reg_default], ptr @tx_defaults, i32 0, i32 %reg.099, i32 1
  %11 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 14, ptr %def, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.bb, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %reg.099, 1
  %exitcond.not = icmp eq i32 %inc, 139
  br i1 %exitcond.not, label %for.inc.if.end30_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.end30_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.end30:                                         ; preds = %for.inc.if.end30_crit_edge, %if.end23.if.end30_crit_edge
  %call31 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call19, ptr noundef nonnull @tx_regmap_config, ptr noundef nonnull @tx_macro_probe._key, ptr noundef nonnull @.str.12) #9
  %regmap = getelementptr inbounds %struct.tx_macro, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call31, ptr %regmap, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i, align 4
  %reset_swr = getelementptr inbounds %struct.tx_macro, ptr %call.i, i32 0, i32 11
  %14 = ptrtoint ptr %reset_swr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %reset_swr, align 4
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev1, ptr %call.i, align 4
  %clk = getelementptr %struct.tx_macro, ptr %call.i, i32 0, i32 8, i32 2, i32 1
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  %call35 = tail call i32 @clk_set_rate(ptr noundef %17, i32 noundef 9600000) #9
  %clk38 = getelementptr %struct.tx_macro, ptr %call.i, i32 0, i32 8, i32 3, i32 1
  %18 = ptrtoint ptr %clk38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk38, align 4
  %call39 = tail call i32 @clk_set_rate(ptr noundef %19, i32 noundef 19200000) #9
  %call.i93 = tail call i32 @clk_bulk_prepare(i32 noundef 5, ptr noundef %clks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool.not.i = icmp eq i32 %call.i93, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end30
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef 5, ptr noundef %clks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end45, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %clks) #9
  br label %cleanup

if.end45:                                         ; preds = %if.end.i
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_clk_name.i) #9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #9
  %24 = getelementptr inbounds i8, ptr %init.i, i32 12
  %25 = call ptr @memset(ptr %24, i32 255, i32 12)
  %26 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk, align 4
  %call.i94 = tail call ptr @__clk_get_name(ptr noundef %27) #9
  %28 = ptrtoint ptr %parent_clk_name.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i94, ptr %parent_clk_name.i, align 4
  %29 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.13, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @swclk_gate_ops, ptr %ops.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %flags.i, align 4
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %32 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %parent_clk_name.i, ptr %parent_names.i, align 4
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %33 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %num_parents.i, align 4
  %hw2.i = getelementptr inbounds %struct.tx_macro, ptr %call.i, i32 0, i32 9
  %init3.i = getelementptr inbounds %struct.tx_macro, ptr %call.i, i32 0, i32 9, i32 2
  %34 = ptrtoint ptr %init3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %init.i, ptr %init3.i, align 4
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  %call6.i = call i32 @clk_hw_register(ptr noundef %36, ptr noundef %hw2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i95 = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i95, label %if.end.i96, label %if.end45.tx_macro_register_mclk_output.exit_crit_edge

if.end45.tx_macro_register_mclk_output.exit_crit_edge: ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %tx_macro_register_mclk_output.exit

if.end.i96:                                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %clk8.i = getelementptr inbounds %struct.tx_macro, ptr %call.i, i32 0, i32 9, i32 1
  %37 = ptrtoint ptr %clk8.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clk8.i, align 4
  %call9.i = call i32 @of_clk_add_provider(ptr noundef %23, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %38) #9
  br label %tx_macro_register_mclk_output.exit

tx_macro_register_mclk_output.exit:               ; preds = %if.end.i96, %if.end45.tx_macro_register_mclk_output.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_clk_name.i) #9
  %call47 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @tx_macro_component_drv, ptr noundef nonnull @tx_macro_dai, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %tx_macro_register_mclk_output.exit.cleanup_crit_edge, label %err

tx_macro_register_mclk_output.exit.cleanup_crit_edge: ; preds = %tx_macro_register_mclk_output.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err:                                              ; preds = %tx_macro_register_mclk_output.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_bulk_disable(i32 noundef 5, ptr noundef %clks) #9
  call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %clks) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %tx_macro_register_mclk_output.exit.cleanup_crit_edge, %if.then3.i, %if.end30.cleanup_crit_edge, %if.then21, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %do.end ], [ %7, %if.then21 ], [ %call47, %err ], [ -12, %entry.cleanup_crit_edge ], [ 0, %tx_macro_register_mclk_output.exit.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i93, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_macro_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %3) #9
  %clks = getelementptr inbounds %struct.tx_macro, ptr %1, i32 0, i32 8
  tail call void @clk_bulk_disable(i32 noundef 5, ptr noundef %clks) #9
  tail call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %clks) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_optional(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tx_is_rw_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %reg, label %sw.epilog [
    i32 0, label %entry.return_crit_edge
    i32 4, label %entry.return_crit_edge1
    i32 8, label %entry.return_crit_edge2
    i32 128, label %entry.return_crit_edge3
    i32 132, label %entry.return_crit_edge4
    i32 136, label %entry.return_crit_edge5
    i32 144, label %entry.return_crit_edge6
    i32 148, label %entry.return_crit_edge7
    i32 152, label %entry.return_crit_edge8
    i32 164, label %entry.return_crit_edge9
    i32 168, label %entry.return_crit_edge10
    i32 172, label %entry.return_crit_edge11
    i32 192, label %entry.return_crit_edge12
    i32 196, label %entry.return_crit_edge13
    i32 200, label %entry.return_crit_edge14
    i32 204, label %entry.return_crit_edge15
    i32 208, label %entry.return_crit_edge16
    i32 212, label %entry.return_crit_edge17
    i32 512, label %entry.return_crit_edge18
    i32 516, label %entry.return_crit_edge19
    i32 520, label %entry.return_crit_edge20
    i32 524, label %entry.return_crit_edge21
    i32 528, label %entry.return_crit_edge22
    i32 532, label %entry.return_crit_edge23
    i32 536, label %entry.return_crit_edge24
    i32 540, label %entry.return_crit_edge25
    i32 544, label %entry.return_crit_edge26
    i32 548, label %entry.return_crit_edge27
    i32 552, label %entry.return_crit_edge28
    i32 556, label %entry.return_crit_edge29
    i32 560, label %entry.return_crit_edge30
    i32 564, label %entry.return_crit_edge31
    i32 568, label %entry.return_crit_edge32
    i32 572, label %entry.return_crit_edge33
    i32 256, label %entry.return_crit_edge34
    i32 260, label %entry.return_crit_edge35
    i32 264, label %entry.return_crit_edge36
    i32 268, label %entry.return_crit_edge37
    i32 272, label %entry.return_crit_edge38
    i32 276, label %entry.return_crit_edge39
    i32 280, label %entry.return_crit_edge40
    i32 284, label %entry.return_crit_edge41
    i32 288, label %entry.return_crit_edge42
    i32 292, label %entry.return_crit_edge43
    i32 296, label %entry.return_crit_edge44
    i32 300, label %entry.return_crit_edge45
    i32 304, label %entry.return_crit_edge46
    i32 308, label %entry.return_crit_edge47
    i32 312, label %entry.return_crit_edge48
    i32 316, label %entry.return_crit_edge49
    i32 1024, label %entry.return_crit_edge50
    i32 1028, label %entry.return_crit_edge51
    i32 1032, label %entry.return_crit_edge52
    i32 1036, label %entry.return_crit_edge53
    i32 1040, label %entry.return_crit_edge54
    i32 1044, label %entry.return_crit_edge55
    i32 1048, label %entry.return_crit_edge56
    i32 1052, label %entry.return_crit_edge57
    i32 1056, label %entry.return_crit_edge58
    i32 1060, label %entry.return_crit_edge59
    i32 1064, label %entry.return_crit_edge60
    i32 1068, label %entry.return_crit_edge61
    i32 1152, label %entry.return_crit_edge62
    i32 1156, label %entry.return_crit_edge63
    i32 1160, label %entry.return_crit_edge64
    i32 1164, label %entry.return_crit_edge65
    i32 1168, label %entry.return_crit_edge66
    i32 1172, label %entry.return_crit_edge67
    i32 1176, label %entry.return_crit_edge68
    i32 1180, label %entry.return_crit_edge69
    i32 1184, label %entry.return_crit_edge70
    i32 1188, label %entry.return_crit_edge71
    i32 1192, label %entry.return_crit_edge72
    i32 1280, label %entry.return_crit_edge73
    i32 1284, label %entry.return_crit_edge74
    i32 1288, label %entry.return_crit_edge75
    i32 1292, label %entry.return_crit_edge76
    i32 1296, label %entry.return_crit_edge77
    i32 1300, label %entry.return_crit_edge78
    i32 1304, label %entry.return_crit_edge79
    i32 1308, label %entry.return_crit_edge80
    i32 1312, label %entry.return_crit_edge81
    i32 1316, label %entry.return_crit_edge82
    i32 1320, label %entry.return_crit_edge83
    i32 1408, label %entry.return_crit_edge84
    i32 1412, label %entry.return_crit_edge85
    i32 1416, label %entry.return_crit_edge86
    i32 1420, label %entry.return_crit_edge87
    i32 1424, label %entry.return_crit_edge88
    i32 1428, label %entry.return_crit_edge89
    i32 1432, label %entry.return_crit_edge90
    i32 1436, label %entry.return_crit_edge91
    i32 1440, label %entry.return_crit_edge92
    i32 1444, label %entry.return_crit_edge93
    i32 1448, label %entry.return_crit_edge94
    i32 1536, label %entry.return_crit_edge95
    i32 1540, label %entry.return_crit_edge96
    i32 1544, label %entry.return_crit_edge97
    i32 1548, label %entry.return_crit_edge98
    i32 1552, label %entry.return_crit_edge99
    i32 1556, label %entry.return_crit_edge100
    i32 1560, label %entry.return_crit_edge101
    i32 1564, label %entry.return_crit_edge102
    i32 1568, label %entry.return_crit_edge103
    i32 1572, label %entry.return_crit_edge104
    i32 1576, label %entry.return_crit_edge105
    i32 1664, label %entry.return_crit_edge106
    i32 1668, label %entry.return_crit_edge107
    i32 1672, label %entry.return_crit_edge108
    i32 1676, label %entry.return_crit_edge109
    i32 1680, label %entry.return_crit_edge110
    i32 1684, label %entry.return_crit_edge111
    i32 1688, label %entry.return_crit_edge112
    i32 1692, label %entry.return_crit_edge113
    i32 1696, label %entry.return_crit_edge114
    i32 1700, label %entry.return_crit_edge115
    i32 1704, label %entry.return_crit_edge116
    i32 1792, label %entry.return_crit_edge117
    i32 1796, label %entry.return_crit_edge118
    i32 1800, label %entry.return_crit_edge119
    i32 1804, label %entry.return_crit_edge120
    i32 1808, label %entry.return_crit_edge121
    i32 1812, label %entry.return_crit_edge122
    i32 1816, label %entry.return_crit_edge123
    i32 1820, label %entry.return_crit_edge124
    i32 1824, label %entry.return_crit_edge125
    i32 1828, label %entry.return_crit_edge126
    i32 1832, label %entry.return_crit_edge127
    i32 1920, label %entry.return_crit_edge128
    i32 1924, label %entry.return_crit_edge129
    i32 1928, label %entry.return_crit_edge130
    i32 1932, label %entry.return_crit_edge131
    i32 1936, label %entry.return_crit_edge132
    i32 1940, label %entry.return_crit_edge133
    i32 1944, label %entry.return_crit_edge134
    i32 1948, label %entry.return_crit_edge135
    i32 1952, label %entry.return_crit_edge136
    i32 1956, label %entry.return_crit_edge137
    i32 1960, label %entry.return_crit_edge138
  ]

entry.return_crit_edge138:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge134:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge133:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge132:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge131:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge129:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge128:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge127:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge126:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge125:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge124:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge123:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge122:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge121:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge119:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge118:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge117:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge116:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110, %entry.return_crit_edge111, %entry.return_crit_edge112, %entry.return_crit_edge113, %entry.return_crit_edge114, %entry.return_crit_edge115, %entry.return_crit_edge116, %entry.return_crit_edge117, %entry.return_crit_edge118, %entry.return_crit_edge119, %entry.return_crit_edge120, %entry.return_crit_edge121, %entry.return_crit_edge122, %entry.return_crit_edge123, %entry.return_crit_edge124, %entry.return_crit_edge125, %entry.return_crit_edge126, %entry.return_crit_edge127, %entry.return_crit_edge128, %entry.return_crit_edge129, %entry.return_crit_edge130, %entry.return_crit_edge131, %entry.return_crit_edge132, %entry.return_crit_edge133, %entry.return_crit_edge134, %entry.return_crit_edge135, %entry.return_crit_edge136, %entry.return_crit_edge137, %entry.return_crit_edge138
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ], [ true, %entry.return_crit_edge111 ], [ true, %entry.return_crit_edge112 ], [ true, %entry.return_crit_edge113 ], [ true, %entry.return_crit_edge114 ], [ true, %entry.return_crit_edge115 ], [ true, %entry.return_crit_edge116 ], [ true, %entry.return_crit_edge117 ], [ true, %entry.return_crit_edge118 ], [ true, %entry.return_crit_edge119 ], [ true, %entry.return_crit_edge120 ], [ true, %entry.return_crit_edge121 ], [ true, %entry.return_crit_edge122 ], [ true, %entry.return_crit_edge123 ], [ true, %entry.return_crit_edge124 ], [ true, %entry.return_crit_edge125 ], [ true, %entry.return_crit_edge126 ], [ true, %entry.return_crit_edge127 ], [ true, %entry.return_crit_edge128 ], [ true, %entry.return_crit_edge129 ], [ true, %entry.return_crit_edge130 ], [ true, %entry.return_crit_edge131 ], [ true, %entry.return_crit_edge132 ], [ true, %entry.return_crit_edge133 ], [ true, %entry.return_crit_edge134 ], [ true, %entry.return_crit_edge135 ], [ true, %entry.return_crit_edge136 ], [ true, %entry.return_crit_edge137 ], [ true, %entry.return_crit_edge138 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tx_is_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -192
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %switch = icmp ult i32 %1, 4
  ret i1 %switch
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @swclk_gate_enable(ptr nocapture noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -1828
  %regmap1 = getelementptr i8, ptr %hw, i32 -44
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  tail call fastcc void @tx_macro_mclk_enable(ptr noundef %add.ptr, i1 noundef zeroext true)
  %reset_swr = getelementptr i8, ptr %hw, i32 20
  %2 = ptrtoint ptr %reset_swr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reset_swr, align 4, !range !371
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 8, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i16 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 8, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %4 = ptrtoint ptr %reset_swr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reset_swr, align 4, !range !371
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 8, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %6 = ptrtoint ptr %reset_swr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %reset_swr, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @swclk_gate_disable(ptr nocapture noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr i8, ptr %hw, i32 -44
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 8, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %2 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap1, align 4
  %tx_mclk_users.i = getelementptr i8, ptr %hw, i32 24
  %4 = ptrtoint ptr %tx_mclk_users.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_mclk_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp8.i = icmp slt i32 %5, 1
  br i1 %cmp8.i, label %do.end.i, label %if.end11.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %hw, i32 -1828
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.14) #12
  %8 = ptrtoint ptr %tx_mclk_users.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tx_mclk_users.i, align 4
  br label %tx_macro_mclk_enable.exit

if.end11.i:                                       ; preds = %entry
  %dec.i = add nsw i32 %5, -1
  %9 = ptrtoint ptr %tx_mclk_users.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %dec.i, ptr %tx_mclk_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp14.i = icmp eq i32 %dec.i, 0
  br i1 %cmp14.i, label %if.then15.i, label %if.end11.i.tx_macro_mclk_enable.exit_crit_edge

if.end11.i.tx_macro_mclk_enable.exit_crit_edge:   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tx_macro_mclk_enable.exit

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i3.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i4.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %tx_macro_mclk_enable.exit

tx_macro_mclk_enable.exit:                        ; preds = %if.then15.i, %if.end11.i.tx_macro_mclk_enable.exit_crit_edge, %do.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @swclk_gate_is_enabled(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !372
  %regmap = getelementptr i8, ptr %hw, i32 -44
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 8, ptr noundef nonnull %val) #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %and
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @swclk_recalc_rate(ptr nocapture noundef readnone %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div1 = lshr i32 %parent_rate, 1
  ret i32 %div1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tx_macro_mclk_enable(ptr nocapture noundef %tx, i1 noundef zeroext %mclk_enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.tx_macro, ptr %tx, i32 0, i32 7
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %tx_mclk_users = getelementptr inbounds %struct.tx_macro, ptr %tx, i32 0, i32 12
  %2 = ptrtoint ptr %tx_mclk_users to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_mclk_users, align 4
  br i1 %mclk_enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 144, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i1 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i2 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 4, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @regcache_mark_dirty(ptr noundef %1) #9
  %call5 = tail call i32 @regcache_sync(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %4 = ptrtoint ptr %tx_mclk_users to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_mclk_users, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %tx_mclk_users, align 4
  br label %exit

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp8 = icmp slt i32 %3, 1
  br i1 %cmp8, label %do.end, label %if.end11

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.14) #12
  %8 = ptrtoint ptr %tx_mclk_users to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tx_mclk_users, align 4
  br label %exit

if.end11:                                         ; preds = %if.else
  %dec = add nsw i32 %3, -1
  %9 = ptrtoint ptr %tx_mclk_users to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %dec, ptr %tx_mclk_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp14 = icmp eq i32 %dec, 0
  br i1 %cmp14, label %if.then15, label %if.end11.exit_crit_edge

if.end11.exit_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call.i3 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i4 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %exit

exit:                                             ; preds = %if.then15, %if.end11.exit_crit_edge, %do.end, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_macro_component_probe(ptr noundef %comp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %comp, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.tx_macro, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @snd_soc_component_init_regmap(ptr noundef %comp, ptr noundef %5) #9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0132 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tx_macro, ptr %3, i32 0, i32 2, i32 %i.0132
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %arrayidx, align 4
  %conv = trunc i32 %i.0132 to i8
  %decimator = getelementptr %struct.tx_macro, ptr %3, i32 0, i32 2, i32 %i.0132, i32 1
  %7 = ptrtoint ptr %decimator to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %decimator, align 4
  %dwork = getelementptr %struct.tx_macro, ptr %3, i32 0, i32 2, i32 %i.0132, i32 3
  tail call void @__init_work(ptr noundef %dwork, i32 noundef 0) #9
  %8 = ptrtoint ptr %dwork to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %dwork, align 4
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %dwork, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.150, ptr noundef nonnull @tx_macro_component_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry19 = getelementptr inbounds %struct.work_struct, ptr %dwork, i32 0, i32 1
  %9 = ptrtoint ptr %entry19 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry19, ptr %entry19, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %dwork, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry19, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.work_struct, ptr %dwork, i32 0, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @tx_macro_tx_hpf_corner_freq_callback, ptr %func, align 4
  %timer = getelementptr %struct.tx_macro, ptr %3, i32 0, i32 2, i32 %i.0132, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.152, ptr noundef nonnull @tx_macro_component_probe.__key.151) #9
  %inc = add nuw nsw i32 %i.0132, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.body.for.body35_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.body35_crit_edge:                    ; preds = %for.body
  br label %for.body35

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %for.body.for.body35_crit_edge
  %i.1133 = phi i32 [ %inc81, %for.body35.for.body35_crit_edge ], [ 0, %for.body.for.body35_crit_edge ]
  %arrayidx36 = getelementptr %struct.tx_macro, ptr %3, i32 0, i32 3, i32 %i.1133
  %12 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %arrayidx36, align 4
  %decimator40 = getelementptr %struct.tx_macro, ptr %3, i32 0, i32 3, i32 %i.1133, i32 1
  %13 = ptrtoint ptr %decimator40 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %i.1133, ptr %decimator40, align 4
  %dwork45 = getelementptr %struct.tx_macro, ptr %3, i32 0, i32 3, i32 %i.1133, i32 2
  tail call void @__init_work(ptr noundef %dwork45, i32 noundef 0) #9
  %14 = ptrtoint ptr %dwork45 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %dwork45, align 4
  %lockdep_map58 = getelementptr inbounds %struct.work_struct, ptr %dwork45, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map58, ptr noundef nonnull @.str.154, ptr noundef nonnull @tx_macro_component_probe.__key.153, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry63 = getelementptr inbounds %struct.work_struct, ptr %dwork45, i32 0, i32 1
  %15 = ptrtoint ptr %entry63 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry63, ptr %entry63, align 4
  %prev.i131 = getelementptr inbounds %struct.work_struct, ptr %dwork45, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i131 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry63, ptr %prev.i131, align 4
  %func68 = getelementptr inbounds %struct.work_struct, ptr %dwork45, i32 0, i32 2
  %17 = ptrtoint ptr %func68 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @tx_macro_mute_update_callback, ptr %func68, align 4
  %timer75 = getelementptr %struct.tx_macro, ptr %3, i32 0, i32 3, i32 %i.1133, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer75, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.156, ptr noundef nonnull @tx_macro_component_probe.__key.155) #9
  %inc81 = add nuw nsw i32 %i.1133, 1
  %exitcond134.not = icmp eq i32 %inc81, 8
  br i1 %exitcond134.not, label %for.end82, label %for.body35.for.body35_crit_edge

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body35

for.end82:                                        ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #11
  %component = getelementptr inbounds %struct.tx_macro, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %component to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %comp, ptr %component, align 4
  %call83 = tail call i32 @snd_soc_component_update_bits(ptr noundef %comp, i32 noundef 1068, i32 noundef 63, i32 noundef 10) #9
  %call84 = tail call i32 @snd_soc_component_update_bits(ptr noundef %comp, i32 noundef 208, i32 noundef 255, i32 noundef 0) #9
  %call85 = tail call i32 @snd_soc_component_update_bits(ptr noundef %comp, i32 noundef 212, i32 noundef 255, i32 noundef 0) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tx_macro_dec_mode_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %shift_l = getelementptr inbounds %struct.soc_enum, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %shift_l to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %shift_l, align 4
  %conv = zext i8 %10 to i32
  %arrayidx = getelementptr %struct.tx_macro, ptr %5, i32 0, i32 15, i32 %conv
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tx_macro_dec_mode_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value1, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %6 = inttoptr i32 %5 to ptr
  %shift_l = getelementptr inbounds %struct.soc_enum, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %shift_l to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %shift_l, align 4
  %conv = zext i8 %8 to i32
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx3 = getelementptr %struct.tx_macro, ptr %12, i32 0, i32 15, i32 %conv
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %3, ptr %arrayidx3, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tx_macro_get_bcs(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %bcs_enable = getelementptr inbounds %struct.tx_macro, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %bcs_enable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bcs_enable, align 2, !range !371
  %8 = zext i8 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tx_macro_set_bcs(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value1, align 8
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  %bcs_enable = getelementptr inbounds %struct.tx_macro, ptr %7, i32 0, i32 14
  %frombool = zext i1 %tobool to i8
  %8 = ptrtoint ptr %bcs_enable to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %bcs_enable, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_macro_enable_dec(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift, align 4
  %conv = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %conv, 7
  %8 = trunc i32 %mul to i16
  %conv2 = add nuw i16 %8, 1024
  %conv5 = add nuw i16 %8, 1048
  %conv8 = add nuw i16 %8, 1028
  %conv11 = add nuw nsw i32 %mul, 1036
  %9 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb41
    i32 4, label %sw.bb98
    i32 8, label %sw.bb131
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %mul12 = shl nuw nsw i32 %conv, 3
  %conv14 = add nuw nsw i32 %mul12, 260
  %call16 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %conv14) #9
  %and = and i32 %call16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.if.end36_crit_edge, label %if.then

sw.bb.if.end36_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then:                                          ; preds = %sw.bb
  %conv19 = add nuw nsw i32 %mul12, 256
  %call21 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %conv19) #9
  %conv23 = and i32 %call21, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv23)
  %cmp = icmp ugt i32 %conv23, 4
  br i1 %cmp, label %if.then26, label %if.then.if.end36_crit_edge

if.then.if.end36_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then26:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %div280.lhs.trunc = shl nuw nsw i32 %conv23, 1
  %10 = add nuw nsw i32 %div280.lhs.trunc, 502
  %11 = and i32 %10, 508
  %conv32 = add nuw nsw i32 %11, 192
  %dmic_clk_div = getelementptr inbounds %struct.tx_macro, ptr %5, i32 0, i32 13
  %12 = ptrtoint ptr %dmic_clk_div to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dmic_clk_div, align 4
  %conv34 = zext i16 %13 to i32
  %call35 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef %conv32, i32 noundef 14, i32 noundef %conv34) #9
  br label %if.end36

if.end36:                                         ; preds = %if.then26, %if.then.if.end36_crit_edge, %sw.bb.if.end36_crit_edge
  %conv37 = zext i16 %conv8 to i32
  %arrayidx = getelementptr %struct.tx_macro, ptr %5, i32 0, i32 15, i32 %conv
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %call38 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef %conv37, i32 noundef 6, i32 noundef %15) #9
  %conv39 = zext i16 %conv2 to i32
  %call40 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef %conv39, i32 noundef 16, i32 noundef 1) #9
  br label %sw.epilog

sw.bb41:                                          ; preds = %entry
  %conv42 = zext i16 %conv2 to i32
  %call43 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef %conv42, i32 noundef 32, i32 noundef 1) #9
  %mul.i = shl nuw nsw i32 %conv, 3
  %conv.i = add nuw nsw i32 %mul.i, 260
  %call.i = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %conv.i) #9
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb41.if.then45_crit_edge, label %if.then.i

sw.bb41.if.then45_crit_edge:                      ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then45

if.then.i:                                        ; preds = %sw.bb41
  %conv4.i = add nuw nsw i32 %mul.i, 256
  %call6.i = tail call i32 @snd_soc_component_read_field(ptr noundef %add.ptr.i, i32 noundef %conv4.i, i32 noundef 15) #9
  %conv8.i = and i32 %call6.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv8.i)
  %cmp.i = icmp ult i32 %conv8.i, 5
  br i1 %cmp.i, label %if.then.i.if.end48_crit_edge, label %if.then.i.if.then45_crit_edge

if.then.i.if.then45_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then45

if.then.i.if.end48_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then45:                                        ; preds = %if.then.i.if.then45_crit_edge, %sw.bb41.if.then45_crit_edge
  %conv46 = zext i16 %conv5 to i32
  %call47 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv46, i32 noundef 1, i32 noundef 0) #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1010, i32 noundef 2) #9
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.then.i.if.end48_crit_edge
  %conv49 = zext i16 %conv8 to i32
  %call50 = tail call i32 @snd_soc_component_read_field(ptr noundef %add.ptr.i, i32 noundef %conv49, i32 noundef 96) #9
  %conv51 = trunc i32 %call50 to i8
  %hpf_cut_off_freq53 = getelementptr %struct.tx_macro, ptr %5, i32 0, i32 2, i32 %conv, i32 2
  %16 = ptrtoint ptr %hpf_cut_off_freq53 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv51, ptr %hpf_cut_off_freq53, align 1
  %conv54 = and i32 %call50, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv54)
  %cmp55.not = icmp eq i32 %conv54, 2
  br i1 %cmp55.not, label %if.end48.if.end60_crit_edge, label %if.then57

if.end48.if.end60_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then57:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %call59 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef %conv49, i32 noundef 96, i32 noundef 2) #9
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end48.if.end60_crit_edge
  %call.i232 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %conv.i) #9
  %and.i233 = and i32 %call.i232, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i233)
  %tobool.not.i234 = icmp eq i32 %and.i233, 0
  br i1 %tobool.not.i234, label %if.end60.is_amic_enabled.exit243_crit_edge, label %if.then.i240

if.end60.is_amic_enabled.exit243_crit_edge:       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %is_amic_enabled.exit243

if.then.i240:                                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %conv4.i235 = add nuw nsw i32 %mul.i, 256
  %call6.i237 = tail call i32 @snd_soc_component_read_field(ptr noundef %add.ptr.i, i32 noundef %conv4.i235, i32 noundef 15) #9
  %conv8.i238 = and i32 %call6.i237, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv8.i238)
  %cmp.i239 = icmp ult i32 %conv8.i238, 5
  %spec.select = select i1 %cmp.i239, i32 100, i32 40
  br label %is_amic_enabled.exit243

is_amic_enabled.exit243:                          ; preds = %if.then.i240, %if.end60.is_amic_enabled.exit243_crit_edge
  %17 = phi i32 [ 40, %if.end60.is_amic_enabled.exit243_crit_edge ], [ %spec.select, %if.then.i240 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %18 = load ptr, ptr @system_freezable_wq, align 4
  %dwork = getelementptr %struct.tx_macro, ptr %5, i32 0, i32 3, i32 %conv, i32 2
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %17) #9
  %call.i244 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %dwork, i32 noundef %call2.i) #9
  %19 = ptrtoint ptr %hpf_cut_off_freq53 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hpf_cut_off_freq53, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp71.not = icmp eq i8 %20, 2
  br i1 %cmp71.not, label %is_amic_enabled.exit243.if.end88_crit_edge, label %if.then73

is_amic_enabled.exit243.if.end88_crit_edge:       ; preds = %is_amic_enabled.exit243
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then73:                                        ; preds = %is_amic_enabled.exit243
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %21 = load ptr, ptr @system_freezable_wq, align 4
  %dwork76 = getelementptr %struct.tx_macro, ptr %5, i32 0, i32 2, i32 %conv, i32 3
  %call.i245 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %dwork76, i32 noundef 30) #9
  %conv79 = zext i16 %conv5 to i32
  %call80 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv79, i32 noundef 3, i32 noundef 2) #9
  %call.i249 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %conv.i) #9
  %and.i250 = and i32 %call.i249, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i250)
  %tobool.not.i251 = icmp eq i32 %and.i250, 0
  br i1 %tobool.not.i251, label %if.then73.if.then82_crit_edge, label %if.then.i257

if.then73.if.then82_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82

if.then.i257:                                     ; preds = %if.then73
  %conv4.i252 = add nuw nsw i32 %mul.i, 256
  %call6.i254 = tail call i32 @snd_soc_component_read_field(ptr noundef %add.ptr.i, i32 noundef %conv4.i252, i32 noundef 15) #9
  %conv8.i255 = and i32 %call6.i254, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv8.i255)
  %cmp.i256 = icmp ult i32 %conv8.i255, 5
  br i1 %cmp.i256, label %if.then.i257.if.end85_crit_edge, label %if.then.i257.if.then82_crit_edge

if.then.i257.if.then82_crit_edge:                 ; preds = %if.then.i257
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then82

if.then.i257.if.end85_crit_edge:                  ; preds = %if.then.i257
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then82:                                        ; preds = %if.then.i257.if.then82_crit_edge, %if.then73.if.then82_crit_edge
  %call84 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv79, i32 noundef 3, i32 noundef 0) #9
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.then.i257.if.end85_crit_edge
  %call87 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv79, i32 noundef 3, i32 noundef 1) #9
  tail call void @usleep_range_state(i32 noundef 6000, i32 noundef 6010, i32 noundef 2) #9
  br label %if.end88

if.end88:                                         ; preds = %if.end85, %is_amic_enabled.exit243.if.end88_crit_edge
  %call91 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %conv11) #9
  %call92 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef %conv11, i32 noundef %call91) #9
  %bcs_enable = getelementptr inbounds %struct.tx_macro, ptr %5, i32 0, i32 14
  %22 = ptrtoint ptr %bcs_enable to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bcs_enable, align 2, !range !371
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool93.not = icmp eq i8 %23, 0
  br i1 %tobool93.not, label %if.end88.sw.epilog_crit_edge, label %if.then94

if.end88.sw.epilog_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then94:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %call96 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv49, i32 noundef 1, i32 noundef 1) #9
  %bcs_clk_en = getelementptr inbounds %struct.tx_macro, ptr %5, i32 0, i32 16
  %24 = ptrtoint ptr %bcs_clk_en to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %bcs_clk_en, align 4
  br label %sw.epilog

sw.bb98:                                          ; preds = %entry
  %hpf_cut_off_freq101 = getelementptr %struct.tx_macro, ptr %5, i32 0, i32 2, i32 %conv, i32 2
  %25 = ptrtoint ptr %hpf_cut_off_freq101 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %hpf_cut_off_freq101, align 1
  %conv102 = zext i16 %conv2 to i32
  %call103 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef %conv102, i32 noundef 16, i32 noundef 1) #9
  %dwork106 = getelementptr %struct.tx_macro, ptr %5, i32 0, i32 2, i32 %conv, i32 3
  %call107 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dwork106) #9
  %call107.not = xor i1 %call107, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp110.not = icmp eq i8 %26, 2
  %or.cond = select i1 %call107.not, i1 true, i1 %cmp110.not
  br i1 %or.cond, label %sw.bb98.if.end126_crit_edge, label %if.then112

sw.bb98.if.end126_crit_edge:                      ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

if.then112:                                       ; preds = %sw.bb98
  %conv109 = zext i8 %26 to i32
  %conv113 = zext i16 %conv8 to i32
  %call115 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef %conv113, i32 noundef 96, i32 noundef %conv109) #9
  %mul.i261 = shl nuw nsw i32 %conv, 3
  %conv.i262 = add nuw nsw i32 %mul.i261, 260
  %call.i264 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %conv.i262) #9
  %and.i265 = and i32 %call.i264, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i265)
  %tobool.not.i266 = icmp eq i32 %and.i265, 0
  br i1 %tobool.not.i266, label %if.then112.if.else_crit_edge, label %if.then.i272

if.then112.if.else_crit_edge:                     ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then.i272:                                     ; preds = %if.then112
  %conv4.i267 = add nuw nsw i32 %mul.i261, 256
  %call6.i269 = tail call i32 @snd_soc_component_read_field(ptr noundef %add.ptr.i, i32 noundef %conv4.i267, i32 noundef 15) #9
  %conv8.i270 = and i32 %call6.i269, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv8.i270)
  %cmp.i271 = icmp ult i32 %conv8.i270, 5
  br i1 %cmp.i271, label %if.then117, label %if.then.i272.if.else_crit_edge

if.then.i272.if.else_crit_edge:                   ; preds = %if.then.i272
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then117:                                       ; preds = %if.then.i272
  call void @__sanitizer_cov_trace_pc() #11
  %conv118 = zext i16 %conv5 to i32
  %call119 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv118, i32 noundef 3, i32 noundef 2) #9
  br label %if.end122

if.else:                                          ; preds = %if.then.i272.if.else_crit_edge, %if.then112.if.else_crit_edge
  %conv120 = zext i16 %conv5 to i32
  %call121 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv120, i32 noundef 3, i32 noundef 3) #9
  br label %if.end122

if.end122:                                        ; preds = %if.else, %if.then117
  %conv123.pre-phi = phi i32 [ %conv120, %if.else ], [ %conv118, %if.then117 ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1010, i32 noundef 2) #9
  %call124 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv123.pre-phi, i32 noundef 3, i32 noundef 1) #9
  br label %if.end126

if.end126:                                        ; preds = %if.end122, %sw.bb98.if.end126_crit_edge
  %dwork129 = getelementptr %struct.tx_macro, ptr %5, i32 0, i32 3, i32 %conv, i32 2
  %call130 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dwork129) #9
  br label %sw.epilog

sw.bb131:                                         ; preds = %entry
  %conv132 = zext i16 %conv2 to i32
  %call133 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef %conv132, i32 noundef 32, i32 noundef 0) #9
  %conv134 = zext i16 %conv8 to i32
  %call135 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef %conv134, i32 noundef 6, i32 noundef 0) #9
  %call137 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef %conv132, i32 noundef 16, i32 noundef 0) #9
  %bcs_enable138 = getelementptr inbounds %struct.tx_macro, ptr %5, i32 0, i32 14
  %27 = ptrtoint ptr %bcs_enable138 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bcs_enable138, align 2, !range !371
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool139.not = icmp eq i8 %28, 0
  br i1 %tobool139.not, label %sw.bb131.sw.epilog_crit_edge, label %if.then140

sw.bb131.sw.epilog_crit_edge:                     ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then140:                                       ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #11
  %call142 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef %conv134, i32 noundef 1, i32 noundef 0) #9
  %call143 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 1068, i32 noundef 64, i32 noundef 0) #9
  %bcs_clk_en144 = getelementptr inbounds %struct.tx_macro, ptr %5, i32 0, i32 16
  %29 = ptrtoint ptr %bcs_clk_en144 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %bcs_clk_en144, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then140, %sw.bb131.sw.epilog_crit_edge, %if.end126, %if.then94, %if.end88.sw.epilog_crit_edge, %if.end36, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_macro_mclk_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tx_macro_mclk_enable(ptr noundef %5, i1 noundef zeroext true)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %regmap1.i = getelementptr inbounds %struct.tx_macro, ptr %5, i32 0, i32 7
  %7 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap1.i, align 4
  %tx_mclk_users.i = getelementptr inbounds %struct.tx_macro, ptr %5, i32 0, i32 12
  %9 = ptrtoint ptr %tx_mclk_users.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_mclk_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp8.i = icmp slt i32 %10, 1
  br i1 %cmp8.i, label %do.end.i, label %if.end11.i

do.end.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.14) #12
  %13 = ptrtoint ptr %tx_mclk_users.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tx_mclk_users.i, align 4
  br label %sw.epilog

if.end11.i:                                       ; preds = %sw.bb3
  %dec.i = add nsw i32 %10, -1
  %14 = ptrtoint ptr %tx_mclk_users.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %dec.i, ptr %tx_mclk_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp14.i = icmp eq i32 %dec.i, 0
  br i1 %cmp14.i, label %if.then15.i, label %if.end11.i.sw.epilog_crit_edge

if.end11.i.sw.epilog_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i3.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i4.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then15.i, %if.end11.i.sw.epilog_crit_edge, %do.end.i, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_macro_tx_mixer_get(ptr noundef %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_soc_dapm_kcontrol_widget(ptr noundef %kcontrol) #9
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = inttoptr i32 %3 to ptr
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %call, i32 0, i32 9
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %shift, align 4
  %conv = zext i8 %6 to i32
  %shift2 = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %shift2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %shift2, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.tx_macro, ptr %12, i32 0, i32 4, i32 %conv
  %div3.i = lshr i32 %8, 5
  %arrayidx.i = getelementptr i32, ptr %arrayidx, i32 %div3.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %8, 31
  %15 = lshr i32 %14, %and.i
  %16 = and i32 %15, 1
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %17, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_macro_tx_mixer_put(ptr noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_soc_dapm_kcontrol_widget(ptr noundef %kcontrol) #9
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = inttoptr i32 %3 to ptr
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %call, i32 0, i32 9
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %shift, align 4
  %conv = zext i8 %6 to i32
  %shift2 = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %shift2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %shift2, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 8
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx4 = getelementptr %struct.tx_macro, ptr %14, i32 0, i32 4, i32 %conv
  tail call void @_set_bit(i32 noundef %8, ptr noundef %arrayidx4) #9
  %arrayidx5 = getelementptr %struct.tx_macro, ptr %14, i32 0, i32 5, i32 %conv
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx5, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %arrayidx5, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx8 = getelementptr %struct.tx_macro, ptr %14, i32 0, i32 5, i32 %conv
  %17 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx8, align 4
  %dec = add i32 %18, -1
  store i32 %dec, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr %struct.tx_macro, ptr %14, i32 0, i32 4, i32 %conv
  tail call void @_clear_bit(i32 noundef %8, ptr noundef %arrayidx10) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ -1, %if.else ], [ %8, %if.then ]
  %19 = getelementptr %struct.tx_macro, ptr %14, i32 0, i32 6, i32 %conv
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %19, align 4
  %21 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dapm, align 4
  %call14 = tail call i32 @snd_soc_dapm_mixer_update_power(ptr noundef %22, ptr noundef %kcontrol, i32 noundef %10, ptr noundef null) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_kcontrol_widget(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_mixer_update_power(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_macro_put_dec_enum(ptr noundef %kcontrol, ptr noundef %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_soc_dapm_kcontrol_widget(ptr noundef %kcontrol) #9
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = inttoptr i32 %3 to ptr
  %dev.i = getelementptr i8, ptr %1, i32 -164
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
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %4, align 4
  %13 = add i32 %12, -256
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %14)
  %15 = icmp ult i32 %14, 8
  %switch.idx.mult = shl i32 %14, 7
  %switch.offset = add i32 %switch.idx.mult, 1028
  %mic_sel_reg.0 = select i1 %15, i32 %switch.offset, i32 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %10)
  %cmp10 = icmp ult i32 %10, 5
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef %mic_sel_reg.0, i32 noundef 128, i32 noundef 0) #9
  br label %if.end19

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef %mic_sel_reg.0, i32 noundef 128, i32 noundef 1) #9
  %16 = shl i32 %10, 1
  %17 = add i32 %16, 182
  %conv15 = and i32 %17, 65532
  %dmic_clk_div = getelementptr inbounds %struct.tx_macro, ptr %8, i32 0, i32 13
  %18 = ptrtoint ptr %dmic_clk_div to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %dmic_clk_div, align 4
  %conv17 = zext i16 %19 to i32
  %call18 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef %conv15, i32 noundef 14, i32 noundef %conv17) #9
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then11, %entry.if.end19_crit_edge
  %call20 = tail call i32 @snd_soc_dapm_put_enum_double(ptr noundef %kcontrol, ptr noundef %ucontrol) #9
  ret i32 %call20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write_field(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read_field(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_component_init_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tx_macro_tx_hpf_corner_freq_callback(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %component2 = getelementptr inbounds %struct.tx_macro, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %component2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %component2, align 4
  %hpf_cut_off_freq3 = getelementptr i8, ptr %work, i32 -3
  %4 = ptrtoint ptr %hpf_cut_off_freq3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hpf_cut_off_freq3, align 1
  %decimator = getelementptr i8, ptr %work, i32 -4
  %6 = ptrtoint ptr %decimator to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %decimator, align 4
  %conv = zext i8 %7 to i32
  %conv.tr = zext i8 %7 to i16
  %8 = shl nuw nsw i16 %conv.tr, 7
  %conv4 = add nuw i16 %8, 1028
  %conv9 = add nuw i16 %8, 1048
  %mul.i = shl nuw nsw i32 %conv, 3
  %conv.i = add nuw nsw i32 %mul.i, 260
  %call.i = tail call i32 @snd_soc_component_read(ptr noundef %3, i32 noundef %conv.i) #9
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %if.then.i

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then.i:                                        ; preds = %entry
  %conv4.i = add nuw nsw i32 %mul.i, 256
  %call6.i = tail call i32 @snd_soc_component_read_field(ptr noundef %3, i32 noundef %conv4.i, i32 noundef 15) #9
  %conv8.i = and i32 %call6.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv8.i)
  %cmp.i = icmp ult i32 %conv8.i, 5
  br i1 %cmp.i, label %if.then, label %if.then.i.if.else_crit_edge

if.then.i.if.else_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv13 = zext i16 %conv4 to i32
  %conv14 = zext i8 %5 to i32
  %call15 = tail call i32 @snd_soc_component_write_field(ptr noundef %3, i32 noundef %conv13, i32 noundef 96, i32 noundef %conv14) #9
  %conv16 = zext i16 %conv9 to i32
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef %conv16, i32 noundef 3, i32 noundef 2) #9
  %call19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef %conv16, i32 noundef 3, i32 noundef 1) #9
  br label %if.end

if.else:                                          ; preds = %if.then.i.if.else_crit_edge, %entry.if.else_crit_edge
  %conv20 = zext i16 %conv4 to i32
  %conv21 = zext i8 %5 to i32
  %call22 = tail call i32 @snd_soc_component_write_field(ptr noundef %3, i32 noundef %conv20, i32 noundef 96, i32 noundef %conv21) #9
  %conv23 = zext i16 %conv9 to i32
  %call24 = tail call i32 @snd_soc_component_write_field(ptr noundef %3, i32 noundef %conv23, i32 noundef 2, i32 noundef 1) #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1010, i32 noundef 2) #9
  %call26 = tail call i32 @snd_soc_component_write_field(ptr noundef %3, i32 noundef %conv23, i32 noundef 2, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tx_macro_mute_update_callback(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %component2 = getelementptr inbounds %struct.tx_macro, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %component2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %component2, align 4
  %decimator3 = getelementptr i8, ptr %work, i32 -4
  %4 = ptrtoint ptr %decimator3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %decimator3, align 4
  %conv4 = shl i32 %5, 7
  %mul = and i32 %conv4, 32640
  %add = add nuw nsw i32 %mul, 1024
  %call5 = tail call i32 @snd_soc_component_write_field(ptr noundef %3, i32 noundef %add, i32 noundef 16, i32 noundef 0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tx_macro_get_channel_map(ptr nocapture noundef readonly %dai, ptr nocapture noundef writeonly %tx_num, ptr nocapture noundef writeonly %tx_slot, ptr nocapture noundef readnone %rx_num, ptr nocapture noundef readnone %rx_slot) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %2 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.tx_macro, ptr %7, i32 0, i32 4, i32 %1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %tx_slot to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tx_slot, align 4
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %arrayidx4 = getelementptr %struct.tx_macro, ptr %7, i32 0, i32 5, i32 %12
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx4, align 4
  %15 = ptrtoint ptr %tx_num to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tx_num, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_macro_digital_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %stream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.tx_macro, ptr %5, i32 0, i32 6, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %conv4 = shl i32 %9, 7
  %mul5 = and i32 %conv4, 8388480
  %add6 = add nuw nsw i32 %mul5, 1024
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @snd_soc_component_write_field(ptr noundef %1, i32 noundef %add6, i32 noundef 16, i32 noundef 1) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %add6, i32 noundef 16, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_macro_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %7, label %do.end [
    i32 8000, label %entry.sw.epilog_crit_edge
    i32 16000, label %sw.bb3
    i32 32000, label %sw.bb4
    i32 48000, label %sw.bb5
    i32 96000, label %sw.bb6
    i32 192000, label %sw.bb7
    i32 384000, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.161, i32 noundef %7) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %entry.sw.epilog_crit_edge
  %tx_fs_rate.0 = phi i32 [ 7, %sw.bb8 ], [ 6, %sw.bb7 ], [ 5, %sw.bb6 ], [ 4, %sw.bb5 ], [ 3, %sw.bb4 ], [ 1, %sw.bb3 ], [ 0, %entry.sw.epilog_crit_edge ]
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.tx_macro, ptr %5, i32 0, i32 4, i32 %10
  %call10 = tail call i32 @_find_next_bit_be(ptr noundef %arrayidx, i32 noundef 8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call10)
  %cmp30 = icmp ult i32 %call10, 8
  br i1 %cmp30, label %sw.epilog.for.body_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %decimator.031 = phi i32 [ %call16, %for.body.for.body_crit_edge ], [ %call10, %sw.epilog.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %decimator.031, 7
  %add = add nuw nsw i32 %mul, 1024
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %add, i32 noundef 15, i32 noundef %tx_fs_rate.0) #9
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %arrayidx14 = getelementptr %struct.tx_macro, ptr %5, i32 0, i32 4, i32 %12
  %add15 = add nuw nsw i32 %decimator.031, 1
  %call16 = tail call i32 @_find_next_bit_be(ptr noundef %arrayidx14, i32 noundef 8, i32 noundef %add15) #9
  %cmp = icmp ult i32 %call16, 8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 218)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 218)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !35, !37, !39, !41, !43, !45, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !105, !106, !108, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !338, !339, !340, !342, !343, !344, !345, !347, !349, !351, !353, !355, !357, !358, !359, !360}
!llvm.module.flags = !{!362, !363, !364, !365, !366, !367, !368, !369}
!llvm.ident = !{!370}

!0 = !{ptr @__initcall__kmod_snd_soc_lpass_tx_macro__238_1879_tx_macro_driver_init6, !1, !"__initcall__kmod_snd_soc_lpass_tx_macro__238_1879_tx_macro_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1879, i32 1}
!2 = !{ptr @__exitcall_tx_macro_driver_exit, !1, !"__exitcall_tx_macro_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description239, !4, !"__UNIQUE_ID_description239", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1881, i32 1}
!5 = !{ptr @__UNIQUE_ID_file240, !6, !"__UNIQUE_ID_file240", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1882, i32 1}
!7 = !{ptr @__UNIQUE_ID_license241, !6, !"__UNIQUE_ID_license241", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1871, i32 11}
!10 = !{ptr @tx_macro_driver, !11, !"tx_macro_driver", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1869, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1793, i32 19}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1794, i32 19}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1795, i32 19}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1796, i32 19}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1797, i32 19}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1801, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @tx_macro_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @tx_macro_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1810, i32 34}
!32 = !{ptr @tx_macro_probe._key, !33, !"_key", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1823, i32 15}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @tx_defaults, !36, !"tx_defaults", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 275, i32 27}
!37 = !{ptr @tx_regmap_config, !38, !"tx_regmap_config", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 579, i32 35}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1747, i32 25}
!41 = !{ptr @swclk_gate_ops, !42, !"swclk_gate_ops", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1734, i32 29}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 614, i32 4}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @tx_macro_mclk_enable._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @tx_macro_mclk_enable._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1771, i32 10}
!50 = !{ptr @tx_macro_component_drv, !51, !"tx_macro_component_drv", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1770, i32 46}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1600, i32 2}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1603, i32 2}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1606, i32 2}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1609, i32 2}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1612, i32 2}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1615, i32 2}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1618, i32 2}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1621, i32 2}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1625, i32 2}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1628, i32 2}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1631, i32 2}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1634, i32 2}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1637, i32 2}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1640, i32 2}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1643, i32 2}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1646, i32 2}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1649, i32 2}
!86 = !{ptr @tx_macro_snd_controls, !87, !"tx_macro_snd_controls", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1599, i32 38}
!88 = !{ptr @digital_gain, !89, !"digital_gain", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 273, i32 14}
!90 = !{ptr @dec_mode_mux_enum, !91, !"dec_mode_mux_enum", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1259, i32 30}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1256, i32 2}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1256, i32 17}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1256, i32 32}
!98 = !{ptr @dec_mode_mux_text, !99, !"dec_mode_mux_text", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1255, i32 27}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1336, i32 2}
!102 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1339, i32 2}
!105 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1342, i32 2}
!108 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1345, i32 2}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1348, i32 2}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1351, i32 2}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1354, i32 2}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1355, i32 2}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1356, i32 2}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1357, i32 2}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1358, i32 2}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1359, i32 2}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1360, i32 2}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1361, i32 2}
!131 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1363, i32 2}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1364, i32 2}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1365, i32 2}
!137 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1366, i32 2}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1367, i32 2}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1368, i32 2}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1369, i32 2}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1370, i32 2}
!147 = !{ptr @.str.70, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1371, i32 2}
!149 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1372, i32 2}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1373, i32 2}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1374, i32 2}
!155 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1376, i32 2}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1382, i32 2}
!159 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1388, i32 2}
!161 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1394, i32 2}
!163 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1400, i32 2}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1406, i32 2}
!167 = !{ptr @.str.80, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1412, i32 2}
!169 = !{ptr @.str.81, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1418, i32 2}
!171 = !{ptr @.str.82, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1424, i32 2}
!173 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1427, i32 2}
!175 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1429, i32 2}
!177 = !{ptr @tx_macro_dapm_widgets, !178, !"tx_macro_dapm_widgets", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1335, i32 41}
!179 = !{ptr @.str.86, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1279, i32 2}
!181 = !{ptr @.str.88, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1281, i32 2}
!183 = !{ptr @.str.90, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1283, i32 2}
!185 = !{ptr @.str.92, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1285, i32 2}
!187 = !{ptr @.str.94, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1287, i32 2}
!189 = !{ptr @.str.96, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1289, i32 2}
!191 = !{ptr @.str.98, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1291, i32 2}
!193 = !{ptr @.str.100, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1293, i32 2}
!195 = !{ptr @tx_aif1_cap_mixer, !196, !"tx_aif1_cap_mixer", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1278, i32 38}
!197 = !{ptr @tx_aif2_cap_mixer, !198, !"tx_aif2_cap_mixer", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1297, i32 38}
!199 = !{ptr @tx_aif3_cap_mixer, !200, !"tx_aif3_cap_mixer", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1316, i32 38}
!201 = !{ptr @.str.118, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1238, i32 53}
!203 = !{ptr @tx_smic0_mux, !204, !"tx_smic0_mux", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1238, i32 38}
!205 = !{ptr @tx_smic0_enum, !206, !"tx_smic0_enum", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1214, i32 8}
!207 = !{ptr @.str.119, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1209, i32 2}
!209 = !{ptr @.str.120, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1209, i32 10}
!211 = !{ptr @.str.121, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1209, i32 18}
!213 = !{ptr @.str.122, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1209, i32 26}
!215 = !{ptr @.str.123, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1209, i32 34}
!217 = !{ptr @.str.124, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1209, i32 42}
!219 = !{ptr @.str.125, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1210, i32 2}
!221 = !{ptr @.str.126, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1210, i32 15}
!223 = !{ptr @.str.127, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1210, i32 28}
!225 = !{ptr @.str.128, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1210, i32 41}
!227 = !{ptr @.str.129, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1211, i32 2}
!229 = !{ptr @.str.130, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1211, i32 15}
!231 = !{ptr @.str.131, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1211, i32 28}
!233 = !{ptr @smic_mux_text, !234, !"smic_mux_text", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1208, i32 27}
!235 = !{ptr @.str.132, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1240, i32 53}
!237 = !{ptr @tx_smic1_mux, !238, !"tx_smic1_mux", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1240, i32 38}
!239 = !{ptr @tx_smic1_enum, !240, !"tx_smic1_enum", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1217, i32 8}
!241 = !{ptr @.str.133, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1242, i32 53}
!243 = !{ptr @tx_smic2_mux, !244, !"tx_smic2_mux", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1242, i32 38}
!245 = !{ptr @tx_smic2_enum, !246, !"tx_smic2_enum", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1220, i32 8}
!247 = !{ptr @.str.134, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1244, i32 53}
!249 = !{ptr @tx_smic3_mux, !250, !"tx_smic3_mux", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1244, i32 38}
!251 = !{ptr @tx_smic3_enum, !252, !"tx_smic3_enum", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1223, i32 8}
!253 = !{ptr @.str.135, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1246, i32 53}
!255 = !{ptr @tx_smic4_mux, !256, !"tx_smic4_mux", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1246, i32 38}
!257 = !{ptr @tx_smic4_enum, !258, !"tx_smic4_enum", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1226, i32 8}
!259 = !{ptr @.str.136, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1248, i32 53}
!261 = !{ptr @tx_smic5_mux, !262, !"tx_smic5_mux", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1248, i32 38}
!263 = !{ptr @tx_smic5_enum, !264, !"tx_smic5_enum", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1229, i32 8}
!265 = !{ptr @.str.137, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1250, i32 53}
!267 = !{ptr @tx_smic6_mux, !268, !"tx_smic6_mux", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1250, i32 38}
!269 = !{ptr @tx_smic6_enum, !270, !"tx_smic6_enum", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1232, i32 8}
!271 = !{ptr @.str.138, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1252, i32 53}
!273 = !{ptr @tx_smic7_mux, !274, !"tx_smic7_mux", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1252, i32 38}
!275 = !{ptr @tx_smic7_enum, !276, !"tx_smic7_enum", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1235, i32 8}
!277 = !{ptr @.str.139, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1199, i32 52}
!279 = !{ptr @tx_dec0_mux, !280, !"tx_dec0_mux", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1199, i32 38}
!281 = !{ptr @tx_dec0_enum, !282, !"tx_dec0_enum", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1182, i32 8}
!283 = !{ptr @.str.140, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1179, i32 2}
!285 = !{ptr @.str.141, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1179, i32 14}
!287 = !{ptr @.str.142, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1179, i32 25}
!289 = !{ptr @adc_mux_text, !290, !"adc_mux_text", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1178, i32 27}
!291 = !{ptr @.str.143, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1200, i32 52}
!293 = !{ptr @tx_dec1_mux, !294, !"tx_dec1_mux", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1200, i32 38}
!295 = !{ptr @tx_dec1_enum, !296, !"tx_dec1_enum", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1184, i32 8}
!297 = !{ptr @.str.144, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1201, i32 52}
!299 = !{ptr @tx_dec2_mux, !300, !"tx_dec2_mux", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1201, i32 38}
!301 = !{ptr @tx_dec2_enum, !302, !"tx_dec2_enum", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1186, i32 8}
!303 = !{ptr @.str.145, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1202, i32 52}
!305 = !{ptr @tx_dec3_mux, !306, !"tx_dec3_mux", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1202, i32 38}
!307 = !{ptr @tx_dec3_enum, !308, !"tx_dec3_enum", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1188, i32 8}
!309 = !{ptr @.str.146, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1203, i32 52}
!311 = !{ptr @tx_dec4_mux, !312, !"tx_dec4_mux", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1203, i32 38}
!313 = !{ptr @tx_dec4_enum, !314, !"tx_dec4_enum", i1 false, i1 false}
!314 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1190, i32 8}
!315 = !{ptr @.str.147, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1204, i32 52}
!317 = !{ptr @tx_dec5_mux, !318, !"tx_dec5_mux", i1 false, i1 false}
!318 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1204, i32 38}
!319 = !{ptr @tx_dec5_enum, !320, !"tx_dec5_enum", i1 false, i1 false}
!320 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1192, i32 8}
!321 = !{ptr @.str.148, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1205, i32 52}
!323 = !{ptr @tx_dec6_mux, !324, !"tx_dec6_mux", i1 false, i1 false}
!324 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1205, i32 38}
!325 = !{ptr @tx_dec6_enum, !326, !"tx_dec6_enum", i1 false, i1 false}
!326 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1194, i32 8}
!327 = !{ptr @.str.149, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1206, i32 52}
!329 = !{ptr @tx_dec7_mux, !330, !"tx_dec7_mux", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1206, i32 38}
!331 = !{ptr @tx_dec7_enum, !332, !"tx_dec7_enum", i1 false, i1 false}
!332 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1196, i32 8}
!333 = !{ptr @tx_audio_map, !334, !"tx_audio_map", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1433, i32 40}
!335 = !{ptr @tx_macro_component_probe.__key, !336, !"__key", i1 false, i1 false}
!336 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1663, i32 3}
!337 = !{ptr @.str.150, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @tx_macro_component_probe.__key.151, !336, !"__key", i1 false, i1 false}
!339 = !{ptr @.str.152, !336, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @tx_macro_component_probe.__key.153, !341, !"__key", i1 false, i1 false}
!341 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1670, i32 3}
!342 = !{ptr @.str.154, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @tx_macro_component_probe.__key.155, !341, !"__key", i1 false, i1 false}
!344 = !{ptr @.str.156, !341, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @.str.157, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1135, i32 11}
!347 = !{ptr @.str.158, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1149, i32 11}
!349 = !{ptr @.str.159, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1163, i32 11}
!351 = !{ptr @tx_macro_dai, !352, !"tx_macro_dai", i1 false, i1 false}
!352 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1133, i32 34}
!353 = !{ptr @tx_macro_dai_ops, !354, !"tx_macro_dai_ops", i1 false, i1 false}
!354 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1127, i32 37}
!355 = !{ptr @.str.160, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1075, i32 3}
!357 = !{ptr @.str.161, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @tx_macro_hw_params._entry, !356, !"_entry", i1 false, i1 false}
!359 = !{ptr @tx_macro_hw_params._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @tx_macro_dt_match, !361, !"tx_macro_dt_match", i1 false, i1 false}
!361 = !{!"../sound/soc/codecs/lpass-tx-macro.c", i32 1863, i32 34}
!362 = !{i32 1, !"wchar_size", i32 2}
!363 = !{i32 1, !"min_enum_size", i32 4}
!364 = !{i32 8, !"branch-target-enforcement", i32 0}
!365 = !{i32 8, !"sign-return-address", i32 0}
!366 = !{i32 8, !"sign-return-address-all", i32 0}
!367 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!368 = !{i32 7, !"uwtable", i32 1}
!369 = !{i32 7, !"frame-pointer", i32 2}
!370 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!371 = !{i8 0, i8 2}
!372 = !{!"auto-init"}
