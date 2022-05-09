; ModuleID = '/llk/IR_all_yes/sound/soc/ti/omap-dmic.c_pt.bc'
source_filename = "../sound/soc/ti/omap-dmic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.omap_dmic = type { ptr, ptr, ptr, %struct.pm_qos_request, i32, i32, i32, i32, i32, i32, i32, i8, %struct.mutex, %struct.snd_dmaengine_dai_dma_data }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }

@__initcall__kmod_snd_soc_omap_dmic__241_523_asoc_dmic_driver_init6 = internal global ptr @asoc_dmic_driver_init, section ".initcall6.init", align 4
@asoc_dmic_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @asoc_dmic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_dmic_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_asoc_dmic_driver_exit = internal global ptr @asoc_dmic_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias242 = internal constant [43 x i8] c"snd_soc_omap_dmic.alias=platform:omap-dmic\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [64 x i8] c"snd_soc_omap_dmic.author=Peter Ujfalusi <peter.ujfalusi@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [55 x i8] c"snd_soc_omap_dmic.description=OMAP DMIC ASoC Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [54 x i8] c"snd_soc_omap_dmic.file=sound/soc/ti/snd-soc-omap-dmic\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [30 x i8] c"snd_soc_omap_dmic.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"omap-dmic\00", [22 x i8] zeroinitializer }, align 32
@omap_dmic_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-dmic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@asoc_dmic_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&dmic->mutex\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@asoc_dmic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 477, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cant get fck\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"asoc_dmic_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/soc/ti/omap-dmic.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@asoc_dmic_probe._entry_ptr = internal global ptr @asoc_dmic_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dma\00", [28 x i8] zeroinitializer }, align 32
@asoc_dmic_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 483, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid dma memory resource\0A\00", [35 x i8] zeroinitializer }, align 32
@asoc_dmic_probe._entry_ptr.11 = internal global ptr @asoc_dmic_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"up_link\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mpu\00", [28 x i8] zeroinitializer }, align 32
@omap_dmic_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@omap_dmic_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @omap_dmic_probe, ptr @omap_dmic_remove, ptr null, ptr null, ptr @omap_dmic_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 1024, i32 5120, i32 0, i32 0, i32 2, i32 6, i32 24 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@omap_dmic_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @omap_dmic_set_dai_sysclk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_dmic_dai_startup, ptr @omap_dmic_dai_shutdown, ptr @omap_dmic_dai_hw_params, ptr null, ptr @omap_dmic_dai_prepare, ptr @omap_dmic_dai_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@omap_dmic_set_dai_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 400, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid clock direction (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"omap_dmic_set_dai_sysclk\00", [39 x i8] zeroinitializer }, align 32
@omap_dmic_set_dai_sysclk._entry_ptr = internal global ptr @omap_dmic_set_dai_sysclk._entry, section ".printk_index", align 4
@omap_dmic_select_fclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 293, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid input frequency: %dHz\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"omap_dmic_select_fclk\00", [42 x i8] zeroinitializer }, align 32
@omap_dmic_select_fclk._entry_ptr = internal global ptr @omap_dmic_select_fclk._entry, section ".printk_index", align 4
@omap_dmic_select_fclk._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.5, i32 305, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"can't re-parent when DMIC active\0A\00", [62 x i8] zeroinitializer }, align 32
@omap_dmic_select_fclk._entry_ptr.20 = internal global ptr @omap_dmic_select_fclk._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pad_clks_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"slimbus_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dmic_sync_mux_ck\00", [47 x i8] zeroinitializer }, align 32
@omap_dmic_select_fclk._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.5, i32 320, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fclk clk_id (%d) not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@omap_dmic_select_fclk._entry_ptr.26 = internal global ptr @omap_dmic_select_fclk._entry.24, section ".printk_index", align 4
@omap_dmic_select_fclk._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.17, ptr @.str.5, i32 326, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"can't get %s\0A\00", [18 x i8] zeroinitializer }, align 32
@omap_dmic_select_fclk._entry_ptr.29 = internal global ptr @omap_dmic_select_fclk._entry.27, section ".printk_index", align 4
@omap_dmic_select_fclk._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.17, ptr @.str.5, i32 332, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't get fck mux parent\0A\00", [38 x i8] zeroinitializer }, align 32
@omap_dmic_select_fclk._entry_ptr.32 = internal global ptr @omap_dmic_select_fclk._entry.30, section ".printk_index", align 4
@omap_dmic_select_fclk._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.17, ptr @.str.5, i32 349, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"re-parent failed\0A\00", [46 x i8] zeroinitializer }, align 32
@omap_dmic_select_fclk._entry_ptr.35 = internal global ptr @omap_dmic_select_fclk._entry.33, section ".printk_index", align 4
@omap_dmic_select_outclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.5, i32 370, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"output clk_id (%d) not supported\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"omap_dmic_select_outclk\00", [40 x i8] zeroinitializer }, align 32
@omap_dmic_select_outclk._entry_ptr = internal global ptr @omap_dmic_select_outclk._entry, section ".printk_index", align 4
@omap_dmic_select_outclk._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.5, i32 382, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid out frequency: %dHz\0A\00", [35 x i8] zeroinitializer }, align 32
@omap_dmic_select_outclk._entry_ptr.40 = internal global ptr @omap_dmic_select_outclk._entry.38, section ".printk_index", align 4
@omap_dmic_dai_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.5, i32 197, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"no valid divider for %dHz from %dHz\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"omap_dmic_dai_hw_params\00", [40 x i8] zeroinitializer }, align 32
@omap_dmic_dai_hw_params._entry_ptr = internal global ptr @omap_dmic_dai_hw_params._entry, section ".printk_index", align 4
@omap_dmic_dai_hw_params._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.5, i32 214, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid number of legacy channels\0A\00", [61 x i8] zeroinitializer }, align 32
@omap_dmic_dai_hw_params._entry_ptr.45 = internal global ptr @omap_dmic_dai_hw_params._entry.43, section ".printk_index", align 4
@omap_dmic_select_divider._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.5, i32 136, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"invalid clock configuration for 192KHz\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"omap_dmic_select_divider\00", [39 x i8] zeroinitializer }, align 32
@omap_dmic_select_divider._entry_ptr = internal global ptr @omap_dmic_select_divider._entry, section ".printk_index", align 4
@omap_dmic_select_divider._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.47, ptr @.str.5, i32 174, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@omap_dmic_select_divider._entry_ptr.49 = internal global ptr @omap_dmic_select_divider._entry.48, section ".printk_index", align 4
@omap_dmic_select_divider._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.47, ptr @.str.5, i32 182, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"invalid out frequency %dHz for %dHz input\0A\00", [53 x i8] zeroinitializer }, align 32
@omap_dmic_select_divider._entry_ptr.52 = internal global ptr @omap_dmic_select_divider._entry.50, section ".printk_index", align 4
@switch.table.omap_dmic_set_dai_sysclk = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.53 = internal global [6 x i64] [i64 4, i64 32, i64 12000000, i64 19200000, i64 24000000, i64 24576000]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 1536000, i64 2400000, i64 3072000, i64 3840000]
@__sancov_gen_cov_switch_values.55 = internal global [6 x i64] [i64 4, i64 32, i64 1536000, i64 2400000, i64 3072000, i64 3840000]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 12000000, i64 19200000, i64 24000000]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"asoc_dmic_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 515, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 517, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant [19 x i8] c"omap_dmic_of_match\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 509, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 473, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 475, i32 39 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 477, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 481, i32 59 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 483, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 488, i32 31 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 490, i32 59 }
@___asan_gen_.110 = private unnamed_addr constant [20 x i8] c"omap_dmic_component\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 455, i32 46 }
@___asan_gen_.113 = private unnamed_addr constant [14 x i8] c"omap_dmic_dai\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 441, i32 34 }
@___asan_gen_.116 = private unnamed_addr constant [18 x i8] c"omap_dmic_dai_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 404, i32 37 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 400, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 293, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 305, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 311, i32 21 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 314, i32 21 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 317, i32 21 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 320, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 326, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 332, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 349, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 369, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 382, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 196, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 214, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 135, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 173, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.222 = private constant [28 x i8] c"../sound/soc/ti/omap-dmic.c\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 181, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [38 x i8] c"switch.table.omap_dmic_set_dai_sysclk\00", align 1
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_alias242, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_asoc_dmic_driver_exit, ptr @__initcall__kmod_snd_soc_omap_dmic__241_523_asoc_dmic_driver_init6, ptr @asoc_dmic_driver_exit, ptr @asoc_dmic_probe._entry, ptr @asoc_dmic_probe._entry.9, ptr @asoc_dmic_probe._entry_ptr, ptr @asoc_dmic_probe._entry_ptr.11, ptr @omap_dmic_dai_hw_params._entry, ptr @omap_dmic_dai_hw_params._entry.43, ptr @omap_dmic_dai_hw_params._entry_ptr, ptr @omap_dmic_dai_hw_params._entry_ptr.45, ptr @omap_dmic_select_divider._entry, ptr @omap_dmic_select_divider._entry.48, ptr @omap_dmic_select_divider._entry.50, ptr @omap_dmic_select_divider._entry_ptr, ptr @omap_dmic_select_divider._entry_ptr.49, ptr @omap_dmic_select_divider._entry_ptr.52, ptr @omap_dmic_select_fclk._entry, ptr @omap_dmic_select_fclk._entry.18, ptr @omap_dmic_select_fclk._entry.24, ptr @omap_dmic_select_fclk._entry.27, ptr @omap_dmic_select_fclk._entry.30, ptr @omap_dmic_select_fclk._entry.33, ptr @omap_dmic_select_fclk._entry_ptr, ptr @omap_dmic_select_fclk._entry_ptr.20, ptr @omap_dmic_select_fclk._entry_ptr.26, ptr @omap_dmic_select_fclk._entry_ptr.29, ptr @omap_dmic_select_fclk._entry_ptr.32, ptr @omap_dmic_select_fclk._entry_ptr.35, ptr @omap_dmic_select_outclk._entry, ptr @omap_dmic_select_outclk._entry.38, ptr @omap_dmic_select_outclk._entry_ptr, ptr @omap_dmic_select_outclk._entry_ptr.40, ptr @omap_dmic_set_dai_sysclk._entry, ptr @omap_dmic_set_dai_sysclk._entry_ptr, ptr @asoc_dmic_driver, ptr @.str, ptr @omap_dmic_of_match, ptr @asoc_dmic_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @omap_dmic_component, ptr @omap_dmic_dai, ptr @omap_dmic_dai_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.51, ptr @switch.table.omap_dmic_set_dai_sysclk], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asoc_dmic_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmic_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asoc_dmic_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asoc_dmic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asoc_dmic_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmic_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmic_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmic_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmic_set_dai_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmic_select_fclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmic_select_fclk._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmic_select_fclk._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmic_select_fclk._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmic_select_fclk._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmic_select_fclk._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmic_select_outclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmic_select_outclk._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmic_dai_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmic_dai_hw_params._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmic_select_divider._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmic_select_divider._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmic_select_divider._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.omap_dmic_set_dai_sysclk to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @asoc_dmic_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @asoc_dmic_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @asoc_dmic_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @asoc_dmic_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asoc_dmic_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 196, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 4
  %sysclk = getelementptr inbounds %struct.omap_dmic, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %sysclk, align 4
  %mutex = getelementptr inbounds %struct.omap_dmic, ptr %call.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @asoc_dmic_probe.__key) #5
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  %call4 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.2) #5
  %fclk = getelementptr inbounds %struct.omap_dmic, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %fclk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %fclk, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call13 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.8) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %10 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call13, align 4
  %add = add i32 %11, 72
  %dma_data = getelementptr inbounds %struct.omap_dmic, ptr %call.i, i32 0, i32 13
  %12 = ptrtoint ptr %dma_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %dma_data, align 4
  %filter_data = getelementptr inbounds %struct.omap_dmic, ptr %call.i, i32 0, i32 13, i32 3
  %13 = ptrtoint ptr %filter_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.12, ptr %filter_data, align 4
  %call22 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.13) #5
  %call24 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call22) #5
  %io_base = getelementptr inbounds %struct.omap_dmic, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call24, ptr %io_base, align 4
  %cmp.i69 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  %call32 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @omap_dmic_component, ptr noundef nonnull @omap_dmic_dai, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %call37 = tail call i32 @sdma_pcm_platform_register(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @.str.12) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end30.cleanup_crit_edge, %if.then27, %do.end18, %do.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end10 ], [ %15, %if.then27 ], [ -19, %do.end18 ], [ -12, %entry.cleanup_crit_edge ], [ %call32, %if.end30.cleanup_crit_edge ], [ %call37, %if.end35 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdma_pcm_platform_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dmic_probe(ptr nocapture noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
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
  tail call void @pm_runtime_enable(ptr noundef %5) #5
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #5
  %io_base.i = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !122
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %call.i11 = tail call i32 @__pm_runtime_idle(ptr noundef %11, i32 noundef 4) #5
  %threshold = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %threshold to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 12, ptr %threshold, align 4
  %dma_data = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 13
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %13 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %14 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dma_data, ptr %capture_dma_data.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dmic_remove(ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
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
  tail call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dmic_set_dai_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %dir, label %do.end [
    i32 0, label %if.then
    i32 1, label %if.then3
  ]

if.then:                                          ; preds = %entry
  %5 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %freq, label %do.end.i [
    i32 12000000, label %if.then.sw.epilog.i_crit_edge
    i32 19200000, label %if.then.sw.epilog.i_crit_edge15
    i32 24000000, label %if.then.sw.epilog.i_crit_edge16
    i32 24576000, label %if.then.sw.epilog.i_crit_edge17
  ]

if.then.sw.epilog.i_crit_edge17:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.then.sw.epilog.i_crit_edge16:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.then.sw.epilog.i_crit_edge15:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.then.sw.epilog.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.16, i32 noundef %freq) #8
  %fclk_freq.i = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %fclk_freq.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %fclk_freq.i, align 4
  br label %cleanup

sw.epilog.i:                                      ; preds = %if.then.sw.epilog.i_crit_edge, %if.then.sw.epilog.i_crit_edge15, %if.then.sw.epilog.i_crit_edge16, %if.then.sw.epilog.i_crit_edge17
  %sysclk.i = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %sysclk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sysclk.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %clk_id)
  %cmp.i = icmp eq i32 %10, %clk_id
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %fclk_freq1.i = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %fclk_freq1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %freq, ptr %fclk_freq1.i, align 4
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog.i
  %active.i = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %active.i, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.end.i.if.end8.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %io_base.i.i.i = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %io_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 68
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !124
  %17 = and i32 %16, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool2.not.i = icmp eq i32 %17, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end8.i_crit_edge, label %do.end6.i

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

do.end6.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.19) #8
  br label %cleanup

