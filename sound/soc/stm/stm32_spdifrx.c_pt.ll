; ModuleID = '/llk/IR_all_yes/sound/soc/stm/stm32_spdifrx.c_pt.bc'
source_filename = "../sound/soc/stm/stm32_spdifrx.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.86, i32 }
%union.anon.86 = type { ptr }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.stm32_spdifrx_data = type { ptr, ptr, ptr, ptr, %struct.completion, ptr, %struct.snd_dmaengine_dai_dma_data, ptr, ptr, ptr, ptr, %struct.dma_slave_config, i32, %struct.spinlock, %struct.spinlock, [24 x i8], [48 x i8], i32, i32 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.76, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.76 = type { %struct.anon.79, [40 x i8] }
%struct.anon.79 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.85, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.85 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.80, [128 x i8] }
%union.anon.80 = type { %union.anon.82 }
%union.anon.82 = type { [64 x i64] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_stm32_spdifrx__266_1083_stm32_spdifrx_driver_init6 = internal global ptr @stm32_spdifrx_driver_init, section ".initcall6.init", align 4
@stm32_spdifrx_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_spdifrx_probe, ptr @stm32_spdifrx_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_spdifrx_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_spdifrx_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_spdifrx_driver_exit = internal global ptr @stm32_spdifrx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description267 = internal constant [62 x i8] c"snd_soc_stm32_spdifrx.description=STM32 Soc spdifrx Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_author268 = internal constant [69 x i8] c"snd_soc_stm32_spdifrx.author=Olivier Moysan, <olivier.moysan@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias269 = internal constant [51 x i8] c"snd_soc_stm32_spdifrx.alias=platform:stm32-spdifrx\00", section ".modinfo", align 1
@__UNIQUE_ID_file270 = internal constant [63 x i8] c"snd_soc_stm32_spdifrx.file=sound/soc/stm/snd-soc-stm32-spdifrx\00", section ".modinfo", align 1
@__UNIQUE_ID_license271 = internal constant [37 x i8] c"snd_soc_stm32_spdifrx.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"st,stm32-spdifrx\00", [47 x i8] zeroinitializer }, align 32
@stm32_spdifrx_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-spdifrx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32_h7_spdifrx_regmap_conf }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stm32_spdifrx_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_spdifrx_suspend, ptr @stm32_spdifrx_resume, ptr @stm32_spdifrx_suspend, ptr @stm32_spdifrx_resume, ptr @stm32_spdifrx_suspend, ptr @stm32_spdifrx_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@stm32_spdifrx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&spdifrx->lock\00", [17 x i8] zeroinitializer }, align 32
@stm32_spdifrx_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&spdifrx->irq_lock\00", [45 x i8] zeroinitializer }, align 32
@stm32_spdifrx_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"kclk\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"stm32_spdifrx:983:(spdifrx->regmap_conf)->lock\00", [49 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Regmap init error\0A\00", [45 x i8] zeroinitializer }, align 32
@stm32_spdifrx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 991, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IRQ request returned %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32_spdifrx_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/stm/stm32_spdifrx.c\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_spdifrx_probe._entry_ptr = internal global ptr @stm32_spdifrx_probe._entry, section ".printk_index", align 4
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Reset controller error\0A\00", [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@stm32_spdifrx_pcm_config = internal constant { %struct.snd_dmaengine_pcm_config, [60 x i8] } { %struct.snd_dmaengine_pcm_config { ptr @snd_dmaengine_pcm_prepare_slave_config, ptr null, ptr null, ptr null, ptr null, [2 x ptr] zeroinitializer, ptr @stm32_spdifrx_pcm_hw, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PCM DMA register error\0A\00", [40 x i8] zeroinitializer }, align 32
@stm32_spdifrx_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.27, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@stm32_spdifrx_dai = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @stm32_spdifrx_dai_probe, ptr null, ptr null, ptr null, ptr @stm32_spdifrx_pcm_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.28, i64 1028, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@stm32_spdifrx_probe.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.8, ptr @.str.9, ptr @.str.15, i8 1, i8 2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_soc_stm32_spdifrx\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"SPDIFRX version: %lu.%lu registered\0A\00", [59 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Could not get kclk\0A\00", [44 x i8] zeroinitializer }, align 32
@stm32_spdifrx_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.9, i32 684, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unexpected IRQ. rflags=%#x, imr=%#x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32_spdifrx_isr\00", [46 x i8] zeroinitializer }, align 32
@stm32_spdifrx_isr._entry_ptr = internal global ptr @stm32_spdifrx_isr._entry, section ".printk_index", align 4
@stm32_spdifrx_isr.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.19, ptr @.str.9, ptr @.str.20, i8 0, i8 -83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Parity error\0A\00", [18 x i8] zeroinitializer }, align 32
@stm32_spdifrx_isr.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.19, ptr @.str.9, ptr @.str.21, i8 0, i8 -82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Overrun error\0A\00", [17 x i8] zeroinitializer }, align 32
@stm32_spdifrx_isr.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.19, ptr @.str.9, ptr @.str.22, i8 0, i8 -81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Synchronization block detected\0A\00", [32 x i8] zeroinitializer }, align 32
@stm32_spdifrx_isr.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.19, ptr @.str.9, ptr @.str.23, i8 0, i8 -80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Synchronization done\0A\00", [42 x i8] zeroinitializer }, align 32
@stm32_spdifrx_isr.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.19, ptr @.str.9, ptr @.str.24, i8 0, i8 -78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Frame error\0A\00", [19 x i8] zeroinitializer }, align 32
@stm32_spdifrx_isr.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.19, ptr @.str.9, ptr @.str.25, i8 0, i8 -76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Synchronization error\0A\00", [41 x i8] zeroinitializer }, align 32
@stm32_spdifrx_isr.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.19, ptr @.str.9, ptr @.str.26, i8 0, i8 -75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Timeout error\0A\00", [17 x i8] zeroinitializer }, align 32
@stm32_spdifrx_pcm_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 257, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32768, i32 1024, i32 16384, i32 2, i32 8, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stm32-spdifrx\00", [18 x i8] zeroinitializer }, align 32
@stm32_spdifrx_pcm_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_spdifrx_startup, ptr @stm32_spdifrx_shutdown, ptr @stm32_spdifrx_hw_params, ptr null, ptr null, ptr @stm32_spdifrx_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CPU-Capture\00", [20 x i8] zeroinitializer }, align 32
@stm32_spdifrx_iec_ctrls = internal global { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.29, i32 0, i32 5, i32 0, ptr @stm32_spdifrx_info, ptr @stm32_spdifrx_capture_get, ptr null, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.30, i32 0, i32 5, i32 0, ptr @stm32_spdifrx_ub_info, ptr @stm32_spdif_user_bits_get, ptr null, %union.anon.86 zeroinitializer, i32 0 }], [32 x i8] zeroinitializer }, align 32
@stm32_spdifrx_ctrls = internal global { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @ctrl_enum_input to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @ctrl_enum_cs_channel to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IEC958 Capture Default\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IEC958 User Bit Capture Default\00", [32 x i8] zeroinitializer }, align 32
@stm32_spdifrx_get_ctrl_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.9, i32 492, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Enable kclk failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stm32_spdifrx_get_ctrl_data\00", [36 x i8] zeroinitializer }, align 32
@stm32_spdifrx_get_ctrl_data._entry_ptr = internal global ptr @stm32_spdifrx_get_ctrl_data._entry, section ".printk_index", align 4
@stm32_spdifrx_get_ctrl_data.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.32, ptr @.str.9, ptr @.str.33, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get control data\0A\00", [36 x i8] zeroinitializer }, align 32
@stm32_spdifrx_dma_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.9, i32 275, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Start of S/PDIF block not found\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stm32_spdifrx_dma_complete\00", [37 x i8] zeroinitializer }, align 32
@stm32_spdifrx_dma_complete._entry_ptr = internal global ptr @stm32_spdifrx_dma_complete._entry, section ".printk_index", align 4
@stm32_spdifrx_dma_complete._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.9, i32 283, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get channel status\0A\00", [34 x i8] zeroinitializer }, align 32
@stm32_spdifrx_dma_complete._entry_ptr.38 = internal global ptr @stm32_spdifrx_dma_complete._entry.36, section ".printk_index", align 4
@stm32_spdifrx_start_sync.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.39, ptr @.str.9, ptr @.str.40, i8 0, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stm32_spdifrx_start_sync\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"start synchronization\0A\00", [41 x i8] zeroinitializer }, align 32
@stm32_spdifrx_start_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.9, i32 365, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to start synchronization\0A\00", [63 x i8] zeroinitializer }, align 32
@stm32_spdifrx_start_sync._entry_ptr = internal global ptr @stm32_spdifrx_start_sync._entry, section ".printk_index", align 4
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SPDIFRX input\00", [18 x i8] zeroinitializer }, align 32
@ctrl_enum_input = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 16, i8 16, i32 4, i32 3, ptr @spdifrx_enum_input, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SPDIFRX CS channel\00", [45 x i8] zeroinitializer }, align 32
@ctrl_enum_cs_channel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 11, i8 11, i32 2, i32 1, ptr @spdifrx_enum_cs_channel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@spdifrx_enum_input = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"in0\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"in1\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"in2\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"in3\00", [28 x i8] zeroinitializer }, align 32
@spdifrx_enum_cs_channel = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.48, ptr @.str.49], [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@stm32_spdifrx_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.50, ptr @.str.9, i32 777, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32_spdifrx_startup\00", [42 x i8] zeroinitializer }, align 32
@stm32_spdifrx_startup._entry_ptr = internal global ptr @stm32_spdifrx_startup._entry, section ".printk_index", align 4
@stm32_spdifrx_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.9, i32 798, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unexpected data format\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stm32_spdifrx_hw_params\00", [40 x i8] zeroinitializer }, align 32
@stm32_spdifrx_hw_params._entry_ptr = internal global ptr @stm32_spdifrx_hw_params._entry, section ".printk_index", align 4
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rx-ctrl\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dma_request_slave_channel error\0A\00", [63 x i8] zeroinitializer }, align 32
@stm32_spdifrx_dma_ctrl_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.9, i32 423, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"snd_dma_alloc_pages returned error %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"stm32_spdifrx_dma_ctrl_register\00", [32 x i8] zeroinitializer }, align 32
@stm32_spdifrx_dma_ctrl_register._entry_ptr = internal global ptr @stm32_spdifrx_dma_ctrl_register._entry, section ".printk_index", align 4
@stm32_spdifrx_dma_ctrl_register._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.9, i32 437, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"dmaengine_slave_config returned error %d\0A\00", [54 x i8] zeroinitializer }, align 32
@stm32_spdifrx_dma_ctrl_register._entry_ptr.59 = internal global ptr @stm32_spdifrx_dma_ctrl_register._entry.57, section ".printk_index", align 4
@stm32_h7_spdifrx_regmap_conf = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @stm32_spdifrx_writeable_reg, ptr @stm32_spdifrx_readable_reg, ptr @stm32_spdifrx_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 1020, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 3, ptr null, i32 256, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.60 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.61 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 4, i64 8, i64 12, i64 16, i64 20, i64 24, i64 1012, i64 1016, i64 1020]
@___asan_gen_.62 = private unnamed_addr constant [21 x i8] c"stm32_spdifrx_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1073, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1075, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [18 x i8] c"stm32_spdifrx_ids\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 898, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant [21 x i8] c"stm32_spdifrx_pm_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1069, i32 32 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 972, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 973, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 981, i32 20 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 986, i32 10 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 991, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 998, i32 10 }
@___asan_gen_.119 = private unnamed_addr constant [25 x i8] c"stm32_spdifrx_pcm_config\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 893, i32 46 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1009, i32 41 }
@___asan_gen_.125 = private unnamed_addr constant [24 x i8] c"stm32_spdifrx_component\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 889, i32 46 }
@___asan_gen_.128 = private unnamed_addr constant [18 x i8] c"stm32_spdifrx_dai\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 865, i32 34 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1033, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 87, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 932, i32 10 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 683, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 693, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 698, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 703, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 706, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 715, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 720, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 725, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [21 x i8] c"stm32_spdifrx_pcm_hw\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 880, i32 38 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 890, i32 10 }
@___asan_gen_.182 = private unnamed_addr constant [26 x i8] c"stm32_spdifrx_pcm_dai_ops\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 858, i32 37 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 869, i32 19 }
@___asan_gen_.188 = private unnamed_addr constant [24 x i8] c"stm32_spdifrx_iec_ctrls\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 555, i32 32 }
@___asan_gen_.191 = private unnamed_addr constant [20 x i8] c"stm32_spdifrx_ctrls\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 576, i32 32 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 559, i32 11 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 568, i32 11 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 492, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 508, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 275, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 283, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 344, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 364, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 577, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [16 x i8] c"ctrl_enum_input\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 453, i32 8 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 578, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [21 x i8] c"ctrl_enum_cs_channel\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 457, i32 8 }
@___asan_gen_.251 = private unnamed_addr constant [19 x i8] c"spdifrx_enum_input\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 444, i32 27 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 445, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 445, i32 9 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 445, i32 16 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 445, i32 23 }
@___asan_gen_.266 = private unnamed_addr constant [24 x i8] c"spdifrx_enum_cs_channel\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 449, i32 27 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 450, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 450, i32 7 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 777, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 798, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 408, i32 45 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 411, i32 10 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 423, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 437, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant [29 x i8] c"stm32_h7_spdifrx_regmap_conf\00", align 1
@___asan_gen_.312 = private constant [33 x i8] c"../sound/soc/stm/stm32_spdifrx.c\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 652, i32 35 }
@llvm.compiler.used = appending global [102 x ptr] [ptr @__UNIQUE_ID_alias269, ptr @__UNIQUE_ID_author268, ptr @__UNIQUE_ID_description267, ptr @__UNIQUE_ID_file270, ptr @__UNIQUE_ID_license271, ptr @__exitcall_stm32_spdifrx_driver_exit, ptr @__initcall__kmod_snd_soc_stm32_spdifrx__266_1083_stm32_spdifrx_driver_init6, ptr @stm32_spdifrx_dma_complete._entry, ptr @stm32_spdifrx_dma_complete._entry.36, ptr @stm32_spdifrx_dma_complete._entry_ptr, ptr @stm32_spdifrx_dma_complete._entry_ptr.38, ptr @stm32_spdifrx_dma_ctrl_register._entry, ptr @stm32_spdifrx_dma_ctrl_register._entry.57, ptr @stm32_spdifrx_dma_ctrl_register._entry_ptr, ptr @stm32_spdifrx_dma_ctrl_register._entry_ptr.59, ptr @stm32_spdifrx_driver_exit, ptr @stm32_spdifrx_get_ctrl_data._entry, ptr @stm32_spdifrx_get_ctrl_data._entry_ptr, ptr @stm32_spdifrx_hw_params._entry, ptr @stm32_spdifrx_hw_params._entry_ptr, ptr @stm32_spdifrx_isr._entry, ptr @stm32_spdifrx_isr._entry_ptr, ptr @stm32_spdifrx_probe._entry, ptr @stm32_spdifrx_probe._entry_ptr, ptr @stm32_spdifrx_start_sync._entry, ptr @stm32_spdifrx_start_sync._entry_ptr, ptr @stm32_spdifrx_startup._entry, ptr @stm32_spdifrx_startup._entry_ptr, ptr @stm32_spdifrx_driver, ptr @.str, ptr @stm32_spdifrx_ids, ptr @stm32_spdifrx_pm_ops, ptr @stm32_spdifrx_probe.__key, ptr @.str.1, ptr @stm32_spdifrx_probe.__key.2, ptr @.str.3, ptr @stm32_spdifrx_probe._key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @stm32_spdifrx_pcm_config, ptr @.str.13, ptr @stm32_spdifrx_component, ptr @stm32_spdifrx_dai, ptr @.str.14, ptr @.str.15, ptr @init_completion.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @stm32_spdifrx_pcm_hw, ptr @.str.27, ptr @stm32_spdifrx_pcm_dai_ops, ptr @.str.28, ptr @stm32_spdifrx_iec_ctrls, ptr @stm32_spdifrx_ctrls, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @ctrl_enum_input, ptr @.str.43, ptr @ctrl_enum_cs_channel, ptr @spdifrx_enum_input, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @spdifrx_enum_cs_channel, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @stm32_h7_spdifrx_regmap_conf], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spdifrx_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spdifrx_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spdifrx_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spdifrx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spdifrx_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spdifrx_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spdifrx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spdifrx_pcm_config to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spdifrx_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spdifrx_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spdifrx_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spdifrx_pcm_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spdifrx_pcm_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spdifrx_iec_ctrls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spdifrx_ctrls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spdifrx_get_ctrl_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spdifrx_dma_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spdifrx_dma_complete._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spdifrx_start_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_enum_input to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_enum_cs_channel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdifrx_enum_input to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdifrx_enum_cs_channel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spdifrx_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spdifrx_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spdifrx_dma_ctrl_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_spdifrx_dma_ctrl_register._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_h7_spdifrx_regmap_conf to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_spdifrx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_spdifrx_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_spdifrx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_spdifrx_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_spdifrx_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res.i = alloca ptr, align 4
  %ver = alloca i32, align 4
  %idr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ver) #9
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ver, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idr) #9
  %1 = ptrtoint ptr %idr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %idr, align 4, !annotation !183
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 348, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %call.i, align 4
  %cs_completion = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %cs_completion to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %cs_completion, align 4
  %wait.i = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %call.i, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @init_completion.__key) #9
  %lock = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %call.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @stm32_spdifrx_probe.__key, i16 noundef signext 3) #9
  %irq_lock = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %call.i, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @stm32_spdifrx_probe.__key.2, i16 noundef signext 3) #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res.i) #9
  %7 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %res.i, align 4, !annotation !183
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.stm32_spdifrx_parse_of.exit.thread_crit_edge, label %if.end.i

