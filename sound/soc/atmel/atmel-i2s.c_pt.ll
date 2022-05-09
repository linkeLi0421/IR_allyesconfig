; ModuleID = '/llk/IR_all_yes/sound/soc/atmel/atmel-i2s.c_pt.bc'
source_filename = "../sound/soc/atmel/atmel-i2s.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.atmel_i2s_gck_param = type { i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.atmel_i2s_caps = type { ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.atmel_i2s_dev = type { ptr, ptr, ptr, ptr, %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data, i32, ptr, ptr, i32 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
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

@__initcall__kmod_snd_soc_atmel_i2s__242_736_atmel_i2s_driver_init6 = internal global ptr @atmel_i2s_driver_init, section ".initcall6.init", align 4
@atmel_i2s_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @atmel_i2s_probe, ptr @atmel_i2s_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_i2s_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_atmel_i2s_driver_exit = internal global ptr @atmel_i2s_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description243 = internal constant [58 x i8] c"snd_soc_atmel_i2s.description=Atmel I2S Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author244 = internal constant [69 x i8] c"snd_soc_atmel_i2s.author=Cyrille Pitchen <cyrille.pitchen@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [57 x i8] c"snd_soc_atmel_i2s.file=sound/soc/atmel/snd-soc-atmel-i2s\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [33 x i8] c"snd_soc_atmel_i2s.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"atmel_i2s\00", [22 x i8] zeroinitializer }, align 32
@atmel_i2s_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_i2s_sama5d2_caps }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@atmel_i2s_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@atmel_i2s_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 40, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"atmel_i2s:637:(&atmel_i2s_regmap_config)->lock\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@atmel_i2s_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 656, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get the peripheral clock: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atmel_i2s_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/atmel/atmel-i2s.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atmel_i2s_probe._entry_ptr = internal global ptr @atmel_i2s_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gclk\00", [27 x i8] zeroinitializer }, align 32
@atmel_i2s_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 686, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw version: %#x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@atmel_i2s_probe._entry_ptr.12 = internal global ptr @atmel_i2s_probe._entry.9, section ".printk_index", align 4
@atmel_i2s_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.26, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@atmel_i2s_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @atmel_i2s_dai_probe, ptr null, ptr null, ptr null, ptr @atmel_i2s_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 1172526072901, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 1172526072901, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -96, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@atmel_i2s_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 696, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register DAI: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@atmel_i2s_probe._entry_ptr.15 = internal global ptr @atmel_i2s_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dma-names\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rx-tx\00", [26 x i8] zeroinitializer }, align 32
@atmel_i2s_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 711, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register PCM: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@atmel_i2s_probe._entry_ptr.20 = internal global ptr @atmel_i2s_probe._entry.18, section ".printk_index", align 4
@atmel_i2s_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 226, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RX overrun on channel %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel_i2s_interrupt\00", [44 x i8] zeroinitializer }, align 32
@atmel_i2s_interrupt._entry_ptr = internal global ptr @atmel_i2s_interrupt._entry, section ".printk_index", align 4
@atmel_i2s_interrupt._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.5, i32 240, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TX underrun on channel %d\0A\00", [37 x i8] zeroinitializer }, align 32
@atmel_i2s_interrupt._entry_ptr.25 = internal global ptr @atmel_i2s_interrupt._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"atmel-i2s\00", [22 x i8] zeroinitializer }, align 32
@atmel_i2s_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @atmel_i2s_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_i2s_hw_params, ptr null, ptr @atmel_i2s_prepare, ptr @atmel_i2s_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@atmel_i2s_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 341, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unsupported bus format\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel_i2s_hw_params\00", [44 x i8] zeroinitializer }, align 32
@atmel_i2s_hw_params._entry_ptr = internal global ptr @atmel_i2s_hw_params._entry, section ".printk_index", align 4
@atmel_i2s_hw_params._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.5, i32 361, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unsupported master/slave mode\0A\00", [33 x i8] zeroinitializer }, align 32
@atmel_i2s_hw_params._entry_ptr.31 = internal global ptr @atmel_i2s_hw_params._entry.29, section ".printk_index", align 4
@atmel_i2s_hw_params._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.5, i32 375, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unsupported number of audio channels\0A\00", [58 x i8] zeroinitializer }, align 32
@atmel_i2s_hw_params._entry_ptr.34 = internal global ptr @atmel_i2s_hw_params._entry.32, section ".printk_index", align 4
@atmel_i2s_hw_params._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.5, i32 409, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unsupported size/endianness for audio samples\0A\00", [49 x i8] zeroinitializer }, align 32
@atmel_i2s_hw_params._entry_ptr.37 = internal global ptr @atmel_i2s_hw_params._entry.35, section ".printk_index", align 4
@atmel_i2s_get_gck_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.5, i32 296, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cannot generate the I2S Master Clock\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atmel_i2s_get_gck_param\00", [40 x i8] zeroinitializer }, align 32
@atmel_i2s_get_gck_param._entry_ptr = internal global ptr @atmel_i2s_get_gck_param._entry, section ".printk_index", align 4
@gck_params = internal constant { [13 x %struct.atmel_i2s_gck_param], [48 x i8] } { [13 x %struct.atmel_i2s_gck_param] [%struct.atmel_i2s_gck_param { i32 8000, i32 12288000, i32 0, i32 47 }, %struct.atmel_i2s_gck_param { i32 16000, i32 12288000, i32 1, i32 47 }, %struct.atmel_i2s_gck_param { i32 24000, i32 12288000, i32 3, i32 63 }, %struct.atmel_i2s_gck_param { i32 32000, i32 12288000, i32 3, i32 47 }, %struct.atmel_i2s_gck_param { i32 48000, i32 12288000, i32 7, i32 63 }, %struct.atmel_i2s_gck_param { i32 64000, i32 12288000, i32 7, i32 47 }, %struct.atmel_i2s_gck_param { i32 96000, i32 12288000, i32 7, i32 31 }, %struct.atmel_i2s_gck_param { i32 192000, i32 12288000, i32 7, i32 15 }, %struct.atmel_i2s_gck_param { i32 11025, i32 11289600, i32 1, i32 63 }, %struct.atmel_i2s_gck_param { i32 22050, i32 11289600, i32 3, i32 63 }, %struct.atmel_i2s_gck_param { i32 44100, i32 11289600, i32 7, i32 63 }, %struct.atmel_i2s_gck_param { i32 88200, i32 11289600, i32 7, i32 31 }, %struct.atmel_i2s_gck_param { i32 176400, i32 11289600, i32 7, i32 15 }], [48 x i8] zeroinitializer }, align 32
@atmel_i2s_prepare.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.41, ptr @.str.5, ptr @.str.42, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_soc_atmel_i2s\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel_i2s_prepare\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RXRDY is set\0A\00", [18 x i8] zeroinitializer }, align 32
@atmel_i2s_sama5d2_caps = internal constant { %struct.atmel_i2s_caps, [28 x i8] } { %struct.atmel_i2s_caps { ptr @atmel_i2s_sama5d2_mck_init }, [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"muxclk\00", [25 x i8] zeroinitializer }, align 32
@atmel_i2s_sama5d2_mck_init.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.44, ptr @.str.5, ptr @.str.45, i8 0, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"atmel_i2s_sama5d2_mck_init\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to get the I2S clock control: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 2, i64 6, i64 10, i64 32, i64 36, i64 40]
@__sancov_gen_cov_switch_values.48 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"atmel_i2s_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 728, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 730, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"atmel_i2s_dt_ids\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 597, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [24 x i8] c"atmel_i2s_regmap_config\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 150, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 636, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 652, i32 39 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 655, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 661, i32 39 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 686, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [20 x i8] c"atmel_i2s_component\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 566, i32 46 }
@___asan_gen_.103 = private unnamed_addr constant [14 x i8] c"atmel_i2s_dai\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 547, i32 34 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 696, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 707, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 707, i32 48 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 711, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 225, i32 5 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 239, i32 5 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 567, i32 10 }
@___asan_gen_.142 = private unnamed_addr constant [18 x i8] c"atmel_i2s_dai_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 532, i32 37 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 341, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 361, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 375, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 409, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 296, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [11 x i8] c"gck_params\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 168, i32 41 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 283, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant [23 x i8] c"atmel_i2s_sama5d2_caps\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 593, i32 36 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 580, i32 34 }
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.203 = private constant [31 x i8] c"../sound/soc/atmel/atmel-i2s.c\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 585, i32 3 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_atmel_i2s_driver_exit, ptr @__initcall__kmod_snd_soc_atmel_i2s__242_736_atmel_i2s_driver_init6, ptr @atmel_i2s_driver_exit, ptr @atmel_i2s_get_gck_param._entry, ptr @atmel_i2s_get_gck_param._entry_ptr, ptr @atmel_i2s_hw_params._entry, ptr @atmel_i2s_hw_params._entry.29, ptr @atmel_i2s_hw_params._entry.32, ptr @atmel_i2s_hw_params._entry.35, ptr @atmel_i2s_hw_params._entry_ptr, ptr @atmel_i2s_hw_params._entry_ptr.31, ptr @atmel_i2s_hw_params._entry_ptr.34, ptr @atmel_i2s_hw_params._entry_ptr.37, ptr @atmel_i2s_interrupt._entry, ptr @atmel_i2s_interrupt._entry.23, ptr @atmel_i2s_interrupt._entry_ptr, ptr @atmel_i2s_interrupt._entry_ptr.25, ptr @atmel_i2s_probe._entry, ptr @atmel_i2s_probe._entry.13, ptr @atmel_i2s_probe._entry.18, ptr @atmel_i2s_probe._entry.9, ptr @atmel_i2s_probe._entry_ptr, ptr @atmel_i2s_probe._entry_ptr.12, ptr @atmel_i2s_probe._entry_ptr.15, ptr @atmel_i2s_probe._entry_ptr.20, ptr @atmel_i2s_driver, ptr @.str, ptr @atmel_i2s_dt_ids, ptr @atmel_i2s_probe._key, ptr @atmel_i2s_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @atmel_i2s_component, ptr @atmel_i2s_dai, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @atmel_i2s_dai_ops, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @gck_params, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @atmel_i2s_sama5d2_caps, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_i2s_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_i2s_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_i2s_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_i2s_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_i2s_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_i2s_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_i2s_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_i2s_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_i2s_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_i2s_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_i2s_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_i2s_interrupt._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_i2s_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_i2s_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_i2s_hw_params._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_i2s_hw_params._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_i2s_hw_params._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_i2s_get_gck_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gck_params to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_i2s_sama5d2_caps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_i2s_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_i2s_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atmel_i2s_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_i2s_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_i2s_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %mem = alloca ptr, align 4
  %version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem) #8
  %2 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %mem, align 4, !annotation !113
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #8
  %3 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %version, align 4, !annotation !113
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 104, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_match_node(ptr noundef nonnull @atmel_i2s_dt_ids, ptr noundef %1) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.of_device_id, ptr %call3, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %caps = getelementptr inbounds %struct.atmel_i2s_dev, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %caps, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %call7 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %mem) #8
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call13 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call7, ptr noundef nonnull @atmel_i2s_regmap_config, ptr noundef nonnull @atmel_i2s_probe._key, ptr noundef nonnull @.str.1) #8
  %cmp.i181 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %call18 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %if.end17.cleanup_crit_edge, label %if.end20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.dev_name.exit_crit_edge

