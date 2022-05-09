; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/max98373-sdw.c_pt.bc'
source_filename = "../sound/soc/codecs/max98373-sdw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdw_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdw_device_id = type { i16, i16, i8, i8, i32 }
%struct.sdw_slave_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.reg_default = type { i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.sdw_slave = type { %struct.sdw_slave_id, %struct.device, i32, ptr, ptr, %struct.sdw_slave_prop, ptr, %struct.list_head, [15 x %struct.completion], [15 x i32], i16, i16, i8, %struct.completion, %struct.completion, %struct.completion, i32, i8, i8 }
%struct.sdw_slave_id = type { i16, i16, i8, i8, i8 }
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
%struct.max98373_priv = type { ptr, i32, i32, i32, i32, i8, i32, i8, ptr, i32, ptr, i8, i8, i32, i32 }
%struct.max98373_cache = type { i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.sdw_stream_config = type { i32, i32, i32, i32, i32 }
%struct.sdw_port_config = type { i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.sdw_dpn_prop = type { i32, i32, i32, i32, ptr, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i8, i8, i32, ptr }
%struct.sdw_bus_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_snd_soc_max98373_sdw__240_901_max98373_sdw_driver_init6 = internal global ptr @max98373_sdw_driver_init, section ".initcall6.init", align 4
@max98373_sdw_driver = internal global { %struct.sdw_driver, [60 x i8] } { %struct.sdw_driver { ptr null, ptr @max98373_sdw_probe, ptr null, ptr null, ptr @max98373_id, ptr @max98373_slave_ops, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max98373_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98373_pm, ptr null, ptr null } }, [60 x i8] zeroinitializer }, align 32
@__exitcall_max98373_sdw_driver_exit = internal global ptr @max98373_sdw_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [58 x i8] c"snd_soc_max98373_sdw.description=ASoC MAX98373 driver SDW\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [80 x i8] c"snd_soc_max98373_sdw.author=Oleg Sherbakov <oleg.sherbakov@maximintegrated.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [64 x i8] c"snd_soc_max98373_sdw.file=sound/soc/codecs/snd-soc-max98373-sdw\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [36 x i8] c"snd_soc_max98373_sdw.license=GPL v2\00", section ".modinfo", align 1
@max98373_id = internal constant { [2 x %struct.sdw_device_id], [40 x i8] } { [2 x %struct.sdw_device_id] [%struct.sdw_device_id { i16 415, i16 -31885, i8 0, i8 0, i32 0 }, %struct.sdw_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@max98373_slave_ops = internal global { %struct.sdw_slave_ops, [40 x i8] } { %struct.sdw_slave_ops { ptr @max98373_read_prop, ptr null, ptr @max98373_update_status, ptr @max98373_bus_config, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max98373\00", [23 x i8] zeroinitializer }, align 32
@max98373_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max98373\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max98373_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @max98373_suspend, ptr @max98373_resume, ptr @max98373_suspend, ptr @max98373_resume, ptr @max98373_suspend, ptr @max98373_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98373_suspend, ptr @max98373_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@max98373_sdw_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max98373_sdw_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 0, i32 0, i32 8, ptr null, ptr @max98373_readable_register, ptr @max98373_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 8703, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98373_reg, i32 146, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"max98373_sdw:858:(&max98373_sdw_regmap)->lock\00", [50 x i8] zeroinitializer }, align 32
@max98373_reg = internal global { [146 x %struct.reg_default], [304 x i8] } { [146 x %struct.reg_default] [%struct.reg_default { i32 64, i32 0 }, %struct.reg_default { i32 65, i32 0 }, %struct.reg_default { i32 66, i32 0 }, %struct.reg_default { i32 68, i32 0 }, %struct.reg_default { i32 69, i32 0 }, %struct.reg_default { i32 70, i32 0 }, %struct.reg_default { i32 80, i32 33 }, %struct.reg_default { i32 81, i32 1 }, %struct.reg_default { i32 82, i32 159 }, %struct.reg_default { i32 83, i32 135 }, %struct.reg_default { i32 84, i32 8 }, %struct.reg_default { i32 85, i32 0 }, %struct.reg_default { i32 96, i32 0 }, %struct.reg_default { i32 112, i32 0 }, %struct.reg_default { i32 256, i32 0 }, %struct.reg_default { i32 257, i32 0 }, %struct.reg_default { i32 258, i32 0 }, %struct.reg_default { i32 259, i32 0 }, %struct.reg_default { i32 260, i32 0 }, %struct.reg_default { i32 261, i32 0 }, %struct.reg_default { i32 288, i32 0 }, %struct.reg_default { i32 290, i32 0 }, %struct.reg_default { i32 291, i32 0 }, %struct.reg_default { i32 292, i32 0 }, %struct.reg_default { i32 293, i32 0 }, %struct.reg_default { i32 294, i32 0 }, %struct.reg_default { i32 295, i32 0 }, %struct.reg_default { i32 304, i32 0 }, %struct.reg_default { i32 306, i32 0 }, %struct.reg_default { i32 307, i32 0 }, %struct.reg_default { i32 308, i32 0 }, %struct.reg_default { i32 309, i32 0 }, %struct.reg_default { i32 310, i32 310 }, %struct.reg_default { i32 311, i32 0 }, %struct.reg_default { i32 768, i32 0 }, %struct.reg_default { i32 769, i32 0 }, %struct.reg_default { i32 770, i32 0 }, %struct.reg_default { i32 771, i32 0 }, %struct.reg_default { i32 772, i32 0 }, %struct.reg_default { i32 773, i32 0 }, %struct.reg_default { i32 800, i32 0 }, %struct.reg_default { i32 802, i32 0 }, %struct.reg_default { i32 803, i32 0 }, %struct.reg_default { i32 804, i32 0 }, %struct.reg_default { i32 805, i32 0 }, %struct.reg_default { i32 806, i32 0 }, %struct.reg_default { i32 807, i32 0 }, %struct.reg_default { i32 816, i32 0 }, %struct.reg_default { i32 818, i32 0 }, %struct.reg_default { i32 819, i32 0 }, %struct.reg_default { i32 820, i32 0 }, %struct.reg_default { i32 821, i32 0 }, %struct.reg_default { i32 822, i32 0 }, %struct.reg_default { i32 823, i32 0 }, %struct.reg_default { i32 8192, i32 0 }, %struct.reg_default { i32 8193, i32 0 }, %struct.reg_default { i32 8194, i32 0 }, %struct.reg_default { i32 8195, i32 0 }, %struct.reg_default { i32 8196, i32 0 }, %struct.reg_default { i32 8197, i32 0 }, %struct.reg_default { i32 8198, i32 0 }, %struct.reg_default { i32 8199, i32 0 }, %struct.reg_default { i32 8200, i32 0 }, %struct.reg_default { i32 8201, i32 0 }, %struct.reg_default { i32 8202, i32 0 }, %struct.reg_default { i32 8203, i32 0 }, %struct.reg_default { i32 8204, i32 0 }, %struct.reg_default { i32 8205, i32 0 }, %struct.reg_default { i32 8206, i32 0 }, %struct.reg_default { i32 8207, i32 0 }, %struct.reg_default { i32 8208, i32 0 }, %struct.reg_default { i32 8212, i32 16 }, %struct.reg_default { i32 8213, i32 39 }, %struct.reg_default { i32 8214, i32 1 }, %struct.reg_default { i32 8215, i32 192 }, %struct.reg_default { i32 8216, i32 0 }, %struct.reg_default { i32 8222, i32 85 }, %struct.reg_default { i32 8224, i32 254 }, %struct.reg_default { i32 8225, i32 255 }, %struct.reg_default { i32 8226, i32 0 }, %struct.reg_default { i32 8227, i32 0 }, %struct.reg_default { i32 8228, i32 192 }, %struct.reg_default { i32 8229, i32 0 }, %struct.reg_default { i32 8230, i32 4 }, %struct.reg_default { i32 8231, i32 8 }, %struct.reg_default { i32 8232, i32 136 }, %struct.reg_default { i32 8233, i32 0 }, %struct.reg_default { i32 8234, i32 0 }, %struct.reg_default { i32 8235, i32 0 }, %struct.reg_default { i32 8236, i32 0 }, %struct.reg_default { i32 8238, i32 0 }, %struct.reg_default { i32 8239, i32 0 }, %struct.reg_default { i32 8240, i32 255 }, %struct.reg_default { i32 8241, i32 255 }, %struct.reg_default { i32 8242, i32 48 }, %struct.reg_default { i32 8244, i32 0 }, %struct.reg_default { i32 8245, i32 0 }, %struct.reg_default { i32 8246, i32 5 }, %struct.reg_default { i32 8253, i32 0 }, %struct.reg_default { i32 8254, i32 8 }, %struct.reg_default { i32 8255, i32 2 }, %struct.reg_default { i32 8256, i32 0 }, %struct.reg_default { i32 8257, i32 3 }, %struct.reg_default { i32 8258, i32 0 }, %struct.reg_default { i32 8259, i32 0 }, %struct.reg_default { i32 8262, i32 4 }, %struct.reg_default { i32 8263, i32 0 }, %struct.reg_default { i32 8273, i32 0 }, %struct.reg_default { i32 8274, i32 0 }, %struct.reg_default { i32 8275, i32 0 }, %struct.reg_default { i32 8276, i32 0 }, %struct.reg_default { i32 8277, i32 0 }, %struct.reg_default { i32 8278, i32 0 }, %struct.reg_default { i32 8336, i32 0 }, %struct.reg_default { i32 8337, i32 0 }, %struct.reg_default { i32 8338, i32 0 }, %struct.reg_default { i32 8343, i32 0 }, %struct.reg_default { i32 8344, i32 0 }, %struct.reg_default { i32 8345, i32 0 }, %struct.reg_default { i32 8346, i32 0 }, %struct.reg_default { i32 8347, i32 0 }, %struct.reg_default { i32 8360, i32 0 }, %struct.reg_default { i32 8361, i32 0 }, %struct.reg_default { i32 8362, i32 0 }, %struct.reg_default { i32 8363, i32 0 }, %struct.reg_default { i32 8364, i32 0 }, %struct.reg_default { i32 8365, i32 0 }, %struct.reg_default { i32 8366, i32 0 }, %struct.reg_default { i32 8367, i32 0 }, %struct.reg_default { i32 8368, i32 0 }, %struct.reg_default { i32 8369, i32 0 }, %struct.reg_default { i32 8370, i32 0 }, %struct.reg_default { i32 8371, i32 0 }, %struct.reg_default { i32 8372, i32 0 }, %struct.reg_default { i32 8373, i32 0 }, %struct.reg_default { i32 8374, i32 0 }, %struct.reg_default { i32 8401, i32 1 }, %struct.reg_default { i32 8402, i32 2 }, %struct.reg_default { i32 8403, i32 3 }, %struct.reg_default { i32 8404, i32 0 }, %struct.reg_default { i32 8416, i32 0 }, %struct.reg_default { i32 8417, i32 0 }, %struct.reg_default { i32 8418, i32 0 }, %struct.reg_default { i32 8446, i32 0 }, %struct.reg_default { i32 8447, i32 0 }, %struct.reg_default { i32 8703, i32 66 }], [304 x i8] zeroinitializer }, align 32
@max98373_sdw_cache_reg = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8276, i32 8277, i32 8374], [20 x i8] zeroinitializer }, align 32
@soc_codec_dev_max98373_sdw = external dso_local constant %struct.snd_soc_component_driver, align 4
@max98373_sdw_dai = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.7, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @max98373_dai_sdw_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.8, i64 1024, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.9, i64 1024, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@max98373_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 807, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register codec: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max98373_init\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sound/soc/codecs/max98373-sdw.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max98373_init._entry_ptr = internal global ptr @max98373_init._entry, section ".printk_index", align 4
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max98373-aif1\00", [18 x i8] zeroinitializer }, align 32
@max98373_dai_sdw_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98373_sdw_set_tdm_slot, ptr null, ptr null, ptr null, ptr @max98373_set_sdw_stream, ptr null, ptr null, ptr null, ptr @max98373_shutdown, ptr @max98373_sdw_dai_hw_params, ptr @max98373_pcm_hw_free, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HiFi Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HiFi Playback\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@max98373_sdw_dai_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 577, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to configure port\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"max98373_sdw_dai_hw_params\00", [37 x i8] zeroinitializer }, align 32
@max98373_sdw_dai_hw_params._entry_ptr = internal global ptr @max98373_sdw_dai_hw_params._entry, section ".printk_index", align 4
@max98373_sdw_dai_hw_params._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 583, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported channels %d\0A\00", [39 x i8] zeroinitializer }, align 32
@max98373_sdw_dai_hw_params._entry_ptr.14 = internal global ptr @max98373_sdw_dai_hw_params._entry.12, section ".printk_index", align 4
@max98373_sdw_dai_hw_params._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.4, i32 600, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Channel size unsupported %d\0A\00", [35 x i8] zeroinitializer }, align 32
@max98373_sdw_dai_hw_params._entry_ptr.17 = internal global ptr @max98373_sdw_dai_hw_params._entry.15, section ".printk_index", align 4
@max98373_sdw_dai_hw_params.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.11, ptr @.str.4, ptr @.str.19, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_soc_max98373_sdw\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Format supported %d\00", [44 x i8] zeroinitializer }, align 32
@max98373_sdw_dai_hw_params._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.11, ptr @.str.4, i32 649, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Rate %d is not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@max98373_sdw_dai_hw_params._entry_ptr.22 = internal global ptr @max98373_sdw_dai_hw_params._entry.20, section ".printk_index", align 4
@max98373_bus_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 837, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid clk config\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max98373_bus_config\00", [44 x i8] zeroinitializer }, align 32
@max98373_bus_config._entry_ptr = internal global ptr @max98373_bus_config._entry, section ".printk_index", align 4
@max98373_clock_calculate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 495, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Requested clock not found. (clk_freq = %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"max98373_clock_calculate\00", [39 x i8] zeroinitializer }, align 32
@max98373_clock_calculate._entry_ptr = internal global ptr @max98373_clock_calculate._entry, section ".printk_index", align 4
@max98373_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 283, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Initialization not complete, timed out\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max98373_resume\00", [16 x i8] zeroinitializer }, align 32
@max98373_resume._entry_ptr = internal global ptr @max98373_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [254 x i64] [i64 252, i64 32, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 256, i64 257, i64 258, i64 259, i64 260, i64 261, i64 262, i64 263, i64 264, i64 265, i64 266, i64 267, i64 268, i64 269, i64 270, i64 271, i64 272, i64 273, i64 274, i64 275, i64 276, i64 277, i64 278, i64 279, i64 280, i64 281, i64 282, i64 283, i64 284, i64 285, i64 286, i64 287, i64 288, i64 289, i64 290, i64 291, i64 292, i64 293, i64 294, i64 295, i64 296, i64 297, i64 298, i64 299, i64 300, i64 301, i64 302, i64 303, i64 304, i64 305, i64 306, i64 307, i64 308, i64 309, i64 310, i64 311, i64 768, i64 769, i64 770, i64 771, i64 772, i64 773, i64 774, i64 775, i64 776, i64 777, i64 778, i64 779, i64 780, i64 781, i64 782, i64 783, i64 784, i64 785, i64 786, i64 787, i64 788, i64 789, i64 790, i64 791, i64 792, i64 793, i64 794, i64 795, i64 796, i64 797, i64 798, i64 799, i64 800, i64 801, i64 802, i64 803, i64 804, i64 805, i64 806, i64 807, i64 808, i64 809, i64 810, i64 811, i64 812, i64 813, i64 814, i64 815, i64 816, i64 817, i64 818, i64 819, i64 820, i64 821, i64 822, i64 823, i64 8192, i64 8193, i64 8194, i64 8195, i64 8196, i64 8197, i64 8198, i64 8199, i64 8200, i64 8201, i64 8202, i64 8203, i64 8204, i64 8208, i64 8212, i64 8213, i64 8214, i64 8215, i64 8216, i64 8222, i64 8223, i64 8224, i64 8225, i64 8226, i64 8227, i64 8228, i64 8229, i64 8230, i64 8231, i64 8232, i64 8233, i64 8234, i64 8235, i64 8236, i64 8237, i64 8238, i64 8239, i64 8240, i64 8241, i64 8242, i64 8243, i64 8244, i64 8245, i64 8246, i64 8253, i64 8254, i64 8255, i64 8256, i64 8257, i64 8258, i64 8259, i64 8262, i64 8263, i64 8273, i64 8274, i64 8275, i64 8276, i64 8277, i64 8278, i64 8336, i64 8337, i64 8338, i64 8343, i64 8344, i64 8345, i64 8346, i64 8347, i64 8360, i64 8361, i64 8362, i64 8363, i64 8364, i64 8365, i64 8366, i64 8367, i64 8368, i64 8369, i64 8370, i64 8371, i64 8373, i64 8374, i64 8401, i64 8402, i64 8403, i64 8404, i64 8416, i64 8417, i64 8418, i64 8446, i64 8447, i64 8703]
@__sancov_gen_cov_switch_values.29 = internal global [178 x i64] [i64 176, i64 32, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 256, i64 257, i64 258, i64 259, i64 260, i64 261, i64 262, i64 263, i64 264, i64 265, i64 266, i64 267, i64 268, i64 269, i64 270, i64 271, i64 272, i64 273, i64 274, i64 275, i64 276, i64 277, i64 278, i64 279, i64 280, i64 281, i64 282, i64 283, i64 284, i64 285, i64 286, i64 287, i64 288, i64 289, i64 290, i64 291, i64 292, i64 293, i64 294, i64 295, i64 296, i64 297, i64 298, i64 299, i64 300, i64 301, i64 302, i64 303, i64 304, i64 305, i64 306, i64 307, i64 308, i64 309, i64 310, i64 311, i64 768, i64 769, i64 770, i64 771, i64 772, i64 773, i64 774, i64 775, i64 776, i64 777, i64 778, i64 779, i64 780, i64 781, i64 782, i64 783, i64 784, i64 785, i64 786, i64 787, i64 788, i64 789, i64 790, i64 791, i64 792, i64 793, i64 794, i64 795, i64 796, i64 797, i64 798, i64 799, i64 800, i64 801, i64 802, i64 803, i64 804, i64 805, i64 806, i64 807, i64 808, i64 809, i64 810, i64 811, i64 812, i64 813, i64 814, i64 815, i64 816, i64 817, i64 818, i64 819, i64 820, i64 821, i64 822, i64 823, i64 8192, i64 8193, i64 8194, i64 8195, i64 8196, i64 8197, i64 8198, i64 8199, i64 8200, i64 8201, i64 8276, i64 8277, i64 8374, i64 8447, i64 8703]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.31 = internal global [13 x i64] [i64 11, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000]
@__sancov_gen_cov_switch_values.32 = internal global [30 x i64] [i64 28, i64 32, i64 960000, i64 1050000, i64 1200000, i64 1411200, i64 1500000, i64 1536000, i64 1625000, i64 1920000, i64 2100000, i64 2400000, i64 2822400, i64 3000000, i64 3072000, i64 3250000, i64 3840000, i64 4200000, i64 4800000, i64 5644800, i64 6000000, i64 6144000, i64 6500000, i64 7680000, i64 8400000, i64 9600000, i64 11289600, i64 12000000, i64 12288000, i64 13000000]
@___asan_gen_.33 = private unnamed_addr constant [20 x i8] c"max98373_sdw_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 887, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"max98373_id\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 881, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"max98373_slave_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 846, i32 29 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 889, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"max98373_of_match\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 866, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"max98373_pm\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 295, i32 32 }
@___asan_gen_.51 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [20 x i8] c"max98373_sdw_regmap\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 238, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 858, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [13 x i8] c"max98373_reg\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 32, i32 27 }
@___asan_gen_.63 = private unnamed_addr constant [23 x i8] c"max98373_sdw_cache_reg\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 26, i32 18 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"max98373_sdw_dai\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 749, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 807, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 751, i32 11 }
@___asan_gen_.90 = private unnamed_addr constant [21 x i8] c"max98373_dai_sdw_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 741, i32 37 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 760, i32 19 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 753, i32 19 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 577, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 582, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 599, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 610, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 648, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 837, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 494, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private constant [35 x i8] c"../sound/soc/codecs/max98373-sdw.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 283, i32 3 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_max98373_sdw_driver_exit, ptr @__initcall__kmod_snd_soc_max98373_sdw__240_901_max98373_sdw_driver_init6, ptr @max98373_bus_config._entry, ptr @max98373_bus_config._entry_ptr, ptr @max98373_clock_calculate._entry, ptr @max98373_clock_calculate._entry_ptr, ptr @max98373_init._entry, ptr @max98373_init._entry_ptr, ptr @max98373_resume._entry, ptr @max98373_resume._entry_ptr, ptr @max98373_sdw_dai_hw_params._entry, ptr @max98373_sdw_dai_hw_params._entry.12, ptr @max98373_sdw_dai_hw_params._entry.15, ptr @max98373_sdw_dai_hw_params._entry.20, ptr @max98373_sdw_dai_hw_params._entry_ptr, ptr @max98373_sdw_dai_hw_params._entry_ptr.14, ptr @max98373_sdw_dai_hw_params._entry_ptr.17, ptr @max98373_sdw_dai_hw_params._entry_ptr.22, ptr @max98373_sdw_driver_exit, ptr @max98373_sdw_driver, ptr @max98373_id, ptr @max98373_slave_ops, ptr @.str, ptr @max98373_of_match, ptr @max98373_pm, ptr @max98373_sdw_probe._key, ptr @max98373_sdw_regmap, ptr @.str.1, ptr @max98373_reg, ptr @max98373_sdw_cache_reg, ptr @max98373_sdw_dai, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @max98373_dai_sdw_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_sdw_driver to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_id to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_slave_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_sdw_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_sdw_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_reg to i32), i32 1168, i32 1472, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_sdw_cache_reg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_sdw_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_dai_sdw_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_sdw_dai_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_sdw_dai_hw_params._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_sdw_dai_hw_params._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_sdw_dai_hw_params._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_bus_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_clock_calculate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98373_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max98373_sdw_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__sdw_register_driver(ptr noundef nonnull @max98373_sdw_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max98373_sdw_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sdw_unregister_driver(ptr noundef nonnull @max98373_sdw_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdw_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sdw_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98373_sdw_probe(ptr noundef %slave, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__devm_regmap_init_sdw(ptr noundef %slave, ptr noundef nonnull @max98373_sdw_regmap, ptr noundef nonnull @max98373_sdw_probe._key, ptr noundef nonnull @.str.1) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 56, i32 noundef 3520) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i.i, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %call.i.i, align 4
  %slave3.i = getelementptr inbounds %struct.max98373_priv, ptr %call.i.i, i32 0, i32 10
  %3 = ptrtoint ptr %slave3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %slave, ptr %slave3.i, align 4
  %cache_num.i = getelementptr inbounds %struct.max98373_priv, ptr %call.i.i, i32 0, i32 9
  %4 = ptrtoint ptr %cache_num.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %cache_num.i, align 4
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 24, i32 noundef 3520) #10
  %cache.i = getelementptr inbounds %struct.max98373_priv, ptr %call.i.i, i32 0, i32 8
  %5 = ptrtoint ptr %cache.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5.i.i.i, ptr %cache.i, align 4
  %tobool7.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool7.not.i, label %if.end.i.cleanup_crit_edge, label %for.cond.preheader.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end.i
  %6 = ptrtoint ptr %cache_num.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cache_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp43.i = icmp sgt i32 %7, 0
  br i1 %cmp43.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.044.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [3 x i32], ptr @max98373_sdw_cache_reg, i32 0, i32 %i.044.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %10 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cache.i, align 4
  %arrayidx12.i = getelementptr %struct.max98373_cache, ptr %11, i32 %i.044.i
  %12 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %arrayidx12.i, align 4
  %inc.i = add nuw nsw i32 %i.044.i, 1
  %13 = ptrtoint ptr %cache_num.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cache_num.i, align 4
  %cmp.i7 = icmp slt i32 %inc.i, %14
  br i1 %cmp.i7, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  tail call void @max98373_slot_config(ptr noundef %dev1.i, ptr noundef nonnull %call.i.i) #10
  %hw_init.i = getelementptr inbounds %struct.max98373_priv, ptr %call.i.i, i32 0, i32 11
  %15 = ptrtoint ptr %hw_init.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %hw_init.i, align 4
  %first_hw_init.i = getelementptr inbounds %struct.max98373_priv, ptr %call.i.i, i32 0, i32 12
  %16 = ptrtoint ptr %first_hw_init.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %first_hw_init.i, align 1
  %call13.i = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1.i, ptr noundef nonnull @soc_codec_dev_max98373_sdw, ptr noundef nonnull @max98373_sdw_dai, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %do.end.i, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.2, i32 noundef %call13.i) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %for.end.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ %call13.i, %do.end.i ], [ %call13.i, %for.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_sdw(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max98373_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 8703, label %entry.return_crit_edge
    i32 8208, label %entry.return_crit_edge17
    i32 8446, label %entry.return_crit_edge18
    i32 8447, label %entry.return_crit_edge19
    i32 8416, label %entry.return_crit_edge20
    i32 8417, label %entry.return_crit_edge21
    i32 8418, label %entry.return_crit_edge22
    i32 8401, label %entry.return_crit_edge23
    i32 8402, label %entry.return_crit_edge24
    i32 8403, label %entry.return_crit_edge25
    i32 8404, label %entry.return_crit_edge26
    i32 8373, label %entry.return_crit_edge27
    i32 8374, label %entry.return_crit_edge28
    i32 8360, label %entry.return_crit_edge29
    i32 8361, label %entry.return_crit_edge30
    i32 8362, label %entry.return_crit_edge31
    i32 8363, label %entry.return_crit_edge32
    i32 8364, label %entry.return_crit_edge33
    i32 8365, label %entry.return_crit_edge34
    i32 8366, label %entry.return_crit_edge35
    i32 8367, label %entry.return_crit_edge36
    i32 8368, label %entry.return_crit_edge37
    i32 8369, label %entry.return_crit_edge38
    i32 8370, label %entry.return_crit_edge39
    i32 8371, label %entry.return_crit_edge40
    i32 8343, label %entry.return_crit_edge41
    i32 8344, label %entry.return_crit_edge42
    i32 8345, label %entry.return_crit_edge43
    i32 8346, label %entry.return_crit_edge44
    i32 8347, label %entry.return_crit_edge45
    i32 8336, label %entry.return_crit_edge46
    i32 8337, label %entry.return_crit_edge47
    i32 8338, label %entry.return_crit_edge48
    i32 8273, label %entry.return_crit_edge49
    i32 8274, label %entry.return_crit_edge50
    i32 8275, label %entry.return_crit_edge51
    i32 8276, label %entry.return_crit_edge52
    i32 8277, label %entry.return_crit_edge53
    i32 8278, label %entry.return_crit_edge54
    i32 8262, label %entry.return_crit_edge55
    i32 8263, label %entry.return_crit_edge56
    i32 8253, label %entry.return_crit_edge57
    i32 8254, label %entry.return_crit_edge58
    i32 8255, label %entry.return_crit_edge59
    i32 8256, label %entry.return_crit_edge60
    i32 8257, label %entry.return_crit_edge61
    i32 8258, label %entry.return_crit_edge62
    i32 8259, label %entry.return_crit_edge63
    i32 8222, label %entry.return_crit_edge64
    i32 8223, label %entry.return_crit_edge65
    i32 8224, label %entry.return_crit_edge66
    i32 8225, label %entry.return_crit_edge67
    i32 8226, label %entry.return_crit_edge68
    i32 8227, label %entry.return_crit_edge69
    i32 8228, label %entry.return_crit_edge70
    i32 8229, label %entry.return_crit_edge71
    i32 8230, label %entry.return_crit_edge72
    i32 8231, label %entry.return_crit_edge73
    i32 8232, label %entry.return_crit_edge74
    i32 8233, label %entry.return_crit_edge75
    i32 8234, label %entry.return_crit_edge76
    i32 8235, label %entry.return_crit_edge77
    i32 8236, label %entry.return_crit_edge78
    i32 8237, label %entry.return_crit_edge79
    i32 8238, label %entry.return_crit_edge80
    i32 8239, label %entry.return_crit_edge81
    i32 8240, label %entry.return_crit_edge82
    i32 8241, label %entry.return_crit_edge83
    i32 8242, label %entry.return_crit_edge84
    i32 8243, label %entry.return_crit_edge85
    i32 8244, label %entry.return_crit_edge86
    i32 8245, label %entry.return_crit_edge87
    i32 8246, label %entry.return_crit_edge88
    i32 8212, label %entry.return_crit_edge89
    i32 8213, label %entry.return_crit_edge90
    i32 8214, label %entry.return_crit_edge91
    i32 8215, label %entry.return_crit_edge92
    i32 8216, label %entry.return_crit_edge93
    i32 8192, label %entry.return_crit_edge94
    i32 8193, label %entry.return_crit_edge95
    i32 8194, label %entry.return_crit_edge96
    i32 8195, label %entry.return_crit_edge97
    i32 8196, label %entry.return_crit_edge98
    i32 8197, label %entry.return_crit_edge99
    i32 8198, label %entry.return_crit_edge100
    i32 8199, label %entry.return_crit_edge101
    i32 8200, label %entry.return_crit_edge102
    i32 8201, label %entry.return_crit_edge103
    i32 8202, label %entry.return_crit_edge104
    i32 8203, label %entry.return_crit_edge105
    i32 8204, label %entry.return_crit_edge106
    i32 768, label %entry.return_crit_edge107
    i32 769, label %entry.return_crit_edge108
    i32 770, label %entry.return_crit_edge109
    i32 771, label %entry.return_crit_edge110
    i32 772, label %entry.return_crit_edge111
    i32 773, label %entry.return_crit_edge112
    i32 774, label %entry.return_crit_edge113
    i32 775, label %entry.return_crit_edge114
    i32 776, label %entry.return_crit_edge115
    i32 777, label %entry.return_crit_edge116
    i32 778, label %entry.return_crit_edge117
    i32 779, label %entry.return_crit_edge118
    i32 780, label %entry.return_crit_edge119
    i32 781, label %entry.return_crit_edge120
    i32 782, label %entry.return_crit_edge121
    i32 783, label %entry.return_crit_edge122
    i32 784, label %entry.return_crit_edge123
    i32 785, label %entry.return_crit_edge124
    i32 786, label %entry.return_crit_edge125
    i32 787, label %entry.return_crit_edge126
    i32 788, label %entry.return_crit_edge127
    i32 789, label %entry.return_crit_edge128
    i32 790, label %entry.return_crit_edge129
    i32 791, label %entry.return_crit_edge130
    i32 792, label %entry.return_crit_edge131
    i32 793, label %entry.return_crit_edge132
    i32 794, label %entry.return_crit_edge133
    i32 795, label %entry.return_crit_edge134
    i32 796, label %entry.return_crit_edge135
    i32 797, label %entry.return_crit_edge136
    i32 798, label %entry.return_crit_edge137
    i32 799, label %entry.return_crit_edge138
    i32 800, label %entry.return_crit_edge139
    i32 801, label %entry.return_crit_edge140
    i32 802, label %entry.return_crit_edge141
    i32 803, label %entry.return_crit_edge142
    i32 804, label %entry.return_crit_edge143
    i32 805, label %entry.return_crit_edge144
    i32 806, label %entry.return_crit_edge145
    i32 807, label %entry.return_crit_edge146
    i32 808, label %entry.return_crit_edge147
    i32 809, label %entry.return_crit_edge148
    i32 810, label %entry.return_crit_edge149
    i32 811, label %entry.return_crit_edge150
    i32 812, label %entry.return_crit_edge151
    i32 813, label %entry.return_crit_edge152
    i32 814, label %entry.return_crit_edge153
    i32 815, label %entry.return_crit_edge154
    i32 816, label %entry.return_crit_edge155
    i32 817, label %entry.return_crit_edge156
    i32 818, label %entry.return_crit_edge157
    i32 819, label %entry.return_crit_edge158
    i32 820, label %entry.return_crit_edge159
    i32 821, label %entry.return_crit_edge160
    i32 822, label %entry.return_crit_edge161
    i32 823, label %entry.return_crit_edge162
    i32 256, label %entry.return_crit_edge163
    i32 257, label %entry.return_crit_edge164
    i32 258, label %entry.return_crit_edge165
    i32 259, label %entry.return_crit_edge166
    i32 260, label %entry.return_crit_edge167
    i32 261, label %entry.return_crit_edge168
    i32 262, label %entry.return_crit_edge169
    i32 263, label %entry.return_crit_edge170
    i32 264, label %entry.return_crit_edge171
    i32 265, label %entry.return_crit_edge172
    i32 266, label %entry.return_crit_edge173
    i32 267, label %entry.return_crit_edge174
    i32 268, label %entry.return_crit_edge175
    i32 269, label %entry.return_crit_edge176
    i32 270, label %entry.return_crit_edge177
    i32 271, label %entry.return_crit_edge178
    i32 272, label %entry.return_crit_edge179
    i32 273, label %entry.return_crit_edge180
    i32 274, label %entry.return_crit_edge181
    i32 275, label %entry.return_crit_edge182
    i32 276, label %entry.return_crit_edge183
    i32 277, label %entry.return_crit_edge184
    i32 278, label %entry.return_crit_edge185
    i32 279, label %entry.return_crit_edge186
    i32 280, label %entry.return_crit_edge187
    i32 281, label %entry.return_crit_edge188
    i32 282, label %entry.return_crit_edge189
    i32 283, label %entry.return_crit_edge190
    i32 284, label %entry.return_crit_edge191
    i32 285, label %entry.return_crit_edge192
    i32 286, label %entry.return_crit_edge193
    i32 287, label %entry.return_crit_edge194
    i32 288, label %entry.return_crit_edge195
    i32 289, label %entry.return_crit_edge196
    i32 290, label %entry.return_crit_edge197
    i32 291, label %entry.return_crit_edge198
    i32 292, label %entry.return_crit_edge199
    i32 293, label %entry.return_crit_edge200
    i32 294, label %entry.return_crit_edge201
    i32 295, label %entry.return_crit_edge202
    i32 296, label %entry.return_crit_edge203
    i32 297, label %entry.return_crit_edge204
    i32 298, label %entry.return_crit_edge205
    i32 299, label %entry.return_crit_edge206
    i32 300, label %entry.return_crit_edge207
    i32 301, label %entry.return_crit_edge208
    i32 302, label %entry.return_crit_edge209
    i32 303, label %entry.return_crit_edge210
    i32 304, label %entry.return_crit_edge211
    i32 305, label %entry.return_crit_edge212
    i32 306, label %entry.return_crit_edge213
    i32 307, label %entry.return_crit_edge214
    i32 308, label %entry.return_crit_edge215
    i32 309, label %entry.return_crit_edge216
    i32 310, label %entry.return_crit_edge217
    i32 311, label %entry.return_crit_edge218
    i32 64, label %entry.return_crit_edge219
    i32 65, label %entry.return_crit_edge220
    i32 66, label %entry.return_crit_edge221
    i32 67, label %entry.return_crit_edge222
    i32 68, label %entry.return_crit_edge223
    i32 69, label %entry.return_crit_edge224
    i32 70, label %entry.return_crit_edge225
    i32 71, label %entry.return_crit_edge226
    i32 72, label %entry.return_crit_edge227
    i32 73, label %entry.return_crit_edge228
    i32 74, label %entry.return_crit_edge229
    i32 75, label %entry.return_crit_edge230
    i32 76, label %entry.return_crit_edge231
    i32 77, label %entry.return_crit_edge232
    i32 78, label %entry.return_crit_edge233
    i32 79, label %entry.return_crit_edge234
    i32 80, label %entry.return_crit_edge235
    i32 81, label %entry.return_crit_edge236
    i32 82, label %entry.return_crit_edge237
    i32 83, label %entry.return_crit_edge238
    i32 84, label %entry.return_crit_edge239
    i32 85, label %entry.return_crit_edge240
    i32 86, label %entry.return_crit_edge241
    i32 87, label %entry.return_crit_edge242
    i32 88, label %entry.return_crit_edge243
    i32 89, label %entry.return_crit_edge244
    i32 90, label %entry.return_crit_edge245
    i32 91, label %entry.return_crit_edge246
    i32 92, label %entry.return_crit_edge247
    i32 93, label %entry.return_crit_edge248
    i32 94, label %entry.return_crit_edge249
    i32 95, label %entry.return_crit_edge250
    i32 96, label %entry.return_crit_edge251
    i32 97, label %entry.return_crit_edge252
    i32 98, label %entry.return_crit_edge253
    i32 99, label %entry.return_crit_edge254
    i32 100, label %entry.return_crit_edge255
    i32 101, label %entry.return_crit_edge256
    i32 102, label %entry.return_crit_edge257
    i32 103, label %entry.return_crit_edge258
    i32 104, label %entry.return_crit_edge259
    i32 105, label %entry.return_crit_edge260
    i32 106, label %entry.return_crit_edge261
    i32 107, label %entry.return_crit_edge262
    i32 108, label %entry.return_crit_edge263
    i32 109, label %entry.return_crit_edge264
    i32 110, label %entry.return_crit_edge265
    i32 111, label %entry.return_crit_edge266
    i32 112, label %entry.return_crit_edge267
  ]

entry.return_crit_edge267:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge266:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge265:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge264:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge263:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge262:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge261:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge260:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge259:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge258:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge257:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge256:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge255:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge254:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge253:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge252:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge251:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge250:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge249:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge248:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge247:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge246:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge245:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge244:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge243:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge242:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge241:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge240:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge239:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge238:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge237:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge236:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge235:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge234:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge233:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge232:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge231:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge230:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge229:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge228:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge227:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge226:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge225:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge224:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge223:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge222:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge221:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge220:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge219:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge218:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge217:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge216:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge215:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge214:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge213:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge212:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge211:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge210:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge209:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge208:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge207:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge206:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge205:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge204:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge203:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge202:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge201:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge200:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge199:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge198:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge197:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge196:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge195:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge194:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge193:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge192:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge191:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge190:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge189:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge188:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge187:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge186:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge185:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge184:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge183:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge182:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge181:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge180:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge179:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge178:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge177:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge176:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge175:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge174:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge173:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge172:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge171:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge170:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge169:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge168:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge167:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge166:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge165:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge164:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge163:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge162:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge161:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge160:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge159:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge158:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge157:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge156:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge155:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge154:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge153:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge152:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge151:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge150:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge149:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge148:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge147:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge146:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge145:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge144:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge143:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge142:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge141:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge140:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge139:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge138:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge134:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge133:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge132:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge131:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge129:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge128:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge127:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge126:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge125:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge124:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge123:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge122:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge121:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge119:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge118:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge117:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge116:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110, %entry.return_crit_edge111, %entry.return_crit_edge112, %entry.return_crit_edge113, %entry.return_crit_edge114, %entry.return_crit_edge115, %entry.return_crit_edge116, %entry.return_crit_edge117, %entry.return_crit_edge118, %entry.return_crit_edge119, %entry.return_crit_edge120, %entry.return_crit_edge121, %entry.return_crit_edge122, %entry.return_crit_edge123, %entry.return_crit_edge124, %entry.return_crit_edge125, %entry.return_crit_edge126, %entry.return_crit_edge127, %entry.return_crit_edge128, %entry.return_crit_edge129, %entry.return_crit_edge130, %entry.return_crit_edge131, %entry.return_crit_edge132, %entry.return_crit_edge133, %entry.return_crit_edge134, %entry.return_crit_edge135, %entry.return_crit_edge136, %entry.return_crit_edge137, %entry.return_crit_edge138, %entry.return_crit_edge139, %entry.return_crit_edge140, %entry.return_crit_edge141, %entry.return_crit_edge142, %entry.return_crit_edge143, %entry.return_crit_edge144, %entry.return_crit_edge145, %entry.return_crit_edge146, %entry.return_crit_edge147, %entry.return_crit_edge148, %entry.return_crit_edge149, %entry.return_crit_edge150, %entry.return_crit_edge151, %entry.return_crit_edge152, %entry.return_crit_edge153, %entry.return_crit_edge154, %entry.return_crit_edge155, %entry.return_crit_edge156, %entry.return_crit_edge157, %entry.return_crit_edge158, %entry.return_crit_edge159, %entry.return_crit_edge160, %entry.return_crit_edge161, %entry.return_crit_edge162, %entry.return_crit_edge163, %entry.return_crit_edge164, %entry.return_crit_edge165, %entry.return_crit_edge166, %entry.return_crit_edge167, %entry.return_crit_edge168, %entry.return_crit_edge169, %entry.return_crit_edge170, %entry.return_crit_edge171, %entry.return_crit_edge172, %entry.return_crit_edge173, %entry.return_crit_edge174, %entry.return_crit_edge175, %entry.return_crit_edge176, %entry.return_crit_edge177, %entry.return_crit_edge178, %entry.return_crit_edge179, %entry.return_crit_edge180, %entry.return_crit_edge181, %entry.return_crit_edge182, %entry.return_crit_edge183, %entry.return_crit_edge184, %entry.return_crit_edge185, %entry.return_crit_edge186, %entry.return_crit_edge187, %entry.return_crit_edge188, %entry.return_crit_edge189, %entry.return_crit_edge190, %entry.return_crit_edge191, %entry.return_crit_edge192, %entry.return_crit_edge193, %entry.return_crit_edge194, %entry.return_crit_edge195, %entry.return_crit_edge196, %entry.return_crit_edge197, %entry.return_crit_edge198, %entry.return_crit_edge199, %entry.return_crit_edge200, %entry.return_crit_edge201, %entry.return_crit_edge202, %entry.return_crit_edge203, %entry.return_crit_edge204, %entry.return_crit_edge205, %entry.return_crit_edge206, %entry.return_crit_edge207, %entry.return_crit_edge208, %entry.return_crit_edge209, %entry.return_crit_edge210, %entry.return_crit_edge211, %entry.return_crit_edge212, %entry.return_crit_edge213, %entry.return_crit_edge214, %entry.return_crit_edge215, %entry.return_crit_edge216, %entry.return_crit_edge217, %entry.return_crit_edge218, %entry.return_crit_edge219, %entry.return_crit_edge220, %entry.return_crit_edge221, %entry.return_crit_edge222, %entry.return_crit_edge223, %entry.return_crit_edge224, %entry.return_crit_edge225, %entry.return_crit_edge226, %entry.return_crit_edge227, %entry.return_crit_edge228, %entry.return_crit_edge229, %entry.return_crit_edge230, %entry.return_crit_edge231, %entry.return_crit_edge232, %entry.return_crit_edge233, %entry.return_crit_edge234, %entry.return_crit_edge235, %entry.return_crit_edge236, %entry.return_crit_edge237, %entry.return_crit_edge238, %entry.return_crit_edge239, %entry.return_crit_edge240, %entry.return_crit_edge241, %entry.return_crit_edge242, %entry.return_crit_edge243, %entry.return_crit_edge244, %entry.return_crit_edge245, %entry.return_crit_edge246, %entry.return_crit_edge247, %entry.return_crit_edge248, %entry.return_crit_edge249, %entry.return_crit_edge250, %entry.return_crit_edge251, %entry.return_crit_edge252, %entry.return_crit_edge253, %entry.return_crit_edge254, %entry.return_crit_edge255, %entry.return_crit_edge256, %entry.return_crit_edge257, %entry.return_crit_edge258, %entry.return_crit_edge259, %entry.return_crit_edge260, %entry.return_crit_edge261, %entry.return_crit_edge262, %entry.return_crit_edge263, %entry.return_crit_edge264, %entry.return_crit_edge265, %entry.return_crit_edge266, %entry.return_crit_edge267
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ], [ true, %entry.return_crit_edge111 ], [ true, %entry.return_crit_edge112 ], [ true, %entry.return_crit_edge113 ], [ true, %entry.return_crit_edge114 ], [ true, %entry.return_crit_edge115 ], [ true, %entry.return_crit_edge116 ], [ true, %entry.return_crit_edge117 ], [ true, %entry.return_crit_edge118 ], [ true, %entry.return_crit_edge119 ], [ true, %entry.return_crit_edge120 ], [ true, %entry.return_crit_edge121 ], [ true, %entry.return_crit_edge122 ], [ true, %entry.return_crit_edge123 ], [ true, %entry.return_crit_edge124 ], [ true, %entry.return_crit_edge125 ], [ true, %entry.return_crit_edge126 ], [ true, %entry.return_crit_edge127 ], [ true, %entry.return_crit_edge128 ], [ true, %entry.return_crit_edge129 ], [ true, %entry.return_crit_edge130 ], [ true, %entry.return_crit_edge131 ], [ true, %entry.return_crit_edge132 ], [ true, %entry.return_crit_edge133 ], [ true, %entry.return_crit_edge134 ], [ true, %entry.return_crit_edge135 ], [ true, %entry.return_crit_edge136 ], [ true, %entry.return_crit_edge137 ], [ true, %entry.return_crit_edge138 ], [ true, %entry.return_crit_edge139 ], [ true, %entry.return_crit_edge140 ], [ true, %entry.return_crit_edge141 ], [ true, %entry.return_crit_edge142 ], [ true, %entry.return_crit_edge143 ], [ true, %entry.return_crit_edge144 ], [ true, %entry.return_crit_edge145 ], [ true, %entry.return_crit_edge146 ], [ true, %entry.return_crit_edge147 ], [ true, %entry.return_crit_edge148 ], [ true, %entry.return_crit_edge149 ], [ true, %entry.return_crit_edge150 ], [ true, %entry.return_crit_edge151 ], [ true, %entry.return_crit_edge152 ], [ true, %entry.return_crit_edge153 ], [ true, %entry.return_crit_edge154 ], [ true, %entry.return_crit_edge155 ], [ true, %entry.return_crit_edge156 ], [ true, %entry.return_crit_edge157 ], [ true, %entry.return_crit_edge158 ], [ true, %entry.return_crit_edge159 ], [ true, %entry.return_crit_edge160 ], [ true, %entry.return_crit_edge161 ], [ true, %entry.return_crit_edge162 ], [ true, %entry.return_crit_edge163 ], [ true, %entry.return_crit_edge164 ], [ true, %entry.return_crit_edge165 ], [ true, %entry.return_crit_edge166 ], [ true, %entry.return_crit_edge167 ], [ true, %entry.return_crit_edge168 ], [ true, %entry.return_crit_edge169 ], [ true, %entry.return_crit_edge170 ], [ true, %entry.return_crit_edge171 ], [ true, %entry.return_crit_edge172 ], [ true, %entry.return_crit_edge173 ], [ true, %entry.return_crit_edge174 ], [ true, %entry.return_crit_edge175 ], [ true, %entry.return_crit_edge176 ], [ true, %entry.return_crit_edge177 ], [ true, %entry.return_crit_edge178 ], [ true, %entry.return_crit_edge179 ], [ true, %entry.return_crit_edge180 ], [ true, %entry.return_crit_edge181 ], [ true, %entry.return_crit_edge182 ], [ true, %entry.return_crit_edge183 ], [ true, %entry.return_crit_edge184 ], [ true, %entry.return_crit_edge185 ], [ true, %entry.return_crit_edge186 ], [ true, %entry.return_crit_edge187 ], [ true, %entry.return_crit_edge188 ], [ true, %entry.return_crit_edge189 ], [ true, %entry.return_crit_edge190 ], [ true, %entry.return_crit_edge191 ], [ true, %entry.return_crit_edge192 ], [ true, %entry.return_crit_edge193 ], [ true, %entry.return_crit_edge194 ], [ true, %entry.return_crit_edge195 ], [ true, %entry.return_crit_edge196 ], [ true, %entry.return_crit_edge197 ], [ true, %entry.return_crit_edge198 ], [ true, %entry.return_crit_edge199 ], [ true, %entry.return_crit_edge200 ], [ true, %entry.return_crit_edge201 ], [ true, %entry.return_crit_edge202 ], [ true, %entry.return_crit_edge203 ], [ true, %entry.return_crit_edge204 ], [ true, %entry.return_crit_edge205 ], [ true, %entry.return_crit_edge206 ], [ true, %entry.return_crit_edge207 ], [ true, %entry.return_crit_edge208 ], [ true, %entry.return_crit_edge209 ], [ true, %entry.return_crit_edge210 ], [ true, %entry.return_crit_edge211 ], [ true, %entry.return_crit_edge212 ], [ true, %entry.return_crit_edge213 ], [ true, %entry.return_crit_edge214 ], [ true, %entry.return_crit_edge215 ], [ true, %entry.return_crit_edge216 ], [ true, %entry.return_crit_edge217 ], [ true, %entry.return_crit_edge218 ], [ true, %entry.return_crit_edge219 ], [ true, %entry.return_crit_edge220 ], [ true, %entry.return_crit_edge221 ], [ true, %entry.return_crit_edge222 ], [ true, %entry.return_crit_edge223 ], [ true, %entry.return_crit_edge224 ], [ true, %entry.return_crit_edge225 ], [ true, %entry.return_crit_edge226 ], [ true, %entry.return_crit_edge227 ], [ true, %entry.return_crit_edge228 ], [ true, %entry.return_crit_edge229 ], [ true, %entry.return_crit_edge230 ], [ true, %entry.return_crit_edge231 ], [ true, %entry.return_crit_edge232 ], [ true, %entry.return_crit_edge233 ], [ true, %entry.return_crit_edge234 ], [ true, %entry.return_crit_edge235 ], [ true, %entry.return_crit_edge236 ], [ true, %entry.return_crit_edge237 ], [ true, %entry.return_crit_edge238 ], [ true, %entry.return_crit_edge239 ], [ true, %entry.return_crit_edge240 ], [ true, %entry.return_crit_edge241 ], [ true, %entry.return_crit_edge242 ], [ true, %entry.return_crit_edge243 ], [ true, %entry.return_crit_edge244 ], [ true, %entry.return_crit_edge245 ], [ true, %entry.return_crit_edge246 ], [ true, %entry.return_crit_edge247 ], [ true, %entry.return_crit_edge248 ], [ true, %entry.return_crit_edge249 ], [ true, %entry.return_crit_edge250 ], [ true, %entry.return_crit_edge251 ], [ true, %entry.return_crit_edge252 ], [ true, %entry.return_crit_edge253 ], [ true, %entry.return_crit_edge254 ], [ true, %entry.return_crit_edge255 ], [ true, %entry.return_crit_edge256 ], [ true, %entry.return_crit_edge257 ], [ true, %entry.return_crit_edge258 ], [ true, %entry.return_crit_edge259 ], [ true, %entry.return_crit_edge260 ], [ true, %entry.return_crit_edge261 ], [ true, %entry.return_crit_edge262 ], [ true, %entry.return_crit_edge263 ], [ true, %entry.return_crit_edge264 ], [ true, %entry.return_crit_edge265 ], [ true, %entry.return_crit_edge266 ], [ true, %entry.return_crit_edge267 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max98373_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %reg, label %sw.default [
    i32 8276, label %entry.return_crit_edge
    i32 8277, label %entry.return_crit_edge5
    i32 8374, label %entry.return_crit_edge6
    i32 8447, label %entry.return_crit_edge7
    i32 8703, label %entry.return_crit_edge8
    i32 8192, label %entry.return_crit_edge9
    i32 8193, label %entry.return_crit_edge10
    i32 8194, label %entry.return_crit_edge11
    i32 8195, label %entry.return_crit_edge12
    i32 8196, label %entry.return_crit_edge13
    i32 8197, label %entry.return_crit_edge14
    i32 8198, label %entry.return_crit_edge15
    i32 8199, label %entry.return_crit_edge16
    i32 8200, label %entry.return_crit_edge17
    i32 8201, label %entry.return_crit_edge18
    i32 768, label %entry.return_crit_edge19
    i32 769, label %entry.return_crit_edge20
    i32 770, label %entry.return_crit_edge21
    i32 771, label %entry.return_crit_edge22
    i32 772, label %entry.return_crit_edge23
    i32 773, label %entry.return_crit_edge24
    i32 774, label %entry.return_crit_edge25
    i32 775, label %entry.return_crit_edge26
    i32 776, label %entry.return_crit_edge27
    i32 777, label %entry.return_crit_edge28
    i32 778, label %entry.return_crit_edge29
    i32 779, label %entry.return_crit_edge30
    i32 780, label %entry.return_crit_edge31
    i32 781, label %entry.return_crit_edge32
    i32 782, label %entry.return_crit_edge33
    i32 783, label %entry.return_crit_edge34
    i32 784, label %entry.return_crit_edge35
    i32 785, label %entry.return_crit_edge36
    i32 786, label %entry.return_crit_edge37
    i32 787, label %entry.return_crit_edge38
    i32 788, label %entry.return_crit_edge39
    i32 789, label %entry.return_crit_edge40
    i32 790, label %entry.return_crit_edge41
    i32 791, label %entry.return_crit_edge42
    i32 792, label %entry.return_crit_edge43
    i32 793, label %entry.return_crit_edge44
    i32 794, label %entry.return_crit_edge45
    i32 795, label %entry.return_crit_edge46
    i32 796, label %entry.return_crit_edge47
    i32 797, label %entry.return_crit_edge48
    i32 798, label %entry.return_crit_edge49
    i32 799, label %entry.return_crit_edge50
    i32 800, label %entry.return_crit_edge51
    i32 801, label %entry.return_crit_edge52
    i32 802, label %entry.return_crit_edge53
    i32 803, label %entry.return_crit_edge54
    i32 804, label %entry.return_crit_edge55
    i32 805, label %entry.return_crit_edge56
    i32 806, label %entry.return_crit_edge57
    i32 807, label %entry.return_crit_edge58
    i32 808, label %entry.return_crit_edge59
    i32 809, label %entry.return_crit_edge60
    i32 810, label %entry.return_crit_edge61
    i32 811, label %entry.return_crit_edge62
    i32 812, label %entry.return_crit_edge63
    i32 813, label %entry.return_crit_edge64
    i32 814, label %entry.return_crit_edge65
    i32 815, label %entry.return_crit_edge66
    i32 816, label %entry.return_crit_edge67
    i32 817, label %entry.return_crit_edge68
    i32 818, label %entry.return_crit_edge69
    i32 819, label %entry.return_crit_edge70
    i32 820, label %entry.return_crit_edge71
    i32 821, label %entry.return_crit_edge72
    i32 822, label %entry.return_crit_edge73
    i32 823, label %entry.return_crit_edge74
    i32 256, label %entry.return_crit_edge75
    i32 257, label %entry.return_crit_edge76
    i32 258, label %entry.return_crit_edge77
    i32 259, label %entry.return_crit_edge78
    i32 260, label %entry.return_crit_edge79
    i32 261, label %entry.return_crit_edge80
    i32 262, label %entry.return_crit_edge81
    i32 263, label %entry.return_crit_edge82
    i32 264, label %entry.return_crit_edge83
    i32 265, label %entry.return_crit_edge84
    i32 266, label %entry.return_crit_edge85
    i32 267, label %entry.return_crit_edge86
    i32 268, label %entry.return_crit_edge87
    i32 269, label %entry.return_crit_edge88
    i32 270, label %entry.return_crit_edge89
    i32 271, label %entry.return_crit_edge90
    i32 272, label %entry.return_crit_edge91
    i32 273, label %entry.return_crit_edge92
    i32 274, label %entry.return_crit_edge93
    i32 275, label %entry.return_crit_edge94
    i32 276, label %entry.return_crit_edge95
    i32 277, label %entry.return_crit_edge96
    i32 278, label %entry.return_crit_edge97
    i32 279, label %entry.return_crit_edge98
    i32 280, label %entry.return_crit_edge99
    i32 281, label %entry.return_crit_edge100
    i32 282, label %entry.return_crit_edge101
    i32 283, label %entry.return_crit_edge102
    i32 284, label %entry.return_crit_edge103
    i32 285, label %entry.return_crit_edge104
    i32 286, label %entry.return_crit_edge105
    i32 287, label %entry.return_crit_edge106
    i32 288, label %entry.return_crit_edge107
    i32 289, label %entry.return_crit_edge108
    i32 290, label %entry.return_crit_edge109
    i32 291, label %entry.return_crit_edge110
    i32 292, label %entry.return_crit_edge111
    i32 293, label %entry.return_crit_edge112
    i32 294, label %entry.return_crit_edge113
    i32 295, label %entry.return_crit_edge114
    i32 296, label %entry.return_crit_edge115
    i32 297, label %entry.return_crit_edge116
    i32 298, label %entry.return_crit_edge117
    i32 299, label %entry.return_crit_edge118
    i32 300, label %entry.return_crit_edge119
    i32 301, label %entry.return_crit_edge120
    i32 302, label %entry.return_crit_edge121
    i32 303, label %entry.return_crit_edge122
    i32 304, label %entry.return_crit_edge123
    i32 305, label %entry.return_crit_edge124
    i32 306, label %entry.return_crit_edge125
    i32 307, label %entry.return_crit_edge126
    i32 308, label %entry.return_crit_edge127
    i32 309, label %entry.return_crit_edge128
    i32 310, label %entry.return_crit_edge129
    i32 311, label %entry.return_crit_edge130
    i32 64, label %entry.return_crit_edge131
    i32 65, label %entry.return_crit_edge132
    i32 66, label %entry.return_crit_edge133
    i32 67, label %entry.return_crit_edge134
    i32 68, label %entry.return_crit_edge135
    i32 69, label %entry.return_crit_edge136
    i32 70, label %entry.return_crit_edge137
    i32 71, label %entry.return_crit_edge138
    i32 72, label %entry.return_crit_edge139
    i32 73, label %entry.return_crit_edge140
    i32 74, label %entry.return_crit_edge141
    i32 75, label %entry.return_crit_edge142
    i32 76, label %entry.return_crit_edge143
    i32 77, label %entry.return_crit_edge144
    i32 78, label %entry.return_crit_edge145
    i32 79, label %entry.return_crit_edge146
    i32 80, label %entry.return_crit_edge147
    i32 81, label %entry.return_crit_edge148
    i32 82, label %entry.return_crit_edge149
    i32 83, label %entry.return_crit_edge150
    i32 84, label %entry.return_crit_edge151
    i32 85, label %entry.return_crit_edge152
    i32 86, label %entry.return_crit_edge153
    i32 87, label %entry.return_crit_edge154
    i32 88, label %entry.return_crit_edge155
    i32 89, label %entry.return_crit_edge156
    i32 90, label %entry.return_crit_edge157
    i32 91, label %entry.return_crit_edge158
    i32 92, label %entry.return_crit_edge159
    i32 93, label %entry.return_crit_edge160
    i32 94, label %entry.return_crit_edge161
    i32 95, label %entry.return_crit_edge162
    i32 96, label %entry.return_crit_edge163
    i32 97, label %entry.return_crit_edge164
    i32 98, label %entry.return_crit_edge165
    i32 99, label %entry.return_crit_edge166
    i32 100, label %entry.return_crit_edge167
    i32 101, label %entry.return_crit_edge168
    i32 102, label %entry.return_crit_edge169
    i32 103, label %entry.return_crit_edge170
    i32 104, label %entry.return_crit_edge171
    i32 105, label %entry.return_crit_edge172
    i32 106, label %entry.return_crit_edge173
    i32 107, label %entry.return_crit_edge174
    i32 108, label %entry.return_crit_edge175
    i32 109, label %entry.return_crit_edge176
    i32 110, label %entry.return_crit_edge177
    i32 111, label %entry.return_crit_edge178
    i32 112, label %entry.return_crit_edge179
  ]

entry.return_crit_edge179:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge178:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge177:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge176:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge175:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge174:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge173:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge172:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge171:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge170:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge169:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge168:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge167:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge166:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge165:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge164:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge163:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge162:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge161:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge160:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge159:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge158:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge157:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge156:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge155:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge154:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge153:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge152:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge151:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge150:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge149:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge148:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge147:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge146:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge145:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge144:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge143:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge142:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge141:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge140:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge139:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge138:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge134:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge133:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge132:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge131:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge129:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge128:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge127:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge126:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge125:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge124:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge123:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge122:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge121:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge119:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge118:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge117:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge116:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110, %entry.return_crit_edge111, %entry.return_crit_edge112, %entry.return_crit_edge113, %entry.return_crit_edge114, %entry.return_crit_edge115, %entry.return_crit_edge116, %entry.return_crit_edge117, %entry.return_crit_edge118, %entry.return_crit_edge119, %entry.return_crit_edge120, %entry.return_crit_edge121, %entry.return_crit_edge122, %entry.return_crit_edge123, %entry.return_crit_edge124, %entry.return_crit_edge125, %entry.return_crit_edge126, %entry.return_crit_edge127, %entry.return_crit_edge128, %entry.return_crit_edge129, %entry.return_crit_edge130, %entry.return_crit_edge131, %entry.return_crit_edge132, %entry.return_crit_edge133, %entry.return_crit_edge134, %entry.return_crit_edge135, %entry.return_crit_edge136, %entry.return_crit_edge137, %entry.return_crit_edge138, %entry.return_crit_edge139, %entry.return_crit_edge140, %entry.return_crit_edge141, %entry.return_crit_edge142, %entry.return_crit_edge143, %entry.return_crit_edge144, %entry.return_crit_edge145, %entry.return_crit_edge146, %entry.return_crit_edge147, %entry.return_crit_edge148, %entry.return_crit_edge149, %entry.return_crit_edge150, %entry.return_crit_edge151, %entry.return_crit_edge152, %entry.return_crit_edge153, %entry.return_crit_edge154, %entry.return_crit_edge155, %entry.return_crit_edge156, %entry.return_crit_edge157, %entry.return_crit_edge158, %entry.return_crit_edge159, %entry.return_crit_edge160, %entry.return_crit_edge161, %entry.return_crit_edge162, %entry.return_crit_edge163, %entry.return_crit_edge164, %entry.return_crit_edge165, %entry.return_crit_edge166, %entry.return_crit_edge167, %entry.return_crit_edge168, %entry.return_crit_edge169, %entry.return_crit_edge170, %entry.return_crit_edge171, %entry.return_crit_edge172, %entry.return_crit_edge173, %entry.return_crit_edge174, %entry.return_crit_edge175, %entry.return_crit_edge176, %entry.return_crit_edge177, %entry.return_crit_edge178, %entry.return_crit_edge179
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ], [ true, %entry.return_crit_edge111 ], [ true, %entry.return_crit_edge112 ], [ true, %entry.return_crit_edge113 ], [ true, %entry.return_crit_edge114 ], [ true, %entry.return_crit_edge115 ], [ true, %entry.return_crit_edge116 ], [ true, %entry.return_crit_edge117 ], [ true, %entry.return_crit_edge118 ], [ true, %entry.return_crit_edge119 ], [ true, %entry.return_crit_edge120 ], [ true, %entry.return_crit_edge121 ], [ true, %entry.return_crit_edge122 ], [ true, %entry.return_crit_edge123 ], [ true, %entry.return_crit_edge124 ], [ true, %entry.return_crit_edge125 ], [ true, %entry.return_crit_edge126 ], [ true, %entry.return_crit_edge127 ], [ true, %entry.return_crit_edge128 ], [ true, %entry.return_crit_edge129 ], [ true, %entry.return_crit_edge130 ], [ true, %entry.return_crit_edge131 ], [ true, %entry.return_crit_edge132 ], [ true, %entry.return_crit_edge133 ], [ true, %entry.return_crit_edge134 ], [ true, %entry.return_crit_edge135 ], [ true, %entry.return_crit_edge136 ], [ true, %entry.return_crit_edge137 ], [ true, %entry.return_crit_edge138 ], [ true, %entry.return_crit_edge139 ], [ true, %entry.return_crit_edge140 ], [ true, %entry.return_crit_edge141 ], [ true, %entry.return_crit_edge142 ], [ true, %entry.return_crit_edge143 ], [ true, %entry.return_crit_edge144 ], [ true, %entry.return_crit_edge145 ], [ true, %entry.return_crit_edge146 ], [ true, %entry.return_crit_edge147 ], [ true, %entry.return_crit_edge148 ], [ true, %entry.return_crit_edge149 ], [ true, %entry.return_crit_edge150 ], [ true, %entry.return_crit_edge151 ], [ true, %entry.return_crit_edge152 ], [ true, %entry.return_crit_edge153 ], [ true, %entry.return_crit_edge154 ], [ true, %entry.return_crit_edge155 ], [ true, %entry.return_crit_edge156 ], [ true, %entry.return_crit_edge157 ], [ true, %entry.return_crit_edge158 ], [ true, %entry.return_crit_edge159 ], [ true, %entry.return_crit_edge160 ], [ true, %entry.return_crit_edge161 ], [ true, %entry.return_crit_edge162 ], [ true, %entry.return_crit_edge163 ], [ true, %entry.return_crit_edge164 ], [ true, %entry.return_crit_edge165 ], [ true, %entry.return_crit_edge166 ], [ true, %entry.return_crit_edge167 ], [ true, %entry.return_crit_edge168 ], [ true, %entry.return_crit_edge169 ], [ true, %entry.return_crit_edge170 ], [ true, %entry.return_crit_edge171 ], [ true, %entry.return_crit_edge172 ], [ true, %entry.return_crit_edge173 ], [ true, %entry.return_crit_edge174 ], [ true, %entry.return_crit_edge175 ], [ true, %entry.return_crit_edge176 ], [ true, %entry.return_crit_edge177 ], [ true, %entry.return_crit_edge178 ], [ true, %entry.return_crit_edge179 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @max98373_slot_config(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max98373_sdw_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_mask)
  %tobool.not = icmp eq i32 %tx_mask, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  %6 = or i32 %slots, %rx_mask
  %7 = or i32 %6, %slot_width
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp ne i32 %7, 0
  %spec.select = zext i1 %8 to i8
  %9 = getelementptr inbounds %struct.max98373_priv, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.select, ptr %9, align 4
  %rx_mask9 = getelementptr inbounds %struct.max98373_priv, ptr %5, i32 0, i32 14
  %11 = ptrtoint ptr %rx_mask9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %rx_mask, ptr %rx_mask9, align 4
  %slot = getelementptr inbounds %struct.max98373_priv, ptr %5, i32 0, i32 13
  %12 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %slots, ptr %slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98373_set_sdw_stream(ptr nocapture noundef writeonly %dai, ptr noundef %sdw_stream, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sdw_stream, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #14
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sdw_stream, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction)
  %cmp = icmp eq i32 %direction, 0
  %playback_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %playback_dma_data.sink = select i1 %cmp, ptr %playback_dma_data, ptr %capture_dma_data
  %2 = ptrtoint ptr %playback_dma_data.sink to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %playback_dma_data.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max98373_shutdown(ptr nocapture noundef readonly %substream, ptr nocapture noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %0 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %2 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  store ptr null, ptr %cond.in.i, align 4
  tail call void @kfree(ptr noundef %cond.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98373_sdw_dai_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %stream_config = alloca %struct.sdw_stream_config, align 4
  %port_config = alloca %struct.sdw_port_config, align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %stream_config) #10
  %6 = getelementptr inbounds %struct.sdw_stream_config, ptr %stream_config, i32 0, i32 1
  %7 = getelementptr inbounds %struct.sdw_stream_config, ptr %stream_config, i32 0, i32 2
  %8 = getelementptr inbounds %struct.sdw_stream_config, ptr %stream_config, i32 0, i32 3
  %9 = getelementptr inbounds i8, ptr %stream_config, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %port_config) #10
  %11 = getelementptr inbounds %struct.sdw_port_config, ptr %port_config, i32 0, i32 1
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %12 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %14 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %tobool.not = icmp eq ptr %cond.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %slave = getelementptr inbounds %struct.max98373_priv, ptr %5, i32 0, i32 10
  %15 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %slave, align 4
  %tobool3.not = icmp eq ptr %16, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %. = select i1 %cmp.i, i32 1, i32 3
  %not.cmp.i = xor i1 %cmp.i, true
  %.130 = zext i1 %not.cmp.i to i32
  %17 = ptrtoint ptr %port_config to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %., ptr %port_config, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  %20 = ptrtoint ptr %stream_config to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %stream_config, align 4
  %arrayidx.i.i131 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %arrayidx.i.i131 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.end5.if.then.i.i_crit_edge

if.end5.if.then.i.i_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %if.end5.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.end5.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %22, %if.end5.if.then.i.i_crit_edge ], [ %25, %for.inc.i.i.if.then.i.i_crit_edge ]
  %23 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #10, !range !96
  %add.i.i = or i32 %23, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.end5
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.1.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %call12 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i) #10
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call12, ptr %7, align 4
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.130, ptr %8, align 4
  %slot = getelementptr inbounds %struct.max98373_priv, ptr %5, i32 0, i32 13
  %28 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %slot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool14.not = icmp eq i32 %29, 0
  %brmerge = select i1 %tobool14.not, i1 true, i1 %not.cmp.i
  br i1 %brmerge, label %if.else18, label %if.then16