if.end.stm32_spdifrx_parse_of.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_spdifrx_parse_of.exit.thread

if.end.i:                                         ; preds = %if.end
  %call.i174 = tail call ptr @of_match_device(ptr noundef nonnull @stm32_spdifrx_ids, ptr noundef %dev) #9
  %tobool2.not.i = icmp eq ptr %call.i174, null
  br i1 %tobool2.not.i, label %if.end.i.stm32_spdifrx_parse_of.exit.thread_crit_edge, label %if.then3.i

if.end.i.stm32_spdifrx_parse_of.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_spdifrx_parse_of.exit.thread

if.then3.i:                                       ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call.i174, i32 0, i32 3
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %regmap_conf.i = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %regmap_conf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %regmap_conf.i, align 4
  %call5.i = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res.i) #9
  %base.i = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i, ptr %base.i, align 4
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then8.i, label %if.end11.i

if.then8.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %call5.i to i32
  br label %stm32_spdifrx_parse_of.exit

if.end11.i:                                       ; preds = %if.then3.i
  %13 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %res.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %phys_addr.i = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %call.i, i32 0, i32 12
  %17 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %phys_addr.i, align 4
  %call13.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.4) #9
  %kclk.i = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %kclk.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call13.i, ptr %kclk.i, align 4
  %cmp.i45.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i45.i, label %if.then16.i, label %if.end21.i