if.end20.dev_name.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end20.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %if.end20.dev_name.exit_crit_edge ]
  %call.i182 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call18, ptr noundef nonnull @atmel_i2s_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %tobool25.not = icmp eq i32 %call.i182, 0
  br i1 %tobool25.not, label %if.end27, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %dev_name.exit
  %call29 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  %pclk = getelementptr inbounds %struct.atmel_i2s_dev, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call29, ptr %pclk, align 4
  %cmp.i183 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i183, label %if.then32, label %if.end36

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call29 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %14) #11
  br label %cleanup

if.end36:                                         ; preds = %if.end27
  %call38 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  %gclk = getelementptr inbounds %struct.atmel_i2s_dev, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %gclk to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call38, ptr %gclk, align 4
  %cmp.i184 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i184, label %if.then41, label %if.end36.if.end48_crit_edge

if.end36.if.end48_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then41:                                        ; preds = %if.end36
  %cmp44 = icmp eq ptr %call38, inttoptr (i32 -517 to ptr)
  br i1 %cmp44, label %if.then41.cleanup_crit_edge, label %if.end46

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end46:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %gclk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %gclk, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %if.end36.if.end48_crit_edge
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %call.i, align 4
  %regmap51 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %regmap51 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call13, ptr %regmap51, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %caps52 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %call.i, i32 0, i32 8
  %20 = ptrtoint ptr %caps52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %caps52, align 4
  %tobool53.not = icmp eq ptr %21, null
  br i1 %tobool53.not, label %if.end48.if.end63_crit_edge, label %land.lhs.true

if.end48.if.end63_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

