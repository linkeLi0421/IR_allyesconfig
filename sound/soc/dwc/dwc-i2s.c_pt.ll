; ModuleID = '/llk/IR_all_yes/sound/soc/dwc/dwc-i2s.c_pt.bc'
source_filename = "../sound/soc/dwc/dwc-i2s.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.dw_i2s_dev = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i32, %union.dw_i2s_snd_dma_data, %union.dw_i2s_snd_dma_data, %struct.i2s_clk_config_data, ptr, i8, ptr, ptr, ptr, ptr, i32, i32 }
%union.dw_i2s_snd_dma_data = type { %struct.snd_dmaengine_dai_dma_data }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.i2s_clk_config_data = type { i32, i32, i32 }
%struct.i2s_platform_data = type { i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
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
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }

@__initcall__kmod_designware_i2s__246_759_dw_i2s_driver_init6 = internal global ptr @dw_i2s_driver_init, section ".initcall6.init", align 4
@dw_i2s_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dw_i2s_probe, ptr @dw_i2s_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dw_i2s_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dw_i2s_driver_exit = internal global ptr @dw_i2s_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author247 = internal constant [65 x i8] c"designware_i2s.author=Rajeev Kumar <rajeevkumar.linux@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [56 x i8] c"designware_i2s.description=DESIGNWARE I2S SoC Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [49 x i8] c"designware_i2s.file=sound/soc/dwc/designware_i2s\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [27 x i8] c"designware_i2s.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias251 = internal constant [45 x i8] c"designware_i2s.alias=platform:designware_i2s\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"designware-i2s\00", [17 x i8] zeroinitializer }, align 32
@dw_i2s_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,designware-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@dwc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_i2s_runtime_suspend, ptr @dw_i2s_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@dw_i2s_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @dw_i2s_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_i2s_startup, ptr @dw_i2s_shutdown, ptr @dw_i2s_hw_params, ptr null, ptr @dw_i2s_prepare, ptr @dw_i2s_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@dw_i2s_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 650, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dw_i2s_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/soc/dwc/dwc-i2s.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dw_i2s_probe._entry_ptr = internal global ptr @dw_i2s_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2sclk\00", [25 x i8] zeroinitializer }, align 32
@dw_i2s_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 677, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no clock configure method\0A\00", [37 x i8] zeroinitializer }, align 32
@dw_i2s_probe._entry_ptr.9 = internal global ptr @dw_i2s_probe._entry.7, section ".printk_index", align 4
@dw_i2s_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.40, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @dw_i2s_suspend, ptr @dw_i2s_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@dw_i2s_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 695, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"not able to register dai\0A\00", [38 x i8] zeroinitializer }, align 32
@dw_i2s_probe._entry_ptr.12 = internal global ptr @dw_i2s_probe._entry.10, section ".printk_index", align 4
@dw_i2s_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 711, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not register pcm: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@dw_i2s_probe._entry_ptr.15 = internal global ptr @dw_i2s_probe._entry.13, section ".printk_index", align 4
@dw_i2s_set_fmt.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"designware_i2s\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dw_i2s_set_fmt\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dwc : Invalid clock provider format\0A\00", [59 x i8] zeroinitializer }, align 32
@dw_i2s_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 263, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"designware-i2s: unsupported PCM fmt\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dw_i2s_hw_params\00", [47 x i8] zeroinitializer }, align 32
@dw_i2s_hw_params._entry_ptr = internal global ptr @dw_i2s_hw_params._entry, section ".printk_index", align 4
@dw_i2s_hw_params._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 276, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"channel not supported\0A\00", [41 x i8] zeroinitializer }, align 32
@dw_i2s_hw_params._entry_ptr.23 = internal global ptr @dw_i2s_hw_params._entry.21, section ".printk_index", align 4
@dw_i2s_hw_params._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.3, i32 290, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"runtime audio clk config fail\0A\00", [33 x i8] zeroinitializer }, align 32
@dw_i2s_hw_params._entry_ptr.26 = internal global ptr @dw_i2s_hw_params._entry.24, section ".printk_index", align 4
@dw_i2s_hw_params._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.3, i32 300, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Can't set I2S clock rate: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@dw_i2s_hw_params._entry_ptr.29 = internal global ptr @dw_i2s_hw_params._entry.27, section ".printk_index", align 4
@i2s_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 135, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TX overrun (ch_id=%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2s_irq_handler\00", [16 x i8] zeroinitializer }, align 32
@i2s_irq_handler._entry_ptr = internal global ptr @i2s_irq_handler._entry, section ".printk_index", align 4
@i2s_irq_handler._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 141, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX overrun (ch_id=%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@i2s_irq_handler._entry_ptr.34 = internal global ptr @i2s_irq_handler._entry.32, section ".printk_index", align 4
@bus_widths = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 4, i32 0], [16 x i8] zeroinitializer }, align 32
@dw_configure_dai.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 0, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dw_configure_dai\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c" designware: play supported\0A\00", [35 x i8] zeroinitializer }, align 32
@formats = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 4, i32 64, i32 64, i32 1024, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@dw_configure_dai.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.35, ptr @.str.3, ptr @.str.37, i8 0, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"designware: record supported\0A\00", [34 x i8] zeroinitializer }, align 32
@dw_configure_dai.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.35, ptr @.str.3, ptr @.str.38, i8 0, i8 -123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"designware: i2s master mode supported\0A\00", [57 x i8] zeroinitializer }, align 32
@dw_configure_dai.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.35, ptr @.str.3, ptr @.str.39, i8 0, i8 -122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"designware: i2s slave mode supported\0A\00", [58 x i8] zeroinitializer }, align 32
@fifo_width = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 12, i32 16, i32 20, i32 24, i32 32, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dw-i2s\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 6, i64 10]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.44 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"dw_i2s_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 749, i32 31 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 753, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"dw_i2s_of_match\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 737, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant [11 x i8] c"dwc_pm_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 745, i32 32 }
@___asan_gen_.57 = private unnamed_addr constant [15 x i8] c"dw_i2s_dai_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 384, i32 37 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 650, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 667, i32 12 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 677, i32 5 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"dw_i2s_component\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 444, i32 46 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 695, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 710, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 377, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 263, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 276, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 290, i32 5 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 299, i32 5 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 135, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 141, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant [11 x i8] c"bus_widths\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 464, i32 18 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 505, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 472, i32 18 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 519, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 533, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 536, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [11 x i8] c"fifo_width\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 459, i32 18 }
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.178 = private constant [27 x i8] c"../sound/soc/dwc/dwc-i2s.c\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 445, i32 11 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_alias251, ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__exitcall_dw_i2s_driver_exit, ptr @__initcall__kmod_designware_i2s__246_759_dw_i2s_driver_init6, ptr @dw_i2s_driver_exit, ptr @dw_i2s_hw_params._entry, ptr @dw_i2s_hw_params._entry.21, ptr @dw_i2s_hw_params._entry.24, ptr @dw_i2s_hw_params._entry.27, ptr @dw_i2s_hw_params._entry_ptr, ptr @dw_i2s_hw_params._entry_ptr.23, ptr @dw_i2s_hw_params._entry_ptr.26, ptr @dw_i2s_hw_params._entry_ptr.29, ptr @dw_i2s_probe._entry, ptr @dw_i2s_probe._entry.10, ptr @dw_i2s_probe._entry.13, ptr @dw_i2s_probe._entry.7, ptr @dw_i2s_probe._entry_ptr, ptr @dw_i2s_probe._entry_ptr.12, ptr @dw_i2s_probe._entry_ptr.15, ptr @dw_i2s_probe._entry_ptr.9, ptr @i2s_irq_handler._entry, ptr @i2s_irq_handler._entry.32, ptr @i2s_irq_handler._entry_ptr, ptr @i2s_irq_handler._entry_ptr.34, ptr @dw_i2s_driver, ptr @.str, ptr @dw_i2s_of_match, ptr @dwc_pm_ops, ptr @dw_i2s_dai_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @dw_i2s_component, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @bus_widths, ptr @.str.35, ptr @.str.36, ptr @formats, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @fifo_width, ptr @.str.40], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_i2s_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_i2s_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_i2s_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_i2s_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_i2s_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_i2s_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_i2s_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_i2s_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_i2s_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_i2s_hw_params._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_i2s_hw_params._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_i2s_hw_params._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_irq_handler._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_widths to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fifo_width to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i2s_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dw_i2s_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dw_i2s_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @dw_i2s_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i2s_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #7
  %2 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !107
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 160, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i180 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 168, i32 noundef 3520) #7
  %tobool5.not = icmp eq ptr %call.i180, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call.i180, i32 0, i32 8
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dw_i2s_dai_ops, ptr %ops, align 8
  %call8 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #7
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %dev16 = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev16, align 4
  %call17 = call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call17)
  %cmp = icmp sgt i32 %call17, -1
  br i1 %cmp, label %if.then18, label %if.end14.if.end25_crit_edge

