; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/zl38060.c_pt.bc'
source_filename = "../sound/soc/codecs/zl38060.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.72, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.72 = type { ptr }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.92, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.92 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.zl38_codec_priv = type { ptr, ptr, [2 x i8], ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.ihex_binrec = type <{ i32, i16, [0 x i8] }>
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
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

@__initcall__kmod_snd_soc_zl38060__240_632_zl38060_spi_driver_init6 = internal global ptr @zl38060_spi_driver_init, section ".initcall6.init", align 4
@zl38060_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @zl38_spi_ids, ptr @zl38_spi_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @zl38_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_zl38060_spi_driver_exit = internal global ptr @zl38060_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [48 x i8] c"snd_soc_zl38060.description=ASoC ZL38060 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [63 x i8] c"snd_soc_zl38060.author=Sven Van Asbroeck <TheSven73@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [54 x i8] c"snd_soc_zl38060.file=sound/soc/codecs/snd-soc-zl38060\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [31 x i8] c"snd_soc_zl38060.license=GPL v2\00", section ".modinfo", align 1
@zl38_spi_ids = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"zl38060\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"zl38060\00", [24 x i8] zeroinitializer }, align 32
@zl38_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mscc,zl38060\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@zl38_spi_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@zl38_regmap_bus = internal constant { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr @zl38_bus_write, ptr null, ptr null, ptr null, ptr null, ptr @zl38_bus_read, ptr null, ptr null, ptr null, i8 0, i32 0, i32 0, i32 256, i32 256, i8 0 }, [32 x i8] zeroinitializer }, align 32
@zl38_regmap_conf = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 2, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"zl38060:576:(&zl38_regmap_conf)->lock\00", [58 x i8] zeroinitializer }, align 32
@template_chip = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @chip_direction_input, ptr @chip_direction_output, ptr @chip_gpio_get, ptr null, ptr @chip_gpio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -1, i16 14, i16 0, ptr null, i8 1, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@zl38_spi_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@zl38_spi_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@cp_config_stereo_bypass = internal constant { [7 x %struct.reg_sequence], [44 x i8] } { [7 x %struct.reg_sequence] [%struct.reg_sequence { i32 528, i32 5, i32 0 }, %struct.reg_sequence { i32 530, i32 6, i32 0 }, %struct.reg_sequence { i32 532, i32 1, i32 0 }, %struct.reg_sequence { i32 534, i32 1, i32 0 }, %struct.reg_sequence { i32 548, i32 0, i32 0 }, %struct.reg_sequence { i32 550, i32 0, i32 0 }, %struct.reg_sequence { i32 514, i32 15, i32 0 }], [44 x i8] zeroinitializer }, align 32
@zl38_component_dev = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr @zl38_dapm_widgets, i32 3, ptr @zl38_dapm_routes, i32 3, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 12, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@zl38_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.22, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @zl38_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.21, i64 4, i32 138, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.20, i64 4, i32 138, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 -32, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"zl38060.fw\00", [21 x i8] zeroinitializer }, align 32
@request_ihex_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 77, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Firmware \22%s\22 not valid IHEX records\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"request_ihex_firmware\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/ihex.h\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@request_ihex_firmware._entry_ptr = internal global ptr @request_ihex_firmware._entry, section ".printk_index", align 4
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/zl38060.c\00", [37 x i8] zeroinitializer }, align 32
@zl38_check_revision._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.9, i32 465, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"hw rev 0x%x, fw product code %d, firmware rev %d.%d.%d\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zl38_check_revision\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@zl38_check_revision._entry_ptr = internal global ptr @zl38_check_revision._entry, section ".printk_index", align 4
@zl38_check_revision._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.9, i32 469, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"unsupported firmware. driver supports %d.%d\00", [52 x i8] zeroinitializer }, align 32
@zl38_check_revision._entry_ptr.15 = internal global ptr @zl38_check_revision._entry.13, section ".printk_index", align 4
@zl38_dapm_routes = internal constant { [3 x %struct.snd_soc_dapm_route], [36 x i8] } { [3 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.16, ptr null, ptr @.str.20, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.17, ptr null, ptr @.str.20, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.21, ptr null, ptr @.str.18, ptr null, %struct.snd_soc_dobj zeroinitializer }], [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DAC1\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DAC2\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMICL\00", [26 x i8] zeroinitializer }, align 32
@zl38_dapm_widgets = internal constant { [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [132 x i8] } { [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.16, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.17, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.18, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [132 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zl38060-tdma\00", [19 x i8] zeroinitializer }, align 32
@zl38_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @zl38_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zl38_hw_params, ptr @zl38_hw_free, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8000, i64 16000, i64 48000]
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"zl38060_spi_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 624, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"zl38_spi_ids\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 618, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 626, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [12 x i8] c"zl38_dt_ids\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 612, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 557, i32 44 }
@___asan_gen_.38 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"zl38_regmap_bus\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 534, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"zl38_regmap_conf\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 541, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 575, i32 17 }
@___asan_gen_.50 = private unnamed_addr constant [14 x i8] c"template_chip\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 431, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 593, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant [24 x i8] c"cp_config_stereo_bypass\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 328, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant [19 x i8] c"zl38_component_dev\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 382, i32 46 }
@___asan_gen_.65 = private unnamed_addr constant [9 x i8] c"zl38_dai\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 346, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 178, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant [24 x i8] c"../include/linux/ihex.h\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 76, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 134, i32 9 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 464, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 468, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"zl38_dapm_routes\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 375, i32 40 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 369, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 370, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 372, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [18 x i8] c"zl38_dapm_widgets\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 368, i32 41 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 376, i32 19 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 379, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 347, i32 10 }
@___asan_gen_.134 = private unnamed_addr constant [13 x i8] c"zl38_dai_ops\00", align 1
@___asan_gen_.135 = private constant [30 x i8] c"../sound/soc/codecs/zl38060.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 340, i32 37 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_zl38060_spi_driver_exit, ptr @__initcall__kmod_snd_soc_zl38060__240_632_zl38060_spi_driver_init6, ptr @request_ihex_firmware._entry, ptr @request_ihex_firmware._entry_ptr, ptr @zl38060_spi_driver_exit, ptr @zl38_check_revision._entry, ptr @zl38_check_revision._entry.13, ptr @zl38_check_revision._entry_ptr, ptr @zl38_check_revision._entry_ptr.15, ptr @zl38060_spi_driver, ptr @zl38_spi_ids, ptr @.str, ptr @zl38_dt_ids, ptr @.str.1, ptr @zl38_spi_probe._key, ptr @zl38_regmap_bus, ptr @zl38_regmap_conf, ptr @.str.2, ptr @template_chip, ptr @zl38_spi_probe.lock_key, ptr @zl38_spi_probe.request_key, ptr @cp_config_stereo_bypass, ptr @zl38_component_dev, ptr @zl38_dai, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @zl38_dapm_routes, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @zl38_dapm_widgets, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @zl38_dai_ops], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl38060_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl38_spi_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl38_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl38_spi_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl38_regmap_bus to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl38_regmap_conf to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @template_chip to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl38_spi_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl38_spi_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp_config_stereo_bypass to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl38_component_dev to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl38_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_ihex_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl38_check_revision._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl38_check_revision._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl38_dapm_routes to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl38_dapm_widgets to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zl38_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zl38060_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @zl38060_spi_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zl38060_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @zl38060_spi_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zl38_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  %hwrev.i = alloca i32, align 4
  %fwprod.i = alloca i32, align 4
  %fwrev.i = alloca i32, align 4
  %baddr.i.i = alloca i32, align 4
  %addr_base.i.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %lfw.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_gpiod_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.1, i32 noundef 7) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 15, i32 noundef 50, i32 noundef 2) #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %call, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 10000, i32 noundef 2) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 16, i32 noundef 3520) #7
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %spi, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call11 = tail call ptr @__devm_regmap_init(ptr noundef %spi, ptr noundef nonnull @zl38_regmap_bus, ptr noundef %spi, ptr noundef nonnull @zl38_regmap_conf, ptr noundef nonnull @zl38_spi_probe._key, ptr noundef nonnull @.str.2) #7
  %regmap = getelementptr inbounds %struct.zl38_codec_priv, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11, ptr %regmap, align 4
  %cmp.i92 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lfw.i.i) #7
  %5 = ptrtoint ptr %lfw.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %lfw.i.i, align 4, !annotation !87
  %call.i.i = call i32 @request_firmware(ptr noundef nonnull %lfw.i.i, ptr noundef nonnull @.str.3, ptr noundef %spi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end17.zl38_load_firmware.exit.thread_crit_edge

if.end17.zl38_load_firmware.exit.thread_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl38_load_firmware.exit.thread

if.end.i.i:                                       ; preds = %if.end17
  %6 = ptrtoint ptr %lfw.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lfw.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.firmware, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  %sub.i.i.i = add i32 %11, -6
  %arrayidx.i.i.i = getelementptr i8, ptr %9, i32 %sub.i.i.i
  %cmp.not10.i.i.i = icmp ugt ptr %9, %arrayidx.i.i.i
  br i1 %cmp.not10.i.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %for.body.preheader.i.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

for.body.preheader.i.i.i:                         ; preds = %if.end.i.i
  %len.i.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %arrayidx.i.i.i, i32 0, i32 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %rec.011.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %9, %for.body.preheader.i.i.i ]
  %cmp2.i.i.i = icmp eq ptr %rec.011.i.i.i, %arrayidx.i.i.i
  br i1 %cmp2.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %12 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %len.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i.i.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i.i.i, label %if.end.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %len.i.i.i.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.011.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %len.i.i.i.i.i, align 1
  %add.i.i.i.i.i = add i16 %15, 6
  %conv.i.i.i.i = zext i16 %add.i.i.i.i.i to i32
  %add.i.i.i.i = add nuw nsw i32 %conv.i.i.i.i, 3
  %and.i.i.i.i = and i32 %add.i.i.i.i, 131068
  %add.ptr.i.i.i.i = getelementptr i8, ptr %rec.011.i.i.i, i32 %and.i.i.i.i
  %cmp.not.i.i.i = icmp ugt ptr %add.ptr.i.i.i.i, %arrayidx.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.do.end.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.do.end.i.i_crit_edge:               ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %for.inc.i.i.i.do.end.i.i_crit_edge, %if.end.i.i.do.end.i.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3) #10
  %16 = ptrtoint ptr %lfw.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lfw.i.i, align 4
  call void @release_firmware(ptr noundef %17) #7
  br label %zl38_load_firmware.exit.thread