land.lhs.true:                                    ; preds = %if.end48
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool55.not = icmp eq ptr %23, null
  br i1 %tobool55.not, label %land.lhs.true.if.end63_crit_edge, label %if.then56

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then56:                                        ; preds = %land.lhs.true
  %call59 = call i32 %23(ptr noundef nonnull %call.i, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then56.if.end63_crit_edge, label %if.then56.cleanup_crit_edge

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then56.if.end63_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.end63:                                         ; preds = %if.then56.if.end63_crit_edge, %land.lhs.true.if.end63_crit_edge, %if.end48.if.end63_crit_edge
  %24 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pclk, align 4
  %call65 = call fastcc i32 @clk_prepare_enable(ptr noundef %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end68:                                         ; preds = %if.end63
  %26 = ptrtoint ptr %regmap51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap51, align 4
  %call70 = call i32 @regmap_read(ptr noundef %27, i32 noundef 40, ptr noundef nonnull %version) #8
  %28 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %version, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %29) #11
  %30 = ptrtoint ptr %regmap51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap51, align 4
  %call76 = call i32 @regmap_write(ptr noundef %31, i32 noundef 20, i32 noundef 68) #8
  %call78 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @atmel_i2s_component, ptr noundef nonnull @atmel_i2s_dai, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end86, label %do.end83

do.end83:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call78) #11
  %32 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pclk, align 4
  call void @clk_disable(ptr noundef %33) #8
  call void @clk_unprepare(ptr noundef %33) #8
  br label %cleanup

if.end86:                                         ; preds = %if.end68
  %34 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mem, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %add = add i32 %37, 36
  %playback = getelementptr inbounds %struct.atmel_i2s_dev, ptr %call.i, i32 0, i32 4
  %38 = ptrtoint ptr %playback to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add, ptr %playback, align 4
  %maxburst = getelementptr inbounds %struct.atmel_i2s_dev, ptr %call.i, i32 0, i32 4, i32 2
  %39 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %maxburst, align 4
  %40 = load i32, ptr %35, align 4
  %add89 = add i32 %40, 32
  %capture = getelementptr inbounds %struct.atmel_i2s_dev, ptr %call.i, i32 0, i32 5
  %41 = ptrtoint ptr %capture to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add89, ptr %capture, align 4
  %maxburst92 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %call.i, i32 0, i32 5, i32 2
  %42 = ptrtoint ptr %maxburst92 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %maxburst92, align 4
  %call93 = call i32 @of_property_match_string(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp eq i32 %call93, 0
  %spec.select = select i1 %cmp94, i32 8, i32 0
  %call98 = call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev, ptr noundef null, i32 noundef %spec.select) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end86.cleanup_crit_edge, label %do.end103

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end103:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call98) #11
  %43 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pclk, align 4
  call void @clk_disable(ptr noundef %44) #8
  call void @clk_unprepare(ptr noundef %44) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end103, %if.end86.cleanup_crit_edge, %do.end83, %if.end63.cleanup_crit_edge, %if.then56.cleanup_crit_edge, %if.then41.cleanup_crit_edge, %if.then32, %dev_name.exit.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then15, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then9 ], [ %8, %if.then15 ], [ %14, %if.then32 ], [ %call78, %do.end83 ], [ %call98, %do.end103 ], [ -12, %entry.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ %call.i182, %dev_name.exit.cleanup_crit_edge ], [ -517, %if.then41.cleanup_crit_edge ], [ %call59, %if.then56.cleanup_crit_edge ], [ %call65, %if.end63.cleanup_crit_edge ], [ 0, %if.end86.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_i2s_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pclk = getelementptr inbounds %struct.atmel_i2s_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_i2s_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %sr = alloca i32, align 4
  %imr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sr) #8
  %0 = ptrtoint ptr %sr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sr, align 4, !annotation !113
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %imr) #8
  %1 = ptrtoint ptr %imr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %imr, align 4, !annotation !113
  %regmap = getelementptr inbounds %struct.atmel_i2s_dev, ptr %dev_id, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 8, ptr noundef nonnull %sr) #8
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %5, i32 noundef 28, ptr noundef nonnull %imr) #8
  %6 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sr, align 4
  %8 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %imr, align 4
  %and = and i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %and, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end17_crit_edge, label %for.body.preheader

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.body.preheader:                               ; preds = %if.end
  %10 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sr, align 4
  %and7 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %for.body.preheader.for.inc_crit_edge, label %if.then9

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then9:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.21, i32 noundef 0) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %for.body.preheader.for.inc_crit_edge
  %mask.1 = phi i32 [ 260, %if.then9 ], [ 4, %for.body.preheader.for.inc_crit_edge ]
  %14 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sr, align 4
  %and7.1 = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.1)
  %tobool8.not.1 = icmp eq i32 %and7.1, 0
  br i1 %tobool8.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then9.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then9.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %or.1 = or i32 %mask.1, 512
  %16 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.21, i32 noundef 1) #11
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then9.1, %for.inc.for.inc.1_crit_edge
  %mask.1.1 = phi i32 [ %or.1, %if.then9.1 ], [ %mask.1, %for.inc.for.inc.1_crit_edge ]
  %18 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sr, align 4
  %and7.2 = and i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.2)
  %tobool8.not.2 = icmp eq i32 %and7.2, 0
  br i1 %tobool8.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then9.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then9.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %or.2 = or i32 %mask.1.1, 1024
  %20 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.21, i32 noundef 2) #11
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then9.2, %for.inc.1.for.inc.2_crit_edge
  %mask.1.2 = phi i32 [ %or.2, %if.then9.2 ], [ %mask.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %22 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sr, align 4
  %and7.3 = and i32 %23, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.3)
  %tobool8.not.3 = icmp eq i32 %and7.3, 0
  br i1 %tobool8.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then9.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.then9.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %or.3 = or i32 %mask.1.2, 2048
  %24 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.21, i32 noundef 3) #11
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then9.3, %for.inc.2.for.inc.3_crit_edge
  %mask.1.3 = phi i32 [ %or.3, %if.then9.3 ], [ %mask.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %26 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sr, align 4
  %and7.4 = and i32 %27, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.4)
  %tobool8.not.4 = icmp eq i32 %and7.4, 0
  br i1 %tobool8.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then9.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

if.then9.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  %or.4 = or i32 %mask.1.3, 4096
  %28 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.21, i32 noundef 4) #11
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then9.4, %for.inc.3.for.inc.4_crit_edge
  %mask.1.4 = phi i32 [ %or.4, %if.then9.4 ], [ %mask.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %30 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sr, align 4
  %and7.5 = and i32 %31, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.5)
  %tobool8.not.5 = icmp eq i32 %and7.5, 0
  br i1 %tobool8.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then9.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5

if.then9.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  %or.5 = or i32 %mask.1.4, 8192
  %32 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.21, i32 noundef 5) #11
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then9.5, %for.inc.4.for.inc.5_crit_edge
  %mask.1.5 = phi i32 [ %or.5, %if.then9.5 ], [ %mask.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %34 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sr, align 4
  %and7.6 = and i32 %35, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.6)
  %tobool8.not.6 = icmp eq i32 %and7.6, 0
  br i1 %tobool8.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then9.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6