if.then16.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %call13.i to i32
  %call20.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %19, ptr noundef nonnull @.str.17) #9
  br label %stm32_spdifrx_parse_of.exit

if.end21.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %call22.i = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq.i = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %call.i, i32 0, i32 17
  %20 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call22.i, ptr %irq.i, align 4
  %21 = call i32 @llvm.smin.i32(i32 %call22.i, i32 0) #9
  br label %stm32_spdifrx_parse_of.exit

stm32_spdifrx_parse_of.exit.thread:               ; preds = %if.end.i.stm32_spdifrx_parse_of.exit.thread_crit_edge, %if.end.stm32_spdifrx_parse_of.exit.thread_crit_edge
  %retval.0.i175.ph = phi i32 [ -22, %if.end.i.stm32_spdifrx_parse_of.exit.thread_crit_edge ], [ -19, %if.end.stm32_spdifrx_parse_of.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #9
  br label %cleanup

stm32_spdifrx_parse_of.exit:                      ; preds = %if.end21.i, %if.then16.i, %if.then8.i
  %retval.0.i175 = phi i32 [ %12, %if.then8.i ], [ %call20.i, %if.then16.i ], [ %21, %if.end21.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i175)
  %tobool8.not = icmp eq i32 %retval.0.i175, 0
  br i1 %tobool8.not, label %if.end10, label %stm32_spdifrx_parse_of.exit.cleanup_crit_edge

stm32_spdifrx_parse_of.exit.cleanup_crit_edge:    ; preds = %stm32_spdifrx_parse_of.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %stm32_spdifrx_parse_of.exit
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %24 = ptrtoint ptr %regmap_conf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap_conf.i, align 4
  %call12 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef %23, ptr noundef %25, ptr noundef nonnull @stm32_spdifrx_probe._key, ptr noundef nonnull @.str.5) #9
  %regmap = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call12, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %call12 to i32
  %call19 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %27, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  %irq = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %call.i, i32 0, i32 17
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i176 = icmp eq ptr %31, null
  br i1 %tobool.not.i176, label %if.end.i177, label %if.end20.dev_name.exit_crit_edge

if.end20.dev_name.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i177:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i177, %if.end20.dev_name.exit_crit_edge
  %retval.0.i178 = phi ptr [ %33, %if.end.i177 ], [ %31, %if.end20.dev_name.exit_crit_edge ]
  %call.i179 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %29, ptr noundef nonnull @stm32_spdifrx_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i178, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i179)
  %tobool25.not = icmp eq i32 %call.i179, 0
  br i1 %tobool25.not, label %if.end31, label %do.end29

do.end29:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call.i179) #12
  br label %cleanup

if.end31:                                         ; preds = %dev_name.exit
  %call.i180 = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #9
  %cmp.i181 = icmp ugt ptr %call.i180, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181, label %if.then35, label %if.end39

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %call.i180 to i32
  %call38 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %34, ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end39:                                         ; preds = %if.end31
  %call40 = call i32 @reset_control_assert(ptr noundef %call.i180) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 429496) #9
  %call41 = call i32 @reset_control_deassert(ptr noundef %call.i180) #9
  call void @pm_runtime_enable(ptr noundef %dev) #9
  %call44 = call i32 @snd_dmaengine_pcm_register(ptr noundef %dev, ptr noundef nonnull @stm32_spdifrx_pcm_config, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end49, label %if.then46

if.then46:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %call48 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call44, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end49:                                         ; preds = %if.end39
  %call51 = call i32 @snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @stm32_spdifrx_component, ptr noundef nonnull @stm32_spdifrx_dai, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end55, label %if.then53

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  call void @snd_dmaengine_pcm_unregister(ptr noundef %dev) #9
  br label %cleanup

if.end55:                                         ; preds = %if.end49
  %call57 = call fastcc i32 @stm32_spdifrx_dma_ctrl_register(ptr noundef %dev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end55.error_crit_edge

if.end55.error_crit_edge:                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end60:                                         ; preds = %if.end55
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call62 = call i32 @regmap_read(ptr noundef %37, i32 noundef 1016, ptr noundef nonnull %idr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end60.error_crit_edge

if.end60.error_crit_edge:                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end65:                                         ; preds = %if.end60
  %38 = ptrtoint ptr %idr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %idr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1245249, i32 %39)
  %cmp = icmp eq i32 %39, 1245249
  br i1 %cmp, label %if.then66, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then66:                                        ; preds = %if.end65
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %call68 = call i32 @regmap_read(ptr noundef %41, i32 noundef 1012, ptr noundef nonnull %ver) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %do.body72, label %if.then66.error_crit_edge

if.then66.error_crit_edge:                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

do.body72:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_spdifrx_probe.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_spdifrx_probe, %if.then78)) #9
          to label %cleanup [label %if.then78], !srcloc !184

if.then78:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ver, align 4
  %and = lshr i32 %43, 4
  %shr = and i32 %and, 15
  %and112 = and i32 %43, 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_spdifrx_probe.__UNIQUE_ID_ddebug255, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %shr, i32 noundef %and112) #9
  br label %cleanup