if.then16:                                        ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %6, align 4
  %rx_mask = getelementptr inbounds %struct.max98373_priv, ptr %5, i32 0, i32 14
  %31 = ptrtoint ptr %rx_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_mask, align 4
  br label %if.end29

if.else18:                                        ; preds = %params_format.exit
  br i1 %cmp.i, label %if.else22, label %if.else18.if.end25_crit_edge

if.else18.if.end25_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.else22:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i132 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %arrayidx.i.i132 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i132, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else22, %if.else18.if.end25_crit_edge
  %storemerge128 = phi i32 [ %34, %if.else22 ], [ 2, %if.else18.if.end25_crit_edge ]
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %storemerge128, ptr %6, align 4
  %sub27 = sub i32 32, %storemerge128
  %shr = lshr i32 -1, %sub27
  br label %if.end29

if.end29:                                         ; preds = %if.end25, %if.then16
  %storemerge129 = phi i32 [ %shr, %if.end25 ], [ %32, %if.then16 ]
  %36 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %storemerge129, ptr %11, align 4
  %37 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %slave, align 4
  %39 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cond.i, align 4
  %call31 = call i32 @sdw_stream_add_slave(ptr noundef %38, ptr noundef nonnull %stream_config, ptr noundef nonnull %port_config, i32 noundef 1, ptr noundef %40) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %do.end

