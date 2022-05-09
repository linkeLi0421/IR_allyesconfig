; ModuleID = '/llk/IR_all_yes/sound/soc/stm/stm32_i2s.c_pt.bc'
source_filename = "../sound/soc/stm/stm32_i2s.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.stm32_i2s_data = type { ptr, ptr, ptr, ptr, %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i8, i32, i32 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.stm32_i2smclk_data = type { %struct.clk_hw, i32, ptr }
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

@__initcall__kmod_snd_soc_stm32_i2s__276_1226_stm32_i2s_driver_init6 = internal global ptr @stm32_i2s_driver_init, section ".initcall6.init", align 4
@stm32_i2s_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_i2s_probe, ptr @stm32_i2s_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_i2s_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_i2s_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_i2s_driver_exit = internal global ptr @stm32_i2s_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description277 = internal constant [54 x i8] c"snd_soc_stm32_i2s.description=STM32 Soc i2s Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_author278 = internal constant [65 x i8] c"snd_soc_stm32_i2s.author=Olivier Moysan, <olivier.moysan@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias279 = internal constant [43 x i8] c"snd_soc_stm32_i2s.alias=platform:stm32-i2s\00", section ".modinfo", align 1
@__UNIQUE_ID_file280 = internal constant [55 x i8] c"snd_soc_stm32_i2s.file=sound/soc/stm/snd-soc-stm32-i2s\00", section ".modinfo", align 1
@__UNIQUE_ID_license281 = internal constant [33 x i8] c"snd_soc_stm32_i2s.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st,stm32-i2s\00", [19 x i8] zeroinitializer }, align 32
@stm32_i2s_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32_h7_i2s_regmap_conf }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stm32_i2s_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_i2s_suspend, ptr @stm32_i2s_resume, ptr @stm32_i2s_suspend, ptr @stm32_i2s_resume, ptr @stm32_i2s_suspend, ptr @stm32_i2s_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@stm32_i2s_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&i2s->lock_fd\00", [18 x i8] zeroinitializer }, align 32
@stm32_i2s_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&i2s->irq_lock\00", [17 x i8] zeroinitializer }, align 32
@stm32_i2s_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"stm32_i2s:1133:(i2s->regmap_conf)->lock\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Regmap init error\0A\00", [45 x i8] zeroinitializer }, align 32
@stm32_i2s_pcm_config = internal constant { %struct.snd_dmaengine_pcm_config, [60 x i8] } { %struct.snd_dmaengine_pcm_config { ptr @snd_dmaengine_pcm_prepare_slave_config, ptr null, ptr null, ptr null, ptr null, [2 x ptr] zeroinitializer, ptr @stm32_i2s_pcm_hw, i32 32768 }, [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PCM DMA register error\0A\00", [40 x i8] zeroinitializer }, align 32
@stm32_i2s_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.80, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@stm32_i2s_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 1168, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Device does not support i2s mode\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stm32_i2s_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/stm/stm32_i2s.c\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_i2s_probe._entry_ptr = internal global ptr @stm32_i2s_probe._entry, section ".printk_index", align 4
@stm32_i2s_probe.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.9, ptr @.str.10, ptr @.str.14, i8 1, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_soc_stm32_i2s\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"I2S version: %lu.%lu registered\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Could not get pclk\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2sclk\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Could not get i2sclk\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"x8k\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not get x8k parent clock\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"x11k\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not get x11k parent clock\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"#clock-cells\00", [19 x i8] zeroinitializer }, align 32
@stm32_i2s_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.10, i32 1082, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"irq request returned %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stm32_i2s_parse_dt\00", [45 x i8] zeroinitializer }, align 32
@stm32_i2s_parse_dt._entry_ptr = internal global ptr @stm32_i2s_parse_dt._entry, section ".printk_index", align 4
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Reset controller error\0A\00", [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"_mclk\00", [26 x i8] zeroinitializer }, align 32
@mclk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @stm32_i2smclk_enable, ptr @stm32_i2smclk_disable, ptr null, ptr null, ptr null, ptr null, ptr @stm32_i2smclk_recalc_rate, ptr @stm32_i2smclk_round_rate, ptr null, ptr null, ptr null, ptr @stm32_i2smclk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@stm32_i2s_add_mclk_provider.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.27, ptr @.str.10, ptr @.str.28, i8 0, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stm32_i2s_add_mclk_provider\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Register master clock %s\0A\00", [38 x i8] zeroinitializer }, align 32
@stm32_i2s_add_mclk_provider._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.10, i32 444, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mclk register fails with error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@stm32_i2s_add_mclk_provider._entry_ptr = internal global ptr @stm32_i2s_add_mclk_provider._entry, section ".printk_index", align 4
@stm32_i2smclk_enable.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.30, ptr @.str.10, ptr @.str.31, i8 0, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stm32_i2smclk_enable\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Enable master clock\0A\00", [43 x i8] zeroinitializer }, align 32
@stm32_i2smclk_disable.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.32, ptr @.str.10, ptr @.str.33, i8 0, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32_i2smclk_disable\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Disable master clock\0A\00", [42 x i8] zeroinitializer }, align 32
@stm32_i2s_calc_clk_div.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.34, ptr @.str.10, ptr @.str.35, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32_i2s_calc_clk_div\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Divider: 2*%d(div)+%d(odd) = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@stm32_i2s_calc_clk_div._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.10, i32 288, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Wrong divider setting\0A\00", [41 x i8] zeroinitializer }, align 32
@stm32_i2s_calc_clk_div._entry_ptr = internal global ptr @stm32_i2s_calc_clk_div._entry, section ".printk_index", align 4
@stm32_i2s_calc_clk_div.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.34, ptr @.str.10, ptr @.str.37, i8 0, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Rate not accurate. requested (%ld), actual (%ld)\0A\00", [46 x i8] zeroinitializer }, align 32
@stm32_i2s_isr.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.38, ptr @.str.10, ptr @.str.39, i8 0, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stm32_i2s_isr\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Spurious IRQ sr=0x%08x, ier=0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@stm32_i2s_isr.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.38, ptr @.str.10, ptr @.str.40, i8 0, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Overrun\0A\00", [23 x i8] zeroinitializer }, align 32
@stm32_i2s_isr.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.38, ptr @.str.10, ptr @.str.41, i8 0, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Underrun\0A\00", [22 x i8] zeroinitializer }, align 32
@stm32_i2s_isr.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.38, ptr @.str.10, ptr @.str.42, i8 0, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Frame error\0A\00", [19 x i8] zeroinitializer }, align 32
@stm32_i2s_pcm_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @stm32_i2s_set_sysclk, ptr null, ptr null, ptr null, ptr @stm32_i2s_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_i2s_startup, ptr @stm32_i2s_shutdown, ptr @stm32_i2s_hw_params, ptr null, ptr null, ptr @stm32_i2s_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"playback\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"capture\00", [24 x i8] zeroinitializer }, align 32
@stm32_i2s_set_sysclk.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.45, ptr @.str.10, ptr @.str.46, i8 0, i8 -101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stm32_i2s_set_sysclk\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"I2S MCLK frequency is %uHz. mode: %s, dir: %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"master\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"slave\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"output\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"input\00", [26 x i8] zeroinitializer }, align 32
@stm32_i2s_set_sysclk.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.45, ptr @.str.10, ptr @.str.51, i8 0, i8 -100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No MCLK registered\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32_i2s_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.45, ptr @.str.10, i32 648, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not set mclk rate\0A\00", [39 x i8] zeroinitializer }, align 32
@stm32_i2s_set_sysclk._entry_ptr = internal global ptr @stm32_i2s_set_sysclk._entry, section ".printk_index", align 4
@stm32_i2s_set_parent_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.10, i32 330, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error %d setting i2sclk parent clock\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stm32_i2s_set_parent_clock\00", [37 x i8] zeroinitializer }, align 32
@stm32_i2s_set_parent_clock._entry_ptr = internal global ptr @stm32_i2s_set_parent_clock._entry, section ".printk_index", align 4
@stm32_i2s_set_dai_fmt.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.55, ptr @.str.10, ptr @.str.56, i8 0, i8 -119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32_i2s_set_dai_fmt\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fmt %x\0A\00", [24 x i8] zeroinitializer }, align 32
@stm32_i2s_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.10, i32 571, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported protocol %#x\0A\00", [38 x i8] zeroinitializer }, align 32
@stm32_i2s_set_dai_fmt._entry_ptr = internal global ptr @stm32_i2s_set_dai_fmt._entry, section ".printk_index", align 4
@stm32_i2s_set_dai_fmt._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.55, ptr @.str.10, i32 591, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported strobing %#x\0A\00", [38 x i8] zeroinitializer }, align 32
@stm32_i2s_set_dai_fmt._entry_ptr.60 = internal global ptr @stm32_i2s_set_dai_fmt._entry.58, section ".printk_index", align 4
@stm32_i2s_set_dai_fmt._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.55, ptr @.str.10, i32 605, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unsupported mode %#x\0A\00", [42 x i8] zeroinitializer }, align 32
@stm32_i2s_set_dai_fmt._entry_ptr.63 = internal global ptr @stm32_i2s_set_dai_fmt._entry.61, section ".printk_index", align 4
@stm32_i2s_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.10, i32 785, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32_i2s_startup\00", [46 x i8] zeroinitializer }, align 32
@stm32_i2s_startup._entry_ptr = internal global ptr @stm32_i2s_startup._entry, section ".printk_index", align 4
@stm32_i2s_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.10, i32 802, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Configuration returned error %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32_i2s_hw_params\00", [44 x i8] zeroinitializer }, align 32
@stm32_i2s_hw_params._entry_ptr = internal global ptr @stm32_i2s_hw_params._entry, section ".printk_index", align 4
@stm32_i2s_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.10, i32 741, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unexpected format %d\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32_i2s_configure\00", [44 x i8] zeroinitializer }, align 32
@stm32_i2s_configure._entry_ptr = internal global ptr @stm32_i2s_configure._entry, section ".printk_index", align 4
@stm32_i2s_trigger.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.70, ptr @.str.10, ptr @.str.71, i8 0, i8 -50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32_i2s_trigger\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"start I2S %s\0A\00", [18 x i8] zeroinitializer }, align 32
@stm32_i2s_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.10, i32 835, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error %d enabling I2S\0A\00", [41 x i8] zeroinitializer }, align 32
@stm32_i2s_trigger._entry_ptr = internal global ptr @stm32_i2s_trigger._entry, section ".printk_index", align 4
@stm32_i2s_trigger._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.70, ptr @.str.10, i32 842, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error %d starting I2S\0A\00", [41 x i8] zeroinitializer }, align 32
@stm32_i2s_trigger._entry_ptr.75 = internal global ptr @stm32_i2s_trigger._entry.73, section ".printk_index", align 4
@stm32_i2s_trigger.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.70, ptr @.str.10, ptr @.str.76, i8 0, i8 -38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stop I2S %s\0A\00", [19 x i8] zeroinitializer }, align 32
@stm32_i2s_trigger._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.70, ptr @.str.10, i32 893, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error %d disabling I2S\0A\00", [40 x i8] zeroinitializer }, align 32
@stm32_i2s_trigger._entry_ptr.79 = internal global ptr @stm32_i2s_trigger._entry.77, section ".printk_index", align 4
@stm32_i2s_pcm_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 257, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32768, i32 1024, i32 16384, i32 2, i32 8, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stm32-i2s\00", [22 x i8] zeroinitializer }, align 32
@stm32_h7_i2s_regmap_conf = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @stm32_i2s_writeable_reg, ptr @stm32_i2s_readable_reg, ptr @stm32_i2s_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 1020, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 3, ptr null, i32 256, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@switch.table.stm32_i2s_set_dai_fmt = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 32, i32 16, i32 48], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.105 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.108 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.109 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 8, i64 12, i64 16, i64 24, i64 32, i64 80]
@__sancov_gen_cov_switch_values.110 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 8, i64 12, i64 16, i64 20, i64 48, i64 80, i64 1008, i64 1012, i64 1016, i64 1020]
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"stm32_i2s_driver\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1216, i32 31 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1218, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant [14 x i8] c"stm32_i2s_ids\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1014, i32 34 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"stm32_i2s_pm_ops\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1212, i32 32 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1120, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1121, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1132, i32 16 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1136, i32 10 }
@___asan_gen_.147 = private unnamed_addr constant [21 x i8] c"stm32_i2s_pcm_config\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 973, i32 46 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1142, i32 41 }
@___asan_gen_.153 = private unnamed_addr constant [20 x i8] c"stm32_i2s_component\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 979, i32 46 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1167, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1177, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1050, i32 10 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1052, i32 41 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1055, i32 10 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1057, i32 41 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1060, i32 10 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1062, i32 42 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1065, i32 10 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1068, i32 27 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1082, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1090, i32 10 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 435, i32 12 }
@___asan_gen_.219 = private unnamed_addr constant [9 x i8] c"mclk_ops\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 400, i32 29 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 441, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 444, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 384, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 395, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 282, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 288, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 293, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 466, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 475, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 480, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 485, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant [22 x i8] c"stm32_i2s_pcm_dai_ops\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 955, i32 37 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1007, i32 41 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 1008, i32 40 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 620, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 627, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 648, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 329, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 549, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 570, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 590, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 604, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 785, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 802, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 741, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 825, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 835, i32 4 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 842, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 871, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 893, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant [17 x i8] c"stm32_i2s_pcm_hw\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 964, i32 38 }
@___asan_gen_.402 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 980, i32 10 }
@___asan_gen_.405 = private unnamed_addr constant [25 x i8] c"stm32_h7_i2s_regmap_conf\00", align 1
@___asan_gen_.406 = private constant [29 x i8] c"../sound/soc/stm/stm32_i2s.c\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 942, i32 35 }
@___asan_gen_.408 = private unnamed_addr constant [35 x i8] c"switch.table.stm32_i2s_set_dai_fmt\00", align 1
@llvm.compiler.used = appending global [123 x ptr] [ptr @__UNIQUE_ID_alias279, ptr @__UNIQUE_ID_author278, ptr @__UNIQUE_ID_description277, ptr @__UNIQUE_ID_file280, ptr @__UNIQUE_ID_license281, ptr @__exitcall_stm32_i2s_driver_exit, ptr @__initcall__kmod_snd_soc_stm32_i2s__276_1226_stm32_i2s_driver_init6, ptr @stm32_i2s_add_mclk_provider._entry, ptr @stm32_i2s_add_mclk_provider._entry_ptr, ptr @stm32_i2s_calc_clk_div._entry, ptr @stm32_i2s_calc_clk_div._entry_ptr, ptr @stm32_i2s_configure._entry, ptr @stm32_i2s_configure._entry_ptr, ptr @stm32_i2s_driver_exit, ptr @stm32_i2s_hw_params._entry, ptr @stm32_i2s_hw_params._entry_ptr, ptr @stm32_i2s_parse_dt._entry, ptr @stm32_i2s_parse_dt._entry_ptr, ptr @stm32_i2s_probe._entry, ptr @stm32_i2s_probe._entry_ptr, ptr @stm32_i2s_set_dai_fmt._entry, ptr @stm32_i2s_set_dai_fmt._entry.58, ptr @stm32_i2s_set_dai_fmt._entry.61, ptr @stm32_i2s_set_dai_fmt._entry_ptr, ptr @stm32_i2s_set_dai_fmt._entry_ptr.60, ptr @stm32_i2s_set_dai_fmt._entry_ptr.63, ptr @stm32_i2s_set_parent_clock._entry, ptr @stm32_i2s_set_parent_clock._entry_ptr, ptr @stm32_i2s_set_sysclk._entry, ptr @stm32_i2s_set_sysclk._entry_ptr, ptr @stm32_i2s_startup._entry, ptr @stm32_i2s_startup._entry_ptr, ptr @stm32_i2s_trigger._entry, ptr @stm32_i2s_trigger._entry.73, ptr @stm32_i2s_trigger._entry.77, ptr @stm32_i2s_trigger._entry_ptr, ptr @stm32_i2s_trigger._entry_ptr.75, ptr @stm32_i2s_trigger._entry_ptr.79, ptr @stm32_i2s_driver, ptr @.str, ptr @stm32_i2s_ids, ptr @stm32_i2s_pm_ops, ptr @stm32_i2s_probe.__key, ptr @.str.1, ptr @stm32_i2s_probe.__key.2, ptr @.str.3, ptr @stm32_i2s_probe._key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @stm32_i2s_pcm_config, ptr @.str.7, ptr @stm32_i2s_component, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @mclk_ops, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @stm32_i2s_pcm_dai_ops, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @stm32_i2s_pcm_hw, ptr @.str.80, ptr @stm32_h7_i2s_regmap_conf, ptr @switch.table.stm32_i2s_set_dai_fmt], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2s_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2s_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2s_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2s_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2s_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2s_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2s_pcm_config to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2s_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2s_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2s_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2s_add_mclk_provider._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2s_calc_clk_div._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2s_pcm_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2s_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2s_set_parent_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2s_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2s_set_dai_fmt._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2s_set_dai_fmt._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2s_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2s_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2s_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2s_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2s_trigger._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2s_trigger._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2s_pcm_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_h7_i2s_regmap_conf to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stm32_i2s_set_dai_fmt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_i2s_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_i2s_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_i2s_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_i2s_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_i2s_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res.i = alloca ptr, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !208
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 236, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev1 = getelementptr inbounds %struct.stm32_i2s_data, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %pdev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %pdev1, align 4
  %ms_flg = getelementptr inbounds %struct.stm32_i2s_data, ptr %call.i, i32 0, i32 22
  %2 = ptrtoint ptr %ms_flg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ms_flg, align 4
  %lock_fd = getelementptr inbounds %struct.stm32_i2s_data, ptr %call.i, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %lock_fd, ptr noundef nonnull @.str.1, ptr noundef nonnull @stm32_i2s_probe.__key, i16 noundef signext 3) #10
  %irq_lock = getelementptr inbounds %struct.stm32_i2s_data, ptr %call.i, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @stm32_i2s_probe.__key.2, i16 noundef signext 3) #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res.i) #10
  %6 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %res.i, align 4, !annotation !208
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.stm32_i2s_parse_dt.exit.thread_crit_edge, label %if.end.i