if.end14.if.end25_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then18:                                        ; preds = %if.end14
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %call.i181 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call17, ptr noundef nonnull @i2s_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %8, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181)
  %cmp21 = icmp slt i32 %call.i181, 0
  br i1 %cmp21, label %do.end, label %if.then18.if.end25_crit_edge

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

do.end:                                           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end25:                                         ; preds = %if.then18.if.end25_crit_edge, %if.end14.if.end25_crit_edge
  %i2s_reg_comp1 = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %i2s_reg_comp1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 500, ptr %i2s_reg_comp1, align 4
  %i2s_reg_comp2 = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %i2s_reg_comp2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 496, ptr %i2s_reg_comp2, align 4
  %tobool26.not = icmp eq ptr %1, null
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end25
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %capability = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %capability, align 4
  %quirks = getelementptr inbounds %struct.i2s_platform_data, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %quirks, align 4
  %quirks28 = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %quirks28 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %quirks28, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.then27.if.end42.thread_crit_edge, label %if.then31

if.then27.if.end42.thread_crit_edge:              ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.thread

if.then31:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  %i2s_reg_comp132 = getelementptr inbounds %struct.i2s_platform_data, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %i2s_reg_comp132 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i2s_reg_comp132, align 4
  %19 = ptrtoint ptr %i2s_reg_comp1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %i2s_reg_comp1, align 4
  %i2s_reg_comp234 = getelementptr inbounds %struct.i2s_platform_data, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %i2s_reg_comp234 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i2s_reg_comp234, align 4
  %22 = ptrtoint ptr %i2s_reg_comp2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %i2s_reg_comp2, align 4
  br label %if.end42.thread

if.else:                                          ; preds = %if.end25
  %23 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %res, align 4
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %add.ptr.i.i182 = getelementptr i8, ptr %26, i32 500
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i182) #7, !srcloc !108
  %28 = call i32 @llvm.bswap.i32(i32 %27) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %30, i32 496
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i) #7, !srcloc !108
  %32 = lshr i32 %31, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %and.i183 = lshr i32 %28, 2
  %shr.i = and i32 %and.i183, 3
  %shl.i = shl nuw nsw i32 2, %shr.i
  %and3.i = and i32 %28, 3
  call fastcc void @dw_configure_dai(ptr noundef nonnull %call.i, ptr noundef nonnull %call.i180, i32 noundef 8190) #7
  %33 = and i32 %28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool32.not.i = icmp eq i32 %33, 0
  br i1 %tobool32.not.i, label %if.else.if.end42.i_crit_edge, label %if.then33.i

if.else.if.end42.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

if.then33.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %and34.i = lshr i32 %28, 16
  %shr35.i = and i32 %and34.i, 7
  %capability.i = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 3
  %34 = ptrtoint ptr %capability.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %capability.i, align 4
  %or.i = or i32 %35, 1
  store i32 %or.i, ptr %capability.i, align 4
  %36 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %24, align 4
  %add36.i = add i32 %37, 456
  %play_dma_data.i184 = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 11
  %38 = ptrtoint ptr %play_dma_data.i184 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add36.i, ptr %play_dma_data.i184, align 4
  %arrayidx.i185 = getelementptr [4 x i32], ptr @bus_widths, i32 0, i32 %and3.i
  %39 = ptrtoint ptr %arrayidx.i185 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i185, align 4
  %addr_width.i186 = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 11, i32 0, i32 1
  %41 = ptrtoint ptr %addr_width.i186 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %addr_width.i186, align 4
  %arrayidx38.i = getelementptr [8 x i32], ptr @fifo_width, i32 0, i32 %shr35.i
  %42 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx38.i, align 4
  %mul.i = mul i32 %43, %shl.i
  %shr39.i = lshr i32 %mul.i, 8
  %fifo_size.i = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 11, i32 0, i32 5
  %44 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shr39.i, ptr %fifo_size.i, align 4
  %maxburst.i = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 11, i32 0, i32 2
  %45 = ptrtoint ptr %maxburst.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 16, ptr %maxburst.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then33.i, %if.else.if.end42.i_crit_edge
  %46 = and i32 %28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool45.not.i = icmp eq i32 %46, 0
  br i1 %tobool45.not.i, label %if.end42.i.if.end42_crit_edge, label %if.then46.i

if.end42.i.if.end42_crit_edge:                    ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then46.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  %and47.i = and i32 %32, 7
  %capability49.i = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 3
  %47 = ptrtoint ptr %capability49.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %capability49.i, align 4
  %or50.i = or i32 %48, 2
  store i32 %or50.i, ptr %capability49.i, align 4
  %49 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %24, align 4
  %add52.i = add i32 %50, 448
  %capture_dma_data.i187 = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 12
  %51 = ptrtoint ptr %capture_dma_data.i187 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add52.i, ptr %capture_dma_data.i187, align 4
  %arrayidx54.i = getelementptr [4 x i32], ptr @bus_widths, i32 0, i32 %and3.i
  %52 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx54.i, align 4
  %addr_width56.i = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 12, i32 0, i32 1
  %54 = ptrtoint ptr %addr_width56.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %addr_width56.i, align 4
  %arrayidx57.i = getelementptr [8 x i32], ptr @fifo_width, i32 0, i32 %and47.i
  %55 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx57.i, align 4
  %shr58.i = lshr i32 %56, 8
  %mul59.i = mul nuw nsw i32 %shr58.i, %shl.i
  %fifo_size61.i = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 12, i32 0, i32 5
  %57 = ptrtoint ptr %fifo_size61.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %mul59.i, ptr %fifo_size61.i, align 4
  %maxburst63.i = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 12, i32 0, i32 2
  %58 = ptrtoint ptr %maxburst63.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 16, ptr %maxburst63.i, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then46.i, %if.end42.i.if.end42_crit_edge
  %capability43 = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 3
  %59 = ptrtoint ptr %capability43 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %capability43, align 4
  %and44 = and i32 %60, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end72.thread214, label %if.end42.if.end58_crit_edge

if.end42.if.end58_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.end42.thread:                                  ; preds = %if.then31, %if.then27.if.end42.thread_crit_edge
  %61 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %res, align 4
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i, align 4
  %65 = ptrtoint ptr %i2s_reg_comp1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %i2s_reg_comp1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %64, i32 %66
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !108
  %68 = lshr i32 %67, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %and.i = and i32 %68, 3
  %snd_rates.i = getelementptr inbounds %struct.i2s_platform_data, ptr %1, i32 0, i32 3
  %69 = ptrtoint ptr %snd_rates.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %snd_rates.i, align 4
  call fastcc void @dw_configure_dai(ptr noundef nonnull %call.i, ptr noundef nonnull %call.i180, i32 noundef %70) #7
  %71 = ptrtoint ptr %quirks28 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %quirks28, align 4
  %and26.i = and i32 %72, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  %idx.0.i = select i1 %tobool27.not.i, i32 %and.i, i32 1
  %play_dma_data.i = getelementptr inbounds %struct.i2s_platform_data, ptr %1, i32 0, i32 7
  %73 = ptrtoint ptr %play_dma_data.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %play_dma_data.i, align 4
  %play_dma_data30.i = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 11
  %75 = ptrtoint ptr %play_dma_data30.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %play_dma_data30.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.i2s_platform_data, ptr %1, i32 0, i32 8
  %76 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %capture_dma_data.i, align 4
  %capture_dma_data31.i = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 12
  %78 = ptrtoint ptr %capture_dma_data31.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %capture_dma_data31.i, align 4
  %79 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %62, align 4
  %add.i = add i32 %80, 456
  %addr.i = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 11, i32 0, i32 1
  %81 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add.i, ptr %addr.i, align 4
  %82 = load i32, ptr %62, align 4
  %add35.i = add i32 %82, 448
  %addr37.i = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 12, i32 0, i32 1
  %83 = ptrtoint ptr %addr37.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %add35.i, ptr %addr37.i, align 4
  %max_burst.i = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 11, i32 0, i32 2
  %84 = ptrtoint ptr %max_burst.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 16, ptr %max_burst.i, align 4
  %max_burst40.i = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 12, i32 0, i32 2
  %85 = ptrtoint ptr %max_burst40.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 16, ptr %max_burst40.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @bus_widths, i32 0, i32 %idx.0.i
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i, align 4
  %addr_width.i = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 11, i32 0, i32 3
  %88 = ptrtoint ptr %addr_width.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %addr_width.i, align 4
  %addr_width44.i = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 12, i32 0, i32 3
  %89 = ptrtoint ptr %addr_width44.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %87, ptr %addr_width44.i, align 4
  %filter.i = getelementptr inbounds %struct.i2s_platform_data, ptr %1, i32 0, i32 9
  %90 = ptrtoint ptr %filter.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %filter.i, align 4
  %filter46.i = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 11, i32 0, i32 4
  %92 = ptrtoint ptr %filter46.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %91, ptr %filter46.i, align 4
  %93 = load ptr, ptr %filter.i, align 4
  %filter49.i = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 12, i32 0, i32 4
  %94 = ptrtoint ptr %filter49.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %filter49.i, align 4
  %95 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %capability, align 4
  %and44192 = and i32 %96, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44192)
  %tobool45.not193 = icmp eq i32 %and44192, 0
  br i1 %tobool45.not193, label %if.end72.thread, label %if.then48