do.end:                                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.10) #13
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  %arrayidx.i.i133 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %arrayidx.i.i133 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i133, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %44)
  %cmp36 = icmp ugt i32 %44, 16
  br i1 %cmp36, label %do.end40, label %if.end43

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.13, i32 noundef %44) #13
  br label %cleanup

if.end43:                                         ; preds = %if.end34
  %47 = ptrtoint ptr %arrayidx.i.i131 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i.i136 = icmp eq i32 %48, 0
  br i1 %tobool.not.i.i136, label %for.inc.i.i143, label %if.end43.if.then.i.i140_crit_edge

if.end43.if.then.i.i140_crit_edge:                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i140

if.then.i.i140:                                   ; preds = %for.inc.i.i143.if.then.i.i140_crit_edge, %if.end43.if.then.i.i140_crit_edge
  %i.09.lcssa.i.i137 = phi i32 [ 0, %if.end43.if.then.i.i140_crit_edge ], [ 32, %for.inc.i.i143.if.then.i.i140_crit_edge ]
  %.lcssa.i.i138 = phi i32 [ %48, %if.end43.if.then.i.i140_crit_edge ], [ %51, %for.inc.i.i143.if.then.i.i140_crit_edge ]
  %49 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i138, i1 true) #10, !range !96
  %add.i.i139 = or i32 %49, %i.09.lcssa.i.i137
  br label %params_format.exit145