error:                                            ; preds = %if.then66.error_crit_edge, %if.end60.error_crit_edge, %if.end55.error_crit_edge
  %ret.1 = phi i32 [ %call57, %if.end55.error_crit_edge ], [ %call62, %if.end60.error_crit_edge ], [ %call68, %if.then66.error_crit_edge ]
  %call118 = call i32 @stm32_spdifrx_remove(ptr noundef %pdev)
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then78, %do.body72, %if.end65.cleanup_crit_edge, %if.then53, %if.then46, %if.then35, %do.end29, %if.then15, %stm32_spdifrx_parse_of.exit.cleanup_crit_edge, %stm32_spdifrx_parse_of.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.then15 ], [ %call.i179, %do.end29 ], [ %call38, %if.then35 ], [ %call48, %if.then46 ], [ %call51, %if.then53 ], [ %ret.1, %error ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i175, %stm32_spdifrx_parse_of.exit.cleanup_crit_edge ], [ 0, %if.then78 ], [ 0, %if.end65.cleanup_crit_edge ], [ %retval.0.i175.ph, %stm32_spdifrx_parse_of.exit.thread ], [ 0, %do.body72 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ver) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_spdifrx_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ctrl_chan = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ctrl_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_chan, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_release_channel(ptr noundef nonnull %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dmab = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %dmab to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dmab, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @snd_dma_free_pages(ptr noundef nonnull %5) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @snd_dmaengine_pcm_unregister(ptr noundef %dev) #9
  tail call void @snd_soc_unregister_component(ptr noundef %dev) #9
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_spdifrx_isr(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  %cr = alloca i32, align 4
  %sr = alloca i32, align 4
  %imr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devid, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr) #9
  %2 = ptrtoint ptr %cr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cr, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sr) #9
  %3 = ptrtoint ptr %sr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %sr, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %imr) #9
  %4 = ptrtoint ptr %imr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %imr, align 4, !annotation !183
  %regmap = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %devid, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %6, i32 noundef 8, ptr noundef nonnull %sr) #9
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %8, i32 noundef 4, ptr noundef nonnull %imr) #9
  %9 = ptrtoint ptr %imr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %imr, align 4
  %and = and i32 %10, 127
  %and4 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  %or = or i32 %and, 384
  %spec.select = select i1 %tobool.not, i32 %and, i32 %or
  %11 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sr, align 4
  %and5 = and i32 %spec.select, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.end, label %if.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %12, i32 noundef %10) #12
  br label %cleanup

if.end8:                                          ; preds = %entry
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 12, i32 noundef 60, i32 noundef %and5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %and11 = and i32 %and5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end8.if.end24_crit_edge, label %do.body14

if.end8.if.end24_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

do.body14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_spdifrx_isr.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_spdifrx_isr, %if.then19)) #9
          to label %if.end24 [label %if.then19], !srcloc !184

if.then19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %dev20 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_spdifrx_isr.__UNIQUE_ID_ddebug243, ptr noundef %dev20, ptr noundef nonnull @.str.20) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %do.body14, %if.end8.if.end24_crit_edge
  %err_xrun.0 = phi i32 [ 0, %if.end8.if.end24_crit_edge ], [ 1, %if.then19 ], [ 1, %do.body14 ]
  %and25 = and i32 %and5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end45_crit_edge, label %do.body28

if.end24.if.end45_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

do.body28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_spdifrx_isr.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_spdifrx_isr, %if.then40)) #9
          to label %if.end45 [label %if.then40], !srcloc !184

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  %dev41 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_spdifrx_isr.__UNIQUE_ID_ddebug244, ptr noundef %dev41, ptr noundef nonnull @.str.21) #9
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %do.body28, %if.end24.if.end45_crit_edge
  %err_xrun.1 = phi i32 [ %err_xrun.0, %if.end24.if.end45_crit_edge ], [ 1, %if.then40 ], [ 1, %do.body28 ]
  %and46 = and i32 %and5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end45.if.end66_crit_edge, label %do.body49

if.end45.if.end66_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

do.body49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_spdifrx_isr.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_spdifrx_isr, %if.then61)) #9
          to label %if.end66 [label %if.then61], !srcloc !184

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  %dev62 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_spdifrx_isr.__UNIQUE_ID_ddebug245, ptr noundef %dev62, ptr noundef nonnull @.str.22) #9
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %do.body49, %if.end45.if.end66_crit_edge
  %and67 = and i32 %and5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.if.end89_crit_edge, label %do.body70

if.end66.if.end89_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

do.body70:                                        ; preds = %if.end66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_spdifrx_isr.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_spdifrx_isr, %if.then82)) #9
          to label %do.end86 [label %if.then82], !srcloc !184

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #11
  %dev83 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_spdifrx_isr.__UNIQUE_ID_ddebug246, ptr noundef %dev83, ptr noundef nonnull @.str.23) #9
  br label %do.end86

do.end86:                                         ; preds = %if.then82, %do.body70
  %15 = ptrtoint ptr %cr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %cr, align 4
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i258 = call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 0, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end89

if.end89:                                         ; preds = %do.end86, %if.end66.if.end89_crit_edge
  %and90 = and i32 %and5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end89.if.end110_crit_edge, label %do.body93

if.end89.if.end110_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

do.body93:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_spdifrx_isr.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_spdifrx_isr, %if.then105)) #9
          to label %if.end110 [label %if.then105], !srcloc !184

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #11
  %dev106 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_spdifrx_isr.__UNIQUE_ID_ddebug247, ptr noundef %dev106, ptr noundef nonnull @.str.24) #9
  br label %if.end110

if.end110:                                        ; preds = %if.then105, %do.body93, %if.end89.if.end110_crit_edge
  %err.0 = phi i32 [ 0, %if.end89.if.end110_crit_edge ], [ 1, %if.then105 ], [ 1, %do.body93 ]
  %and111 = and i32 %and5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.end110.if.end131_crit_edge, label %do.body114

if.end110.if.end131_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end131

do.body114:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_spdifrx_isr.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_spdifrx_isr, %if.then126)) #9
          to label %if.end131 [label %if.then126], !srcloc !184

if.then126:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #11
  %dev127 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_spdifrx_isr.__UNIQUE_ID_ddebug248, ptr noundef %dev127, ptr noundef nonnull @.str.25) #9
  br label %if.end131

if.end131:                                        ; preds = %if.then126, %do.body114, %if.end110.if.end131_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end110.if.end131_crit_edge ], [ 1, %if.then126 ], [ 1, %do.body114 ]
  %and132 = and i32 %and5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %if.end131.if.end152_crit_edge, label %do.body135

if.end131.if.end152_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

do.body135:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_spdifrx_isr.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_spdifrx_isr, %if.end152.thread)) #9
          to label %if.end152 [label %if.end152.thread], !srcloc !184

if.end152.thread:                                 ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #11
  %dev148 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_spdifrx_isr.__UNIQUE_ID_ddebug249, ptr noundef %dev148, ptr noundef nonnull @.str.26) #9
  br label %if.then154

if.end152:                                        ; preds = %do.body135, %if.end131.if.end152_crit_edge
  %err.2 = phi i32 [ %err.1, %if.end131.if.end152_crit_edge ], [ 1, %do.body135 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool153.not = icmp eq i32 %err.2, 0
  br i1 %tobool153.not, label %if.end188, label %if.end152.if.then154_crit_edge

if.end152.if.then154_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then154

if.then154:                                       ; preds = %if.end152.if.then154_crit_edge, %if.end152.thread
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call156 = call i32 @regmap_read(ptr noundef %19, i32 noundef 0, ptr noundef nonnull %cr) #9
  %20 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cr, align 4
  %and173 = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  %22 = ptrtoint ptr %cr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %cr, align 4
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call.i259 = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 0, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br i1 %tobool174.not, label %if.end181, label %if.then178

if.then178:                                       ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %cr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %cr, align 4
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call.i260 = call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 0, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

if.end181:                                        ; preds = %if.then154
  %irq_lock = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %devid, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %irq_lock) #9
  %substream = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %devid, i32 0, i32 7
  %28 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %substream, align 4
  %tobool182.not = icmp eq ptr %29, null
  br i1 %tobool182.not, label %if.end181.if.end186_crit_edge, label %if.then183

