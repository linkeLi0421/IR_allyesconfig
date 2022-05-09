; ModuleID = '/llk/IR_all_yes/sound/soc/bcm/bcm2835-i2s.c_pt.bc'
source_filename = "../sound/soc/bcm/bcm2835-i2s.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.95, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.95 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.bcm2835_i2s_dev = type { ptr, [2 x %struct.snd_dmaengine_dai_dma_data], i32, i32, i32, i32, i32, i32, ptr, ptr, i8, i32 }
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

@__initcall__kmod_snd_soc_bcm2835_i2s__246_930_bcm2835_i2s_driver_init6 = internal global ptr @bcm2835_i2s_driver_init, section ".initcall6.init", align 4
@bcm2835_i2s_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm2835_i2s_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm2835_i2s_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm2835_i2s_driver_exit = internal global ptr @bcm2835_i2s_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias247 = internal constant [47 x i8] c"snd_soc_bcm2835_i2s.alias=platform:bcm2835-i2s\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [54 x i8] c"snd_soc_bcm2835_i2s.description=BCM2835 I2S interface\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [66 x i8] c"snd_soc_bcm2835_i2s.author=Florian Meier <florian.meier@koalo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [59 x i8] c"snd_soc_bcm2835_i2s.file=sound/soc/bcm/snd-soc-bcm2835-i2s\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [35 x i8] c"snd_soc_bcm2835_i2s.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bcm2835-i2s\00", [20 x i8] zeroinitializer }, align 32
@bcm2835_i2s_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bcm2835_i2s_probe.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_soc_bcm2835_i2s\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm2835_i2s_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/bcm/bcm2835-i2s.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"could not get clk: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@bcm2835_i2s_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.2, ptr @.str.3, i32 848, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm2835_i2s_probe._entry_ptr = internal global ptr @bcm2835_i2s_probe._entry, section ".printk_index", align 4
@bcm2835_i2s_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bcm2835_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr @bcm2835_i2s_volatile_reg, ptr @bcm2835_i2s_precious_reg, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"bcm2835_i2s:858:(&bcm2835_regmap_config)->lock\00", [49 x i8] zeroinitializer }, align 32
@bcm2835_i2s_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 865, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not get DMA-register address\0A\00", [60 x i8] zeroinitializer }, align 32
@bcm2835_i2s_probe._entry_ptr.10 = internal global ptr @bcm2835_i2s_probe._entry.8, section ".printk_index", align 4
@bcm2835_i2s_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.17, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@bcm2835_i2s_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @bcm2835_i2s_dai_probe, ptr null, ptr null, ptr null, ptr @bcm2835_i2s_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 1092, i32 1073741824, i32 8000, i32 384000, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 1092, i32 1073741824, i32 8000, i32 384000, i32 2, i32 2, i32 0 }, i8 -96, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@bcm2835_i2s_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 902, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not register DAI: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@bcm2835_i2s_probe._entry_ptr.13 = internal global ptr @bcm2835_i2s_probe._entry.11, section ".printk_index", align 4
@bcm2835_i2s_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 908, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not register PCM: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@bcm2835_i2s_probe._entry_ptr.16 = internal global ptr @bcm2835_i2s_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcm2835-i2s-comp\00", [47 x i8] zeroinitializer }, align 32
@bcm2835_i2s_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr @bcm2835_i2s_set_dai_bclk_ratio, ptr @bcm2835_i2s_set_dai_fmt, ptr null, ptr @bcm2835_i2s_set_dai_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm2835_i2s_startup, ptr @bcm2835_i2s_shutdown, ptr @bcm2835_i2s_hw_params, ptr null, ptr @bcm2835_i2s_prepare, ptr @bcm2835_i2s_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@bcm2835_i2s_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 508, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Unstable consumer config detected, L/R may be swapped\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bcm2835_i2s_hw_params\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bcm2835_i2s_hw_params._entry_ptr = internal global ptr @bcm2835_i2s_hw_params._entry, section ".printk_index", align 4
@bcm2835_i2s_hw_params.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.3, ptr @.str.21, i8 0, i8 -107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"slots: %d width: %d rx mask: 0x%02x tx_mask: 0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@bcm2835_i2s_hw_params.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.3, ptr @.str.22, i8 0, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"frame len: %d sync len: %d data len: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@bcm2835_i2s_hw_params.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.3, ptr @.str.23, i8 0, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rx pos: %d,%d tx pos: %d,%d\0A\00", [35 x i8] zeroinitializer }, align 32
@bcm2835_i2s_hw_params.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.3, ptr @.str.24, i8 0, i8 -105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sampling rate: %d bclk rate: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@bcm2835_i2s_hw_params.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.3, ptr @.str.25, i8 0, i8 -103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"CLKM: %d CLKI: %d FSM: %d FSI: %d frame start: %s edge\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"falling\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rising\00", [25 x i8] zeroinitializer }, align 32
@bcm2835_i2s_clear_fifos._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 208, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"I2S SYNC error!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bcm2835_i2s_clear_fifos\00", [40 x i8] zeroinitializer }, align 32
@bcm2835_i2s_clear_fifos._entry_ptr = internal global ptr @bcm2835_i2s_clear_fifos._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 16384]
@__sancov_gen_cov_switch_values.30 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.34 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 16384]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 16384]
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"bcm2835_i2s_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 922, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 925, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [21 x i8] c"bcm2835_i2s_of_match\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 915, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 846, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 848, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [22 x i8] c"bcm2835_regmap_config\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 813, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 857, i32 20 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 865, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [22 x i8] c"bcm2835_i2s_component\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 823, i32 46 }
@___asan_gen_.85 = private unnamed_addr constant [16 x i8] c"bcm2835_i2s_dai\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 762, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 902, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 908, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 824, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c"bcm2835_i2s_dai_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 740, i32 37 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 507, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 594, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 598, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 601, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 604, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 607, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.146 = private constant [31 x i8] c"../sound/soc/bcm/bcm2835-i2s.c\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 208, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_alias247, ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_bcm2835_i2s_driver_exit, ptr @__initcall__kmod_snd_soc_bcm2835_i2s__246_930_bcm2835_i2s_driver_init6, ptr @bcm2835_i2s_clear_fifos._entry, ptr @bcm2835_i2s_clear_fifos._entry_ptr, ptr @bcm2835_i2s_driver_exit, ptr @bcm2835_i2s_hw_params._entry, ptr @bcm2835_i2s_hw_params._entry_ptr, ptr @bcm2835_i2s_probe._entry, ptr @bcm2835_i2s_probe._entry.11, ptr @bcm2835_i2s_probe._entry.14, ptr @bcm2835_i2s_probe._entry.8, ptr @bcm2835_i2s_probe._entry_ptr, ptr @bcm2835_i2s_probe._entry_ptr.10, ptr @bcm2835_i2s_probe._entry_ptr.13, ptr @bcm2835_i2s_probe._entry_ptr.16, ptr @bcm2835_i2s_driver, ptr @.str, ptr @bcm2835_i2s_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @bcm2835_i2s_probe._key, ptr @bcm2835_regmap_config, ptr @.str.7, ptr @.str.9, ptr @bcm2835_i2s_component, ptr @bcm2835_i2s_dai, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @bcm2835_i2s_dai_ops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_i2s_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_i2s_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_i2s_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_i2s_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_i2s_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_i2s_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_i2s_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_i2s_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_i2s_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_i2s_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_i2s_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_i2s_clear_fifos._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_i2s_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm2835_i2s_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_i2s_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm2835_i2s_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_i2s_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 116, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk_prepared = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %call.i, i32 0, i32 10
  %0 = ptrtoint ptr %clk_prepared to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %clk_prepared, align 4
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #9
  %clk = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %call.i, i32 0, i32 9
  %1 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end22