for.inc.i.i143:                                   ; preds = %if.end43
  %arrayidx.1.i.i141 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx.1.i.i141 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.1.i.i141, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.1.i.i142 = icmp eq i32 %51, 0
  br i1 %tobool.not.1.i.i142, label %for.inc.i.i143.params_format.exit145_crit_edge, label %for.inc.i.i143.if.then.i.i140_crit_edge

for.inc.i.i143.if.then.i.i140_crit_edge:          ; preds = %for.inc.i.i143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i140

for.inc.i.i143.params_format.exit145_crit_edge:   ; preds = %for.inc.i.i143
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit145

params_format.exit145:                            ; preds = %for.inc.i.i143.params_format.exit145_crit_edge, %if.then.i.i140
  %retval.0.i.i144 = phi i32 [ %add.i.i139, %if.then.i.i140 ], [ 0, %for.inc.i.i143.params_format.exit145_crit_edge ]
  %call45 = call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i144) #10
  %52 = zext i32 %call45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %call45, label %do.end50 [
    i32 16, label %params_format.exit145.sw.epilog_crit_edge
    i32 24, label %sw.bb46
    i32 32, label %sw.bb47
  ]

params_format.exit145.sw.epilog_crit_edge:        ; preds = %params_format.exit145
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb46:                                          ; preds = %params_format.exit145
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb47:                                          ; preds = %params_format.exit145
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end50:                                         ; preds = %params_format.exit145
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i, align 4
  %55 = ptrtoint ptr %arrayidx.i.i131 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i.i147 = icmp eq i32 %56, 0
  br i1 %tobool.not.i.i147, label %for.inc.i.i154, label %do.end50.if.then.i.i151_crit_edge

