; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/wsa881x.c_pt.bc'
source_filename = "../sound/soc/codecs/wsa881x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdw_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdw_device_id = type { i16, i16, i8, i8, i32 }
%struct.sdw_slave_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sdw_dpn_prop = type { i32, i32, i32, i32, ptr, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i8, i8, i32, ptr }
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
%struct.reg_default = type { i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.sdw_slave = type { %struct.sdw_slave_id, %struct.device, i32, ptr, ptr, %struct.sdw_slave_prop, ptr, %struct.list_head, [15 x %struct.completion], [15 x i32], i16, i16, i8, %struct.completion, %struct.completion, %struct.completion, i32, i8, i8 }
%struct.sdw_slave_id = type { i16, i16, i8, i8, i8 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sdw_slave_prop = type { i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, i32, i32, i32, ptr, ptr, ptr, i8, i32, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wsa881x_priv = type { ptr, ptr, ptr, %struct.sdw_stream_config, ptr, [4 x %struct.sdw_port_config], ptr, i32, i32, [4 x i8], [4 x i8] }
%struct.sdw_stream_config = type { i32, i32, i32, i32, i32 }
%struct.sdw_port_config = type { i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.77, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.77 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.72, [128 x i8] }
%union.anon.72 = type { %union.anon.74 }
%union.anon.74 = type { [64 x i64] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.sdw_bus_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_snd_soc_wsa881x__238_1156_wsa881x_codec_driver_init6 = internal global ptr @wsa881x_codec_driver_init, section ".initcall6.init", align 4
@wsa881x_codec_driver = internal global { %struct.sdw_driver, [60 x i8] } { %struct.sdw_driver { ptr null, ptr @wsa881x_probe, ptr null, ptr null, ptr @wsa881x_slave_id, ptr @wsa881x_slave_ops, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [60 x i8] zeroinitializer }, align 32
@__exitcall_wsa881x_codec_driver_exit = internal global ptr @wsa881x_codec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [49 x i8] c"snd_soc_wsa881x.description=WSA881x codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [54 x i8] c"snd_soc_wsa881x.file=sound/soc/codecs/snd-soc-wsa881x\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [31 x i8] c"snd_soc_wsa881x.license=GPL v2\00", section ".modinfo", align 1
@wsa881x_slave_id = internal constant { [3 x %struct.sdw_device_id], [60 x i8] } { [3 x %struct.sdw_device_id] [%struct.sdw_device_id { i16 535, i16 8208, i8 0, i8 0, i32 0 }, %struct.sdw_device_id { i16 535, i16 8464, i8 0, i8 0, i32 0 }, %struct.sdw_device_id zeroinitializer], [60 x i8] zeroinitializer }, align 32
@wsa881x_slave_ops = internal global { %struct.sdw_slave_ops, [40 x i8] } { %struct.sdw_slave_ops { ptr null, ptr null, ptr @wsa881x_update_status, ptr @wsa881x_bus_config, ptr @wsa881x_port_prep, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wsa881x-codec\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@wsa881x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1112, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Shutdown Control GPIO not found\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wsa881x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/wsa881x.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wsa881x_probe._entry_ptr = internal global ptr @wsa881x_probe._entry, section ".printk_index", align 4
@wsa_sink_dpn_prop = internal global { [4 x %struct.sdw_dpn_prop], [80 x i8] } { [4 x %struct.sdw_dpn_prop] [%struct.sdw_dpn_prop { i32 1, i32 0, i32 0, i32 0, ptr null, i32 1, i32 0, i8 1, i32 0, i32 0, i32 1, i32 1, i32 0, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 1, i32 0, ptr null }, %struct.sdw_dpn_prop { i32 2, i32 0, i32 0, i32 0, ptr null, i32 1, i32 0, i8 1, i32 0, i32 0, i32 1, i32 1, i32 0, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 1, i32 0, ptr null }, %struct.sdw_dpn_prop { i32 3, i32 0, i32 0, i32 0, ptr null, i32 1, i32 0, i8 1, i32 0, i32 0, i32 1, i32 1, i32 0, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 1, i32 0, ptr null }, %struct.sdw_dpn_prop { i32 4, i32 0, i32 0, i32 0, ptr null, i32 1, i32 0, i8 1, i32 0, i32 0, i32 1, i32 1, i32 0, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 1, i32 0, ptr null }], [80 x i8] zeroinitializer }, align 32
@wsa881x_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wsa881x_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 0, i32 0, i32 8, ptr null, ptr @wsa881x_readable_register, ptr @wsa881x_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 12613, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wsa881x_defaults, i32 128, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 3, i32 3, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"wsa881x:1129:(&wsa881x_regmap_config)->lock\00", [52 x i8] zeroinitializer }, align 32
@wsa881x_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1131, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"regmap_init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@wsa881x_probe._entry_ptr.10 = internal global ptr @wsa881x_probe._entry.8, section ".printk_index", align 4
@wsa881x_component_drv = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.11, ptr @wsa881x_snd_controls, i32 6, ptr @wsa881x_dapm_widgets, i32 7, ptr @wsa881x_audio_map, i32 6, ptr @wsa881x_component_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@wsa881x_dais = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.46, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wsa881x_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.48, i64 4, i32 128, i32 48000, i32 48000, i32 1, i32 1, i32 0 }, i8 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@wsa881x_defaults = internal global { [128 x %struct.reg_default], [256 x i8] } { [128 x %struct.reg_default] [%struct.reg_default { i32 12288, i32 0 }, %struct.reg_default { i32 12289, i32 0 }, %struct.reg_default { i32 12290, i32 0 }, %struct.reg_default { i32 12291, i32 2 }, %struct.reg_default { i32 12292, i32 0 }, %struct.reg_default { i32 12293, i32 0 }, %struct.reg_default { i32 12294, i32 3 }, %struct.reg_default { i32 12295, i32 0 }, %struct.reg_default { i32 12296, i32 0 }, %struct.reg_default { i32 12297, i32 0 }, %struct.reg_default { i32 12298, i32 8 }, %struct.reg_default { i32 12299, i32 0 }, %struct.reg_default { i32 12304, i32 1 }, %struct.reg_default { i32 12305, i32 0 }, %struct.reg_default { i32 12306, i32 0 }, %struct.reg_default { i32 12307, i32 0 }, %struct.reg_default { i32 12308, i32 0 }, %struct.reg_default { i32 12309, i32 3 }, %struct.reg_default { i32 12310, i32 0 }, %struct.reg_default { i32 12311, i32 0 }, %struct.reg_default { i32 12312, i32 126 }, %struct.reg_default { i32 12313, i32 0 }, %struct.reg_default { i32 12314, i32 0 }, %struct.reg_default { i32 12315, i32 0 }, %struct.reg_default { i32 12316, i32 0 }, %struct.reg_default { i32 12317, i32 0 }, %struct.reg_default { i32 12318, i32 0 }, %struct.reg_default { i32 12319, i32 0 }, %struct.reg_default { i32 12320, i32 0 }, %struct.reg_default { i32 12322, i32 0 }, %struct.reg_default { i32 12323, i32 0 }, %struct.reg_default { i32 12324, i32 0 }, %struct.reg_default { i32 12325, i32 0 }, %struct.reg_default { i32 12326, i32 0 }, %struct.reg_default { i32 12336, i32 0 }, %struct.reg_default { i32 12337, i32 0 }, %struct.reg_default { i32 12338, i32 0 }, %struct.reg_default { i32 12339, i32 0 }, %struct.reg_default { i32 12340, i32 0 }, %struct.reg_default { i32 12341, i32 0 }, %struct.reg_default { i32 12343, i32 0 }, %struct.reg_default { i32 12344, i32 0 }, %struct.reg_default { i32 12345, i32 0 }, %struct.reg_default { i32 12347, i32 8 }, %struct.reg_default { i32 12348, i32 0 }, %struct.reg_default { i32 12349, i32 0 }, %struct.reg_default { i32 12350, i32 0 }, %struct.reg_default { i32 12351, i32 0 }, %struct.reg_default { i32 12356, i32 12 }, %struct.reg_default { i32 12368, i32 0 }, %struct.reg_default { i32 12369, i32 0 }, %struct.reg_default { i32 12370, i32 0 }, %struct.reg_default { i32 12416, i32 1 }, %struct.reg_default { i32 12417, i32 255 }, %struct.reg_default { i32 12418, i32 192 }, %struct.reg_default { i32 12419, i32 255 }, %struct.reg_default { i32 12420, i32 192 }, %struct.reg_default { i32 12421, i32 255 }, %struct.reg_default { i32 12422, i32 255 }, %struct.reg_default { i32 12423, i32 255 }, %struct.reg_default { i32 12424, i32 255 }, %struct.reg_default { i32 12425, i32 255 }, %struct.reg_default { i32 12426, i32 255 }, %struct.reg_default { i32 12427, i32 255 }, %struct.reg_default { i32 12428, i32 255 }, %struct.reg_default { i32 12429, i32 255 }, %struct.reg_default { i32 12430, i32 255 }, %struct.reg_default { i32 12431, i32 255 }, %struct.reg_default { i32 12432, i32 255 }, %struct.reg_default { i32 12433, i32 255 }, %struct.reg_default { i32 12434, i32 255 }, %struct.reg_default { i32 12435, i32 255 }, %struct.reg_default { i32 12436, i32 255 }, %struct.reg_default { i32 12437, i32 255 }, %struct.reg_default { i32 12438, i32 255 }, %struct.reg_default { i32 12439, i32 255 }, %struct.reg_default { i32 12440, i32 3 }, %struct.reg_default { i32 12441, i32 1 }, %struct.reg_default { i32 12442, i32 3 }, %struct.reg_default { i32 12443, i32 17 }, %struct.reg_default { i32 12479, i32 64 }, %struct.reg_default { i32 12544, i32 108 }, %struct.reg_default { i32 12545, i32 22 }, %struct.reg_default { i32 12546, i32 240 }, %struct.reg_default { i32 12547, i32 0 }, %struct.reg_default { i32 12548, i32 86 }, %struct.reg_default { i32 12549, i32 71 }, %struct.reg_default { i32 12550, i32 135 }, %struct.reg_default { i32 12551, i32 0 }, %struct.reg_default { i32 12552, i32 81 }, %struct.reg_default { i32 12554, i32 0 }, %struct.reg_default { i32 12555, i32 0 }, %struct.reg_default { i32 12560, i32 0 }, %struct.reg_default { i32 12561, i32 0 }, %struct.reg_default { i32 12562, i32 0 }, %struct.reg_default { i32 12563, i32 0 }, %struct.reg_default { i32 12565, i32 16 }, %struct.reg_default { i32 12570, i32 116 }, %struct.reg_default { i32 12573, i32 21 }, %struct.reg_default { i32 12574, i32 0 }, %struct.reg_default { i32 12575, i32 212 }, %struct.reg_default { i32 12576, i32 144 }, %struct.reg_default { i32 12581, i32 84 }, %struct.reg_default { i32 12582, i32 172 }, %struct.reg_default { i32 12584, i32 0 }, %struct.reg_default { i32 12585, i32 0 }, %struct.reg_default { i32 12586, i32 24 }, %struct.reg_default { i32 12587, i32 122 }, %struct.reg_default { i32 12590, i32 112 }, %struct.reg_default { i32 12591, i32 14 }, %struct.reg_default { i32 12592, i32 22 }, %struct.reg_default { i32 12593, i32 113 }, %struct.reg_default { i32 12594, i32 15 }, %struct.reg_default { i32 12596, i32 52 }, %struct.reg_default { i32 12597, i32 35 }, %struct.reg_default { i32 12598, i32 128 }, %struct.reg_default { i32 12599, i32 0 }, %struct.reg_default { i32 12600, i32 0 }, %struct.reg_default { i32 12601, i32 0 }, %struct.reg_default { i32 12602, i32 70 }, %struct.reg_default { i32 12603, i32 59 }, %struct.reg_default { i32 12604, i32 141 }, %struct.reg_default { i32 12605, i32 141 }, %struct.reg_default { i32 12606, i32 1 }, %struct.reg_default { i32 12608, i32 141 }, %struct.reg_default { i32 12609, i32 77 }, %struct.reg_default { i32 12612, i32 0 }, %struct.reg_default { i32 12613, i32 0 }], [256 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WSA881x\00", [24 x i8] zeroinitializer }, align 32
@wsa881x_snd_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.12, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @smart_boost_lvl_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wsa881x_put_pa_gain, %union.anon.83 { ptr @pa_gain }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wsa881x_get_port, ptr @wsa881x_set_port, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.15 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wsa881x_get_port, ptr @wsa881x_set_port, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.17 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wsa881x_get_port, ptr @wsa881x_set_port, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.19 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wsa881x_get_port, ptr @wsa881x_set_port, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }], [64 x i8] zeroinitializer }, align 32
@wsa881x_audio_map = internal constant { [6 x %struct.snd_soc_dapm_route], [72 x i8] } { [6 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.41, ptr null, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr null, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr null, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr null, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }], [72 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Smart Boost Level\00", [46 x i8] zeroinitializer }, align 32
@smart_boost_lvl_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 12589, i8 0, i8 0, i32 16, i32 15, ptr @smart_boost_lvl_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PA Volume\00", [22 x i8] zeroinitializer }, align 32
@pa_gain = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 12, i32 12, i32 12571, i32 12571, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"COMP Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BOOST Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VISENSE Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@smart_boost_lvl_text = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"6.625 V\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"6.750 V\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"6.875 V\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"7.000 V\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"7.125 V\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"7.250 V\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"7.375 V\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"7.500 V\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"7.625 V\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"7.750 V\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"7.875 V\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"8.000 V\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"8.125 V\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"8.250 V\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"8.375 V\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"8.500 V\00", [24 x i8] zeroinitializer }, align 32
@wsa881x_put_pa_gain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 771, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to change PA gain\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wsa881x_put_pa_gain\00", [44 x i8] zeroinitializer }, align 32
@wsa881x_put_pa_gain._entry_ptr = internal global ptr @wsa881x_put_pa_gain._entry, section ".printk_index", align 4
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IN\00", [29 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RDAC\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SPKR PGA\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DCLK\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ACLK\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Bandgap\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPKR\00", [27 x i8] zeroinitializer }, align 32
@wsa881x_dapm_widgets = internal constant { [7 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [308 x i8] } { [7 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.40, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.41, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 12572, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.42, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 11, ptr @wsa881x_spkr_pa_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 12296, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.44, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 12295, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.45, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 12547, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.46, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [308 x i8] zeroinitializer }, align 32
@wsa881x_pre_pmu_pa_2_0 = internal constant { [2 x %struct.reg_sequence], [40 x i8] } { [2 x %struct.reg_sequence] [%struct.reg_sequence { i32 12571, i32 65, i32 0 }, %struct.reg_sequence { i32 12578, i32 135, i32 0 }], [40 x i8] zeroinitializer }, align 32
@wsa881x_vi_txfe_en_2_0 = internal constant { [3 x %struct.reg_sequence], [60 x i8] } { [3 x %struct.reg_sequence] [%struct.reg_sequence { i32 12608, i32 133, i32 0 }, %struct.reg_sequence { i32 12607, i32 10, i32 0 }, %struct.reg_sequence { i32 12602, i32 71, i32 0 }], [60 x i8] zeroinitializer }, align 32
@wsa881x_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wsa881x_set_sdw_stream, ptr null, ptr @wsa881x_digital_mute, ptr null, ptr null, ptr @wsa881x_hw_params, ptr @wsa881x_hw_free, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SPKR Playback\00", [18 x i8] zeroinitializer }, align 32
@wsa881x_rev_2_0 = internal global { [23 x %struct.reg_sequence], [76 x i8] } { [23 x %struct.reg_sequence] [%struct.reg_sequence { i32 12300, i32 0, i32 0 }, %struct.reg_sequence { i32 12303, i32 1, i32 0 }, %struct.reg_sequence { i32 12321, i32 27, i32 0 }, %struct.reg_sequence { i32 12357, i32 0, i32 0 }, %struct.reg_sequence { i32 12444, i32 63, i32 0 }, %struct.reg_sequence { i32 12445, i32 63, i32 0 }, %struct.reg_sequence { i32 12446, i32 1, i32 0 }, %struct.reg_sequence { i32 12447, i32 1, i32 0 }, %struct.reg_sequence { i32 12553, i32 3, i32 0 }, %struct.reg_sequence { i32 12564, i32 69, i32 0 }, %struct.reg_sequence { i32 12571, i32 193, i32 0 }, %struct.reg_sequence { i32 12572, i32 66, i32 0 }, %struct.reg_sequence { i32 12577, i32 2, i32 0 }, %struct.reg_sequence { i32 12578, i32 64, i32 0 }, %struct.reg_sequence { i32 12579, i32 7, i32 0 }, %struct.reg_sequence { i32 12580, i32 95, i32 0 }, %struct.reg_sequence { i32 12583, i32 68, i32 0 }, %struct.reg_sequence { i32 12588, i32 160, i32 0 }, %struct.reg_sequence { i32 12589, i32 183, i32 0 }, %struct.reg_sequence { i32 12595, i32 141, i32 0 }, %struct.reg_sequence { i32 12607, i32 2, i32 0 }, %struct.reg_sequence { i32 12610, i32 94, i32 0 }, %struct.reg_sequence { i32 12611, i32 7, i32 0 }], [76 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [153 x i64] [i64 151, i64 32, i64 12288, i64 12289, i64 12290, i64 12291, i64 12292, i64 12293, i64 12294, i64 12295, i64 12296, i64 12297, i64 12298, i64 12299, i64 12300, i64 12303, i64 12304, i64 12305, i64 12306, i64 12307, i64 12308, i64 12309, i64 12310, i64 12311, i64 12312, i64 12313, i64 12314, i64 12315, i64 12316, i64 12317, i64 12318, i64 12319, i64 12320, i64 12321, i64 12322, i64 12323, i64 12324, i64 12325, i64 12326, i64 12336, i64 12337, i64 12338, i64 12339, i64 12340, i64 12341, i64 12343, i64 12344, i64 12345, i64 12347, i64 12348, i64 12349, i64 12350, i64 12351, i64 12356, i64 12357, i64 12368, i64 12369, i64 12370, i64 12416, i64 12417, i64 12418, i64 12419, i64 12420, i64 12421, i64 12422, i64 12423, i64 12424, i64 12425, i64 12426, i64 12427, i64 12428, i64 12429, i64 12430, i64 12431, i64 12432, i64 12433, i64 12434, i64 12435, i64 12436, i64 12437, i64 12438, i64 12439, i64 12440, i64 12441, i64 12442, i64 12443, i64 12444, i64 12445, i64 12446, i64 12447, i64 12479, i64 12544, i64 12545, i64 12546, i64 12547, i64 12548, i64 12549, i64 12550, i64 12551, i64 12552, i64 12553, i64 12554, i64 12555, i64 12560, i64 12561, i64 12562, i64 12563, i64 12564, i64 12565, i64 12570, i64 12571, i64 12572, i64 12573, i64 12574, i64 12575, i64 12576, i64 12577, i64 12578, i64 12579, i64 12580, i64 12581, i64 12582, i64 12583, i64 12584, i64 12585, i64 12586, i64 12587, i64 12588, i64 12589, i64 12590, i64 12591, i64 12592, i64 12593, i64 12594, i64 12595, i64 12596, i64 12597, i64 12598, i64 12599, i64 12600, i64 12601, i64 12602, i64 12603, i64 12604, i64 12605, i64 12606, i64 12607, i64 12608, i64 12609, i64 12610, i64 12611, i64 12612, i64 12613]
@__sancov_gen_cov_switch_values.49 = internal global [30 x i64] [i64 28, i64 32, i64 12288, i64 12289, i64 12290, i64 12291, i64 12292, i64 12305, i64 12306, i64 12310, i64 12311, i64 12318, i64 12322, i64 12337, i64 12341, i64 12348, i64 12416, i64 12417, i64 12418, i64 12419, i64 12420, i64 12421, i64 12447, i64 12547, i64 12554, i64 12555, i64 12584, i64 12585, i64 12612, i64 12613]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@___asan_gen_.51 = private unnamed_addr constant [21 x i8] c"wsa881x_codec_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1148, i32 26 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"wsa881x_slave_id\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1141, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"wsa881x_slave_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1094, i32 29 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1153, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1109, i32 54 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1112, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"wsa_sink_dpn_prop\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 389, i32 28 }
@___asan_gen_.87 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [22 x i8] c"wsa881x_regmap_config\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 638, i32 29 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1129, i32 20 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1131, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [22 x i8] c"wsa881x_component_drv\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1049, i32 46 }
@___asan_gen_.105 = private unnamed_addr constant [13 x i8] c"wsa881x_dais\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1032, i32 34 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"wsa881x_defaults\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 211, i32 27 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1050, i32 10 }
@___asan_gen_.114 = private unnamed_addr constant [21 x i8] c"wsa881x_snd_controls\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 852, i32 38 }
@___asan_gen_.117 = private unnamed_addr constant [18 x i8] c"wsa881x_audio_map\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 866, i32 40 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 853, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [21 x i8] c"smart_boost_lvl_enum\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 845, i32 30 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 854, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [8 x i8] c"pa_gain\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 850, i32 14 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 856, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 858, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 860, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 862, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [21 x i8] c"smart_boost_lvl_text\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 838, i32 27 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 839, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 839, i32 13 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 839, i32 24 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 839, i32 35 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 840, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 840, i32 13 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 840, i32 24 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 840, i32 35 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 841, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 841, i32 13 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 841, i32 24 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 841, i32 35 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 842, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 842, i32 13 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 842, i32 24 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 842, i32 35 }
@___asan_gen_.200 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 771, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 952, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 953, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 956, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 959, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 961, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 963, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 966, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant [21 x i8] c"wsa881x_dapm_widgets\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 951, i32 41 }
@___asan_gen_.233 = private unnamed_addr constant [23 x i8] c"wsa881x_pre_pmu_pa_2_0\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 343, i32 34 }
@___asan_gen_.236 = private unnamed_addr constant [23 x i8] c"wsa881x_vi_txfe_en_2_0\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 348, i32 34 }
@___asan_gen_.239 = private unnamed_addr constant [16 x i8] c"wsa881x_dai_ops\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1025, i32 37 }
@___asan_gen_.242 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 1037, i32 19 }
@___asan_gen_.245 = private unnamed_addr constant [16 x i8] c"wsa881x_rev_2_0\00", align 1
@___asan_gen_.246 = private constant [30 x i8] c"../sound/soc/codecs/wsa881x.c\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 355, i32 28 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_wsa881x_codec_driver_exit, ptr @__initcall__kmod_snd_soc_wsa881x__238_1156_wsa881x_codec_driver_init6, ptr @wsa881x_codec_driver_exit, ptr @wsa881x_probe._entry, ptr @wsa881x_probe._entry.8, ptr @wsa881x_probe._entry_ptr, ptr @wsa881x_probe._entry_ptr.10, ptr @wsa881x_put_pa_gain._entry, ptr @wsa881x_put_pa_gain._entry_ptr, ptr @wsa881x_codec_driver, ptr @wsa881x_slave_id, ptr @wsa881x_slave_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @wsa_sink_dpn_prop, ptr @wsa881x_probe._key, ptr @wsa881x_regmap_config, ptr @.str.7, ptr @.str.9, ptr @wsa881x_component_drv, ptr @wsa881x_dais, ptr @wsa881x_defaults, ptr @.str.11, ptr @wsa881x_snd_controls, ptr @wsa881x_audio_map, ptr @.str.12, ptr @smart_boost_lvl_enum, ptr @.str.13, ptr @pa_gain, ptr @.compoundliteral, ptr @.str.14, ptr @.compoundliteral.15, ptr @.str.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @smart_boost_lvl_text, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @wsa881x_dapm_widgets, ptr @wsa881x_pre_pmu_pa_2_0, ptr @wsa881x_vi_txfe_en_2_0, ptr @wsa881x_dai_ops, ptr @.str.48, ptr @wsa881x_rev_2_0], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa881x_codec_driver to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa881x_slave_id to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa881x_slave_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa881x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa_sink_dpn_prop to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa881x_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa881x_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa881x_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa881x_component_drv to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa881x_dais to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa881x_defaults to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa881x_snd_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa881x_audio_map to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smart_boost_lvl_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pa_gain to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smart_boost_lvl_text to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa881x_put_pa_gain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa881x_dapm_widgets to i32), i32 1260, i32 1568, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa881x_pre_pmu_pa_2_0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa881x_vi_txfe_en_2_0 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa881x_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa881x_rev_2_0 to i32), i32 276, i32 352, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa881x_codec_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__sdw_register_driver(ptr noundef nonnull @wsa881x_codec_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wsa881x_codec_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sdw_unregister_driver(ptr noundef nonnull @wsa881x_codec_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdw_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sdw_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa881x_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %pdev, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 88, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 16) #8
  %sd_n = getelementptr inbounds %struct.wsa881x_priv, ptr %call.i, i32 0, i32 6
  %0 = ptrtoint ptr %sd_n to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %sd_n, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  %1 = ptrtoint ptr %sd_n to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sd_n, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %driver_data.i = getelementptr inbounds %struct.sdw_slave, ptr %pdev, i32 0, i32 1, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i, align 4
  %slave = getelementptr inbounds %struct.wsa881x_priv, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pdev, ptr %slave, align 4
  %dev12 = getelementptr inbounds %struct.wsa881x_priv, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %dev12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev12, align 4
  %sconfig = getelementptr inbounds %struct.wsa881x_priv, ptr %call.i, i32 0, i32 3
  %ch_count = getelementptr inbounds %struct.wsa881x_priv, ptr %call.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %ch_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %ch_count, align 4
  %bps = getelementptr inbounds %struct.wsa881x_priv, ptr %call.i, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %bps to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %bps, align 4
  %9 = ptrtoint ptr %sconfig to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 48000, ptr %sconfig, align 4
  %direction = getelementptr inbounds %struct.wsa881x_priv, ptr %call.i, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %direction, align 4
  %type = getelementptr inbounds %struct.wsa881x_priv, ptr %call.i, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %type, align 4
  %sink_ports = getelementptr inbounds %struct.sdw_slave, ptr %pdev, i32 0, i32 5, i32 15
  %12 = ptrtoint ptr %sink_ports to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 31, ptr %sink_ports, align 4
  %sink_dpn_prop = getelementptr inbounds %struct.sdw_slave, ptr %pdev, i32 0, i32 5, i32 18
  %13 = ptrtoint ptr %sink_dpn_prop to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @wsa_sink_dpn_prop, ptr %sink_dpn_prop, align 4
  %scp_int1_mask = getelementptr inbounds %struct.sdw_slave, ptr %pdev, i32 0, i32 5, i32 19
  %14 = ptrtoint ptr %scp_int1_mask to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %scp_int1_mask, align 4
  %call20 = tail call i32 @gpiod_direction_output(ptr noundef %call2, i32 noundef 1) #8
  %call21 = tail call ptr @__devm_regmap_init_sdw(ptr noundef %pdev, ptr noundef nonnull @wsa881x_regmap_config, ptr noundef nonnull @wsa881x_probe._key, ptr noundef nonnull @.str.7) #8
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call21, ptr %call.i, align 4
  %cmp.i60 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60, label %do.end27, label %if.end31

do.end27:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @wsa881x_component_drv, ptr noundef nonnull @wsa881x_dais, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end27, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %do.end ], [ %18, %do.end27 ], [ %call33, %if.end31 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_sdw(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wsa881x_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 12288, label %entry.return_crit_edge
    i32 12289, label %entry.return_crit_edge1
    i32 12290, label %entry.return_crit_edge2
    i32 12291, label %entry.return_crit_edge3
    i32 12292, label %entry.return_crit_edge4
    i32 12293, label %entry.return_crit_edge5
    i32 12294, label %entry.return_crit_edge6
    i32 12295, label %entry.return_crit_edge7
    i32 12296, label %entry.return_crit_edge8
    i32 12297, label %entry.return_crit_edge9
    i32 12298, label %entry.return_crit_edge10
    i32 12299, label %entry.return_crit_edge11
    i32 12300, label %entry.return_crit_edge12
    i32 12303, label %entry.return_crit_edge13
    i32 12304, label %entry.return_crit_edge14
    i32 12305, label %entry.return_crit_edge15
    i32 12306, label %entry.return_crit_edge16
    i32 12307, label %entry.return_crit_edge17
    i32 12308, label %entry.return_crit_edge18
    i32 12309, label %entry.return_crit_edge19
    i32 12310, label %entry.return_crit_edge20
    i32 12311, label %entry.return_crit_edge21
    i32 12312, label %entry.return_crit_edge22
    i32 12313, label %entry.return_crit_edge23
    i32 12314, label %entry.return_crit_edge24
    i32 12315, label %entry.return_crit_edge25
    i32 12316, label %entry.return_crit_edge26
    i32 12317, label %entry.return_crit_edge27
    i32 12318, label %entry.return_crit_edge28
    i32 12319, label %entry.return_crit_edge29
    i32 12320, label %entry.return_crit_edge30
    i32 12321, label %entry.return_crit_edge31
    i32 12322, label %entry.return_crit_edge32
    i32 12323, label %entry.return_crit_edge33
    i32 12324, label %entry.return_crit_edge34
    i32 12325, label %entry.return_crit_edge35
    i32 12326, label %entry.return_crit_edge36
    i32 12336, label %entry.return_crit_edge37
    i32 12337, label %entry.return_crit_edge38
    i32 12338, label %entry.return_crit_edge39
    i32 12339, label %entry.return_crit_edge40
    i32 12340, label %entry.return_crit_edge41
    i32 12341, label %entry.return_crit_edge42
    i32 12343, label %entry.return_crit_edge43
    i32 12344, label %entry.return_crit_edge44
    i32 12345, label %entry.return_crit_edge45
    i32 12347, label %entry.return_crit_edge46
    i32 12348, label %entry.return_crit_edge47
    i32 12349, label %entry.return_crit_edge48
    i32 12350, label %entry.return_crit_edge49
    i32 12351, label %entry.return_crit_edge50
    i32 12356, label %entry.return_crit_edge51
    i32 12357, label %entry.return_crit_edge52
    i32 12368, label %entry.return_crit_edge53
    i32 12369, label %entry.return_crit_edge54
    i32 12370, label %entry.return_crit_edge55
    i32 12416, label %entry.return_crit_edge56
    i32 12417, label %entry.return_crit_edge57
    i32 12418, label %entry.return_crit_edge58
    i32 12419, label %entry.return_crit_edge59
    i32 12420, label %entry.return_crit_edge60
    i32 12421, label %entry.return_crit_edge61
    i32 12422, label %entry.return_crit_edge62
    i32 12423, label %entry.return_crit_edge63
    i32 12424, label %entry.return_crit_edge64
    i32 12425, label %entry.return_crit_edge65
    i32 12426, label %entry.return_crit_edge66
    i32 12427, label %entry.return_crit_edge67
    i32 12428, label %entry.return_crit_edge68
    i32 12429, label %entry.return_crit_edge69
    i32 12430, label %entry.return_crit_edge70
    i32 12431, label %entry.return_crit_edge71
    i32 12432, label %entry.return_crit_edge72
    i32 12433, label %entry.return_crit_edge73
    i32 12434, label %entry.return_crit_edge74
    i32 12435, label %entry.return_crit_edge75
    i32 12436, label %entry.return_crit_edge76
    i32 12437, label %entry.return_crit_edge77
    i32 12438, label %entry.return_crit_edge78
    i32 12439, label %entry.return_crit_edge79
    i32 12440, label %entry.return_crit_edge80
    i32 12441, label %entry.return_crit_edge81
    i32 12442, label %entry.return_crit_edge82
    i32 12443, label %entry.return_crit_edge83
    i32 12444, label %entry.return_crit_edge84
    i32 12445, label %entry.return_crit_edge85
    i32 12446, label %entry.return_crit_edge86
    i32 12447, label %entry.return_crit_edge87
    i32 12479, label %entry.return_crit_edge88
    i32 12544, label %entry.return_crit_edge89
    i32 12545, label %entry.return_crit_edge90
    i32 12546, label %entry.return_crit_edge91
    i32 12547, label %entry.return_crit_edge92
    i32 12548, label %entry.return_crit_edge93
    i32 12549, label %entry.return_crit_edge94
    i32 12550, label %entry.return_crit_edge95
    i32 12551, label %entry.return_crit_edge96
    i32 12552, label %entry.return_crit_edge97
    i32 12553, label %entry.return_crit_edge98
    i32 12554, label %entry.return_crit_edge99
    i32 12555, label %entry.return_crit_edge100
    i32 12560, label %entry.return_crit_edge101
    i32 12561, label %entry.return_crit_edge102
    i32 12562, label %entry.return_crit_edge103
    i32 12563, label %entry.return_crit_edge104
    i32 12564, label %entry.return_crit_edge105
    i32 12565, label %entry.return_crit_edge106
    i32 12570, label %entry.return_crit_edge107
    i32 12571, label %entry.return_crit_edge108
    i32 12572, label %entry.return_crit_edge109
    i32 12573, label %entry.return_crit_edge110
    i32 12574, label %entry.return_crit_edge111
    i32 12575, label %entry.return_crit_edge112
    i32 12576, label %entry.return_crit_edge113
    i32 12577, label %entry.return_crit_edge114
    i32 12578, label %entry.return_crit_edge115
    i32 12579, label %entry.return_crit_edge116
    i32 12580, label %entry.return_crit_edge117
    i32 12581, label %entry.return_crit_edge118
    i32 12582, label %entry.return_crit_edge119
    i32 12583, label %entry.return_crit_edge120
    i32 12584, label %entry.return_crit_edge121
    i32 12585, label %entry.return_crit_edge122
    i32 12586, label %entry.return_crit_edge123
    i32 12587, label %entry.return_crit_edge124
    i32 12588, label %entry.return_crit_edge125
    i32 12589, label %entry.return_crit_edge126
    i32 12590, label %entry.return_crit_edge127
    i32 12591, label %entry.return_crit_edge128
    i32 12592, label %entry.return_crit_edge129
    i32 12593, label %entry.return_crit_edge130
    i32 12594, label %entry.return_crit_edge131
    i32 12595, label %entry.return_crit_edge132
    i32 12596, label %entry.return_crit_edge133
    i32 12597, label %entry.return_crit_edge134
    i32 12598, label %entry.return_crit_edge135
    i32 12599, label %entry.return_crit_edge136
    i32 12600, label %entry.return_crit_edge137
    i32 12601, label %entry.return_crit_edge138
    i32 12602, label %entry.return_crit_edge139
    i32 12603, label %entry.return_crit_edge140
    i32 12604, label %entry.return_crit_edge141
    i32 12605, label %entry.return_crit_edge142
    i32 12606, label %entry.return_crit_edge143
    i32 12607, label %entry.return_crit_edge144
    i32 12608, label %entry.return_crit_edge145
    i32 12609, label %entry.return_crit_edge146
    i32 12610, label %entry.return_crit_edge147
    i32 12611, label %entry.return_crit_edge148
    i32 12612, label %entry.return_crit_edge149
    i32 12613, label %entry.return_crit_edge150
  ]

entry.return_crit_edge150:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge149:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge148:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge147:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge146:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge145:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge144:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge143:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge142:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge141:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge140:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge139:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge138:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge134:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge133:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge132:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge131:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge129:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge128:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge127:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge126:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge125:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge124:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge123:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge122:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge121:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge119:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge118:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge117:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge116:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110, %entry.return_crit_edge111, %entry.return_crit_edge112, %entry.return_crit_edge113, %entry.return_crit_edge114, %entry.return_crit_edge115, %entry.return_crit_edge116, %entry.return_crit_edge117, %entry.return_crit_edge118, %entry.return_crit_edge119, %entry.return_crit_edge120, %entry.return_crit_edge121, %entry.return_crit_edge122, %entry.return_crit_edge123, %entry.return_crit_edge124, %entry.return_crit_edge125, %entry.return_crit_edge126, %entry.return_crit_edge127, %entry.return_crit_edge128, %entry.return_crit_edge129, %entry.return_crit_edge130, %entry.return_crit_edge131, %entry.return_crit_edge132, %entry.return_crit_edge133, %entry.return_crit_edge134, %entry.return_crit_edge135, %entry.return_crit_edge136, %entry.return_crit_edge137, %entry.return_crit_edge138, %entry.return_crit_edge139, %entry.return_crit_edge140, %entry.return_crit_edge141, %entry.return_crit_edge142, %entry.return_crit_edge143, %entry.return_crit_edge144, %entry.return_crit_edge145, %entry.return_crit_edge146, %entry.return_crit_edge147, %entry.return_crit_edge148, %entry.return_crit_edge149, %entry.return_crit_edge150
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ], [ true, %entry.return_crit_edge111 ], [ true, %entry.return_crit_edge112 ], [ true, %entry.return_crit_edge113 ], [ true, %entry.return_crit_edge114 ], [ true, %entry.return_crit_edge115 ], [ true, %entry.return_crit_edge116 ], [ true, %entry.return_crit_edge117 ], [ true, %entry.return_crit_edge118 ], [ true, %entry.return_crit_edge119 ], [ true, %entry.return_crit_edge120 ], [ true, %entry.return_crit_edge121 ], [ true, %entry.return_crit_edge122 ], [ true, %entry.return_crit_edge123 ], [ true, %entry.return_crit_edge124 ], [ true, %entry.return_crit_edge125 ], [ true, %entry.return_crit_edge126 ], [ true, %entry.return_crit_edge127 ], [ true, %entry.return_crit_edge128 ], [ true, %entry.return_crit_edge129 ], [ true, %entry.return_crit_edge130 ], [ true, %entry.return_crit_edge131 ], [ true, %entry.return_crit_edge132 ], [ true, %entry.return_crit_edge133 ], [ true, %entry.return_crit_edge134 ], [ true, %entry.return_crit_edge135 ], [ true, %entry.return_crit_edge136 ], [ true, %entry.return_crit_edge137 ], [ true, %entry.return_crit_edge138 ], [ true, %entry.return_crit_edge139 ], [ true, %entry.return_crit_edge140 ], [ true, %entry.return_crit_edge141 ], [ true, %entry.return_crit_edge142 ], [ true, %entry.return_crit_edge143 ], [ true, %entry.return_crit_edge144 ], [ true, %entry.return_crit_edge145 ], [ true, %entry.return_crit_edge146 ], [ true, %entry.return_crit_edge147 ], [ true, %entry.return_crit_edge148 ], [ true, %entry.return_crit_edge149 ], [ true, %entry.return_crit_edge150 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wsa881x_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %reg, label %sw.default [
    i32 12288, label %entry.return_crit_edge
    i32 12289, label %entry.return_crit_edge1
    i32 12290, label %entry.return_crit_edge2
    i32 12291, label %entry.return_crit_edge3
    i32 12292, label %entry.return_crit_edge4
    i32 12305, label %entry.return_crit_edge5
    i32 12306, label %entry.return_crit_edge6
    i32 12310, label %entry.return_crit_edge7
    i32 12311, label %entry.return_crit_edge8
    i32 12318, label %entry.return_crit_edge9
    i32 12322, label %entry.return_crit_edge10
    i32 12337, label %entry.return_crit_edge11
    i32 12341, label %entry.return_crit_edge12
    i32 12348, label %entry.return_crit_edge13
    i32 12584, label %entry.return_crit_edge14
    i32 12585, label %entry.return_crit_edge15
    i32 12613, label %entry.return_crit_edge16
    i32 12416, label %entry.return_crit_edge17
    i32 12417, label %entry.return_crit_edge18
    i32 12418, label %entry.return_crit_edge19
    i32 12419, label %entry.return_crit_edge20
    i32 12420, label %entry.return_crit_edge21
    i32 12421, label %entry.return_crit_edge22
    i32 12447, label %entry.return_crit_edge23
    i32 12554, label %entry.return_crit_edge24
    i32 12555, label %entry.return_crit_edge25
    i32 12547, label %entry.return_crit_edge26
    i32 12612, label %entry.return_crit_edge27
  ]

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa881x_component_probe(ptr noundef %comp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %comp, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @snd_soc_component_init_regmap(ptr noundef %comp, ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa881x_put_pa_gain(ptr nocapture noundef readonly %kc, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kc, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kc, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = inttoptr i32 %3 to ptr
  %max1 = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %max1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  %7 = tail call i32 @llvm.ctlz.i32(i32 %6, i1 true) #8, !range !141
  %sub.i = sub nuw nsw i32 32, %7
  %sub.i.op = shl nsw i32 -1, %sub.i
  %sub.i.op.op = xor i32 %sub.i.op, -1
  %sub = select i1 %tobool.not.i, i32 0, i32 %sub.i.op.op
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %sub3 = sub i32 %6, %9
  %and = and i32 %sub, %sub3
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and)
  %cmp = icmp sgt i32 %and, 9
  %add = add i32 %and, 3
  %min_gain.0 = select i1 %cmp, i32 12, i32 %add
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1010, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %min_gain.0)
  %cmp4.not17 = icmp sgt i32 %and, %min_gain.0
  br i1 %cmp4.not17, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %for.body.lr.ph
  %val.018 = phi i32 [ %min_gain.0, %for.body.lr.ph ], [ %dec, %if.end9.for.body_crit_edge ]
  %shl5 = shl i32 %val.018, 4
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12571, i32 noundef 240, i32 noundef %shl5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end, label %for.body.if.end9_crit_edge

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.38) #11
  br label %if.end9

if.end9:                                          ; preds = %do.end, %for.body.if.end9_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1010, i32 noundef 2) #8
  %dec = add i32 %val.018, -1
  %cmp4.not = icmp sgt i32 %and, %dec
  br i1 %cmp4.not, label %if.end9.for.end_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end9.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wsa881x_get_port(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %reg = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  %arrayidx = getelementptr %struct.wsa881x_priv, ptr %5, i32 0, i32 10, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1, !range !142
  %13 = zext i8 %12 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa881x_set_port(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %reg = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  %arrayidx8 = getelementptr %struct.wsa881x_priv, ptr %5, i32 0, i32 10, i32 %10
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx8, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool9.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool9.not, label %if.then.if.end14_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.else:                                          ; preds = %entry
  br i1 %tobool9.not, label %if.else.cleanup_crit_edge, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.else.if.end14_crit_edge, %if.then.if.end14_crit_edge
  %.sink = phi i8 [ 1, %if.then.if.end14_crit_edge ], [ 0, %if.else.if.end14_crit_edge ]
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp = icmp eq i32 %10, 2
  br i1 %cmp, label %if.then15, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx17 = getelementptr %struct.wsa881x_priv, ptr %5, i32 0, i32 10, i32 2
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx17, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool18.not = icmp eq i8 %17, 0
  %..i = select i1 %tobool18.not, i32 0, i32 128
  %call1.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 12586, i32 noundef 128, i32 noundef %..i) #8
  tail call void @usleep_range_state(i32 noundef 1500, i32 noundef 1510, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end14.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 1, %if.then15 ], [ 1, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa881x_spkr_pa_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
    i32 8, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 12575, i32 noundef 192, i32 noundef 128) #8
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %call3 = tail call i32 @regmap_multi_reg_write(ptr noundef %8, ptr noundef nonnull @wsa881x_pre_pmu_pa_2_0, i32 noundef 2) #8
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 12571, i32 noundef 8, i32 noundef 8) #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.wsa881x_priv, ptr %5, i32 0, i32 9, i32 3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %sw.bb5.sw.epilog_crit_edge, label %if.then

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %call1.i = tail call i32 @regmap_multi_reg_write(ptr noundef %12, ptr noundef nonnull @wsa881x_vi_txfe_en_2_0, i32 noundef 3) #8
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 12565, i32 noundef 7, i32 noundef 1) #8
  %call.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 12560, i32 noundef 128, i32 noundef 128) #8
  %call4.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 12561, i32 noundef 128, i32 noundef 128) #8
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %arrayidx11 = getelementptr %struct.wsa881x_priv, ptr %5, i32 0, i32 9, i32 3
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx11, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool12.not = icmp eq i8 %14, 0
  br i1 %tobool12.not, label %sw.bb9.if.end16_crit_edge, label %if.then13