if.end.stm32_i2s_parse_dt.exit.thread_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_i2s_parse_dt.exit.thread

if.end.i:                                         ; preds = %if.end
  %call.i178 = tail call ptr @of_match_device(ptr noundef nonnull @stm32_i2s_ids, ptr noundef %dev) #10
  %tobool2.not.i = icmp eq ptr %call.i178, null
  br i1 %tobool2.not.i, label %if.end.i.stm32_i2s_parse_dt.exit.thread_crit_edge, label %if.then3.i

if.end.i.stm32_i2s_parse_dt.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_i2s_parse_dt.exit.thread

if.then3.i:                                       ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call.i178, i32 0, i32 3
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %call.i, align 4
  %call5.i = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res.i) #10
  %base.i = getelementptr inbounds %struct.stm32_i2s_data, ptr %call.i, i32 0, i32 12
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5.i, ptr %base.i, align 4
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then8.i, label %if.end11.i

if.then8.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %call5.i to i32
  br label %stm32_i2s_parse_dt.exit

if.end11.i:                                       ; preds = %if.then3.i
  %12 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %res.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %phys_addr.i = getelementptr inbounds %struct.stm32_i2s_data, ptr %call.i, i32 0, i32 13
  %16 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %phys_addr.i, align 4
  %call13.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.4) #10
  %pclk.i = getelementptr inbounds %struct.stm32_i2s_data, ptr %call.i, i32 0, i32 9
  %17 = ptrtoint ptr %pclk.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call13.i, ptr %pclk.i, align 4
  %cmp.i131.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i131.i, label %if.then16.i, label %if.end21.i

if.then16.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %call13.i to i32
  %call20.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %18, ptr noundef nonnull @.str.15) #10
  br label %stm32_i2s_parse_dt.exit

if.end21.i:                                       ; preds = %if.end11.i
  %call23.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  %i2sclk.i = getelementptr inbounds %struct.stm32_i2s_data, ptr %call.i, i32 0, i32 7
  %19 = ptrtoint ptr %i2sclk.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call23.i, ptr %i2sclk.i, align 4
  %cmp.i132.i = icmp ugt ptr %call23.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132.i, label %if.then26.i, label %if.end31.i

if.then26.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %call23.i to i32
  %call30.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %20, ptr noundef nonnull @.str.17) #10
  br label %stm32_i2s_parse_dt.exit

if.end31.i:                                       ; preds = %if.end21.i
  %call33.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.18) #10
  %x8kclk.i = getelementptr inbounds %struct.stm32_i2s_data, ptr %call.i, i32 0, i32 10
  %21 = ptrtoint ptr %x8kclk.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call33.i, ptr %x8kclk.i, align 4
  %cmp.i133.i = icmp ugt ptr %call33.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133.i, label %if.then36.i, label %if.end41.i

if.then36.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %call33.i to i32
  %call40.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %22, ptr noundef nonnull @.str.19) #10
  br label %stm32_i2s_parse_dt.exit

if.end41.i:                                       ; preds = %if.end31.i
  %call43.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.20) #10
  %x11kclk.i = getelementptr inbounds %struct.stm32_i2s_data, ptr %call.i, i32 0, i32 11
  %23 = ptrtoint ptr %x11kclk.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call43.i, ptr %x11kclk.i, align 4
  %cmp.i134.i = icmp ugt ptr %call43.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134.i, label %if.then46.i, label %if.end51.i

if.then46.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %call43.i to i32
  %call50.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %24, ptr noundef nonnull @.str.21) #10
  br label %stm32_i2s_parse_dt.exit

if.end51.i:                                       ; preds = %if.end41.i
  %call52.i = call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.22, ptr noundef null) #10
  %tobool53.not.i = icmp eq ptr %call52.i, null
  br i1 %tobool53.not.i, label %if.end51.i.if.end58.i_crit_edge, label %if.then54.i

if.end51.i.if.end58.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.i

if.then54.i:                                      ; preds = %if.end51.i
  %call55.i = call fastcc i32 @stm32_i2s_add_mclk_provider(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %cmp.i = icmp slt i32 %call55.i, 0
  br i1 %cmp.i, label %if.then54.i.stm32_i2s_parse_dt.exit.thread_crit_edge, label %if.then54.i.if.end58.i_crit_edge

if.then54.i.if.end58.i_crit_edge:                 ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.i

if.then54.i.stm32_i2s_parse_dt.exit.thread_crit_edge: ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_i2s_parse_dt.exit.thread

if.end58.i:                                       ; preds = %if.then54.i.if.end58.i_crit_edge, %if.end51.i.if.end58.i_crit_edge
  %call59.i = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %cmp60.i = icmp slt i32 %call59.i, 0
  br i1 %cmp60.i, label %if.end58.i.stm32_i2s_parse_dt.exit.thread_crit_edge, label %if.end62.i

if.end58.i.stm32_i2s_parse_dt.exit.thread_crit_edge: ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_i2s_parse_dt.exit.thread

if.end62.i:                                       ; preds = %if.end58.i
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end62.i.dev_name.exit.i_crit_edge

if.end62.i.dev_name.exit.i_crit_edge:             ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end62.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %28, %if.end.i.i ], [ %26, %if.end62.i.dev_name.exit.i_crit_edge ]
  %call.i.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call59.i, ptr noundef nonnull @stm32_i2s_isr, ptr noundef null, i32 noundef 8192, ptr noundef %retval.0.i.i, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool67.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool67.not.i, label %if.end70.i, label %do.end.i

do.end.i:                                         ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call.i.i) #13
  br label %stm32_i2s_parse_dt.exit.thread

if.end70.i:                                       ; preds = %dev_name.exit.i
  %call.i135.i = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #10
  %cmp.i136.i = icmp ugt ptr %call.i135.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i136.i, label %if.then74.i, label %stm32_i2s_parse_dt.exit.thread189

if.then74.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %call.i135.i to i32
  %call77.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %29, ptr noundef nonnull @.str.25) #10
  br label %stm32_i2s_parse_dt.exit