zl38_load_firmware.exit.thread:                   ; preds = %do.end.i.i, %if.end17.zl38_load_firmware.exit.thread_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i, %if.end17.zl38_load_firmware.exit.thread_crit_edge ], [ -22, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i.i) #7
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lfw.i.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %18 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %val.i.i, align 4, !annotation !87
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %call11, i32 noundef 20, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i43.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i43.i, label %if.end.i44.i, label %if.end.i.zl38_fw_enter_boot_mode.exit.thread.i_crit_edge

if.end.i.zl38_fw_enter_boot_mode.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl38_fw_enter_boot_mode.exit.thread.i

if.end.i44.i:                                     ; preds = %if.end.i
  %call1.i.i = call i64 @ktime_get() #7
  %add.i.i.i = add i64 %call1.i.i, 50000000
  call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 135) #7
  %call1152.i.i = call i32 @regmap_read(ptr noundef %call11, i32 noundef 52, ptr noundef nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1152.i.i)
  %tobool12.not53.i.i = icmp eq i32 %call1152.i.i, 0
  br i1 %tobool12.not53.i.i, label %if.end.i44.i.lor.lhs.false.i.i_crit_edge, label %if.end.i44.i.zl38_fw_enter_boot_mode.exit.thread.i_crit_edge

if.end.i44.i.zl38_fw_enter_boot_mode.exit.thread.i_crit_edge: ; preds = %if.end.i44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl38_fw_enter_boot_mode.exit.thread.i