if.then9.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  %or.6 = or i32 %mask.1.5, 16384
  %36 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.21, i32 noundef 6) #11
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then9.6, %for.inc.5.for.inc.6_crit_edge
  %mask.1.6 = phi i32 [ %or.6, %if.then9.6 ], [ %mask.1.5, %for.inc.5.for.inc.6_crit_edge ]
  %38 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sr, align 4
  %and7.7 = and i32 %39, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.7)
  %tobool8.not.7 = icmp eq i32 %and7.7, 0
  br i1 %tobool8.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then9.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7

if.then9.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  %or.7 = or i32 %mask.1.6, 32768
  %40 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.21, i32 noundef 7) #11
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then9.7, %for.inc.6.for.inc.7_crit_edge
  %mask.1.7 = phi i32 [ %or.7, %if.then9.7 ], [ %mask.1.6, %for.inc.6.for.inc.7_crit_edge ]
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %call16 = call i32 @regmap_write(ptr noundef %43, i32 noundef 12, i32 noundef %mask.1.7) #8
  br label %if.end17

if.end17:                                         ; preds = %for.inc.7, %if.end.if.end17_crit_edge
  %ret.0 = phi i32 [ 1, %for.inc.7 ], [ 0, %if.end.if.end17_crit_edge ]
  %and18 = and i32 %and, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %for.body23.preheader

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body23.preheader:                             ; preds = %if.end17
  %44 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sr, align 4
  %and27 = and i32 %45, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %for.body23.preheader.for.inc39_crit_edge, label %if.then29

for.body23.preheader.for.inc39_crit_edge:         ; preds = %for.body23.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc39

if.then29:                                        ; preds = %for.body23.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.24, i32 noundef 0) #11
  br label %for.inc39

for.inc39:                                        ; preds = %if.then29, %for.body23.preheader.for.inc39_crit_edge
  %mask.3 = phi i32 [ 1048640, %if.then29 ], [ 64, %for.body23.preheader.for.inc39_crit_edge ]
  %48 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sr, align 4
  %and27.1 = and i32 %49, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.1)
  %tobool28.not.1 = icmp eq i32 %and27.1, 0
  br i1 %tobool28.not.1, label %for.inc39.for.inc39.1_crit_edge, label %if.then29.1

for.inc39.for.inc39.1_crit_edge:                  ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc39.1

if.then29.1:                                      ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #10
  %or33.1 = or i32 %mask.3, 2097152
  %50 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.24, i32 noundef 1) #11
  br label %for.inc39.1

for.inc39.1:                                      ; preds = %if.then29.1, %for.inc39.for.inc39.1_crit_edge
  %mask.3.1 = phi i32 [ %or33.1, %if.then29.1 ], [ %mask.3, %for.inc39.for.inc39.1_crit_edge ]
  %52 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sr, align 4
  %and27.2 = and i32 %53, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.2)
  %tobool28.not.2 = icmp eq i32 %and27.2, 0
  br i1 %tobool28.not.2, label %for.inc39.1.for.inc39.2_crit_edge, label %if.then29.2

for.inc39.1.for.inc39.2_crit_edge:                ; preds = %for.inc39.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc39.2

if.then29.2:                                      ; preds = %for.inc39.1
  call void @__sanitizer_cov_trace_pc() #10
  %or33.2 = or i32 %mask.3.1, 4194304
  %54 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.24, i32 noundef 2) #11
  br label %for.inc39.2

for.inc39.2:                                      ; preds = %if.then29.2, %for.inc39.1.for.inc39.2_crit_edge
  %mask.3.2 = phi i32 [ %or33.2, %if.then29.2 ], [ %mask.3.1, %for.inc39.1.for.inc39.2_crit_edge ]
  %56 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sr, align 4
  %and27.3 = and i32 %57, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.3)
  %tobool28.not.3 = icmp eq i32 %and27.3, 0
  br i1 %tobool28.not.3, label %for.inc39.2.for.inc39.3_crit_edge, label %if.then29.3

for.inc39.2.for.inc39.3_crit_edge:                ; preds = %for.inc39.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc39.3

if.then29.3:                                      ; preds = %for.inc39.2
  call void @__sanitizer_cov_trace_pc() #10
  %or33.3 = or i32 %mask.3.2, 8388608
  %58 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.24, i32 noundef 3) #11
  br label %for.inc39.3

for.inc39.3:                                      ; preds = %if.then29.3, %for.inc39.2.for.inc39.3_crit_edge
  %mask.3.3 = phi i32 [ %or33.3, %if.then29.3 ], [ %mask.3.2, %for.inc39.2.for.inc39.3_crit_edge ]
  %60 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sr, align 4
  %and27.4 = and i32 %61, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.4)
  %tobool28.not.4 = icmp eq i32 %and27.4, 0
  br i1 %tobool28.not.4, label %for.inc39.3.for.inc39.4_crit_edge, label %if.then29.4

for.inc39.3.for.inc39.4_crit_edge:                ; preds = %for.inc39.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc39.4

if.then29.4:                                      ; preds = %for.inc39.3
  call void @__sanitizer_cov_trace_pc() #10
  %or33.4 = or i32 %mask.3.3, 16777216
  %62 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.24, i32 noundef 4) #11
  br label %for.inc39.4

for.inc39.4:                                      ; preds = %if.then29.4, %for.inc39.3.for.inc39.4_crit_edge
  %mask.3.4 = phi i32 [ %or33.4, %if.then29.4 ], [ %mask.3.3, %for.inc39.3.for.inc39.4_crit_edge ]
  %64 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sr, align 4
  %and27.5 = and i32 %65, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.5)
  %tobool28.not.5 = icmp eq i32 %and27.5, 0
  br i1 %tobool28.not.5, label %for.inc39.4.for.inc39.5_crit_edge, label %if.then29.5

for.inc39.4.for.inc39.5_crit_edge:                ; preds = %for.inc39.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc39.5

if.then29.5:                                      ; preds = %for.inc39.4
  call void @__sanitizer_cov_trace_pc() #10
  %or33.5 = or i32 %mask.3.4, 33554432
  %66 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.24, i32 noundef 5) #11
  br label %for.inc39.5

for.inc39.5:                                      ; preds = %if.then29.5, %for.inc39.4.for.inc39.5_crit_edge
  %mask.3.5 = phi i32 [ %or33.5, %if.then29.5 ], [ %mask.3.4, %for.inc39.4.for.inc39.5_crit_edge ]
  %68 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sr, align 4
  %and27.6 = and i32 %69, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.6)
  %tobool28.not.6 = icmp eq i32 %and27.6, 0
  br i1 %tobool28.not.6, label %for.inc39.5.for.inc39.6_crit_edge, label %if.then29.6

for.inc39.5.for.inc39.6_crit_edge:                ; preds = %for.inc39.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc39.6

