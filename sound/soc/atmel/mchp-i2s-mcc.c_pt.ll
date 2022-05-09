; ModuleID = '/llk/IR_all_yes/sound/soc/atmel/mchp-i2s-mcc.c_pt.bc'
source_filename = "../sound/soc/atmel/mchp-i2s-mcc.c"
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
%struct.atomic_t = type { i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.mchp_i2s_mcc_soc_data = type { i32, i8 }
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
%struct.mchp_i2s_mcc_dev = type { %struct.wait_queue_head, %struct.wait_queue_head, ptr, ptr, ptr, ptr, ptr, %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data, i32, i32, i32, i32, i32, i8, i8 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
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
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_snd_soc_mchp_i2s_mcc__249_1107_mchp_i2s_mcc_driver_init6 = internal global ptr @mchp_i2s_mcc_driver_init, section ".initcall6.init", align 4
@mchp_i2s_mcc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mchp_i2s_mcc_probe, ptr @mchp_i2s_mcc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mchp_i2s_mcc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mchp_i2s_mcc_driver_exit = internal global ptr @mchp_i2s_mcc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description250 = internal constant [79 x i8] c"snd_soc_mchp_i2s_mcc.description=Microchip I2S Multi-Channel Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [80 x i8] c"snd_soc_mchp_i2s_mcc.author=Codrin Ciubotariu <codrin.ciubotariu@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [63 x i8] c"snd_soc_mchp_i2s_mcc.file=sound/soc/atmel/snd-soc-mchp-i2s-mcc\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [36 x i8] c"snd_soc_mchp_i2s_mcc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mchp_i2s_mcc\00", [19 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-i2smcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mchp_i2s_mcc_sam9x60 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-i2smcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mchp_i2s_mcc_sama7g5 }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mchp_i2s_mcc_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 252, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"mchp_i2s_mcc:1016:(&mchp_i2s_mcc_regmap_config)->lock\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1033, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get the peripheral clock: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mchp_i2s_mcc_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/soc/atmel/mchp-i2s-mcc.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_probe._entry_ptr = internal global ptr @mchp_i2s_mcc_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gclk\00", [27 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 1043, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"generated clock not found: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_probe._entry_ptr.12 = internal global ptr @mchp_i2s_mcc_probe._entry.9, section ".printk_index", align 4
@mchp_i2s_mcc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 1059, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to enable the peripheral clock: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_probe._entry_ptr.15 = internal global ptr @mchp_i2s_mcc_probe._entry.13, section ".printk_index", align 4
@mchp_i2s_mcc_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.40, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @mchp_i2s_mcc_dai_probe, ptr null, ptr null, ptr null, ptr @mchp_i2s_mcc_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.41, i64 1172526072901, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.42, i64 1172526072901, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 -32, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 1067, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register DAI: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_probe._entry_ptr.18 = internal global ptr @mchp_i2s_mcc_probe._entry.16, section ".printk_index", align 4
@mchp_i2s_mcc_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 1077, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register PCM: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_probe._entry_ptr.21 = internal global ptr @mchp_i2s_mcc_probe._entry.19, section ".printk_index", align 4
@mchp_i2s_mcc_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.4, ptr @.str.5, i32 1085, ptr @.str.24, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hw version: %#lx\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_probe._entry_ptr.25 = internal global ptr @mchp_i2s_mcc_probe._entry.22, section ".printk_index", align 4
@mchp_i2s_mcc_soc_data_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.5, i32 964, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get soc data\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mchp_i2s_mcc_soc_data_parse\00", [36 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_soc_data_parse._entry_ptr = internal global ptr @mchp_i2s_mcc_soc_data_parse._entry, section ".printk_index", align 4
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"microchip,tdm-data-pair\00", [40 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_soc_data_parse._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.5, i32 976, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"bad property data for 'microchip,tdm-data-pair': %d\00", [44 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_soc_data_parse._entry_ptr.31 = internal global ptr @mchp_i2s_mcc_soc_data_parse._entry.29, section ".printk_index", align 4
@mchp_i2s_mcc_soc_data_parse._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.27, ptr @.str.5, i32 981, ptr @.str.24, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"'microchip,tdm-data-pair' not found; assuming DIN/DOUT 0 for TDM\0A\00", [62 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_soc_data_parse._entry_ptr.34 = internal global ptr @mchp_i2s_mcc_soc_data_parse._entry.32, section ".printk_index", align 4
@mchp_i2s_mcc_soc_data_parse._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.27, ptr @.str.5, i32 987, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"invalid value for 'microchip,tdm-data-pair': %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_soc_data_parse._entry_ptr.37 = internal global ptr @mchp_i2s_mcc_soc_data_parse._entry.35, section ".printk_index", align 4
@mchp_i2s_mcc_soc_data_parse.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.27, ptr @.str.5, ptr @.str.39, i8 0, i8 -9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_soc_mchp_i2s_mcc\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"TMD format on DIN/DOUT %d pins\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mchp-i2s-mcc\00", [19 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @mchp_i2s_mcc_set_sysclk, ptr null, ptr null, ptr @mchp_i2s_mcc_set_bclk_ratio, ptr @mchp_i2s_mcc_set_dai_fmt, ptr null, ptr @mchp_i2s_mcc_set_dai_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mchp_i2s_mcc_startup, ptr null, ptr @mchp_i2s_mcc_hw_params, ptr @mchp_i2s_mcc_hw_free, ptr null, ptr @mchp_i2s_mcc_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"I2SMCC-Capture\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"I2SMCC-Playback\00", [16 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_dai_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->wq_txrdy\00", [17 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_dai_probe.__key.44 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->wq_rxrdy\00", [17 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_set_sysclk.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.46, ptr @.str.5, ptr @.str.47, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mchp_i2s_mcc_set_sysclk\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s() clk_id=%d freq=%u dir=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_set_bclk_ratio.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.48, ptr @.str.5, ptr @.str.49, i8 0, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mchp_i2s_mcc_set_bclk_ratio\00", [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s() ratio=%u\0A\00", [17 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_set_dai_fmt.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.50, ptr @.str.5, ptr @.str.51, i8 0, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mchp_i2s_mcc_set_dai_fmt\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s() fmt=%#x\0A\00", [18 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_set_dai_tdm_slot.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.52, ptr @.str.5, ptr @.str.53, i8 0, i8 93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mchp_i2s_mcc_set_dai_tdm_slot\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s() tx_mask=0x%08x rx_mask=0x%08x slots=%d width=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_hw_params.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.54, ptr @.str.5, ptr @.str.55, i8 0, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mchp_i2s_mcc_hw_params\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s() rate=%u format=%#x width=%u channels=%u\0A\00", [50 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.5, i32 529, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"I2S with TDM is not supported\0A\00", [33 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_hw_params._entry_ptr = internal global ptr @mchp_i2s_mcc_hw_params._entry, section ".printk_index", align 4
@mchp_i2s_mcc_hw_params._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.54, ptr @.str.5, i32 536, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Left-Justified with TDM is not supported\0A\00", [54 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_hw_params._entry_ptr.59 = internal global ptr @mchp_i2s_mcc_hw_params._entry.57, section ".printk_index", align 4
@mchp_i2s_mcc_hw_params._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.54, ptr @.str.5, i32 545, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unsupported bus format\0A\00", [40 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_hw_params._entry_ptr.62 = internal global ptr @mchp_i2s_mcc_hw_params._entry.60, section ".printk_index", align 4
@mchp_i2s_mcc_hw_params._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.54, ptr @.str.5, i32 566, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to generate MCLK in Slave mode\0A\00", [57 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_hw_params._entry_ptr.65 = internal global ptr @mchp_i2s_mcc_hw_params._entry.63, section ".printk_index", align 4
@mchp_i2s_mcc_hw_params._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.54, ptr @.str.5, i32 569, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unsupported master/slave mode\0A\00", [33 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_hw_params._entry_ptr.68 = internal global ptr @mchp_i2s_mcc_hw_params._entry.66, section ".printk_index", align 4
@mchp_i2s_mcc_hw_params._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.54, ptr @.str.5, i32 578, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unsupported number of audio channels: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_hw_params._entry_ptr.71 = internal global ptr @mchp_i2s_mcc_hw_params._entry.69, section ".printk_index", align 4
@mchp_i2s_mcc_hw_params._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.54, ptr @.str.5, i32 601, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unsupported number of audio channels\0A\00", [58 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_hw_params._entry_ptr.74 = internal global ptr @mchp_i2s_mcc_hw_params._entry.72, section ".printk_index", align 4
@mchp_i2s_mcc_hw_params._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.54, ptr @.str.5, i32 665, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unsupported size/endianness for audio samples\0A\00", [49 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_hw_params._entry_ptr.77 = internal global ptr @mchp_i2s_mcc_hw_params._entry.75, section ".printk_index", align 4
@mchp_i2s_mcc_hw_params._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.54, ptr @.str.5, i32 675, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to configure the divisors: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_hw_params._entry_ptr.80 = internal global ptr @mchp_i2s_mcc_hw_params._entry.78, section ".printk_index", align 4
@mchp_i2s_mcc_hw_params._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.54, ptr @.str.5, i32 706, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to set rate %lu to GCLK: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_hw_params._entry_ptr.83 = internal global ptr @mchp_i2s_mcc_hw_params._entry.81, section ".printk_index", align 4
@mchp_i2s_mcc_hw_params._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.54, ptr @.str.5, i32 712, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to prepare GCLK: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_hw_params._entry_ptr.86 = internal global ptr @mchp_i2s_mcc_hw_params._entry.84, section ".printk_index", align 4
@mchp_i2s_mcc_config_divs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.5, i32 452, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gclk error for rate %lu: %d\00", [36 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mchp_i2s_mcc_config_divs\00", [39 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_config_divs._entry_ptr = internal global ptr @mchp_i2s_mcc_config_divs._entry, section ".printk_index", align 4
@mchp_i2s_mcc_config_divs.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.88, ptr @.str.5, ptr @.str.89, i8 0, i8 114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"found perfect rate on gclk: %lu\0A\00", [63 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_config_divs._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.88, ptr @.str.5, i32 466, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pclk error for rate %lu: %d\00", [36 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_config_divs._entry_ptr.92 = internal global ptr @mchp_i2s_mcc_config_divs._entry.90, section ".printk_index", align 4
@mchp_i2s_mcc_config_divs.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.88, ptr @.str.5, ptr @.str.93, i8 0, i8 117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"found perfect rate on pclk: %lu\0A\00", [63 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_config_divs._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.88, ptr @.str.5, i32 478, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to change rate to clocks\0A\00", [63 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_config_divs._entry_ptr.96 = internal global ptr @mchp_i2s_mcc_config_divs._entry.94, section ".printk_index", align 4
@mchp_i2s_mcc_config_divs.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.88, ptr @.str.5, ptr @.str.97, i8 0, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"source CLK is %s with rate %lu, diff %lu\0A\00", [54 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_hw_free.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@mchp_i2s_mcc_hw_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.5, i32 745, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Timeout waiting for Tx ready\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mchp_i2s_mcc_hw_free\00", [43 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_hw_free._entry_ptr = internal global ptr @mchp_i2s_mcc_hw_free._entry, section ".printk_index", align 4
@mchp_i2s_mcc_hw_free.__print_once.100 = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@mchp_i2s_mcc_hw_free._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.99, ptr @.str.5, i32 761, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Timeout waiting for Rx ready\0A\00", [34 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_hw_free._entry_ptr.103 = internal global ptr @mchp_i2s_mcc_hw_free._entry.101, section ".printk_index", align 4
@mchp_i2s_mcc_trigger.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@mchp_i2s_mcc_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.5, i32 844, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable GCLK: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mchp_i2s_mcc_trigger\00", [43 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_trigger._entry_ptr = internal global ptr @mchp_i2s_mcc_trigger._entry, section ".printk_index", align 4
@mchp_i2s_mcc_sam9x60 = internal global { %struct.mchp_i2s_mcc_soc_data, [24 x i8] } { %struct.mchp_i2s_mcc_soc_data { i32 1, i8 0 }, [24 x i8] zeroinitializer }, align 32
@mchp_i2s_mcc_sama7g5 = internal global { %struct.mchp_i2s_mcc_soc_data, [24 x i8] } { %struct.mchp_i2s_mcc_soc_data { i32 4, i8 1 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.106 = internal global [5 x i64] [i64 3, i64 16, i64 4096, i64 8192, i64 16384]
@__sancov_gen_cov_switch_values.107 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.108 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 2, i64 6, i64 10, i64 32, i64 36, i64 40]
@__sancov_gen_cov_switch_values.109 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.110 = private unnamed_addr constant [20 x i8] c"mchp_i2s_mcc_driver\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1099, i32 31 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1101, i32 11 }
@___asan_gen_.116 = private unnamed_addr constant [20 x i8] c"mchp_i2s_mcc_dt_ids\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 944, i32 34 }
@___asan_gen_.119 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [27 x i8] c"mchp_i2s_mcc_regmap_config\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 224, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1015, i32 11 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1029, i32 39 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1032, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1038, i32 39 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1042, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1058, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [23 x i8] c"mchp_i2s_mcc_component\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 930, i32 46 }
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"mchp_i2s_mcc_dai\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 908, i32 34 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1067, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1077, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 1084, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 964, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 971, i32 47 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 974, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 980, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 985, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 990, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 931, i32 10 }
@___asan_gen_.233 = private unnamed_addr constant [21 x i8] c"mchp_i2s_mcc_dai_ops\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 873, i32 37 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 918, i32 18 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 911, i32 18 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 888, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 889, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 318, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 335, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 346, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 372, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 522, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 529, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 536, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 545, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 566, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 569, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 576, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 601, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 665, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 674, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 704, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 712, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 451, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 455, i32 5 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 465, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 469, i32 5 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 478, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 482, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 744, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 760, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.401 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 843, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant [21 x i8] c"mchp_i2s_mcc_sam9x60\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 935, i32 37 }
@___asan_gen_.407 = private unnamed_addr constant [21 x i8] c"mchp_i2s_mcc_sama7g5\00", align 1
@___asan_gen_.408 = private constant [34 x i8] c"../sound/soc/atmel/mchp-i2s-mcc.c\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.408, i32 939, i32 37 }
@llvm.compiler.used = appending global [134 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__exitcall_mchp_i2s_mcc_driver_exit, ptr @__initcall__kmod_snd_soc_mchp_i2s_mcc__249_1107_mchp_i2s_mcc_driver_init6, ptr @mchp_i2s_mcc_config_divs._entry, ptr @mchp_i2s_mcc_config_divs._entry.90, ptr @mchp_i2s_mcc_config_divs._entry.94, ptr @mchp_i2s_mcc_config_divs._entry_ptr, ptr @mchp_i2s_mcc_config_divs._entry_ptr.92, ptr @mchp_i2s_mcc_config_divs._entry_ptr.96, ptr @mchp_i2s_mcc_driver_exit, ptr @mchp_i2s_mcc_hw_free._entry, ptr @mchp_i2s_mcc_hw_free._entry.101, ptr @mchp_i2s_mcc_hw_free._entry_ptr, ptr @mchp_i2s_mcc_hw_free._entry_ptr.103, ptr @mchp_i2s_mcc_hw_params._entry, ptr @mchp_i2s_mcc_hw_params._entry.57, ptr @mchp_i2s_mcc_hw_params._entry.60, ptr @mchp_i2s_mcc_hw_params._entry.63, ptr @mchp_i2s_mcc_hw_params._entry.66, ptr @mchp_i2s_mcc_hw_params._entry.69, ptr @mchp_i2s_mcc_hw_params._entry.72, ptr @mchp_i2s_mcc_hw_params._entry.75, ptr @mchp_i2s_mcc_hw_params._entry.78, ptr @mchp_i2s_mcc_hw_params._entry.81, ptr @mchp_i2s_mcc_hw_params._entry.84, ptr @mchp_i2s_mcc_hw_params._entry_ptr, ptr @mchp_i2s_mcc_hw_params._entry_ptr.59, ptr @mchp_i2s_mcc_hw_params._entry_ptr.62, ptr @mchp_i2s_mcc_hw_params._entry_ptr.65, ptr @mchp_i2s_mcc_hw_params._entry_ptr.68, ptr @mchp_i2s_mcc_hw_params._entry_ptr.71, ptr @mchp_i2s_mcc_hw_params._entry_ptr.74, ptr @mchp_i2s_mcc_hw_params._entry_ptr.77, ptr @mchp_i2s_mcc_hw_params._entry_ptr.80, ptr @mchp_i2s_mcc_hw_params._entry_ptr.83, ptr @mchp_i2s_mcc_hw_params._entry_ptr.86, ptr @mchp_i2s_mcc_probe._entry, ptr @mchp_i2s_mcc_probe._entry.13, ptr @mchp_i2s_mcc_probe._entry.16, ptr @mchp_i2s_mcc_probe._entry.19, ptr @mchp_i2s_mcc_probe._entry.22, ptr @mchp_i2s_mcc_probe._entry.9, ptr @mchp_i2s_mcc_probe._entry_ptr, ptr @mchp_i2s_mcc_probe._entry_ptr.12, ptr @mchp_i2s_mcc_probe._entry_ptr.15, ptr @mchp_i2s_mcc_probe._entry_ptr.18, ptr @mchp_i2s_mcc_probe._entry_ptr.21, ptr @mchp_i2s_mcc_probe._entry_ptr.25, ptr @mchp_i2s_mcc_soc_data_parse._entry, ptr @mchp_i2s_mcc_soc_data_parse._entry.29, ptr @mchp_i2s_mcc_soc_data_parse._entry.32, ptr @mchp_i2s_mcc_soc_data_parse._entry.35, ptr @mchp_i2s_mcc_soc_data_parse._entry_ptr, ptr @mchp_i2s_mcc_soc_data_parse._entry_ptr.31, ptr @mchp_i2s_mcc_soc_data_parse._entry_ptr.34, ptr @mchp_i2s_mcc_soc_data_parse._entry_ptr.37, ptr @mchp_i2s_mcc_trigger._entry, ptr @mchp_i2s_mcc_trigger._entry_ptr, ptr @mchp_i2s_mcc_driver, ptr @.str, ptr @mchp_i2s_mcc_dt_ids, ptr @mchp_i2s_mcc_probe._key, ptr @mchp_i2s_mcc_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @mchp_i2s_mcc_component, ptr @mchp_i2s_mcc_dai, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @mchp_i2s_mcc_dai_ops, ptr @.str.41, ptr @.str.42, ptr @mchp_i2s_mcc_dai_probe.__key, ptr @.str.43, ptr @mchp_i2s_mcc_dai_probe.__key.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @mchp_i2s_mcc_sam9x60, ptr @mchp_i2s_mcc_sama7g5], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_soc_data_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_soc_data_parse._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_soc_data_parse._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_soc_data_parse._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_dai_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_dai_probe.__key.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_hw_params._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_hw_params._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_hw_params._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_hw_params._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_hw_params._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_hw_params._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_hw_params._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_hw_params._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_hw_params._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_hw_params._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_config_divs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_config_divs._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_config_divs._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_hw_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_hw_free._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_sam9x60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_i2s_mcc_sama7g5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_i2s_mcc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mchp_i2s_mcc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mchp_i2s_mcc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @mchp_i2s_mcc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_i2s_mcc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %mem = alloca ptr, align 4
  %version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem) #8
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mem, align 4, !annotation !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #8
  %1 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %version, align 4, !annotation !212
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 220, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %mem) #8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call2, ptr noundef nonnull @mchp_i2s_mcc_regmap_config, ptr noundef nonnull @mchp_i2s_mcc_probe._key, ptr noundef nonnull @.str.1) #8
  %cmp.i160 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i160, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %call13 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end15.dev_name.exit_crit_edge

if.end15.dev_name.exit_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end15.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.end15.dev_name.exit_crit_edge ]
  %call.i161 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call13, ptr noundef nonnull @mchp_i2s_mcc_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %tobool20.not = icmp eq i32 %call.i161, 0
  br i1 %tobool20.not, label %if.end22, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %dev_name.exit
  %call24 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  %pclk = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call24, ptr %pclk, align 4
  %cmp.i162 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i162, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call24 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef %9) #11
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  %call33 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.8) #8
  %gclk = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %gclk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call33, ptr %gclk, align 4
  %cmp.i163 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i163, label %if.then36, label %if.end31.if.end47_crit_edge

if.end31.if.end47_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then36:                                        ; preds = %if.end31
  %cmp39 = icmp eq ptr %call33, inttoptr (i32 -517 to ptr)
  br i1 %cmp39, label %if.then36.cleanup_crit_edge, label %do.end44

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end44:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef 0) #11
  %11 = ptrtoint ptr %gclk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %gclk, align 4
  br label %if.end47

if.end47:                                         ; preds = %do.end44, %if.end31.if.end47_crit_edge
  %call49 = call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %soc = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call49, ptr %soc, align 4
  %call50 = call fastcc i32 @mchp_i2s_mcc_soc_data_parse(ptr noundef %pdev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.end47.cleanup_crit_edge, label %if.end53

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end53:                                         ; preds = %if.end47
  %dev55 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %dev55 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev1, ptr %dev55, align 4
  %regmap56 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %regmap56 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8, ptr %regmap56, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %16 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pclk, align 4
  %call58 = call fastcc i32 @clk_prepare_enable(ptr noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end65, label %do.end63

do.end63:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %call58) #11
  br label %cleanup

if.end65:                                         ; preds = %if.end53
  %call67 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @mchp_i2s_mcc_component, ptr noundef nonnull @mchp_i2s_mcc_dai, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end75, label %do.end72

do.end72:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %call67) #11
  %18 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pclk, align 4
  call void @clk_disable(ptr noundef %19) #8
  call void @clk_unprepare(ptr noundef %19) #8
  br label %cleanup

if.end75:                                         ; preds = %if.end65
  %20 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mem, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add = add i32 %23, 52
  %playback = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %call.i, i32 0, i32 7
  %24 = ptrtoint ptr %playback to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add, ptr %playback, align 4
  %25 = load i32, ptr %21, align 4
  %add77 = add i32 %25, 48
  %capture = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %call.i, i32 0, i32 8
  %26 = ptrtoint ptr %capture to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add77, ptr %capture, align 4
  %call80 = call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev1, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end88, label %do.end85

do.end85:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %call80) #11
  %27 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pclk, align 4
  call void @clk_disable(ptr noundef %28) #8
  call void @clk_unprepare(ptr noundef %28) #8
  br label %cleanup

if.end88:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %regmap56 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap56, align 4
  %call90 = call i32 @regmap_read(ptr noundef %30, i32 noundef 252, ptr noundef nonnull %version) #8
  %31 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %version, align 4
  %and = and i32 %32, 4095
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %and) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %do.end85, %do.end72, %do.end63, %if.end47.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %if.then27, %dev_name.exit.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then10, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then4 ], [ %3, %if.then10 ], [ %9, %if.then27 ], [ %call58, %do.end63 ], [ %call67, %do.end72 ], [ %call80, %do.end85 ], [ 0, %if.end88 ], [ -12, %entry.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call.i161, %dev_name.exit.cleanup_crit_edge ], [ -517, %if.then36.cleanup_crit_edge ], [ %call50, %if.end47.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_i2s_mcc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pclk = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %1, i32 0, i32 4
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
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_i2s_mcc_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %sra = alloca i32, align 4
  %imra = alloca i32, align 4
  %srb = alloca i32, align 4
  %imrb = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sra) #8
  %0 = ptrtoint ptr %sra to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sra, align 4, !annotation !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %imra) #8
  %1 = ptrtoint ptr %imra to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %imra, align 4, !annotation !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srb) #8
  %2 = ptrtoint ptr %srb to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %srb, align 4, !annotation !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %imrb) #8
  %3 = ptrtoint ptr %imrb to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %imrb, align 4, !annotation !212
  %regmap = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %dev_id, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %5, i32 noundef 24, ptr noundef nonnull %imra) #8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %7, i32 noundef 28, ptr noundef nonnull %sra) #8
  %8 = ptrtoint ptr %imra to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %imra, align 4
  %10 = ptrtoint ptr %sra to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sra, align 4
  %and = and i32 %11, %9
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_read(ptr noundef %13, i32 noundef 40, ptr noundef nonnull %imrb) #8
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call6 = call i32 @regmap_read(ptr noundef %15, i32 noundef 44, ptr noundef nonnull %srb) #8
  %16 = ptrtoint ptr %imrb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %imrb, align 4
  %18 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %srb, align 4
  %and7 = and i32 %19, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %or.cond = select i1 %tobool.not, i1 %tobool8.not, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %soc = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %dev_id, i32 0, i32 6
  %20 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %soc, align 4
  %has_fifo = getelementptr inbounds %struct.mchp_i2s_mcc_soc_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %has_fifo to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_fifo, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool9.not = icmp eq i8 %23, 0
  br i1 %tobool9.not, label %land.lhs.true31, label %land.lhs.true59