if.end.i44.i.lor.lhs.false.i.i_crit_edge:         ; preds = %if.end.i44.i
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.then24.i.i.lor.lhs.false.i.i_crit_edge, %if.end.i44.i.lor.lhs.false.i.i_crit_edge
  %19 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 54227, i32 %20)
  %cmp13.i.i = icmp eq i32 %20, 54227
  br i1 %cmp13.i.i, label %lor.lhs.false.i.i.if.end4.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false.i.i.if.end4.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call17.i.i = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call17.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call17.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %for.end.i.i, label %if.then24.i.i

if.then24.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %call11.i.i = call i32 @regmap_read(ptr noundef %call11, i32 noundef 52, ptr noundef nonnull %val.i.i) #7
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.then24.i.i.lor.lhs.false.i.i_crit_edge, label %if.then24.i.i.zl38_fw_enter_boot_mode.exit.thread.i_crit_edge

if.then24.i.i.zl38_fw_enter_boot_mode.exit.thread.i_crit_edge: ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl38_fw_enter_boot_mode.exit.thread.i

if.then24.i.i.lor.lhs.false.i.i_crit_edge:        ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i.i

for.end.i.i:                                      ; preds = %land.lhs.true.i.i
  %call21.i.i = call i32 @regmap_read(ptr noundef %call11, i32 noundef 52, ptr noundef nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool26.not.i.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool26.not.i.i, label %lor.rhs.i.i, label %for.end.i.i.zl38_fw_enter_boot_mode.exit.thread.i_crit_edge

for.end.i.i.zl38_fw_enter_boot_mode.exit.thread.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl38_fw_enter_boot_mode.exit.thread.i

lor.rhs.i.i:                                      ; preds = %for.end.i.i
  %21 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr.i = load i32, ptr %val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 54227, i32 %.pr.i)
  %cmp27.i.i = icmp eq i32 %.pr.i, 54227
  br i1 %cmp27.i.i, label %lor.rhs.i.i.if.end4.i_crit_edge, label %lor.rhs.i.i.zl38_fw_enter_boot_mode.exit.thread.i_crit_edge

lor.rhs.i.i.zl38_fw_enter_boot_mode.exit.thread.i_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl38_fw_enter_boot_mode.exit.thread.i

lor.rhs.i.i.if.end4.i_crit_edge:                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

zl38_fw_enter_boot_mode.exit.thread.i:            ; preds = %lor.rhs.i.i.zl38_fw_enter_boot_mode.exit.thread.i_crit_edge, %for.end.i.i.zl38_fw_enter_boot_mode.exit.thread.i_crit_edge, %if.then24.i.i.zl38_fw_enter_boot_mode.exit.thread.i_crit_edge, %if.end.i44.i.zl38_fw_enter_boot_mode.exit.thread.i_crit_edge, %if.end.i.zl38_fw_enter_boot_mode.exit.thread.i_crit_edge
  %retval.0.i45.ph.i = phi i32 [ %call1152.i.i, %if.end.i44.i.zl38_fw_enter_boot_mode.exit.thread.i_crit_edge ], [ -110, %lor.rhs.i.i.zl38_fw_enter_boot_mode.exit.thread.i_crit_edge ], [ %call21.i.i, %for.end.i.i.zl38_fw_enter_boot_mode.exit.thread.i_crit_edge ], [ %call.i.i.i, %if.end.i.zl38_fw_enter_boot_mode.exit.thread.i_crit_edge ], [ %call11.i.i, %if.then24.i.i.zl38_fw_enter_boot_mode.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  br label %zl38_load_firmware.exit.thread101

if.end4.i:                                        ; preds = %lor.rhs.i.i.if.end4.i_crit_edge, %lor.lhs.false.i.i.if.end4.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %22 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i.i, align 4
  %tobool5.not70.i = icmp eq ptr %23, null
  br i1 %tobool5.not70.i, label %if.end4.i.while.end.i_crit_edge, label %if.end4.i.while.body.i_crit_edge

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  br label %while.body.i

if.end4.i.while.end.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i:                                     ; preds = %if.end22.i.while.body.i_crit_edge, %if.end4.i.while.body.i_crit_edge
  %rec.071.i = phi ptr [ %add.ptr.i.i.i, %if.end22.i.while.body.i_crit_edge ], [ %23, %if.end4.i.while.body.i_crit_edge ]
  %24 = ptrtoint ptr %rec.071.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %rec.071.i, align 1
  %len7.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.071.i, i32 0, i32 1
  %26 = ptrtoint ptr %len7.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %len7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool8.not.i = icmp eq i32 %25, 0
  br i1 %tobool8.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %while.body.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr_base.i.i) #7
  %and.i.i = and i32 %25, -256
  %28 = ptrtoint ptr %addr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and.i.i, ptr %addr_base.i.i, align 4
  %call.i46.i = call i32 @regmap_raw_write(ptr noundef %call11, i32 noundef 12, ptr noundef nonnull %addr_base.i.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i)
  %tobool.not.i47.i = icmp eq i32 %call.i46.i, 0
  br i1 %tobool.not.i47.i, label %if.end.i48.i, label %if.then9.i.zl38_fw_send_data.exit.i_crit_edge