if.then6:                                         ; preds = %if.end
  %cmp = icmp eq ptr %call3, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %do.body, label %do.end19

do.body:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_i2s_probe.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_i2s_probe, %if.then14)) #9
          to label %cleanup [label %if.then14], !srcloc !91

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_i2s_probe.__UNIQUE_ID_ddebug245, ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef -517) #9
  br label %cleanup

do.end19:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %2) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %call23 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %cmp.i135 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i135, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %call30 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call23, ptr noundef nonnull @bcm2835_regmap_config, ptr noundef nonnull @bcm2835_i2s_probe._key, ptr noundef nonnull @.str.7) #9
  %i2s_regmap = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %call.i, i32 0, i32 8
  %4 = ptrtoint ptr %i2s_regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call30, ptr %i2s_regmap, align 4
  %cmp.i136 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i136, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call30 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end27
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call.i137 = tail call ptr @__of_get_address(ptr noundef %7, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #9
  %tobool39.not = icmp eq ptr %call.i137, null
  br i1 %tobool39.not, label %do.end43, label %if.end45

do.end43:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.end45:                                         ; preds = %if.end36
  %8 = ptrtoint ptr %call.i137 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i137, align 4
  %add = add i32 %9, 4
  %dma_data = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %dma_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %dma_data, align 4
  %arrayidx50 = getelementptr %struct.bcm2835_i2s_dev, ptr %call.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %arrayidx50, align 4
  %addr_width = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %call.i, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %addr_width to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %addr_width, align 4
  %addr_width56 = getelementptr %struct.bcm2835_i2s_dev, ptr %call.i, i32 0, i32 1, i32 1, i32 1
  %13 = ptrtoint ptr %addr_width56 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %addr_width56, align 4
  %maxburst = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %call.i, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %maxburst, align 4
  %maxburst61 = getelementptr %struct.bcm2835_i2s_dev, ptr %call.i, i32 0, i32 1, i32 1, i32 2
  %15 = ptrtoint ptr %maxburst61 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %maxburst61, align 4
  %flags = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %call.i, i32 0, i32 1, i32 0, i32 6
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %flags, align 4
  %flags66 = getelementptr %struct.bcm2835_i2s_dev, ptr %call.i, i32 0, i32 1, i32 1, i32 6
  %17 = ptrtoint ptr %flags66 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %flags66, align 4
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call71 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @bcm2835_i2s_component, ptr noundef nonnull @bcm2835_i2s_dai, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end78, label %do.end76

do.end76:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %call71) #12
  br label %cleanup

if.end78:                                         ; preds = %if.end45
  %call80 = tail call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev1, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end78.cleanup_crit_edge, label %do.end85

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end85:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call80) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end85, %if.end78.cleanup_crit_edge, %do.end76, %do.end43, %if.then33, %if.then25, %do.end19, %if.then14, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then25 ], [ %5, %if.then33 ], [ %call71, %do.end76 ], [ %call80, %do.end85 ], [ -22, %do.end43 ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.then14 ], [ %2, %do.end19 ], [ 0, %if.end78.cleanup_crit_edge ], [ -517, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bcm2835_i2s_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.fshl.i32(i32 %reg, i32 %reg, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %0)
  %1 = icmp ult i32 %0, 9
  %switch.cast = trunc i32 %0 to i9
  %switch.downshift = lshr i9 -125, %switch.cast
  %2 = and i9 %switch.downshift, 1
  %3 = sext i9 %2 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %switch.masked = icmp ne i9 %2, 0
  %retval.0 = select i1 %1, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bcm2835_i2s_precious_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %reg)
  %cond = icmp eq i32 %reg, 4
  ret i1 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm2835_i2s_dai_probe(ptr nocapture noundef %dai) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dma_data = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 1
  %arrayidx2 = getelementptr %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 1, i32 1
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %4 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dma_data, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %5 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx2, ptr %capture_dma_data.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm2835_i2s_set_dai_bclk_ratio(ptr nocapture noundef readonly %dai, i32 noundef %ratio) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ratio)
  %tobool.not = icmp eq i32 %ratio, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tdm_slots = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %tdm_slots to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tdm_slots, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %ratio)
  %cmp = icmp ugt i32 %ratio, 1024
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %tdm_slots3 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %tdm_slots3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %tdm_slots3, align 4
  %rx_mask = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %rx_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %rx_mask, align 4
  %tx_mask = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %tx_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %tx_mask, align 4
  %div12 = lshr i32 %ratio, 1
  %slot_width = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %slot_width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div12, ptr %slot_width, align 4
  %frame_length = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %frame_length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %ratio, ptr %frame_length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end2 ], [ 0, %if.then ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm2835_i2s_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %fmt1 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %fmt, ptr %fmt1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_i2s_set_dai_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slots)
  %tobool.not = icmp eq i32 %slots, 0
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then:                                          ; preds = %entry
  %4 = or i32 %width, %slots
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not = icmp sgt i32 %4, -1
  br i1 %.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %sub3 = sub nsw i32 32, %slots
  %shr = lshr i32 -1, %sub3
  %and4 = and i32 %shr, %rx_mask
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %and4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp12.not = icmp eq i32 %call.i.i, 2
  br i1 %cmp12.not, label %cond.false.i135, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.false.i135:                                  ; preds = %if.end
  %and10 = and i32 %shr, %tx_mask
  %call.i.i134 = tail call i32 @__sw_hweight32(i32 noundef %and10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i134)
  %cmp15.not = icmp ne i32 %call.i.i134, 2
  %mul = mul i32 %width, %slots
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %mul)
  %cmp18 = icmp sgt i32 %mul, 1024
  %or.cond42 = or i1 %cmp18, %cmp15.not
  br i1 %or.cond42, label %cond.false.i135.cleanup_crit_edge, label %cond.false.i135.if.end21_crit_edge

cond.false.i135.if.end21_crit_edge:               ; preds = %cond.false.i135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