if.end8.i:                                        ; preds = %land.lhs.true.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %clk_id)
  %20 = icmp ult i32 %clk_id, 3
  br i1 %20, label %switch.lookup, label %do.end15.i

do.end15.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.25, i32 noundef %clk_id) #8
  br label %cleanup

switch.lookup:                                    ; preds = %if.end8.i
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.omap_dmic_set_dai_sysclk, i32 0, i32 %clk_id
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %call19.i = tail call ptr @clk_get(ptr noundef %25, ptr noundef nonnull %switch.load) #5
  %cmp.i.i = icmp ugt ptr %call19.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end24.i, label %if.end26.i

do.end24.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.28, ptr noundef nonnull %switch.load) #8
  br label %cleanup

if.end26.i:                                       ; preds = %switch.lookup
  %fclk.i = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 2
  %28 = ptrtoint ptr %fclk.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fclk.i, align 4
  %call27.i = tail call ptr @clk_get_parent(ptr noundef %29) #5
  %cmp.i92.i = icmp ugt ptr %call27.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92.i, label %do.end32.i, label %if.end34.i

do.end32.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.31) #8
  tail call void @clk_put(ptr noundef %call19.i) #5
  br label %cleanup

if.end34.i:                                       ; preds = %if.end26.i
  %mutex.i = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %32 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %active.i, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool36.not.i = icmp eq i8 %33, 0
  br i1 %tobool36.not.i, label %if.else.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %35, i32 noundef 4) #5
  %call40.i = tail call i32 @clk_set_parent(ptr noundef %call27.i, ptr noundef %call19.i) #5
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 4
  %call.i93.i = tail call i32 @__pm_runtime_resume(ptr noundef %37, i32 noundef 4) #5
  br label %if.end44.i