land.lhs.true31:                                  ; preds = %if.end
  %channels = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %dev_id, i32 0, i32 13
  %24 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channels, align 4
  %sub12 = sub i32 32, %25
  %shr = lshr i32 -1, %sub12
  %sub16 = sub i32 16, %25
  %shr17 = lshr i32 -1, %sub16
  %and18 = and i32 %shr17, -65536
  %or20 = or i32 %and18, %shr
  %and21 = and i32 %or20, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool24.not159 = icmp ne i32 %and21, 0
  %ret.0162 = zext i1 %tobool24.not159 to i32
  %26 = ptrtoint ptr %imra to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %imra, align 4
  %and38 = and i32 %shr, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp ne i32 %and38, 0
  %and54 = and i32 %shr, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %and38, i32 %and54)
  %cmp = icmp eq i32 %and38, %and54
  %or.cond155 = select i1 %tobool39.not, i1 %cmp, i1 false
  br i1 %or.cond155, label %land.lhs.true31.if.then62_crit_edge, label %land.lhs.true31.if.end63_crit_edge

land.lhs.true31.if.end63_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

land.lhs.true31.if.then62_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then62

land.lhs.true59:                                  ; preds = %if.end
  %and11 = and i32 %and7, 4352
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool25.not = icmp ne i32 %and11, 0
  %ret.0 = zext i1 %tobool25.not to i32
  %and60 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %land.lhs.true59.if.end63_crit_edge, label %land.lhs.true59.if.then62_crit_edge

land.lhs.true59.if.then62_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then62