cond.false.i135.cleanup_crit_edge:                ; preds = %cond.false.i135
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %cond.false.i135.if.end21_crit_edge, %entry.if.end21_crit_edge
  %mul24.pre-phi = phi i32 [ %mul, %cond.false.i135.if.end21_crit_edge ], [ 0, %entry.if.end21_crit_edge ]
  %rx_mask.addr.0 = phi i32 [ %and4, %cond.false.i135.if.end21_crit_edge ], [ %rx_mask, %entry.if.end21_crit_edge ]
  %tx_mask.addr.0 = phi i32 [ %and10, %cond.false.i135.if.end21_crit_edge ], [ %tx_mask, %entry.if.end21_crit_edge ]
  %tdm_slots = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %tdm_slots to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %slots, ptr %tdm_slots, align 4
  %rx_mask22 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %rx_mask22 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %rx_mask.addr.0, ptr %rx_mask22, align 4
  %tx_mask23 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %tx_mask23 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %tx_mask.addr.0, ptr %tx_mask23, align 4
  %slot_width = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %slot_width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %width, ptr %slot_width, align 4
  %frame_length = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %frame_length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul24.pre-phi, ptr %frame_length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %cond.false.i135.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %cond.false.i135.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_i2s_startup(ptr nocapture noundef readnone %substream, ptr noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @snd_soc_dai_active(ptr noundef %dai) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk_prepared.i = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %clk_prepared.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %clk_prepared.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.bcm2835_i2s_stop_clock.exit_crit_edge, label %if.then.i

if.end.bcm2835_i2s_stop_clock.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_i2s_stop_clock.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %clk.i = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  br label %bcm2835_i2s_stop_clock.exit

bcm2835_i2s_stop_clock.exit:                      ; preds = %if.then.i, %if.end.bcm2835_i2s_stop_clock.exit_crit_edge
  %8 = ptrtoint ptr %clk_prepared.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %clk_prepared.i, align 4
  %i2s_regmap = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %i2s_regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2s_regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %11 = ptrtoint ptr %i2s_regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2s_regmap, align 4
  %call.i8 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 0, i32 noundef 33554432, i32 noundef 33554432, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %bcm2835_i2s_stop_clock.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_i2s_shutdown(ptr nocapture noundef readonly %substream, ptr noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  %..i = select i1 %cmp.i, i32 2, i32 4
  %i2s_regmap.i = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %i2s_regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2s_regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef %..i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call1.i = tail call i32 @snd_soc_dai_active(ptr noundef %dai) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.bcm2835_i2s_stop.exit_crit_edge

entry.bcm2835_i2s_stop.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_i2s_stop.exit

land.lhs.true.i:                                  ; preds = %entry
  %fmt.i = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fmt.i, align 4
  %and.i = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %land.lhs.true.i.bcm2835_i2s_stop.exit_crit_edge

land.lhs.true.i.bcm2835_i2s_stop.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_i2s_stop.exit

if.then3.i:                                       ; preds = %land.lhs.true.i
  %clk_prepared.i.i = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %clk_prepared.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %clk_prepared.i.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %if.then3.i.bcm2835_i2s_stop_clock.exit.i_crit_edge, label %if.then.i.i

if.then3.i.bcm2835_i2s_stop_clock.exit.i_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_i2s_stop_clock.exit.i

if.then.i.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %clk.i.i = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %13) #9
  tail call void @clk_unprepare(ptr noundef %13) #9
  br label %bcm2835_i2s_stop_clock.exit.i

bcm2835_i2s_stop_clock.exit.i:                    ; preds = %if.then.i.i, %if.then3.i.bcm2835_i2s_stop_clock.exit.i_crit_edge
  %14 = ptrtoint ptr %clk_prepared.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %clk_prepared.i.i, align 4
  br label %bcm2835_i2s_stop.exit

bcm2835_i2s_stop.exit:                            ; preds = %bcm2835_i2s_stop_clock.exit.i, %land.lhs.true.i.bcm2835_i2s_stop.exit_crit_edge, %entry.bcm2835_i2s_stop.exit_crit_edge
  %call1 = tail call i32 @snd_soc_dai_active(ptr noundef %dai) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %bcm2835_i2s_stop.exit.cleanup_crit_edge

bcm2835_i2s_stop.exit.cleanup_crit_edge:          ; preds = %bcm2835_i2s_stop.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %bcm2835_i2s_stop.exit
  %15 = ptrtoint ptr %i2s_regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2s_regmap.i, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %clk_prepared.i = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 10
  %17 = ptrtoint ptr %clk_prepared.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %clk_prepared.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i7 = icmp eq i8 %18, 0
  br i1 %tobool.not.i7, label %if.end.bcm2835_i2s_stop_clock.exit_crit_edge, label %if.then.i

if.end.bcm2835_i2s_stop_clock.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_i2s_stop_clock.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %clk.i = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 9
  %19 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %20) #9
  tail call void @clk_unprepare(ptr noundef %20) #9
  br label %bcm2835_i2s_stop_clock.exit

bcm2835_i2s_stop_clock.exit:                      ; preds = %if.then.i, %if.end.bcm2835_i2s_stop_clock.exit_crit_edge
  %21 = ptrtoint ptr %clk_prepared.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %clk_prepared.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %bcm2835_i2s_stop_clock.exit, %bcm2835_i2s_stop.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_i2s_hw_params(ptr nocapture noundef readnone %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %csreg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %csreg) #9
  %4 = ptrtoint ptr %csreg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %csreg, align 4, !annotation !93
  %i2s_regmap = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %i2s_regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2s_regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %csreg) #9
  %7 = ptrtoint ptr %csreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %csreg, align 4
  %and = and i32 %8, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end.if.then.i.i.i_crit_edge

if.end.if.then.i.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.end.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %10, %if.end.if.then.i.i.i_crit_edge ], [ %13, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %11 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #9, !range !94
  %add.i.i.i = or i32 %11, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.end
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.1.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #9
  %tdm_slots = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %tdm_slots to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tdm_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not = icmp eq i32 %15, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  %slot_width6 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %slot_width6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slot_width6, align 4
  %frame_length7 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %frame_length7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frame_length7, align 4
  %rx_mask8 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %rx_mask8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_mask8, align 4
  %tx_mask9 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 5
  %22 = ptrtoint ptr %tx_mask9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_mask9, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i, align 4
  %mul = mul i32 %25, %19
  br label %if.end20

if.else:                                          ; preds = %params_width.exit
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i.i386 = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i386, label %for.inc.i.i.i393, label %if.else.if.then.i.i.i390_crit_edge

if.else.if.then.i.i.i390_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i390

if.then.i.i.i390:                                 ; preds = %for.inc.i.i.i393.if.then.i.i.i390_crit_edge, %if.else.if.then.i.i.i390_crit_edge
  %i.09.lcssa.i.i.i387 = phi i32 [ 0, %if.else.if.then.i.i.i390_crit_edge ], [ 32, %for.inc.i.i.i393.if.then.i.i.i390_crit_edge ]
  %.lcssa.i.i.i388 = phi i32 [ %27, %if.else.if.then.i.i.i390_crit_edge ], [ %30, %for.inc.i.i.i393.if.then.i.i.i390_crit_edge ]
  %28 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i388, i1 true) #9, !range !94
  %add.i.i.i389 = or i32 %28, %i.09.lcssa.i.i.i387
  br label %params_width.exit396

for.inc.i.i.i393:                                 ; preds = %if.else
  %arrayidx.1.i.i.i391 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx.1.i.i.i391 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.1.i.i.i391, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.1.i.i.i392 = icmp eq i32 %30, 0
  br i1 %tobool.not.1.i.i.i392, label %for.inc.i.i.i393.params_width.exit396_crit_edge, label %for.inc.i.i.i393.if.then.i.i.i390_crit_edge

for.inc.i.i.i393.if.then.i.i.i390_crit_edge:      ; preds = %for.inc.i.i.i393
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i390

for.inc.i.i.i393.params_width.exit396_crit_edge:  ; preds = %for.inc.i.i.i393
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_width.exit396

params_width.exit396:                             ; preds = %for.inc.i.i.i393.params_width.exit396_crit_edge, %if.then.i.i.i390
  %retval.0.i.i.i394 = phi i32 [ %add.i.i.i389, %if.then.i.i.i390 ], [ 0, %for.inc.i.i.i393.params_width.exit396_crit_edge ]
  %call1.i395 = call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i394) #9
  %call13 = call i32 @snd_soc_params_to_frame_size(ptr noundef %params) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %params_width.exit396.cleanup_crit_edge, label %if.end15

params_width.exit396.cleanup_crit_edge:           ; preds = %params_width.exit396
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %params_width.exit396
  %call16 = call i32 @snd_soc_params_to_bclk(ptr noundef %params) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end15.cleanup_crit_edge, label %if.end15.if.end20_crit_edge

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %if.end15.if.end20_crit_edge, %if.then4
  %rx_mask.0 = phi i32 [ %21, %if.then4 ], [ 3, %if.end15.if.end20_crit_edge ]
  %tx_mask.0 = phi i32 [ %23, %if.then4 ], [ 3, %if.end15.if.end20_crit_edge ]
  %bclk_rate.0 = phi i32 [ %mul, %if.then4 ], [ %call16, %if.end15.if.end20_crit_edge ]
  %frame_length.0 = phi i32 [ %19, %if.then4 ], [ %call13, %if.end15.if.end20_crit_edge ]
  %slot_width.0 = phi i32 [ %17, %if.then4 ], [ %call1.i395, %if.end15.if.end20_crit_edge ]
  %slots.0 = phi i32 [ %15, %if.then4 ], [ 2, %if.end15.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %slot_width.0, i32 %call1.i)
  %cmp21 = icmp ult i32 %slot_width.0, %call1.i
  br i1 %cmp21, label %if.end20.cleanup_crit_edge, label %if.end23

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  %fmt = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 2
  %31 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fmt, align 4
  %and24 = and i32 %32, 61440
  %33 = add nsw i32 %and24, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %33)
  %34 = icmp ult i32 %33, 16384
  br i1 %34, label %switch.lookup, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %if.end23
  %35 = lshr exact i32 %33, 12
  %36 = and i32 %33, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %switch.idx.cast.not = icmp eq i32 %36, 0
  %switch.cast = trunc i32 %35 to i4
  %switch.downshift = lshr i4 -4, %switch.cast
  %37 = and i4 %switch.downshift, 1
  %38 = sext i4 %37 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %switch.masked = icmp ne i4 %37, 0
  br i1 %switch.idx.cast.not, label %switch.lookup.if.end49_crit_edge, label %land.lhs.true