if.else.i:                                        ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  %call43.i = tail call i32 @clk_set_parent(ptr noundef %call27.i, ptr noundef %call19.i) #5
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.else.i, %if.then37.i
  %ret.0.i = phi i32 [ %call40.i, %if.then37.i ], [ %call43.i, %if.else.i ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp46.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp46.i, label %do.end50.i, label %if.end52.i

do.end50.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.34) #8
  br label %err_busy.i

if.end52.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %sysclk.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %clk_id, ptr %sysclk.i, align 4
  %fclk_freq54.i = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 5
  %41 = ptrtoint ptr %fclk_freq54.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %freq, ptr %fclk_freq54.i, align 4
  br label %err_busy.i

err_busy.i:                                       ; preds = %if.end52.i, %do.end50.i
  tail call void @clk_put(ptr noundef %call27.i) #5
  tail call void @clk_put(ptr noundef %call19.i) #5
  br label %cleanup

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %clk_id)
  %cmp.not.i = icmp eq i32 %clk_id, 3
  br i1 %cmp.not.i, label %if.end.i13, label %do.end.i12

do.end.i12:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.36, i32 noundef %clk_id) #8
  br label %cleanup

if.end.i13:                                       ; preds = %if.then3
  %44 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %freq, label %do.end3.i [
    i32 1536000, label %if.end.i13.sw.bb.i_crit_edge
    i32 2400000, label %if.end.i13.sw.bb.i_crit_edge18
    i32 3072000, label %if.end.i13.sw.bb.i_crit_edge19
    i32 3840000, label %if.end.i13.sw.bb.i_crit_edge20
  ]