if.end181.if.end186_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end186

if.then183:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  %call185 = call i32 @snd_pcm_stop(ptr noundef nonnull %29, i32 noundef 8) #9
  br label %if.end186

if.end186:                                        ; preds = %if.then183, %if.end181.if.end186_crit_edge
  call void @_raw_spin_unlock(ptr noundef %irq_lock) #9
  br label %cleanup

if.end188:                                        ; preds = %if.end152
  %irq_lock189 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %devid, i32 0, i32 14
  call void @_raw_spin_lock(ptr noundef %irq_lock189) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err_xrun.1)
  %tobool190.not = icmp eq i32 %err_xrun.1, 0
  br i1 %tobool190.not, label %if.end188.if.end196_crit_edge, label %land.lhs.true

if.end188.if.end196_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end196

land.lhs.true:                                    ; preds = %if.end188
  %substream191 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %devid, i32 0, i32 7
  %30 = ptrtoint ptr %substream191 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %substream191, align 4
  %tobool192.not = icmp eq ptr %31, null
  br i1 %tobool192.not, label %land.lhs.true.if.end196_crit_edge, label %if.then193

land.lhs.true.if.end196_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end196

if.then193:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call195 = call i32 @snd_pcm_stop_xrun(ptr noundef nonnull %31) #9
  br label %if.end196

if.end196:                                        ; preds = %if.then193, %land.lhs.true.if.end196_crit_edge, %if.end188.if.end196_crit_edge
  call void @_raw_spin_unlock(ptr noundef %irq_lock189) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end196, %if.end186, %if.then178, %do.end
  %retval.0 = phi i32 [ 1, %if.then178 ], [ 1, %if.end186 ], [ 1, %if.end196 ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %imr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dmaengine_pcm_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_spdifrx_dma_ctrl_register(ptr noundef %dev, ptr noundef %spdifrx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.53) #9
  %ctrl_chan = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %spdifrx, i32 0, i32 9
  %0 = ptrtoint ptr %ctrl_chan to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %ctrl_chan, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call to i32
  %call5 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %1, ptr noundef nonnull @.str.54) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #9
  %dmab = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %spdifrx, i32 0, i32 8
  %2 = ptrtoint ptr %dmab to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %dmab, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %call.i, align 4
  %dev14 = getelementptr inbounds %struct.snd_dma_device, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %dev14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %dev14, align 4
  %call.i66 = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 4, ptr noundef %dev, i32 noundef 0, i32 noundef 192, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %cmp = icmp slt i32 %call.i66, 0
  br i1 %cmp, label %do.end, label %if.end21

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55, i32 noundef %call.i66) #12
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  %slave_config = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %spdifrx, i32 0, i32 11
  %5 = ptrtoint ptr %slave_config to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %slave_config, align 4
  %phys_addr = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %spdifrx, i32 0, i32 12
  %6 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phys_addr, align 4
  %add = add i32 %7, 20
  %src_addr = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %spdifrx, i32 0, i32 11, i32 1
  %8 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %src_addr, align 4
  %9 = ptrtoint ptr %dmab to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dmab, align 4
  %addr = getelementptr inbounds %struct.snd_dma_buffer, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr, align 4
  %dst_addr = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %spdifrx, i32 0, i32 11, i32 2
  %13 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dst_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %spdifrx, i32 0, i32 11, i32 3
  %14 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %src_addr_width, align 4
  %src_maxburst = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %spdifrx, i32 0, i32 11, i32 5
  %15 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %src_maxburst, align 4
  %16 = ptrtoint ptr %ctrl_chan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl_chan, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end21.do.end34_crit_edge, label %dmaengine_slave_config.exit

if.end21.do.end34_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end34

dmaengine_slave_config.exit:                      ; preds = %if.end21
  %call.i67 = tail call i32 %21(ptr noundef %17, ptr noundef %slave_config) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp30 = icmp slt i32 %call.i67, 0
  br i1 %cmp30, label %dmaengine_slave_config.exit.do.end34_crit_edge, label %dmaengine_slave_config.exit.cleanup_crit_edge

dmaengine_slave_config.exit.cleanup_crit_edge:    ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dmaengine_slave_config.exit.do.end34_crit_edge:   ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end34