if.then48:                                        ; preds = %if.end42.thread
  %i2s_clk_cfg = getelementptr inbounds %struct.i2s_platform_data, ptr %1, i32 0, i32 10
  %97 = ptrtoint ptr %i2s_clk_cfg to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %i2s_clk_cfg, align 4
  %i2s_clk_cfg49 = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 14
  %99 = ptrtoint ptr %i2s_clk_cfg49 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %i2s_clk_cfg49, align 4
  %tobool51.not = icmp eq ptr %98, null
  br i1 %tobool51.not, label %do.end55, label %if.then48.if.end58_crit_edge

if.then48.if.end58_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

do.end55:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end58:                                         ; preds = %if.then48.if.end58_crit_edge, %if.end42.if.end58_crit_edge
  %clk_id.0194202 = phi ptr [ null, %if.then48.if.end58_crit_edge ], [ @.str.6, %if.end42.if.end58_crit_edge ]
  %capability43195200 = phi ptr [ %capability, %if.then48.if.end58_crit_edge ], [ %capability43, %if.end42.if.end58_crit_edge ]
  %call60 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef %clk_id.0194202) #7
  %clk = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 1
  %100 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call60, ptr %clk, align 4
  %cmp.i188 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i188, label %if.then63, label %if.end66

if.then63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %call60 to i32
  br label %cleanup

if.end66:                                         ; preds = %if.end58
  %call.i189 = call i32 @clk_prepare(ptr noundef %call60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %tobool.not.i = icmp eq i32 %call.i189, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end66.clk_prepare_enable.exit_crit_edge

if.end66.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end66
  %call1.i = call i32 @clk_enable(ptr noundef %call60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end72_crit_edge, label %if.then3.i

if.end.i.if.end72_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %call60) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end66.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i189, %if.end66.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp69 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp69, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end72_crit_edge

clk_prepare_enable.exit.if.end72_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end72:                                         ; preds = %clk_prepare_enable.exit.if.end72_crit_edge, %if.end.i.if.end72_crit_edge
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %102 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call75 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @dw_i2s_component, ptr noundef nonnull %call.i180, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76.not = icmp eq i32 %call75, 0
  br i1 %cmp76.not, label %if.end82, label %if.end72.do.end80_crit_edge

if.end72.do.end80_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end80

if.end72.thread214:                               ; preds = %if.end42
  %driver_data.i216 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %103 = ptrtoint ptr %driver_data.i216 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call.i, ptr %driver_data.i216, align 4
  %call75217 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @dw_i2s_component, ptr noundef nonnull %call.i180, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75217)
  %cmp76.not218 = icmp eq i32 %call75217, 0
  br i1 %cmp76.not218, label %if.end72.thread214.if.then84_crit_edge, label %if.end72.thread214.do.end80_crit_edge

if.end72.thread214.do.end80_crit_edge:            ; preds = %if.end72.thread214
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end80

if.end72.thread214.if.then84_crit_edge:           ; preds = %if.end72.thread214
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then84

if.end72.thread:                                  ; preds = %if.end42.thread
  %driver_data.i206 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %104 = ptrtoint ptr %driver_data.i206 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call.i, ptr %driver_data.i206, align 4
  %call75207 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @dw_i2s_component, ptr noundef nonnull %call.i180, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75207)
  %cmp76.not208 = icmp eq i32 %call75207, 0
  br i1 %cmp76.not208, label %if.end72.thread.if.end100_crit_edge, label %if.end72.thread.do.end80_crit_edge

if.end72.thread.do.end80_crit_edge:               ; preds = %if.end72.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end80

if.end72.thread.if.end100_crit_edge:              ; preds = %if.end72.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

do.end80:                                         ; preds = %if.end72.thread.do.end80_crit_edge, %if.end72.thread214.do.end80_crit_edge, %if.end72.do.end80_crit_edge
  %call75212 = phi i32 [ %call75207, %if.end72.thread.do.end80_crit_edge ], [ %call75, %if.end72.do.end80_crit_edge ], [ %call75217, %if.end72.thread214.do.end80_crit_edge ]
  %capability43196210 = phi ptr [ %capability, %if.end72.thread.do.end80_crit_edge ], [ %capability43195200, %if.end72.do.end80_crit_edge ], [ %capability43, %if.end72.thread214.do.end80_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  br label %err_clk_disable

if.end82:                                         ; preds = %if.end72
  br i1 %tobool26.not, label %if.end82.if.then84_crit_edge, label %if.end82.if.end100_crit_edge

if.end82.if.end100_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

if.end82.if.then84_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then84

if.then84:                                        ; preds = %if.end82.if.then84_crit_edge, %if.end72.thread214.if.then84_crit_edge
  %capability43196219221 = phi ptr [ %capability43195200, %if.end82.if.then84_crit_edge ], [ %capability43, %if.end72.thread214.if.then84_crit_edge ]
  br i1 %cmp, label %if.then86, label %if.else88

if.then86:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  %call87 = call i32 @dw_pcm_register(ptr noundef %pdev) #7
  br label %if.end92

if.else88:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  %call90 = call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev, ptr noundef null, i32 noundef 0) #7
  br label %if.end92

if.end92:                                         ; preds = %if.else88, %if.then86
  %.sink = phi i8 [ 1, %if.then86 ], [ 0, %if.else88 ]
  %ret.1 = phi i32 [ %call87, %if.then86 ], [ %call90, %if.else88 ]
  %105 = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 15
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %.sink, ptr %105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool93.not = icmp eq i32 %ret.1, 0
  br i1 %tobool93.not, label %if.end92.if.end100_crit_edge, label %do.end97

if.end92.if.end100_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

do.end97:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %ret.1) #10
  br label %err_clk_disable

if.end100:                                        ; preds = %if.end92.if.end100_crit_edge, %if.end82.if.end100_crit_edge, %if.end72.thread.if.end100_crit_edge
  call void @pm_runtime_enable(ptr noundef %dev) #7
  br label %cleanup

err_clk_disable:                                  ; preds = %do.end97, %do.end80
  %capability43196209 = phi ptr [ %capability43196210, %do.end80 ], [ %capability43196219221, %do.end97 ]
  %ret.2 = phi i32 [ %call75212, %do.end80 ], [ %ret.1, %do.end97 ]
  %107 = ptrtoint ptr %capability43196209 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %capability43196209, align 4
  %and103 = and i32 %108, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %err_clk_disable.cleanup_crit_edge, label %if.then105