switch.lookup.if.end49_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

land.lhs.true:                                    ; preds = %switch.lookup
  %clk_prepared = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 10
  %39 = ptrtoint ptr %clk_prepared to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %clk_prepared, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool33.not = icmp eq i8 %40, 0
  br i1 %tobool33.not, label %land.lhs.true.if.end39_crit_edge, label %lor.lhs.false

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

lor.lhs.false:                                    ; preds = %land.lhs.true
  %clk_rate = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 11
  %41 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %clk_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %bclk_rate.0)
  %cmp34.not = icmp eq i32 %42, %bclk_rate.0
  br i1 %cmp34.not, label %lor.lhs.false.if.end49_crit_edge, label %bcm2835_i2s_stop_clock.exit

lor.lhs.false.if.end49_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

bcm2835_i2s_stop_clock.exit:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %clk.i = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 9
  %43 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clk.i, align 4
  call void @clk_disable(ptr noundef %44) #9
  call void @clk_unprepare(ptr noundef %44) #9
  %45 = ptrtoint ptr %clk_prepared to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %clk_prepared, align 4
  br label %if.end39

if.end39:                                         ; preds = %bcm2835_i2s_stop_clock.exit, %land.lhs.true.if.end39_crit_edge
  %clk_rate40 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 11
  %46 = ptrtoint ptr %clk_rate40 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %clk_rate40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %bclk_rate.0)
  %cmp41.not = icmp eq i32 %47, %bclk_rate.0
  br i1 %cmp41.not, label %if.end39.if.end48_crit_edge, label %if.then42

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then42:                                        ; preds = %if.end39
  %clk = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 9
  %48 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clk, align 4
  %call43 = call i32 @clk_set_rate(ptr noundef %49, i32 noundef %bclk_rate.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.then42.cleanup_crit_edge

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end46:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %clk_rate40 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %bclk_rate.0, ptr %clk_rate40, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %if.end39.if.end48_crit_edge
  %51 = ptrtoint ptr %clk_prepared to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %clk_prepared, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i398 = icmp eq i8 %52, 0
  br i1 %tobool.not.i398, label %if.end.i, label %if.end48.if.end49_crit_edge

if.end48.if.end49_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.end.i:                                         ; preds = %if.end48
  %53 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fmt, align 4
  %55 = trunc i32 %54 to i16
  %trunc.i = and i16 %55, -4096
  %56 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc.i, label %if.end.i.if.end49_crit_edge [
    i16 16384, label %if.end.i.sw.bb.i_crit_edge
    i16 8192, label %if.end.i.sw.bb.i_crit_edge435
  ]

if.end.i.sw.bb.i_crit_edge435:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.i.if.end49_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge435
  %clk.i399 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 9
  %57 = ptrtoint ptr %clk.i399 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %clk.i399, align 4
  %call.i.i = call i32 @clk_prepare(ptr noundef %58) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb.i.clk_prepare_enable.exit.i_crit_edge

sw.bb.i.clk_prepare_enable.exit.i_crit_edge:      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %sw.bb.i
  %call1.i.i = call i32 @clk_enable(ptr noundef %58) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.clk_prepare_enable.exit.i_crit_edge, label %if.then3.i.i

if.end.i.i.clk_prepare_enable.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_unprepare(ptr noundef %58) #9
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.end.i.i.clk_prepare_enable.exit.i_crit_edge, %sw.bb.i.clk_prepare_enable.exit.i_crit_edge
  %59 = ptrtoint ptr %clk_prepared to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %clk_prepared, align 4
  br label %if.end49

if.end49:                                         ; preds = %clk_prepare_enable.exit.i, %if.end.i.if.end49_crit_edge, %if.end48.if.end49_crit_edge, %lor.lhs.false.if.end49_crit_edge, %switch.lookup.if.end49_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %call1.i)
  %cmp50 = icmp ugt i32 %call1.i, 23
  %spec.select = select i1 %cmp50, i32 49152, i32 16384
  %sub = add i32 %call1.i, 8
  %and53 = and i32 %sub, 15
  %or54 = or i32 %spec.select, %and53
  %or55 = mul nuw i32 %or54, 65537
  %60 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %fmt, align 4
  %and57 = and i32 %61, 15
  %62 = zext i32 %and57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %and57, label %if.end49.cleanup_crit_edge [
    i32 1, label %sw.bb58
    i32 3, label %sw.bb63
    i32 2, label %sw.bb70
    i32 4, label %if.end49.sw.epilog85_crit_edge
    i32 5, label %sw.bb83
  ]

if.end49.sw.epilog85_crit_edge:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog85

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb58:                                          ; preds = %if.end49
  %and59 = and i32 %slots.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end62, label %sw.bb58.cleanup_crit_edge

sw.bb58.cleanup_crit_edge:                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end62:                                         ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #11
  %shr = lshr i32 %slots.0, 1
  %div = sdiv i32 %frame_length.0, 2
  br label %sw.epilog85

sw.bb63:                                          ; preds = %if.end49
  %and64 = and i32 %slots.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end67, label %sw.bb63.cleanup_crit_edge

sw.bb63.cleanup_crit_edge:                        ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end67:                                         ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #11
  %shr68 = lshr i32 %slots.0, 1
  %div69 = sdiv i32 %frame_length.0, 2
  br label %sw.epilog85

sw.bb70:                                          ; preds = %if.end49
  %and71 = and i32 %slots.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  %and75 = and i32 %frame_length.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  %or.cond = select i1 %tobool72.not, i1 %tobool76.not, i1 false
  br i1 %or.cond, label %if.end78, label %sw.bb70.cleanup_crit_edge

sw.bb70.cleanup_crit_edge:                        ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end78:                                         ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #11
  %shr79 = lshr i32 %slots.0, 1
  %sub80 = sub i32 %slot_width.0, %call1.i
  %div81 = sdiv i32 %frame_length.0, 2
  br label %sw.epilog85

sw.bb83:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog85