if.then9.i.zl38_fw_send_data.exit.i_crit_edge:    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl38_fw_send_data.exit.i

if.end.i48.i:                                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  %data10.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.071.i, i32 0, i32 2
  %and1.i.i = and i32 %25, 255
  %or.i.i = or i32 %and1.i.i, 65280
  %conv.i.i = zext i16 %27 to i32
  %call2.i.i = call i32 @regmap_raw_write(ptr noundef %call11, i32 noundef %or.i.i, ptr noundef %data10.i, i32 noundef %conv.i.i) #7
  br label %zl38_fw_send_data.exit.i

zl38_fw_send_data.exit.i:                         ; preds = %if.end.i48.i, %if.then9.i.zl38_fw_send_data.exit.i_crit_edge
  %retval.0.i49.i = phi i32 [ %call2.i.i, %if.end.i48.i ], [ %call.i46.i, %if.then9.i.zl38_fw_send_data.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_base.i.i) #7
  br label %if.end19.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %27)
  %cmp.i93 = icmp eq i16 %27, 4
  br i1 %cmp.i93, label %if.then13.i, label %if.else.i.zl38_load_firmware.exit.thread101_crit_edge

if.else.i.zl38_load_firmware.exit.thread101_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl38_load_firmware.exit.thread101

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %data14.i = getelementptr inbounds %struct.ihex_binrec, ptr %rec.071.i, i32 0, i32 2
  %29 = ptrtoint ptr %data14.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data14.i, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baddr.i.i) #7
  %32 = ptrtoint ptr %baddr.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %baddr.i.i, align 4
  %call1.i50.i = call i32 @regmap_raw_write(ptr noundef %call11, i32 noundef 300, ptr noundef nonnull %baddr.i.i, i32 noundef 4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baddr.i.i) #7
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then13.i, %zl38_fw_send_data.exit.i
  %err.0.i = phi i32 [ %retval.0.i49.i, %zl38_fw_send_data.exit.i ], [ %call1.i50.i, %if.then13.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool20.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end19.i.zl38_load_firmware.exit.thread101_crit_edge

if.end19.i.zl38_load_firmware.exit.thread101_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl38_load_firmware.exit.thread101

if.end22.i:                                       ; preds = %if.end19.i
  %33 = ptrtoint ptr %len7.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %len7.i, align 1
  %add.i.i.i51.i = add i16 %34, 6
  %conv.i.i.i = zext i16 %add.i.i.i51.i to i32
  %add.i.i52.i = add nuw nsw i32 %conv.i.i.i, 3
  %and.i.i.i = and i32 %add.i.i52.i, 131068
  %add.ptr.i.i.i = getelementptr i8, ptr %rec.071.i, i32 %and.i.i.i
  %len.i.i = getelementptr inbounds %struct.ihex_binrec, ptr %add.ptr.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %len.i.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %len.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool.not.i53.i = icmp eq i16 %36, 0
  %tobool5.not72.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool5.not.i = select i1 %tobool.not.i53.i, i1 true, i1 %tobool5.not72.i
  br i1 %tobool5.not.i, label %if.end22.i.while.end.i_crit_edge, label %if.end22.i.while.body.i_crit_edge

if.end22.i.while.body.i_crit_edge:                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end22.i.while.end.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %if.end22.i.while.end.i_crit_edge, %if.end4.i.while.end.i_crit_edge
  %call.i54.i = call fastcc i32 @zl38_fw_issue_command(ptr noundef %call11, i16 noundef zeroext 13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i)
  %tobool.not.i55.i = icmp eq i32 %call.i54.i, 0
  br i1 %tobool.not.i55.i, label %zl38_load_firmware.exit, label %while.end.i.zl38_load_firmware.exit.thread101_crit_edge

while.end.i.zl38_load_firmware.exit.thread101_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl38_load_firmware.exit.thread101

zl38_load_firmware.exit.thread101:                ; preds = %while.end.i.zl38_load_firmware.exit.thread101_crit_edge, %if.end19.i.zl38_load_firmware.exit.thread101_crit_edge, %if.else.i.zl38_load_firmware.exit.thread101_crit_edge, %zl38_fw_enter_boot_mode.exit.thread.i
  %err.1.i.ph = phi i32 [ %call.i54.i, %while.end.i.zl38_load_firmware.exit.thread101_crit_edge ], [ %retval.0.i45.ph.i, %zl38_fw_enter_boot_mode.exit.thread.i ], [ -22, %if.else.i.zl38_load_firmware.exit.thread101_crit_edge ], [ %err.0.i, %if.end19.i.zl38_load_firmware.exit.thread101_crit_edge ]
  call void @release_firmware(ptr noundef %7) #7
  br label %cleanup

zl38_load_firmware.exit:                          ; preds = %while.end.i
  %call1.i56.i = call fastcc i32 @zl38_fw_issue_command(ptr noundef %call11, i16 noundef zeroext 8) #7
  call void @release_firmware(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i56.i)
  %tobool20.not = icmp eq i32 %call1.i56.i, 0
  br i1 %tobool20.not, label %if.end22, label %zl38_load_firmware.exit.cleanup_crit_edge

zl38_load_firmware.exit.cleanup_crit_edge:        ; preds = %zl38_load_firmware.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %zl38_load_firmware.exit
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwrev.i) #7
  %39 = ptrtoint ptr %hwrev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %hwrev.i, align 4, !annotation !87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fwprod.i) #7
  %40 = ptrtoint ptr %fwprod.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %fwprod.i, align 4, !annotation !87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fwrev.i) #7
  %41 = ptrtoint ptr %fwrev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %fwrev.i, align 4, !annotation !87
  %call.i94 = call i32 @regmap_read(ptr noundef %38, i32 noundef 32, ptr noundef nonnull %hwrev.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool.not.i = icmp eq i32 %call.i94, 0
  br i1 %tobool.not.i, label %if.end.i95, label %if.end22.zl38_check_revision.exit.thread_crit_edge

if.end22.zl38_check_revision.exit.thread_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl38_check_revision.exit.thread

if.end.i95:                                       ; preds = %if.end22
  %call1.i = call i32 @regmap_read(ptr noundef %38, i32 noundef 34, ptr noundef nonnull %fwprod.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i96, label %if.end.i95.zl38_check_revision.exit.thread_crit_edge

if.end.i95.zl38_check_revision.exit.thread_crit_edge: ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl38_check_revision.exit.thread

if.end4.i96:                                      ; preds = %if.end.i95
  %call5.i = call i32 @regmap_read(ptr noundef %38, i32 noundef 36, ptr noundef nonnull %fwrev.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i96.zl38_check_revision.exit.thread_crit_edge

if.end4.i96.zl38_check_revision.exit.thread_crit_edge: ; preds = %if.end4.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl38_check_revision.exit.thread

if.end8.i:                                        ; preds = %if.end4.i96
  %42 = ptrtoint ptr %fwrev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fwrev.i, align 4
  %shr.i = lshr i32 %43, 12
  %and.i = and i32 %shr.i, 15
  %shr9.i = lshr i32 %43, 8
  %and10.i = and i32 %shr9.i, 15
  %and11.i = and i32 %43, 255
  %44 = ptrtoint ptr %hwrev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hwrev.i, align 4
  %and12.i = and i32 %45, 31
  %46 = ptrtoint ptr %fwprod.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fwprod.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.10, i32 noundef %and12.i, i32 noundef %47, i32 noundef %and.i, i32 noundef %and10.i, i32 noundef %and11.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp.not.i = icmp ne i32 %and.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and10.i)
  %cmp13.i = icmp ult i32 %and10.i, 2
  %or.cond.i = or i1 %cmp.not.i, %cmp13.i
  br i1 %or.cond.i, label %do.end17.i, label %if.end27

do.end17.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.14, i32 noundef 2, i32 noundef 2) #10
  br label %zl38_check_revision.exit.thread

zl38_check_revision.exit.thread:                  ; preds = %do.end17.i, %if.end4.i96.zl38_check_revision.exit.thread_crit_edge, %if.end.i95.zl38_check_revision.exit.thread_crit_edge, %if.end22.zl38_check_revision.exit.thread_crit_edge
  %retval.0.i97.ph = phi i32 [ %call5.i, %if.end4.i96.zl38_check_revision.exit.thread_crit_edge ], [ %call1.i, %if.end.i95.zl38_check_revision.exit.thread_crit_edge ], [ %call.i94, %if.end22.zl38_check_revision.exit.thread_crit_edge ], [ -22, %do.end17.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fwrev.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fwprod.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwrev.i) #7
  br label %cleanup

if.end27:                                         ; preds = %if.end8.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fwrev.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fwprod.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwrev.i) #7
  %call28 = call ptr @devm_kmemdup(ptr noundef %spi, ptr noundef nonnull @template_chip, i32 noundef 348, i32 noundef 3264) #7
  %gpio_chip = getelementptr inbounds %struct.zl38_codec_priv, ptr %call.i, i32 0, i32 3
  %48 = ptrtoint ptr %gpio_chip to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call28, ptr %gpio_chip, align 4
  %tobool30.not = icmp eq ptr %call28, null
  br i1 %tobool30.not, label %if.end27.cleanup_crit_edge, label %if.end32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call28, i32 0, i32 2
  %49 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %spi, ptr %parent, align 4
  %50 = ptrtoint ptr %gpio_chip to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %gpio_chip, align 4
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 4
  %call37 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %spi, ptr noundef %51, ptr noundef %53, ptr noundef nonnull @zl38_spi_probe.lock_key, ptr noundef nonnull @zl38_spi_probe.request_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40:                                         ; preds = %if.end32
  %54 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap, align 4
  %call42 = call i32 @regmap_multi_reg_write(ptr noundef %55, ptr noundef nonnull @cp_config_stereo_bypass, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  %56 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap, align 4
  %call.i98 = call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 22, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool48.not = icmp eq i32 %call.i98, 0
  br i1 %tobool48.not, label %if.end50, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %call51 = call i32 @devm_snd_soc_register_component(ptr noundef %spi, ptr noundef nonnull @zl38_component_dev, ptr noundef nonnull @zl38_dai, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end45.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %zl38_check_revision.exit.thread, %zl38_load_firmware.exit.cleanup_crit_edge, %zl38_load_firmware.exit.thread101, %zl38_load_firmware.exit.thread, %if.then14, %if.end5.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %4, %if.then14 ], [ %call51, %if.end50 ], [ -12, %if.end5.cleanup_crit_edge ], [ %call1.i56.i, %zl38_load_firmware.exit.cleanup_crit_edge ], [ -12, %if.end27.cleanup_crit_edge ], [ %call37, %if.end32.cleanup_crit_edge ], [ %call42, %if.end40.cleanup_crit_edge ], [ %call.i98, %if.end45.cleanup_crit_edge ], [ %retval.0.i.ph.i, %zl38_load_firmware.exit.thread ], [ %err.1.i.ph, %zl38_load_firmware.exit.thread101 ], [ %retval.0.i97.ph, %zl38_check_revision.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zl38_bus_write(ptr noundef %context, ptr nocapture noundef readonly %data, i32 noundef %count) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %buf = alloca [260 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %buf) #7
  %0 = call ptr @memset(ptr %buf, i32 255, i32 260)
  %1 = add i32 %count, -259
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %1)
  %2 = icmp ult i32 %1, -255
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add nsw i32 %count, -2
  %arrayidx = getelementptr i8, ptr %data, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = lshr i8 %4, 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -2, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp7 = icmp eq i8 %7, -1
  %sub10 = add i8 %7, -1
  %spec.select = select i1 %cmp7, i8 -1, i8 %sub10
  %arrayidx15 = getelementptr inbounds [260 x i8], ptr %buf, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %5, ptr %arrayidx15, align 1
  %10 = trunc i32 %sub to i8
  %11 = lshr i8 %10, 1
  %12 = add nuw i8 %11, 127
  %conv17 = or i8 %12, -128
  %arrayidx19 = getelementptr inbounds [260 x i8], ptr %buf, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv17, ptr %arrayidx19, align 1
  br label %if.end31

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = or i8 %5, -128
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %buf, align 1
  %16 = trunc i32 %sub to i8
  %17 = lshr i8 %16, 1
  %18 = add nuw i8 %17, 127
  %conv28 = or i8 %18, -128
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then4
  %spec.select.sink = phi i8 [ %conv28, %if.else ], [ %spec.select, %if.then4 ]
  %len.0 = phi i32 [ 2, %if.else ], [ 4, %if.then4 ]
  %19 = getelementptr inbounds [260 x i8], ptr %buf, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %spec.select.sink, ptr %19, align 1
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.0
  %add.ptr32 = getelementptr i8, ptr %data, i32 2
  %21 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr32, i32 %sub)
  %add = add nuw nsw i32 %len.0, %sub
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #7
  %22 = getelementptr inbounds i8, ptr %t.i, i32 4
  %23 = call ptr @memset(ptr %22, i32 0, i32 92)
  %24 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buf, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %25 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #7
  %26 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %27 = call ptr @memset(ptr %26, i32 0, i32 40)
  %28 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %30 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #7
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end31.spi_write.exit_crit_edge