err_clk_disable.cleanup_crit_edge:                ; preds = %err_clk_disable
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then105:                                       ; preds = %err_clk_disable
  call void @__sanitizer_cov_trace_pc() #9
  %clk106 = getelementptr inbounds %struct.dw_i2s_dev, ptr %call.i, i32 0, i32 1
  %109 = ptrtoint ptr %clk106 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %clk106, align 4
  call void @clk_disable(ptr noundef %110) #7
  call void @clk_unprepare(ptr noundef %110) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then105, %err_clk_disable.cleanup_crit_edge, %if.end100, %clk_prepare_enable.exit.cleanup_crit_edge, %if.then63, %do.end55, %do.end, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then11 ], [ %call.i181, %do.end ], [ %101, %if.then63 ], [ 0, %if.end100 ], [ -19, %do.end55 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ], [ %ret.2, %if.then105 ], [ %ret.2, %err_clk_disable.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i2s_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %capability = getelementptr inbounds %struct.dw_i2s_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capability, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %clk = getelementptr inbounds %struct.dw_i2s_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2s_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %isr = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %isr) #7
  %0 = getelementptr inbounds [4 x i32], ptr %isr, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %isr, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %isr, i32 0, i32 3
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 56
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !108
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %7 = ptrtoint ptr %isr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %isr, align 4
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %9, i32 120
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #7, !srcloc !108
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %0, align 4
  %13 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_id, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %14, i32 184
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #7, !srcloc !108
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %1, align 4
  %18 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_id, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %19, i32 248
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #7, !srcloc !108
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %2, align 4
  %23 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_id, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 68
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %26 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_id, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %27, i32 132
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %29 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_id, align 4
  %add.ptr.i.2.i = getelementptr i8, ptr %30, i32 196
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %32 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_id, align 4
  %add.ptr.i.3.i = getelementptr i8, ptr %33, i32 260
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %35 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_id, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %36, i32 64
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %38 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_id, align 4
  %add.ptr.i18.1.i = getelementptr i8, ptr %39, i32 128
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.1.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %41 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_id, align 4
  %add.ptr.i18.2.i = getelementptr i8, ptr %42, i32 192
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.2.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %44 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_id, align 4
  %add.ptr.i18.3.i = getelementptr i8, ptr %45, i32 256
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.3.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %use_pio = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev_id, i32 0, i32 15
  %dev22 = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev_id, i32 0, i32 7
  br label %for.body3

for.body3:                                        ; preds = %for.inc33.for.body3_crit_edge, %entry
  %i.173 = phi i32 [ 0, %entry ], [ %inc34, %for.inc33.for.body3_crit_edge ]
  %irq_valid.0.off072 = phi i1 [ false, %entry ], [ %irq_valid.4.off0, %for.inc33.for.body3_crit_edge ]
  %arrayidx4 = getelementptr [4 x i32], ptr %isr, i32 0, i32 %i.173
  %47 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx4, align 4
  %and = and i32 %48, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.173)
  %cmp5 = icmp eq i32 %i.173, 0
  %or.cond = select i1 %tobool.not, i1 %cmp5, i1 false
  br i1 %or.cond, label %land.lhs.true6, label %for.body3.if.end_crit_edge

for.body3.if.end_crit_edge:                       ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true6:                                   ; preds = %for.body3
  %49 = ptrtoint ptr %use_pio to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %use_pio, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool7.not = icmp eq i8 %50, 0
  br i1 %tobool7.not, label %land.lhs.true6.if.end_crit_edge, label %if.then

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dw_pcm_push_tx(ptr noundef %dev_id) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true6.if.end_crit_edge, %for.body3.if.end_crit_edge
  %irq_valid.1.off0 = phi i1 [ true, %if.then ], [ %irq_valid.0.off072, %land.lhs.true6.if.end_crit_edge ], [ %irq_valid.0.off072, %for.body3.if.end_crit_edge ]
  %and9 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp ne i32 %and9, 0
  %or.cond70 = select i1 %tobool10.not, i1 %cmp5, i1 false
  br i1 %or.cond70, label %land.lhs.true13, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

land.lhs.true13:                                  ; preds = %if.end
  %51 = ptrtoint ptr %use_pio to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %use_pio, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool15.not = icmp eq i8 %52, 0
  br i1 %tobool15.not, label %land.lhs.true13.if.end17_crit_edge, label %if.then16

land.lhs.true13.if.end17_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then16:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dw_pcm_pop_rx(ptr noundef %dev_id) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %land.lhs.true13.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %irq_valid.2.off0 = phi i1 [ true, %if.then16 ], [ %irq_valid.1.off0, %land.lhs.true13.if.end17_crit_edge ], [ %irq_valid.1.off0, %if.end.if.end17_crit_edge ]
  %and19 = and i32 %48, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end17.if.end23_crit_edge, label %do.end

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.30, i32 noundef %i.173) #10
  br label %if.end23

if.end23:                                         ; preds = %do.end, %if.end17.if.end23_crit_edge
  %irq_valid.3.off0 = phi i1 [ true, %do.end ], [ %irq_valid.2.off0, %if.end17.if.end23_crit_edge ]
  %and25 = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.for.inc33_crit_edge, label %do.end30

if.end23.for.inc33_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc33

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.33, i32 noundef %i.173) #10
  br label %for.inc33

for.inc33:                                        ; preds = %do.end30, %if.end23.for.inc33_crit_edge
  %irq_valid.4.off0 = phi i1 [ true, %do.end30 ], [ %irq_valid.3.off0, %if.end23.for.inc33_crit_edge ]
  %inc34 = add nuw nsw i32 %i.173, 1
  %exitcond.not = icmp eq i32 %inc34, 4
  br i1 %exitcond.not, label %for.end35, label %for.inc33.for.body3_crit_edge

for.inc33.for.body3_crit_edge:                    ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3

for.end35:                                        ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #9
  %. = zext i1 %irq_valid.4.off0 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %isr) #7
  ret i32 %.
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcm_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i2s_set_fmt(ptr nocapture noundef readonly %cpu_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %and = and i32 %fmt, 61440
  %4 = add nsw i32 %and, -4096
  %5 = lshr exact i32 %4, 12
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.body [
    i32 0, label %sw.bb
    i32 3, label %sw.bb2
    i32 2, label %entry.sw.epilog_crit_edge
    i32 1, label %entry.sw.epilog_crit_edge21
  ]

entry.sw.epilog_crit_edge21:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %capability = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %capability, align 4
  %and1 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  %. = select i1 %tobool.not, i32 -22, i32 0
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %capability3 = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %capability3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %capability3, align 4
  %and4 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %.19 = select i1 %tobool5.not, i32 -22, i32 0
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_i2s_set_fmt.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_i2s_set_fmt, %if.then14)) #7
          to label %sw.epilog [label %if.then14], !srcloc !111

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev15 = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 7
  %11 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_i2s_set_fmt.__UNIQUE_ID_ddebug241, ptr noundef %12, ptr noundef nonnull @.str.18) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then14, %do.body, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge21
  %ret.0 = phi i32 [ %., %sw.bb ], [ %.19, %sw.bb2 ], [ -22, %entry.sw.epilog_crit_edge ], [ -22, %entry.sw.epilog_crit_edge21 ], [ -22, %if.then14 ], [ -22, %do.body ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dw_i2s_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef %cpu_dai) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %capability = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capability, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %and2 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true4:                                   ; preds = %if.end
  %stream5 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %land.lhs.true4.cleanup_crit_edge, label %land.lhs.true4.if.end8_crit_edge

land.lhs.true4.if.end8_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true4.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %stream9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %10 = ptrtoint ptr %stream9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream9, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %11, label %if.end8.if.end16_crit_edge [
    i32 0, label %if.then11
    i32 1, label %if.then14
  ]

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %play_dma_data = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 11
  br label %if.end16

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %capture_dma_data = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 12
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then11, %if.end8.if.end16_crit_edge
  %dma_data.0 = phi ptr [ %play_dma_data, %if.then11 ], [ %capture_dma_data, %if.then14 ], [ null, %if.end8.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 8
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 7
  %capture_dma_data.sink.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %13 = ptrtoint ptr %capture_dma_data.sink.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dma_data.0, ptr %capture_dma_data.sink.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %land.lhs.true4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %land.lhs.true4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dw_i2s_shutdown(ptr nocapture noundef readonly %substream, ptr nocapture noundef writeonly %dai) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %0 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data.sink.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %2 = ptrtoint ptr %capture_dma_data.sink.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %capture_dma_data.sink.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i2s_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %config1 = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 13
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.params_format.exit_crit_edge

entry.params_format.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.1.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.do.end_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

for.inc.i.i.do.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %entry.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %5, %entry.params_format.exit_crit_edge ], [ %7, %for.inc.i.i.params_format.exit_crit_edge ]
  %8 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #7, !range !112
  %add.i.i = or i32 %8, %i.09.lcssa.i.i
  %9 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %add.i.i, label %params_format.exit.do.end_crit_edge [
    i32 2, label %params_format.exit.sw.epilog_crit_edge
    i32 6, label %sw.bb3
    i32 10, label %sw.bb7
  ]