sw.epilog85:                                      ; preds = %sw.bb83, %if.end78, %if.end67, %if.end62, %if.end49.sw.epilog85_crit_edge
  %frame_start_falling_edge.0.off0 = phi i1 [ false, %sw.bb83 ], [ false, %if.end78 ], [ false, %if.end67 ], [ true, %if.end62 ], [ false, %if.end49.sw.epilog85_crit_edge ]
  %odd_slot_offset.0 = phi i32 [ 0, %sw.bb83 ], [ %shr79, %if.end78 ], [ %shr68, %if.end67 ], [ %shr, %if.end62 ], [ 0, %if.end49.sw.epilog85_crit_edge ]
  %framesync_length.0 = phi i32 [ 1, %sw.bb83 ], [ %div81, %if.end78 ], [ %div69, %if.end67 ], [ %div, %if.end62 ], [ 1, %if.end49.sw.epilog85_crit_edge ]
  %data_delay.0 = phi i32 [ 0, %sw.bb83 ], [ %sub80, %if.end78 ], [ 0, %if.end67 ], [ 1, %if.end62 ], [ 1, %if.end49.sw.epilog85_crit_edge ]
  %63 = call i32 @llvm.cttz.i32(i32 %rx_mask.0, i1 true) #9, !range !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_mask.0)
  %iszero.i = icmp eq i32 %rx_mask.0, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %odd_slot_offset.0)
  %tobool.not.i10.i = icmp eq i32 %odd_slot_offset.0, 0
  %and.i.i = and i32 %sub.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  %shr4.i.i = lshr i32 %sub.i, 1
  %add.i.i = select i1 %tobool1.not.i.i, i32 0, i32 %odd_slot_offset.0
  %spec.select.i.i = add nuw i32 %add.i.i, %shr4.i.i
  %retval.0.i.i = select i1 %tobool.not.i10.i, i32 %sub.i, i32 %spec.select.i.i
  %mul.i = mul i32 %retval.0.i.i, %slot_width.0
  %add.i = add i32 %mul.i, %data_delay.0
  %64 = call i32 @llvm.ctlz.i32(i32 %rx_mask.0, i1 true) #9, !range !94
  %sub.i.op.i = xor i32 %64, 31
  %sub2.i = select i1 %iszero.i, i32 -1, i32 %sub.i.op.i
  %and.i12.i = and i32 %sub2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool1.not.i13.i = icmp eq i32 %and.i12.i, 0
  %shr4.i14.i = lshr i32 %sub2.i, 1
  %add.i15.i = select i1 %tobool1.not.i13.i, i32 0, i32 %odd_slot_offset.0
  %spec.select.i16.i = add nuw i32 %add.i15.i, %shr4.i14.i
  %retval.0.i18.i = select i1 %tobool.not.i10.i, i32 %sub2.i, i32 %spec.select.i16.i
  %mul4.i = mul i32 %retval.0.i18.i, %slot_width.0
  %add5.i = add i32 %mul4.i, %data_delay.0
  %65 = call i32 @llvm.cttz.i32(i32 %tx_mask.0, i1 true) #9, !range !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_mask.0)
  %iszero.i400 = icmp eq i32 %tx_mask.0, 0
  %sub.i401 = select i1 %iszero.i400, i32 -1, i32 %65
  %and.i.i403 = and i32 %sub.i401, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i403)
  %tobool1.not.i.i404 = icmp eq i32 %and.i.i403, 0
  %shr4.i.i405 = lshr i32 %sub.i401, 1
  %add.i.i406 = select i1 %tobool1.not.i.i404, i32 0, i32 %odd_slot_offset.0
  %spec.select.i.i407 = add nuw i32 %add.i.i406, %shr4.i.i405
  %retval.0.i.i408 = select i1 %tobool.not.i10.i, i32 %sub.i401, i32 %spec.select.i.i407
  %mul.i409 = mul i32 %retval.0.i.i408, %slot_width.0
  %add.i410 = add i32 %mul.i409, %data_delay.0
  %66 = call i32 @llvm.ctlz.i32(i32 %tx_mask.0, i1 true) #9, !range !94
  %sub.i.op.i411 = xor i32 %66, 31
  %sub2.i412 = select i1 %iszero.i400, i32 -1, i32 %sub.i.op.i411
  %and.i12.i413 = and i32 %sub2.i412, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i413)
  %tobool1.not.i13.i414 = icmp eq i32 %and.i12.i413, 0
  %shr4.i14.i415 = lshr i32 %sub2.i412, 1
  %add.i15.i416 = select i1 %tobool1.not.i13.i414, i32 0, i32 %odd_slot_offset.0
  %spec.select.i16.i417 = add nuw i32 %add.i15.i416, %shr4.i14.i415
  %retval.0.i18.i418 = select i1 %tobool.not.i10.i, i32 %sub2.i412, i32 %spec.select.i16.i417
  %mul4.i419 = mul i32 %retval.0.i18.i418, %slot_width.0
  %add5.i420 = add i32 %mul4.i419, %data_delay.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool86.not = icmp eq i32 %add.i, 0
  br i1 %tobool86.not, label %land.lhs.true89, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %sw.epilog85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i410)
  %tobool88.not = icmp ne i32 %add.i410, 0
  %brmerge = or i1 %switch.masked, %tobool88.not
  br i1 %brmerge, label %lor.lhs.false87.if.end93_crit_edge, label %lor.lhs.false87.do.end_crit_edge

lor.lhs.false87.do.end_crit_edge:                 ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false87.if.end93_crit_edge:               ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

land.lhs.true89:                                  ; preds = %sw.epilog85
  br i1 %switch.masked, label %land.lhs.true89.if.end93_crit_edge, label %land.lhs.true89.do.end_crit_edge

land.lhs.true89.do.end_crit_edge:                 ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true89.if.end93_crit_edge:               ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

do.end:                                           ; preds = %land.lhs.true89.do.end_crit_edge, %lor.lhs.false87.do.end_crit_edge
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %68, ptr noundef nonnull @.str.18) #12
  br label %if.end93

if.end93:                                         ; preds = %do.end, %land.lhs.true89.if.end93_crit_edge, %lor.lhs.false87.if.end93_crit_edge
  %69 = ptrtoint ptr %i2s_regmap to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %i2s_regmap, align 4
  %shl95 = shl i32 %add.i, 20
  %or97 = or i32 %shl95, %or55
  %shl98 = shl i32 %add5.i, 4
  %or99 = or i32 %or97, %shl98
  %call100 = call i32 @regmap_write(ptr noundef %70, i32 noundef 12, i32 noundef %or99) #9
  %71 = ptrtoint ptr %i2s_regmap to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i2s_regmap, align 4
  %shl102 = shl i32 %add.i410, 20
  %or104 = or i32 %shl102, %or55
  %shl105 = shl i32 %add5.i420, 4
  %or106 = or i32 %or104, %shl105
  %call107 = call i32 @regmap_write(ptr noundef %72, i32 noundef 16, i32 noundef %or106) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call1.i)
  %cmp108 = icmp ult i32 %call1.i, 17
  %spec.select370 = select i1 %cmp108, i32 50331648, i32 0
  %sub112 = shl i32 %frame_length.0, 10
  %shl113 = add i32 %sub112, -1024
  %or114 = or i32 %shl113, %spec.select370
  %or115 = or i32 %or114, %framesync_length.0
  %or118 = or i32 %or115, 8388608
  %mode.1 = select i1 %switch.idx.cast.not, i32 %or118, i32 %or115
  %or122 = or i32 %mode.1, 2097152
  %mode.2 = select i1 %switch.masked, i32 %mode.1, i32 %or122
  %73 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fmt, align 4
  %and125 = lshr i32 %74, 8
  %75 = and i32 %and125, 15
  %76 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %75, label %if.end93.cleanup_crit_edge [
    i32 0, label %if.end93.sw.bb126_crit_edge
    i32 2, label %if.end93.sw.bb126_crit_edge436
    i32 3, label %if.end93.sw.epilog130_crit_edge
    i32 4, label %if.end93.sw.epilog130_crit_edge437
  ]

if.end93.sw.epilog130_crit_edge437:               ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog130

if.end93.sw.epilog130_crit_edge:                  ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog130

if.end93.sw.bb126_crit_edge436:                   ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb126

if.end93.sw.bb126_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb126

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb126:                                         ; preds = %if.end93.sw.bb126_crit_edge, %if.end93.sw.bb126_crit_edge436
  %or127 = or i32 %mode.2, 4194304
  br label %sw.epilog130