do.end34:                                         ; preds = %dmaengine_slave_config.exit.do.end34_crit_edge, %if.end21.do.end34_crit_edge
  %retval.0.i70 = phi i32 [ %call.i67, %dmaengine_slave_config.exit.do.end34_crit_edge ], [ -38, %if.end21.do.end34_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %retval.0.i70) #12
  %22 = ptrtoint ptr %ctrl_chan to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %ctrl_chan, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %dmaengine_slave_config.exit.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call5, %if.then ], [ %call.i66, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.i70, %do.end34 ], [ %call.i67, %dmaengine_slave_config.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop(ptr noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_prepare_slave_config(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_spdifrx_dai_probe(ptr noundef %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %phys_addr = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phys_addr, align 4
  %add = add i32 %5, 16
  %dma_params = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %dma_params to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %dma_params, align 4
  %maxburst = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %3, i32 0, i32 6, i32 2
  %7 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %maxburst, align 4
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 7
  %8 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 8
  %9 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dma_params, ptr %capture_dma_data.i, align 4
  %call.i = tail call i32 @snd_soc_add_dai_controls(ptr noundef %cpu_dai, ptr noundef nonnull @stm32_spdifrx_iec_ctrls, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.stm32_spdifrx_dai_register_ctrls.exit_crit_edge, label %if.end.i

entry.stm32_spdifrx_dai_register_ctrls.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %stm32_spdifrx_dai_register_ctrls.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %component.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 12
  %10 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %component.i, align 4
  %call1.i = tail call i32 @snd_soc_add_component_controls(ptr noundef %11, ptr noundef nonnull @stm32_spdifrx_ctrls, i32 noundef 2) #9
  br label %stm32_spdifrx_dai_register_ctrls.exit

stm32_spdifrx_dai_register_ctrls.exit:            ; preds = %if.end.i, %entry.stm32_spdifrx_dai_register_ctrls.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ %call.i, %entry.stm32_spdifrx_dai_register_ctrls.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_dai_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @stm32_spdifrx_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_spdifrx_capture_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @stm32_spdifrx_get_ctrl_data(ptr noundef %5)
  %cs = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %cs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cs, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %value, align 8
  %arrayidx4 = getelementptr %struct.stm32_spdifrx_data, ptr %5, i32 0, i32 15, i32 1
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx4, align 1
  %arrayidx7 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx7, align 1
  %arrayidx9 = getelementptr %struct.stm32_spdifrx_data, ptr %5, i32 0, i32 15, i32 2
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx9, align 2
  %arrayidx12 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx12, align 2
  %arrayidx14 = getelementptr %struct.stm32_spdifrx_data, ptr %5, i32 0, i32 15, i32 3
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx14, align 1
  %arrayidx17 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx17, align 1
  %arrayidx19 = getelementptr %struct.stm32_spdifrx_data, ptr %5, i32 0, i32 15, i32 4
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx19, align 4
  %arrayidx22 = getelementptr [24 x i8], ptr %value, i32 0, i32 4
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx22, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @stm32_spdifrx_ub_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_spdif_user_bits_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @stm32_spdifrx_get_ctrl_data(ptr noundef %5)
  %ub = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %ub to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ub, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %value, align 8
  %arrayidx4 = getelementptr %struct.stm32_spdifrx_data, ptr %5, i32 0, i32 16, i32 1
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx4, align 1
  %arrayidx7 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx7, align 1
  %arrayidx9 = getelementptr %struct.stm32_spdifrx_data, ptr %5, i32 0, i32 16, i32 2
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx9, align 2
  %arrayidx12 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx12, align 2
  %arrayidx14 = getelementptr %struct.stm32_spdifrx_data, ptr %5, i32 0, i32 16, i32 3
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx14, align 1
  %arrayidx17 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx17, align 1
  %arrayidx19 = getelementptr %struct.stm32_spdifrx_data, ptr %5, i32 0, i32 16, i32 4
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx19, align 4
  %arrayidx22 = getelementptr [24 x i8], ptr %value, i32 0, i32 4
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx22, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_spdifrx_get_ctrl_data(ptr noundef %spdifrx) unnamed_addr #2 align 64 {
entry:
  %sg.i.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cs = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %spdifrx, i32 0, i32 15
  %ctrl_chan.i = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %spdifrx, i32 0, i32 9
  %0 = call ptr @memset(ptr %cs, i32 0, i32 72)
  %1 = ptrtoint ptr %ctrl_chan.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl_chan.i, align 4
  %dmab.i = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %spdifrx, i32 0, i32 8
  %3 = ptrtoint ptr %dmab.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dmab.i, align 4
  %addr.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #9
  %7 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 3
  %8 = getelementptr inbounds %struct.scatterlist, ptr %sg.i.i, i32 0, i32 4
  %9 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i.i, i32 noundef 1) #9
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %6, ptr %7, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 192, ptr %8, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

entry.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %entry
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 4
  %tobool1.not.i.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_single.exit.thread.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 39
  %14 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %15, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, label %dmaengine_prep_slave_single.exit.i

lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_prep_slave_single.exit.thread.i

dmaengine_prep_slave_single.exit.thread.i:        ; preds = %lor.lhs.false2.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %lor.lhs.false.i.i.dmaengine_prep_slave_single.exit.thread.i_crit_edge, %entry.dmaengine_prep_slave_single.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #9
  %desc22.i = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %spdifrx, i32 0, i32 10
  %16 = ptrtoint ptr %desc22.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %desc22.i, align 4
  br label %cleanup

dmaengine_prep_slave_single.exit.i:               ; preds = %lor.lhs.false2.i.i
  %call.i.i = call ptr %15(ptr noundef nonnull %2, ptr noundef nonnull %sg.i.i, i32 noundef 1, i32 noundef 2, i32 noundef 2, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #9
  %desc.i = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %spdifrx, i32 0, i32 10
  %17 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i, ptr %desc.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %dmaengine_prep_slave_single.exit.i.cleanup_crit_edge, label %if.end.i

dmaengine_prep_slave_single.exit.i.cleanup_crit_edge: ; preds = %dmaengine_prep_slave_single.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %dmaengine_prep_slave_single.exit.i
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @stm32_spdifrx_dma_complete, ptr %callback.i, align 4
  %19 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %spdifrx, ptr %callback_param.i, align 4
  %22 = load ptr, ptr %desc.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i20.i = call i32 %24(ptr noundef %22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i20.i)
  %tobool7.not.i = icmp sgt i32 %call.i20.i, -1
  br i1 %tobool7.not.i, label %if.end, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %25 = ptrtoint ptr %ctrl_chan.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctrl_chan.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %28, i32 0, i32 50
  %29 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %30(ptr noundef %26) #9
  %kclk = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %spdifrx, i32 0, i32 5
  %31 = ptrtoint ptr %kclk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %kclk, align 4
  %call.i = call i32 @clk_prepare(ptr noundef %32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i2 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i2, label %if.end.i3, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i3:                                        ; preds = %if.end
  %call1.i = call i32 @clk_enable(ptr noundef %32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i3
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_unprepare(ptr noundef %32) #9
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end.do.end_crit_edge
  %retval.0.i4.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end_crit_edge ]
  %33 = ptrtoint ptr %spdifrx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %spdifrx, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %retval.0.i4.ph) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end.i3
  %regmap = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %spdifrx, i32 0, i32 2
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call.i5 = call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 0, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %cmp6 = icmp slt i32 %call.i5, 0
  br i1 %cmp6, label %if.end4.end_crit_edge, label %if.end8

if.end4.end_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end8:                                          ; preds = %if.end4
  %call9 = call fastcc i32 @stm32_spdifrx_start_sync(ptr noundef %spdifrx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.end_crit_edge, label %if.end12

if.end8.end_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end12:                                         ; preds = %if.end8
  %cs_completion = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %spdifrx, i32 0, i32 4
  %call14 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %cs_completion, i32 noundef 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 1
  br i1 %cmp15, label %do.body17, label %if.end12.if.end28_crit_edge

if.end12.if.end28_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

do.body17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_spdifrx_get_ctrl_data.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_spdifrx_get_ctrl_data, %if.then22)) #9
          to label %if.end28 [label %if.then22], !srcloc !184

if.then22:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %spdifrx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %spdifrx, align 4
  %dev24 = getelementptr inbounds %struct.platform_device, ptr %38, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_spdifrx_get_ctrl_data.__UNIQUE_ID_ddebug242, ptr noundef %dev24, ptr noundef nonnull @.str.33) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %do.body17, %if.end12.if.end28_crit_edge
  call fastcc void @stm32_spdifrx_stop(ptr noundef %spdifrx)
  %39 = ptrtoint ptr %ctrl_chan.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctrl_chan.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %42, i32 0, i32 47
  %43 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i7 = icmp eq ptr %44, null
  br i1 %tobool.not.i.i7, label %if.end28.end_crit_edge, label %if.then.i.i

if.end28.end_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.then.i.i:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i8 = call i32 %44(ptr noundef %40) #9
  br label %end

end:                                              ; preds = %if.then.i.i, %if.end28.end_crit_edge, %if.end8.end_crit_edge, %if.end4.end_crit_edge
  %45 = ptrtoint ptr %kclk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %kclk, align 4
  call void @clk_disable(ptr noundef %46) #9
  call void @clk_unprepare(ptr noundef %46) #9
  br label %cleanup

cleanup:                                          ; preds = %end, %do.end, %if.end.i.cleanup_crit_edge, %dmaengine_prep_slave_single.exit.i.cleanup_crit_edge, %dmaengine_prep_slave_single.exit.thread.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_spdifrx_start_sync(ptr noundef %spdifrx) unnamed_addr #2 align 64 {
entry:
  %cr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr) #9
  %0 = ptrtoint ptr %cr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cr, align 4, !annotation !183
  %regmap = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %spdifrx, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 4, i32 noundef 100, i32 noundef 100, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.body1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %spdifrx, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %refcount = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %spdifrx, i32 0, i32 18
  %3 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %refcount, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %refcount, align 4
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %cr) #9
  %7 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cr, align 4
  %and = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body10, label %do.body1.if.end34_crit_edge

do.body1.if.end34_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.body10:                                        ; preds = %do.body1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_spdifrx_start_sync.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stm32_spdifrx_start_sync, %if.then16)) #9
          to label %do.end19 [label %if.then16], !srcloc !184

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %spdifrx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spdifrx, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_spdifrx_start_sync.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.40) #9
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.body10
  %11 = ptrtoint ptr %cr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 29641, ptr %cr, align 4
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i53 = call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef 29643, i32 noundef 29641, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %cmp25 = icmp slt i32 %call.i53, 0
  br i1 %cmp25, label %do.end30, label %do.end19.if.end34_crit_edge

do.end19.if.end34_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.end30:                                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %spdifrx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spdifrx, align 4
  %dev32 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.41) #12
  br label %if.end34