if.end.i13.sw.bb.i_crit_edge20:                   ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.end.i13.sw.bb.i_crit_edge19:                   ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.end.i13.sw.bb.i_crit_edge18:                   ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.end.i13.sw.bb.i_crit_edge:                     ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end.i13.sw.bb.i_crit_edge, %if.end.i13.sw.bb.i_crit_edge18, %if.end.i13.sw.bb.i_crit_edge19, %if.end.i13.sw.bb.i_crit_edge20
  %out_freq.i = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 6
  %45 = ptrtoint ptr %out_freq.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %freq, ptr %out_freq.i, align 4
  br label %cleanup

do.end3.i:                                        ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.39, i32 noundef %freq) #8
  %out_freq5.i = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 6
  %48 = ptrtoint ptr %out_freq5.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %out_freq5.i, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.14, i32 noundef %dir) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.end3.i, %sw.bb.i, %do.end.i12, %err_busy.i, %do.end32.i, %do.end24.i, %do.end15.i, %do.end6.i, %if.then.i, %do.end.i
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end.i ], [ 0, %if.then.i ], [ -16, %do.end6.i ], [ -22, %do.end15.i ], [ -19, %do.end24.i ], [ -19, %do.end32.i ], [ %ret.0.i, %err_busy.i ], [ -22, %do.end.i12 ], [ -22, %do.end3.i ], [ 0, %sw.bb.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dmic_dai_startup(ptr nocapture noundef readnone %substream, ptr noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %call1 = tail call i32 @snd_soc_dai_active(ptr noundef %dai) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %active = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %active, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ -16, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_dmic_dai_shutdown(ptr nocapture noundef readnone %substream, ptr noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %pm_qos_req = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 3
  tail call void @cpu_latency_qos_remove_request(ptr noundef %pm_qos_req) #5
  %call1 = tail call i32 @snd_soc_dai_active(ptr noundef %dai) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %active = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %active, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dmic_dai_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 192000, i32 %5)
  %cmp.i = icmp eq i32 %5, 192000
  br i1 %cmp.i, label %if.then.i, label %if.end4.i

if.then.i:                                        ; preds = %entry
  %fclk_freq.i = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %fclk_freq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fclk_freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19200000, i32 %7)
  %cmp1.i = icmp eq i32 %7, 19200000
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.then.i.do.end.i_crit_edge

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %out_freq.i = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %out_freq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %out_freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3840000, i32 %9)
  %cmp2.i = icmp eq i32 %9, 3840000
  br i1 %cmp2.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %if.then.i.do.end.i_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.46) #8
  br label %do.end