sw.epilog130:                                     ; preds = %sw.bb126, %if.end93.sw.epilog130_crit_edge, %if.end93.sw.epilog130_crit_edge437
  %mode.3 = phi i32 [ %mode.2, %if.end93.sw.epilog130_crit_edge ], [ %mode.2, %if.end93.sw.epilog130_crit_edge437 ], [ %or127, %sw.bb126 ]
  %77 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %75, label %sw.epilog130.cleanup_crit_edge [
    i32 0, label %sw.epilog130.sw.bb133_crit_edge
    i32 3, label %sw.epilog130.sw.bb133_crit_edge438
    i32 2, label %sw.epilog130.sw.bb138_crit_edge
    i32 4, label %sw.epilog130.sw.bb138_crit_edge439
  ]

sw.epilog130.sw.bb138_crit_edge439:               ; preds = %sw.epilog130
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb138

sw.epilog130.sw.bb138_crit_edge:                  ; preds = %sw.epilog130
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb138

sw.epilog130.sw.bb133_crit_edge438:               ; preds = %sw.epilog130
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb133

sw.epilog130.sw.bb133_crit_edge:                  ; preds = %sw.epilog130
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb133

sw.epilog130.cleanup_crit_edge:                   ; preds = %sw.epilog130
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb133:                                         ; preds = %sw.epilog130.sw.bb133_crit_edge, %sw.epilog130.sw.bb133_crit_edge438
  %or136 = or i32 %mode.3, 1048576
  br label %sw.epilog144

sw.bb138:                                         ; preds = %sw.epilog130.sw.bb138_crit_edge, %sw.epilog130.sw.bb138_crit_edge439
  %or141 = or i32 %mode.3, 1048576
  br label %sw.epilog144

sw.epilog144:                                     ; preds = %sw.bb138, %sw.bb133
  %or141.sink = phi i32 [ %or141, %sw.bb138 ], [ %mode.3, %sw.bb133 ]
  %mode.3.sink = phi i32 [ %mode.3, %sw.bb138 ], [ %or136, %sw.bb133 ]
  %spec.select372 = select i1 %frame_start_falling_edge.0.off0, i32 %mode.3.sink, i32 %or141.sink
  %78 = ptrtoint ptr %i2s_regmap to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %i2s_regmap, align 4
  %call146 = call i32 @regmap_write(ptr noundef %79, i32 noundef 8, i32 noundef %spec.select372) #9
  %80 = ptrtoint ptr %i2s_regmap to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %i2s_regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %81, i32 noundef 0, i32 noundef 672, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %82 = ptrtoint ptr %i2s_regmap to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %i2s_regmap, align 4
  %call.i421 = call i32 @regmap_update_bits_base(ptr noundef %83, i32 noundef 20, i32 noundef 271593504, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call fastcc void @bcm2835_i2s_clear_fifos(ptr noundef %3, i1 noundef zeroext true, i1 noundef zeroext true)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_i2s_hw_params.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_i2s_hw_params, %if.then156)) #9
          to label %do.body161 [label %if.then156], !srcloc !91

if.then156:                                       ; preds = %sw.epilog144
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_i2s_hw_params.__UNIQUE_ID_ddebug240, ptr noundef %85, ptr noundef nonnull @.str.21, i32 noundef %slots.0, i32 noundef %slot_width.0, i32 noundef %rx_mask.0, i32 noundef %tx_mask.0) #9
  br label %do.body161

do.body161:                                       ; preds = %if.then156, %sw.epilog144
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_i2s_hw_params.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_i2s_hw_params, %if.then173)) #9
          to label %do.body178 [label %if.then173], !srcloc !91

if.then173:                                       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_i2s_hw_params.__UNIQUE_ID_ddebug241, ptr noundef %87, ptr noundef nonnull @.str.22, i32 noundef %frame_length.0, i32 noundef %framesync_length.0, i32 noundef %call1.i) #9
  br label %do.body178

do.body178:                                       ; preds = %if.then173, %do.body161
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_i2s_hw_params.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_i2s_hw_params, %if.then190)) #9
          to label %do.body195 [label %if.then190], !srcloc !91

if.then190:                                       ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_i2s_hw_params.__UNIQUE_ID_ddebug242, ptr noundef %89, ptr noundef nonnull @.str.23, i32 noundef %add.i, i32 noundef %add5.i, i32 noundef %add.i410, i32 noundef %add5.i420) #9
  br label %do.body195

do.body195:                                       ; preds = %if.then190, %do.body178
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_i2s_hw_params.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_i2s_hw_params, %if.then207)) #9
          to label %do.body213 [label %if.then207], !srcloc !91

if.then207:                                       ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %3, align 4
  %arrayidx.i.i422 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %92 = ptrtoint ptr %arrayidx.i.i422 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.i.i422, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_i2s_hw_params.__UNIQUE_ID_ddebug243, ptr noundef %91, ptr noundef nonnull @.str.24, i32 noundef %93, i32 noundef %bclk_rate.0) #9
  br label %do.body213

do.body213:                                       ; preds = %if.then207, %do.body195
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_i2s_hw_params.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_i2s_hw_params, %if.then225)) #9
          to label %cleanup [label %if.then225], !srcloc !91

if.then225:                                       ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %3, align 4
  %and227 = lshr i32 %spec.select372, 23
  %and227.lobit = and i32 %and227, 1
  %and233 = lshr i32 %spec.select372, 22
  %and233.lobit = and i32 %and233, 1
  %and239 = lshr i32 %spec.select372, 21
  %and239.lobit = and i32 %and239, 1
  %and245 = and i32 %spec.select372, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and245)
  %tobool246.not = icmp eq i32 %and245, 0
  %and245.lobit = lshr exact i32 %and245, 20
  %cond = select i1 %tobool246.not, ptr @.str.27, ptr @.str.26
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_i2s_hw_params.__UNIQUE_ID_ddebug244, ptr noundef %95, ptr noundef nonnull @.str.25, i32 noundef %and227.lobit, i32 noundef %and233.lobit, i32 noundef %and239.lobit, i32 noundef %and245.lobit, ptr noundef nonnull %cond) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then225, %do.body213, %sw.epilog130.cleanup_crit_edge, %if.end93.cleanup_crit_edge, %sw.bb70.cleanup_crit_edge, %sw.bb63.cleanup_crit_edge, %sw.bb58.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.then42.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %params_width.exit396.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call13, %params_width.exit396.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ -22, %if.end20.cleanup_crit_edge ], [ -22, %if.end23.cleanup_crit_edge ], [ %call43, %if.then42.cleanup_crit_edge ], [ -22, %sw.bb58.cleanup_crit_edge ], [ -22, %sw.bb63.cleanup_crit_edge ], [ -22, %sw.bb70.cleanup_crit_edge ], [ -22, %if.end49.cleanup_crit_edge ], [ -22, %if.end93.cleanup_crit_edge ], [ -22, %sw.epilog130.cleanup_crit_edge ], [ 0, %if.then225 ], [ 0, %do.body213 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csreg) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_i2s_prepare(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %cs_reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs_reg) #9
  %4 = ptrtoint ptr %cs_reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %cs_reg, align 4, !annotation !93
  %i2s_regmap = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %i2s_regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2s_regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %cs_reg) #9
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %7 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %8, label %entry.if.end8_crit_edge [
    i32 0, label %land.lhs.true
    i32 1, label %land.lhs.true4
  ]

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %10 = ptrtoint ptr %cs_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cs_reg, align 4
  %and = and i32 %11, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @bcm2835_i2s_clear_fifos(ptr noundef %3, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %if.end8

land.lhs.true4:                                   ; preds = %entry
  %12 = ptrtoint ptr %cs_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cs_reg, align 4
  %and5 = and i32 %13, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %land.lhs.true4.if.end8_crit_edge, label %if.then7

land.lhs.true4.if.end8_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @bcm2835_i2s_clear_fifos(ptr noundef %3, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %land.lhs.true4.if.end8_crit_edge, %if.then, %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs_reg) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_i2s_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge13
    i32 4, label %entry.sw.bb_crit_edge14
    i32 0, label %entry.sw.bb2_crit_edge
    i32 5, label %entry.sw.bb2_crit_edge15
    i32 3, label %entry.sw.bb2_crit_edge16
  ]