if.end34:                                         ; preds = %do.end30, %do.end19.if.end34_crit_edge, %do.body1.if.end34_crit_edge
  %ret.0 = phi i32 [ 0, %do.body1.if.end34_crit_edge ], [ %call.i53, %do.end30 ], [ %call.i53, %do.end19.if.end34_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end34 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_spdifrx_stop(ptr noundef %spdifrx) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !183
  %lock = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %spdifrx, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %refcount = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %spdifrx, i32 0, i32 18
  %1 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcount, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %spdifrx, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 0, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i28 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 4, i32 noundef 127, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i29 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 12, i32 noundef 60, i32 noundef 60, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call12 = call i32 @regmap_read(ptr noundef %10, i32 noundef 16, ptr noundef nonnull %reg) #9
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call14 = call i32 @regmap_read(ptr noundef %12, i32 noundef 20, ptr noundef nonnull %reg) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_spdifrx_dma_complete(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dmab = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %data, i32 0, i32 8
  %2 = ptrtoint ptr %dmab to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmab, align 4
  %area = getelementptr inbounds %struct.snd_dma_buffer, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %area, align 4
  %add.ptr2 = getelementptr i32, ptr %5, i32 47
  %ub = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %data, i32 0, i32 16
  %regmap = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 1024, i32 noundef -1025, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %8 = ptrtoint ptr %dmab to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dmab, align 4
  %area4 = getelementptr inbounds %struct.snd_dma_buffer, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %area4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %area4, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %cmp.not54 = icmp ugt ptr %5, %add.ptr2
  br i1 %cmp.not54, label %while.cond.preheader.do.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.do.end_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

while.body:                                       ; preds = %if.end7.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %ptr.055 = phi ptr [ %incdec.ptr, %if.end7.while.body_crit_edge ], [ %5, %while.cond.preheader.while.body_crit_edge ]
  %12 = ptrtoint ptr %ptr.055 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ptr.055, align 4
  %and = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end7, label %while.body.while.body13_crit_edge

while.body.while.body13_crit_edge:                ; preds = %while.body
  br label %while.body13

if.end7:                                          ; preds = %while.body
  %incdec.ptr = getelementptr i32, ptr %ptr.055, i32 1
  %cmp.not = icmp ugt ptr %incdec.ptr, %add.ptr2
  br i1 %cmp.not, label %if.end7.do.end_crit_edge, label %if.end7.while.body_crit_edge

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %if.end7.do.end_crit_edge, %while.cond.preheader.do.end_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34) #12
  br label %cleanup

while.body13:                                     ; preds = %if.end27.while.body13_crit_edge, %while.body.while.body13_crit_edge
  %i.058 = phi i32 [ %inc, %if.end27.while.body13_crit_edge ], [ 0, %while.body.while.body13_crit_edge ]
  %ub_ptr.057 = phi ptr [ %incdec.ptr19, %if.end27.while.body13_crit_edge ], [ %ub, %while.body.while.body13_crit_edge ]
  %ptr.156 = phi ptr [ %incdec.ptr15, %if.end27.while.body13_crit_edge ], [ %ptr.055, %while.body.while.body13_crit_edge ]
  %14 = ptrtoint ptr %ptr.156 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ptr.156, align 4
  %and14 = lshr i32 %15, 16
  %conv = trunc i32 %and14 to i8
  %arrayidx = getelementptr %struct.stm32_spdifrx_data, ptr %data, i32 0, i32 15, i32 %i.058
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %arrayidx, align 1
  %incdec.ptr15 = getelementptr i32, ptr %ptr.156, i32 1
  %17 = load i32, ptr %ptr.156, align 4
  %conv18 = trunc i32 %17 to i16
  %18 = ptrtoint ptr %ub_ptr.057 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv18, ptr %ub_ptr.057, align 2
  %cmp20 = icmp ugt ptr %incdec.ptr15, %add.ptr2
  br i1 %cmp20, label %do.end25, label %if.end27

do.end25:                                         ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #11
  %dev26 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.37) #12
  br label %cleanup

if.end27:                                         ; preds = %while.body13
  %incdec.ptr19 = getelementptr i16, ptr %ub_ptr.057, i32 1
  %inc = add nuw nsw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %while.end28, label %if.end27.while.body13_crit_edge

if.end27.while.body13_crit_edge:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body13

while.end28:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %cs_completion = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %data, i32 0, i32 4
  tail call void @complete(ptr noundef %cs_completion) #9
  br label %cleanup

cleanup:                                          ; preds = %while.end28, %do.end25, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_spdifrx_startup(ptr noundef %substream, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %irq_lock = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %3, i32 0, i32 14
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #9
  %substream6 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %substream6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %substream6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call3) #9
  %kclk = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %kclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %kclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %6) #9
  br label %do.end11

do.end11:                                         ; preds = %if.then3.i, %entry.do.end11_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end11_crit_edge ]
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %retval.0.i.ph) #12
  br label %if.end

if.end:                                           ; preds = %do.end11, %if.end.i.if.end_crit_edge
  %retval.0.i21 = phi i32 [ %retval.0.i.ph, %do.end11 ], [ 0, %if.end.i.if.end_crit_edge ]
  ret i32 %retval.0.i21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_spdifrx_shutdown(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %irq_lock = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %3, i32 0, i32 14
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #9
  %substream6 = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %substream6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %substream6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call3) #9
  %kclk = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %kclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %kclk, align 4
  tail call void @clk_disable(ptr noundef %6) #9
  tail call void @clk_unprepare(ptr noundef %6) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_spdifrx_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %5, %entry.if.then.i.i.i_crit_edge ], [ %8, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %6 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #9, !range !185
  %add.i.i.i = or i32 %6, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.1.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #9
  %9 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1.i, label %do.end [
    i32 16, label %params_width.exit.sw.epilog_crit_edge
    i32 32, label %sw.bb2
  ]

params_width.exit.sw.epilog_crit_edge:            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %params_width.exit.sw.epilog_crit_edge
  %fmt.0 = phi i32 [ 16, %sw.bb2 ], [ 32, %params_width.exit.sw.epilog_crit_edge ]
  %dma_params = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %3, i32 0, i32 6
  %addr_width = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %3, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %addr_width to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %addr_width, align 4
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 7
  %13 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 8
  %14 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dma_params, ptr %capture_dma_data.i, align 4
  %regmap = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 0, i32 noundef 48, i32 noundef %fmt.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_spdifrx_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge11
    i32 4, label %entry.sw.bb_crit_edge12
    i32 5, label %entry.sw.bb5_crit_edge
    i32 3, label %entry.sw.bb5_crit_edge13
    i32 0, label %entry.sw.bb5_crit_edge14
  ]

entry.sw.bb5_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

entry.sw.bb5_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

entry.sw.bb_crit_edge12:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge11:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge11, %entry.sw.bb_crit_edge12
  %regmap = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 4, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i10 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 0, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call4 = tail call fastcc i32 @stm32_spdifrx_start_sync(ptr noundef %3)
  br label %cleanup

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge13, %entry.sw.bb5_crit_edge14
  tail call fastcc void @stm32_spdifrx_stop(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb5 ], [ %call4, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dma_alloc_dir_pages(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_free_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_component(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stm32_spdifrx_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %reg)
  %0 = icmp ult i32 %reg, 13
  %switch.cast = trunc i32 %reg to i13
  %switch.downshift = lshr i13 -4079, %switch.cast
  %1 = and i13 %switch.downshift, 1
  %2 = sext i13 %1 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %switch.masked = icmp ne i13 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stm32_spdifrx_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 4, label %entry.return_crit_edge1
    i32 8, label %entry.return_crit_edge2
    i32 12, label %entry.return_crit_edge3
    i32 16, label %entry.return_crit_edge4
    i32 20, label %entry.return_crit_edge5
    i32 24, label %entry.return_crit_edge6
    i32 1012, label %entry.return_crit_edge7
    i32 1016, label %entry.return_crit_edge8
    i32 1020, label %entry.return_crit_edge9
  ]

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

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @stm32_spdifrx_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -8
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %2 = icmp ult i32 %1, 5
  %switch.cast = trunc i32 %1 to i5
  %switch.downshift = lshr i5 -3, %switch.cast
  %3 = and i5 %switch.downshift, 1
  %4 = sext i5 %3 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %switch.masked = icmp ne i5 %3, 0
  %retval.0 = select i1 %2, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_spdifrx_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #9
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_spdifrx_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.stm32_spdifrx_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext false) #9
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regcache_sync(ptr noundef %5) #9
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !40, !42, !43, !44, !46, !47, !49, !51, !52, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !96, !97, !98, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !149, !150, !152, !153, !154, !155, !157, !159, !161, !162, !163, !164, !166, !167, !168, !170, !172}
!llvm.module.flags = !{!174, !175, !176, !177, !178, !179, !180, !181}
!llvm.ident = !{!182}