stm32_i2s_parse_dt.exit.thread189:                ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  %call79.i = call i32 @reset_control_assert(ptr noundef %call.i135.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 429496) #10
  %call80.i = call i32 @reset_control_deassert(ptr noundef %call.i135.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #10
  br label %if.end10

stm32_i2s_parse_dt.exit.thread:                   ; preds = %do.end.i, %if.end58.i.stm32_i2s_parse_dt.exit.thread_crit_edge, %if.then54.i.stm32_i2s_parse_dt.exit.thread_crit_edge, %if.end.i.stm32_i2s_parse_dt.exit.thread_crit_edge, %if.end.stm32_i2s_parse_dt.exit.thread_crit_edge
  %retval.0.i179.ph = phi i32 [ %call59.i, %if.end58.i.stm32_i2s_parse_dt.exit.thread_crit_edge ], [ %call55.i, %if.then54.i.stm32_i2s_parse_dt.exit.thread_crit_edge ], [ -22, %if.end.i.stm32_i2s_parse_dt.exit.thread_crit_edge ], [ -19, %if.end.stm32_i2s_parse_dt.exit.thread_crit_edge ], [ %call.i.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #10
  br label %cleanup

stm32_i2s_parse_dt.exit:                          ; preds = %if.then74.i, %if.then46.i, %if.then36.i, %if.then26.i, %if.then16.i, %if.then8.i
  %retval.0.i179 = phi i32 [ %11, %if.then8.i ], [ %call20.i, %if.then16.i ], [ %call30.i, %if.then26.i ], [ %call40.i, %if.then36.i ], [ %call50.i, %if.then46.i ], [ %call77.i, %if.then74.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i179)
  %tobool8.not = icmp eq i32 %retval.0.i179, 0
  br i1 %tobool8.not, label %stm32_i2s_parse_dt.exit.if.end10_crit_edge, label %stm32_i2s_parse_dt.exit.cleanup_crit_edge

stm32_i2s_parse_dt.exit.cleanup_crit_edge:        ; preds = %stm32_i2s_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

stm32_i2s_parse_dt.exit.if.end10_crit_edge:       ; preds = %stm32_i2s_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end10:                                         ; preds = %stm32_i2s_parse_dt.exit.if.end10_crit_edge, %stm32_i2s_parse_dt.exit.thread189
  %call.i.i181 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 168, i32 noundef 3520) #10
  %tobool.not.i182 = icmp eq ptr %call.i.i181, null
  br i1 %tobool.not.i182, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %probe.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i181, i32 0, i32 4
  %31 = ptrtoint ptr %probe.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @stm32_i2s_dai_probe, ptr %probe.i, align 8
  %ops.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i181, i32 0, i32 8
  %32 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @stm32_i2s_pcm_dai_ops, ptr %ops.i, align 8
  %id.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i181, i32 0, i32 1
  %33 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %id.i, align 4
  %playback.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i181, i32 0, i32 11
  %34 = ptrtoint ptr %playback.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.43, ptr %playback.i, align 8
  %channels_min.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i181, i32 0, i32 11, i32 5
  %35 = ptrtoint ptr %channels_min.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %channels_min.i.i, align 4
  %channels_max.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i181, i32 0, i32 11, i32 6
  %36 = ptrtoint ptr %channels_max.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %channels_max.i.i, align 8
  %rates.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i181, i32 0, i32 11, i32 2
  %37 = ptrtoint ptr %rates.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 8190, ptr %rates.i.i, align 8
  %formats.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i181, i32 0, i32 11, i32 1
  %38 = ptrtoint ptr %formats.i.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 1028, ptr %formats.i.i, align 8
  %capture.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i181, i32 0, i32 10
  %39 = ptrtoint ptr %capture.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.44, ptr %capture.i, align 8
  %channels_min.i7.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i181, i32 0, i32 10, i32 5
  %40 = ptrtoint ptr %channels_min.i7.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %channels_min.i7.i, align 4
  %channels_max.i8.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i181, i32 0, i32 10, i32 6
  %41 = ptrtoint ptr %channels_max.i8.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %channels_max.i8.i, align 8
  %rates.i9.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i181, i32 0, i32 10, i32 2
  %42 = ptrtoint ptr %rates.i9.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 8190, ptr %rates.i9.i, align 8
  %formats.i10.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i.i181, i32 0, i32 10, i32 1
  %43 = ptrtoint ptr %formats.i10.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 1028, ptr %formats.i10.i, align 8
  %dai_drv.i = getelementptr inbounds %struct.stm32_i2s_data, ptr %call.i, i32 0, i32 3
  %44 = ptrtoint ptr %dai_drv.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i.i181, ptr %dai_drv.i, align 4
  %45 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i, align 4
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 4
  %call16 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef %46, ptr noundef %48, ptr noundef nonnull @stm32_i2s_probe._key, ptr noundef nonnull @.str.5) #10
  %regmap = getelementptr inbounds %struct.stm32_i2s_data, ptr %call.i, i32 0, i32 1
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call16, ptr %regmap, align 4
  %cmp.i185 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %call16 to i32
  %call23 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %50, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  call void @pm_runtime_enable(ptr noundef %dev) #10
  %call27 = call i32 @snd_dmaengine_pcm_register(ptr noundef %dev, ptr noundef nonnull @stm32_i2s_pcm_config, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end32, label %if.then29

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %call31 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call27, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end32:                                         ; preds = %if.end24
  %51 = ptrtoint ptr %dai_drv.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dai_drv.i, align 4
  %call34 = call i32 @snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @stm32_i2s_component, ptr noundef %52, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end38, label %if.then36

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  call void @snd_dmaengine_pcm_unregister(ptr noundef %dev) #10
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %call.i186 = call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 80, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i186)
  %tobool41.not = icmp eq i32 %call.i186, 0
  br i1 %tobool41.not, label %if.end43, label %if.end38.error_crit_edge

if.end38.error_crit_edge:                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end43:                                         ; preds = %if.end38
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 4
  %call45 = call i32 @regmap_read(ptr noundef %56, i32 noundef 1016, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end43.error_crit_edge

if.end43.error_crit_edge:                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end48:                                         ; preds = %if.end43
  %57 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1245218, i32 %58)
  %cmp = icmp eq i32 %58, 1245218
  br i1 %cmp, label %if.then49, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then49:                                        ; preds = %if.end48
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap, align 4
  %call51 = call i32 @regmap_read(ptr noundef %60, i32 noundef 1008, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %do.end69, label %if.then49.error_crit_edge

if.then49.error_crit_edge:                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

do.end69:                                         ; preds = %if.then49
  %61 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val, align 4
  %63 = and i32 %62, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool71.not = icmp eq i32 %63, 0
  br i1 %tobool71.not, label %do.end75, label %if.end77

do.end75:                                         ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #13
  br label %error

if.end77:                                         ; preds = %do.end69
  %64 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap, align 4
  %call79 = call i32 @regmap_read(ptr noundef %65, i32 noundef 1012, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %do.body83, label %if.end77.error_crit_edge

if.end77.error_crit_edge:                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

do.body83:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_i2s_probe.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_i2s_probe, %if.then89)) #10
          to label %cleanup [label %if.then89], !srcloc !209

if.then89:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %val, align 4
  %and107 = lshr i32 %67, 4
  %shr108 = and i32 %and107, 15
  %and125 = and i32 %67, 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_i2s_probe.__UNIQUE_ID_ddebug265, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %shr108, i32 noundef %and125) #10
  br label %cleanup

error:                                            ; preds = %if.end77.error_crit_edge, %do.end75, %if.then49.error_crit_edge, %if.end43.error_crit_edge, %if.end38.error_crit_edge
  %ret.1 = phi i32 [ %call.i186, %if.end38.error_crit_edge ], [ %call45, %if.end43.error_crit_edge ], [ %call51, %if.then49.error_crit_edge ], [ %call79, %if.end77.error_crit_edge ], [ -1, %do.end75 ]
  %call131 = call i32 @stm32_i2s_remove(ptr noundef %pdev)
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then89, %do.body83, %if.end48.cleanup_crit_edge, %if.then36, %if.then29, %if.then19, %if.end10.cleanup_crit_edge, %stm32_i2s_parse_dt.exit.cleanup_crit_edge, %stm32_i2s_parse_dt.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.then19 ], [ %call31, %if.then29 ], [ %call34, %if.then36 ], [ %ret.1, %error ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i179, %stm32_i2s_parse_dt.exit.cleanup_crit_edge ], [ 0, %if.then89 ], [ 0, %if.end48.cleanup_crit_edge ], [ %retval.0.i179.ph, %stm32_i2s_parse_dt.exit.thread ], [ -12, %if.end10.cleanup_crit_edge ], [ 0, %do.body83 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_i2s_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @snd_dmaengine_pcm_unregister(ptr noundef %dev) #10
  tail call void @snd_soc_unregister_component(ptr noundef %dev) #10
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dmaengine_pcm_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_i2s_add_mclk_provider(ptr noundef %i2s) unnamed_addr #2 align 64 {
entry:
  %.compoundliteral = alloca %struct.clk_init_data, align 4
  %.compoundliteral14 = alloca [1 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.stm32_i2s_data, ptr %i2s, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %i2sclk = getelementptr inbounds %struct.stm32_i2s_data, ptr %i2s, i32 0, i32 7
  %2 = ptrtoint ptr %i2sclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2sclk, align 4
  %call = tail call ptr @__clk_get_name(ptr noundef %3) #10
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #10
  %tobool4.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %while.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %call, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %land.rhs [
    i8 0, label %while.cond.preheader.while.end_crit_edge
    i8 95, label %while.cond.preheader.while.end_crit_edge66
  ]

while.cond.preheader.while.end_crit_edge66:       ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs:                                         ; preds = %while.cond.preheader
  %incdec.ptr = getelementptr i8, ptr %call, i32 1
  %incdec.ptr12 = getelementptr i8, ptr %call5.i.i, i32 1
  %7 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %5, ptr %call5.i.i, align 1
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %9, label %land.rhs.1 [
    i8 0, label %land.rhs.while.end_crit_edge
    i8 95, label %land.rhs.while.end_crit_edge67
  ]

land.rhs.while.end_crit_edge67:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.1:                                       ; preds = %land.rhs
  %incdec.ptr.1 = getelementptr i8, ptr %call, i32 2
  %incdec.ptr12.1 = getelementptr i8, ptr %call5.i.i, i32 2
  %11 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %9, ptr %incdec.ptr12, align 1
  %12 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr.1, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %13, label %land.rhs.2 [
    i8 0, label %land.rhs.1.while.end_crit_edge
    i8 95, label %land.rhs.1.while.end_crit_edge68
  ]

land.rhs.1.while.end_crit_edge68:                 ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.1.while.end_crit_edge:                   ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.2:                                       ; preds = %land.rhs.1
  %incdec.ptr.2 = getelementptr i8, ptr %call, i32 3
  %incdec.ptr12.2 = getelementptr i8, ptr %call5.i.i, i32 3
  %15 = ptrtoint ptr %incdec.ptr12.1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %13, ptr %incdec.ptr12.1, align 1
  %16 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %incdec.ptr.2, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %17, label %land.rhs.3 [
    i8 0, label %land.rhs.2.while.end_crit_edge
    i8 95, label %land.rhs.2.while.end_crit_edge69
  ]

land.rhs.2.while.end_crit_edge69:                 ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.2.while.end_crit_edge:                   ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.3:                                       ; preds = %land.rhs.2
  %incdec.ptr.3 = getelementptr i8, ptr %call, i32 4
  %incdec.ptr12.3 = getelementptr i8, ptr %call5.i.i, i32 4
  %19 = ptrtoint ptr %incdec.ptr12.2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %17, ptr %incdec.ptr12.2, align 1
  %20 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr.3, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %21, label %land.rhs.4 [
    i8 0, label %land.rhs.3.while.end_crit_edge
    i8 95, label %land.rhs.3.while.end_crit_edge70
  ]

land.rhs.3.while.end_crit_edge70:                 ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.3.while.end_crit_edge:                   ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.4:                                       ; preds = %land.rhs.3
  %incdec.ptr.4 = getelementptr i8, ptr %call, i32 5
  %incdec.ptr12.4 = getelementptr i8, ptr %call5.i.i, i32 5
  %23 = ptrtoint ptr %incdec.ptr12.3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %21, ptr %incdec.ptr12.3, align 1
  %24 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr.4, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %25, label %land.rhs.5 [
    i8 0, label %land.rhs.4.while.end_crit_edge
    i8 95, label %land.rhs.4.while.end_crit_edge71
  ]

land.rhs.4.while.end_crit_edge71:                 ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.4.while.end_crit_edge:                   ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.5:                                       ; preds = %land.rhs.4
  %incdec.ptr.5 = getelementptr i8, ptr %call, i32 6
  %incdec.ptr12.5 = getelementptr i8, ptr %call5.i.i, i32 6
  %27 = ptrtoint ptr %incdec.ptr12.4 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %25, ptr %incdec.ptr12.4, align 1
  %28 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr.5, align 1
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %29, label %land.rhs.6 [
    i8 0, label %land.rhs.5.while.end_crit_edge
    i8 95, label %land.rhs.5.while.end_crit_edge72
  ]

land.rhs.5.while.end_crit_edge72:                 ; preds = %land.rhs.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.5.while.end_crit_edge:                   ; preds = %land.rhs.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.6:                                       ; preds = %land.rhs.5
  %incdec.ptr.6 = getelementptr i8, ptr %call, i32 7
  %incdec.ptr12.6 = getelementptr i8, ptr %call5.i.i, i32 7
  %31 = ptrtoint ptr %incdec.ptr12.5 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %29, ptr %incdec.ptr12.5, align 1
  %32 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %incdec.ptr.6, align 1
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %33, label %land.rhs.7 [
    i8 0, label %land.rhs.6.while.end_crit_edge
    i8 95, label %land.rhs.6.while.end_crit_edge73
  ]

land.rhs.6.while.end_crit_edge73:                 ; preds = %land.rhs.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.6.while.end_crit_edge:                   ; preds = %land.rhs.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.7:                                       ; preds = %land.rhs.6
  %incdec.ptr.7 = getelementptr i8, ptr %call, i32 8
  %incdec.ptr12.7 = getelementptr i8, ptr %call5.i.i, i32 8
  %35 = ptrtoint ptr %incdec.ptr12.6 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %33, ptr %incdec.ptr12.6, align 1
  %36 = ptrtoint ptr %incdec.ptr.7 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %incdec.ptr.7, align 1
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %37, label %land.rhs.8 [
    i8 0, label %land.rhs.7.while.end_crit_edge
    i8 95, label %land.rhs.7.while.end_crit_edge74
  ]

land.rhs.7.while.end_crit_edge74:                 ; preds = %land.rhs.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.7.while.end_crit_edge:                   ; preds = %land.rhs.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.8:                                       ; preds = %land.rhs.7
  %incdec.ptr.8 = getelementptr i8, ptr %call, i32 9
  %incdec.ptr12.8 = getelementptr i8, ptr %call5.i.i, i32 9
  %39 = ptrtoint ptr %incdec.ptr12.7 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %37, ptr %incdec.ptr12.7, align 1
  %40 = ptrtoint ptr %incdec.ptr.8 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %incdec.ptr.8, align 1
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %41, label %land.rhs.9 [
    i8 0, label %land.rhs.8.while.end_crit_edge
    i8 95, label %land.rhs.8.while.end_crit_edge75
  ]

land.rhs.8.while.end_crit_edge75:                 ; preds = %land.rhs.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.8.while.end_crit_edge:                   ; preds = %land.rhs.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.9:                                       ; preds = %land.rhs.8
  %incdec.ptr.9 = getelementptr i8, ptr %call, i32 10
  %incdec.ptr12.9 = getelementptr i8, ptr %call5.i.i, i32 10
  %43 = ptrtoint ptr %incdec.ptr12.8 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %41, ptr %incdec.ptr12.8, align 1
  %44 = ptrtoint ptr %incdec.ptr.9 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %incdec.ptr.9, align 1
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.90)
  switch i8 %45, label %land.rhs.10 [
    i8 0, label %land.rhs.9.while.end_crit_edge
    i8 95, label %land.rhs.9.while.end_crit_edge76
  ]

land.rhs.9.while.end_crit_edge76:                 ; preds = %land.rhs.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.9.while.end_crit_edge:                   ; preds = %land.rhs.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.10:                                      ; preds = %land.rhs.9
  %incdec.ptr.10 = getelementptr i8, ptr %call, i32 11
  %incdec.ptr12.10 = getelementptr i8, ptr %call5.i.i, i32 11
  %47 = ptrtoint ptr %incdec.ptr12.9 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %45, ptr %incdec.ptr12.9, align 1
  %48 = ptrtoint ptr %incdec.ptr.10 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %incdec.ptr.10, align 1
  %50 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.91)
  switch i8 %49, label %land.rhs.11 [
    i8 0, label %land.rhs.10.while.end_crit_edge
    i8 95, label %land.rhs.10.while.end_crit_edge77
  ]