params_format.exit.sw.epilog_crit_edge:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

params_format.exit.do.end_crit_edge:              ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

sw.bb3:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb7:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %params_format.exit.do.end_crit_edge, %for.inc.i.i.do.end_crit_edge
  %dev11 = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.19) #10
  br label %cleanup45

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb3, %params_format.exit.sw.epilog_crit_edge
  %.sink83 = phi i32 [ 32, %sw.bb7 ], [ 24, %sw.bb3 ], [ 16, %params_format.exit.sw.epilog_crit_edge ]
  %.sink82 = phi i32 [ 16, %sw.bb7 ], [ 8, %sw.bb3 ], [ 0, %params_format.exit.sw.epilog_crit_edge ]
  %.sink = phi i32 [ 5, %sw.bb7 ], [ 4, %sw.bb3 ], [ %add.i.i, %params_format.exit.sw.epilog_crit_edge ]
  %data_width8 = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 13, i32 1
  %12 = ptrtoint ptr %data_width8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink83, ptr %data_width8, align 4
  %ccr9 = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 8
  %13 = ptrtoint ptr %ccr9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink82, ptr %ccr9, align 4
  %xfer_resolution10 = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %xfer_resolution10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %xfer_resolution10, align 4
  %arrayidx.i.i79 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %arrayidx.i.i79 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i79, align 4
  %17 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %config1, align 4
  %18 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %16, label %do.end18 [
    i32 8, label %sw.epilog.sw.epilog20_crit_edge
    i32 6, label %sw.epilog.sw.epilog20_crit_edge84
    i32 4, label %sw.epilog.sw.epilog20_crit_edge85
    i32 2, label %sw.epilog.sw.epilog20_crit_edge86
  ]

sw.epilog.sw.epilog20_crit_edge86:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog20

sw.epilog.sw.epilog20_crit_edge85:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog20

sw.epilog.sw.epilog20_crit_edge84:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog20

sw.epilog.sw.epilog20_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog20

do.end18:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %dev19 = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 7
  %19 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.22) #10
  br label %cleanup45

sw.epilog20:                                      ; preds = %sw.epilog.sw.epilog20_crit_edge, %sw.epilog.sw.epilog20_crit_edge84, %sw.epilog.sw.epilog20_crit_edge85, %sw.epilog.sw.epilog20_crit_edge86
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %21 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stream, align 4
  tail call fastcc void @dw_i2s_config(ptr noundef %3, i32 noundef %22)
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %ccr21 = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 8
  %25 = ptrtoint ptr %ccr21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ccr21, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  %add.ptr.i = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %27) #7, !srcloc !114
  %arrayidx.i.i80 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %arrayidx.i.i80 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i80, align 4
  %sample_rate = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 13, i32 2
  %30 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %sample_rate, align 4
  %capability = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 3
  %31 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %capability, align 4
  %and = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.epilog20.cleanup45_crit_edge, label %if.then

sw.epilog20.cleanup45_crit_edge:                  ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup45

if.then:                                          ; preds = %sw.epilog20
  %i2s_clk_cfg = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 14
  %33 = ptrtoint ptr %i2s_clk_cfg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2s_clk_cfg, align 4
  %tobool23.not = icmp eq ptr %34, null
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.then
  %call26 = tail call i32 %34(ptr noundef %config1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %do.end30, label %if.then24.cleanup45_crit_edge

if.then24.cleanup45_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup45

do.end30:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %dev31 = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 7
  %35 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.25) #10
  br label %cleanup45

if.else:                                          ; preds = %if.then
  %data_width33 = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 13, i32 1
  %37 = ptrtoint ptr %data_width33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data_width33, align 4
  %mul = shl i32 %29, 1
  %mul34 = mul i32 %mul, %38
  %clk = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 1
  %39 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk, align 4
  %call35 = tail call i32 @clk_set_rate(ptr noundef %40, i32 noundef %mul34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.else.cleanup45_crit_edge, label %do.end40

if.else.cleanup45_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup45

do.end40:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dev41 = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 7
  %41 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.28, i32 noundef %call35) #10
  br label %cleanup45

cleanup45:                                        ; preds = %do.end40, %if.else.cleanup45_crit_edge, %do.end30, %if.then24.cleanup45_crit_edge, %sw.epilog20.cleanup45_crit_edge, %do.end18, %do.end
  %retval.1 = phi i32 [ -22, %do.end ], [ -22, %do.end18 ], [ %call26, %do.end30 ], [ %call35, %do.end40 ], [ 0, %if.then24.cleanup45_crit_edge ], [ 0, %sw.epilog20.cleanup45_crit_edge ], [ 0, %if.else.cleanup45_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i2s_prepare(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !114
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i3 = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 16777216) #7, !srcloc !114
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i2s_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge21
    i32 4, label %entry.sw.bb_crit_edge22
    i32 0, label %entry.sw.bb1_crit_edge
    i32 5, label %entry.sw.bb1_crit_edge23
    i32 3, label %entry.sw.bb1_crit_edge24
  ]

entry.sw.bb1_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb_crit_edge22:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge21:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge21, %entry.sw.bb_crit_edge22
  %active = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %active, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %active, align 4
  %config1.i = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 16777216) #7, !srcloc !114
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %9 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stream.i, align 4
  %11 = ptrtoint ptr %config1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %config1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i = icmp eq i32 %10, 0
  %chan_nr.off40.i.i = add i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %chan_nr.off40.i.i)
  %13 = icmp ult i32 %chan_nr.off40.i.i, 3
  br i1 %cmp.i.i, label %for.cond.preheader.i.i, label %for.cond5.preheader.i.i

for.cond5.preheader.i.i:                          ; preds = %sw.bb
  br i1 %13, label %for.cond5.preheader.i.i.i2s_enable_irqs.exit.i_crit_edge, label %for.body8.preheader.i.i

for.cond5.preheader.i.i.i2s_enable_irqs.exit.i_crit_edge: ; preds = %for.cond5.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2s_enable_irqs.exit.i

for.body8.preheader.i.i:                          ; preds = %for.cond5.preheader.i.i
  %div6.i.i = sdiv i32 %12, 2
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %div6.i.i, i32 1) #7
  br label %for.body8.i.i

for.cond.preheader.i.i:                           ; preds = %sw.bb
  br i1 %13, label %for.cond.preheader.i.i.i2s_enable_irqs.exit.i_crit_edge, label %for.body.preheader.i.i

for.cond.preheader.i.i.i2s_enable_irqs.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2s_enable_irqs.exit.i

for.body.preheader.i.i:                           ; preds = %for.cond.preheader.i.i
  %div.i.i = sdiv i32 %12, 2
  %umax42.i.i = tail call i32 @llvm.umax.i32(i32 %div.i.i, i32 1) #7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.039.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %mul.i.i = shl i32 %i.039.i.i, 6
  %add.i.i = or i32 %mul.i.i, 60
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 %add.i.i
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %19 = and i32 %16, -805306369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %add.ptr.i32.i.i = getelementptr i8, ptr %18, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i.i, i32 %19) #7, !srcloc !114
  %inc.i.i = add nuw i32 %i.039.i.i, 1
  %exitcond43.not.i.i = icmp eq i32 %inc.i.i, %umax42.i.i
  br i1 %exitcond43.not.i.i, label %for.body.i.i.i2s_enable_irqs.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.i2s_enable_irqs.exit.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2s_enable_irqs.exit.i

for.body8.i.i:                                    ; preds = %for.body8.i.i.for.body8.i.i_crit_edge, %for.body8.preheader.i.i
  %i.137.i.i = phi i32 [ %inc18.i.i, %for.body8.i.i.for.body8.i.i_crit_edge ], [ 0, %for.body8.preheader.i.i ]
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %mul10.i.i = shl i32 %i.137.i.i, 6
  %add11.i.i = or i32 %mul10.i.i, 60
  %add.ptr.i33.i.i = getelementptr i8, ptr %21, i32 %add11.i.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %25 = and i32 %22, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %add.ptr.i34.i.i = getelementptr i8, ptr %24, i32 %add11.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i.i, i32 %25) #7, !srcloc !114
  %inc18.i.i = add nuw i32 %i.137.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc18.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.body8.i.i.i2s_enable_irqs.exit.i_crit_edge, label %for.body8.i.i.for.body8.i.i_crit_edge