do.end50.if.then.i.i151_crit_edge:                ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i151

if.then.i.i151:                                   ; preds = %for.inc.i.i154.if.then.i.i151_crit_edge, %do.end50.if.then.i.i151_crit_edge
  %i.09.lcssa.i.i148 = phi i32 [ 0, %do.end50.if.then.i.i151_crit_edge ], [ 32, %for.inc.i.i154.if.then.i.i151_crit_edge ]
  %.lcssa.i.i149 = phi i32 [ %56, %do.end50.if.then.i.i151_crit_edge ], [ %59, %for.inc.i.i154.if.then.i.i151_crit_edge ]
  %57 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i149, i1 true) #10, !range !96
  %add.i.i150 = or i32 %57, %i.09.lcssa.i.i148
  br label %params_format.exit156

for.inc.i.i154:                                   ; preds = %do.end50
  %arrayidx.1.i.i152 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx.1.i.i152 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.1.i.i152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.1.i.i153 = icmp eq i32 %59, 0
  br i1 %tobool.not.1.i.i153, label %for.inc.i.i154.params_format.exit156_crit_edge, label %for.inc.i.i154.if.then.i.i151_crit_edge

for.inc.i.i154.if.then.i.i151_crit_edge:          ; preds = %for.inc.i.i154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i151