land.rhs.10.while.end_crit_edge77:                ; preds = %land.rhs.10
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.10.while.end_crit_edge:                  ; preds = %land.rhs.10
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.11:                                      ; preds = %land.rhs.10
  %incdec.ptr.11 = getelementptr i8, ptr %call, i32 12
  %incdec.ptr12.11 = getelementptr i8, ptr %call5.i.i, i32 12
  %51 = ptrtoint ptr %incdec.ptr12.10 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %49, ptr %incdec.ptr12.10, align 1
  %52 = ptrtoint ptr %incdec.ptr.11 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %incdec.ptr.11, align 1
  %54 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %53, label %land.rhs.12 [
    i8 0, label %land.rhs.11.while.end_crit_edge
    i8 95, label %land.rhs.11.while.end_crit_edge78
  ]

land.rhs.11.while.end_crit_edge78:                ; preds = %land.rhs.11
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.11.while.end_crit_edge:                  ; preds = %land.rhs.11
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.12:                                      ; preds = %land.rhs.11
  %incdec.ptr.12 = getelementptr i8, ptr %call, i32 13
  %incdec.ptr12.12 = getelementptr i8, ptr %call5.i.i, i32 13
  %55 = ptrtoint ptr %incdec.ptr12.11 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %53, ptr %incdec.ptr12.11, align 1
  %56 = ptrtoint ptr %incdec.ptr.12 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %incdec.ptr.12, align 1
  %58 = zext i8 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %57, label %land.rhs.13 [
    i8 0, label %land.rhs.12.while.end_crit_edge
    i8 95, label %land.rhs.12.while.end_crit_edge79
  ]

land.rhs.12.while.end_crit_edge79:                ; preds = %land.rhs.12
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.12.while.end_crit_edge:                  ; preds = %land.rhs.12
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.13:                                      ; preds = %land.rhs.12
  %incdec.ptr.13 = getelementptr i8, ptr %call, i32 14
  %incdec.ptr12.13 = getelementptr i8, ptr %call5.i.i, i32 14
  %59 = ptrtoint ptr %incdec.ptr12.12 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %57, ptr %incdec.ptr12.12, align 1
  %60 = ptrtoint ptr %incdec.ptr.13 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %incdec.ptr.13, align 1
  %62 = zext i8 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.94)
  switch i8 %61, label %land.rhs.14 [
    i8 0, label %land.rhs.13.while.end_crit_edge
    i8 95, label %land.rhs.13.while.end_crit_edge80
  ]

land.rhs.13.while.end_crit_edge80:                ; preds = %land.rhs.13
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.13.while.end_crit_edge:                  ; preds = %land.rhs.13
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.14:                                      ; preds = %land.rhs.13
  %incdec.ptr.14 = getelementptr i8, ptr %call, i32 15
  %incdec.ptr12.14 = getelementptr i8, ptr %call5.i.i, i32 15
  %63 = ptrtoint ptr %incdec.ptr12.13 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %61, ptr %incdec.ptr12.13, align 1
  %64 = ptrtoint ptr %incdec.ptr.14 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %incdec.ptr.14, align 1
  %66 = zext i8 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %65, label %land.rhs.15 [
    i8 0, label %land.rhs.14.while.end_crit_edge
    i8 95, label %land.rhs.14.while.end_crit_edge81
  ]

land.rhs.14.while.end_crit_edge81:                ; preds = %land.rhs.14
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.14.while.end_crit_edge:                  ; preds = %land.rhs.14
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.15:                                      ; preds = %land.rhs.14
  %incdec.ptr.15 = getelementptr i8, ptr %call, i32 16
  %incdec.ptr12.15 = getelementptr i8, ptr %call5.i.i, i32 16
  %67 = ptrtoint ptr %incdec.ptr12.14 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %65, ptr %incdec.ptr12.14, align 1
  %68 = ptrtoint ptr %incdec.ptr.15 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %incdec.ptr.15, align 1
  %70 = zext i8 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.96)
  switch i8 %69, label %land.rhs.16 [
    i8 0, label %land.rhs.15.while.end_crit_edge
    i8 95, label %land.rhs.15.while.end_crit_edge82
  ]

land.rhs.15.while.end_crit_edge82:                ; preds = %land.rhs.15
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.15.while.end_crit_edge:                  ; preds = %land.rhs.15
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.16:                                      ; preds = %land.rhs.15
  %incdec.ptr.16 = getelementptr i8, ptr %call, i32 17
  %incdec.ptr12.16 = getelementptr i8, ptr %call5.i.i, i32 17
  %71 = ptrtoint ptr %incdec.ptr12.15 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %69, ptr %incdec.ptr12.15, align 1
  %72 = ptrtoint ptr %incdec.ptr.16 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %incdec.ptr.16, align 1
  %74 = zext i8 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.97)
  switch i8 %73, label %land.rhs.17 [
    i8 0, label %land.rhs.16.while.end_crit_edge
    i8 95, label %land.rhs.16.while.end_crit_edge83
  ]

land.rhs.16.while.end_crit_edge83:                ; preds = %land.rhs.16
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.16.while.end_crit_edge:                  ; preds = %land.rhs.16
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.17:                                      ; preds = %land.rhs.16
  %incdec.ptr.17 = getelementptr i8, ptr %call, i32 18
  %incdec.ptr12.17 = getelementptr i8, ptr %call5.i.i, i32 18
  %75 = ptrtoint ptr %incdec.ptr12.16 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %73, ptr %incdec.ptr12.16, align 1
  %76 = ptrtoint ptr %incdec.ptr.17 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %incdec.ptr.17, align 1
  %78 = zext i8 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.98)
  switch i8 %77, label %land.rhs.18 [
    i8 0, label %land.rhs.17.while.end_crit_edge
    i8 95, label %land.rhs.17.while.end_crit_edge84
  ]

land.rhs.17.while.end_crit_edge84:                ; preds = %land.rhs.17
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.17.while.end_crit_edge:                  ; preds = %land.rhs.17
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.18:                                      ; preds = %land.rhs.17
  %incdec.ptr.18 = getelementptr i8, ptr %call, i32 19
  %incdec.ptr12.18 = getelementptr i8, ptr %call5.i.i, i32 19
  %79 = ptrtoint ptr %incdec.ptr12.17 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %77, ptr %incdec.ptr12.17, align 1
  %80 = ptrtoint ptr %incdec.ptr.18 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %incdec.ptr.18, align 1
  %82 = zext i8 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.99)
  switch i8 %81, label %land.rhs.19 [
    i8 0, label %land.rhs.18.while.end_crit_edge
    i8 95, label %land.rhs.18.while.end_crit_edge85
  ]

land.rhs.18.while.end_crit_edge85:                ; preds = %land.rhs.18
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.18.while.end_crit_edge:                  ; preds = %land.rhs.18
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.19:                                      ; preds = %land.rhs.18
  %incdec.ptr.19 = getelementptr i8, ptr %call, i32 20
  %incdec.ptr12.19 = getelementptr i8, ptr %call5.i.i, i32 20
  %83 = ptrtoint ptr %incdec.ptr12.18 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %81, ptr %incdec.ptr12.18, align 1
  %84 = ptrtoint ptr %incdec.ptr.19 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %incdec.ptr.19, align 1
  %86 = zext i8 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.100)
  switch i8 %85, label %land.rhs.20 [
    i8 0, label %land.rhs.19.while.end_crit_edge
    i8 95, label %land.rhs.19.while.end_crit_edge86
  ]

land.rhs.19.while.end_crit_edge86:                ; preds = %land.rhs.19
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.19.while.end_crit_edge:                  ; preds = %land.rhs.19
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.20:                                      ; preds = %land.rhs.19
  %incdec.ptr.20 = getelementptr i8, ptr %call, i32 21
  %incdec.ptr12.20 = getelementptr i8, ptr %call5.i.i, i32 21
  %87 = ptrtoint ptr %incdec.ptr12.19 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %85, ptr %incdec.ptr12.19, align 1
  %88 = ptrtoint ptr %incdec.ptr.20 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %incdec.ptr.20, align 1
  %90 = zext i8 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.101)
  switch i8 %89, label %land.rhs.21 [
    i8 0, label %land.rhs.20.while.end_crit_edge
    i8 95, label %land.rhs.20.while.end_crit_edge87
  ]

land.rhs.20.while.end_crit_edge87:                ; preds = %land.rhs.20
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.20.while.end_crit_edge:                  ; preds = %land.rhs.20
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.21:                                      ; preds = %land.rhs.20
  %incdec.ptr.21 = getelementptr i8, ptr %call, i32 22
  %incdec.ptr12.21 = getelementptr i8, ptr %call5.i.i, i32 22
  %91 = ptrtoint ptr %incdec.ptr12.20 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %89, ptr %incdec.ptr12.20, align 1
  %92 = ptrtoint ptr %incdec.ptr.21 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %incdec.ptr.21, align 1
  %94 = zext i8 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.102)
  switch i8 %93, label %land.rhs.22 [
    i8 0, label %land.rhs.21.while.end_crit_edge
    i8 95, label %land.rhs.21.while.end_crit_edge88
  ]

land.rhs.21.while.end_crit_edge88:                ; preds = %land.rhs.21
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.21.while.end_crit_edge:                  ; preds = %land.rhs.21
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.22:                                      ; preds = %land.rhs.21
  %incdec.ptr.22 = getelementptr i8, ptr %call, i32 23
  %incdec.ptr12.22 = getelementptr i8, ptr %call5.i.i, i32 23
  %95 = ptrtoint ptr %incdec.ptr12.21 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %93, ptr %incdec.ptr12.21, align 1
  %96 = ptrtoint ptr %incdec.ptr.22 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %incdec.ptr.22, align 1
  %98 = zext i8 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.103)
  switch i8 %97, label %land.rhs.23 [
    i8 0, label %land.rhs.22.while.end_crit_edge
    i8 95, label %land.rhs.22.while.end_crit_edge89
  ]

land.rhs.22.while.end_crit_edge89:                ; preds = %land.rhs.22
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.22.while.end_crit_edge:                  ; preds = %land.rhs.22
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.23:                                      ; preds = %land.rhs.22
  %incdec.ptr.23 = getelementptr i8, ptr %call, i32 24
  %incdec.ptr12.23 = getelementptr i8, ptr %call5.i.i, i32 24
  %99 = ptrtoint ptr %incdec.ptr12.22 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %97, ptr %incdec.ptr12.22, align 1
  %100 = ptrtoint ptr %incdec.ptr.23 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %incdec.ptr.23, align 1
  %102 = zext i8 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.104)
  switch i8 %101, label %land.rhs.24 [
    i8 0, label %land.rhs.23.while.end_crit_edge
    i8 95, label %land.rhs.23.while.end_crit_edge90
  ]

land.rhs.23.while.end_crit_edge90:                ; preds = %land.rhs.23
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.23.while.end_crit_edge:                  ; preds = %land.rhs.23
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs.24:                                      ; preds = %land.rhs.23
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr12.24 = getelementptr i8, ptr %call5.i.i, i32 25
  %103 = ptrtoint ptr %incdec.ptr12.23 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %101, ptr %incdec.ptr12.23, align 1
  br label %while.end