land.lhs.true59.if.end63_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then62:                                        ; preds = %land.lhs.true59.if.then62_crit_edge, %land.lhs.true31.if.then62_crit_edge
  %ret.0171 = phi i32 [ %ret.0162, %land.lhs.true31.if.then62_crit_edge ], [ %ret.0, %land.lhs.true59.if.then62_crit_edge ]
  %idrb.0167 = phi i32 [ 0, %land.lhs.true31.if.then62_crit_edge ], [ %and11, %land.lhs.true59.if.then62_crit_edge ]
  %idra.0163 = phi i32 [ %and21, %land.lhs.true31.if.then62_crit_edge ], [ 0, %land.lhs.true59.if.then62_crit_edge ]
  %tx_rdy = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %dev_id, i32 0, i32 15
  %28 = ptrtoint ptr %tx_rdy to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %tx_rdy, align 1
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %tx_rdy, align 1
  call void @__wake_up(ptr noundef %dev_id, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %land.lhs.true59.if.end63_crit_edge, %land.lhs.true31.if.end63_crit_edge
  %ret.0172 = phi i32 [ %ret.0171, %if.then62 ], [ %ret.0, %land.lhs.true59.if.end63_crit_edge ], [ %ret.0162, %land.lhs.true31.if.end63_crit_edge ]
  %idrb.0168 = phi i32 [ %idrb.0167, %if.then62 ], [ %and11, %land.lhs.true59.if.end63_crit_edge ], [ 0, %land.lhs.true31.if.end63_crit_edge ]
  %idra.0164 = phi i32 [ %idra.0163, %if.then62 ], [ 0, %land.lhs.true59.if.end63_crit_edge ], [ %and21, %land.lhs.true31.if.end63_crit_edge ]
  %29 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %soc, align 4
  %has_fifo65 = getelementptr inbounds %struct.mchp_i2s_mcc_soc_data, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %has_fifo65 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %has_fifo65, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool66.not = icmp eq i8 %32, 0
  br i1 %tobool66.not, label %land.lhs.true67, label %land.lhs.true96

land.lhs.true67:                                  ; preds = %if.end63
  %33 = ptrtoint ptr %imra to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %imra, align 4
  %channels68 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %dev_id, i32 0, i32 13
  %35 = ptrtoint ptr %channels68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %channels68, align 4
  %sub70 = sub i32 16, %36
  %shr71 = lshr i32 -1, %sub70
  %and72 = and i32 %shr71, -65536
  %and74 = and i32 %and72, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp ne i32 %and74, 0
  %and90 = and i32 %and72, %idra.0164
  call void @__sanitizer_cov_trace_cmp4(i32 %and74, i32 %and90)
  %cmp91 = icmp eq i32 %and74, %and90
  %or.cond156 = select i1 %tobool75.not, i1 %cmp91, i1 false
  br i1 %or.cond156, label %land.lhs.true67.if.then99_crit_edge, label %land.lhs.true67.if.end103_crit_edge

land.lhs.true67.if.end103_crit_edge:              ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

land.lhs.true67.if.then99_crit_edge:              ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then99

land.lhs.true96:                                  ; preds = %if.end63
  %37 = ptrtoint ptr %imrb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %imrb, align 4
  %and97 = and i32 %38, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %land.lhs.true96.if.end103_crit_edge, label %land.lhs.true96.if.then99_crit_edge

land.lhs.true96.if.then99_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then99

land.lhs.true96.if.end103_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then99:                                        ; preds = %land.lhs.true96.if.then99_crit_edge, %land.lhs.true67.if.then99_crit_edge
  %rx_rdy = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %dev_id, i32 0, i32 15
  %39 = ptrtoint ptr %rx_rdy to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load100 = load i8, ptr %rx_rdy, align 1
  %bf.set102 = or i8 %bf.load100, 16
  store i8 %bf.set102, ptr %rx_rdy, align 1
  %wq_rxrdy = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %dev_id, i32 0, i32 1
  call void @__wake_up(ptr noundef %wq_rxrdy, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %if.end103

if.end103:                                        ; preds = %if.then99, %land.lhs.true96.if.end103_crit_edge, %land.lhs.true67.if.end103_crit_edge
  %40 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %soc, align 4
  %has_fifo105 = getelementptr inbounds %struct.mchp_i2s_mcc_soc_data, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %has_fifo105 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %has_fifo105, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool106.not = icmp eq i8 %43, 0
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  br i1 %tobool106.not, label %if.else110, label %if.then107

if.then107:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  %call109 = call i32 @regmap_write(ptr noundef %45, i32 noundef 36, i32 noundef %idrb.0168) #8
  br label %cleanup

if.else110:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  %call112 = call i32 @regmap_write(ptr noundef %45, i32 noundef 20, i32 noundef %idra.0164) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else110, %if.then107, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ret.0172, %if.else110 ], [ %ret.0172, %if.then107 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %imrb) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srb) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %imra) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sra) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mchp_i2s_mcc_soc_data_parse(ptr noundef %pdev, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %soc = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tdm_data_pair = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %dev, i32 0, i32 14
  %call.i.i = tail call i32 @of_property_read_variable_u8_array(ptr noundef %5, ptr noundef nonnull @.str.28, ptr noundef %tdm_data_pair, i32 noundef 1, i32 noundef 0) #8
  %6 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp6 = icmp sgt i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %6)
  %cmp7.not = icmp eq i32 %6, -22
  %or.cond = or i1 %cmp6, %cmp7.not
  br i1 %or.cond, label %if.end13, label %do.end11

do.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.30, i32 noundef %6) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  br i1 %cmp7.not, label %do.end18, label %if.else

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5, ptr noundef nonnull @.str.33) #11
  %7 = ptrtoint ptr %tdm_data_pair to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %tdm_data_pair, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end13
  %8 = ptrtoint ptr %tdm_data_pair to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tdm_data_pair, align 4
  %conv = zext i8 %9 to i32
  %10 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %soc, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %sub = add i32 %13, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp24 = icmp ult i32 %sub, %conv
  br i1 %cmp24, label %do.end29, label %do.body34

do.end29:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.36, i32 noundef %conv) #11
  br label %cleanup

do.body34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mchp_i2s_mcc_soc_data_parse.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mchp_i2s_mcc_soc_data_parse, %if.then39)) #8
          to label %cleanup [label %if.then39], !srcloc !214

if.then39:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %tdm_data_pair to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tdm_data_pair, align 4
  %conv42 = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mchp_i2s_mcc_soc_data_parse.__UNIQUE_ID_ddebug248, ptr noundef %dev5, ptr noundef nonnull @.str.39, i32 noundef %conv42) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %do.body34, %do.end29, %do.end18, %do.end11, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %6, %do.end11 ], [ -22, %do.end29 ], [ -19, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then39 ], [ 0, %do.end18 ], [ 0, %do.body34 ]
  ret i32 %retval.0
}

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
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_i2s_mcc_dai_probe(ptr nocapture noundef %dai) #2 align 64 {
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
  tail call void @__init_waitqueue_head(ptr noundef %3, ptr noundef nonnull @.str.43, ptr noundef nonnull @mchp_i2s_mcc_dai_probe.__key) #8
  %wq_rxrdy = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %wq_rxrdy, ptr noundef nonnull @.str.45, ptr noundef nonnull @mchp_i2s_mcc_dai_probe.__key.44) #8
  %tx_rdy = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %tx_rdy to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %tx_rdy, align 1
  %bf.set6 = or i8 %bf.load, 48
  store i8 %bf.set6, ptr %tx_rdy, align 1
  %playback = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 7
  %capture = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 8
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %5 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %playback, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %6 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %capture, ptr %capture_dma_data.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_i2s_mcc_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mchp_i2s_mcc_set_sysclk.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mchp_i2s_mcc_set_sysclk, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !214

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mchp_i2s_mcc_set_sysclk.__UNIQUE_ID_ddebug240, ptr noundef %5, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp = icmp eq i32 %dir, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %sysclk = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %freq, ptr %sysclk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_i2s_mcc_set_bclk_ratio(ptr nocapture noundef readonly %dai, i32 noundef %ratio) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mchp_i2s_mcc_set_bclk_ratio.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mchp_i2s_mcc_set_bclk_ratio, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !214

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mchp_i2s_mcc_set_bclk_ratio.__UNIQUE_ID_ddebug241, ptr noundef %5, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef %ratio) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %frame_length = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %frame_length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %ratio, ptr %frame_length, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_i2s_mcc_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mchp_i2s_mcc_set_dai_fmt.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mchp_i2s_mcc_set_dai_fmt, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !214

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mchp_i2s_mcc_set_dai_fmt.__UNIQUE_ID_ddebug242, ptr noundef %5, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef %fmt) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and7 = and i32 %fmt, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %and7)
  %cmp8 = icmp ne i32 %and7, 12288
  %6 = and i32 %fmt, 3856
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  %8 = and i1 %7, %cmp8
  br i1 %8, label %if.end14, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %fmt15 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 9
  %9 = ptrtoint ptr %fmt15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %fmt, ptr %fmt15, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_i2s_mcc_set_dai_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mchp_i2s_mcc_set_dai_tdm_slot.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mchp_i2s_mcc_set_dai_tdm_slot, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !214

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mchp_i2s_mcc_set_dai_tdm_slot.__UNIQUE_ID_ddebug243, ptr noundef %5, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %slots)
  %6 = icmp ult i32 %slots, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %slot_width)
  %cmp7.not = icmp eq i32 %slot_width, 32
  %or.cond31 = and i1 %6, %cmp7.not
  br i1 %or.cond31, label %if.end9, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slots)
  %tobool10.not = icmp eq i32 %slots, 0
  br i1 %tobool10.not, label %if.end9.if.end18_crit_edge, label %if.then11

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then11:                                        ; preds = %if.end9
  %sub12 = sub nuw nsw i32 32, %slots
  %shr = lshr i32 -1, %sub12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %rx_mask)
  %cmp13.not = icmp eq i32 %shr, %rx_mask
  call void @__sanitizer_cov_trace_cmp4(i32 %rx_mask, i32 %tx_mask)
  %cmp15.not = icmp eq i32 %rx_mask, %tx_mask
  %or.cond32 = and i1 %cmp15.not, %cmp13.not
  br i1 %or.cond32, label %if.then11.if.end18_crit_edge, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end18:                                         ; preds = %if.then11.if.end18_crit_edge, %if.end9.if.end18_crit_edge
  %tdm_slots = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 12
  %7 = ptrtoint ptr %tdm_slots to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %slots, ptr %tdm_slots, align 4
  %mul = shl nuw nsw i32 %slots, 5
  %frame_length = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %frame_length to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %frame_length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then11.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %if.then11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_i2s_mcc_startup(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %sr.i = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sr.i) #8
  %4 = ptrtoint ptr %sr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %sr.i, align 4, !annotation !212
  %regmap.i = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 12, ptr noundef nonnull %sr.i) #8
  %7 = ptrtoint ptr %sr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sr.i, align 4
  %and.i = and i32 %8, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sr.i) #8
  br i1 %tobool.i.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call2 = call i32 @regmap_write(ptr noundef %10, i32 noundef 0, i32 noundef 128) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_i2s_mcc_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %sr.i = alloca i32, align 4
  %rate = alloca i32, align 4
  %mra = alloca i32, align 4
  %mra_cur = alloca i32, align 4
  %mrb_cur = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #8
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rate, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mra) #8
  %5 = ptrtoint ptr %mra to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %mra, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %frame_length2 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 11
  %8 = ptrtoint ptr %frame_length2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_length2, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mchp_i2s_mcc_hw_params.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mchp_i2s_mcc_hw_params, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !214

if.then:                                          ; preds = %entry
  %dev7 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 2
  %12 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev7, align 4
  %arrayidx.i.i341 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %arrayidx.i.i341 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i341, align 4
  %arrayidx.i.i342 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx.i.i342 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i342, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %params_format.exit

for.inc.i.i:                                      ; preds = %if.then
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.1.i.i = icmp eq i32 %19, 0
  %20 = tail call i32 @llvm.cttz.i32(i32 %19, i1 true) #8, !range !215
  %add.i.i375 = or i32 %20, 32
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_width.exit_crit_edge, label %for.inc.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.if.then.i.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

for.inc.i.i.params_width.exit_crit_edge:          ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_width.exit

params_format.exit:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %21 = tail call i32 @llvm.cttz.i32(i32 %17, i1 true) #8, !range !215
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %params_format.exit, %for.inc.i.i.if.then.i.i.i_crit_edge
  %.pre-phi = phi i32 [ %21, %params_format.exit ], [ %20, %for.inc.i.i.if.then.i.i.i_crit_edge ]
  %retval.0.i.i369 = phi i32 [ %21, %params_format.exit ], [ %add.i.i375, %for.inc.i.i.if.then.i.i.i_crit_edge ]
  %i.09.lcssa.i.i.i = phi i32 [ 0, %params_format.exit ], [ 32, %for.inc.i.i.if.then.i.i.i_crit_edge ]
  %add.i.i.i = or i32 %.pre-phi, %i.09.lcssa.i.i.i
  br label %params_width.exit

params_width.exit:                                ; preds = %if.then.i.i.i, %for.inc.i.i.params_width.exit_crit_edge
  %retval.0.i.i370 = phi i32 [ %retval.0.i.i369, %if.then.i.i.i ], [ 0, %for.inc.i.i.params_width.exit_crit_edge ]
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #8
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mchp_i2s_mcc_hw_params.__UNIQUE_ID_ddebug247, ptr noundef %13, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54, i32 noundef %15, i32 noundef %retval.0.i.i370, i32 noundef %call1.i, i32 noundef %23) #8
  br label %do.end