entry.sw.bb2_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb2_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb_crit_edge14:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge13:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge13, %entry.sw.bb_crit_edge14
  %clk_prepared.i = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %clk_prepared.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %clk_prepared.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.bcm2835_i2s_start_clock.exit_crit_edge

sw.bb.bcm2835_i2s_start_clock.exit_crit_edge:     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_i2s_start_clock.exit

if.end.i:                                         ; preds = %sw.bb
  %fmt.i = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fmt.i, align 4
  %9 = trunc i32 %8 to i16
  %trunc.i = and i16 %9, -4096
  %10 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %trunc.i, label %if.end.i.bcm2835_i2s_start_clock.exit_crit_edge [
    i16 16384, label %if.end.i.sw.bb.i_crit_edge
    i16 8192, label %if.end.i.sw.bb.i_crit_edge17
  ]

if.end.i.sw.bb.i_crit_edge17:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.i.bcm2835_i2s_start_clock.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_i2s_start_clock.exit

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge17
  %clk.i = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 9
  %11 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb.i.clk_prepare_enable.exit.i_crit_edge

sw.bb.i.clk_prepare_enable.exit.i_crit_edge:      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %sw.bb.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.clk_prepare_enable.exit.i_crit_edge, label %if.then3.i.i

if.end.i.i.clk_prepare_enable.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %12) #9
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.end.i.i.clk_prepare_enable.exit.i_crit_edge, %sw.bb.i.clk_prepare_enable.exit.i_crit_edge
  %13 = ptrtoint ptr %clk_prepared.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %clk_prepared.i, align 4
  br label %bcm2835_i2s_start_clock.exit

bcm2835_i2s_start_clock.exit:                     ; preds = %clk_prepare_enable.exit.i, %if.end.i.bcm2835_i2s_start_clock.exit_crit_edge, %sw.bb.bcm2835_i2s_start_clock.exit_crit_edge
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %14 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp eq i32 %15, 1
  %. = select i1 %cmp, i32 2, i32 4
  %i2s_regmap = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 8
  %16 = ptrtoint ptr %i2s_regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2s_regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 0, i32 noundef %., i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge15, %entry.sw.bb2_crit_edge16
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %18 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i = icmp eq i32 %19, 1
  %..i = select i1 %cmp.i, i32 2, i32 4
  %i2s_regmap.i = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 8
  %20 = ptrtoint ptr %i2s_regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2s_regmap.i, align 4
  %call.i.i9 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 0, i32 noundef %..i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call1.i = tail call i32 @snd_soc_dai_active(ptr noundef %dai) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i10 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i:                                  ; preds = %sw.bb2
  %fmt.i11 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 2
  %22 = ptrtoint ptr %fmt.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fmt.i11, align 4
  %and.i = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i:                                       ; preds = %land.lhs.true.i
  %clk_prepared.i.i = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 10
  %24 = ptrtoint ptr %clk_prepared.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %clk_prepared.i.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i12 = icmp eq i8 %25, 0
  br i1 %tobool.not.i.i12, label %if.then3.i.bcm2835_i2s_stop_clock.exit.i_crit_edge, label %if.then.i.i

if.then3.i.bcm2835_i2s_stop_clock.exit.i_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_i2s_stop_clock.exit.i

if.then.i.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %clk.i.i = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %3, i32 0, i32 9
  %26 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %27) #9
  tail call void @clk_unprepare(ptr noundef %27) #9
  br label %bcm2835_i2s_stop_clock.exit.i

bcm2835_i2s_stop_clock.exit.i:                    ; preds = %if.then.i.i, %if.then3.i.bcm2835_i2s_stop_clock.exit.i_crit_edge
  %28 = ptrtoint ptr %clk_prepared.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %clk_prepared.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %bcm2835_i2s_stop_clock.exit.i, %land.lhs.true.i.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %bcm2835_i2s_start_clock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %bcm2835_i2s_start_clock.exit ], [ 0, %sw.bb2.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %bcm2835_i2s_stop_clock.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_frame_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_bclk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm2835_i2s_clear_fifos(ptr nocapture noundef %dev, i1 noundef zeroext %tx, i1 noundef zeroext %rx) unnamed_addr #2 align 64 {
entry:
  %syncval = alloca i32, align 4
  %csreg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %syncval) #9
  %0 = ptrtoint ptr %syncval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %syncval, align 4, !annotation !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %csreg) #9
  %1 = ptrtoint ptr %csreg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %csreg, align 4, !annotation !93
  %cond = select i1 %tx, i32 4, i32 0
  %cond3 = select i1 %rx, i32 2, i32 0
  %or = or i32 %cond3, %cond
  %cond5 = select i1 %tx, i32 8, i32 0
  %cond7 = select i1 %rx, i32 16, i32 0
  %or8 = or i32 %cond7, %cond5
  %i2s_regmap = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %i2s_regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2s_regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %csreg) #9
  %4 = ptrtoint ptr %csreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %csreg, align 4
  %clk_prepared = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %dev, i32 0, i32 10
  %6 = ptrtoint ptr %clk_prepared to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %clk_prepared, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool9.not = icmp eq i8 %7, 0
  br i1 %tobool9.not, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %fmt.i = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %dev, i32 0, i32 2
  %8 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fmt.i, align 4
  %10 = trunc i32 %9 to i16
  %trunc.i = and i16 %10, -4096
  %11 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.36)
  switch i16 %trunc.i, label %if.end.i.if.end_crit_edge [
    i16 16384, label %if.end.i.sw.bb.i_crit_edge
    i16 8192, label %if.end.i.sw.bb.i_crit_edge60
  ]