!0 = !{ptr @__initcall__kmod_snd_soc_stm32_spdifrx__266_1083_stm32_spdifrx_driver_init6, !1, !"__initcall__kmod_snd_soc_stm32_spdifrx__266_1083_stm32_spdifrx_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 1083, i32 1}
!2 = !{ptr @__exitcall_stm32_spdifrx_driver_exit, !1, !"__exitcall_stm32_spdifrx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description267, !4, !"__UNIQUE_ID_description267", i1 false, i1 false}
!4 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 1085, i32 1}
!5 = !{ptr @__UNIQUE_ID_author268, !6, !"__UNIQUE_ID_author268", i1 false, i1 false}
!6 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 1086, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias269, !8, !"__UNIQUE_ID_alias269", i1 false, i1 false}
!8 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 1087, i32 1}
!9 = !{ptr @__UNIQUE_ID_file270, !10, !"__UNIQUE_ID_file270", i1 false, i1 false}
!10 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 1088, i32 1}
!11 = !{ptr @__UNIQUE_ID_license271, !10, !"__UNIQUE_ID_license271", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 1075, i32 11}
!14 = !{ptr @stm32_spdifrx_driver, !15, !"stm32_spdifrx_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 1073, i32 31}
!16 = !{ptr @stm32_spdifrx_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 972, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @stm32_spdifrx_probe.__key.2, !20, !"__key", i1 false, i1 false}
!20 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 973, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @stm32_spdifrx_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 981, i32 20}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 986, i32 10}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 991, i32 3}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @stm32_spdifrx_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @stm32_spdifrx_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 998, i32 10}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 1009, i32 41}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 1033, i32 3}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @stm32_spdifrx_probe.__UNIQUE_ID_ddebug255, !41, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!44 = !{ptr @init_completion.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../include/linux/completion.h", i32 87, i32 2}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 932, i32 10}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 683, i32 3}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @stm32_spdifrx_isr._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @stm32_spdifrx_isr._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 693, i32 3}
!56 = !{ptr @stm32_spdifrx_isr.__UNIQUE_ID_ddebug243, !55, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 698, i32 3}
!59 = !{ptr @stm32_spdifrx_isr.__UNIQUE_ID_ddebug244, !58, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 703, i32 3}
!62 = !{ptr @stm32_spdifrx_isr.__UNIQUE_ID_ddebug245, !61, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 706, i32 3}
!65 = !{ptr @stm32_spdifrx_isr.__UNIQUE_ID_ddebug246, !64, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 715, i32 3}
!68 = !{ptr @stm32_spdifrx_isr.__UNIQUE_ID_ddebug247, !67, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 720, i32 3}
!71 = !{ptr @stm32_spdifrx_isr.__UNIQUE_ID_ddebug248, !70, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 725, i32 3}
!74 = !{ptr @stm32_spdifrx_isr.__UNIQUE_ID_ddebug249, !73, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!75 = !{ptr @stm32_spdifrx_pcm_config, !76, !"stm32_spdifrx_pcm_config", i1 false, i1 false}
!76 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 893, i32 46}
!77 = !{ptr @stm32_spdifrx_pcm_hw, !78, !"stm32_spdifrx_pcm_hw", i1 false, i1 false}
!78 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 880, i32 38}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 890, i32 10}
!81 = !{ptr @stm32_spdifrx_component, !82, !"stm32_spdifrx_component", i1 false, i1 false}
!82 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 889, i32 46}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 869, i32 19}
!85 = !{ptr @stm32_spdifrx_dai, !86, !"stm32_spdifrx_dai", i1 false, i1 false}
!86 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 865, i32 34}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 559, i32 11}
!89 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 568, i32 11}
!91 = !{ptr @stm32_spdifrx_iec_ctrls, !92, !"stm32_spdifrx_iec_ctrls", i1 false, i1 false}
!92 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 555, i32 32}
!93 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 492, i32 3}
!95 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @stm32_spdifrx_get_ctrl_data._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @stm32_spdifrx_get_ctrl_data._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 508, i32 3}
!100 = !{ptr @stm32_spdifrx_get_ctrl_data.__UNIQUE_ID_ddebug242, !99, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!101 = !{ptr @.str.34, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 275, i32 3}
!103 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @stm32_spdifrx_dma_complete._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @stm32_spdifrx_dma_complete._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.37, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 283, i32 4}
!108 = !{ptr @stm32_spdifrx_dma_complete._entry.36, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @stm32_spdifrx_dma_complete._entry_ptr.38, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.39, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 344, i32 3}
!112 = !{ptr @.str.40, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @stm32_spdifrx_start_sync.__UNIQUE_ID_ddebug241, !111, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!114 = !{ptr @.str.41, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 364, i32 4}
!116 = !{ptr @stm32_spdifrx_start_sync._entry, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @stm32_spdifrx_start_sync._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.42, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 577, i32 2}
!120 = !{ptr @.str.43, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 578, i32 2}
!122 = !{ptr @stm32_spdifrx_ctrls, !123, !"stm32_spdifrx_ctrls", i1 false, i1 false}
!123 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 576, i32 32}
!124 = !{ptr @ctrl_enum_input, !125, !"ctrl_enum_input", i1 false, i1 false}
!125 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 453, i32 8}
!126 = !{ptr @.str.44, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 445, i32 2}
!128 = !{ptr @.str.45, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 445, i32 9}
!130 = !{ptr @.str.46, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 445, i32 16}
!132 = !{ptr @.str.47, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 445, i32 23}
!134 = !{ptr @spdifrx_enum_input, !135, !"spdifrx_enum_input", i1 false, i1 false}
!135 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 444, i32 27}
!136 = !{ptr @ctrl_enum_cs_channel, !137, !"ctrl_enum_cs_channel", i1 false, i1 false}
!137 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 457, i32 8}
!138 = !{ptr @.str.48, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 450, i32 2}
!140 = !{ptr @.str.49, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 450, i32 7}
!142 = !{ptr @spdifrx_enum_cs_channel, !143, !"spdifrx_enum_cs_channel", i1 false, i1 false}
!143 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 449, i32 27}
!144 = !{ptr @stm32_spdifrx_pcm_dai_ops, !145, !"stm32_spdifrx_pcm_dai_ops", i1 false, i1 false}
!145 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 858, i32 37}
!146 = !{ptr @.str.50, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 777, i32 3}
!148 = !{ptr @stm32_spdifrx_startup._entry, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @stm32_spdifrx_startup._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.51, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 798, i32 3}
!152 = !{ptr @.str.52, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @stm32_spdifrx_hw_params._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @stm32_spdifrx_hw_params._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.53, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 408, i32 45}
!157 = !{ptr @.str.54, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 411, i32 10}
!159 = !{ptr @.str.55, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 423, i32 3}
!161 = !{ptr @.str.56, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @stm32_spdifrx_dma_ctrl_register._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @stm32_spdifrx_dma_ctrl_register._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.58, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 437, i32 3}
!166 = !{ptr @stm32_spdifrx_dma_ctrl_register._entry.57, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @stm32_spdifrx_dma_ctrl_register._entry_ptr.59, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @stm32_spdifrx_ids, !169, !"stm32_spdifrx_ids", i1 false, i1 false}
!169 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 898, i32 34}
!170 = !{ptr @stm32_h7_spdifrx_regmap_conf, !171, !"stm32_h7_spdifrx_regmap_conf", i1 false, i1 false}
!171 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 652, i32 35}
!172 = !{ptr @stm32_spdifrx_pm_ops, !173, !"stm32_spdifrx_pm_ops", i1 false, i1 false}
!173 = !{!"../sound/soc/stm/stm32_spdifrx.c", i32 1069, i32 32}
!174 = !{i32 1, !"wchar_size", i32 2}
!175 = !{i32 1, !"min_enum_size", i32 4}
!176 = !{i32 8, !"branch-target-enforcement", i32 0}
!177 = !{i32 8, !"sign-return-address", i32 0}
!178 = !{i32 8, !"sign-return-address-all", i32 0}
!179 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!180 = !{i32 7, !"uwtable", i32 1}
!181 = !{i32 7, !"frame-pointer", i32 2}
!182 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!183 = !{!"auto-init"}
!184 = !{i64 2148781267, i64 2148781272, i64 2148781285, i64 2148781329, i64 2148781363, i64 2148781384}
!185 = !{i32 0, i32 33}