do.end:                                           ; preds = %params_width.exit, %entry
  %fmt = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 9
  %24 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fmt, align 4
  %and = and i32 %25, 15
  %26 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.end33 [
    i32 1, label %sw.bb
    i32 3, label %sw.bb19
    i32 4, label %sw.bb29
  ]

sw.bb:                                            ; preds = %do.end
  %tdm_slots = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 12
  %27 = ptrtoint ptr %tdm_slots to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tdm_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool12.not = icmp eq i32 %28, 0
  br i1 %tobool12.not, label %sw.bb.sw.epilog_crit_edge, label %do.end16

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end16:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %dev17 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 2
  %29 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.56) #11
  br label %cleanup244

sw.bb19:                                          ; preds = %do.end
  %tdm_slots20 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 12
  %31 = ptrtoint ptr %tdm_slots20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tdm_slots20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool21.not = icmp eq i32 %32, 0
  br i1 %tobool21.not, label %if.end27, label %do.end25

do.end25:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  %dev26 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 2
  %33 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.58) #11
  br label %cleanup244

if.end27:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %mra to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mra, align 4
  %or28 = or i32 %36, 64
  store i32 %or28, ptr %mra, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %mra to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mra, align 4
  %or30 = or i32 %38, 128
  store i32 %or30, ptr %mra, align 4
  br label %sw.epilog

do.end33:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev34 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 2
  %39 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.61) #11
  br label %cleanup244

sw.epilog:                                        ; preds = %sw.bb29, %if.end27, %sw.bb.sw.epilog_crit_edge
  %41 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fmt, align 4
  %43 = trunc i32 %42 to i16
  %trunc = and i16 %43, -4096
  %44 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.106)
  switch i16 %trunc, label %do.end58 [
    i16 16384, label %sw.bb37
    i16 8192, label %sw.bb43
    i16 4096, label %sw.epilog.sw.bb45_crit_edge
  ]

sw.epilog.sw.bb45_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb45

sw.bb37:                                          ; preds = %sw.epilog
  %45 = ptrtoint ptr %mra to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mra, align 4
  %or38 = or i32 %46, 1
  store i32 %or38, ptr %mra, align 4
  %sysclk = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 10
  %47 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool39.not = icmp eq i32 %48, 0
  br i1 %tobool39.not, label %sw.bb37.sw.epilog60_crit_edge, label %if.then40

sw.bb37.sw.epilog60_crit_edge:                    ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog60

if.then40:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #10
  %or41 = or i32 %46, 1073741825
  %49 = ptrtoint ptr %mra to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or41, ptr %mra, align 4
  br label %sw.epilog60

sw.bb43:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb45

sw.bb45:                                          ; preds = %sw.bb43, %sw.epilog.sw.bb45_crit_edge
  %mrb.0 = phi i32 [ 0, %sw.epilog.sw.bb45_crit_edge ], [ 65536, %sw.bb43 ]
  %set_divs.0 = phi i32 [ 0, %sw.epilog.sw.bb45_crit_edge ], [ 1, %sw.bb43 ]
  %sysclk47 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 10
  %50 = ptrtoint ptr %sysclk47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sysclk47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool48.not = icmp eq i32 %51, 0
  br i1 %tobool48.not, label %sw.bb45.sw.epilog60_crit_edge, label %do.end52

sw.bb45.sw.epilog60_crit_edge:                    ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog60

do.end52:                                         ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #10
  %dev53 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 2
  %52 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev53, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %53, ptr noundef nonnull @.str.64) #11
  br label %sw.epilog60

do.end58:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %dev59 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 2
  %54 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev59, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.67) #11
  br label %cleanup244

sw.epilog60:                                      ; preds = %do.end52, %sw.bb45.sw.epilog60_crit_edge, %if.then40, %sw.bb37.sw.epilog60_crit_edge
  %mrb.1 = phi i32 [ %mrb.0, %do.end52 ], [ %mrb.0, %sw.bb45.sw.epilog60_crit_edge ], [ 0, %if.then40 ], [ 0, %sw.bb37.sw.epilog60_crit_edge ]
  %set_divs.1 = phi i32 [ %set_divs.0, %do.end52 ], [ %set_divs.0, %sw.bb45.sw.epilog60_crit_edge ], [ 1, %if.then40 ], [ 1, %sw.bb37.sw.epilog60_crit_edge ]
  %56 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fmt, align 4
  %and62 = and i32 %57, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.else94, label %if.then64

if.then64:                                        ; preds = %sw.epilog60
  %soc = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 6
  %58 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %soc, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %mul = shl i32 %61, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %mul)
  %cmp65 = icmp ugt i32 %7, %mul
  br i1 %cmp65, label %do.end69, label %if.end71

do.end69:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  %dev70 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 2
  %62 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev70, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.70, i32 noundef %7) #11
  br label %cleanup244

if.end71:                                         ; preds = %if.then64
  %or72 = or i32 %mrb.1, 1
  %64 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %7, label %do.end86 [
    i32 1, label %sw.bb73
    i32 2, label %if.end71.sw.epilog88_crit_edge
    i32 4, label %sw.bb79
    i32 8, label %sw.bb81
  ]

if.end71.sw.epilog88_crit_edge:                   ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog88

sw.bb73:                                          ; preds = %if.end71
  %65 = ptrtoint ptr %mra to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mra, align 4
  br i1 %cmp, label %if.then75, label %if.else

if.then75:                                        ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #10
  %or76 = or i32 %66, 1024
  %67 = ptrtoint ptr %mra to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or76, ptr %mra, align 4
  br label %sw.epilog88

if.else:                                          ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #10
  %or77 = or i32 %66, 256
  %68 = ptrtoint ptr %mra to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or77, ptr %mra, align 4
  br label %sw.epilog88

sw.bb79:                                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %mra to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mra, align 4
  %or80 = or i32 %70, 16
  store i32 %or80, ptr %mra, align 4
  br label %sw.epilog88

sw.bb81:                                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %mra to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mra, align 4
  %or82 = or i32 %72, 32
  store i32 %or82, ptr %mra, align 4
  br label %sw.epilog88

do.end86:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %dev87 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 2
  %73 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev87, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.73) #11
  br label %cleanup244

sw.epilog88:                                      ; preds = %sw.bb81, %sw.bb79, %if.else, %if.then75, %if.end71.sw.epilog88_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool89.not = icmp eq i32 %9, 0
  br i1 %tobool89.not, label %if.then90, label %sw.epilog88.if.end127_crit_edge

sw.epilog88.if.end127_crit_edge:                  ; preds = %sw.epilog88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.then90:                                        ; preds = %sw.epilog88
  %arrayidx.i.i.i344 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %arrayidx.i.i.i344 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i.i.i344, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i.i.i345 = icmp eq i32 %76, 0
  br i1 %tobool.not.i.i.i345, label %for.inc.i.i.i352, label %if.then90.if.then.i.i.i349_crit_edge

if.then90.if.then.i.i.i349_crit_edge:             ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i349

if.then.i.i.i349:                                 ; preds = %for.inc.i.i.i352.if.then.i.i.i349_crit_edge, %if.then90.if.then.i.i.i349_crit_edge
  %i.09.lcssa.i.i.i346 = phi i32 [ 0, %if.then90.if.then.i.i.i349_crit_edge ], [ 32, %for.inc.i.i.i352.if.then.i.i.i349_crit_edge ]
  %.lcssa.i.i.i347 = phi i32 [ %76, %if.then90.if.then.i.i.i349_crit_edge ], [ %79, %for.inc.i.i.i352.if.then.i.i.i349_crit_edge ]
  %77 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i347, i1 true) #8, !range !215
  %add.i.i.i348 = or i32 %77, %i.09.lcssa.i.i.i346
  br label %params_physical_width.exit

for.inc.i.i.i352:                                 ; preds = %if.then90
  %arrayidx.1.i.i.i350 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %78 = ptrtoint ptr %arrayidx.1.i.i.i350 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.1.i.i.i350, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.1.i.i.i351 = icmp eq i32 %79, 0
  br i1 %tobool.not.1.i.i.i351, label %for.inc.i.i.i352.params_physical_width.exit_crit_edge, label %for.inc.i.i.i352.if.then.i.i.i349_crit_edge

for.inc.i.i.i352.if.then.i.i.i349_crit_edge:      ; preds = %for.inc.i.i.i352
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i349

for.inc.i.i.i352.params_physical_width.exit_crit_edge: ; preds = %for.inc.i.i.i352
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_physical_width.exit

params_physical_width.exit:                       ; preds = %for.inc.i.i.i352.params_physical_width.exit_crit_edge, %if.then.i.i.i349
  %retval.0.i.i.i353 = phi i32 [ %add.i.i.i348, %if.then.i.i.i349 ], [ 0, %for.inc.i.i.i352.params_physical_width.exit_crit_edge ]
  %call1.i354 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %retval.0.i.i.i353) #8
  %mul92 = shl i32 %call1.i354, 1
  br label %if.end127

if.else94:                                        ; preds = %sw.epilog60
  %and96 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.else94.if.end127_crit_edge, label %if.then98

if.else94.if.end127_crit_edge:                    ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.then98:                                        ; preds = %if.else94
  %tdm_data_pair = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 14
  %80 = ptrtoint ptr %tdm_data_pair to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %tdm_data_pair, align 4
  %conv = zext i8 %81 to i32
  %shl = shl nuw nsw i32 %conv, 4
  %and99 = and i32 %shl, 48
  %82 = ptrtoint ptr %mra to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mra, align 4
  %or100 = or i32 %and99, %83
  store i32 %or100, ptr %mra, align 4
  %tdm_slots101 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 12
  %84 = ptrtoint ptr %tdm_slots101 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tdm_slots101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool102.not = icmp eq i32 %85, 0
  br i1 %tobool102.not, label %if.then98.if.end118_crit_edge, label %if.then103

if.then98.if.end118_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.then103:                                       ; preds = %if.then98
  %rem = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool104.not = icmp eq i32 %rem, 0
  %mul105 = shl i32 %7, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul105, i32 %85)
  %cmp107.not = icmp ugt i32 %mul105, %85
  %or.cond = select i1 %tobool104.not, i1 true, i1 %cmp107.not
  br i1 %or.cond, label %if.then103.if.end116_crit_edge, label %if.then109

if.then103.if.end116_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.then109:                                       ; preds = %if.then103
  br i1 %cmp, label %if.then111, label %if.else113

if.then111:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #10
  %or112 = or i32 %or100, 1024
  %86 = ptrtoint ptr %mra to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %or112, ptr %mra, align 4
  br label %if.end116

if.else113:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #10
  %or114 = or i32 %or100, 256
  %87 = ptrtoint ptr %mra to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or114, ptr %mra, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.else113, %if.then111, %if.then103.if.end116_crit_edge
  %88 = ptrtoint ptr %tdm_slots101 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tdm_slots101, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.end116, %if.then98.if.end118_crit_edge
  %channels.0 = phi i32 [ %89, %if.end116 ], [ %7, %if.then98.if.end118_crit_edge ]
  %sub = shl i32 %channels.0, 13
  %shl119 = add i32 %sub, 57344
  %and120 = and i32 %shl119, 57344
  %90 = ptrtoint ptr %mra to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mra, align 4
  %or121 = or i32 %and120, %91
  store i32 %or121, ptr %mra, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool122.not = icmp eq i32 %9, 0
  %mul124 = shl i32 %channels.0, 5
  %spec.select = select i1 %tobool122.not, i32 %mul124, i32 %9
  br label %if.end127

if.end127:                                        ; preds = %if.end118, %if.else94.if.end127_crit_edge, %params_physical_width.exit, %sw.epilog88.if.end127_crit_edge
  %mrb.2 = phi i32 [ %or72, %sw.epilog88.if.end127_crit_edge ], [ %or72, %params_physical_width.exit ], [ %mrb.1, %if.else94.if.end127_crit_edge ], [ %mrb.1, %if.end118 ]
  %channels.1 = phi i32 [ %7, %sw.epilog88.if.end127_crit_edge ], [ %7, %params_physical_width.exit ], [ %7, %if.else94.if.end127_crit_edge ], [ %channels.0, %if.end118 ]
  %frame_length.0 = phi i32 [ %9, %sw.epilog88.if.end127_crit_edge ], [ %mul92, %params_physical_width.exit ], [ %9, %if.else94.if.end127_crit_edge ], [ %spec.select, %if.end118 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channels.1)
  %tobool.not.i = icmp eq i32 %channels.1, 0
  %92 = tail call i32 @llvm.ctlz.i32(i32 %channels.1, i1 true) #8, !range !215
  %sub.i = sub nuw nsw i32 32, %92
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %sub129 = shl nuw nsw i32 %cond.i, 8
  %shl130 = add nuw nsw i32 %sub129, 768
  %and131 = and i32 %shl130, 768
  %or132 = or i32 %and131, %mrb.2
  %sub136 = add nsw i32 %cond.i, -1
  %shl137 = shl nuw i32 1, %sub136
  %maxburst142 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 8, i32 2
  %maxburst = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 7, i32 2
  %maxburst142.sink = select i1 %cmp, ptr %maxburst, ptr %maxburst142
  %93 = ptrtoint ptr %maxburst142.sink to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %shl137, ptr %maxburst142.sink, align 4
  %arrayidx.i.i355 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %94 = ptrtoint ptr %arrayidx.i.i355 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx.i.i355, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i.i356 = icmp eq i32 %95, 0
  br i1 %tobool.not.i.i356, label %for.inc.i.i363, label %if.end127.params_format.exit365_crit_edge