if.end4.i:                                        ; preds = %entry
  %out_freq5.i = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %out_freq5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %out_freq5.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %13, label %do.end28.i [
    i32 1536000, label %sw.bb.i
    i32 2400000, label %sw.bb10.i
    i32 3072000, label %sw.bb15.i
    i32 3840000, label %sw.bb20.i
  ]

sw.bb.i:                                          ; preds = %if.end4.i
  %fclk_freq6.i = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %fclk_freq6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fclk_freq6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24576000, i32 %16)
  %cmp7.not.i = icmp eq i32 %16, 24576000
  br i1 %cmp7.not.i, label %sw.bb.i.if.end_crit_edge, label %sw.bb.i.do.end34.i_crit_edge

sw.bb.i.do.end34.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i

sw.bb.i.if.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb10.i:                                        ; preds = %if.end4.i
  %fclk_freq11.i = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %fclk_freq11.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fclk_freq11.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %18, label %sw.bb10.i.do.end34.i_crit_edge [
    i32 12000000, label %sw.bb10.i.if.end_crit_edge
    i32 19200000, label %sw.bb13.i
    i32 24000000, label %sw.bb14.i
  ]

sw.bb10.i.if.end_crit_edge:                       ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb10.i.do.end34.i_crit_edge:                   ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i

sw.bb13.i:                                        ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb14.i:                                        ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb15.i:                                        ; preds = %if.end4.i
  %fclk_freq16.i = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 5
  %20 = ptrtoint ptr %fclk_freq16.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fclk_freq16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24576000, i32 %21)
  %cmp17.not.i = icmp eq i32 %21, 24576000
  br i1 %cmp17.not.i, label %sw.bb15.i.if.end_crit_edge, label %sw.bb15.i.do.end34.i_crit_edge