sw.bb9.if.end16_crit_edge:                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then13:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  %call.i28 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 12560, i32 noundef 128, i32 noundef 0) #8
  %call4.i29 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 12561, i32 noundef 128, i32 noundef 0) #8
  %call2.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 12608, i32 noundef 8, i32 noundef 8) #8
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 210, i32 noundef 2) #8
  %call3.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 12602, i32 noundef 1, i32 noundef 0) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %sw.bb9.if.end16_crit_edge
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 12575, i32 noundef 192, i32 noundef 192) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end16, %if.then, %sw.bb5.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_component_init_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wsa881x_set_sdw_stream(ptr nocapture noundef readonly %dai, ptr noundef %stream, i32 noundef %direction) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %sruntime = getelementptr inbounds %struct.wsa881x_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sruntime to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %stream, ptr %sruntime, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa881x_digital_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %stream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %. = select i1 %tobool.not, i32 128, i32 0
  %call.i5 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12570, i32 noundef 128, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa881x_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readnone %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %active_ports = getelementptr inbounds %struct.wsa881x_priv, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %active_ports to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %active_ports, align 4
  %arrayidx = getelementptr %struct.wsa881x_priv, ptr %3, i32 0, i32 10, i32 0
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %active_ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %active_ports, align 4
  %arrayidx2 = getelementptr %struct.wsa881x_priv, ptr %3, i32 0, i32 5, i32 %8
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 4294967297, ptr %arrayidx2, align 4
  %10 = load i32, ptr %active_ports, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %active_ports, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.wsa881x_priv, ptr %3, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.1, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.1 = icmp eq i8 %12, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %active_ports to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %active_ports, align 4
  %arrayidx2.1 = getelementptr %struct.wsa881x_priv, ptr %3, i32 0, i32 5, i32 %14
  %15 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 8589934607, ptr %arrayidx2.1, align 4
  %16 = load i32, ptr %active_ports, align 4
  %inc.1 = add i32 %16, 1
  store i32 %inc.1, ptr %active_ports, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.wsa881x_priv, ptr %3, i32 0, i32 10, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.2, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.2 = icmp eq i8 %18, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %active_ports to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %active_ports, align 4
  %arrayidx2.2 = getelementptr %struct.wsa881x_priv, ptr %3, i32 0, i32 5, i32 %20
  %21 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 12884901891, ptr %arrayidx2.2, align 4
  %22 = load i32, ptr %active_ports, align 4
  %inc.2 = add i32 %22, 1
  store i32 %inc.2, ptr %active_ports, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.wsa881x_priv, ptr %3, i32 0, i32 10, i32 3
  %23 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.3, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.3 = icmp eq i8 %24, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %active_ports to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %active_ports, align 4
  %arrayidx2.3 = getelementptr %struct.wsa881x_priv, ptr %3, i32 0, i32 5, i32 %26
  %27 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 17179869187, ptr %arrayidx2.3, align 4
  %28 = load i32, ptr %active_ports, align 4
  %inc.3 = add i32 %28, 1
  store i32 %inc.3, ptr %active_ports, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  %slave = getelementptr inbounds %struct.wsa881x_priv, ptr %3, i32 0, i32 2
  %29 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %slave, align 4
  %sconfig = getelementptr inbounds %struct.wsa881x_priv, ptr %3, i32 0, i32 3
  %port_config6 = getelementptr inbounds %struct.wsa881x_priv, ptr %3, i32 0, i32 5
  %31 = ptrtoint ptr %active_ports to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %active_ports, align 4
  %sruntime = getelementptr inbounds %struct.wsa881x_priv, ptr %3, i32 0, i32 4
  %33 = ptrtoint ptr %sruntime to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sruntime, align 4
  %call8 = tail call i32 @sdw_stream_add_slave(ptr noundef %30, ptr noundef %sconfig, ptr noundef %port_config6, i32 noundef %32, ptr noundef %34) #8
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa881x_hw_free(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %slave = getelementptr inbounds %struct.wsa881x_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave, align 4
  %sruntime = getelementptr inbounds %struct.wsa881x_priv, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %sruntime to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sruntime, align 4
  %call1 = tail call i32 @sdw_stream_remove_slave(ptr noundef %5, ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_stream_add_slave(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_stream_remove_slave(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa881x_update_status(ptr nocapture noundef readonly %slave, i32 noundef %status) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status)
  %cmp = icmp eq i32 %status, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dev_num = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 10
  %2 = ptrtoint ptr %dev_num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dev_num, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp1.not = icmp eq i16 %3, 0
  br i1 %cmp1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %val.i, align 4
  %version.i = getelementptr inbounds %struct.wsa881x_priv, ptr %1, i32 0, i32 7
  %call.i = tail call i32 @regmap_read(ptr noundef %5, i32 noundef 12289, ptr noundef %version.i) #8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call2.i = tail call i32 @regmap_register_patch(ptr noundef %8, ptr noundef nonnull @wsa881x_rev_2_0, i32 noundef 23) #8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12299, i32 noundef 7, i32 noundef 7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i57.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12293, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i58.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12293, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i59.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12297, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i60.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12575, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i61.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12578, i32 noundef 192, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i62.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12578, i32 noundef 6, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i63.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12580, i32 noundef 255, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i64.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12581, i32 noundef 240, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i65.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12581, i32 noundef 14, i32 noundef 14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i66.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12595, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i67.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12599, i32 noundef 255, i32 noundef 20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i68.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12597, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i69.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12597, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i70.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12593, i32 noundef 12, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i71.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12593, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call19.i = call i32 @regmap_read(ptr noundef %5, i32 noundef 12416, ptr noundef nonnull %val.i) #8
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.then.wsa881x_init.exit_crit_edge, label %if.then.i

if.then.wsa881x_init.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %wsa881x_init.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call.i72.i = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12589, i32 noundef 240, i32 noundef 112, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %wsa881x_init.exit

wsa881x_init.exit:                                ; preds = %if.then.i, %if.then.wsa881x_init.exit_crit_edge
  %call.i73.i = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12590, i32 noundef 240, i32 noundef 48, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i74.i = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12570, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i75.i = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12587, i32 noundef 15, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i76.i = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12575, i32 noundef 48, i32 noundef 48, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i77.i = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12575, i32 noundef 12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i78.i = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12444, i32 noundef 63, i32 noundef 58, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i79.i = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12610, i32 noundef 255, i32 noundef 178, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i80.i = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12611, i32 noundef 255, i32 noundef 5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %if.end

if.end:                                           ; preds = %wsa881x_init.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa881x_bus_config(ptr noundef %slave, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %next_bank = getelementptr inbounds %struct.sdw_bus_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %next_bank to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %next_bank, align 4
  %mul = shl i32 %1, 4
  %add = add i32 %mul, 224
  %call = tail call i32 @sdw_write(ptr noundef %slave, i32 noundef %add, i8 noundef zeroext 1) #8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wsa881x_port_prep(ptr nocapture noundef readonly %slave, ptr nocapture noundef readonly %prepare_ch, i32 noundef %state) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %state)
  %cmp = icmp eq i32 %state, 2
  %2 = ptrtoint ptr %prepare_ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prepare_ch, align 4
  %sub = add i32 %3, -1
  %arrayidx = getelementptr %struct.wsa881x_priv, ptr %1, i32 0, i32 9, i32 %sub
  %. = zext i1 %cmp to i8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %., ptr %arrayidx, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_write(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !92, !93, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !{ptr @__initcall__kmod_snd_soc_wsa881x__238_1156_wsa881x_codec_driver_init6, !1, !"__initcall__kmod_snd_soc_wsa881x__238_1156_wsa881x_codec_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/wsa881x.c", i32 1156, i32 1}
!2 = !{ptr @__exitcall_wsa881x_codec_driver_exit, !1, !"__exitcall_wsa881x_codec_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description239, !4, !"__UNIQUE_ID_description239", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/wsa881x.c", i32 1158, i32 1}
!5 = !{ptr @__UNIQUE_ID_file240, !6, !"__UNIQUE_ID_file240", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/wsa881x.c", i32 1159, i32 1}
!7 = !{ptr @__UNIQUE_ID_license241, !6, !"__UNIQUE_ID_license241", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/wsa881x.c", i32 1153, i32 11}
!10 = !{ptr @wsa881x_codec_driver, !11, !"wsa881x_codec_driver", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/wsa881x.c", i32 1148, i32 26}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/wsa881x.c", i32 1109, i32 54}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/wsa881x.c", i32 1112, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @wsa881x_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @wsa881x_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @wsa881x_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/wsa881x.c", i32 1129, i32 20}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/wsa881x.c", i32 1131, i32 3}
!27 = !{ptr @wsa881x_probe._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @wsa881x_probe._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @wsa_sink_dpn_prop, !30, !"wsa_sink_dpn_prop", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/wsa881x.c", i32 389, i32 28}
!31 = !{ptr @wsa881x_regmap_config, !32, !"wsa881x_regmap_config", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/wsa881x.c", i32 638, i32 29}
!33 = !{ptr @wsa881x_defaults, !34, !"wsa881x_defaults", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/wsa881x.c", i32 211, i32 27}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/wsa881x.c", i32 1050, i32 10}
!37 = !{ptr @wsa881x_component_drv, !38, !"wsa881x_component_drv", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/wsa881x.c", i32 1049, i32 46}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/wsa881x.c", i32 853, i32 2}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/wsa881x.c", i32 854, i32 2}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/wsa881x.c", i32 856, i32 2}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/wsa881x.c", i32 858, i32 2}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/wsa881x.c", i32 860, i32 2}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/wsa881x.c", i32 862, i32 2}
!51 = !{ptr @wsa881x_snd_controls, !52, !"wsa881x_snd_controls", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/wsa881x.c", i32 852, i32 38}
!53 = !{ptr @smart_boost_lvl_enum, !54, !"smart_boost_lvl_enum", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/wsa881x.c", i32 845, i32 30}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/wsa881x.c", i32 839, i32 2}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/wsa881x.c", i32 839, i32 13}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/wsa881x.c", i32 839, i32 24}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/wsa881x.c", i32 839, i32 35}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/wsa881x.c", i32 840, i32 2}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/wsa881x.c", i32 840, i32 13}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/wsa881x.c", i32 840, i32 24}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/wsa881x.c", i32 840, i32 35}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/wsa881x.c", i32 841, i32 2}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/wsa881x.c", i32 841, i32 13}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/wsa881x.c", i32 841, i32 24}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/wsa881x.c", i32 841, i32 35}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/wsa881x.c", i32 842, i32 2}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/wsa881x.c", i32 842, i32 13}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/wsa881x.c", i32 842, i32 24}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/wsa881x.c", i32 842, i32 35}
!87 = !{ptr @smart_boost_lvl_text, !88, !"smart_boost_lvl_text", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/wsa881x.c", i32 838, i32 27}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/wsa881x.c", i32 771, i32 4}
!91 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @wsa881x_put_pa_gain._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @wsa881x_put_pa_gain._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @pa_gain, !95, !"pa_gain", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/wsa881x.c", i32 850, i32 14}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/wsa881x.c", i32 952, i32 2}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/wsa881x.c", i32 953, i32 2}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/wsa881x.c", i32 956, i32 2}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/wsa881x.c", i32 959, i32 2}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/wsa881x.c", i32 961, i32 2}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/wsa881x.c", i32 963, i32 2}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/wsa881x.c", i32 966, i32 2}
!110 = !{ptr @wsa881x_dapm_widgets, !111, !"wsa881x_dapm_widgets", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/wsa881x.c", i32 951, i32 41}
!112 = !{ptr @wsa881x_pre_pmu_pa_2_0, !113, !"wsa881x_pre_pmu_pa_2_0", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/wsa881x.c", i32 343, i32 34}
!114 = !{ptr @wsa881x_vi_txfe_en_2_0, !115, !"wsa881x_vi_txfe_en_2_0", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/wsa881x.c", i32 348, i32 34}
!116 = !{ptr @wsa881x_audio_map, !117, !"wsa881x_audio_map", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/wsa881x.c", i32 866, i32 40}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/wsa881x.c", i32 1037, i32 19}
!120 = !{ptr @wsa881x_dais, !121, !"wsa881x_dais", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/wsa881x.c", i32 1032, i32 34}
!122 = !{ptr @wsa881x_dai_ops, !123, !"wsa881x_dai_ops", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/wsa881x.c", i32 1025, i32 37}
!124 = distinct !{null, !125, !"wsa881x_pconfig", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/wsa881x.c", i32 425, i32 31}
!126 = !{ptr @wsa881x_slave_id, !127, !"wsa881x_slave_id", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/wsa881x.c", i32 1141, i32 35}
!128 = !{ptr @wsa881x_slave_ops, !129, !"wsa881x_slave_ops", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/wsa881x.c", i32 1094, i32 29}
!130 = !{ptr @wsa881x_rev_2_0, !131, !"wsa881x_rev_2_0", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/wsa881x.c", i32 355, i32 28}
!132 = !{i32 1, !"wchar_size", i32 2}
!133 = !{i32 1, !"min_enum_size", i32 4}
!134 = !{i32 8, !"branch-target-enforcement", i32 0}
!135 = !{i32 8, !"sign-return-address", i32 0}
!136 = !{i32 8, !"sign-return-address-all", i32 0}
!137 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"uwtable", i32 1}
!139 = !{i32 7, !"frame-pointer", i32 2}
!140 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!141 = !{i32 0, i32 33}
!142 = !{i8 0, i8 2}