while.end:                                        ; preds = %land.rhs.24, %land.rhs.23.while.end_crit_edge, %land.rhs.23.while.end_crit_edge90, %land.rhs.22.while.end_crit_edge, %land.rhs.22.while.end_crit_edge89, %land.rhs.21.while.end_crit_edge, %land.rhs.21.while.end_crit_edge88, %land.rhs.20.while.end_crit_edge, %land.rhs.20.while.end_crit_edge87, %land.rhs.19.while.end_crit_edge, %land.rhs.19.while.end_crit_edge86, %land.rhs.18.while.end_crit_edge, %land.rhs.18.while.end_crit_edge85, %land.rhs.17.while.end_crit_edge, %land.rhs.17.while.end_crit_edge84, %land.rhs.16.while.end_crit_edge, %land.rhs.16.while.end_crit_edge83, %land.rhs.15.while.end_crit_edge, %land.rhs.15.while.end_crit_edge82, %land.rhs.14.while.end_crit_edge, %land.rhs.14.while.end_crit_edge81, %land.rhs.13.while.end_crit_edge, %land.rhs.13.while.end_crit_edge80, %land.rhs.12.while.end_crit_edge, %land.rhs.12.while.end_crit_edge79, %land.rhs.11.while.end_crit_edge, %land.rhs.11.while.end_crit_edge78, %land.rhs.10.while.end_crit_edge, %land.rhs.10.while.end_crit_edge77, %land.rhs.9.while.end_crit_edge, %land.rhs.9.while.end_crit_edge76, %land.rhs.8.while.end_crit_edge, %land.rhs.8.while.end_crit_edge75, %land.rhs.7.while.end_crit_edge, %land.rhs.7.while.end_crit_edge74, %land.rhs.6.while.end_crit_edge, %land.rhs.6.while.end_crit_edge73, %land.rhs.5.while.end_crit_edge, %land.rhs.5.while.end_crit_edge72, %land.rhs.4.while.end_crit_edge, %land.rhs.4.while.end_crit_edge71, %land.rhs.3.while.end_crit_edge, %land.rhs.3.while.end_crit_edge70, %land.rhs.2.while.end_crit_edge, %land.rhs.2.while.end_crit_edge69, %land.rhs.1.while.end_crit_edge, %land.rhs.1.while.end_crit_edge68, %land.rhs.while.end_crit_edge, %land.rhs.while.end_crit_edge67, %while.cond.preheader.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge66
  %p.0.lcssa = phi ptr [ %call5.i.i, %while.cond.preheader.while.end_crit_edge ], [ %call5.i.i, %while.cond.preheader.while.end_crit_edge66 ], [ %incdec.ptr12, %land.rhs.while.end_crit_edge ], [ %incdec.ptr12, %land.rhs.while.end_crit_edge67 ], [ %incdec.ptr12.1, %land.rhs.1.while.end_crit_edge ], [ %incdec.ptr12.1, %land.rhs.1.while.end_crit_edge68 ], [ %incdec.ptr12.2, %land.rhs.2.while.end_crit_edge ], [ %incdec.ptr12.2, %land.rhs.2.while.end_crit_edge69 ], [ %incdec.ptr12.3, %land.rhs.3.while.end_crit_edge ], [ %incdec.ptr12.3, %land.rhs.3.while.end_crit_edge70 ], [ %incdec.ptr12.4, %land.rhs.4.while.end_crit_edge ], [ %incdec.ptr12.4, %land.rhs.4.while.end_crit_edge71 ], [ %incdec.ptr12.5, %land.rhs.5.while.end_crit_edge ], [ %incdec.ptr12.5, %land.rhs.5.while.end_crit_edge72 ], [ %incdec.ptr12.6, %land.rhs.6.while.end_crit_edge ], [ %incdec.ptr12.6, %land.rhs.6.while.end_crit_edge73 ], [ %incdec.ptr12.7, %land.rhs.7.while.end_crit_edge ], [ %incdec.ptr12.7, %land.rhs.7.while.end_crit_edge74 ], [ %incdec.ptr12.8, %land.rhs.8.while.end_crit_edge ], [ %incdec.ptr12.8, %land.rhs.8.while.end_crit_edge75 ], [ %incdec.ptr12.9, %land.rhs.9.while.end_crit_edge ], [ %incdec.ptr12.9, %land.rhs.9.while.end_crit_edge76 ], [ %incdec.ptr12.10, %land.rhs.10.while.end_crit_edge ], [ %incdec.ptr12.10, %land.rhs.10.while.end_crit_edge77 ], [ %incdec.ptr12.11, %land.rhs.11.while.end_crit_edge ], [ %incdec.ptr12.11, %land.rhs.11.while.end_crit_edge78 ], [ %incdec.ptr12.12, %land.rhs.12.while.end_crit_edge ], [ %incdec.ptr12.12, %land.rhs.12.while.end_crit_edge79 ], [ %incdec.ptr12.13, %land.rhs.13.while.end_crit_edge ], [ %incdec.ptr12.13, %land.rhs.13.while.end_crit_edge80 ], [ %incdec.ptr12.14, %land.rhs.14.while.end_crit_edge ], [ %incdec.ptr12.14, %land.rhs.14.while.end_crit_edge81 ], [ %incdec.ptr12.15, %land.rhs.15.while.end_crit_edge ], [ %incdec.ptr12.15, %land.rhs.15.while.end_crit_edge82 ], [ %incdec.ptr12.16, %land.rhs.16.while.end_crit_edge ], [ %incdec.ptr12.16, %land.rhs.16.while.end_crit_edge83 ], [ %incdec.ptr12.17, %land.rhs.17.while.end_crit_edge ], [ %incdec.ptr12.17, %land.rhs.17.while.end_crit_edge84 ], [ %incdec.ptr12.18, %land.rhs.18.while.end_crit_edge ], [ %incdec.ptr12.18, %land.rhs.18.while.end_crit_edge85 ], [ %incdec.ptr12.19, %land.rhs.19.while.end_crit_edge ], [ %incdec.ptr12.19, %land.rhs.19.while.end_crit_edge86 ], [ %incdec.ptr12.20, %land.rhs.20.while.end_crit_edge ], [ %incdec.ptr12.20, %land.rhs.20.while.end_crit_edge87 ], [ %incdec.ptr12.21, %land.rhs.21.while.end_crit_edge ], [ %incdec.ptr12.21, %land.rhs.21.while.end_crit_edge88 ], [ %incdec.ptr12.22, %land.rhs.22.while.end_crit_edge ], [ %incdec.ptr12.22, %land.rhs.22.while.end_crit_edge89 ], [ %incdec.ptr12.23, %land.rhs.23.while.end_crit_edge ], [ %incdec.ptr12.23, %land.rhs.23.while.end_crit_edge90 ], [ %incdec.ptr12.24, %land.rhs.24 ]
  %strlen = tail call i32 @strlen(ptr noundef %p.0.lcssa) #14
  %endptr = getelementptr i8, ptr %p.0.lcssa, i32 %strlen
  %104 = call ptr @memcpy(ptr %endptr, ptr @.str.26, i32 6)
  %105 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call5.i.i, ptr %.compoundliteral, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral, i32 0, i32 1
  %106 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @mclk_ops, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral, i32 0, i32 2
  %107 = ptrtoint ptr %.compoundliteral14 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call, ptr %.compoundliteral14, align 4
  %108 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %.compoundliteral14, ptr %parent_names, align 4
  %parent_data = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral, i32 0, i32 3
  %109 = ptrtoint ptr %parent_data to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %parent_data, align 4
  %parent_hws = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral, i32 0, i32 4
  %110 = ptrtoint ptr %parent_hws to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %parent_hws, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral, i32 0, i32 5
  %111 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %num_parents, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %.compoundliteral, i32 0, i32 6
  %112 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %flags, align 4
  %init = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %113 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %.compoundliteral, ptr %init, align 4
  %i2s_data = getelementptr inbounds %struct.stm32_i2smclk_data, ptr %call.i, i32 0, i32 2
  %114 = ptrtoint ptr %i2s_data to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %i2s, ptr %i2s_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_i2s_add_mclk_provider.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_i2s_add_mclk_provider, %if.then21)) #10
          to label %do.end [label %if.then21], !srcloc !209

if.then21:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_i2s_add_mclk_provider.__UNIQUE_ID_ddebug245, ptr noundef %dev1, ptr noundef nonnull @.str.28, ptr noundef nonnull %call5.i.i) #10
  br label %do.end

do.end:                                           ; preds = %if.then21, %while.end
  %115 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pdev, align 4
  %dev24 = getelementptr inbounds %struct.platform_device, ptr %116, i32 0, i32 3
  %call25 = call i32 @devm_clk_hw_register(ptr noundef %dev24, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end31, label %do.end30

do.end30:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %call25) #13
  br label %cleanup

if.end31:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %clk = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 1
  %117 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %clk, align 4
  %i2smclk = getelementptr inbounds %struct.stm32_i2s_data, ptr %i2s, i32 0, i32 8
  %119 = ptrtoint ptr %i2smclk to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %118, ptr %i2smclk, align 4
  %call32 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev1, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef nonnull %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end30, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %do.end30 ], [ %call32, %if.end31 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_i2s_isr(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  %sr = alloca i32, align 4
  %ier = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.stm32_i2s_data, ptr %devid, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sr) #10
  %2 = ptrtoint ptr %sr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sr, align 4, !annotation !208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ier) #10
  %3 = ptrtoint ptr %ier to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %ier, align 4, !annotation !208
  %regmap = getelementptr inbounds %struct.stm32_i2s_data, ptr %devid, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %5, i32 noundef 20, ptr noundef nonnull %sr) #10
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %7, i32 noundef 16, ptr noundef nonnull %ier) #10
  %8 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sr, align 4
  %10 = ptrtoint ptr %ier to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ier, align 4
  %and = and i32 %11, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_i2s_isr.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_i2s_isr, %if.then8)) #10
          to label %cleanup [label %if.then8], !srcloc !209

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sr, align 4
  %14 = ptrtoint ptr %ier to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ier, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_i2s_isr.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %13, i32 noundef %15) #10
  br label %cleanup

if.end9:                                          ; preds = %entry
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 24, i32 noundef 4088, i32 noundef %and, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %and12 = and i32 %and, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end9.if.end32_crit_edge, label %do.body15

if.end9.if.end32_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

do.body15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_i2s_isr.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_i2s_isr, %if.then27)) #10
          to label %if.end32 [label %if.then27], !srcloc !209

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  %dev28 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_i2s_isr.__UNIQUE_ID_ddebug247, ptr noundef %dev28, ptr noundef nonnull @.str.40) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %do.body15, %if.end9.if.end32_crit_edge
  %err.0 = phi i32 [ 0, %if.end9.if.end32_crit_edge ], [ 1, %if.then27 ], [ 1, %do.body15 ]
  %and33 = and i32 %and, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end53_crit_edge, label %do.body36

if.end32.if.end53_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

do.body36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_i2s_isr.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_i2s_isr, %if.then48)) #10
          to label %if.end53 [label %if.then48], !srcloc !209

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  %dev49 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_i2s_isr.__UNIQUE_ID_ddebug248, ptr noundef %dev49, ptr noundef nonnull @.str.41) #10
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %do.body36, %if.end32.if.end53_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end32.if.end53_crit_edge ], [ 1, %if.then48 ], [ 1, %do.body36 ]
  %and54 = and i32 %and, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end53.if.end74_crit_edge, label %do.body57

if.end53.if.end74_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

do.body57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_i2s_isr.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_i2s_isr, %if.then69)) #10
          to label %if.end74 [label %if.then69], !srcloc !209

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  %dev70 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_i2s_isr.__UNIQUE_ID_ddebug249, ptr noundef %dev70, ptr noundef nonnull @.str.42) #10
  br label %if.end74

if.end74:                                         ; preds = %if.then69, %do.body57, %if.end53.if.end74_crit_edge
  %irq_lock = getelementptr inbounds %struct.stm32_i2s_data, ptr %devid, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %irq_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool75.not = icmp eq i32 %err.1, 0
  br i1 %tobool75.not, label %if.end74.if.end80_crit_edge, label %land.lhs.true

if.end74.if.end80_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

land.lhs.true:                                    ; preds = %if.end74
  %substream = getelementptr inbounds %struct.stm32_i2s_data, ptr %devid, i32 0, i32 6
  %18 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %substream, align 4
  %tobool76.not = icmp eq ptr %19, null
  br i1 %tobool76.not, label %land.lhs.true.if.end80_crit_edge, label %if.then77