if.then29.6:                                      ; preds = %for.inc39.5
  call void @__sanitizer_cov_trace_pc() #10
  %or33.6 = or i32 %mask.3.5, 67108864
  %70 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.24, i32 noundef 6) #11
  br label %for.inc39.6

for.inc39.6:                                      ; preds = %if.then29.6, %for.inc39.5.for.inc39.6_crit_edge
  %mask.3.6 = phi i32 [ %or33.6, %if.then29.6 ], [ %mask.3.5, %for.inc39.5.for.inc39.6_crit_edge ]
  %72 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sr, align 4
  %and27.7 = and i32 %73, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.7)
  %tobool28.not.7 = icmp eq i32 %and27.7, 0
  br i1 %tobool28.not.7, label %for.inc39.6.for.inc39.7_crit_edge, label %if.then29.7

for.inc39.6.for.inc39.7_crit_edge:                ; preds = %for.inc39.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc39.7

if.then29.7:                                      ; preds = %for.inc39.6
  call void @__sanitizer_cov_trace_pc() #10
  %or33.7 = or i32 %mask.3.6, 134217728
  %74 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.24, i32 noundef 7) #11
  br label %for.inc39.7

for.inc39.7:                                      ; preds = %if.then29.7, %for.inc39.6.for.inc39.7_crit_edge
  %mask.3.7 = phi i32 [ %or33.7, %if.then29.7 ], [ %mask.3.6, %for.inc39.6.for.inc39.7_crit_edge ]
  %76 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap, align 4
  %call43 = call i32 @regmap_write(ptr noundef %77, i32 noundef 12, i32 noundef %mask.3.7) #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc39.7, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %for.inc39.7 ], [ %ret.0, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %imr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sr) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %clk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_i2s_dai_probe(ptr nocapture noundef %dai) #6 align 64 {
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
  %playback = getelementptr inbounds %struct.atmel_i2s_dev, ptr %3, i32 0, i32 4
  %capture = getelementptr inbounds %struct.atmel_i2s_dev, ptr %3, i32 0, i32 5
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %4 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %playback, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %5 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %capture, ptr %capture_dma_data.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_i2s_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #6 align 64 {
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
  %fmt1 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %fmt, ptr %fmt1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_i2s_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %. = select i1 %cmp, i32 4317, i32 477
  %fmt = getelementptr inbounds %struct.atmel_i2s_dev, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt, align 4
  %and = and i32 %7, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cond = icmp eq i32 %and, 1
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  %8 = trunc i32 %7 to i16
  %trunc = and i16 %8, -4096
  %9 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %do.end18 [
    i16 16384, label %sw.bb6
    i16 4096, label %sw.bb13
  ]

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.27) #11
  br label %cleanup

sw.bb6:                                           ; preds = %sw.bb
  %gclk.i = getelementptr inbounds %struct.atmel_i2s_dev, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %gclk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gclk.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %atmel_i2s_get_gck_param.exit, label %atmel_i2s_get_gck_param.exit.thread

atmel_i2s_get_gck_param.exit.thread:              ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %gck_param.i = getelementptr inbounds %struct.atmel_i2s_dev, ptr %3, i32 0, i32 7
  %sub.i = add i32 %15, -8000
  %16 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %16)
  %cmp6.not.i = icmp eq i32 %16, 2147483647
  %spec.select.i = select i1 %cmp6.not.i, ptr null, ptr @gck_params
  %sub.1.i = add i32 %15, -16000
  %17 = tail call i32 @llvm.abs.i32(i32 %sub.1.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %16)
  %cmp6.1.i = icmp slt i32 %17, %16
  %storemerge22.i = select i1 %cmp6.1.i, ptr getelementptr inbounds ([13 x %struct.atmel_i2s_gck_param], ptr @gck_params, i32 0, i32 1), ptr %spec.select.i
  %18 = tail call i32 @llvm.smin.i32(i32 %17, i32 %16) #8
  %sub.2.i = add i32 %15, -24000
  %19 = tail call i32 @llvm.abs.i32(i32 %sub.2.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %18)
  %cmp6.2.i = icmp slt i32 %19, %18
  %storemerge23.i = select i1 %cmp6.2.i, ptr getelementptr inbounds ([13 x %struct.atmel_i2s_gck_param], ptr @gck_params, i32 0, i32 2), ptr %storemerge22.i
  %20 = tail call i32 @llvm.smin.i32(i32 %19, i32 %18) #8
  %sub.3.i = add i32 %15, -32000
  %21 = tail call i32 @llvm.abs.i32(i32 %sub.3.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp6.3.i = icmp slt i32 %21, %20
  %storemerge24.i = select i1 %cmp6.3.i, ptr getelementptr inbounds ([13 x %struct.atmel_i2s_gck_param], ptr @gck_params, i32 0, i32 3), ptr %storemerge23.i
  %22 = tail call i32 @llvm.smin.i32(i32 %21, i32 %20) #8
  %sub.4.i = add i32 %15, -48000
  %23 = tail call i32 @llvm.abs.i32(i32 %sub.4.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %22)
  %cmp6.4.i = icmp slt i32 %23, %22
  %storemerge25.i = select i1 %cmp6.4.i, ptr getelementptr inbounds ([13 x %struct.atmel_i2s_gck_param], ptr @gck_params, i32 0, i32 4), ptr %storemerge24.i
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 %22) #8
  %sub.5.i = add i32 %15, -64000
  %25 = tail call i32 @llvm.abs.i32(i32 %sub.5.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %24)
  %cmp6.5.i = icmp slt i32 %25, %24
  %storemerge26.i = select i1 %cmp6.5.i, ptr getelementptr inbounds ([13 x %struct.atmel_i2s_gck_param], ptr @gck_params, i32 0, i32 5), ptr %storemerge25.i
  %26 = tail call i32 @llvm.smin.i32(i32 %25, i32 %24) #8
  %sub.6.i = add i32 %15, -96000
  %27 = tail call i32 @llvm.abs.i32(i32 %sub.6.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %26)
  %cmp6.6.i = icmp slt i32 %27, %26
  %storemerge27.i = select i1 %cmp6.6.i, ptr getelementptr inbounds ([13 x %struct.atmel_i2s_gck_param], ptr @gck_params, i32 0, i32 6), ptr %storemerge26.i
  %28 = tail call i32 @llvm.smin.i32(i32 %27, i32 %26) #8
  %sub.7.i = add i32 %15, -192000
  %29 = tail call i32 @llvm.abs.i32(i32 %sub.7.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %28)
  %cmp6.7.i = icmp slt i32 %29, %28
  %storemerge28.i = select i1 %cmp6.7.i, ptr getelementptr inbounds ([13 x %struct.atmel_i2s_gck_param], ptr @gck_params, i32 0, i32 7), ptr %storemerge27.i
  %30 = tail call i32 @llvm.smin.i32(i32 %29, i32 %28) #8
  %sub.8.i = add i32 %15, -11025
  %31 = tail call i32 @llvm.abs.i32(i32 %sub.8.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %30)
  %cmp6.8.i = icmp slt i32 %31, %30
  %storemerge29.i = select i1 %cmp6.8.i, ptr getelementptr inbounds ([13 x %struct.atmel_i2s_gck_param], ptr @gck_params, i32 0, i32 8), ptr %storemerge28.i
  %32 = tail call i32 @llvm.smin.i32(i32 %31, i32 %30) #8
  %sub.9.i = add i32 %15, -22050
  %33 = tail call i32 @llvm.abs.i32(i32 %sub.9.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %32)
  %cmp6.9.i = icmp slt i32 %33, %32
  %storemerge30.i = select i1 %cmp6.9.i, ptr getelementptr inbounds ([13 x %struct.atmel_i2s_gck_param], ptr @gck_params, i32 0, i32 9), ptr %storemerge29.i
  %34 = tail call i32 @llvm.smin.i32(i32 %33, i32 %32) #8
  %sub.10.i = add i32 %15, -44100
  %35 = tail call i32 @llvm.abs.i32(i32 %sub.10.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %34)
  %cmp6.10.i = icmp slt i32 %35, %34
  %storemerge31.i = select i1 %cmp6.10.i, ptr getelementptr inbounds ([13 x %struct.atmel_i2s_gck_param], ptr @gck_params, i32 0, i32 10), ptr %storemerge30.i
  %36 = tail call i32 @llvm.smin.i32(i32 %35, i32 %34) #8
  %sub.11.i = add i32 %15, -88200
  %37 = tail call i32 @llvm.abs.i32(i32 %sub.11.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %36)
  %cmp6.11.i = icmp slt i32 %37, %36
  %storemerge32.i = select i1 %cmp6.11.i, ptr getelementptr inbounds ([13 x %struct.atmel_i2s_gck_param], ptr @gck_params, i32 0, i32 11), ptr %storemerge31.i
  %38 = tail call i32 @llvm.smin.i32(i32 %37, i32 %36) #8
  %sub.12.i = add i32 %15, -176400
  %39 = tail call i32 @llvm.abs.i32(i32 %sub.12.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %38)
  %cmp6.12.i = icmp slt i32 %39, %38
  %storemerge33.i = select i1 %cmp6.12.i, ptr getelementptr inbounds ([13 x %struct.atmel_i2s_gck_param], ptr @gck_params, i32 0, i32 12), ptr %storemerge32.i
  %40 = ptrtoint ptr %gck_param.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %storemerge33.i, ptr %gck_param.i, align 4
  br label %sw.epilog20