if.end.i.sw.bb.i_crit_edge60:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge60
  %clk.i = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %dev, i32 0, i32 9
  %12 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk.i, align 4
  %call.i.i = call i32 @clk_prepare(ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb.i.clk_prepare_enable.exit.i_crit_edge

sw.bb.i.clk_prepare_enable.exit.i_crit_edge:      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %sw.bb.i
  %call1.i.i = call i32 @clk_enable(ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.clk_prepare_enable.exit.i_crit_edge, label %if.then3.i.i

if.end.i.i.clk_prepare_enable.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_unprepare(ptr noundef %13) #9
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.end.i.i.clk_prepare_enable.exit.i_crit_edge, %sw.bb.i.clk_prepare_enable.exit.i_crit_edge
  %14 = ptrtoint ptr %clk_prepared to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %clk_prepared, align 4
  br label %if.end

if.end:                                           ; preds = %clk_prepare_enable.exit.i, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %15 = ptrtoint ptr %i2s_regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2s_regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 0, i32 noundef %or, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %17 = ptrtoint ptr %i2s_regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2s_regmap, align 4
  %call.i53 = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 0, i32 noundef %or8, i32 noundef %or8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %19 = ptrtoint ptr %i2s_regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2s_regmap, align 4
  %call17 = call i32 @regmap_read(ptr noundef %20, i32 noundef 0, ptr noundef nonnull %syncval) #9
  %21 = ptrtoint ptr %syncval to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %syncval, align 4
  %and18 = and i32 %22, 16777216
  store i32 %and18, ptr %syncval, align 4
  %23 = ptrtoint ptr %i2s_regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2s_regmap, align 4
  %neg = xor i32 %and18, -1
  %call.i54 = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 0, i32 noundef 16777216, i32 noundef %neg, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end
  %timeout.0 = phi i32 [ 1000, %if.end ], [ %dec, %while.body.while.cond_crit_edge ]
  %dec = add nsw i32 %timeout.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool21.not = icmp eq i32 %dec, 0
  br i1 %tobool21.not, label %do.end.critedge, label %while.body

while.body:                                       ; preds = %while.cond
  %25 = ptrtoint ptr %i2s_regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2s_regmap, align 4
  %call23 = call i32 @regmap_read(ptr noundef %26, i32 noundef 0, ptr noundef nonnull %csreg) #9
  %27 = ptrtoint ptr %csreg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %csreg, align 4
  %and24 = and i32 %28, 16777216
  %29 = ptrtoint ptr %syncval to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %syncval, align 4
  %cmp.not = icmp eq i32 %and24, %30
  br i1 %cmp.not, label %while.body.while.cond_crit_edge, label %while.body.if.end30_crit_edge

while.body.if.end30_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

do.end.critedge:                                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.28) #12
  br label %if.end30

if.end30:                                         ; preds = %do.end.critedge, %while.body.if.end30_crit_edge
  br i1 %tobool9.not, label %if.then32, label %if.end30.if.end33_crit_edge

if.end30.if.end33_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then32:                                        ; preds = %if.end30
  %33 = ptrtoint ptr %clk_prepared to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %clk_prepared, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i56 = icmp eq i8 %34, 0
  br i1 %tobool.not.i56, label %if.then32.bcm2835_i2s_stop_clock.exit_crit_edge, label %if.then.i

if.then32.bcm2835_i2s_stop_clock.exit_crit_edge:  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_i2s_stop_clock.exit

if.then.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %clk.i57 = getelementptr inbounds %struct.bcm2835_i2s_dev, ptr %dev, i32 0, i32 9
  %35 = ptrtoint ptr %clk.i57 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk.i57, align 4
  call void @clk_disable(ptr noundef %36) #9
  call void @clk_unprepare(ptr noundef %36) #9
  br label %bcm2835_i2s_stop_clock.exit

bcm2835_i2s_stop_clock.exit:                      ; preds = %if.then.i, %if.then32.bcm2835_i2s_stop_clock.exit_crit_edge
  %37 = ptrtoint ptr %clk_prepared to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %clk_prepared, align 4
  br label %if.end33

if.end33:                                         ; preds = %bcm2835_i2s_stop_clock.exit, %if.end30.if.end33_crit_edge
  %and = and i32 %5, 6
  %38 = ptrtoint ptr %i2s_regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2s_regmap, align 4
  %call.i59 = call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 0, i32 noundef 6, i32 noundef %and, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csreg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %syncval) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__initcall__kmod_snd_soc_bcm2835_i2s__246_930_bcm2835_i2s_driver_init6, !1, !"__initcall__kmod_snd_soc_bcm2835_i2s__246_930_bcm2835_i2s_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/bcm/bcm2835-i2s.c", i32 930, i32 1}
!2 = !{ptr @__exitcall_bcm2835_i2s_driver_exit, !1, !"__exitcall_bcm2835_i2s_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias247, !4, !"__UNIQUE_ID_alias247", i1 false, i1 false}
!4 = !{!"../sound/soc/bcm/bcm2835-i2s.c", i32 932, i32 1}
!5 = !{ptr @__UNIQUE_ID_description248, !6, !"__UNIQUE_ID_description248", i1 false, i1 false}
!6 = !{!"../sound/soc/bcm/bcm2835-i2s.c", i32 933, i32 1}
!7 = !{ptr @__UNIQUE_ID_author249, !8, !"__UNIQUE_ID_author249", i1 false, i1 false}
!8 = !{!"../sound/soc/bcm/bcm2835-i2s.c", i32 934, i32 1}
!9 = !{ptr @__UNIQUE_ID_file250, !10, !"__UNIQUE_ID_file250", i1 false, i1 false}
!10 = !{!"../sound/soc/bcm/bcm2835-i2s.c", i32 935, i32 1}
!11 = !{ptr @__UNIQUE_ID_license251, !10, !"__UNIQUE_ID_license251", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/bcm/bcm2835-i2s.c", i32 925, i32 11}
!14 = !{ptr @bcm2835_i2s_driver, !15, !"bcm2835_i2s_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/bcm/bcm2835-i2s.c", i32 922, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/bcm/bcm2835-i2s.c", i32 846, i32 4}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @bcm2835_i2s_probe.__UNIQUE_ID_ddebug245, !17, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/bcm/bcm2835-i2s.c", i32 848, i32 4}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @bcm2835_i2s_probe._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @bcm2835_i2s_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @bcm2835_i2s_probe._key, !28, !"_key", i1 false, i1 false}
!28 = !{!"../sound/soc/bcm/bcm2835-i2s.c", i32 857, i32 20}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/bcm/bcm2835-i2s.c", i32 865, i32 3}
!32 = !{ptr @bcm2835_i2s_probe._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @bcm2835_i2s_probe._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/bcm/bcm2835-i2s.c", i32 902, i32 3}
!36 = !{ptr @bcm2835_i2s_probe._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @bcm2835_i2s_probe._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/bcm/bcm2835-i2s.c", i32 908, i32 3}
!40 = !{ptr @bcm2835_i2s_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @bcm2835_i2s_probe._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @bcm2835_regmap_config, !43, !"bcm2835_regmap_config", i1 false, i1 false}
!43 = !{!"../sound/soc/bcm/bcm2835-i2s.c", i32 813, i32 35}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/bcm/bcm2835-i2s.c", i32 824, i32 11}
!46 = !{ptr @bcm2835_i2s_component, !47, !"bcm2835_i2s_component", i1 false, i1 false}
!47 = !{!"../sound/soc/bcm/bcm2835-i2s.c", i32 823, i32 46}
!48 = !{ptr @bcm2835_i2s_dai, !49, !"bcm2835_i2s_dai", i1 false, i1 false}
!49 = !{!"../sound/soc/bcm/bcm2835-i2s.c", i32 762, i32 34}
!50 = !{ptr @bcm2835_i2s_dai_ops, !51, !"bcm2835_i2s_dai_ops", i1 false, i1 false}
!51 = !{!"../sound/soc/bcm/bcm2835-i2s.c", i32 740, i32 37}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/bcm/bcm2835-i2s.c", i32 507, i32 3}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @bcm2835_i2s_hw_params._entry, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @bcm2835_i2s_hw_params._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/bcm/bcm2835-i2s.c", i32 594, i32 2}
!60 = !{ptr @bcm2835_i2s_hw_params.__UNIQUE_ID_ddebug240, !59, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/bcm/bcm2835-i2s.c", i32 598, i32 2}
!63 = !{ptr @bcm2835_i2s_hw_params.__UNIQUE_ID_ddebug241, !62, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/bcm/bcm2835-i2s.c", i32 601, i32 2}
!66 = !{ptr @bcm2835_i2s_hw_params.__UNIQUE_ID_ddebug242, !65, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/bcm/bcm2835-i2s.c", i32 604, i32 2}
!69 = !{ptr @bcm2835_i2s_hw_params.__UNIQUE_ID_ddebug243, !68, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/bcm/bcm2835-i2s.c", i32 607, i32 2}
!72 = !{ptr @bcm2835_i2s_hw_params.__UNIQUE_ID_ddebug244, !71, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!73 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/bcm/bcm2835-i2s.c", i32 208, i32 3}
!77 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @bcm2835_i2s_clear_fifos._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @bcm2835_i2s_clear_fifos._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @bcm2835_i2s_of_match, !81, !"bcm2835_i2s_of_match", i1 false, i1 false}
!81 = !{!"../sound/soc/bcm/bcm2835-i2s.c", i32 915, i32 34}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i64 2148744484, i64 2148744489, i64 2148744502, i64 2148744546, i64 2148744580, i64 2148744601}
!92 = !{i8 0, i8 2}
!93 = !{!"auto-init"}
!94 = !{i32 0, i32 33}