land.lhs.true.if.end80_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then77:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call79 = call i32 @snd_pcm_stop_xrun(ptr noundef nonnull %19) #10
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %land.lhs.true.if.end80_crit_edge, %if.end74.if.end80_crit_edge
  call void @_raw_spin_unlock(ptr noundef %irq_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.then8, %do.body
  %retval.0 = phi i32 [ 1, %if.end80 ], [ 0, %if.then8 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ier) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sr) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_i2smclk_enable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i2s_data = getelementptr inbounds %struct.stm32_i2smclk_data, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %i2s_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2s_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_i2smclk_enable.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_i2smclk_enable, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !209

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.stm32_i2s_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_i2smclk_enable.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.31) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.stm32_i2s_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 80, i32 noundef 33554432, i32 noundef 33554432, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_i2smclk_disable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i2s_data = getelementptr inbounds %struct.stm32_i2smclk_data, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %i2s_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2s_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_i2smclk_disable.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_i2smclk_disable, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !209

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.stm32_i2s_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_i2smclk_disable.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.33) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.stm32_i2s_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 80, i32 noundef 33554432, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_i2smclk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %freq = getelementptr inbounds %struct.stm32_i2smclk_data, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %freq, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_i2smclk_round_rate(ptr nocapture noundef %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i2s_data = getelementptr inbounds %struct.stm32_i2smclk_data, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %i2s_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2s_data, align 4
  %2 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prate, align 4
  %call = tail call fastcc i32 @stm32_i2s_calc_clk_div(ptr noundef %1, i32 noundef %3, i32 noundef %rate)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prate, align 4
  %divider = getelementptr inbounds %struct.stm32_i2s_data, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %divider to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %divider, align 4
  %div = udiv i32 %5, %7
  %freq = getelementptr inbounds %struct.stm32_i2smclk_data, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div, ptr %freq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_i2smclk_set_rate(ptr nocapture noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i2s_data = getelementptr inbounds %struct.stm32_i2smclk_data, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %i2s_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2s_data, align 4
  %call = tail call fastcc i32 @stm32_i2s_calc_clk_div(ptr noundef %1, i32 noundef %parent_rate, i32 noundef %rate)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %div.i = getelementptr inbounds %struct.stm32_i2s_data, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %div.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %div.i, align 4
  %shl.i = shl i32 %3, 16
  %odd.i = getelementptr inbounds %struct.stm32_i2s_data, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %odd.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %odd.i, align 4, !range !210
  %6 = zext i8 %5 to i32
  %shl1.i = shl nuw nsw i32 %6, 24
  %or.i = or i32 %shl1.i, %shl.i
  %regmap.i = getelementptr inbounds %struct.stm32_i2s_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 80, i32 noundef 33488896, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %freq = getelementptr inbounds %struct.stm32_i2smclk_data, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %rate, ptr %freq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_i2s_calc_clk_div(ptr nocapture noundef %i2s, i32 noundef %input_rate, i32 noundef %output_rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %div178 = lshr i32 %output_rate, 1
  %add = add i32 %div178, %input_rate
  %div2 = udiv i32 %add, %output_rate
  %and = and i32 %div2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %0 = trunc i32 %and to i8
  %shr = lshr i32 %div2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div2)
  %tobool3.not = icmp ult i32 %div2, 2
  br i1 %tobool3.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_i2s_calc_clk_div.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_i2s_calc_clk_div, %if.then11)) #10
          to label %if.end14 [label %if.then11], !srcloc !209

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.stm32_i2s_data, ptr %i2s, i32 0, i32 2
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_i2s_calc_clk_div.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %shr, i32 noundef %and, i32 noundef %div2) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then, %entry.if.end14_crit_edge
  %divider.0 = phi i32 [ %div2, %if.then11 ], [ 1, %entry.if.end14_crit_edge ], [ %div2, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp = icmp eq i32 %shr, 1
  %brmerge.not = and i1 %cmp, %tobool.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %div2)
  %cmp18 = icmp ugt i32 %div2, 255
  %or.cond = or i1 %cmp18, %brmerge.not
  br i1 %or.cond, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %pdev24 = getelementptr inbounds %struct.stm32_i2s_data, ptr %i2s, i32 0, i32 2
  %3 = ptrtoint ptr %pdev24 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev24, align 4
  %dev25 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.36) #13
  br label %cleanup

if.end26:                                         ; preds = %if.end14
  %div44 = udiv i32 %input_rate, %divider.0
  %5 = mul i32 %div44, %divider.0
  %rem.decomposed = sub i32 %input_rate, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool27.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool27.not, label %if.end26.if.end48_crit_edge, label %do.body29

if.end26.if.end48_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

do.body29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_i2s_calc_clk_div.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_i2s_calc_clk_div, %if.then41)) #10
          to label %if.end48 [label %if.then41], !srcloc !209

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  %pdev42 = getelementptr inbounds %struct.stm32_i2s_data, ptr %i2s, i32 0, i32 2
  %6 = ptrtoint ptr %pdev42 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev42, align 4
  %dev43 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_i2s_calc_clk_div.__UNIQUE_ID_ddebug242, ptr noundef %dev43, ptr noundef nonnull @.str.37, i32 noundef %output_rate, i32 noundef %div44) #10
  br label %if.end48

if.end48:                                         ; preds = %if.then41, %do.body29, %if.end26.if.end48_crit_edge
  %div49 = getelementptr inbounds %struct.stm32_i2s_data, ptr %i2s, i32 0, i32 19
  %8 = ptrtoint ptr %div49 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr, ptr %div49, align 4
  %odd51 = getelementptr inbounds %struct.stm32_i2s_data, ptr %i2s, i32 0, i32 20
  %9 = ptrtoint ptr %odd51 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %0, ptr %odd51, align 4
  %divider53 = getelementptr inbounds %struct.stm32_i2s_data, ptr %i2s, i32 0, i32 18
  %10 = ptrtoint ptr %divider53 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %divider.0, ptr %divider53, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %do.end23
  %retval.0 = phi i32 [ -22, %do.end23 ], [ 0, %if.end48 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_i2s_dai_probe(ptr nocapture noundef %cpu_dai) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %dma_data_tx1 = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 4
  %dma_data_rx2 = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 5
  %addr_width = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %addr_width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %addr_width, align 4
  %phys_addr = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 13
  %5 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phys_addr, align 4
  %add = add i32 %6, 32
  %7 = ptrtoint ptr %dma_data_tx1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %dma_data_tx1, align 4
  %maxburst = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %maxburst, align 4
  %addr_width3 = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %addr_width3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %addr_width3, align 4
  %add5 = add i32 %6, 48
  %10 = ptrtoint ptr %dma_data_rx2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add5, ptr %dma_data_rx2, align 4
  %maxburst7 = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %maxburst7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %maxburst7, align 4
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 7
  %12 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dma_data_tx1, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 8
  %13 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dma_data_rx2, ptr %capture_dma_data.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_i2s_set_sysclk(ptr nocapture noundef readonly %cpu_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_i2s_set_sysclk.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_i2s_set_sysclk, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !209

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %ms_flg = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 22
  %6 = ptrtoint ptr %ms_flg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ms_flg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %cond = select i1 %cmp, ptr @.str.47, ptr @.str.48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool4.not = icmp eq i32 %dir, 0
  %cond5 = select i1 %tobool4.not, ptr @.str.50, ptr @.str.49
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_i2s_set_sysclk.__UNIQUE_ID_ddebug251, ptr noundef %5, ptr noundef nonnull @.str.46, i32 noundef %freq, ptr noundef nonnull %cond, ptr noundef nonnull %cond5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp6 = icmp eq i32 %dir, 1
  br i1 %cmp6, label %land.lhs.true, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end
  %ms_flg7 = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 22
  %8 = ptrtoint ptr %ms_flg7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ms_flg7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp8 = icmp eq i32 %9, 1
  br i1 %cmp8, label %if.then9, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %land.lhs.true
  %i2smclk = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %i2smclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2smclk, align 4
  %tobool10.not = icmp eq ptr %11, null
  br i1 %tobool10.not, label %do.body12, label %if.end29

do.body12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_i2s_set_sysclk.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_i2s_set_sysclk, %if.then24)) #10
          to label %cleanup [label %if.then24], !srcloc !209

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_i2s_set_sysclk.__UNIQUE_ID_ddebug252, ptr noundef %13, ptr noundef nonnull @.str.51) #10
  br label %cleanup

if.end29:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq)
  %tobool30.not = icmp eq i32 %freq, 0
  br i1 %tobool30.not, label %if.then31, label %if.end38

if.then31:                                        ; preds = %if.end29
  %mclk_rate = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 16
  %14 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mclk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool32.not = icmp eq i32 %15, 0
  br i1 %tobool32.not, label %if.then31.if.end36_crit_edge, label %if.then33

if.then31.if.end36_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then33:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_rate_exclusive_put(ptr noundef nonnull %11) #10
  %16 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %mclk_rate, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.then31.if.end36_crit_edge
  %regmap = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 80, i32 noundef 33554432, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

if.end38:                                         ; preds = %if.end29
  %pdev1.i = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev1.i, align 4
  %rem.i = urem i32 %freq, 11025
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %x8kclk.i = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 10
  %x11kclk.i = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 11
  %parent_clk.0.in.i = select i1 %tobool.not.i, ptr %x11kclk.i, ptr %x8kclk.i
  %21 = ptrtoint ptr %parent_clk.0.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %parent_clk.0.i = load ptr, ptr %parent_clk.0.in.i, align 4
  %i2sclk.i = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 7
  %22 = ptrtoint ptr %i2sclk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2sclk.i, align 4
  %call.i86 = tail call i32 @clk_set_parent(ptr noundef %23, ptr noundef %parent_clk.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %tobool2.not.i = icmp eq i32 %call.i86, 0
  br i1 %tobool2.not.i, label %if.end42, label %stm32_i2s_set_parent_clock.exit

stm32_i2s_set_parent_clock.exit:                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i87 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i87, ptr noundef nonnull @.str.53, i32 noundef %call.i86) #13
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  %24 = ptrtoint ptr %i2smclk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2smclk, align 4
  %call44 = tail call i32 @clk_set_rate_exclusive(ptr noundef %25, i32 noundef %freq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end51, label %do.end49

do.end49:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.52) #13
  br label %cleanup

if.end51:                                         ; preds = %if.end42
  %regmap52 = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %regmap52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap52, align 4
  %call.i88 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 80, i32 noundef 33554432, i32 noundef 33554432, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool54.not = icmp eq i32 %call.i88, 0
  br i1 %tobool54.not, label %if.then55, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %mclk_rate56 = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 16
  %30 = ptrtoint ptr %mclk_rate56 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %freq, ptr %mclk_rate56, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end51.cleanup_crit_edge, %do.end49, %stm32_i2s_set_parent_clock.exit, %if.end36, %if.then24, %do.body12, %land.lhs.true.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call44, %do.end49 ], [ %call.i, %if.end36 ], [ 0, %if.then24 ], [ %call.i86, %stm32_i2s_set_parent_clock.exit ], [ %call.i88, %if.end51.cleanup_crit_edge ], [ 0, %if.then55 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %do.body12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_i2s_set_dai_fmt(ptr nocapture noundef readonly %cpu_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_i2s_set_dai_fmt.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_i2s_set_dai_fmt, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !209

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_i2s_set_dai_fmt.__UNIQUE_ID_ddebug250, ptr noundef %5, ptr noundef nonnull @.str.56, i32 noundef %fmt) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %fmt, 15
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 4
  br i1 %6, label %switch.lookup, label %do.end9

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.57, i32 noundef %and) #13
  br label %cleanup

switch.lookup:                                    ; preds = %do.end
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.stm32_i2s_set_dai_fmt, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %and12 = and i32 %fmt, 3840
  %10 = lshr exact i32 %and12, 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %10, label %do.end22 [
    i32 0, label %switch.lookup.sw.epilog25_crit_edge
    i32 3, label %sw.bb13
    i32 2, label %sw.bb14
    i32 4, label %sw.bb16
  ]

switch.lookup.sw.epilog25_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog25

sw.bb13:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %switch.load, 2048
  br label %sw.epilog25

sw.bb14:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  %or15 = or i32 %switch.load, 8192
  br label %sw.epilog25

sw.bb16:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  %or18 = or i32 %switch.load, 10240
  br label %sw.epilog25

do.end22:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.59, i32 noundef %and12) #13
  br label %cleanup

sw.epilog25:                                      ; preds = %sw.bb16, %sw.bb14, %sw.bb13, %switch.lookup.sw.epilog25_crit_edge
  %cgfr.1 = phi i32 [ %or18, %sw.bb16 ], [ %or15, %sw.bb14 ], [ %or, %sw.bb13 ], [ %switch.load, %switch.lookup.sw.epilog25_crit_edge ]
  %and26 = and i32 %fmt, 61440
  %trunc = trunc i32 %and26 to i16
  %14 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.106)
  switch i16 %trunc, label %do.end33 [
    i16 4096, label %sw.epilog25.sw.epilog36_crit_edge
    i16 16384, label %sw.bb28
  ]

sw.epilog25.sw.epilog36_crit_edge:                ; preds = %sw.epilog25
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog36

sw.bb28:                                          ; preds = %sw.epilog25
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog36

do.end33:                                         ; preds = %sw.epilog25
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.62, i32 noundef %and26) #13
  br label %cleanup

sw.epilog36:                                      ; preds = %sw.bb28, %sw.epilog25.sw.epilog36_crit_edge
  %.sink = phi i32 [ 1, %sw.bb28 ], [ 2, %sw.epilog25.sw.epilog36_crit_edge ]
  %ms_flg29 = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 22
  %17 = ptrtoint ptr %ms_flg29 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %ms_flg29, align 4
  %fmt37 = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 17
  %18 = ptrtoint ptr %fmt37 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %fmt, ptr %fmt37, align 4
  %regmap = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 80, i32 noundef 10302, i32 noundef %cgfr.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog36, %do.end33, %do.end22, %do.end9
  %retval.0 = phi i32 [ -22, %do.end9 ], [ -22, %do.end22 ], [ -22, %do.end33 ], [ %call.i, %sw.epilog36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_i2s_startup(ptr noundef %substream, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %irq_lock = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 15
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #10
  %substream6 = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %substream6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %substream6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call3) #10
  %fmt = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 17
  %5 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fmt, align 4
  %and = and i32 %6, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp8.not = icmp eq i32 %and, 4
  br i1 %cmp8.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %7 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %runtime, align 4
  %call.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %8, i32 noundef 10, i32 noundef 2, i32 noundef 2) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2sclk = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %i2sclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2sclk, align 4
  %call.i31 = tail call i32 @clk_prepare(ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool.not.i = icmp eq i32 %call.i31, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end18_crit_edge, label %if.then3.i

if.end.i.if.end18_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %10) #10
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i31, %if.end.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp12 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp12, label %do.end17, label %clk_prepare_enable.exit.if.end18_crit_edge