atmel_i2s_get_gck_param.exit:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.38) #11
  br label %cleanup

sw.bb13:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %gck_param = getelementptr inbounds %struct.atmel_i2s_dev, ptr %3, i32 0, i32 7
  %43 = ptrtoint ptr %gck_param to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %gck_param, align 4
  br label %sw.epilog20

do.end18:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.30) #11
  br label %cleanup

sw.epilog20:                                      ; preds = %sw.bb13, %atmel_i2s_get_gck_param.exit.thread
  %mr.0 = phi i32 [ 0, %sw.bb13 ], [ 1, %atmel_i2s_get_gck_param.exit.thread ]
  %arrayidx.i.i87 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %46 = ptrtoint ptr %arrayidx.i.i87 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i87, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %47, label %do.end32 [
    i32 1, label %sw.bb22
    i32 2, label %sw.epilog20.sw.epilog34_crit_edge
  ]

sw.epilog20.sw.epilog34_crit_edge:                ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog34

sw.bb22:                                          ; preds = %sw.epilog20
  br i1 %cmp, label %if.then24, label %if.else26

if.then24:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  %or25 = or i32 %mr.0, 4096
  br label %sw.epilog34

if.else26:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  %or27 = or i32 %mr.0, 256
  br label %sw.epilog34

do.end32:                                         ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.33) #11
  br label %cleanup

sw.epilog34:                                      ; preds = %if.else26, %if.then24, %sw.epilog20.sw.epilog34_crit_edge
  %mr.1 = phi i32 [ %mr.0, %sw.epilog20.sw.epilog34_crit_edge ], [ %or25, %if.then24 ], [ %or27, %if.else26 ]
  %arrayidx.i.i88 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %arrayidx.i.i88 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i.i = icmp eq i32 %52, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %sw.epilog34.params_format.exit_crit_edge

sw.epilog34.params_format.exit_crit_edge:         ; preds = %sw.epilog34
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %sw.epilog34
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %53 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.1.i.i = icmp eq i32 %54, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.sw.bb36_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit

for.inc.i.i.sw.bb36_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb36

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %sw.epilog34.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %sw.epilog34.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %52, %sw.epilog34.params_format.exit_crit_edge ], [ %54, %for.inc.i.i.params_format.exit_crit_edge ]
  %55 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #8, !range !114
  %add.i.i = or i32 %55, %i.09.lcssa.i.i
  %56 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %add.i.i, label %do.end53 [
    i32 0, label %params_format.exit.sw.bb36_crit_edge
    i32 2, label %sw.bb38
    i32 40, label %sw.bb40
    i32 36, label %sw.bb42
    i32 32, label %sw.bb44
    i32 6, label %sw.bb46
    i32 10, label %params_format.exit.sw.epilog55_crit_edge
  ]

params_format.exit.sw.epilog55_crit_edge:         ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog55

params_format.exit.sw.bb36_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb36

sw.bb36:                                          ; preds = %params_format.exit.sw.bb36_crit_edge, %for.inc.i.i.sw.bb36_crit_edge
  %or37 = or i32 %mr.1, 24
  br label %sw.epilog55

sw.bb38:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  %or39 = or i32 %mr.1, 16
  br label %sw.epilog55

sw.bb40:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  %or41 = or i32 %mr.1, -2147483636
  br label %sw.epilog55

sw.bb42:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  %or43 = or i32 %mr.1, -2147483640
  br label %sw.epilog55

sw.bb44:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  %or45 = or i32 %mr.1, -2147483644
  br label %sw.epilog55

sw.bb46:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  %or47 = or i32 %mr.1, 4
  br label %sw.epilog55

do.end53:                                         ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.36) #11
  br label %cleanup