if.end127.params_format.exit365_crit_edge:        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit365

for.inc.i.i363:                                   ; preds = %if.end127
  %arrayidx.1.i.i361 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %96 = ptrtoint ptr %arrayidx.1.i.i361 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.1.i.i361, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.1.i.i362 = icmp eq i32 %97, 0
  br i1 %tobool.not.1.i.i362, label %for.inc.i.i363.sw.bb145_crit_edge, label %for.inc.i.i363.params_format.exit365_crit_edge

for.inc.i.i363.params_format.exit365_crit_edge:   ; preds = %for.inc.i.i363
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit365

for.inc.i.i363.sw.bb145_crit_edge:                ; preds = %for.inc.i.i363
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb145

params_format.exit365:                            ; preds = %for.inc.i.i363.params_format.exit365_crit_edge, %if.end127.params_format.exit365_crit_edge
  %i.09.lcssa.i.i357 = phi i32 [ 0, %if.end127.params_format.exit365_crit_edge ], [ 32, %for.inc.i.i363.params_format.exit365_crit_edge ]
  %.lcssa.i.i358 = phi i32 [ %95, %if.end127.params_format.exit365_crit_edge ], [ %97, %for.inc.i.i363.params_format.exit365_crit_edge ]
  %98 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i358, i1 true) #8, !range !215
  %add.i.i359 = or i32 %98, %i.09.lcssa.i.i357
  %99 = zext i32 %add.i.i359 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %add.i.i359, label %do.end162 [
    i32 0, label %params_format.exit365.sw.bb145_crit_edge
    i32 2, label %sw.bb147
    i32 40, label %sw.bb149
    i32 36, label %sw.bb151
    i32 32, label %sw.bb153
    i32 6, label %sw.bb155
    i32 10, label %params_format.exit365.sw.epilog164_crit_edge
  ]

params_format.exit365.sw.epilog164_crit_edge:     ; preds = %params_format.exit365
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog164

params_format.exit365.sw.bb145_crit_edge:         ; preds = %params_format.exit365
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb145

sw.bb145:                                         ; preds = %params_format.exit365.sw.bb145_crit_edge, %for.inc.i.i363.sw.bb145_crit_edge
  %100 = ptrtoint ptr %mra to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mra, align 4
  %or146 = or i32 %101, 12
  store i32 %or146, ptr %mra, align 4
  br label %sw.epilog164

sw.bb147:                                         ; preds = %params_format.exit365
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %mra to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mra, align 4
  %or148 = or i32 %103, 8
  store i32 %or148, ptr %mra, align 4
  br label %sw.epilog164

sw.bb149:                                         ; preds = %params_format.exit365
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %mra to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %mra, align 4
  %or150 = or i32 %105, -2147483642
  store i32 %or150, ptr %mra, align 4
  br label %sw.epilog164

sw.bb151:                                         ; preds = %params_format.exit365
  call void @__sanitizer_cov_trace_pc() #10
  %106 = ptrtoint ptr %mra to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %mra, align 4
  %or152 = or i32 %107, -2147483644
  store i32 %or152, ptr %mra, align 4
  br label %sw.epilog164

sw.bb153:                                         ; preds = %params_format.exit365
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %mra to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mra, align 4
  %or154 = or i32 %109, -2147483646
  store i32 %or154, ptr %mra, align 4
  br label %sw.epilog164

sw.bb155:                                         ; preds = %params_format.exit365
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %mra to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %mra, align 4
  %or156 = or i32 %111, 2
  store i32 %or156, ptr %mra, align 4
  br label %sw.epilog164

do.end162:                                        ; preds = %params_format.exit365
  call void @__sanitizer_cov_trace_pc() #10
  %dev163 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 2
  %112 = ptrtoint ptr %dev163 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev163, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.76) #11
  br label %cleanup244

sw.epilog164:                                     ; preds = %sw.bb155, %sw.bb153, %sw.bb151, %sw.bb149, %sw.bb147, %sw.bb145, %params_format.exit365.sw.epilog164_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set_divs.1)
  %tobool165.not = icmp eq i32 %set_divs.1, 0
  br i1 %tobool165.not, label %sw.epilog164.if.end177_crit_edge, label %if.then166

sw.epilog164.if.end177_crit_edge:                 ; preds = %sw.epilog164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end177

if.then166:                                       ; preds = %sw.epilog164
  %arrayidx.i.i366 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %114 = ptrtoint ptr %arrayidx.i.i366 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.i.i366, align 4
  %mul168 = mul i32 %115, %frame_length.0
  %call169 = call fastcc i32 @mchp_i2s_mcc_config_divs(ptr noundef %4, i32 noundef %mul168, ptr noundef nonnull %mra, ptr noundef nonnull %rate)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.then166.if.end177_crit_edge, label %do.end174

if.then166.if.end177_crit_edge:                   ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end177

do.end174:                                        ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #10
  %dev175 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 2
  %116 = ptrtoint ptr %dev175 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev175, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.79, i32 noundef %call169) #11
  br label %cleanup244

if.end177:                                        ; preds = %if.then166.if.end177_crit_edge, %sw.epilog164.if.end177_crit_edge
  %soc178 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 6
  %118 = ptrtoint ptr %soc178 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %soc178, align 4
  %has_fifo = getelementptr inbounds %struct.mchp_i2s_mcc_soc_data, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %has_fifo to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %has_fifo, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool179.not = icmp eq i8 %121, 0
  %or181 = or i32 %or132, 16
  %spec.select333 = select i1 %tobool179.not, i32 %or132, i32 %or181
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sr.i) #8
  %122 = ptrtoint ptr %sr.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -1, ptr %sr.i, align 4, !annotation !212
  %regmap.i = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 3
  %123 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %124, i32 noundef 12, ptr noundef nonnull %sr.i) #8
  %125 = ptrtoint ptr %sr.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %sr.i, align 4
  %and.i = and i32 %126, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sr.i) #8
  br i1 %tobool.i.not, label %if.end196, label %if.then185

if.then185:                                       ; preds = %if.end177
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mra_cur) #8
  %127 = ptrtoint ptr %mra_cur to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 -1, ptr %mra_cur, align 4, !annotation !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mrb_cur) #8
  %128 = ptrtoint ptr %mrb_cur to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 -1, ptr %mrb_cur, align 4, !annotation !212
  %129 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regmap.i, align 4
  %call186 = call i32 @regmap_read(ptr noundef %130, i32 noundef 4, ptr noundef nonnull %mra_cur) #8
  %131 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regmap.i, align 4
  %call188 = call i32 @regmap_read(ptr noundef %132, i32 noundef 8, ptr noundef nonnull %mrb_cur) #8
  %133 = ptrtoint ptr %mra to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %mra, align 4
  %135 = ptrtoint ptr %mra_cur to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %mra_cur, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %136)
  %cmp189.not = icmp eq i32 %134, %136
  br i1 %cmp189.not, label %lor.lhs.false, label %if.then185.cleanup_crit_edge

if.then185.cleanup_crit_edge:                     ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #10
  %137 = ptrtoint ptr %mrb_cur to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %mrb_cur, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select333, i32 %138)
  %cmp191.not = icmp eq i32 %spec.select333, %138
  %spec.select334 = select i1 %cmp191.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.then185.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then185.cleanup_crit_edge ], [ %spec.select334, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mrb_cur) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mra_cur) #8
  br label %cleanup244

if.end196:                                        ; preds = %if.end177
  %139 = ptrtoint ptr %mra to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %mra, align 4
  %and197 = and i32 %140, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197)
  %tobool198.not = icmp eq i32 %and197, 0
  br i1 %tobool198.not, label %if.end196.if.end222_crit_edge, label %land.lhs.true199

if.end196.if.end222_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end222

land.lhs.true199:                                 ; preds = %if.end196
  %gclk_use = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 15
  %141 = ptrtoint ptr %gclk_use to i32
  call void @__asan_load1_noabort(i32 %141)
  %bf.load = load i8, ptr %gclk_use, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool200.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool200.not, label %if.then201, label %land.lhs.true199.if.end222_crit_edge

land.lhs.true199.if.end222_crit_edge:             ; preds = %land.lhs.true199
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end222

if.then201:                                       ; preds = %land.lhs.true199
  %gclk = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 5
  %142 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %gclk, align 4
  %144 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %rate, align 4
  %call202 = call i32 @clk_set_rate(ptr noundef %143, i32 noundef %145) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %if.end209, label %do.end207

do.end207:                                        ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #10
  %dev208 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 2
  %146 = ptrtoint ptr %dev208 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev208, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str.82, i32 noundef %145, i32 noundef %call202) #11
  br label %cleanup244

if.end209:                                        ; preds = %if.then201
  %148 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %gclk, align 4
  %call211 = call i32 @clk_prepare(ptr noundef %149) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %cmp212 = icmp slt i32 %call211, 0
  br i1 %cmp212, label %do.end217, label %if.end219

do.end217:                                        ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #10
  %dev218 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 2
  %150 = ptrtoint ptr %dev218 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev218, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.85, i32 noundef %call211) #11
  br label %cleanup244

if.end219:                                        ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #10
  %152 = ptrtoint ptr %gclk_use to i32
  call void @__asan_load1_noabort(i32 %152)
  %bf.load221 = load i8, ptr %gclk_use, align 1
  %bf.set = or i8 %bf.load221, -128
  store i8 %bf.set, ptr %gclk_use, align 1
  br label %if.end222

if.end222:                                        ; preds = %if.end219, %land.lhs.true199.if.end222_crit_edge, %if.end196.if.end222_crit_edge
  %channels223 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 13
  %153 = ptrtoint ptr %channels223 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %channels.1, ptr %channels223, align 4
  %154 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regmap.i, align 4
  %156 = ptrtoint ptr %mra to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %mra, align 4
  %call225 = call i32 @regmap_write(ptr noundef %155, i32 noundef 4, i32 noundef %157) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225)
  %cmp226 = icmp slt i32 %call225, 0
  br i1 %cmp226, label %if.then228, label %if.end241

if.then228:                                       ; preds = %if.end222
  %gclk_use229 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 15
  %158 = ptrtoint ptr %gclk_use229 to i32
  call void @__asan_load1_noabort(i32 %158)
  %bf.load230 = load i8, ptr %gclk_use229, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load230)
  %tobool233.not = icmp sgt i8 %bf.load230, -1
  br i1 %tobool233.not, label %if.then228.cleanup244_crit_edge, label %if.then234

if.then228.cleanup244_crit_edge:                  ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup244

if.then234:                                       ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #10
  %gclk235 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %4, i32 0, i32 5
  %159 = ptrtoint ptr %gclk235 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %gclk235, align 4
  call void @clk_unprepare(ptr noundef %160) #8
  %161 = ptrtoint ptr %gclk_use229 to i32
  call void @__asan_load1_noabort(i32 %161)
  %bf.load237 = load i8, ptr %gclk_use229, align 1
  %bf.clear238 = and i8 %bf.load237, 127
  store i8 %bf.clear238, ptr %gclk_use229, align 1
  br label %cleanup244

if.end241:                                        ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #10
  %162 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regmap.i, align 4
  %call243 = call i32 @regmap_write(ptr noundef %163, i32 noundef 8, i32 noundef %spec.select333) #8
  br label %cleanup244

cleanup244:                                       ; preds = %if.end241, %if.then234, %if.then228.cleanup244_crit_edge, %do.end217, %do.end207, %cleanup, %do.end174, %do.end162, %do.end86, %do.end69, %do.end58, %do.end33, %do.end25, %do.end16
  %retval.1 = phi i32 [ -22, %do.end33 ], [ -22, %do.end58 ], [ -22, %do.end69 ], [ -22, %do.end86 ], [ -22, %do.end162 ], [ %call169, %do.end174 ], [ %retval.0, %cleanup ], [ %call243, %if.end241 ], [ %call202, %do.end207 ], [ %call211, %do.end217 ], [ -22, %do.end25 ], [ -22, %do.end16 ], [ %call225, %if.then234 ], [ %call225, %if.then228.cleanup244_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mra) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #8
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_i2s_mcc_hw_free(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %sr.i = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry101 = alloca %struct.wait_queue_entry, align 4
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
  br i1 %cmp, label %if.then, label %if.else71

if.then:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 742) #8
  %tx_rdy = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %tx_rdy to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %tx_rdy, align 1
  %7 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.then13, label %if.then.if.end176_crit_edge

if.then.if.end176_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end176