clk_prepare_enable.exit.if.end18_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

do.end17:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.64, i32 noundef %retval.0.i) #13
  br label %cleanup

if.end18:                                         ; preds = %clk_prepare_enable.exit.if.end18_crit_edge, %if.end.i.if.end18_crit_edge
  %regmap = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i32 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 24, i32 noundef 4088, i32 noundef 4088, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end17
  %retval.0 = phi i32 [ %retval.0.i, %do.end17 ], [ %call.i32, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_i2s_shutdown(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %i2sclk = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %i2sclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2sclk, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  %irq_lock = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 15
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #10
  %substream6 = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %substream6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %substream6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_i2s_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  %cgfr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i.i.i, label %for.inc.i.i.i.i, label %entry.if.then.i.i.i.i_crit_edge

entry.if.then.i.i.i.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge, %entry.if.then.i.i.i.i_crit_edge
  %i.09.lcssa.i.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge ]
  %.lcssa.i.i.i.i = phi i32 [ %5, %entry.if.then.i.i.i.i_crit_edge ], [ %8, %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge ]
  %6 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i.i, i1 true) #10, !range !211
  %add.i.i.i.i = or i32 %6, %i.09.lcssa.i.i.i.i
  br label %params_width.exit.i

for.inc.i.i.i.i:                                  ; preds = %entry
  %arrayidx.1.i.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.1.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.1.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.1.i.i.i.i, label %for.inc.i.i.i.i.params_width.exit.i_crit_edge, label %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge

for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge:        ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i.i

for.inc.i.i.i.i.params_width.exit.i_crit_edge:    ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_width.exit.i

params_width.exit.i:                              ; preds = %for.inc.i.i.i.i.params_width.exit.i_crit_edge, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %add.i.i.i.i, %if.then.i.i.i.i ], [ 0, %for.inc.i.i.i.i.params_width.exit.i_crit_edge ]
  %call1.i.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i.i) #10
  %9 = zext i32 %call1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %call1.i.i, label %do.end.i [
    i32 16, label %params_width.exit.i.sw.epilog.i_crit_edge
    i32 32, label %sw.bb2.i
  ]

params_width.exit.i.sw.epilog.i_crit_edge:        ; preds = %params_width.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %params_width.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

do.end.i:                                         ; preds = %params_width.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.68, i32 noundef %call1.i.i) #13
  br label %do.end

sw.epilog.i:                                      ; preds = %sw.bb2.i, %params_width.exit.i.sw.epilog.i_crit_edge
  %cfgr.0.i = phi i32 [ 1536, %sw.bb2.i ], [ 0, %params_width.exit.i.sw.epilog.i_crit_edge ]
  %ms_flg.i = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 22
  %12 = ptrtoint ptr %ms_flg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ms_flg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i = icmp eq i32 %13, 2
  %cfgr.1.v.i = select i1 %cmp.i, i32 4104, i32 10
  %cfgr.1.i = or i32 %cfgr.1.v.i, %cfgr.0.i
  %cfgr_mask.1.i = select i1 %cmp.i, i32 5902, i32 1806
  %regmap.i = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 80, i32 noundef %cfgr_mask.1.i, i32 noundef %cfgr.1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp8.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp8.i, label %sw.epilog.i.do.end_crit_edge, label %stm32_i2s_configure.exit

sw.epilog.i.do.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

stm32_i2s_configure.exit:                         ; preds = %sw.epilog.i
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call.i1.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 8, i32 noundef 480, i32 noundef 96, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %cmp = icmp slt i32 %call.i1.i, 0
  br i1 %cmp, label %stm32_i2s_configure.exit.do.end_crit_edge, label %if.end

stm32_i2s_configure.exit.do.end_crit_edge:        ; preds = %stm32_i2s_configure.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %stm32_i2s_configure.exit.do.end_crit_edge, %sw.epilog.i.do.end_crit_edge, %do.end.i
  %retval.0.i22 = phi i32 [ %call.i1.i, %stm32_i2s_configure.exit.do.end_crit_edge ], [ %call.i.i, %sw.epilog.i.do.end_crit_edge ], [ -22, %do.end.i ]
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.66, i32 noundef %retval.0.i22) #13
  br label %cleanup

if.end:                                           ; preds = %stm32_i2s_configure.exit
  %20 = ptrtoint ptr %ms_flg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ms_flg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp2 = icmp eq i32 %21, 1
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i15 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %driver_data.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i.i15, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cgfr.i) #10
  %28 = ptrtoint ptr %cgfr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %cgfr.i, align 4, !annotation !208
  %rem.i = urem i32 %27, 11025
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %i2sclk.i = getelementptr inbounds %struct.stm32_i2s_data, ptr %25, i32 0, i32 7
  %29 = ptrtoint ptr %i2sclk.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2sclk.i, align 4
  %x8kclk.i = getelementptr inbounds %struct.stm32_i2s_data, ptr %25, i32 0, i32 10
  %x11kclk.i = getelementptr inbounds %struct.stm32_i2s_data, ptr %25, i32 0, i32 11
  %x8kclk.sink.i = select i1 %tobool.not.i, ptr %x11kclk.i, ptr %x8kclk.i
  %31 = ptrtoint ptr %x8kclk.sink.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %x8kclk.sink.i, align 4
  %call4.i = tail call i32 @clk_set_parent(ptr noundef %30, ptr noundef %32) #10
  %33 = ptrtoint ptr %i2sclk.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2sclk.i, align 4
  %call6.i = tail call i32 @clk_get_rate(ptr noundef %34) #10
  %mclk_rate.i = getelementptr inbounds %struct.stm32_i2s_data, ptr %25, i32 0, i32 16
  %35 = ptrtoint ptr %mclk_rate.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mclk_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool7.not.i = icmp eq i32 %36, 0
  br i1 %tobool7.not.i, label %if.else14.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.then3
  %call10.i = tail call fastcc i32 @stm32_i2s_calc_clk_div(ptr noundef %25, i32 noundef %call6.i, i32 noundef %36) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.then8.i.if.end39.i_crit_edge, label %if.then8.i.stm32_i2s_configure_clock.exit_crit_edge

if.then8.i.stm32_i2s_configure_clock.exit_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_i2s_configure_clock.exit

if.then8.i.if.end39.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.else14.i:                                      ; preds = %if.then3
  %fmt.i = getelementptr inbounds %struct.stm32_i2s_data, ptr %25, i32 0, i32 17
  %37 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fmt.i, align 4
  %regmap.i16 = getelementptr inbounds %struct.stm32_i2s_data, ptr %25, i32 0, i32 1
  %39 = ptrtoint ptr %regmap.i16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i16, align 4
  %call17.i = call i32 @regmap_read(ptr noundef %40, i32 noundef 80, ptr noundef nonnull %cgfr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.else14.i.stm32_i2s_configure_clock.exit_crit_edge, label %if.end20.i

if.else14.i.stm32_i2s_configure_clock.exit_crit_edge: ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_i2s_configure_clock.exit

if.end20.i:                                       ; preds = %if.else14.i
  %and.i = and i32 %38, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i)
  %cmp.i17 = icmp eq i32 %and.i, 4
  %spec.store.select.i = select i1 %cmp.i17, i32 16, i32 32
  %41 = ptrtoint ptr %cgfr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cgfr.i, align 4
  %and33.i = lshr i32 %42, 10
  %shr.i = and i32 %and33.i, 1
  %add.i = add nuw nsw i32 %shr.i, 1
  %mul.i = mul i32 %spec.store.select.i, %27
  %mul34.i = mul i32 %mul.i, %add.i
  %call35.i = call fastcc i32 @stm32_i2s_calc_clk_div(ptr noundef %25, i32 noundef %call6.i, i32 noundef %mul34.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end20.i.if.end39.i_crit_edge, label %if.end20.i.stm32_i2s_configure_clock.exit_crit_edge

if.end20.i.stm32_i2s_configure_clock.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_i2s_configure_clock.exit

if.end20.i.if.end39.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end20.i.if.end39.i_crit_edge, %if.then8.i.if.end39.i_crit_edge
  %div.i.i = getelementptr inbounds %struct.stm32_i2s_data, ptr %25, i32 0, i32 19
  %43 = ptrtoint ptr %div.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %div.i.i, align 4
  %shl.i.i = shl i32 %44, 16
  %odd.i.i = getelementptr inbounds %struct.stm32_i2s_data, ptr %25, i32 0, i32 20
  %45 = ptrtoint ptr %odd.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %odd.i.i, align 4, !range !210
  %47 = zext i8 %46 to i32
  %shl1.i.i = shl nuw nsw i32 %47, 24
  %or.i.i = or i32 %shl1.i.i, %shl.i.i
  %regmap.i.i = getelementptr inbounds %struct.stm32_i2s_data, ptr %25, i32 0, i32 1
  %48 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 80, i32 noundef 33488896, i32 noundef %or.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp41.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp41.i, label %if.end39.i.stm32_i2s_configure_clock.exit_crit_edge, label %if.end43.i

if.end39.i.stm32_i2s_configure_clock.exit_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stm32_i2s_configure_clock.exit

if.end43.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i18 = call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 12, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %stm32_i2s_configure_clock.exit

stm32_i2s_configure_clock.exit:                   ; preds = %if.end43.i, %if.end39.i.stm32_i2s_configure_clock.exit_crit_edge, %if.end20.i.stm32_i2s_configure_clock.exit_crit_edge, %if.else14.i.stm32_i2s_configure_clock.exit_crit_edge, %if.then8.i.stm32_i2s_configure_clock.exit_crit_edge
  %retval.0.i19 = phi i32 [ %call.i.i18, %if.end43.i ], [ %call10.i, %if.then8.i.stm32_i2s_configure_clock.exit_crit_edge ], [ %call17.i, %if.else14.i.stm32_i2s_configure_clock.exit_crit_edge ], [ %call35.i, %if.end20.i.stm32_i2s_configure_clock.exit_crit_edge ], [ %call.i.i.i, %if.end39.i.stm32_i2s_configure_clock.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cgfr.i) #10
  br label %cleanup

cleanup:                                          ; preds = %stm32_i2s_configure_clock.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i22, %do.end ], [ %retval.0.i19, %stm32_i2s_configure_clock.exit ], [ %call.i1.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_i2s_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
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
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.do.body_crit_edge
    i32 6, label %entry.do.body_crit_edge150
    i32 4, label %entry.do.body_crit_edge151
    i32 0, label %entry.do.body45_crit_edge
    i32 5, label %entry.do.body45_crit_edge152
    i32 3, label %entry.do.body45_crit_edge153
  ]

entry.do.body45_crit_edge153:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45

entry.do.body45_crit_edge152:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45

entry.do.body45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45

entry.do.body_crit_edge151:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge150:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge150, %entry.do.body_crit_edge151
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_i2s_trigger.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_i2s_trigger, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !209

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %cond = select i1 %cmp, ptr @.str.43, ptr @.str.44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_i2s_trigger.__UNIQUE_ID_ddebug258, ptr noundef %8, ptr noundef nonnull @.str.71, ptr noundef nonnull %cond) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %regmap = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 8, i32 noundef 49152, i32 noundef 49152, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i140 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %cmp9 = icmp slt i32 %call.i140, 0
  br i1 %cmp9, label %do.end13, label %if.end15

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.72, i32 noundef %call.i140) #13
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i141 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 0, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %cmp18 = icmp slt i32 %call.i141, 0
  br i1 %cmp18, label %do.end22, label %if.end24

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.74, i32 noundef %call.i141) #13
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call.i142 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 24, i32 noundef 4088, i32 noundef 4088, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %lock_fd = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %lock_fd) #10
  %refcount = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 21
  %21 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %refcount, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %refcount, align 4
  br i1 %cmp, label %if.end24.if.end36_crit_edge, label %if.else

if.end24.if.end36_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.else:                                          ; preds = %if.end24
  %ms_flg = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 22
  %23 = ptrtoint ptr %ms_flg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ms_flg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp29 = icmp eq i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp31 = icmp eq i32 %22, 0
  %or.cond = select i1 %cmp29, i1 %cmp31, i1 false
  br i1 %or.cond, label %if.then32, label %if.else.if.end36_crit_edge

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call34 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 32, i32 noundef 0) #10
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.else.if.end36_crit_edge, %if.end24.if.end36_crit_edge
  %ier.0 = phi i32 [ 64, %if.then32 ], [ 64, %if.else.if.end36_crit_edge ], [ 32, %if.end24.if.end36_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock_fd) #10
  %ms_flg38 = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 22
  %27 = ptrtoint ptr %ms_flg38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ms_flg38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp39 = icmp eq i32 %28, 2
  %or = or i32 %ier.0, 256
  %spec.select = select i1 %cmp39, i32 %or, i32 %ier.0
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call.i143 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 16, i32 noundef %spec.select, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

do.body45:                                        ; preds = %entry.do.body45_crit_edge, %entry.do.body45_crit_edge152, %entry.do.body45_crit_edge153
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_i2s_trigger.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_i2s_trigger, %if.then57)) #10
          to label %do.end63 [label %if.then57], !srcloc !209

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %cond60 = select i1 %cmp, ptr @.str.43, ptr @.str.44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_i2s_trigger.__UNIQUE_ID_ddebug259, ptr noundef %32, ptr noundef nonnull @.str.76, ptr noundef nonnull %cond60) #10
  br label %do.end63