if.end31.spi_write.exit_crit_edge:                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %33 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %35 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end31.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %context, ptr noundef nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #7
  br label %cleanup

cleanup:                                          ; preds = %spi_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %spi_write.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zl38_bus_read(ptr noundef %context, ptr nocapture noundef readonly %reg_buf, i32 noundef %reg_size, ptr noundef %val_buf, i32 noundef %val_size) #2 align 64 {
entry:
  %txbuf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %txbuf) #7
  %0 = getelementptr inbounds [4 x i8], ptr %txbuf, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %txbuf, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %txbuf, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg_size)
  %cmp.not = icmp ne i32 %reg_size, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %val_size)
  %cmp1 = icmp ugt i32 %val_size, 256
  %or.cond = or i1 %cmp.not, %cmp1
  %3 = ptrtoint ptr %txbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %txbuf, align 4
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i8, ptr %reg_buf, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = lshr i8 %5, 1
  %7 = ptrtoint ptr %reg_buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %reg_buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -2, ptr %txbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp7 = icmp eq i8 %8, -1
  %sub = add i8 %8, -1
  %spec.select = select i1 %cmp7, i8 -1, i8 %sub
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.select, ptr %0, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %6, ptr %1, align 2
  br label %if.end28

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = or i8 %6, -128
  %13 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %txbuf, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then4
  %.sink = phi ptr [ %0, %if.else ], [ %2, %if.then4 ]
  %len.0 = phi i32 [ 2, %if.else ], [ 4, %if.then4 ]
  %div2347 = lshr i32 %val_size, 1
  %14 = trunc i32 %div2347 to i8
  %conv25 = add i8 %14, -1
  %15 = ptrtoint ptr %.sink to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv25, ptr %.sink, align 1
  %call = call i32 @spi_write_then_read(ptr noundef %context, ptr noundef nonnull %txbuf, i32 noundef %len.0, ptr noundef %val_buf, i32 noundef %val_size) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end28 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txbuf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zl38_fw_issue_command(ptr noundef %regmap, i16 noundef zeroext %cmd) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !87
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 98) #7
  %call8146 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 6, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8146)
  %tobool.not147 = icmp eq i32 %call8146, 0
  br i1 %tobool.not147, label %entry.lor.lhs.false_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then20.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call13 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then20