if.then13:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call16293 = call i32 @prepare_to_wait_event(ptr noundef %3, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %9 = ptrtoint ptr %tx_rdy to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load19294 = load i8, ptr %tx_rdy, align 1
  %10 = and i8 %bf.load19294, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool23.not295.not = icmp eq i8 %10, 0
  br i1 %tobool23.not295.not, label %if.then13.if.end39_crit_edge, label %if.end46.thread

if.then13.if.end39_crit_edge:                     ; preds = %if.then13
  br label %if.end39

if.end46.thread:                                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %3, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end176

if.end39:                                         ; preds = %cleanup.if.end39_crit_edge, %if.then13.if.end39_crit_edge
  %__ret14.1298 = phi i32 [ %__ret14.1, %cleanup.if.end39_crit_edge ], [ 50, %if.then13.if.end39_crit_edge ]
  %call16297 = phi i32 [ %call16, %cleanup.if.end39_crit_edge ], [ %call16293, %if.then13.if.end39_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16297)
  %tobool40.not = icmp eq i32 %call16297, 0
  br i1 %tobool40.not, label %cleanup, label %if.end46.thread268

if.end46.thread268:                               ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end176

cleanup:                                          ; preds = %if.end39
  %call43 = call i32 @schedule_timeout(i32 noundef %__ret14.1298) #8
  %call16 = call i32 @prepare_to_wait_event(ptr noundef %3, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %11 = ptrtoint ptr %tx_rdy to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load19 = load i8, ptr %tx_rdy, align 1
  %12 = and i8 %bf.load19, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool23.not = icmp eq i8 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool27.not = icmp eq i32 %call43, 0
  %spec.store.select208 = select i1 %tobool27.not, i32 1, i32 %call43
  %__ret14.1 = select i1 %tobool23.not, i32 %call43, i32 %spec.store.select208
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1)
  %tobool33.not = icmp eq i32 %__ret14.1, 0
  %not.tobool23.not = xor i1 %tobool23.not, true
  %13 = select i1 %not.tobool23.not, i1 true, i1 %tobool33.not
  br i1 %13, label %if.end46, label %cleanup.if.end39_crit_edge

cleanup.if.end39_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.end46:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1)
  %phi.cmp302 = icmp eq i32 %__ret14.1, 0
  call void @finish_wait(ptr noundef %3, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br i1 %phi.cmp302, label %do.body50, label %if.end46.if.end176_crit_edge

if.end46.if.end176_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end176

do.body50:                                        ; preds = %if.end46
  %.b258 = load i1, ptr @mchp_i2s_mcc_hw_free.__print_once, align 1
  br i1 %.b258, label %do.body50.do.end59_crit_edge, label %if.then52

do.body50.do.end59_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59

if.then52:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @mchp_i2s_mcc_hw_free.__print_once, align 1
  %dev56 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev56, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.98) #11
  br label %do.end59

do.end59:                                         ; preds = %if.then52, %do.body50.do.end59_crit_edge
  %soc = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %soc, align 4
  %has_fifo = getelementptr inbounds %struct.mchp_i2s_mcc_soc_data, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %has_fifo to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %has_fifo, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool60.not = icmp eq i8 %19, 0
  %regmap63 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %regmap63 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap63, align 4
  br i1 %tobool60.not, label %if.else, label %if.then61

if.then61:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #10
  %call62 = call i32 @regmap_write(ptr noundef %21, i32 noundef 36, i32 noundef 256) #8
  br label %if.end66

if.else:                                          ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #10
  %channels = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 13
  %22 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channels, align 4
  %sub64 = sub i32 32, %23
  %shr = lshr i32 -1, %sub64
  %call65 = call i32 @regmap_write(ptr noundef %21, i32 noundef 20, i32 noundef %shr) #8
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.then61
  %24 = ptrtoint ptr %tx_rdy to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load68 = load i8, ptr %tx_rdy, align 1
  %bf.set = or i8 %bf.load68, 32
  store i8 %bf.set, ptr %tx_rdy, align 1
  br label %if.end176

if.else71:                                        ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 758) #8
  %rx_rdy = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 15
  %25 = ptrtoint ptr %rx_rdy to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load81 = load i8, ptr %rx_rdy, align 1
  %26 = and i8 %bf.load81, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool85.not = icmp eq i8 %26, 0
  br i1 %tobool85.not, label %if.then100, label %if.else71.if.end176_crit_edge

if.else71.if.end176_crit_edge:                    ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end176

if.then100:                                       ; preds = %if.else71
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry101) #8
  %27 = call ptr @memset(ptr %__wq_entry101, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry101, i32 noundef 0) #8
  %wq_rxrdy = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 1
  %call106286 = call i32 @prepare_to_wait_event(ptr noundef %wq_rxrdy, ptr noundef nonnull %__wq_entry101, i32 noundef 1) #8
  %28 = ptrtoint ptr %rx_rdy to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load109287 = load i8, ptr %rx_rdy, align 1
  %29 = and i8 %bf.load109287, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool113.not288.not = icmp eq i8 %29, 0
  br i1 %tobool113.not288.not, label %if.then100.if.end129_crit_edge, label %if.end141.thread

if.then100.if.end129_crit_edge:                   ; preds = %if.then100
  br label %if.end129

if.end141.thread:                                 ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %wq_rxrdy, ptr noundef nonnull %__wq_entry101) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry101) #8
  br label %if.end176

if.end129:                                        ; preds = %cleanup134.if.end129_crit_edge, %if.then100.if.end129_crit_edge
  %__ret102.1291 = phi i32 [ %__ret102.1, %cleanup134.if.end129_crit_edge ], [ 50, %if.then100.if.end129_crit_edge ]
  %call106290 = phi i32 [ %call106, %cleanup134.if.end129_crit_edge ], [ %call106286, %if.then100.if.end129_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106290)
  %tobool130.not = icmp eq i32 %call106290, 0
  br i1 %tobool130.not, label %cleanup134, label %if.end141.thread280

if.end141.thread280:                              ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry101) #8
  br label %if.end176

cleanup134:                                       ; preds = %if.end129
  %call133 = call i32 @schedule_timeout(i32 noundef %__ret102.1291) #8
  %call106 = call i32 @prepare_to_wait_event(ptr noundef %wq_rxrdy, ptr noundef nonnull %__wq_entry101, i32 noundef 1) #8
  %30 = ptrtoint ptr %rx_rdy to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load109 = load i8, ptr %rx_rdy, align 1
  %31 = and i8 %bf.load109, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool113.not = icmp eq i8 %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool117.not = icmp eq i32 %call133, 0
  %spec.store.select210 = select i1 %tobool117.not, i32 1, i32 %call133
  %__ret102.1 = select i1 %tobool113.not, i32 %call133, i32 %spec.store.select210
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret102.1)
  %tobool123.not = icmp eq i32 %__ret102.1, 0
  %not.tobool113.not = xor i1 %tobool113.not, true
  %32 = select i1 %not.tobool113.not, i1 true, i1 %tobool123.not
  br i1 %32, label %if.end141, label %cleanup134.if.end129_crit_edge

cleanup134.if.end129_crit_edge:                   ; preds = %cleanup134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

if.end141:                                        ; preds = %cleanup134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret102.1)
  %phi.cmp = icmp eq i32 %__ret102.1, 0
  call void @finish_wait(ptr noundef %wq_rxrdy, ptr noundef nonnull %__wq_entry101) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry101) #8
  br i1 %phi.cmp, label %do.body145, label %if.end141.if.end176_crit_edge

if.end141.if.end176_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end176

do.body145:                                       ; preds = %if.end141
  %.b256257 = load i1, ptr @mchp_i2s_mcc_hw_free.__print_once.100, align 1
  br i1 %.b256257, label %do.body145.do.end154_crit_edge, label %if.then147

do.body145.do.end154_crit_edge:                   ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end154

if.then147:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @mchp_i2s_mcc_hw_free.__print_once.100, align 1
  %dev151 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 2
  %33 = ptrtoint ptr %dev151 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev151, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.102) #11
  br label %do.end154

do.end154:                                        ; preds = %if.then147, %do.body145.do.end154_crit_edge
  %soc155 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 6
  %35 = ptrtoint ptr %soc155 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %soc155, align 4
  %has_fifo156 = getelementptr inbounds %struct.mchp_i2s_mcc_soc_data, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %has_fifo156 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %has_fifo156, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool157.not = icmp eq i8 %38, 0
  %regmap162 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 3
  %39 = ptrtoint ptr %regmap162 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap162, align 4
  br i1 %tobool157.not, label %if.else161, label %if.then158

if.then158:                                       ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #10
  %call160 = call i32 @regmap_write(ptr noundef %40, i32 noundef 36, i32 noundef 4096) #8
  br label %if.end170

if.else161:                                       ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #10
  %channels163 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 13
  %41 = ptrtoint ptr %channels163 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %channels163, align 4
  %sub165 = sub i32 16, %42
  %shr166 = lshr i32 -1, %sub165
  %and167 = and i32 %shr166, -65536
  %call169 = call i32 @regmap_write(ptr noundef %40, i32 noundef 20, i32 noundef %and167) #8
  br label %if.end170

if.end170:                                        ; preds = %if.else161, %if.then158
  %43 = ptrtoint ptr %rx_rdy to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load172 = load i8, ptr %rx_rdy, align 1
  %bf.set174 = or i8 %bf.load172, 16
  store i8 %bf.set174, ptr %rx_rdy, align 1
  br label %if.end176

if.end176:                                        ; preds = %if.end170, %if.end141.if.end176_crit_edge, %if.end141.thread280, %if.end141.thread, %if.else71.if.end176_crit_edge, %if.end66, %if.end46.if.end176_crit_edge, %if.end46.thread268, %if.end46.thread, %if.then.if.end176_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sr.i) #8
  %44 = ptrtoint ptr %sr.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %sr.i, align 4, !annotation !212
  %regmap.i = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 3
  %45 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %46, i32 noundef 12, ptr noundef nonnull %sr.i) #8
  %47 = ptrtoint ptr %sr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sr.i, align 4
  %and.i = and i32 %48, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sr.i) #8
  br i1 %tobool.i.not, label %if.then179, label %if.end176.if.end204_crit_edge

if.end176.if.end204_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end204

if.then179:                                       ; preds = %if.end176
  %49 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap.i, align 4
  %call181 = call i32 @regmap_write(ptr noundef %50, i32 noundef 0, i32 noundef 8) #8
  %gclk_running = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 15
  %51 = ptrtoint ptr %gclk_running to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load182 = load i8, ptr %gclk_running, align 1
  %52 = and i8 %bf.load182, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool186.not = icmp eq i8 %52, 0
  br i1 %tobool186.not, label %if.then179.if.end192_crit_edge, label %if.then187

if.then179.if.end192_crit_edge:                   ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end192

if.then187:                                       ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #10
  %gclk = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 5
  %53 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %gclk, align 4
  call void @clk_disable(ptr noundef %54) #8
  %55 = ptrtoint ptr %gclk_running to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load189 = load i8, ptr %gclk_running, align 1
  %bf.clear190 = and i8 %bf.load189, -65
  store i8 %bf.clear190, ptr %gclk_running, align 1
  br label %if.end192

if.end192:                                        ; preds = %if.then187, %if.then179.if.end192_crit_edge
  %bf.load193 = phi i8 [ %bf.clear190, %if.then187 ], [ %bf.load182, %if.then179.if.end192_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load193)
  %tobool196.not = icmp sgt i8 %bf.load193, -1
  br i1 %tobool196.not, label %if.end192.if.end204_crit_edge, label %if.then197

if.end192.if.end204_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end204

if.then197:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #10
  %gclk198 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 5
  %56 = ptrtoint ptr %gclk198 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %gclk198, align 4
  call void @clk_unprepare(ptr noundef %57) #8
  %58 = ptrtoint ptr %gclk_running to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load200 = load i8, ptr %gclk_running, align 1
  %bf.clear201 = and i8 %bf.load200, 127
  store i8 %bf.clear201, ptr %gclk_running, align 1
  br label %if.end204

if.end204:                                        ; preds = %if.then197, %if.end192.if.end204_crit_edge, %if.end176.if.end204_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp_i2s_mcc_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sr) #8
  %6 = ptrtoint ptr %sr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %sr, align 4, !annotation !212
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 6, label %entry.sw.epilog_crit_edge110
    i32 4, label %entry.sw.epilog_crit_edge111
    i32 0, label %entry.sw.bb1_crit_edge
    i32 5, label %entry.sw.bb1_crit_edge112
    i32 3, label %entry.sw.bb1_crit_edge113
  ]

entry.sw.bb1_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.epilog_crit_edge111:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge110:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge112, %entry.sw.bb1_crit_edge113
  %regmap = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %9, i32 noundef 12, ptr noundef nonnull %sr) #8
  %10 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sr, align 4
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true14.critedge

land.lhs.true:                                    ; preds = %sw.bb1
  %and = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end63_crit_edge, label %if.then5

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then5:                                         ; preds = %land.lhs.true
  %tx_rdy = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 15
  %12 = ptrtoint ptr %tx_rdy to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %tx_rdy, align 1
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %tx_rdy, align 1
  %soc = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %soc, align 4
  %has_fifo = getelementptr inbounds %struct.mchp_i2s_mcc_soc_data, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %has_fifo to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %has_fifo, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool6.not = icmp eq i8 %16, 0
  br i1 %tobool6.not, label %if.else8, label %if.then5.if.end63_crit_edge

if.then5.if.end63_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.else8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %channels = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 13
  %17 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channels, align 4
  %sub9 = sub i32 32, %18
  %shr = lshr i32 -1, %sub9
  br label %if.end63

land.lhs.true14.critedge:                         ; preds = %sw.bb1
  %and15 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %land.lhs.true14.critedge.if.end63_crit_edge, label %if.then17