sw.epilog55:                                      ; preds = %sw.bb46, %sw.bb44, %sw.bb42, %sw.bb40, %sw.bb38, %sw.bb36, %params_format.exit.sw.epilog55_crit_edge
  %mr.2 = phi i32 [ %or47, %sw.bb46 ], [ %or45, %sw.bb44 ], [ %or43, %sw.bb42 ], [ %or41, %sw.bb40 ], [ %or39, %sw.bb38 ], [ %or37, %sw.bb36 ], [ %mr.1, %params_format.exit.sw.epilog55_crit_edge ]
  %regmap = getelementptr inbounds %struct.atmel_i2s_dev, ptr %3, i32 0, i32 1
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 4, i32 noundef %., i32 noundef %mr.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog55, %do.end53, %do.end32, %do.end18, %atmel_i2s_get_gck_param.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end18 ], [ -22, %do.end32 ], [ -22, %do.end53 ], [ %call.i, %sw.epilog55 ], [ -22, %do.end ], [ -22, %atmel_i2s_get_gck_param.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_i2s_prepare(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %rhr = alloca i32, align 4
  %sr = alloca i32, align 4
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
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rhr) #8
  %6 = ptrtoint ptr %rhr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %rhr, align 4, !annotation !113
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sr) #8
  %7 = ptrtoint ptr %sr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %sr, align 4
  br i1 %cmp, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then:                                          ; preds = %entry
  %regmap = getelementptr inbounds %struct.atmel_i2s_dev, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %9, i32 noundef 8, ptr noundef nonnull %sr) #8
  %10 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sr, align 4
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then.if.end14_crit_edge, label %do.body

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_i2s_prepare.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_i2s_prepare, %if.then9)) #8
          to label %do.end [label %if.then9], !srcloc !115

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_i2s_prepare.__UNIQUE_ID_ddebug240, ptr noundef %13, ptr noundef nonnull @.str.42) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call12 = call i32 @regmap_read(ptr noundef %15, i32 noundef 32, ptr noundef nonnull %rhr) #8
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.then.if.end14_crit_edge, %entry.if.end14_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rhr) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_i2s_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %mr = alloca i32, align 4
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
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mr) #8
  %6 = ptrtoint ptr %mr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %mr, align 4, !annotation !113
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge66
    i32 4, label %entry.sw.bb_crit_edge67
    i32 0, label %entry.sw.bb1_crit_edge
    i32 5, label %entry.sw.bb1_crit_edge68
    i32 3, label %entry.sw.bb1_crit_edge69
  ]

entry.sw.bb1_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb_crit_edge67:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge66:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge66, %entry.sw.bb_crit_edge67
  %cond = select i1 %cmp, i32 16, i32 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge68, %entry.sw.bb1_crit_edge69
  %cond3 = select i1 %cmp, i32 32, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %mck_enabled.0.off0 = phi i1 [ false, %sw.bb1 ], [ true, %sw.bb ]
  %cr.0 = phi i32 [ %cond3, %sw.bb1 ], [ %cond, %sw.bb ]
  %regmap = getelementptr inbounds %struct.atmel_i2s_dev, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_read(ptr noundef %9, i32 noundef 4, ptr noundef nonnull %mr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %10 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mr, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6.not = icmp eq i32 %and, 0
  %mck_enabled.0.off0.not = xor i1 %mck_enabled.0.off0, true
  %brmerge = or i1 %cmp6.not, %mck_enabled.0.off0.not
  br i1 %brmerge, label %if.end.if.end19_crit_edge, label %if.then10

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then10:                                        ; preds = %if.end
  %clk_use_no = getelementptr inbounds %struct.atmel_i2s_dev, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %clk_use_no to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clk_use_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not = icmp eq i32 %13, 0
  br i1 %tobool11.not, label %if.then12, label %if.then10.if.end17_crit_edge

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then12:                                        ; preds = %if.then10
  %call13 = call fastcc i32 @atmel_i2s_switch_mck_generator(ptr noundef %3, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.if.end17_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.end17:                                         ; preds = %if.then12.if.end17_crit_edge, %if.then10.if.end17_crit_edge
  %14 = ptrtoint ptr %clk_use_no to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clk_use_no, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %clk_use_no, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %if.end.if.end19_crit_edge
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call21 = call i32 @regmap_write(ptr noundef %17, i32 noundef 0, i32 noundef %cr.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %brmerge63 = or i1 %mck_enabled.0.off0, %cmp6.not
  br i1 %brmerge63, label %if.end24.cleanup_crit_edge, label %if.then28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then28:                                        ; preds = %if.end24
  %clk_use_no29 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %3, i32 0, i32 9
  %18 = ptrtoint ptr %clk_use_no29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clk_use_no29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp30 = icmp eq i32 %19, 1
  br i1 %cmp30, label %if.then31, label %if.then28.if.end36_crit_edge

if.then28.if.end36_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then31:                                        ; preds = %if.then28
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_write(ptr noundef %21, i32 noundef 0, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then31
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 4, i32 noundef 2134835200, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i, label %atmel_i2s_switch_mck_generator.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

atmel_i2s_switch_mck_generator.exit:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %gclk.i = getelementptr inbounds %struct.atmel_i2s_dev, ptr %3, i32 0, i32 3
  %24 = ptrtoint ptr %gclk.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gclk.i, align 4
  call void @clk_disable(ptr noundef %25) #8
  call void @clk_unprepare(ptr noundef %25) #8
  br label %if.end36

if.end36:                                         ; preds = %atmel_i2s_switch_mck_generator.exit, %if.then28.if.end36_crit_edge
  %26 = ptrtoint ptr %clk_use_no29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %clk_use_no29, align 4
  %dec = add i32 %27, -1
  store i32 %dec, ptr %clk_use_no29, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end.i.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call4, %sw.epilog.cleanup_crit_edge ], [ %call13, %if.then12.cleanup_crit_edge ], [ %call21, %if.end19.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ 0, %if.end36 ], [ %call.i.i, %if.end.i.cleanup_crit_edge ], [ %call.i, %if.then31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mr) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_i2s_switch_mck_generator(ptr nocapture noundef readonly %dev, i1 noundef zeroext %enabled) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enabled, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %regmap = getelementptr inbounds %struct.atmel_i2s_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 0, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 4, i32 noundef 2134835200, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %gclk = getelementptr inbounds %struct.atmel_i2s_dev, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gclk, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %cleanup

if.end8:                                          ; preds = %entry
  %gck_param = getelementptr inbounds %struct.atmel_i2s_dev, ptr %dev, i32 0, i32 7
  %6 = ptrtoint ptr %gck_param to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gck_param, align 4
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %mck = getelementptr inbounds %struct.atmel_i2s_gck_param, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %mck to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mck, align 4
  %imckdiv = getelementptr inbounds %struct.atmel_i2s_gck_param, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %imckdiv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %imckdiv, align 4
  %add = add i32 %11, 1
  %mul = mul i32 %add, %9
  %gclk14 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %dev, i32 0, i32 3
  %12 = ptrtoint ptr %gclk14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gclk14, align 4
  %call15 = tail call i32 @clk_set_rate(ptr noundef %13, i32 noundef %mul) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %14 = ptrtoint ptr %gclk14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gclk14, align 4
  %call.i66 = tail call i32 @clk_prepare(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool.not.i = icmp eq i32 %call.i66, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end18
  %call1.i = tail call i32 @clk_enable(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end23, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %15) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end.i
  %16 = ptrtoint ptr %gck_param to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gck_param, align 4
  %imckdiv25 = getelementptr inbounds %struct.atmel_i2s_gck_param, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %imckdiv25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %imckdiv25, align 4
  %shl = shl i32 %19, 16
  %and = and i32 %shl, 4128768
  %imckfs = getelementptr inbounds %struct.atmel_i2s_gck_param, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %imckfs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %imckfs, align 4
  %shl27 = shl i32 %21, 24
  %and28 = and i32 %shl27, 1056964608
  %or29 = or i32 %and, %and28
  %or30 = or i32 %or29, 1073741824
  %regmap31 = getelementptr inbounds %struct.atmel_i2s_dev, ptr %dev, i32 0, i32 1
  %22 = ptrtoint ptr %regmap31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap31, align 4
  %call.i67 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 4, i32 noundef 2134835200, i32 noundef %or30, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool33.not = icmp eq i32 %call.i67, 0
  br i1 %tobool33.not, label %if.end35, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end35:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %regmap31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap31, align 4
  %call37 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 0, i32 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end23.cleanup_crit_edge, %if.then3.i, %if.end18.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end7, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %if.end35 ], [ 0, %if.end7 ], [ %call, %if.then.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ %call15, %if.end11.cleanup_crit_edge ], [ %call.i67, %if.end23.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i66, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_i2s_sama5d2_mck_init(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %np) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gclk = getelementptr inbounds %struct.atmel_i2s_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gclk, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.43) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end14

if.then3:                                         ; preds = %if.end
  %4 = ptrtoint ptr %call to i32
  %cmp = icmp eq ptr %call, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then3.cleanup_crit_edge, label %do.body

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_i2s_sama5d2_mck_init.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_i2s_sama5d2_mck_init, %if.then11)) #8
          to label %cleanup [label %if.then11], !srcloc !115

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_i2s_sama5d2_mck_init.__UNIQUE_ID_ddebug241, ptr noundef %6, ptr noundef nonnull @.str.45, i32 noundef %4) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gclk, align 4
  %call16 = tail call i32 @clk_set_parent(ptr noundef %call, ptr noundef %8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then11, %do.body, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end14 ], [ 0, %entry.cleanup_crit_edge ], [ -517, %if.then3.cleanup_crit_edge ], [ 0, %if.then11 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !42, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !61, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !91, !92, !93, !94, !96, !98, !100, !102, !103}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @__initcall__kmod_snd_soc_atmel_i2s__242_736_atmel_i2s_driver_init6, !1, !"__initcall__kmod_snd_soc_atmel_i2s__242_736_atmel_i2s_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 736, i32 1}