sw.bb15.i.do.end34.i_crit_edge:                   ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i

sw.bb15.i.if.end_crit_edge:                       ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb20.i:                                        ; preds = %if.end4.i
  %fclk_freq21.i = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 5
  %22 = ptrtoint ptr %fclk_freq21.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fclk_freq21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19200000, i32 %23)
  %cmp22.not.i = icmp eq i32 %23, 19200000
  br i1 %cmp22.not.i, label %sw.bb20.i.if.end_crit_edge, label %sw.bb20.i.do.end34.i_crit_edge

sw.bb20.i.do.end34.i_crit_edge:                   ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i

sw.bb20.i.if.end_crit_edge:                       ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end28.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.39, i32 noundef %13) #8
  br label %do.end

do.end34.i:                                       ; preds = %sw.bb20.i.do.end34.i_crit_edge, %sw.bb15.i.do.end34.i_crit_edge, %sw.bb10.i.do.end34.i_crit_edge, %sw.bb.i.do.end34.i_crit_edge
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %fclk_freq37.i = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 5
  %28 = ptrtoint ptr %fclk_freq37.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fclk_freq37.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.51, i32 noundef %13, i32 noundef %29) #8
  br label %do.end

do.end:                                           ; preds = %do.end34.i, %do.end28.i, %do.end.i
  %clk_div = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 7
  %30 = ptrtoint ptr %clk_div to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -22, ptr %clk_div, align 4
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %out_freq = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 6
  %33 = ptrtoint ptr %out_freq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %out_freq, align 4
  %fclk_freq = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 5
  %35 = ptrtoint ptr %fclk_freq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fclk_freq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.41, i32 noundef %34, i32 noundef %36) #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb20.i.if.end_crit_edge, %sw.bb15.i.if.end_crit_edge, %sw.bb14.i, %sw.bb13.i, %sw.bb10.i.if.end_crit_edge, %sw.bb.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 1, %sw.bb20.i.if.end_crit_edge ], [ 3, %sw.bb15.i.if.end_crit_edge ], [ 5, %sw.bb10.i.if.end_crit_edge ], [ 4, %sw.bb.i.if.end_crit_edge ], [ 0, %sw.bb13.i ], [ 2, %sw.bb14.i ], [ 6, %land.lhs.true.i.if.end_crit_edge ]
  %clk_div43 = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 7
  %37 = ptrtoint ptr %clk_div43 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i.ph, ptr %clk_div43, align 4
  %ch_enabled = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 10
  %38 = ptrtoint ptr %ch_enabled to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %ch_enabled, align 4
  %arrayidx.i.i39 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %39 = ptrtoint ptr %arrayidx.i.i39 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i39, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %40, label %do.end14 [
    i32 6, label %sw.bb
    i32 4, label %if.end.sw.bb6_crit_edge
    i32 2, label %if.end.sw.bb9_crit_edge
  ]

if.end.sw.bb9_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

if.end.sw.bb6_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %ch_enabled to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4, ptr %ch_enabled, align 4
  br label %sw.bb6

sw.bb6:                                           ; preds = %sw.bb, %if.end.sw.bb6_crit_edge
  %43 = ptrtoint ptr %ch_enabled to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ch_enabled, align 4
  %or8 = or i32 %44, 2
  store i32 %or8, ptr %ch_enabled, align 4
  br label %sw.bb9