for.body8.i.i.for.body8.i.i_crit_edge:            ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8.i.i

for.body8.i.i.i2s_enable_irqs.exit.i_crit_edge:   ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2s_enable_irqs.exit.i

i2s_enable_irqs.exit.i:                           ; preds = %for.body8.i.i.i2s_enable_irqs.exit.i_crit_edge, %for.body.i.i.i2s_enable_irqs.exit.i_crit_edge, %for.cond.preheader.i.i.i2s_enable_irqs.exit.i_crit_edge, %for.cond5.preheader.i.i.i2s_enable_irqs.exit.i_crit_edge
  %26 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i = icmp eq i32 %27, 0
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %i2s_enable_irqs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #7, !srcloc !114
  br label %i2s_start.exit

if.else.i:                                        ; preds = %i2s_enable_irqs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i12.i = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 16777216) #7, !srcloc !114
  br label %i2s_start.exit

i2s_start.exit:                                   ; preds = %if.else.i, %if.then.i
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %add.ptr.i13.i = getelementptr i8, ptr %31, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 16777216) #7, !srcloc !114
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge23, %entry.sw.bb1_crit_edge24
  %active2 = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 2
  %32 = ptrtoint ptr %active2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %active2, align 4
  %dec = add i32 %33, -1
  store i32 %dec, ptr %active2, align 4
  %stream.i7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %34 = ptrtoint ptr %stream.i7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %stream.i7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i.i8 = icmp eq i32 %35, 0
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 4
  br i1 %cmp.i.i8, label %for.body.preheader.i.i10, label %for.body4.preheader.i.i

for.body4.preheader.i.i:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i18.i.i = getelementptr i8, ptr %37, i32 64
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 4
  %add.ptr.i18.1.i.i = getelementptr i8, ptr %40, i32 128
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.1.i.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 4
  %add.ptr.i18.2.i.i = getelementptr i8, ptr %43, i32 192
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.2.i.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 4
  %add.ptr.i18.3.i.i = getelementptr i8, ptr %46, i32 256
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.3.i.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  br label %i2s_clear_irqs.exit.i

for.body.preheader.i.i10:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i9 = getelementptr i8, ptr %37, i32 68
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i9) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %3, align 4
  %add.ptr.i.1.i.i = getelementptr i8, ptr %50, i32 132
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %3, align 4
  %add.ptr.i.2.i.i = getelementptr i8, ptr %53, i32 196
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %3, align 4
  %add.ptr.i.3.i.i = getelementptr i8, ptr %56, i32 260
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  br label %i2s_clear_irqs.exit.i

i2s_clear_irqs.exit.i:                            ; preds = %for.body.preheader.i.i10, %for.body4.preheader.i.i
  %58 = ptrtoint ptr %stream.i7 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %stream.i7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i11 = icmp eq i32 %59, 0
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %cmp.i11, label %if.then.i13, label %if.else.i14

if.then.i13:                                      ; preds = %i2s_clear_irqs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i12 = getelementptr i8, ptr %61, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i12, i32 0) #7, !srcloc !114
  br label %if.end.i

if.else.i14:                                      ; preds = %i2s_clear_irqs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i16.i = getelementptr i8, ptr %61, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 0) #7, !srcloc !114
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i14, %if.then.i13
  %62 = ptrtoint ptr %stream.i7 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %stream.i7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i17.i = icmp eq i32 %63, 0
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %3, align 4
  %add.ptr.i.i18.i = getelementptr i8, ptr %65, i32 60
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i18.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %3, align 4
  br i1 %cmp.i17.i, label %for.body.preheader.i22.i, label %for.body8.preheader.i.i15

for.body8.preheader.i.i15:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = or i32 %66, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %add.ptr.i3.i.i = getelementptr i8, ptr %68, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i.i, i32 %69) #7, !srcloc !114
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %3, align 4
  %add.ptr.i2.1.i.i = getelementptr i8, ptr %71, i32 124
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.1.i.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %73 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %3, align 4
  %75 = or i32 %72, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %add.ptr.i3.1.i.i = getelementptr i8, ptr %74, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.1.i.i, i32 %75) #7, !srcloc !114
  %76 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %3, align 4
  %add.ptr.i2.2.i.i = getelementptr i8, ptr %77, i32 188
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.2.i.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %79 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %3, align 4
  %81 = or i32 %78, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %add.ptr.i3.2.i.i = getelementptr i8, ptr %80, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.2.i.i, i32 %81) #7, !srcloc !114
  %82 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %3, align 4
  %add.ptr.i2.3.i.i = getelementptr i8, ptr %83, i32 252
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.3.i.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %3, align 4
  %87 = or i32 %84, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %add.ptr.i3.3.i.i = getelementptr i8, ptr %86, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.3.i.i, i32 %87) #7, !srcloc !114
  br label %i2s_disable_irqs.exit.i

for.body.preheader.i22.i:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %88 = or i32 %66, 805306368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %add.ptr.i1.i.i = getelementptr i8, ptr %68, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i.i, i32 %88) #7, !srcloc !114
  %89 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %3, align 4
  %add.ptr.i.1.i19.i = getelementptr i8, ptr %90, i32 124
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i19.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %92 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %3, align 4
  %94 = or i32 %91, 805306368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %add.ptr.i1.1.i.i = getelementptr i8, ptr %93, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.1.i.i, i32 %94) #7, !srcloc !114
  %95 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %3, align 4
  %add.ptr.i.2.i20.i = getelementptr i8, ptr %96, i32 188
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i20.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %98 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %3, align 4
  %100 = or i32 %97, 805306368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %add.ptr.i1.2.i.i = getelementptr i8, ptr %99, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.2.i.i, i32 %100) #7, !srcloc !114
  %101 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %3, align 4
  %add.ptr.i.3.i21.i = getelementptr i8, ptr %102, i32 252
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i21.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %104 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %3, align 4
  %106 = or i32 %103, 805306368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %add.ptr.i1.3.i.i = getelementptr i8, ptr %105, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.3.i.i, i32 %106) #7, !srcloc !114
  br label %i2s_disable_irqs.exit.i

i2s_disable_irqs.exit.i:                          ; preds = %for.body.preheader.i22.i, %for.body8.preheader.i.i15
  %107 = ptrtoint ptr %active2 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %active2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.not.i = icmp eq i32 %108, 0
  br i1 %tobool.not.i, label %if.then4.i, label %i2s_disable_irqs.exit.i.sw.epilog_crit_edge

i2s_disable_irqs.exit.i.sw.epilog_crit_edge:      ; preds = %i2s_disable_irqs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then4.i:                                       ; preds = %i2s_disable_irqs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %109 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %add.ptr.i23.i = getelementptr i8, ptr %110, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 0) #7, !srcloc !114
  %111 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 0) #7, !srcloc !114
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then4.i, %i2s_disable_irqs.exit.i.sw.epilog_crit_edge, %i2s_start.exit, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %i2s_start.exit ], [ -22, %entry.sw.epilog_crit_edge ], [ 0, %i2s_disable_irqs.exit.i.sw.epilog_crit_edge ], [ 0, %if.then4.i ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_i2s_config(ptr nocapture noundef readonly %dev, i32 noundef %stream) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %config1 = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev, i32 0, i32 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stream)
  %cmp.i = icmp eq i32 %stream, 0
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %cmp.i, label %for.body.preheader.i, label %for.body4.preheader.i

for.body4.preheader.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i17.i = getelementptr i8, ptr %1, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 0) #7, !srcloc !114
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %add.ptr.i17.1.i = getelementptr i8, ptr %3, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.1.i, i32 0) #7, !srcloc !114
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %add.ptr.i17.2.i = getelementptr i8, ptr %5, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.2.i, i32 0) #7, !srcloc !114
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %add.ptr.i17.3.i = getelementptr i8, ptr %7, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.3.i, i32 0) #7, !srcloc !114
  br label %i2s_disable_channels.exit