land.lhs.true14.critedge.if.end63_crit_edge:      ; preds = %land.lhs.true14.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then17:                                        ; preds = %land.lhs.true14.critedge
  %rx_rdy = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 15
  %19 = ptrtoint ptr %rx_rdy to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load18 = load i8, ptr %rx_rdy, align 1
  %bf.clear19 = and i8 %bf.load18, -17
  store i8 %bf.clear19, ptr %rx_rdy, align 1
  %soc21 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 6
  %20 = ptrtoint ptr %soc21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %soc21, align 4
  %has_fifo22 = getelementptr inbounds %struct.mchp_i2s_mcc_soc_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %has_fifo22 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_fifo22, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool23.not = icmp eq i8 %23, 0
  br i1 %tobool23.not, label %if.else25, label %if.then17.if.end63_crit_edge

if.then17.if.end63_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.else25:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %channels26 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 13
  %24 = ptrtoint ptr %channels26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channels26, align 4
  %sub28 = sub i32 16, %25
  %shr29 = lshr i32 -1, %sub28
  %and30 = and i32 %shr29, -65536
  br label %if.end63

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge110, %entry.sw.epilog_crit_edge111
  %. = select i1 %cmp, i32 20, i32 5
  %gclk_use = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 15
  %26 = ptrtoint ptr %gclk_use to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load38 = load i8, ptr %gclk_use, align 1
  %27 = and i8 %bf.load38, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %27)
  %28 = icmp eq i8 %27, -128
  br i1 %28, label %if.then46, label %sw.epilog.if.end63_crit_edge

sw.epilog.if.end63_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then46:                                        ; preds = %sw.epilog
  %gclk = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 5
  %29 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gclk, align 4
  %call47 = tail call i32 @clk_enable(ptr noundef %30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.else57, label %do.body

do.body:                                          ; preds = %if.then46
  %.b101 = load i1, ptr @mchp_i2s_mcc_trigger.__print_once, align 1
  br i1 %.b101, label %do.body.if.end63_crit_edge, label %if.then51

do.body.if.end63_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then51:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @mchp_i2s_mcc_trigger.__print_once, align 1
  %dev53 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 2
  %31 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev53, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.104, i32 noundef %call47) #11
  br label %if.end63

if.else57:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %gclk_use to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load59 = load i8, ptr %gclk_use, align 1
  %bf.set61 = or i8 %bf.load59, 64
  store i8 %bf.set61, ptr %gclk_use, align 1
  br label %if.end63

if.end63:                                         ; preds = %if.else57, %if.then51, %do.body.if.end63_crit_edge, %sw.epilog.if.end63_crit_edge, %if.else25, %if.then17.if.end63_crit_edge, %land.lhs.true14.critedge.if.end63_crit_edge, %if.else8, %if.then5.if.end63_crit_edge, %land.lhs.true.if.end63_crit_edge
  %ierb.0109 = phi i32 [ 0, %if.else57 ], [ 0, %if.then51 ], [ 0, %do.body.if.end63_crit_edge ], [ 0, %sw.epilog.if.end63_crit_edge ], [ 0, %land.lhs.true.if.end63_crit_edge ], [ 4096, %if.then17.if.end63_crit_edge ], [ 256, %if.then5.if.end63_crit_edge ], [ 0, %land.lhs.true14.critedge.if.end63_crit_edge ], [ 0, %if.else25 ], [ 0, %if.else8 ]
  %iera.0108 = phi i32 [ 0, %if.else57 ], [ 0, %if.then51 ], [ 0, %do.body.if.end63_crit_edge ], [ 0, %sw.epilog.if.end63_crit_edge ], [ 0, %land.lhs.true.if.end63_crit_edge ], [ 0, %if.then17.if.end63_crit_edge ], [ 0, %if.then5.if.end63_crit_edge ], [ 0, %land.lhs.true14.critedge.if.end63_crit_edge ], [ %and30, %if.else25 ], [ %shr, %if.else8 ]
  %cr.0107 = phi i32 [ %., %if.else57 ], [ %., %if.then51 ], [ %., %do.body.if.end63_crit_edge ], [ %., %sw.epilog.if.end63_crit_edge ], [ 0, %land.lhs.true.if.end63_crit_edge ], [ 2, %if.then17.if.end63_crit_edge ], [ 32, %if.then5.if.end63_crit_edge ], [ 0, %land.lhs.true14.critedge.if.end63_crit_edge ], [ 2, %if.else25 ], [ 32, %if.else8 ]
  %soc64 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 6
  %34 = ptrtoint ptr %soc64 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %soc64, align 4
  %has_fifo65 = getelementptr inbounds %struct.mchp_i2s_mcc_soc_data, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %has_fifo65 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %has_fifo65, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool66.not = icmp eq i8 %37, 0
  %regmap71 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 3
  %38 = ptrtoint ptr %regmap71 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap71, align 4
  br i1 %tobool66.not, label %if.else70, label %if.then67

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %call69 = call i32 @regmap_write(ptr noundef %39, i32 noundef 32, i32 noundef %ierb.0109) #8
  br label %if.end73

if.else70:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %call72 = call i32 @regmap_write(ptr noundef %39, i32 noundef 16, i32 noundef %iera.0108) #8
  br label %if.end73

if.end73:                                         ; preds = %if.else70, %if.then67
  %regmap74 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %3, i32 0, i32 3
  %40 = ptrtoint ptr %regmap74 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap74, align 4
  %call75 = call i32 @regmap_write(ptr noundef %41, i32 noundef 0, i32 noundef %cr.0107) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end73 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mchp_i2s_mcc_config_divs(ptr nocapture noundef readonly %dev, i32 noundef %bclk, ptr nocapture noundef %mra, ptr nocapture noundef %best_rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sysclk1 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %sysclk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sysclk1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %bclk. = select i1 %tobool.not, i32 %bclk, i32 %1
  %call = tail call i32 @lcm(i32 noundef %bclk., i32 noundef %bclk) #12
  %div = udiv i32 %call, %bclk.
  %rem = and i32 %div, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp ne i32 %rem, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div)
  %cmp4 = icmp ugt i32 %div, 2
  %or.cond = and i1 %cmp4, %cmp.not
  br i1 %or.cond, label %entry.if.then11_crit_edge, label %lor.lhs.false

entry.if.then11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

lor.lhs.false:                                    ; preds = %entry
  %div5 = udiv i32 %call, %bclk
  %rem6 = and i32 %div5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem6)
  %cmp7.not = icmp ne i32 %rem6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div5)
  %cmp10 = icmp ugt i32 %div5, 2
  %or.cond168 = and i1 %cmp10, %cmp7.not
  br i1 %or.cond168, label %lor.lhs.false.if.then11_crit_edge, label %lor.lhs.false.if.end12_crit_edge

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %entry.if.then11_crit_edge
  %mul = shl i32 %call, 1
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %lor.lhs.false.if.end12_crit_edge
  %lcm_rate.0 = phi i32 [ %mul, %if.then11 ], [ %call, %lor.lhs.false.if.end12_crit_edge ]
  %mul15 = shl i32 %bclk., 1
  %mul19 = shl i32 %bclk, 1
  %gclk = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %dev, i32 0, i32 5
  %dev25 = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %dev, i32 0, i32 2
  %pclk = getelementptr inbounds %struct.mchp_i2s_mcc_dev, ptr %dev, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end12
  %best_diff_rate.0 = phi i32 [ -1, %if.end12 ], [ %best_diff_rate.2204, %for.inc ]
  %best_clk.0 = phi ptr [ null, %if.end12 ], [ %best_clk.2205, %for.inc ]
  %clk_rate.0 = phi i32 [ %lcm_rate.0, %if.end12 ], [ %add, %for.inc ]
  call void @__sanitizer_cov_trace_cmp4(i32 %clk_rate.0, i32 %bclk.)
  %cmp13 = icmp eq i32 %clk_rate.0, %bclk.
  br i1 %cmp13, label %for.cond.land.rhs_crit_edge, label %lor.lhs.false14

for.cond.land.rhs_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

lor.lhs.false14:                                  ; preds = %for.cond
  %div16 = udiv i32 %clk_rate.0, %mul15
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %div16)
  %cmp17 = icmp ult i32 %div16, 64
  br i1 %cmp17, label %lor.lhs.false14.land.rhs_crit_edge, label %lor.lhs.false14.for.end_crit_edge

lor.lhs.false14.for.end_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.lhs.false14.land.rhs_crit_edge:               ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false14.land.rhs_crit_edge, %for.cond.land.rhs_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %clk_rate.0, i32 %bclk)
  %cmp18 = icmp eq i32 %clk_rate.0, %bclk
  br i1 %cmp18, label %land.rhs.for.body_crit_edge, label %lor.rhs

land.rhs.for.body_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

lor.rhs:                                          ; preds = %land.rhs
  %div20 = udiv i32 %clk_rate.0, %mul19
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %div20)
  %cmp21 = icmp ult i32 %div20, 64
  br i1 %cmp21, label %lor.rhs.for.body_crit_edge, label %lor.rhs.for.end_crit_edge

lor.rhs.for.end_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.rhs.for.body_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %lor.rhs.for.body_crit_edge, %land.rhs.for.body_crit_edge
  %2 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gclk, align 4
  %call.i = tail call i32 @clk_round_rate(ptr noundef %3, i32 noundef %clk_rate.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end, label %if.end.i

if.end.i:                                         ; preds = %for.body
  %sub.i = sub i32 %clk_rate.0, %call.i
  %4 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %best_diff_rate.0)
  %cmp3.i = icmp ult i32 %4, %best_diff_rate.0
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.if.else26_crit_edge

if.end.i.if.else26_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else26

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %best_rate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %clk_rate.0, ptr %best_rate, align 4
  br label %if.else26

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.87, i32 noundef %clk_rate.0, i32 noundef %call.i) #11
  br label %if.end40

if.else26:                                        ; preds = %if.then4.i, %if.end.i.if.else26_crit_edge
  %best_diff_rate.1.ph = phi i32 [ %best_diff_rate.0, %if.end.i.if.else26_crit_edge ], [ %4, %if.then4.i ]
  %best_clk.1.ph = phi ptr [ %best_clk.0, %if.end.i.if.else26_crit_edge ], [ %3, %if.then4.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_diff_rate.1.ph)
  %tobool27.not = icmp eq i32 %best_diff_rate.1.ph, 0
  br i1 %tobool27.not, label %do.body29, label %if.else26.if.end40_crit_edge

if.else26.if.end40_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

do.body29:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mchp_i2s_mcc_config_divs.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mchp_i2s_mcc_config_divs, %if.then34)) #8
          to label %for.end [label %if.then34], !srcloc !214

if.then34:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mchp_i2s_mcc_config_divs.__UNIQUE_ID_ddebug244, ptr noundef %9, ptr noundef nonnull @.str.89, i32 noundef %clk_rate.0) #8
  br label %for.end

if.end40:                                         ; preds = %if.else26.if.end40_crit_edge, %do.end
  %best_clk.1197 = phi ptr [ %best_clk.1.ph, %if.else26.if.end40_crit_edge ], [ %best_clk.0, %do.end ]
  %best_diff_rate.1195 = phi i32 [ %best_diff_rate.1.ph, %if.else26.if.end40_crit_edge ], [ %best_diff_rate.0, %do.end ]
  %10 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pclk, align 4
  %call.i176 = tail call i32 @clk_round_rate(ptr noundef %11, i32 noundef %clk_rate.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176)
  %cmp.i177 = icmp slt i32 %call.i176, 0
  br i1 %cmp.i177, label %do.end46, label %if.end.i180

if.end.i180:                                      ; preds = %if.end40
  %sub.i178 = sub i32 %clk_rate.0, %call.i176
  %12 = tail call i32 @llvm.abs.i32(i32 %sub.i178, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %best_diff_rate.1195)
  %cmp3.i179 = icmp ult i32 %12, %best_diff_rate.1195
  br i1 %cmp3.i179, label %if.then4.i181, label %if.end.i180.if.else48_crit_edge

if.end.i180.if.else48_crit_edge:                  ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else48

if.then4.i181:                                    ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %best_rate to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %clk_rate.0, ptr %best_rate, align 4
  br label %if.else48

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.91, i32 noundef %clk_rate.0, i32 noundef %call.i176) #11
  br label %for.inc

if.else48:                                        ; preds = %if.then4.i181, %if.end.i180.if.else48_crit_edge
  %best_diff_rate.2.ph = phi i32 [ %best_diff_rate.1195, %if.end.i180.if.else48_crit_edge ], [ %12, %if.then4.i181 ]
  %best_clk.2.ph = phi ptr [ %best_clk.1197, %if.end.i180.if.else48_crit_edge ], [ %11, %if.then4.i181 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_diff_rate.2.ph)
  %tobool49.not = icmp eq i32 %best_diff_rate.2.ph, 0
  br i1 %tobool49.not, label %do.body51, label %if.else48.for.inc_crit_edge

if.else48.for.inc_crit_edge:                      ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body51:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mchp_i2s_mcc_config_divs.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mchp_i2s_mcc_config_divs, %if.then63)) #8
          to label %for.end [label %if.then63], !srcloc !214

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mchp_i2s_mcc_config_divs.__UNIQUE_ID_ddebug245, ptr noundef %17, ptr noundef nonnull @.str.93, i32 noundef %clk_rate.0) #8
  br label %for.end

for.inc:                                          ; preds = %if.else48.for.inc_crit_edge, %do.end46
  %best_clk.2205 = phi ptr [ %best_clk.1197, %do.end46 ], [ %best_clk.2.ph, %if.else48.for.inc_crit_edge ]
  %best_diff_rate.2204 = phi i32 [ %best_diff_rate.1195, %do.end46 ], [ %best_diff_rate.2.ph, %if.else48.for.inc_crit_edge ]
  %add = add i32 %clk_rate.0, %lcm_rate.0
  br label %for.cond