if.then20:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #7
  %call8 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 6, ptr noundef nonnull %val) #7
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then20.lor.lhs.false_crit_edge, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20.lor.lhs.false_crit_edge:                ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %call17 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 6, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool22.not = icmp eq i32 %call17, 0
  br i1 %tobool22.not, label %for.end.lor.rhs_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and23 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end30, label %lor.rhs.cleanup_crit_edge

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30:                                         ; preds = %lor.rhs
  %conv = zext i16 %cmd to i32
  %call31 = call i32 @regmap_write(ptr noundef %regmap, i32 noundef 50, i32 noundef %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 6, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool36.not = icmp eq i32 %call.i, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %call44 = call i64 @ktime_get() #7
  %add.i119 = add i64 %call44, 1000000000
  call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 110) #7
  %call60148 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 50, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60148)
  %tobool61.not149 = icmp eq i32 %call60148, 0
  br i1 %tobool61.not149, label %if.end38.lor.lhs.false62_crit_edge, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38.lor.lhs.false62_crit_edge:               ; preds = %if.end38
  br label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %if.then76.lor.lhs.false62_crit_edge, %if.end38.lor.lhs.false62_crit_edge
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool63.not = icmp eq i32 %6, 0
  br i1 %tobool63.not, label %lor.lhs.false62.lor.rhs83_crit_edge, label %land.lhs.true67