for.body.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !114
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.1.i = getelementptr i8, ptr %9, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i, i32 0) #7, !srcloc !114
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.2.i = getelementptr i8, ptr %11, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i, i32 0) #7, !srcloc !114
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.3.i = getelementptr i8, ptr %13, i32 236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3.i, i32 0) #7, !srcloc !114
  br label %i2s_disable_channels.exit

i2s_disable_channels.exit:                        ; preds = %for.body.preheader.i, %for.body4.preheader.i
  %14 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %config1, align 4
  %.off = add i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %16 = icmp ult i32 %.off, 3
  br i1 %16, label %i2s_disable_channels.exit.for.end_crit_edge, label %for.body.lr.ph

i2s_disable_channels.exit.for.end_crit_edge:      ; preds = %i2s_disable_channels.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %i2s_disable_channels.exit
  %xfer_resolution12 = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev, i32 0, i32 9
  %fifo_th16 = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ch_reg.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %mul = shl i32 %ch_reg.047, 6
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %add = or i32 %mul, 52
  %19 = ptrtoint ptr %xfer_resolution12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %xfer_resolution12, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  %add.ptr.i = getelementptr i8, ptr %18, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %21) #7, !srcloc !114
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %add5 = add i32 %mul, 76
  %24 = ptrtoint ptr %fifo_th16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fifo_th16, align 4
  %sub = add i32 %25, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %sub) #7
  %add.ptr.i40 = getelementptr i8, ptr %23, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %26) #7, !srcloc !114
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %add8 = or i32 %mul, 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %add.ptr.i41 = getelementptr i8, ptr %28, i32 %add8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 16777216) #7, !srcloc !114
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %add11 = or i32 %mul, 48
  %29 = ptrtoint ptr %xfer_resolution12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %xfer_resolution12, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  %add.ptr.i42 = getelementptr i8, ptr %18, i32 %add11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %31) #7, !srcloc !114
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %add15 = add i32 %mul, 72
  %34 = ptrtoint ptr %fifo_th16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fifo_th16, align 4
  %sub17 = add i32 %35, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %36 = tail call i32 @llvm.bswap.i32(i32 %sub17) #7
  %add.ptr.i43 = getelementptr i8, ptr %33, i32 %add15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %36) #7, !srcloc !114
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %add20 = or i32 %mul, 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %add.ptr.i44 = getelementptr i8, ptr %38, i32 %add20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 16777216) #7, !srcloc !114
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %inc = add nuw i32 %ch_reg.047, 1
  %39 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %config1, align 4
  %div = sdiv i32 %40, 2
  %cmp = icmp ult i32 %inc, %div
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %i2s_disable_channels.exit.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcm_push_tx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcm_pop_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_configure_dai(ptr nocapture noundef %dev, ptr nocapture noundef writeonly %dw_i2s_dai, i32 noundef %rates) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %i2s_reg_comp1 = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %i2s_reg_comp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2s_reg_comp1, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !108
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %i2s_reg_comp2 = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev, i32 0, i32 6
  %8 = ptrtoint ptr %i2s_reg_comp2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i2s_reg_comp2, align 4
  %add.ptr.i12 = getelementptr i8, ptr %7, i32 %9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #7, !srcloc !108
  %11 = lshr i32 %10, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %capability = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev, i32 0, i32 3
  %12 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %capability, align 4
  %and3 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %quirks = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev, i32 0, i32 4
  %14 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %quirks, align 4
  %and4 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %and6 = and i32 %5, -33
  %spec.select = select i1 %tobool5.not, i32 %5, i32 %and6
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %comp1.0 = phi i32 [ %5, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %and8 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end16_crit_edge, label %land.lhs.true10

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true10:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %quirks11 = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev, i32 0, i32 4
  %16 = ptrtoint ptr %quirks11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %quirks11, align 4
  %and12 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %and15 = and i32 %comp1.0, -65
  %spec.select2 = select i1 %tobool13.not, i32 %comp1.0, i32 %and15
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true10, %if.end.if.end16_crit_edge
  %comp1.1 = phi i32 [ %comp1.0, %if.end.if.end16_crit_edge ], [ %spec.select2, %land.lhs.true10 ]
  %18 = and i32 %comp1.1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool19.not = icmp eq i32 %18, 0
  br i1 %tobool19.not, label %if.end16.if.end75_crit_edge, label %do.body

if.end16.if.end75_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

do.body:                                          ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_configure_dai.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_configure_dai, %if.then25)) #7
          to label %do.end [label %if.then25], !srcloc !111

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev26 = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev, i32 0, i32 7
  %19 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_configure_dai.__UNIQUE_ID_ddebug242, ptr noundef %20, ptr noundef nonnull @.str.36) #7
  br label %do.end

do.end:                                           ; preds = %if.then25, %do.body
  %and28 = lshr i32 %comp1.1, 16
  %shr29 = and i32 %and28, 7
  %quirks62 = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev, i32 0, i32 4
  %21 = ptrtoint ptr %quirks62 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %quirks62, align 4
  %and63 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %idx.0 = select i1 %tobool64.not, i32 %shr29, i32 1
  %channels_min = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %dw_i2s_dai, i32 0, i32 11, i32 5
  %23 = ptrtoint ptr %channels_min to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %channels_min, align 4
  %and67 = lshr i32 %comp1.1, 9
  %shr68 = and i32 %and67, 3
  %shl70 = shl nuw nsw i32 2, %shr68
  %channels_max = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %dw_i2s_dai, i32 0, i32 11, i32 6
  %24 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shl70, ptr %channels_max, align 8
  %arrayidx = getelementptr [8 x i32], ptr @formats, i32 0, i32 %idx.0
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %conv = zext i32 %26 to i64
  %formats = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %dw_i2s_dai, i32 0, i32 11, i32 1
  %27 = ptrtoint ptr %formats to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv, ptr %formats, align 8
  %rates74 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %dw_i2s_dai, i32 0, i32 11, i32 2
  %28 = ptrtoint ptr %rates74 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %rates, ptr %rates74, align 8
  br label %if.end75

if.end75:                                         ; preds = %do.end, %if.end16.if.end75_crit_edge
  %29 = and i32 %comp1.1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool78.not = icmp eq i32 %29, 0
  br i1 %tobool78.not, label %if.end75.if.end152_crit_edge, label %do.body80

if.end75.if.end152_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end152

do.body80:                                        ; preds = %if.end75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_configure_dai.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_configure_dai, %if.then92)) #7
          to label %do.end96 [label %if.then92], !srcloc !111

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #9
  %dev93 = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev, i32 0, i32 7
  %30 = ptrtoint ptr %dev93 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev93, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_configure_dai.__UNIQUE_ID_ddebug243, ptr noundef %31, ptr noundef nonnull @.str.37) #7
  br label %do.end96

do.end96:                                         ; preds = %if.then92, %do.body80
  %and97 = and i32 %11, 7
  %quirks134 = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev, i32 0, i32 4
  %32 = ptrtoint ptr %quirks134 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %quirks134, align 4
  %and135 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  %idx.1 = select i1 %tobool136.not, i32 %and97, i32 1
  %channels_min139 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %dw_i2s_dai, i32 0, i32 10, i32 5
  %34 = ptrtoint ptr %channels_min139 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %channels_min139, align 4
  %and140 = lshr i32 %comp1.1, 7
  %shr141 = and i32 %and140, 3
  %shl143 = shl nuw nsw i32 2, %shr141
  %channels_max145 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %dw_i2s_dai, i32 0, i32 10, i32 6
  %35 = ptrtoint ptr %channels_max145 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shl143, ptr %channels_max145, align 8
  %arrayidx146 = getelementptr [8 x i32], ptr @formats, i32 0, i32 %idx.1
  %36 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx146, align 4
  %conv147 = zext i32 %37 to i64
  %formats149 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %dw_i2s_dai, i32 0, i32 10, i32 1
  %38 = ptrtoint ptr %formats149 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv147, ptr %formats149, align 8
  %rates151 = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %dw_i2s_dai, i32 0, i32 10, i32 2
  %39 = ptrtoint ptr %rates151 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %rates, ptr %rates151, align 8
  br label %if.end152

if.end152:                                        ; preds = %do.end96, %if.end75.if.end152_crit_edge
  %40 = and i32 %comp1.1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool155.not = icmp eq i32 %40, 0
  br i1 %tobool155.not, label %do.body175, label %do.body157