for.inc.i.i154.params_format.exit156_crit_edge:   ; preds = %for.inc.i.i154
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit156

params_format.exit156:                            ; preds = %for.inc.i.i154.params_format.exit156_crit_edge, %if.then.i.i151
  %retval.0.i.i155 = phi i32 [ %add.i.i150, %if.then.i.i151 ], [ 0, %for.inc.i.i154.params_format.exit156_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i.i155) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb47, %sw.bb46, %params_format.exit145.sw.epilog_crit_edge
  %chan_sz.0 = phi i32 [ 192, %sw.bb47 ], [ 128, %sw.bb46 ], [ 64, %params_format.exit145.sw.epilog_crit_edge ]
  %60 = ptrtoint ptr %arrayidx.i.i131 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i.i158 = icmp eq i32 %61, 0
  br i1 %tobool.not.i.i158, label %for.inc.i.i165, label %sw.epilog.if.then.i.i162_crit_edge

sw.epilog.if.then.i.i162_crit_edge:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i162

if.then.i.i162:                                   ; preds = %for.inc.i.i165.if.then.i.i162_crit_edge, %sw.epilog.if.then.i.i162_crit_edge
  %i.09.lcssa.i.i159 = phi i32 [ 0, %sw.epilog.if.then.i.i162_crit_edge ], [ 32, %for.inc.i.i165.if.then.i.i162_crit_edge ]
  %.lcssa.i.i160 = phi i32 [ %61, %sw.epilog.if.then.i.i162_crit_edge ], [ %64, %for.inc.i.i165.if.then.i.i162_crit_edge ]
  %62 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i160, i1 true) #10, !range !96
  %add.i.i161 = or i32 %62, %i.09.lcssa.i.i159
  br label %params_format.exit167

for.inc.i.i165:                                   ; preds = %sw.epilog
  %arrayidx.1.i.i163 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %63 = ptrtoint ptr %arrayidx.1.i.i163 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.1.i.i163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.1.i.i164 = icmp eq i32 %64, 0
  br i1 %tobool.not.1.i.i164, label %for.inc.i.i165.params_format.exit167_crit_edge, label %for.inc.i.i165.if.then.i.i162_crit_edge

for.inc.i.i165.if.then.i.i162_crit_edge:          ; preds = %for.inc.i.i165
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i162

for.inc.i.i165.params_format.exit167_crit_edge:   ; preds = %for.inc.i.i165
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit167

params_format.exit167:                            ; preds = %for.inc.i.i165.params_format.exit167_crit_edge, %if.then.i.i162
  %retval.0.i.i166 = phi i32 [ %add.i.i161, %if.then.i.i162 ], [ 0, %for.inc.i.i165.params_format.exit167_crit_edge ]
  %call54 = call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i166) #10
  %ch_size = getelementptr inbounds %struct.max98373_priv, ptr %5, i32 0, i32 6
  %65 = ptrtoint ptr %ch_size to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call54, ptr %ch_size, align 4
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %5, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 8228, i32 noundef 192, i32 noundef %chan_sz.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98373_sdw_dai_hw_params.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98373_sdw_dai_hw_params, %if.then61)) #10
          to label %do.end66 [label %if.then61], !srcloc !97

if.then61:                                        ; preds = %params_format.exit167
  %68 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i, align 4
  %70 = ptrtoint ptr %arrayidx.i.i131 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i.i169 = icmp eq i32 %71, 0
  br i1 %tobool.not.i.i169, label %for.inc.i.i176, label %if.then61.if.then.i.i173_crit_edge

if.then61.if.then.i.i173_crit_edge:               ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i173

if.then.i.i173:                                   ; preds = %for.inc.i.i176.if.then.i.i173_crit_edge, %if.then61.if.then.i.i173_crit_edge
  %i.09.lcssa.i.i170 = phi i32 [ 0, %if.then61.if.then.i.i173_crit_edge ], [ 32, %for.inc.i.i176.if.then.i.i173_crit_edge ]
  %.lcssa.i.i171 = phi i32 [ %71, %if.then61.if.then.i.i173_crit_edge ], [ %74, %for.inc.i.i176.if.then.i.i173_crit_edge ]
  %72 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i171, i1 true) #10, !range !96
  %add.i.i172 = or i32 %72, %i.09.lcssa.i.i170
  br label %params_format.exit178

for.inc.i.i176:                                   ; preds = %if.then61
  %arrayidx.1.i.i174 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %73 = ptrtoint ptr %arrayidx.1.i.i174 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.1.i.i174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.1.i.i175 = icmp eq i32 %74, 0
  br i1 %tobool.not.1.i.i175, label %for.inc.i.i176.params_format.exit178_crit_edge, label %for.inc.i.i176.if.then.i.i173_crit_edge

for.inc.i.i176.if.then.i.i173_crit_edge:          ; preds = %for.inc.i.i176
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i173

for.inc.i.i176.params_format.exit178_crit_edge:   ; preds = %for.inc.i.i176
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit178

params_format.exit178:                            ; preds = %for.inc.i.i176.params_format.exit178_crit_edge, %if.then.i.i173
  %retval.0.i.i177 = phi i32 [ %add.i.i172, %if.then.i.i173 ], [ 0, %for.inc.i.i176.params_format.exit178_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98373_sdw_dai_hw_params.__UNIQUE_ID_ddebug239, ptr noundef %69, ptr noundef nonnull @.str.19, i32 noundef %retval.0.i.i177) #10
  br label %do.end66

do.end66:                                         ; preds = %params_format.exit178, %params_format.exit167
  %75 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i.i, align 4
  %77 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %76, label %do.end82 [
    i32 8000, label %do.end66.sw.epilog85_crit_edge
    i32 11025, label %sw.bb69
    i32 12000, label %sw.bb70
    i32 16000, label %sw.bb71
    i32 22050, label %sw.bb72
    i32 24000, label %sw.bb73
    i32 32000, label %sw.bb74
    i32 44100, label %sw.bb75
    i32 48000, label %sw.bb76
    i32 88200, label %sw.bb77
    i32 96000, label %sw.bb78
  ]

do.end66.sw.epilog85_crit_edge:                   ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog85

sw.bb69:                                          ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog85

sw.bb70:                                          ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog85

sw.bb71:                                          ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog85