lor.lhs.false62.lor.rhs83_crit_edge:              ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs83

land.lhs.true67:                                  ; preds = %lor.lhs.false62
  %call68 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call68, i64 %add.i119)
  %cmp3.i121 = icmp sgt i64 %call68, %add.i119
  br i1 %cmp3.i121, label %for.end80, label %if.then76

if.then76:                                        ; preds = %land.lhs.true67
  call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #7
  %call60 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 50, ptr noundef nonnull %val) #7
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then76.lor.lhs.false62_crit_edge, label %if.then76.cleanup_crit_edge

if.then76.cleanup_crit_edge:                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then76.lor.lhs.false62_crit_edge:              ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false62

for.end80:                                        ; preds = %land.lhs.true67
  %call73 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 50, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool82.not = icmp eq i32 %call73, 0
  br i1 %tobool82.not, label %for.end80.lor.rhs83_crit_edge, label %for.end80.cleanup_crit_edge

for.end80.cleanup_crit_edge:                      ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end80.lor.rhs83_crit_edge:                    ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs83

lor.rhs83:                                        ; preds = %for.end80.lor.rhs83_crit_edge, %lor.lhs.false62.lor.rhs83_crit_edge
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool84.not = icmp eq i32 %8, 0
  %phi.sel117 = select i1 %tobool84.not, i32 0, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs83, %for.end80.cleanup_crit_edge, %if.then76.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %if.end30.cleanup_crit_edge ], [ %call.i, %if.end34.cleanup_crit_edge ], [ %call73, %for.end80.cleanup_crit_edge ], [ %phi.sel117, %lor.rhs83 ], [ %call60148, %if.end38.cleanup_crit_edge ], [ %call8146, %entry.cleanup_crit_edge ], [ -110, %lor.rhs.cleanup_crit_edge ], [ %call17, %for.end.cleanup_crit_edge ], [ %call60, %if.then76.cleanup_crit_edge ], [ %call8, %if.then20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chip_direction_input(ptr noundef %c, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %c) #7
  %shl = shl nuw i32 1, %offset
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef 732, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chip_direction_output(ptr noundef %c, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %c) #7
  %shl = shl nuw i32 1, %offset
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %c) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i = icmp eq i32 %val, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 %shl
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %call.i, i32 noundef 730, i32 noundef %shl, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call.i5 = tail call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef 732, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chip_gpio_get(ptr noundef %c, i32 noundef %offset) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %c) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !87
  %call1 = call i32 @regmap_read(ptr noundef %call, i32 noundef 730, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %3 = lshr i32 %2, %offset
  %4 = and i32 %3, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chip_gpio_set(ptr noundef %c, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %c) #7
  %shl = shl nuw i32 1, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %shl
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call, i32 noundef 730, i32 noundef %shl, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zl38_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %fmt, 65295
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %0)
  %1 = icmp eq i32 %0, 4097
  br i1 %1, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.zl38_codec_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 610, i32 noundef 65520, i32 noundef 33264, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zl38_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
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
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %arrayidx = getelementptr %struct.zl38_codec_priv, ptr %3, i32 0, i32 2, i32 %lnot.ext
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.end, label %entry.skip_setup_crit_edge

entry.skip_setup_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_setup

if.end:                                           ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end.cleanup_crit_edge [
    i32 8000, label %if.end.sw.epilog_crit_edge
    i32 16000, label %sw.bb3
    i32 48000, label %sw.bb4
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %if.end.sw.epilog_crit_edge
  %fsrate.0 = phi i32 [ 6, %sw.bb4 ], [ 2, %sw.bb3 ], [ 1, %if.end.sw.epilog_crit_edge ]
  %regmap = getelementptr inbounds %struct.zl38_codec_priv, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 610, i32 noundef 7, i32 noundef %fsrate.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %sw.epilog
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %val.i, align 4, !annotation !87
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 6, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.zl38_software_reset.exit.thread_crit_edge

if.end8.zl38_software_reset.exit.thread_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl38_software_reset.exit.thread

if.end.i:                                         ; preds = %if.end8
  tail call void @msleep(i32 noundef 50) #7
  %call1.i = tail call i64 @ktime_get() #7
  %add.i.i = add i64 %call1.i, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 229) #7
  %call1153.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 6, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1153.i)
  %tobool12.not54.i = icmp eq i32 %call1153.i, 0
  br i1 %tobool12.not54.i, label %if.end.i.lor.lhs.false.i_crit_edge, label %if.end.i.zl38_software_reset.exit.thread_crit_edge

if.end.i.zl38_software_reset.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl38_software_reset.exit.thread

if.end.i.lor.lhs.false.i_crit_edge:               ; preds = %if.end.i
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then24.i.lor.lhs.false.i_crit_edge, %if.end.i.lor.lhs.false.i_crit_edge
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  %and.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call17.i = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call17.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call17.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then24.i

if.then24.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #7
  %call11.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 6, ptr noundef nonnull %val.i) #7
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.then24.i.lor.lhs.false.i_crit_edge, label %if.then24.i.zl38_software_reset.exit.thread_crit_edge

if.then24.i.zl38_software_reset.exit.thread_crit_edge: ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl38_software_reset.exit.thread

if.then24.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %call21.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 6, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool26.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool26.not.i, label %for.end.i.lor.rhs.i_crit_edge, label %for.end.i.zl38_software_reset.exit.thread_crit_edge