do.body157:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_configure_dai.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_configure_dai, %if.then169)) #7
          to label %if.end194 [label %if.then169], !srcloc !111

if.then169:                                       ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #9
  %dev170 = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev, i32 0, i32 7
  %41 = ptrtoint ptr %dev170 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev170, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_configure_dai.__UNIQUE_ID_ddebug244, ptr noundef %42, ptr noundef nonnull @.str.38) #7
  br label %if.end194

do.body175:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_configure_dai.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dw_configure_dai, %if.then187)) #7
          to label %if.end194 [label %if.then187], !srcloc !111

if.then187:                                       ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #9
  %dev188 = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev, i32 0, i32 7
  %43 = ptrtoint ptr %dev188 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev188, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_configure_dai.__UNIQUE_ID_ddebug245, ptr noundef %44, ptr noundef nonnull @.str.39) #7
  br label %if.end194

if.end194:                                        ; preds = %if.then187, %do.body175, %if.then169, %do.body157
  %.sink17 = phi i32 [ 8, %do.body157 ], [ 8, %if.then169 ], [ 4, %do.body175 ], [ 4, %if.then187 ]
  %45 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %capability, align 4
  %or193 = or i32 %46, %.sink17
  %and = lshr i32 %5, 2
  %shr = and i32 %and, 3
  %shl = shl nuw nsw i32 2, %shr
  store i32 %or193, ptr %capability, align 4
  %div1 = lshr exact i32 %shl, 1
  %fifo_th = getelementptr inbounds %struct.dw_i2s_dev, ptr %dev, i32 0, i32 10
  %47 = ptrtoint ptr %fifo_th to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %div1, ptr %fifo_th, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i2s_suspend(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %capability = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capability, align 4
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %clk = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i2s_resume(ptr noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %capability = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capability, align 4
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %clk = getelementptr inbounds %struct.dw_i2s_dev, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dai_list = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 11
  %8 = ptrtoint ptr %dai_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn28 = load ptr, ptr %dai_list, align 4
  %cmp.not30 = icmp eq ptr %.pn28, %dai_list
  br i1 %cmp.not30, label %if.end.for.end16_crit_edge, label %if.end.for.cond3.preheader_crit_edge

if.end.for.cond3.preheader_crit_edge:             ; preds = %if.end
  br label %for.cond3.preheader

if.end.for.end16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end16

for.cond3.preheader:                              ; preds = %for.inc.1.for.cond3.preheader_crit_edge, %if.end.for.cond3.preheader_crit_edge
  %.pn31 = phi ptr [ %.pn, %for.inc.1.for.cond3.preheader_crit_edge ], [ %.pn28, %if.end.for.cond3.preheader_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %.pn31, i32 -48
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %for.cond3.preheader.for.inc_crit_edge, label %if.then8

for.cond3.preheader.for.inc_crit_edge:            ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then8:                                         ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @dw_i2s_config(ptr noundef %3, i32 noundef 0)
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %for.cond3.preheader.for.inc_crit_edge
  %arrayidx.i.1 = getelementptr i8, ptr %.pn31, i32 -44
  %11 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not.1 = icmp eq i32 %12, 0
  br i1 %tobool7.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then8.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then8.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @dw_i2s_config(ptr noundef %3, i32 noundef 1)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then8.1, %for.inc.for.inc.1_crit_edge
  %13 = ptrtoint ptr %.pn31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn31, align 4
  %cmp.not = icmp eq ptr %.pn, %dai_list
  br i1 %cmp.not, label %for.inc.1.for.end16_crit_edge, label %for.inc.1.for.cond3.preheader_crit_edge

for.inc.1.for.cond3.preheader_crit_edge:          ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond3.preheader

for.inc.1.for.end16_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end16

for.end16:                                        ; preds = %for.inc.1.for.end16_crit_edge, %if.end.for.end16_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i2s_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %capability = getelementptr inbounds %struct.dw_i2s_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capability, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %clk = getelementptr inbounds %struct.dw_i2s_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i2s_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %capability = getelementptr inbounds %struct.dw_i2s_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capability, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %clk = getelementptr inbounds %struct.dw_i2s_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !80, !81, !83, !84, !86, !88, !90, !92, !94, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__initcall__kmod_designware_i2s__246_759_dw_i2s_driver_init6, !1, !"__initcall__kmod_designware_i2s__246_759_dw_i2s_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 759, i32 1}
!2 = !{ptr @__exitcall_dw_i2s_driver_exit, !1, !"__exitcall_dw_i2s_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author247, !4, !"__UNIQUE_ID_author247", i1 false, i1 false}
!4 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 761, i32 1}
!5 = !{ptr @__UNIQUE_ID_description248, !6, !"__UNIQUE_ID_description248", i1 false, i1 false}
!6 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 762, i32 1}
!7 = !{ptr @__UNIQUE_ID_file249, !8, !"__UNIQUE_ID_file249", i1 false, i1 false}
!8 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 763, i32 1}
!9 = !{ptr @__UNIQUE_ID_license250, !8, !"__UNIQUE_ID_license250", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias251, !11, !"__UNIQUE_ID_alias251", i1 false, i1 false}
!11 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 764, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 753, i32 11}
!14 = !{ptr @dw_i2s_driver, !15, !"dw_i2s_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 749, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 650, i32 4}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @dw_i2s_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @dw_i2s_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 667, i32 12}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 677, i32 5}
!28 = !{ptr @dw_i2s_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @dw_i2s_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 695, i32 3}
!32 = !{ptr @dw_i2s_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @dw_i2s_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 710, i32 4}
!36 = !{ptr @dw_i2s_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @dw_i2s_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @dw_i2s_dai_ops, !39, !"dw_i2s_dai_ops", i1 false, i1 false}
!39 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 384, i32 37}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 377, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @dw_i2s_set_fmt.__UNIQUE_ID_ddebug241, !41, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 263, i32 3}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @dw_i2s_hw_params._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @dw_i2s_hw_params._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 276, i32 3}
!52 = !{ptr @dw_i2s_hw_params._entry.21, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @dw_i2s_hw_params._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 290, i32 5}
!56 = !{ptr @dw_i2s_hw_params._entry.24, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @dw_i2s_hw_params._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 299, i32 5}
!60 = !{ptr @dw_i2s_hw_params._entry.27, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @dw_i2s_hw_params._entry_ptr.29, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 135, i32 4}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @i2s_irq_handler._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @i2s_irq_handler._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 141, i32 4}
!69 = !{ptr @i2s_irq_handler._entry.32, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @i2s_irq_handler._entry_ptr.34, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 505, i32 3}
!73 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @dw_configure_dai.__UNIQUE_ID_ddebug242, !72, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 519, i32 3}
!77 = !{ptr @dw_configure_dai.__UNIQUE_ID_ddebug243, !76, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 533, i32 3}
!80 = !{ptr @dw_configure_dai.__UNIQUE_ID_ddebug244, !79, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 536, i32 3}
!83 = !{ptr @dw_configure_dai.__UNIQUE_ID_ddebug245, !82, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!84 = !{ptr @formats, !85, !"formats", i1 false, i1 false}
!85 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 472, i32 18}
!86 = !{ptr @bus_widths, !87, !"bus_widths", i1 false, i1 false}
!87 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 464, i32 18}
!88 = !{ptr @fifo_width, !89, !"fifo_width", i1 false, i1 false}
!89 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 459, i32 18}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 445, i32 11}
!92 = !{ptr @dw_i2s_component, !93, !"dw_i2s_component", i1 false, i1 false}
!93 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 444, i32 46}
!94 = !{ptr @dw_i2s_of_match, !95, !"dw_i2s_of_match", i1 false, i1 false}
!95 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 737, i32 34}
!96 = !{ptr @dwc_pm_ops, !97, !"dwc_pm_ops", i1 false, i1 false}
!97 = !{!"../sound/soc/dwc/dwc-i2s.c", i32 745, i32 32}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{!"auto-init"}
!108 = !{i64 4819669}
!109 = !{i64 2154962487}
!110 = !{i8 0, i8 2}
!111 = !{i64 2148738814, i64 2148738819, i64 2148738832, i64 2148738876, i64 2148738910, i64 2148738931}
!112 = !{i32 0, i32 33}
!113 = !{i64 2154961677}
!114 = !{i64 4819251}