sw.bb72:                                          ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog85

sw.bb73:                                          ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog85

sw.bb74:                                          ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog85

sw.bb75:                                          ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog85

sw.bb76:                                          ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog85

sw.bb77:                                          ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog85

sw.bb78:                                          ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog85

do.end82:                                         ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.21, i32 noundef %76) #13
  br label %cleanup

sw.epilog85:                                      ; preds = %sw.bb78, %sw.bb77, %sw.bb76, %sw.bb75, %sw.bb74, %sw.bb73, %sw.bb72, %sw.bb71, %sw.bb70, %sw.bb69, %do.end66.sw.epilog85_crit_edge
  %sampling_rate.0 = phi i32 [ 10, %sw.bb78 ], [ 9, %sw.bb77 ], [ 8, %sw.bb76 ], [ 7, %sw.bb75 ], [ 6, %sw.bb74 ], [ 5, %sw.bb73 ], [ 4, %sw.bb72 ], [ 3, %sw.bb71 ], [ 2, %sw.bb70 ], [ 1, %sw.bb69 ], [ 0, %do.end66.sw.epilog85_crit_edge ]
  %80 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %5, align 4
  %shl = shl nuw nsw i32 %sampling_rate.0, 4
  %call.i181 = call i32 @regmap_update_bits_base(ptr noundef %81, i32 noundef 8232, i32 noundef 240, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %82 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %5, align 4
  %call.i182 = call i32 @regmap_update_bits_base(ptr noundef %83, i32 noundef 8232, i32 noundef 15, i32 noundef %sampling_rate.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog85, %do.end82, %params_format.exit156, %do.end40, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %do.end ], [ -22, %do.end40 ], [ -22, %params_format.exit156 ], [ -22, %do.end82 ], [ 0, %sw.epilog85 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %port_config) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %stream_config) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98373_pcm_hw_free(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %slave = getelementptr inbounds %struct.max98373_priv, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slave, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %10 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %11 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cond.i, align 4
  %call4 = tail call i32 @sdw_stream_remove_slave(ptr noundef nonnull %7, ptr noundef %12) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_stream_add_slave(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_stream_remove_slave(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98373_read_prop(ptr noundef %slave) #2 align 64 {
cond.end:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #10
  %scp_int1_mask = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 19
  %0 = ptrtoint ptr %scp_int1_mask to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 3, ptr %scp_int1_mask, align 4
  %source_ports = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 14
  %1 = ptrtoint ptr %source_ports to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %source_ports, align 4
  %sink_ports = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 15
  %2 = ptrtoint ptr %sink_ports to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %sink_ports, align 4
  %paging_support = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 9
  %3 = ptrtoint ptr %paging_support to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %paging_support, align 1
  %clk_stop_timeout = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 5
  %4 = ptrtoint ptr %clk_stop_timeout to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 20, ptr %clk_stop_timeout, align 4
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 84, i32 noundef 3520) #10
  %src_dpn_prop = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 17
  %5 = ptrtoint ptr %src_dpn_prop to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5.i.i, ptr %src_dpn_prop, align 4
  %tobool317.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool317.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %6 = ptrtoint ptr %source_ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %source_ports, align 4
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %addr, align 4
  %call320 = call i32 @_find_next_bit_be(ptr noundef nonnull %addr, i32 noundef 32, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call320)
  %cmp808 = icmp ult i32 %call320, 32
  br i1 %cmp808, label %if.end.for.body_crit_edge, label %if.end.cond.false648_crit_edge

if.end.cond.false648_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false648

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %bit.0810 = phi i32 [ %call326, %for.body.for.body_crit_edge ], [ %call320, %if.end.for.body_crit_edge ]
  %i.0809 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i, i32 %i.0809
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bit.0810, ptr %arrayidx, align 4
  %type = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i, i32 %i.0809, i32 5
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %type, align 4
  %simple_ch_prep_sm = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i, i32 %i.0809, i32 7
  %11 = ptrtoint ptr %simple_ch_prep_sm to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %simple_ch_prep_sm, align 4
  %ch_prep_timeout = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i, i32 %i.0809, i32 8
  %12 = ptrtoint ptr %ch_prep_timeout to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 10, ptr %ch_prep_timeout, align 4
  %inc = add i32 %i.0809, 1
  %add325 = add nuw nsw i32 %bit.0810, 1
  %call326 = call i32 @_find_next_bit_be(ptr noundef nonnull %addr, i32 noundef 32, i32 noundef %add325) #10
  %cmp = icmp ult i32 %call326, 32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cond.false648_crit_edge

for.body.cond.false648_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false648

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cond.false648:                                    ; preds = %for.body.cond.false648_crit_edge, %if.end.cond.false648_crit_edge
  %13 = ptrtoint ptr %sink_ports to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sink_ports, align 4
  %call.i797 = call i32 @__sw_hweight32(i32 noundef %14) #10
  %15 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i797, i32 84) #10
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %devm_kcalloc.exit801.thread, label %devm_kcalloc.exit801, !prof !98

devm_kcalloc.exit801.thread:                      ; preds = %cond.false648
  call void @__sanitizer_cov_trace_pc() #12
  %sink_dpn_prop806 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 18
  %17 = ptrtoint ptr %sink_dpn_prop806 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %sink_dpn_prop806, align 4
  br label %cleanup

devm_kcalloc.exit801:                             ; preds = %cond.false648
  %18 = extractvalue { i32, i1 } %15, 0
  %call5.i.i798 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %18, i32 noundef 3520) #10
  %sink_dpn_prop = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 18
  %19 = ptrtoint ptr %sink_dpn_prop to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call5.i.i798, ptr %sink_dpn_prop, align 4
  %tobool656.not = icmp eq ptr %call5.i.i798, null
  br i1 %tobool656.not, label %devm_kcalloc.exit801.cleanup_crit_edge, label %if.end658

devm_kcalloc.exit801.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit801
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end658:                                        ; preds = %devm_kcalloc.exit801
  %20 = ptrtoint ptr %sink_ports to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sink_ports, align 4
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %addr, align 4
  %call661 = call i32 @_find_next_bit_be(ptr noundef nonnull %addr, i32 noundef 32, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call661)
  %cmp663811 = icmp ult i32 %call661, 32
  br i1 %cmp663811, label %if.end658.for.body665_crit_edge, label %if.end658.for.end678_crit_edge

if.end658.for.end678_crit_edge:                   ; preds = %if.end658
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end678

if.end658.for.body665_crit_edge:                  ; preds = %if.end658
  br label %for.body665

for.body665:                                      ; preds = %for.body665.for.body665_crit_edge, %if.end658.for.body665_crit_edge
  %bit.1813 = phi i32 [ %call677, %for.body665.for.body665_crit_edge ], [ %call661, %if.end658.for.body665_crit_edge ]
  %i.1812 = phi i32 [ %inc674, %for.body665.for.body665_crit_edge ], [ 0, %if.end658.for.body665_crit_edge ]
  %arrayidx666 = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i798, i32 %i.1812
  %23 = ptrtoint ptr %arrayidx666 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %bit.1813, ptr %arrayidx666, align 4
  %type669 = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i798, i32 %i.1812, i32 5
  %24 = ptrtoint ptr %type669 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %type669, align 4
  %simple_ch_prep_sm671 = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i798, i32 %i.1812, i32 7
  %25 = ptrtoint ptr %simple_ch_prep_sm671 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %simple_ch_prep_sm671, align 4
  %ch_prep_timeout673 = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i798, i32 %i.1812, i32 8
  %26 = ptrtoint ptr %ch_prep_timeout673 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 10, ptr %ch_prep_timeout673, align 4
  %inc674 = add i32 %i.1812, 1
  %add676 = add nuw nsw i32 %bit.1813, 1
  %call677 = call i32 @_find_next_bit_be(ptr noundef nonnull %addr, i32 noundef 32, i32 noundef %add676) #10
  %cmp663 = icmp ult i32 %call677, 32
  br i1 %cmp663, label %for.body665.for.body665_crit_edge, label %for.body665.for.end678_crit_edge

for.body665.for.end678_crit_edge:                 ; preds = %for.body665
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end678

for.body665.for.body665_crit_edge:                ; preds = %for.body665
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body665

for.end678:                                       ; preds = %for.body665.for.end678_crit_edge, %if.end658.for.end678_crit_edge
  %27 = ptrtoint ptr %clk_stop_timeout to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 20, ptr %clk_stop_timeout, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end678, %devm_kcalloc.exit801.cleanup_crit_edge, %devm_kcalloc.exit801.thread, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end678 ], [ -12, %cond.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit801.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit801.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98373_update_status(ptr noundef %slave, i32 noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %driver_data.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp = icmp eq i32 %status, 0
  %hw_init = getelementptr inbounds %struct.max98373_priv, ptr %1, i32 0, i32 11
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %hw_init to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %hw_init, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hw_init, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status)
  %cmp2.not = icmp eq i32 %status, 1
  %or.cond = and i1 %cmp2.not, %tobool.not
  br i1 %or.cond, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  %first_hw_init.i = getelementptr inbounds %struct.max98373_priv, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %first_hw_init.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %first_hw_init.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end4.if.then5.i_crit_edge, label %if.end.i

if.end4.if.then5.i_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i

if.end.i:                                         ; preds = %if.end4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  tail call void @regcache_cache_only(ptr noundef %10, i1 noundef zeroext false) #10
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  tail call void @regcache_cache_bypass(ptr noundef %12, i1 noundef zeroext true) #10
  %13 = ptrtoint ptr %first_hw_init.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %.pr.i = load i8, ptr %first_hw_init.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool4.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.then5.i_crit_edge, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.end.i.if.then5.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i.if.then5.i_crit_edge, %if.end4.if.then5.i_crit_edge
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 3000) #10
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #10
  %call.i.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #10
  %call.i1.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 12, i32 22
  %14 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store volatile i64 %call.i1.i, ptr %last_busy.i.i, align 8
  tail call void @pm_runtime_enable(ptr noundef %dev) #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  %usage_count.i.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !100
  tail call void @max98373_reset(ptr noundef %6, ptr noundef %dev) #10
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %6, align 4
  %call9.i = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 8229, i32 noundef 3) #10
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %6, align 4
  %call11.i = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 8263, i32 noundef 3) #10
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %6, align 4
  %call13.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 8246, i32 noundef 5) #10
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %6, align 4
  %call15.i = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 8232, i32 noundef 136) #10
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %6, align 4
  %call17.i = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 8224, i32 noundef 255) #10
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %6, align 4
  %call19.i = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 8225, i32 noundef 255) #10
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %6, align 4
  %call21.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 8233, i32 noundef 128) #10
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %6, align 4
  %call23.i = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 8234, i32 noundef 1) #10
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %6, align 4
  %call25.i = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 8255, i32 noundef 3) #10
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %6, align 4
  %call27.i = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 8262, i32 noundef 7) #10
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %6, align 4
  %i_slot.i = getelementptr inbounds %struct.max98373_priv, ptr %6, i32 0, i32 3
  %38 = ptrtoint ptr %i_slot.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_slot.i, align 4
  %shl.i = shl i32 %39, 4
  %v_slot.i = getelementptr inbounds %struct.max98373_priv, ptr %6, i32 0, i32 2
  %40 = ptrtoint ptr %v_slot.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %v_slot.i, align 4
  %or.i = or i32 %shl.i, %41
  %and.i = and i32 %or.i, 255
  %call29.i = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 8226, i32 noundef %and.i) #10
  %42 = ptrtoint ptr %v_slot.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %v_slot.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %43)
  %cmp.i = icmp ult i32 %43, 8
  %44 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %6, align 4
  %sub.i = add i32 %43, -8
  %sub.sink.i = select i1 %cmp.i, i32 %43, i32 %sub.i
  %.sink.i = select i1 %cmp.i, i32 8224, i32 8225
  %shl38.i = shl nuw i32 1, %sub.sink.i
  %call.i3.i = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef %.sink.i, i32 noundef %shl38.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %46 = ptrtoint ptr %i_slot.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_slot.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %47)
  %cmp42.i = icmp ult i32 %47, 8
  %48 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %6, align 4
  %sub51.i = add i32 %47, -8
  %sub51.sink.i = select i1 %cmp42.i, i32 %47, i32 %sub51.i
  %.sink12.i = select i1 %cmp42.i, i32 8224, i32 8225
  %shl52.i = shl nuw i32 1, %sub51.sink.i
  %call.i5.i = tail call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef %.sink12.i, i32 noundef %shl52.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %50 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %6, align 4
  %spkfb_slot.i = getelementptr inbounds %struct.max98373_priv, ptr %6, i32 0, i32 4
  %52 = ptrtoint ptr %spkfb_slot.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %spkfb_slot.i, align 4
  %and56.i = and i32 %53, 255
  %call57.i = tail call i32 @regmap_write(ptr noundef %51, i32 noundef 8227, i32 noundef %and56.i) #10
  %interleave_mode.i = getelementptr inbounds %struct.max98373_priv, ptr %6, i32 0, i32 5
  %54 = ptrtoint ptr %interleave_mode.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %interleave_mode.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool58.not.i = icmp eq i8 %55, 0
  br i1 %tobool58.not.i, label %if.end7.i.if.end62.i_crit_edge, label %if.then59.i

if.end7.i.if.end62.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62.i

if.then59.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %6, align 4
  %call.i6.i = tail call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 8228, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then59.i, %if.end7.i.if.end62.i_crit_edge
  %58 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %6, align 4
  %call.i7.i = tail call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 8259, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %60 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %6, align 4
  %call66.i = tail call i32 @regmap_write(ptr noundef %61, i32 noundef 8373, i32 noundef 1) #10
  %62 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %6, align 4
  %call68.i = tail call i32 @regmap_write(ptr noundef %63, i32 noundef 8418, i32 noundef 1) #10
  %64 = ptrtoint ptr %first_hw_init.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %first_hw_init.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool70.not.i = icmp eq i8 %65, 0
  br i1 %tobool70.not.i, label %if.end62.i.max98373_io_init.exit_crit_edge, label %if.then71.i