!2 = !{ptr @__exitcall_atmel_i2s_driver_exit, !1, !"__exitcall_atmel_i2s_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description243, !4, !"__UNIQUE_ID_description243", i1 false, i1 false}
!4 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 738, i32 1}
!5 = !{ptr @__UNIQUE_ID_author244, !6, !"__UNIQUE_ID_author244", i1 false, i1 false}
!6 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 739, i32 1}
!7 = !{ptr @__UNIQUE_ID_file245, !8, !"__UNIQUE_ID_file245", i1 false, i1 false}
!8 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 740, i32 1}
!9 = !{ptr @__UNIQUE_ID_license246, !8, !"__UNIQUE_ID_license246", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 730, i32 11}
!12 = !{ptr @atmel_i2s_driver, !13, !"atmel_i2s_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 728, i32 31}
!14 = !{ptr @atmel_i2s_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 636, i32 11}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 652, i32 39}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 655, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @atmel_i2s_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @atmel_i2s_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 661, i32 39}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 686, i32 2}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @atmel_i2s_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @atmel_i2s_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 696, i32 3}
!36 = !{ptr @atmel_i2s_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @atmel_i2s_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 707, i32 35}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 707, i32 48}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 711, i32 3}
!44 = !{ptr @atmel_i2s_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @atmel_i2s_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @atmel_i2s_regmap_config, !47, !"atmel_i2s_regmap_config", i1 false, i1 false}
!47 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 150, i32 35}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 225, i32 5}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @atmel_i2s_interrupt._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @atmel_i2s_interrupt._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 239, i32 5}
!55 = !{ptr @atmel_i2s_interrupt._entry.23, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @atmel_i2s_interrupt._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 567, i32 10}
!59 = !{ptr @atmel_i2s_component, !60, !"atmel_i2s_component", i1 false, i1 false}
!60 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 566, i32 46}
!61 = !{ptr @atmel_i2s_dai, !62, !"atmel_i2s_dai", i1 false, i1 false}
!62 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 547, i32 34}
!63 = !{ptr @atmel_i2s_dai_ops, !64, !"atmel_i2s_dai_ops", i1 false, i1 false}
!64 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 532, i32 37}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 341, i32 3}
!67 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @atmel_i2s_hw_params._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @atmel_i2s_hw_params._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 361, i32 3}
!72 = !{ptr @atmel_i2s_hw_params._entry.29, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @atmel_i2s_hw_params._entry_ptr.31, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 375, i32 3}
!76 = !{ptr @atmel_i2s_hw_params._entry.32, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @atmel_i2s_hw_params._entry_ptr.34, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 409, i32 3}
!80 = !{ptr @atmel_i2s_hw_params._entry.35, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @atmel_i2s_hw_params._entry_ptr.37, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 296, i32 3}
!84 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @atmel_i2s_get_gck_param._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @atmel_i2s_get_gck_param._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @gck_params, !88, !"gck_params", i1 false, i1 false}
!88 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 168, i32 41}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 283, i32 4}
!91 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @atmel_i2s_prepare.__UNIQUE_ID_ddebug240, !90, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!94 = !{ptr @atmel_i2s_dt_ids, !95, !"atmel_i2s_dt_ids", i1 false, i1 false}
!95 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 597, i32 34}
!96 = !{ptr @atmel_i2s_sama5d2_caps, !97, !"atmel_i2s_sama5d2_caps", i1 false, i1 false}
!97 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 593, i32 36}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 580, i32 34}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/atmel/atmel-i2s.c", i32 585, i32 3}
!102 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @atmel_i2s_sama5d2_mck_init.__UNIQUE_ID_ddebug241, !101, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{!"auto-init"}
!114 = !{i32 0, i32 33}
!115 = !{i64 2148971595, i64 2148971600, i64 2148971613, i64 2148971657, i64 2148971691, i64 2148971712}