do.end63:                                         ; preds = %if.then57, %do.body45
  %regmap66 = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 1
  %33 = ptrtoint ptr %regmap66 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap66, align 4
  br i1 %cmp, label %if.then65, label %if.else68

if.then65:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #12
  %call.i144 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 16, i32 noundef 32, i32 noundef -33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end71

if.else68:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #12
  %call.i145 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 16, i32 noundef 64, i32 noundef -65, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end71

if.end71:                                         ; preds = %if.else68, %if.then65
  %lock_fd72 = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %lock_fd72) #10
  %refcount73 = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 21
  %35 = ptrtoint ptr %refcount73 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %refcount73, align 4
  %dec = add i32 %36, -1
  store i32 %dec, ptr %refcount73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool75.not = icmp eq i32 %dec, 0
  br i1 %tobool75.not, label %if.end78, label %if.then76

if.then76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %lock_fd72) #10
  br label %cleanup

if.end78:                                         ; preds = %if.end71
  %regmap79 = getelementptr inbounds %struct.stm32_i2s_data, ptr %3, i32 0, i32 1
  %37 = ptrtoint ptr %regmap79 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap79, align 4
  %call.i146 = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %cmp81 = icmp slt i32 %call.i146, 0
  br i1 %cmp81, label %do.end85, label %if.end88

do.end85:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.78, i32 noundef %call.i146) #13
  tail call void @_raw_spin_unlock(ptr noundef %lock_fd72) #10
  br label %cleanup

if.end88:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %lock_fd72) #10
  %41 = ptrtoint ptr %regmap79 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap79, align 4
  %call.i147 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 8, i32 noundef 49152, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %do.end85, %if.then76, %if.end36, %do.end22, %do.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i146, %do.end85 ], [ %call.i140, %do.end13 ], [ %call.i141, %do.end22 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end88 ], [ 0, %if.then76 ], [ 0, %if.end36 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_rate_exclusive_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate_exclusive(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_prepare_slave_config(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_component(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stm32_i2s_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 8, label %entry.return_crit_edge1
    i32 12, label %entry.return_crit_edge2
    i32 16, label %entry.return_crit_edge3
    i32 24, label %entry.return_crit_edge4
    i32 32, label %entry.return_crit_edge5
    i32 80, label %entry.return_crit_edge6
  ]

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stm32_i2s_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 8, label %entry.return_crit_edge1
    i32 12, label %entry.return_crit_edge2
    i32 16, label %entry.return_crit_edge3
    i32 20, label %entry.return_crit_edge4
    i32 48, label %entry.return_crit_edge5
    i32 80, label %entry.return_crit_edge6
    i32 1008, label %entry.return_crit_edge7
    i32 1012, label %entry.return_crit_edge8
    i32 1016, label %entry.return_crit_edge9
    i32 1020, label %entry.return_crit_edge10
  ]

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

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stm32_i2s_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %reg)
  %switch.selectcmp.case1 = icmp eq i32 %reg, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %reg)
  %switch.selectcmp.case2 = icmp eq i32 %reg, 48
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  ret i1 %switch.selectcmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_i2s_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.stm32_i2s_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #10
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %5) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_i2s_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.stm32_i2s_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext false) #10
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regcache_sync(ptr noundef %5) #10
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strlen(ptr nocapture) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !24, !25, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !67, !69, !70, !71, !73, !74, !75, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !98, !99, !100, !102, !103, !105, !106, !108, !109, !111, !113, !115, !117, !118, !119, !120, !121, !122, !123, !125, !126, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !183, !184, !185, !187, !189, !191, !193, !195, !197}
!llvm.module.flags = !{!199, !200, !201, !202, !203, !204, !205, !206}
!llvm.ident = !{!207}

!0 = !{ptr @__initcall__kmod_snd_soc_stm32_i2s__276_1226_stm32_i2s_driver_init6, !1, !"__initcall__kmod_snd_soc_stm32_i2s__276_1226_stm32_i2s_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1226, i32 1}
!2 = !{ptr @__exitcall_stm32_i2s_driver_exit, !1, !"__exitcall_stm32_i2s_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description277, !4, !"__UNIQUE_ID_description277", i1 false, i1 false}
!4 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1228, i32 1}
!5 = !{ptr @__UNIQUE_ID_author278, !6, !"__UNIQUE_ID_author278", i1 false, i1 false}
!6 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1229, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias279, !8, !"__UNIQUE_ID_alias279", i1 false, i1 false}
!8 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1230, i32 1}
!9 = !{ptr @__UNIQUE_ID_file280, !10, !"__UNIQUE_ID_file280", i1 false, i1 false}
!10 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1231, i32 1}
!11 = !{ptr @__UNIQUE_ID_license281, !10, !"__UNIQUE_ID_license281", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1218, i32 11}
!14 = !{ptr @stm32_i2s_driver, !15, !"stm32_i2s_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1216, i32 31}
!16 = !{ptr @stm32_i2s_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1120, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @stm32_i2s_probe.__key.2, !20, !"__key", i1 false, i1 false}
!20 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1121, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @stm32_i2s_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1132, i32 16}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1136, i32 10}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1142, i32 41}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1167, i32 4}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @stm32_i2s_probe._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @stm32_i2s_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1177, i32 3}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @stm32_i2s_probe.__UNIQUE_ID_ddebug265, !39, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1050, i32 10}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1052, i32 41}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1055, i32 10}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1057, i32 41}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1060, i32 10}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1062, i32 42}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1065, i32 10}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1068, i32 27}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1082, i32 3}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @stm32_i2s_parse_dt._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @stm32_i2s_parse_dt._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1090, i32 10}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/stm/stm32_i2s.c", i32 435, i32 12}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/stm/stm32_i2s.c", i32 441, i32 2}
!69 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @stm32_i2s_add_mclk_provider.__UNIQUE_ID_ddebug245, !68, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/stm/stm32_i2s.c", i32 444, i32 3}
!73 = !{ptr @stm32_i2s_add_mclk_provider._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @stm32_i2s_add_mclk_provider._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @mclk_ops, !76, !"mclk_ops", i1 false, i1 false}
!76 = !{!"../sound/soc/stm/stm32_i2s.c", i32 400, i32 29}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/stm/stm32_i2s.c", i32 384, i32 2}
!79 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @stm32_i2smclk_enable.__UNIQUE_ID_ddebug243, !78, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/stm/stm32_i2s.c", i32 395, i32 2}
!83 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @stm32_i2smclk_disable.__UNIQUE_ID_ddebug244, !82, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/stm/stm32_i2s.c", i32 282, i32 3}
!87 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @stm32_i2s_calc_clk_div.__UNIQUE_ID_ddebug241, !86, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/stm/stm32_i2s.c", i32 288, i32 3}
!91 = !{ptr @stm32_i2s_calc_clk_div._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @stm32_i2s_calc_clk_div._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/stm/stm32_i2s.c", i32 293, i32 3}
!95 = !{ptr @stm32_i2s_calc_clk_div.__UNIQUE_ID_ddebug242, !94, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/stm/stm32_i2s.c", i32 466, i32 3}
!98 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @stm32_i2s_isr.__UNIQUE_ID_ddebug246, !97, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/stm/stm32_i2s.c", i32 475, i32 3}
!102 = !{ptr @stm32_i2s_isr.__UNIQUE_ID_ddebug247, !101, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/stm/stm32_i2s.c", i32 480, i32 3}
!105 = !{ptr @stm32_i2s_isr.__UNIQUE_ID_ddebug248, !104, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/stm/stm32_i2s.c", i32 485, i32 3}
!108 = !{ptr @stm32_i2s_isr.__UNIQUE_ID_ddebug249, !107, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1007, i32 41}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1008, i32 40}
!113 = !{ptr @stm32_i2s_pcm_dai_ops, !114, !"stm32_i2s_pcm_dai_ops", i1 false, i1 false}
!114 = !{!"../sound/soc/stm/stm32_i2s.c", i32 955, i32 37}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/stm/stm32_i2s.c", i32 620, i32 2}
!117 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @stm32_i2s_set_sysclk.__UNIQUE_ID_ddebug251, !116, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!119 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/stm/stm32_i2s.c", i32 627, i32 4}
!125 = !{ptr @stm32_i2s_set_sysclk.__UNIQUE_ID_ddebug252, !124, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!126 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/stm/stm32_i2s.c", i32 648, i32 4}
!128 = !{ptr @stm32_i2s_set_sysclk._entry, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @stm32_i2s_set_sysclk._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.53, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/stm/stm32_i2s.c", i32 329, i32 3}
!132 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @stm32_i2s_set_parent_clock._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @stm32_i2s_set_parent_clock._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.55, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/stm/stm32_i2s.c", i32 549, i32 2}
!137 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @stm32_i2s_set_dai_fmt.__UNIQUE_ID_ddebug250, !136, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!139 = !{ptr @.str.57, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/stm/stm32_i2s.c", i32 570, i32 3}
!141 = !{ptr @stm32_i2s_set_dai_fmt._entry, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @stm32_i2s_set_dai_fmt._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.59, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/stm/stm32_i2s.c", i32 590, i32 3}
!145 = !{ptr @stm32_i2s_set_dai_fmt._entry.58, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @stm32_i2s_set_dai_fmt._entry_ptr.60, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.62, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/stm/stm32_i2s.c", i32 604, i32 3}
!149 = !{ptr @stm32_i2s_set_dai_fmt._entry.61, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @stm32_i2s_set_dai_fmt._entry_ptr.63, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.64, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/stm/stm32_i2s.c", i32 785, i32 3}
!153 = !{ptr @.str.65, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @stm32_i2s_startup._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @stm32_i2s_startup._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/stm/stm32_i2s.c", i32 802, i32 3}
!158 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @stm32_i2s_hw_params._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @stm32_i2s_hw_params._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.68, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/stm/stm32_i2s.c", i32 741, i32 3}
!163 = !{ptr @.str.69, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @stm32_i2s_configure._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @stm32_i2s_configure._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.70, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/stm/stm32_i2s.c", i32 825, i32 3}
!168 = !{ptr @.str.71, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @stm32_i2s_trigger.__UNIQUE_ID_ddebug258, !167, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!170 = !{ptr @.str.72, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/stm/stm32_i2s.c", i32 835, i32 4}
!172 = !{ptr @stm32_i2s_trigger._entry, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @stm32_i2s_trigger._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.74, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/stm/stm32_i2s.c", i32 842, i32 4}
!176 = !{ptr @stm32_i2s_trigger._entry.73, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @stm32_i2s_trigger._entry_ptr.75, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.76, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/stm/stm32_i2s.c", i32 871, i32 3}
!180 = !{ptr @stm32_i2s_trigger.__UNIQUE_ID_ddebug259, !179, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!181 = !{ptr @.str.78, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/stm/stm32_i2s.c", i32 893, i32 4}
!183 = !{ptr @stm32_i2s_trigger._entry.77, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @stm32_i2s_trigger._entry_ptr.79, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @stm32_i2s_pcm_config, !186, !"stm32_i2s_pcm_config", i1 false, i1 false}
!186 = !{!"../sound/soc/stm/stm32_i2s.c", i32 973, i32 46}
!187 = !{ptr @stm32_i2s_pcm_hw, !188, !"stm32_i2s_pcm_hw", i1 false, i1 false}
!188 = !{!"../sound/soc/stm/stm32_i2s.c", i32 964, i32 38}
!189 = !{ptr @.str.80, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/stm/stm32_i2s.c", i32 980, i32 10}
!191 = !{ptr @stm32_i2s_component, !192, !"stm32_i2s_component", i1 false, i1 false}
!192 = !{!"../sound/soc/stm/stm32_i2s.c", i32 979, i32 46}
!193 = !{ptr @stm32_i2s_ids, !194, !"stm32_i2s_ids", i1 false, i1 false}
!194 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1014, i32 34}
!195 = !{ptr @stm32_h7_i2s_regmap_conf, !196, !"stm32_h7_i2s_regmap_conf", i1 false, i1 false}
!196 = !{!"../sound/soc/stm/stm32_i2s.c", i32 942, i32 35}
!197 = !{ptr @stm32_i2s_pm_ops, !198, !"stm32_i2s_pm_ops", i1 false, i1 false}
!198 = !{!"../sound/soc/stm/stm32_i2s.c", i32 1212, i32 32}
!199 = !{i32 1, !"wchar_size", i32 2}
!200 = !{i32 1, !"min_enum_size", i32 4}
!201 = !{i32 8, !"branch-target-enforcement", i32 0}
!202 = !{i32 8, !"sign-return-address", i32 0}
!203 = !{i32 8, !"sign-return-address-all", i32 0}
!204 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!205 = !{i32 7, !"uwtable", i32 1}
!206 = !{i32 7, !"frame-pointer", i32 2}
!207 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!208 = !{!"auto-init"}
!209 = !{i64 2148783261, i64 2148783266, i64 2148783279, i64 2148783323, i64 2148783357, i64 2148783378}
!210 = !{i8 0, i8 2}
!211 = !{i32 0, i32 33}