sw.bb9:                                           ; preds = %sw.bb6, %if.end.sw.bb9_crit_edge
  %45 = ptrtoint ptr %ch_enabled to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ch_enabled, align 4
  %or11 = or i32 %46, 1
  store i32 %or11, ptr %ch_enabled, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %47 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i40 = icmp eq i32 %48, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i40, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %49 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %threshold = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 9
  %50 = ptrtoint ptr %threshold to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %threshold, align 4
  %mul = mul i32 %51, %40
  %maxburst = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %cond.i, i32 0, i32 2
  %52 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %mul, ptr %maxburst, align 4
  %53 = load i32, ptr %threshold, align 4
  %sub = sub i32 15, %53
  %mul18 = mul i32 %sub, 1000000
  %54 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i.i, align 4
  %div = udiv i32 %mul18, %55
  %latency = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 4
  %56 = ptrtoint ptr %latency to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %div, ptr %latency, align 4
  br label %cleanup

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.44) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %sw.bb9, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end14 ], [ 0, %sw.bb9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dmic_dai_prepare(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pm_qos_req = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 3
  %call1 = tail call zeroext i1 @cpu_latency_qos_request_active(ptr noundef %pm_qos_req) #5
  br i1 %call1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %latency = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %latency to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %latency, align 4
  tail call void @cpu_latency_qos_update_request(ptr noundef %pm_qos_req, i32 noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %threshold = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %threshold to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %threshold, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %io_base.i = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #5, !srcloc !122
  %11 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %12, i32 68
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #5, !srcloc !124
  %14 = and i32 %13, 134021119
  %clk_div = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %clk_div to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clk_div, align 4
  %and5 = shl i32 %16, 7
  %shl = and i32 %and5, 896
  %17 = or i32 %14, 1879048192
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %or6 = or i32 %18, %shl
  %19 = tail call i32 @llvm.bswap.i32(i32 %or6) #5
  %20 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %21, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %19) #5, !srcloc !122
  %22 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %23, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %19) #5, !srcloc !122
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dmic_dai_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %io_base.i.i = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 68
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !124
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %9 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %10, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 16777216) #5, !srcloc !122
  %ch_enabled.i = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 10
  %11 = ptrtoint ptr %ch_enabled.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ch_enabled.i, align 4
  %or.i = or i32 %12, %8
  %13 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %14 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %15, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %13) #5, !srcloc !122
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %io_base.i.i3 = getelementptr inbounds %struct.omap_dmic, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %io_base.i.i3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_base.i.i3, align 4
  %add.ptr.i.i4 = getelementptr i8, ptr %17, i32 68
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4) #5, !srcloc !124
  %19 = and i32 %18, -117440513
  %20 = ptrtoint ptr %io_base.i.i3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base.i.i3, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %21, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %19) #5, !srcloc !122
  %22 = ptrtoint ptr %io_base.i.i3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_base.i.i3, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %23, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 16777216) #5, !srcloc !122
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_remove_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpu_latency_qos_request_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_update_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !63, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106, !107, !109, !110, !111}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @__initcall__kmod_snd_soc_omap_dmic__241_523_asoc_dmic_driver_init6, !1, !"__initcall__kmod_snd_soc_omap_dmic__241_523_asoc_dmic_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/ti/omap-dmic.c", i32 523, i32 1}
!2 = !{ptr @__exitcall_asoc_dmic_driver_exit, !1, !"__exitcall_asoc_dmic_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias242, !4, !"__UNIQUE_ID_alias242", i1 false, i1 false}
!4 = !{!"../sound/soc/ti/omap-dmic.c", i32 525, i32 1}
!5 = !{ptr @__UNIQUE_ID_author243, !6, !"__UNIQUE_ID_author243", i1 false, i1 false}
!6 = !{!"../sound/soc/ti/omap-dmic.c", i32 526, i32 1}
!7 = !{ptr @__UNIQUE_ID_description244, !8, !"__UNIQUE_ID_description244", i1 false, i1 false}
!8 = !{!"../sound/soc/ti/omap-dmic.c", i32 527, i32 1}
!9 = !{ptr @__UNIQUE_ID_file245, !10, !"__UNIQUE_ID_file245", i1 false, i1 false}
!10 = !{!"../sound/soc/ti/omap-dmic.c", i32 528, i32 1}
!11 = !{ptr @__UNIQUE_ID_license246, !10, !"__UNIQUE_ID_license246", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/ti/omap-dmic.c", i32 517, i32 11}
!14 = !{ptr @asoc_dmic_driver, !15, !"asoc_dmic_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/ti/omap-dmic.c", i32 515, i32 31}
!16 = !{ptr @asoc_dmic_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../sound/soc/ti/omap-dmic.c", i32 473, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/ti/omap-dmic.c", i32 475, i32 39}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/ti/omap-dmic.c", i32 477, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @asoc_dmic_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @asoc_dmic_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/ti/omap-dmic.c", i32 481, i32 59}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/ti/omap-dmic.c", i32 483, i32 3}
!33 = !{ptr @asoc_dmic_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @asoc_dmic_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/ti/omap-dmic.c", i32 488, i32 31}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/ti/omap-dmic.c", i32 490, i32 59}
!39 = !{ptr @omap_dmic_component, !40, !"omap_dmic_component", i1 false, i1 false}
!40 = !{!"../sound/soc/ti/omap-dmic.c", i32 455, i32 46}
!41 = !{ptr @omap_dmic_dai, !42, !"omap_dmic_dai", i1 false, i1 false}
!42 = !{!"../sound/soc/ti/omap-dmic.c", i32 441, i32 34}
!43 = !{ptr @omap_dmic_dai_ops, !44, !"omap_dmic_dai_ops", i1 false, i1 false}
!44 = !{!"../sound/soc/ti/omap-dmic.c", i32 404, i32 37}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/ti/omap-dmic.c", i32 400, i32 2}
!47 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @omap_dmic_set_dai_sysclk._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @omap_dmic_set_dai_sysclk._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/ti/omap-dmic.c", i32 293, i32 3}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @omap_dmic_select_fclk._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @omap_dmic_select_fclk._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/ti/omap-dmic.c", i32 305, i32 3}
!57 = !{ptr @omap_dmic_select_fclk._entry.18, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @omap_dmic_select_fclk._entry_ptr.20, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/ti/omap-dmic.c", i32 311, i32 21}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/ti/omap-dmic.c", i32 314, i32 21}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/ti/omap-dmic.c", i32 317, i32 21}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/ti/omap-dmic.c", i32 320, i32 3}
!67 = !{ptr @omap_dmic_select_fclk._entry.24, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @omap_dmic_select_fclk._entry_ptr.26, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/ti/omap-dmic.c", i32 326, i32 3}
!71 = !{ptr @omap_dmic_select_fclk._entry.27, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @omap_dmic_select_fclk._entry_ptr.29, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/ti/omap-dmic.c", i32 332, i32 3}
!75 = !{ptr @omap_dmic_select_fclk._entry.30, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @omap_dmic_select_fclk._entry_ptr.32, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/ti/omap-dmic.c", i32 349, i32 3}
!79 = !{ptr @omap_dmic_select_fclk._entry.33, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @omap_dmic_select_fclk._entry_ptr.35, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/ti/omap-dmic.c", i32 369, i32 3}
!83 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @omap_dmic_select_outclk._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @omap_dmic_select_outclk._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/ti/omap-dmic.c", i32 382, i32 3}
!88 = !{ptr @omap_dmic_select_outclk._entry.38, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @omap_dmic_select_outclk._entry_ptr.40, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/ti/omap-dmic.c", i32 196, i32 3}
!92 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @omap_dmic_dai_hw_params._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @omap_dmic_dai_hw_params._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/ti/omap-dmic.c", i32 214, i32 3}
!97 = !{ptr @omap_dmic_dai_hw_params._entry.43, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @omap_dmic_dai_hw_params._entry_ptr.45, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/ti/omap-dmic.c", i32 135, i32 4}
!101 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @omap_dmic_select_divider._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @omap_dmic_select_divider._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @omap_dmic_select_divider._entry.48, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../sound/soc/ti/omap-dmic.c", i32 173, i32 3}
!106 = !{ptr @omap_dmic_select_divider._entry_ptr.49, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/ti/omap-dmic.c", i32 181, i32 2}
!109 = !{ptr @omap_dmic_select_divider._entry.50, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @omap_dmic_select_divider._entry_ptr.52, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @omap_dmic_of_match, !112, !"omap_dmic_of_match", i1 false, i1 false}
!112 = !{!"../sound/soc/ti/omap-dmic.c", i32 509, i32 34}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{i64 4826059}
!123 = !{i8 0, i8 2}
!124 = !{i64 4826477}