for.end:                                          ; preds = %if.then63, %do.body51, %if.then34, %do.body29, %lor.rhs.for.end_crit_edge, %lor.lhs.false14.for.end_crit_edge
  %best_diff_rate.3 = phi i32 [ 0, %if.then34 ], [ 0, %if.then63 ], [ 0, %do.body29 ], [ 0, %do.body51 ], [ %best_diff_rate.0, %lor.rhs.for.end_crit_edge ], [ %best_diff_rate.0, %lor.lhs.false14.for.end_crit_edge ]
  %best_clk.3 = phi ptr [ %best_clk.1.ph, %if.then34 ], [ %best_clk.2.ph, %if.then63 ], [ %best_clk.1.ph, %do.body29 ], [ %best_clk.2.ph, %do.body51 ], [ %best_clk.0, %lor.rhs.for.end_crit_edge ], [ %best_clk.0, %lor.lhs.false14.for.end_crit_edge ]
  %tobool70.not = icmp eq ptr %best_clk.3, null
  br i1 %tobool70.not, label %do.end74, label %do.body77

do.end74:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.95) #11
  br label %cleanup

do.body77:                                        ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mchp_i2s_mcc_config_divs.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mchp_i2s_mcc_config_divs, %if.then89)) #8
          to label %do.end95 [label %if.then89], !srcloc !214

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev25, align 4
  %22 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pclk, align 4
  %cmp92 = icmp eq ptr %best_clk.3, %23
  %cond = select i1 %cmp92, ptr @.str.2, ptr @.str.8
  %24 = ptrtoint ptr %best_rate to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %best_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mchp_i2s_mcc_config_divs.__UNIQUE_ID_ddebug246, ptr noundef %21, ptr noundef nonnull @.str.97, ptr noundef nonnull %cond, i32 noundef %25, i32 noundef %best_diff_rate.3) #8
  br label %do.end95

do.end95:                                         ; preds = %if.then89, %do.body77
  %26 = ptrtoint ptr %sysclk1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sysclk1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool97.not = icmp eq i32 %27, 0
  br i1 %tobool97.not, label %do.end95.if.end101_crit_edge, label %if.then98

do.end95.if.end101_crit_edge:                     ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.then98:                                        ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %best_rate to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %best_rate, align 4
  %div100 = udiv i32 %29, %mul15
  %shl = shl i32 %div100, 16
  %and = and i32 %shl, 4128768
  %30 = ptrtoint ptr %mra to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mra, align 4
  %or = or i32 %and, %31
  store i32 %or, ptr %mra, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %do.end95.if.end101_crit_edge
  %32 = ptrtoint ptr %best_rate to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %best_rate, align 4
  %div103 = udiv i32 %33, %mul19
  %shl104 = shl i32 %div103, 24
  %and105 = and i32 %shl104, 1056964608
  %34 = ptrtoint ptr %mra to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mra, align 4
  %or106 = or i32 %and105, %35
  store i32 %or106, ptr %mra, align 4
  %36 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gclk, align 4
  %cmp108 = icmp eq ptr %best_clk.3, %37
  %or110 = or i32 %or106, 4096
  %storemerge = select i1 %cmp108, i32 %or110, i32 %or106
  store i32 %storemerge, ptr %mra, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %do.end74
  %retval.0 = phi i32 [ 0, %if.end101 ], [ -22, %do.end74 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @lcm(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !55, !56, !57, !58, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !80, !82, !84, !86, !88, !89, !91, !92, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !163, !165, !166, !168, !169, !170, !172, !173, !175, !176, !177, !179, !180, !182, !183, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !196, !197, !199, !201}
!llvm.module.flags = !{!203, !204, !205, !206, !207, !208, !209, !210}
!llvm.ident = !{!211}

!0 = !{ptr @__initcall__kmod_snd_soc_mchp_i2s_mcc__249_1107_mchp_i2s_mcc_driver_init6, !1, !"__initcall__kmod_snd_soc_mchp_i2s_mcc__249_1107_mchp_i2s_mcc_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 1107, i32 1}
!2 = !{ptr @__exitcall_mchp_i2s_mcc_driver_exit, !1, !"__exitcall_mchp_i2s_mcc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description250, !4, !"__UNIQUE_ID_description250", i1 false, i1 false}
!4 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 1109, i32 1}
!5 = !{ptr @__UNIQUE_ID_author251, !6, !"__UNIQUE_ID_author251", i1 false, i1 false}
!6 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 1110, i32 1}
!7 = !{ptr @__UNIQUE_ID_file252, !8, !"__UNIQUE_ID_file252", i1 false, i1 false}
!8 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 1111, i32 1}
!9 = !{ptr @__UNIQUE_ID_license253, !8, !"__UNIQUE_ID_license253", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 1101, i32 11}
!12 = !{ptr @mchp_i2s_mcc_driver, !13, !"mchp_i2s_mcc_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 1099, i32 31}
!14 = !{ptr @mchp_i2s_mcc_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 1015, i32 11}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 1029, i32 39}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 1032, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mchp_i2s_mcc_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @mchp_i2s_mcc_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 1038, i32 39}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 1042, i32 3}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mchp_i2s_mcc_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @mchp_i2s_mcc_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 1058, i32 3}
!36 = !{ptr @mchp_i2s_mcc_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mchp_i2s_mcc_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 1067, i32 3}
!40 = !{ptr @mchp_i2s_mcc_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mchp_i2s_mcc_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 1077, i32 3}
!44 = !{ptr @mchp_i2s_mcc_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mchp_i2s_mcc_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 1084, i32 2}
!48 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mchp_i2s_mcc_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @mchp_i2s_mcc_probe._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @mchp_i2s_mcc_regmap_config, !52, !"mchp_i2s_mcc_regmap_config", i1 false, i1 false}
!52 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 224, i32 35}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 964, i32 3}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mchp_i2s_mcc_soc_data_parse._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @mchp_i2s_mcc_soc_data_parse._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 971, i32 47}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 974, i32 3}
!62 = !{ptr @mchp_i2s_mcc_soc_data_parse._entry.29, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mchp_i2s_mcc_soc_data_parse._entry_ptr.31, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 980, i32 3}
!66 = !{ptr @mchp_i2s_mcc_soc_data_parse._entry.32, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mchp_i2s_mcc_soc_data_parse._entry_ptr.34, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 985, i32 4}
!70 = !{ptr @mchp_i2s_mcc_soc_data_parse._entry.35, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mchp_i2s_mcc_soc_data_parse._entry_ptr.37, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 990, i32 3}
!74 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @mchp_i2s_mcc_soc_data_parse.__UNIQUE_ID_ddebug248, !73, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 931, i32 10}
!78 = !{ptr @mchp_i2s_mcc_component, !79, !"mchp_i2s_mcc_component", i1 false, i1 false}
!79 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 930, i32 46}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 918, i32 18}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 911, i32 18}
!84 = !{ptr @mchp_i2s_mcc_dai, !85, !"mchp_i2s_mcc_dai", i1 false, i1 false}
!85 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 908, i32 34}
!86 = !{ptr @mchp_i2s_mcc_dai_probe.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 888, i32 2}
!88 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @mchp_i2s_mcc_dai_probe.__key.44, !90, !"__key", i1 false, i1 false}
!90 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 889, i32 2}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @mchp_i2s_mcc_dai_ops, !93, !"mchp_i2s_mcc_dai_ops", i1 false, i1 false}
!93 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 873, i32 37}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 318, i32 2}
!96 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @mchp_i2s_mcc_set_sysclk.__UNIQUE_ID_ddebug240, !95, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 335, i32 2}
!100 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @mchp_i2s_mcc_set_bclk_ratio.__UNIQUE_ID_ddebug241, !99, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 346, i32 2}
!104 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @mchp_i2s_mcc_set_dai_fmt.__UNIQUE_ID_ddebug242, !103, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 372, i32 2}
!108 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @mchp_i2s_mcc_set_dai_tdm_slot.__UNIQUE_ID_ddebug243, !107, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 522, i32 2}
!112 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @mchp_i2s_mcc_hw_params.__UNIQUE_ID_ddebug247, !111, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 529, i32 4}
!116 = !{ptr @mchp_i2s_mcc_hw_params._entry, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @mchp_i2s_mcc_hw_params._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 536, i32 4}
!120 = !{ptr @mchp_i2s_mcc_hw_params._entry.57, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @mchp_i2s_mcc_hw_params._entry_ptr.59, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 545, i32 3}
!124 = !{ptr @mchp_i2s_mcc_hw_params._entry.60, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @mchp_i2s_mcc_hw_params._entry_ptr.62, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 566, i32 4}
!128 = !{ptr @mchp_i2s_mcc_hw_params._entry.63, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @mchp_i2s_mcc_hw_params._entry_ptr.65, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.67, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 569, i32 3}
!132 = !{ptr @mchp_i2s_mcc_hw_params._entry.66, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @mchp_i2s_mcc_hw_params._entry_ptr.68, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 576, i32 4}
!136 = !{ptr @mchp_i2s_mcc_hw_params._entry.69, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @mchp_i2s_mcc_hw_params._entry_ptr.71, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.73, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 601, i32 4}
!140 = !{ptr @mchp_i2s_mcc_hw_params._entry.72, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @mchp_i2s_mcc_hw_params._entry_ptr.74, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.76, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 665, i32 3}
!144 = !{ptr @mchp_i2s_mcc_hw_params._entry.75, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @mchp_i2s_mcc_hw_params._entry_ptr.77, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.79, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 674, i32 4}
!148 = !{ptr @mchp_i2s_mcc_hw_params._entry.78, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @mchp_i2s_mcc_hw_params._entry_ptr.80, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.82, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 704, i32 4}
!152 = !{ptr @mchp_i2s_mcc_hw_params._entry.81, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @mchp_i2s_mcc_hw_params._entry_ptr.83, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.85, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 712, i32 4}
!156 = !{ptr @mchp_i2s_mcc_hw_params._entry.84, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @mchp_i2s_mcc_hw_params._entry_ptr.86, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.87, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 451, i32 4}
!160 = !{ptr @.str.88, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @mchp_i2s_mcc_config_divs._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @mchp_i2s_mcc_config_divs._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.89, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 455, i32 5}
!165 = !{ptr @mchp_i2s_mcc_config_divs.__UNIQUE_ID_ddebug244, !164, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!166 = !{ptr @.str.91, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 465, i32 4}
!168 = !{ptr @mchp_i2s_mcc_config_divs._entry.90, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @mchp_i2s_mcc_config_divs._entry_ptr.92, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.93, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 469, i32 5}
!172 = !{ptr @mchp_i2s_mcc_config_divs.__UNIQUE_ID_ddebug245, !171, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!173 = !{ptr @.str.95, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 478, i32 3}
!175 = !{ptr @mchp_i2s_mcc_config_divs._entry.94, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @mchp_i2s_mcc_config_divs._entry_ptr.96, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.97, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 482, i32 2}
!179 = !{ptr @mchp_i2s_mcc_config_divs.__UNIQUE_ID_ddebug246, !178, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!180 = distinct !{null, !181, !"__print_once", i1 false, i1 false}
!181 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 744, i32 4}
!182 = !{ptr @.str.98, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.99, !181, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @mchp_i2s_mcc_hw_free._entry, !181, !"_entry", i1 false, i1 false}
!185 = !{ptr @mchp_i2s_mcc_hw_free._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!186 = distinct !{null, !187, !"__print_once", i1 false, i1 false}
!187 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 760, i32 4}
!188 = !{ptr @.str.102, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @mchp_i2s_mcc_hw_free._entry.101, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @mchp_i2s_mcc_hw_free._entry_ptr.103, !187, !"_entry_ptr", i1 false, i1 false}
!191 = distinct !{null, !192, !"__print_once", i1 false, i1 false}
!192 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 843, i32 4}
!193 = !{ptr @.str.104, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.105, !192, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @mchp_i2s_mcc_trigger._entry, !192, !"_entry", i1 false, i1 false}
!196 = !{ptr @mchp_i2s_mcc_trigger._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @mchp_i2s_mcc_dt_ids, !198, !"mchp_i2s_mcc_dt_ids", i1 false, i1 false}
!198 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 944, i32 34}
!199 = !{ptr @mchp_i2s_mcc_sam9x60, !200, !"mchp_i2s_mcc_sam9x60", i1 false, i1 false}
!200 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 935, i32 37}
!201 = !{ptr @mchp_i2s_mcc_sama7g5, !202, !"mchp_i2s_mcc_sama7g5", i1 false, i1 false}
!202 = !{!"../sound/soc/atmel/mchp-i2s-mcc.c", i32 939, i32 37}
!203 = !{i32 1, !"wchar_size", i32 2}
!204 = !{i32 1, !"min_enum_size", i32 4}
!205 = !{i32 8, !"branch-target-enforcement", i32 0}
!206 = !{i32 8, !"sign-return-address", i32 0}
!207 = !{i32 8, !"sign-return-address-all", i32 0}
!208 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!209 = !{i32 7, !"uwtable", i32 1}
!210 = !{i32 7, !"frame-pointer", i32 2}
!211 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!212 = !{!"auto-init"}
!213 = !{i8 0, i8 2}
!214 = !{i64 2148982715, i64 2148982720, i64 2148982733, i64 2148982777, i64 2148982811, i64 2148982832}
!215 = !{i32 0, i32 33}