for.end.i.zl38_software_reset.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl38_software_reset.exit.thread

for.end.i.lor.rhs.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %for.end.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i, align 4
  %and27.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %zl38_software_reset.exit, label %lor.rhs.i.zl38_software_reset.exit.thread_crit_edge

lor.rhs.i.zl38_software_reset.exit.thread_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zl38_software_reset.exit.thread

zl38_software_reset.exit.thread:                  ; preds = %lor.rhs.i.zl38_software_reset.exit.thread_crit_edge, %for.end.i.zl38_software_reset.exit.thread_crit_edge, %if.then24.i.zl38_software_reset.exit.thread_crit_edge, %if.end.i.zl38_software_reset.exit.thread_crit_edge, %if.end8.zl38_software_reset.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call1153.i, %if.end.i.zl38_software_reset.exit.thread_crit_edge ], [ -110, %lor.rhs.i.zl38_software_reset.exit.thread_crit_edge ], [ %call21.i, %for.end.i.zl38_software_reset.exit.thread_crit_edge ], [ %call.i.i, %if.end8.zl38_software_reset.exit.thread_crit_edge ], [ %call11.i, %if.then24.i.zl38_software_reset.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup

zl38_software_reset.exit:                         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %skip_setup

skip_setup:                                       ; preds = %zl38_software_reset.exit, %entry.skip_setup_crit_edge
  %idxprom = zext i1 %cmp to i32
  %arrayidx16 = getelementptr %struct.zl38_codec_priv, ptr %3, i32 0, i32 2, i32 %idxprom
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %arrayidx16, align 1
  br label %cleanup

cleanup:                                          ; preds = %skip_setup, %zl38_software_reset.exit.thread, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %skip_setup ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i, %sw.epilog.cleanup_crit_edge ], [ %retval.0.i.ph, %zl38_software_reset.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @zl38_hw_free(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #6 align 64 {
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
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %idxprom = zext i1 %cmp to i32
  %arrayidx = getelementptr %struct.zl38_codec_priv, ptr %3, i32 0, i32 2, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !42, !43, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__initcall__kmod_snd_soc_zl38060__240_632_zl38060_spi_driver_init6, !1, !"__initcall__kmod_snd_soc_zl38060__240_632_zl38060_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/zl38060.c", i32 632, i32 1}
!2 = !{ptr @__exitcall_zl38060_spi_driver_exit, !1, !"__exitcall_zl38060_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description241, !4, !"__UNIQUE_ID_description241", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/zl38060.c", i32 634, i32 1}
!5 = !{ptr @__UNIQUE_ID_author242, !6, !"__UNIQUE_ID_author242", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/zl38060.c", i32 635, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/zl38060.c", i32 636, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/zl38060.c", i32 626, i32 11}
!12 = !{ptr @zl38060_spi_driver, !13, !"zl38060_spi_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/zl38060.c", i32 624, i32 26}
!14 = !{ptr @zl38_spi_ids, !15, !"zl38_spi_ids", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/zl38060.c", i32 618, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/zl38060.c", i32 557, i32 44}
!18 = !{ptr @zl38_spi_probe._key, !19, !"_key", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/zl38060.c", i32 575, i32 17}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @zl38_spi_probe.lock_key, !22, !"lock_key", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/zl38060.c", i32 593, i32 8}
!23 = !{ptr @zl38_spi_probe.request_key, !22, !"request_key", i1 false, i1 false}
!24 = !{ptr @zl38_regmap_bus, !25, !"zl38_regmap_bus", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/zl38060.c", i32 534, i32 32}
!26 = !{ptr @zl38_regmap_conf, !27, !"zl38_regmap_conf", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/zl38060.c", i32 541, i32 35}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/zl38060.c", i32 178, i32 35}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/ihex.h", i32 76, i32 3}
!32 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @request_ihex_firmware._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @request_ihex_firmware._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/zl38060.c", i32 134, i32 9}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/zl38060.c", i32 464, i32 2}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @zl38_check_revision._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @zl38_check_revision._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/zl38060.c", i32 468, i32 3}
!48 = !{ptr @zl38_check_revision._entry.13, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @zl38_check_revision._entry_ptr.15, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @template_chip, !51, !"template_chip", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/zl38060.c", i32 431, i32 31}
!52 = !{ptr @cp_config_stereo_bypass, !53, !"cp_config_stereo_bypass", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/zl38060.c", i32 328, i32 34}
!54 = !{ptr @zl38_component_dev, !55, !"zl38_component_dev", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/zl38060.c", i32 382, i32 46}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/zl38060.c", i32 369, i32 2}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/zl38060.c", i32 370, i32 2}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/zl38060.c", i32 372, i32 2}
!62 = !{ptr @zl38_dapm_widgets, !63, !"zl38_dapm_widgets", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/zl38060.c", i32 368, i32 41}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/zl38060.c", i32 376, i32 19}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/zl38060.c", i32 379, i32 4}
!68 = !{ptr @zl38_dapm_routes, !69, !"zl38_dapm_routes", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/zl38060.c", i32 375, i32 40}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/zl38060.c", i32 347, i32 10}
!72 = !{ptr @zl38_dai, !73, !"zl38_dai", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/zl38060.c", i32 346, i32 34}
!74 = !{ptr @zl38_dai_ops, !75, !"zl38_dai_ops", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/zl38060.c", i32 340, i32 37}
!76 = !{ptr @zl38_dt_ids, !77, !"zl38_dt_ids", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/zl38060.c", i32 612, i32 34}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{!"auto-init"}
!88 = !{i8 0, i8 2}