if.end62.i.max98373_io_init.exit_crit_edge:       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %max98373_io_init.exit

if.then71.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %6, align 4
  tail call void @regcache_cache_bypass(ptr noundef %67, i1 noundef zeroext false) #10
  %68 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %6, align 4
  tail call void @regcache_mark_dirty(ptr noundef %69) #10
  br label %max98373_io_init.exit

max98373_io_init.exit:                            ; preds = %if.then71.i, %if.end62.i.max98373_io_init.exit_crit_edge
  %70 = ptrtoint ptr %first_hw_init.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %first_hw_init.i, align 1
  %hw_init.i = getelementptr inbounds %struct.max98373_priv, ptr %6, i32 0, i32 11
  %71 = ptrtoint ptr %hw_init.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %hw_init.i, align 4
  %call.i8.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i9.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 12, i32 22
  %72 = ptrtoint ptr %last_busy.i9.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store volatile i64 %call.i8.i, ptr %last_busy.i9.i, align 8
  %call.i10.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #10
  br label %cleanup

cleanup:                                          ; preds = %max98373_io_init.exit, %if.end.cleanup_crit_edge, %if.end.thread
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98373_bus_config(ptr noundef %slave, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %curr_dr_freq.i = getelementptr inbounds %struct.sdw_bus_params, ptr %params, i32 0, i32 3
  %2 = ptrtoint ptr %curr_dr_freq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curr_dr_freq.i, align 4
  %shr.i = lshr i32 %3, 1
  %4 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %shr.i, label %for.inc.6.3.i.i [
    i32 7680000, label %entry.if.then.i.i_crit_edge
    i32 8400000, label %if.then.fold.split.i.i
    i32 9600000, label %if.then.fold.split31.i.i
    i32 11289600, label %if.then.fold.split32.i.i
    i32 12000000, label %if.then.fold.split33.i.i
    i32 12288000, label %if.then.fold.split34.i.i
    i32 13000000, label %if.then.fold.split35.i.i
    i32 3840000, label %if.then.fold.split36.i.i
    i32 4200000, label %if.then.fold.split37.i.i
    i32 4800000, label %if.then.fold.split38.i.i
    i32 5644800, label %if.then.fold.split39.i.i
    i32 6000000, label %if.then.fold.split40.i.i
    i32 6144000, label %if.then.fold.split41.i.i
    i32 6500000, label %if.then.fold.split42.i.i
    i32 1920000, label %if.then.fold.split43.i.i
    i32 2100000, label %if.then.fold.split44.i.i
    i32 2400000, label %if.then.fold.split45.i.i
    i32 2822400, label %if.then.fold.split46.i.i
    i32 3000000, label %if.then.fold.split47.i.i
    i32 3072000, label %if.then.fold.split48.i.i
    i32 3250000, label %if.then.fold.split49.i.i
    i32 960000, label %if.then.fold.split50.i.i
    i32 1050000, label %if.then.fold.split51.i.i
    i32 1200000, label %if.then.fold.split52.i.i
    i32 1411200, label %if.then.fold.split53.i.i
    i32 1500000, label %if.then.fold.split54.i.i
    i32 1536000, label %if.then.fold.split55.i.i
    i32 1625000, label %if.then.fold.split56.i.i
  ]

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split31.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split32.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split33.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split34.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split35.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split36.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split37.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split38.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split39.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split40.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split41.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split42.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split43.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split44.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split45.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split46.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split47.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split48.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split49.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split50.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split51.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split52.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split53.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split54.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split55.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.fold.split56.i.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.fold.split56.i.i, %if.then.fold.split55.i.i, %if.then.fold.split54.i.i, %if.then.fold.split53.i.i, %if.then.fold.split52.i.i, %if.then.fold.split51.i.i, %if.then.fold.split50.i.i, %if.then.fold.split49.i.i, %if.then.fold.split48.i.i, %if.then.fold.split47.i.i, %if.then.fold.split46.i.i, %if.then.fold.split45.i.i, %if.then.fold.split44.i.i, %if.then.fold.split43.i.i, %if.then.fold.split42.i.i, %if.then.fold.split41.i.i, %if.then.fold.split40.i.i, %if.then.fold.split39.i.i, %if.then.fold.split38.i.i, %if.then.fold.split37.i.i, %if.then.fold.split36.i.i, %if.then.fold.split35.i.i, %if.then.fold.split34.i.i, %if.then.fold.split33.i.i, %if.then.fold.split32.i.i, %if.then.fold.split31.i.i, %if.then.fold.split.i.i, %entry.if.then.i.i_crit_edge
  %x.019.lcssa21.i.i = phi i32 [ 0, %entry.if.then.i.i_crit_edge ], [ 0, %if.then.fold.split.i.i ], [ 0, %if.then.fold.split31.i.i ], [ 0, %if.then.fold.split32.i.i ], [ 0, %if.then.fold.split33.i.i ], [ 0, %if.then.fold.split34.i.i ], [ 0, %if.then.fold.split35.i.i ], [ 8, %if.then.fold.split36.i.i ], [ 8, %if.then.fold.split37.i.i ], [ 8, %if.then.fold.split38.i.i ], [ 8, %if.then.fold.split39.i.i ], [ 8, %if.then.fold.split40.i.i ], [ 8, %if.then.fold.split41.i.i ], [ 8, %if.then.fold.split42.i.i ], [ 16, %if.then.fold.split43.i.i ], [ 16, %if.then.fold.split44.i.i ], [ 16, %if.then.fold.split45.i.i ], [ 16, %if.then.fold.split46.i.i ], [ 16, %if.then.fold.split47.i.i ], [ 16, %if.then.fold.split48.i.i ], [ 16, %if.then.fold.split49.i.i ], [ 24, %if.then.fold.split50.i.i ], [ 24, %if.then.fold.split51.i.i ], [ 24, %if.then.fold.split52.i.i ], [ 24, %if.then.fold.split53.i.i ], [ 24, %if.then.fold.split54.i.i ], [ 24, %if.then.fold.split55.i.i ], [ 24, %if.then.fold.split56.i.i ]
  %y.018.lcssa.i.i = phi i32 [ 0, %entry.if.then.i.i_crit_edge ], [ 1, %if.then.fold.split.i.i ], [ 2, %if.then.fold.split31.i.i ], [ 3, %if.then.fold.split32.i.i ], [ 4, %if.then.fold.split33.i.i ], [ 5, %if.then.fold.split34.i.i ], [ 6, %if.then.fold.split35.i.i ], [ 0, %if.then.fold.split36.i.i ], [ 1, %if.then.fold.split37.i.i ], [ 2, %if.then.fold.split38.i.i ], [ 3, %if.then.fold.split39.i.i ], [ 4, %if.then.fold.split40.i.i ], [ 5, %if.then.fold.split41.i.i ], [ 6, %if.then.fold.split42.i.i ], [ 0, %if.then.fold.split43.i.i ], [ 1, %if.then.fold.split44.i.i ], [ 2, %if.then.fold.split45.i.i ], [ 3, %if.then.fold.split46.i.i ], [ 4, %if.then.fold.split47.i.i ], [ 5, %if.then.fold.split48.i.i ], [ 6, %if.then.fold.split49.i.i ], [ 0, %if.then.fold.split50.i.i ], [ 1, %if.then.fold.split51.i.i ], [ 2, %if.then.fold.split52.i.i ], [ 3, %if.then.fold.split53.i.i ], [ 4, %if.then.fold.split54.i.i ], [ 5, %if.then.fold.split55.i.i ], [ 6, %if.then.fold.split56.i.i ]
  %add.i.i = or i32 %y.018.lcssa.i.i, %x.019.lcssa21.i.i
  br label %max98373_clock_config.exit

for.inc.6.3.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev1.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.25, i32 noundef %shr.i) #13
  br label %max98373_clock_config.exit

max98373_clock_config.exit:                       ; preds = %for.inc.6.3.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 5, %for.inc.6.3.i.i ]
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call3.i = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 8246, i32 noundef %retval.0.i.i) #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call5.i = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 8232, i32 noundef 136) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_bypass(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @max98373_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98373_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cache_num = getelementptr inbounds %struct.max98373_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cache_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cache_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12 = icmp sgt i32 %3, 0
  br i1 %cmp12, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cache = getelementptr inbounds %struct.max98373_priv, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cache, align 4
  %arrayidx = getelementptr %struct.max98373_cache, ptr %7, i32 %i.013
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %val = getelementptr %struct.max98373_cache, ptr %7, i32 %i.013, i32 1
  %call3 = tail call i32 @regmap_read(ptr noundef %5, i32 noundef %9, ptr noundef %val) #10
  %inc = add nuw nsw i32 %i.013, 1
  %10 = ptrtoint ptr %cache_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cache_num, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_only(ptr noundef %13, i1 noundef zeroext true) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98373_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %first_hw_init = getelementptr inbounds %struct.max98373_priv, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %first_hw_init, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %unattach_request = getelementptr i8, ptr %dev, i32 2096
  %4 = ptrtoint ptr %unattach_request to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %unattach_request, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end.regmap_sync_crit_edge, label %if.end3

if.end.regmap_sync_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %regmap_sync

if.end3:                                          ; preds = %if.end
  %initialization_complete = getelementptr i8, ptr %dev, i32 2040
  %call5 = tail call i32 @wait_for_completion_timeout(ptr noundef %initialization_complete, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end, label %if.end3.regmap_sync_crit_edge

if.end3.regmap_sync_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %regmap_sync

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #13
  br label %cleanup

regmap_sync:                                      ; preds = %if.end3.regmap_sync_crit_edge, %if.end.regmap_sync_crit_edge
  %6 = ptrtoint ptr %unattach_request to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %unattach_request, align 8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_only(ptr noundef %8, i1 noundef zeroext false) #10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call11 = tail call i32 @regcache_sync(ptr noundef %10) #10
  br label %cleanup

cleanup:                                          ; preds = %regmap_sync, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %regmap_sync ], [ -110, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !68, !69, !70, !71, !73, !75, !76, !77, !78, !80, !82, !84, !85, !86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__initcall__kmod_snd_soc_max98373_sdw__240_901_max98373_sdw_driver_init6, !1, !"__initcall__kmod_snd_soc_max98373_sdw__240_901_max98373_sdw_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 901, i32 1}
!2 = !{ptr @__exitcall_max98373_sdw_driver_exit, !1, !"__exitcall_max98373_sdw_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description241, !4, !"__UNIQUE_ID_description241", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 903, i32 1}
!5 = !{ptr @__UNIQUE_ID_author242, !6, !"__UNIQUE_ID_author242", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 904, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 905, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 889, i32 11}
!12 = !{ptr @max98373_sdw_driver, !13, !"max98373_sdw_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 887, i32 26}
!14 = !{ptr @max98373_sdw_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 858, i32 11}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @max98373_sdw_regmap, !18, !"max98373_sdw_regmap", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 238, i32 35}
!19 = !{ptr @max98373_reg, !20, !"max98373_reg", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 32, i32 27}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 807, i32 3}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @max98373_init._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @max98373_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @max98373_sdw_cache_reg, !30, !"max98373_sdw_cache_reg", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 26, i32 18}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 751, i32 11}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 760, i32 19}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 753, i32 19}
!37 = !{ptr @max98373_sdw_dai, !38, !"max98373_sdw_dai", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 749, i32 34}
!39 = !{ptr @max98373_dai_sdw_ops, !40, !"max98373_dai_sdw_ops", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 741, i32 37}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 577, i32 3}
!43 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @max98373_sdw_dai_hw_params._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @max98373_sdw_dai_hw_params._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 582, i32 3}
!48 = !{ptr @max98373_sdw_dai_hw_params._entry.12, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @max98373_sdw_dai_hw_params._entry_ptr.14, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 599, i32 3}
!52 = !{ptr @max98373_sdw_dai_hw_params._entry.15, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @max98373_sdw_dai_hw_params._entry_ptr.17, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 610, i32 2}
!56 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @max98373_sdw_dai_hw_params.__UNIQUE_ID_ddebug239, !55, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 648, i32 3}
!60 = !{ptr @max98373_sdw_dai_hw_params._entry.20, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @max98373_sdw_dai_hw_params._entry_ptr.22, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @max98373_id, !63, !"max98373_id", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 881, i32 35}
!64 = !{ptr @max98373_slave_ops, !65, !"max98373_slave_ops", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 846, i32 29}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 837, i32 3}
!68 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @max98373_bus_config._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @max98373_bus_config._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = distinct !{null, !72, !"max98373_clk_family", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 483, i32 19}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 494, i32 2}
!75 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @max98373_clock_calculate._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @max98373_clock_calculate._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @max98373_of_match, !79, !"max98373_of_match", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 866, i32 34}
!80 = !{ptr @max98373_pm, !81, !"max98373_pm", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 295, i32 32}
!82 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/max98373-sdw.c", i32 283, i32 3}
!84 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @max98373_resume._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @max98373_resume._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{i32 0, i32 33}
!97 = !{i64 2148972145, i64 2148972150, i64 2148972163, i64 2148972207, i64 2148972241, i64 2148972262}
!98 = !{!"branch_weights", i32 1, i32 2000}
!99 = !{i8 0, i8 2}
!100 = !{i64 2148327853, i64 2148327879, i64 2148327908, i64 2148327942, i64 2148327973, i64 2148327996}
