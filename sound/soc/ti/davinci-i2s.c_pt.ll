; ModuleID = '/llk/IR_all_yes/sound/soc/ti/davinci-i2s.c_pt.bc'
source_filename = "../sound/soc/ti/davinci-i2s.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.davinci_mcbsp_dev = type { ptr, [2 x %struct.snd_dmaengine_dai_dma_data], [2 x i32], ptr, i32, i32, ptr, i8, i32, i32, i32, i8 }
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

@__initcall__kmod_snd_soc_davinci_asp__244_765_davinci_mcbsp_driver_init6 = internal global ptr @davinci_mcbsp_driver_init, section ".initcall6.init", align 4
@davinci_mcbsp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @davinci_i2s_probe, ptr @davinci_i2s_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @davinci_i2s_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_davinci_mcbsp_driver_exit = internal global ptr @davinci_mcbsp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author245 = internal constant [44 x i8] c"snd_soc_davinci_asp.author=Vladimir Barinov\00", section ".modinfo", align 1
@__UNIQUE_ID_description246 = internal constant [69 x i8] c"snd_soc_davinci_asp.description=TI DAVINCI I2S (McBSP) SoC Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file247 = internal constant [58 x i8] c"snd_soc_davinci_asp.file=sound/soc/ti/snd-soc-davinci-asp\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [32 x i8] c"snd_soc_davinci_asp.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"davinci-mcbsp\00", [18 x i8] zeroinitializer }, align 32
@davinci_i2s_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,da850-mcbsp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mpu\00", [28 x i8] zeroinitializer }, align 32
@davinci_i2s_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 658, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\22mpu\22 mem resource not found, using index 0\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"davinci_i2s_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/ti/davinci-i2s.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@davinci_i2s_probe._entry_ptr = internal global ptr @davinci_i2s_probe._entry, section ".printk_index", align 4
@davinci_i2s_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 661, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no mem resource?\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@davinci_i2s_probe._entry_ptr.10 = internal global ptr @davinci_i2s_probe._entry.7, section ".printk_index", align 4
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@davinci_i2s_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 689, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Missing DMA tx resource\0A\00", [39 x i8] zeroinitializer }, align 32
@davinci_i2s_probe._entry_ptr.14 = internal global ptr @davinci_i2s_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@davinci_i2s_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 704, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Missing DMA rx resource\0A\00", [39 x i8] zeroinitializer }, align 32
@davinci_i2s_probe._entry_ptr.18 = internal global ptr @davinci_i2s_probe._entry.16, section ".printk_index", align 4
@davinci_i2s_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.22, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@davinci_i2s_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @davinci_i2s_dai_probe, ptr null, ptr null, ptr null, ptr @davinci_i2s_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 1028, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 1028, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@davinci_i2s_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 723, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"register PCM failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@davinci_i2s_probe._entry_ptr.21 = internal global ptr @davinci_i2s_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"davinci-i2s\00", [20 x i8] zeroinitializer }, align 32
@davinci_i2s_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr @davinci_i2s_dai_set_clkdiv, ptr null, ptr @davinci_i2s_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @davinci_i2s_shutdown, ptr @davinci_i2s_hw_params, ptr null, ptr @davinci_i2s_prepare, ptr @davinci_i2s_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@davinci_i2s_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 258, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bad clk_input_pin\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"davinci_i2s_set_dai_fmt\00", [40 x i8] zeroinitializer }, align 32
@davinci_i2s_set_dai_fmt._entry_ptr = internal global ptr @davinci_i2s_set_dai_fmt._entry, section ".printk_index", align 4
@davinci_i2s_set_dai_fmt._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.4, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013%s:bad master\0A\00", [47 x i8] zeroinitializer }, align 32
@davinci_i2s_set_dai_fmt._entry_ptr.27 = internal global ptr @davinci_i2s_set_dai_fmt._entry.25, section ".printk_index", align 4
@davinci_i2s_set_dai_fmt._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.4, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013%s:bad format\0A\00", [47 x i8] zeroinitializer }, align 32
@davinci_i2s_set_dai_fmt._entry_ptr.30 = internal global ptr @davinci_i2s_set_dai_fmt._entry.28, section ".printk_index", align 4
@asp_word_length = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\00\00\02\00\00\00\00\00\00\00\05", [21 x i8] zeroinitializer }, align 32
@davinci_i2s_hw_params.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.32, ptr @.str.4, ptr @.str.33, i8 0, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_soc_davinci_asp\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"davinci_i2s_hw_params\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - %d  FWID set: re-read srgr = %X\0A\00", [58 x i8] zeroinitializer }, align 32
@davinci_i2s_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.4, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014davinci-i2s: unsupported PCM format\0A\00", [57 x i8] zeroinitializer }, align 32
@davinci_i2s_hw_params._entry_ptr = internal global ptr @davinci_i2s_hw_params._entry, section ".printk_index", align 4
@davinci_i2s_hw_params.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.32, ptr @.str.4, ptr @.str.35, i8 0, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s - %d  srgr=%X\0A\00", [46 x i8] zeroinitializer }, align 32
@davinci_i2s_hw_params.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.32, ptr @.str.4, ptr @.str.36, i8 0, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - %d  xcr=%X\0A\00", [47 x i8] zeroinitializer }, align 32
@davinci_i2s_hw_params.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.32, ptr @.str.4, ptr @.str.37, i8 0, i8 -126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s - %d  rcr=%X\0A\00", [47 x i8] zeroinitializer }, align 32
@double_fmt = internal constant { <{ i8, i8, i8, [8 x i8] }>, [21 x i8] } { <{ i8, i8, i8, [8 x i8] }> <{ i8 2, i8 0, i8 10, [8 x i8] zeroinitializer }>, [21 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 4096, i64 12288, i64 16384]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 16, i64 4096, i64 12288, i64 16384]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.45 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.46 = private unnamed_addr constant [21 x i8] c"davinci_mcbsp_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 756, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 760, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"davinci_i2s_match\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 750, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 655, i32 59 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 657, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 661, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 687, i32 27 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 689, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 702, i32 27 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 704, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [22 x i8] c"davinci_i2s_component\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 642, i32 46 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"davinci_i2s_dai\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 624, i32 34 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 723, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 643, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant [20 x i8] c"davinci_i2s_dai_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 604, i32 37 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 258, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 268, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 300, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [16 x i8] c"asp_word_length\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 117, i32 28 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 442, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 465, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 519, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 520, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 521, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [11 x i8] c"double_fmt\00", align 1
@___asan_gen_.170 = private constant [30 x i8] c"../sound/soc/ti/davinci-i2s.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 123, i32 28 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_description246, ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_license248, ptr @__exitcall_davinci_mcbsp_driver_exit, ptr @__initcall__kmod_snd_soc_davinci_asp__244_765_davinci_mcbsp_driver_init6, ptr @davinci_i2s_hw_params._entry, ptr @davinci_i2s_hw_params._entry_ptr, ptr @davinci_i2s_probe._entry, ptr @davinci_i2s_probe._entry.12, ptr @davinci_i2s_probe._entry.16, ptr @davinci_i2s_probe._entry.19, ptr @davinci_i2s_probe._entry.7, ptr @davinci_i2s_probe._entry_ptr, ptr @davinci_i2s_probe._entry_ptr.10, ptr @davinci_i2s_probe._entry_ptr.14, ptr @davinci_i2s_probe._entry_ptr.18, ptr @davinci_i2s_probe._entry_ptr.21, ptr @davinci_i2s_set_dai_fmt._entry, ptr @davinci_i2s_set_dai_fmt._entry.25, ptr @davinci_i2s_set_dai_fmt._entry.28, ptr @davinci_i2s_set_dai_fmt._entry_ptr, ptr @davinci_i2s_set_dai_fmt._entry_ptr.27, ptr @davinci_i2s_set_dai_fmt._entry_ptr.30, ptr @davinci_mcbsp_driver_exit, ptr @davinci_mcbsp_driver, ptr @.str, ptr @davinci_i2s_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @davinci_i2s_component, ptr @davinci_i2s_dai, ptr @.str.20, ptr @.str.22, ptr @davinci_i2s_dai_ops, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @asp_word_length, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @double_fmt], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mcbsp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_i2s_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_i2s_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_i2s_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_i2s_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_i2s_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_i2s_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_i2s_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_i2s_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_i2s_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_i2s_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_i2s_set_dai_fmt._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_i2s_set_dai_fmt._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asp_word_length to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_i2s_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @double_fmt to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mcbsp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @davinci_mcbsp_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @davinci_mcbsp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @davinci_mcbsp_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_i2s_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %do.end.if.end9_crit_edge

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end9:                                          ; preds = %do.end.if.end9_crit_edge, %entry.if.end9_crit_edge
  %mem.0 = phi ptr [ %call, %entry.if.end9_crit_edge ], [ %call2, %do.end.if.end9_crit_edge ]
  %dev10 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call11 = tail call ptr @devm_ioremap_resource(ptr noundef %dev10, ptr noundef nonnull %mem.0) #6
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev10, i32 noundef 120, i32 noundef 3520) #6
  %tobool18.not = icmp eq ptr %call.i, null
  br i1 %tobool18.not, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %base = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call11, ptr %base, align 4
  %dma_data21 = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %mem.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem.0, align 4
  %add = add i32 %3, 4
  %4 = ptrtoint ptr %dma_data21 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %dma_data21, align 4
  %call22 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 2048, i32 noundef 0) #6
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %dma_request = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %call22 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call22, align 4
  %7 = ptrtoint ptr %dma_request to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dma_request, align 4
  br label %if.end37

if.else:                                          ; preds = %if.end20
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %tobool28.not = icmp eq ptr %9, null
  br i1 %tobool28.not, label %do.end34, label %if.else.if.end37_crit_edge

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.end34:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end37:                                         ; preds = %if.else.if.end37_crit_edge, %if.then24
  %.str.11.sink = phi ptr [ %dma_request, %if.then24 ], [ @.str.11, %if.else.if.end37_crit_edge ]
  %filter_data30 = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %filter_data30 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %.str.11.sink, ptr %filter_data30, align 4
  %arrayidx39 = getelementptr %struct.davinci_mcbsp_dev, ptr %call.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %mem.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mem.0, align 4
  %13 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx39, align 4
  %call43 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 2048, i32 noundef 1) #6
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.else50, label %if.then45

if.then45:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx47 = getelementptr %struct.davinci_mcbsp_dev, ptr %call.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %call43 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call43, align 4
  %16 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx47, align 4
  br label %if.end62

if.else50:                                        ; preds = %if.end37
  %of_node52 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %17 = ptrtoint ptr %of_node52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node52, align 8
  %tobool53.not = icmp eq ptr %18, null
  br i1 %tobool53.not, label %do.end59, label %if.else50.if.end62_crit_edge

if.else50.if.end62_crit_edge:                     ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

do.end59:                                         ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.17) #9
  br label %cleanup

if.end62:                                         ; preds = %if.else50.if.end62_crit_edge, %if.then45
  %.str.15.sink = phi ptr [ %arrayidx47, %if.then45 ], [ @.str.15, %if.else50.if.end62_crit_edge ]
  %filter_data55 = getelementptr %struct.davinci_mcbsp_dev, ptr %call.i, i32 0, i32 1, i32 1, i32 3
  %19 = ptrtoint ptr %filter_data55 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %.str.15.sink, ptr %filter_data55, align 4
  %call64 = tail call ptr @clk_get(ptr noundef %dev10, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call64, ptr %clk, align 4
  %cmp.i146 = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i146, label %if.end62.cleanup_crit_edge, label %if.end68

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end68:                                         ; preds = %if.end62
  %call70 = tail call i32 @clk_enable(ptr noundef %call64) #6
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev10, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %22 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call75 = tail call i32 @snd_soc_register_component(ptr noundef %dev10, ptr noundef nonnull @davinci_i2s_component, ptr noundef nonnull @davinci_i2s_dai, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp.not = icmp eq i32 %call75, 0
  br i1 %cmp.not, label %if.end77, label %if.end68.err_release_clk_crit_edge

if.end68.err_release_clk_crit_edge:               ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_release_clk

if.end77:                                         ; preds = %if.end68
  %call79 = tail call i32 @edma_pcm_platform_register(ptr noundef %dev10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end77.cleanup_crit_edge, label %do.end84

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end84:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.20, i32 noundef %call79) #9
  tail call void @snd_soc_unregister_component(ptr noundef %dev10) #6
  br label %err_release_clk

err_release_clk:                                  ; preds = %do.end84, %if.end68.err_release_clk_crit_edge
  %ret.0 = phi i32 [ %call75, %if.end68.err_release_clk_crit_edge ], [ %call79, %do.end84 ]
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %24) #6
  %25 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %26) #6
  br label %cleanup

cleanup:                                          ; preds = %err_release_clk, %if.end77.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %do.end59, %do.end34, %if.end15.cleanup_crit_edge, %if.then13, %do.end7
  %retval.0 = phi i32 [ %0, %if.then13 ], [ %ret.0, %err_release_clk ], [ -19, %do.end59 ], [ -19, %do.end34 ], [ -19, %do.end7 ], [ -12, %if.end15.cleanup_crit_edge ], [ -19, %if.end62.cleanup_crit_edge ], [ 0, %if.end77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_i2s_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @snd_soc_unregister_component(ptr noundef %dev1) #6
  %clk = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %5) #6
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %clk, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edma_pcm_platform_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_component(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @davinci_i2s_dai_probe(ptr nocapture noundef %dai) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dma_data = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %3, i32 0, i32 1
  %playback_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %4 = ptrtoint ptr %playback_dma_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dma_data, ptr %playback_dma_data, align 4
  %arrayidx2 = getelementptr %struct.davinci_mcbsp_dev, ptr %3, i32 0, i32 1, i32 1
  %capture_dma_data = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %5 = ptrtoint ptr %capture_dma_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx2, ptr %capture_dma_data, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @davinci_i2s_dai_set_clkdiv(ptr nocapture noundef readonly %cpu_dai, i32 noundef %div_id, i32 noundef %div) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div_id)
  %cmp.not = icmp eq i32 %div_id, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %clk_div = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %clk_div to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div, ptr %clk_div, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_i2s_set_dai_fmt(ptr nocapture noundef readonly %cpu_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %fmt1 = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %fmt, ptr %fmt1, align 4
  %5 = trunc i32 %fmt to i16
  %trunc = and i16 %5, -4096
  %6 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %do.end11 [
    i16 16384, label %entry.sw.epilog13_crit_edge
    i16 12288, label %sw.bb2
    i16 4096, label %sw.bb7
  ]

entry.sw.epilog13_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog13

sw.bb2:                                           ; preds = %entry
  %clk_input_pin = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %3, i32 0, i32 10
  %7 = ptrtoint ptr %clk_input_pin to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clk_input_pin, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %8, label %do.end [
    i32 1, label %sw.bb2.sw.epilog13_crit_edge
    i32 0, label %sw.bb4
  ]

sw.bb2.sw.epilog13_crit_edge:                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog13

sw.bb4:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog13

do.end:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.23) #9
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog13

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24) #9
  br label %cleanup

sw.epilog13:                                      ; preds = %sw.bb7, %sw.bb4, %sw.bb2.sw.epilog13_crit_edge, %entry.sw.epilog13_crit_edge
  %pcr.0 = phi i32 [ 0, %sw.bb7 ], [ 3200, %sw.bb4 ], [ 3840, %entry.sw.epilog13_crit_edge ], [ 3840, %sw.bb2.sw.epilog13_crit_edge ]
  %and14 = and i32 %fmt, 15
  %12 = zext i32 %and14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %and14, label %do.end22 [
    i32 1, label %sw.bb15
    i32 4, label %sw.epilog13.sw.epilog25_crit_edge
    i32 5, label %sw.bb17
  ]

sw.epilog13.sw.epilog25_crit_edge:                ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog25

sw.bb15:                                          ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog25

sw.bb17:                                          ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog25

do.end22:                                         ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #8
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.24) #9
  br label %cleanup

sw.epilog25:                                      ; preds = %sw.bb17, %sw.bb15, %sw.epilog13.sw.epilog25_crit_edge
  %.sink = phi i32 [ 1, %sw.bb17 ], [ 0, %sw.epilog13.sw.epilog25_crit_edge ], [ 0, %sw.bb15 ]
  %inv_fs.1.off0 = phi i1 [ false, %sw.bb17 ], [ false, %sw.epilog13.sw.epilog25_crit_edge ], [ true, %sw.bb15 ]
  %mode18 = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %mode18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %mode18, align 4
  %and26 = lshr i32 %fmt, 8
  %14 = and i32 %and26, 15
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %14, label %sw.epilog25.cleanup_crit_edge [
    i32 0, label %sw.bb27
    i32 4, label %sw.bb29
    i32 2, label %sw.bb31
    i32 3, label %sw.epilog25.sw.epilog34_crit_edge
  ]

sw.epilog25.sw.epilog34_crit_edge:                ; preds = %sw.epilog25
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog34

sw.epilog25.cleanup_crit_edge:                    ; preds = %sw.epilog25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb27:                                          ; preds = %sw.epilog25
  call void @__sanitizer_cov_trace_pc() #8
  %or28 = or i32 %pcr.0, 3
  br label %sw.epilog34

sw.bb29:                                          ; preds = %sw.epilog25
  call void @__sanitizer_cov_trace_pc() #8
  %or30 = or i32 %pcr.0, 12
  br label %sw.epilog34

sw.bb31:                                          ; preds = %sw.epilog25
  call void @__sanitizer_cov_trace_pc() #8
  %or32 = or i32 %pcr.0, 15
  br label %sw.epilog34

sw.epilog34:                                      ; preds = %sw.bb31, %sw.bb29, %sw.bb27, %sw.epilog25.sw.epilog34_crit_edge
  %pcr.1 = phi i32 [ %pcr.0, %sw.epilog25.sw.epilog34_crit_edge ], [ %or32, %sw.bb31 ], [ %or30, %sw.bb29 ], [ %or28, %sw.bb27 ]
  %xor = xor i32 %pcr.1, 12
  %spec.select = select i1 %inv_fs.1.off0, i32 %xor, i32 %pcr.1
  %base.i = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 270470912) #6, !srcloc !101
  %pcr36 = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %3, i32 0, i32 5
  %18 = ptrtoint ptr %pcr36 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select, ptr %pcr36, align 4
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %20, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %spec.select) #6, !srcloc !101
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog34, %sw.epilog25.cleanup_crit_edge, %do.end22, %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end11 ], [ -22, %do.end22 ], [ 0, %sw.epilog34 ], [ -22, %do.end ], [ -22, %sw.epilog25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @davinci_i2s_shutdown(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %cmp.not = icmp eq i32 %5, 0
  %base.i.i = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !102
  %cond.i = select i1 %cmp.not, i32 -12648449, i32 -12582914
  %and1.i = and i32 %cond.i, %8
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %and1.i) #6, !srcloc !101
  %cond.i.i = select i1 %cmp.not, i32 2, i32 1
  %pcr.i.i = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %pcr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pcr.i.i, align 4
  %xor.i.i = xor i32 %12, %cond.i.i
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %xor.i.i) #6, !srcloc !101
  %15 = ptrtoint ptr %pcr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pcr.i.i, align 4
  %17 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %18, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %16) #6, !srcloc !101
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_i2s_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %base.i = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !102
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %7 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %6, 33554480
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i297 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i297, i32 %or) #6, !srcloc !101
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or2 = or i32 %6, 36700160
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i299 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i299, i32 %or2) #6, !srcloc !101
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %fmt3 = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %3, i32 0, i32 8
  %13 = ptrtoint ptr %fmt3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fmt3, align 4
  %and = and i32 %14, 61440
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.end.if.then.i.i_crit_edge

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.end.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %16, %if.end.if.then.i.i_crit_edge ], [ %19, %for.inc.i.i.if.then.i.i_crit_edge ]
  %17 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #6, !range !103
  %add.i.i = or i32 %17, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.end
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.1.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %arrayidx = getelementptr [11 x i8], ptr @asp_word_length, i32 0, i32 %retval.0.i.i
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %21 to i32
  %trunc = trunc i32 %and to i16
  %22 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.42)
  switch i16 %trunc, label %params_format.exit.cleanup_crit_edge [
    i16 16384, label %sw.bb
    i16 12288, label %sw.bb33
    i16 4096, label %sw.bb46
  ]

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %params_format.exit
  %clk = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %3, i32 0, i32 6
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk, align 4
  %call5 = tail call i32 @clk_get_rate(ptr noundef %24) #6
  %mul = shl nuw nsw i32 %conv, 11
  %shl = add nsw i32 %mul, -256
  %i2s_accurate_sck = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %3, i32 0, i32 11
  %25 = ptrtoint ptr %i2s_accurate_sck to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %i2s_accurate_sck, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not = icmp eq i8 %26, 0
  br i1 %tobool.not, label %if.else19, label %do.body.preheader

do.body.preheader:                                ; preds = %sw.bb
  %rate_num = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 9
  %27 = ptrtoint ptr %rate_num to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rate_num, align 4
  %rate_den = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 10
  %29 = ptrtoint ptr %rate_den to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rate_den, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %clk_div.0 = phi i32 [ %dec, %do.body.do.body_crit_edge ], [ 256, %do.body.preheader ]
  %dec = add nsw i32 %clk_div.0, -1
  %div = udiv i32 %call5, %dec
  %div8 = udiv i32 %div, %28
  %mul9 = mul i32 %30, %div8
  %31 = add i32 %mul9, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 4063, i32 %31)
  %32 = icmp ult i32 %31, 4063
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool14.not = icmp eq i32 %dec, 0
  %or.cond285 = select i1 %32, i1 true, i1 %tobool14.not
  br i1 %or.cond285, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dec15 = add i32 %clk_div.0, -2
  %sub16 = shl i32 %mul9, 16
  br label %if.end30

if.else19:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %mul20 = shl nuw nsw i32 %conv, 4
  %div21 = udiv i32 %call5, %mul20
  %rate_num22 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 9
  %33 = ptrtoint ptr %rate_num22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rate_num22, align 4
  %div23 = udiv i32 %div21, %34
  %rate_den24 = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 10
  %35 = ptrtoint ptr %rate_den24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rate_den24, align 4
  %mul25 = mul i32 %36, %div23
  %sub27 = shl nuw nsw i32 %conv, 20
  br label %if.end30

if.end30:                                         ; preds = %if.else19, %do.end
  %clk_div.1 = phi i32 [ %dec15, %do.end ], [ %mul25, %if.else19 ]
  %shl17.pn.in = phi i32 [ %sub16, %do.end ], [ %sub27, %if.else19 ]
  %shl17.pn = add i32 %shl17.pn.in, -65536
  %and31 = and i32 %clk_div.1, 255
  %or6 = or i32 %shl, %and31
  %srgr.0 = or i32 %or6, %shl17.pn
  %or32 = or i32 %srgr.0, 805306368
  br label %sw.epilog

sw.bb33:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  %clk_div34 = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %3, i32 0, i32 9
  %37 = ptrtoint ptr %clk_div34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %clk_div34, align 4
  %sub35 = add i32 %38, 255
  %mul36 = shl nuw nsw i32 %conv, 11
  %shl38 = add nsw i32 %mul36, -256
  %mul40 = shl nuw nsw i32 %conv, 20
  %shl42 = add nsw i32 %mul40, -65536
  %and44 = and i32 %sub35, 255
  %or39 = or i32 %shl42, %shl38
  %or43 = or i32 %or39, %and44
  %or45 = or i32 %or43, 268435456
  br label %sw.epilog

sw.bb46:                                          ; preds = %params_format.exit
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 0
  %openmin.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 0, i32 2
  %39 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i = load i8, ptr %openmin.i, align 4
  %40 = and i8 %bf.load.i, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %40)
  %41 = icmp eq i8 %40, -128
  %max.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 0, i32 1
  %retval.0.in.i = select i1 %41, ptr %max.i, ptr %arrayidx.i
  %42 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %retval.0.i300 = load i32, ptr %retval.0.in.i, align 4
  %sub49 = shl i32 %retval.0.i300, 8
  %shl50 = add i32 %sub49, -256
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @davinci_i2s_hw_params.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@davinci_i2s_hw_params, %if.then57)) #6
          to label %do.end62 [label %if.then57], !srcloc !105

if.then57:                                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load.i302 = load i8, ptr %openmin.i, align 4
  %44 = and i8 %bf.load.i302, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %44)
  %45 = icmp eq i8 %44, -128
  %retval.0.in.i304 = select i1 %45, ptr %max.i, ptr %arrayidx.i
  %46 = ptrtoint ptr %retval.0.in.i304 to i32
  call void @__asan_load4_noabort(i32 %46)
  %retval.0.i305 = load i32, ptr %retval.0.in.i304, align 4
  %sub59 = add i32 %retval.0.i305, -1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @davinci_i2s_hw_params.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef 443, i32 noundef %sub59) #6
  br label %do.end62

do.end62:                                         ; preds = %if.then57, %sw.bb46
  %arrayidx.i306 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 1
  %openmin.i307 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 1, i32 2
  %47 = ptrtoint ptr %openmin.i307 to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load.i308 = load i8, ptr %openmin.i307, align 4
  %48 = and i8 %bf.load.i308, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %48)
  %49 = icmp eq i8 %48, -128
  %max.i309 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 1, i32 1
  %retval.0.in.i310 = select i1 %49, ptr %max.i309, ptr %arrayidx.i306
  %50 = ptrtoint ptr %retval.0.in.i310 to i32
  call void @__asan_load4_noabort(i32 %50)
  %retval.0.i311 = load i32, ptr %retval.0.in.i310, align 4
  %sub65 = shl i32 %retval.0.i311, 16
  %shl66 = add i32 %sub65, -65536
  %or51 = or i32 %shl50, %shl66
  %or67 = or i32 %or51, 268435456
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end62, %sw.bb33, %if.end30
  %srgr.1 = phi i32 [ %or67, %do.end62 ], [ %or45, %sw.bb33 ], [ %or32, %if.end30 ]
  %51 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i, align 4
  %add.ptr.i313 = getelementptr i8, ptr %52, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i313, i32 %srgr.1) #6, !srcloc !101
  %mode = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %3, i32 0, i32 4
  %53 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp68 = icmp eq i32 %54, 1
  %. = select i1 %cmp68, i32 262144, i32 327680
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i.i315 = icmp eq i32 %56, 0
  br i1 %tobool.not.i.i315, label %for.inc.i.i322, label %sw.epilog.params_format.exit324_crit_edge

sw.epilog.params_format.exit324_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_format.exit324

for.inc.i.i322:                                   ; preds = %sw.epilog
  %arrayidx.1.i.i320 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %57 = ptrtoint ptr %arrayidx.1.i.i320 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.1.i.i320, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.1.i.i321 = icmp eq i32 %58, 0
  br i1 %tobool.not.1.i.i321, label %for.inc.i.i322.lor.lhs.false80_crit_edge, label %for.inc.i.i322.params_format.exit324_crit_edge

for.inc.i.i322.params_format.exit324_crit_edge:   ; preds = %for.inc.i.i322
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_format.exit324

for.inc.i.i322.lor.lhs.false80_crit_edge:         ; preds = %for.inc.i.i322
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false80

params_format.exit324:                            ; preds = %for.inc.i.i322.params_format.exit324_crit_edge, %sw.epilog.params_format.exit324_crit_edge
  %i.09.lcssa.i.i316 = phi i32 [ 0, %sw.epilog.params_format.exit324_crit_edge ], [ 32, %for.inc.i.i322.params_format.exit324_crit_edge ]
  %.lcssa.i.i317 = phi i32 [ %56, %sw.epilog.params_format.exit324_crit_edge ], [ %58, %for.inc.i.i322.params_format.exit324_crit_edge ]
  %59 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i317, i1 true) #6, !range !103
  %add.i.i318 = or i32 %59, %i.09.lcssa.i.i316
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %add.i.i318)
  %cmp78 = icmp ugt i32 %add.i.i318, 10
  br i1 %cmp78, label %params_format.exit324.do.end86_crit_edge, label %params_format.exit324.lor.lhs.false80_crit_edge

params_format.exit324.lor.lhs.false80_crit_edge:  ; preds = %params_format.exit324
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false80

params_format.exit324.do.end86_crit_edge:         ; preds = %params_format.exit324
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end86

lor.lhs.false80:                                  ; preds = %params_format.exit324.lor.lhs.false80_crit_edge, %for.inc.i.i322.lor.lhs.false80_crit_edge
  %retval.0.i.i323333 = phi i32 [ %add.i.i318, %params_format.exit324.lor.lhs.false80_crit_edge ], [ 0, %for.inc.i.i322.lor.lhs.false80_crit_edge ]
  %60 = lshr i32 1018, %retval.0.i.i323333
  %61 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool82.not.not = icmp eq i32 %61, 0
  br i1 %tobool82.not.not, label %if.end89, label %lor.lhs.false80.do.end86_crit_edge

lor.lhs.false80.do.end86_crit_edge:               ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end86

do.end86:                                         ; preds = %lor.lhs.false80.do.end86_crit_edge, %params_format.exit324.do.end86_crit_edge
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #9
  br label %cleanup

if.end89:                                         ; preds = %lor.lhs.false80
  %arrayidx.i.i325 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %62 = ptrtoint ptr %arrayidx.i.i325 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i.i325, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp91 = icmp eq i32 %63, 2
  br i1 %cmp91, label %if.then93, label %if.end89.if.end116_crit_edge

if.end89.if.end116_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = add nsw i32 %and, -4096
  %.pre337 = lshr exact i32 %.pre, 12
  br label %if.end116

if.then93:                                        ; preds = %if.end89
  %arrayidx94 = getelementptr [11 x i8], ptr @double_fmt, i32 0, i32 %retval.0.i.i323333
  %64 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx94, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool96.not = icmp eq i8 %65, 0
  br i1 %tobool96.not, label %if.then93.if.end101_crit_edge, label %land.lhs.true

if.then93.if.end101_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

land.lhs.true:                                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  %conv95 = zext i8 %65 to i32
  %enable_channel_combine = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %3, i32 0, i32 7
  %66 = ptrtoint ptr %enable_channel_combine to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load = load i8, ptr %enable_channel_combine, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool97.not = icmp sgt i8 %bf.load, -1
  %spec.select = select i1 %tobool97.not, i32 %retval.0.i.i323333, i32 %conv95
  %spec.select286 = select i1 %tobool97.not, i32 2, i32 1
  br label %if.end101

if.end101:                                        ; preds = %land.lhs.true, %if.then93.if.end101_crit_edge
  %fmt.0 = phi i32 [ %retval.0.i.i323333, %if.then93.if.end101_crit_edge ], [ %spec.select, %land.lhs.true ]
  %element_cnt.0 = phi i32 [ 2, %if.then93.if.end101_crit_edge ], [ %spec.select286, %land.lhs.true ]
  %67 = add nsw i32 %and, -4096
  %68 = lshr exact i32 %67, 12
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %68, label %if.end101.cleanup_crit_edge [
    i32 3, label %if.end101.sw.bb102_crit_edge
    i32 1, label %if.end101.sw.bb102_crit_edge339
    i32 0, label %if.end101.sw.bb107_crit_edge
    i32 2, label %if.end101.sw.bb107_crit_edge340
  ]

if.end101.sw.bb107_crit_edge340:                  ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107

if.end101.sw.bb107_crit_edge:                     ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb107

if.end101.sw.bb102_crit_edge339:                  ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb102

if.end101.sw.bb102_crit_edge:                     ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb102

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb102:                                         ; preds = %if.end101.sw.bb102_crit_edge, %if.end101.sw.bb102_crit_edge339
  %or105 = or i32 %., -2147483648
  br label %if.end116

sw.bb107:                                         ; preds = %if.end101.sw.bb107_crit_edge, %if.end101.sw.bb107_crit_edge340
  %sub108 = shl nuw nsw i32 %element_cnt.0, 24
  %shl109 = add nsw i32 %sub108, -16777216
  %or110 = or i32 %shl109, %.
  br label %if.end116

if.end116:                                        ; preds = %sw.bb107, %sw.bb102, %if.end89.if.end116_crit_edge
  %.pre-phi338 = phi i32 [ %.pre337, %if.end89.if.end116_crit_edge ], [ %68, %sw.bb102 ], [ %68, %sw.bb107 ]
  %fmt.1 = phi i32 [ %retval.0.i.i323333, %if.end89.if.end116_crit_edge ], [ %fmt.0, %sw.bb102 ], [ %fmt.0, %sw.bb107 ]
  %element_cnt.1 = phi i32 [ 1, %if.end89.if.end116_crit_edge ], [ %element_cnt.0, %sw.bb102 ], [ %element_cnt.0, %sw.bb107 ]
  %xcr.1 = phi i32 [ %., %if.end89.if.end116_crit_edge ], [ %or105, %sw.bb102 ], [ %or110, %sw.bb107 ]
  %arrayidx117 = getelementptr [11 x i8], ptr @asp_word_length, i32 0, i32 %fmt.1
  %70 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx117, align 1
  %conv118 = zext i8 %71 to i32
  %72 = zext i32 %.pre-phi338 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %.pre-phi338, label %if.end116.cleanup_crit_edge [
    i32 3, label %if.end116.sw.epilog130_crit_edge
    i32 1, label %if.end116.sw.epilog130_crit_edge341
    i32 0, label %if.end116.sw.bb122_crit_edge
    i32 2, label %if.end116.sw.bb122_crit_edge342
  ]

if.end116.sw.bb122_crit_edge342:                  ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb122

if.end116.sw.bb122_crit_edge:                     ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb122

if.end116.sw.epilog130_crit_edge341:              ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog130

if.end116.sw.epilog130_crit_edge:                 ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog130

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb122:                                         ; preds = %if.end116.sw.bb122_crit_edge, %if.end116.sw.bb122_crit_edge342
  %sub123 = shl nuw nsw i32 %element_cnt.1, 8
  %shl124 = add nsw i32 %sub123, -256
  %or125 = or i32 %shl124, %xcr.1
  br label %sw.epilog130

sw.epilog130:                                     ; preds = %sw.bb122, %if.end116.sw.epilog130_crit_edge, %if.end116.sw.epilog130_crit_edge341
  %xcr.2 = phi i32 [ %or125, %sw.bb122 ], [ %xcr.1, %if.end116.sw.epilog130_crit_edge ], [ %xcr.1, %if.end116.sw.epilog130_crit_edge341 ]
  %shl131 = shl nuw nsw i32 %conv118, 5
  %shl132 = shl nuw nsw i32 %conv118, 21
  %or133 = or i32 %shl131, %shl132
  %or134 = or i32 %xcr.2, %or133
  %73 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp140 = icmp eq i32 %74, 0
  %75 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i, align 4
  br i1 %cmp140, label %if.then142, label %if.else143

if.then142:                                       ; preds = %sw.epilog130
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i327 = getelementptr i8, ptr %76, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i327, i32 %or134) #6, !srcloc !101
  br label %do.body145

if.else143:                                       ; preds = %sw.epilog130
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i329 = getelementptr i8, ptr %76, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i329, i32 %or134) #6, !srcloc !101
  br label %do.body145

do.body145:                                       ; preds = %if.else143, %if.then142
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @davinci_i2s_hw_params.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@davinci_i2s_hw_params, %if.then157)) #6
          to label %do.body161 [label %if.then157], !srcloc !105

if.then157:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @davinci_i2s_hw_params.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.32, i32 noundef 519, i32 noundef %srgr.1) #6
  br label %do.body161

do.body161:                                       ; preds = %if.then157, %do.body145
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @davinci_i2s_hw_params.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@davinci_i2s_hw_params, %if.then173)) #6
          to label %do.body177 [label %if.then173], !srcloc !105

if.then173:                                       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @davinci_i2s_hw_params.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.32, i32 noundef 520, i32 noundef %or134) #6
  br label %do.body177

do.body177:                                       ; preds = %if.then173, %do.body161
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @davinci_i2s_hw_params.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@davinci_i2s_hw_params, %if.then189)) #6
          to label %cleanup [label %if.then189], !srcloc !105

if.then189:                                       ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @davinci_i2s_hw_params.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.32, i32 noundef 521, i32 noundef %or134) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then189, %do.body177, %if.end116.cleanup_crit_edge, %if.end101.cleanup_crit_edge, %do.end86, %params_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end86 ], [ -22, %params_format.exit.cleanup_crit_edge ], [ -22, %if.end101.cleanup_crit_edge ], [ -22, %if.end116.cleanup_crit_edge ], [ 0, %if.then189 ], [ 0, %do.body177 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_i2s_prepare(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %cond = select i1 %cmp, i32 65536, i32 1
  %base.i.i = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !102
  %cond.i = select i1 %cmp, i32 -12648449, i32 -12582914
  %and1.i = and i32 %cond.i, %8
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %and1.i) #6, !srcloc !101
  %cond.i.i = select i1 %cmp, i32 2, i32 1
  %pcr.i.i = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %pcr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pcr.i.i, align 4
  %xor.i.i = xor i32 %12, %cond.i.i
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %xor.i.i) #6, !srcloc !101
  %15 = ptrtoint ptr %pcr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pcr.i.i, align 4
  %17 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %18, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %16) #6, !srcloc !101
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !102
  %and = and i32 %21, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %neg = xor i32 %cond, -1
  %and3 = and i32 %21, %neg
  %22 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %and3) #6, !srcloc !101
  %24 = ptrtoint ptr %pcr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pcr.i.i, align 4
  %xor.i = xor i32 %25, %cond.i.i
  %26 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %27, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i42, i32 %xor.i) #6, !srcloc !101
  %28 = ptrtoint ptr %pcr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pcr.i.i, align 4
  %30 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %31, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %29) #6, !srcloc !101
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %32 = ptrtoint ptr %pcr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pcr.i.i, align 4
  %and4 = and i32 %33, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %21, 4194304
  %34 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %or) #6, !srcloc !101
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  br i1 %cmp, label %if.then9, label %if.end7.if.end14_crit_edge

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %37, i32 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #6, !srcloc !102
  %or11 = or i32 %38, 65536
  %39 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %40, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %or11) #6, !srcloc !101
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 21474800) #6
  %42 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %43, i32 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #6, !srcloc !102
  %and13 = and i32 %44, -65537
  %45 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %46, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %and13) #6, !srcloc !101
  %47 = ptrtoint ptr %pcr.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pcr.i.i, align 4
  %xor.i56 = xor i32 %48, %cond.i.i
  %49 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i58 = getelementptr i8, ptr %50, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i58, i32 %xor.i56) #6, !srcloc !101
  %51 = ptrtoint ptr %pcr.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pcr.i.i, align 4
  %53 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i6.i59 = getelementptr i8, ptr %54, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i59, i32 %52) #6, !srcloc !101
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end7.if.end14_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_i2s_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge8
    i32 4, label %entry.sw.bb_crit_edge9
    i32 0, label %entry.sw.bb1_crit_edge
    i32 5, label %entry.sw.bb1_crit_edge10
    i32 3, label %entry.sw.bb1_crit_edge11
  ]

entry.sw.bb1_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge8:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge8, %entry.sw.bb_crit_edge9
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %5 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  %cond.i = select i1 %cmp.i, i32 65536, i32 1
  %base.i.i = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !102
  %or.i = or i32 %9, %cond.i
  %pcr.i = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %pcr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pcr.i, align 4
  %and.i = and i32 %11, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %or2.i = or i32 %or.i, 8388608
  %spec.select.i = select i1 %tobool1.not.i, i32 %or.i, i32 %or2.i
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %spec.select.i) #6, !srcloc !101
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge10, %entry.sw.bb1_crit_edge11
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %14 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not = icmp eq i32 %15, 0
  %base.i.i4 = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %base.i.i4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i4, align 4
  %add.ptr.i.i5 = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5) #6, !srcloc !102
  %cond.i6 = select i1 %cmp.not, i32 -12648449, i32 -12582914
  %and1.i = and i32 %cond.i6, %18
  %19 = ptrtoint ptr %base.i.i4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i4, align 4
  %add.ptr.i8.i7 = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i7, i32 %and1.i) #6, !srcloc !101
  %cond.i.i = select i1 %cmp.not, i32 2, i32 1
  %pcr.i.i = getelementptr inbounds %struct.davinci_mcbsp_dev, ptr %3, i32 0, i32 5
  %21 = ptrtoint ptr %pcr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pcr.i.i, align 4
  %xor.i.i = xor i32 %22, %cond.i.i
  %23 = ptrtoint ptr %base.i.i4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i4, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %xor.i.i) #6, !srcloc !101
  %25 = ptrtoint ptr %pcr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pcr.i.i, align 4
  %27 = ptrtoint ptr %base.i.i4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i4, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %28, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %26) #6, !srcloc !101
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !33, !34, !35, !37, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !80, !81, !83, !84, !86, !88, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__initcall__kmod_snd_soc_davinci_asp__244_765_davinci_mcbsp_driver_init6, !1, !"__initcall__kmod_snd_soc_davinci_asp__244_765_davinci_mcbsp_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/ti/davinci-i2s.c", i32 765, i32 1}
!2 = !{ptr @__exitcall_davinci_mcbsp_driver_exit, !1, !"__exitcall_davinci_mcbsp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author245, !4, !"__UNIQUE_ID_author245", i1 false, i1 false}
!4 = !{!"../sound/soc/ti/davinci-i2s.c", i32 767, i32 1}
!5 = !{ptr @__UNIQUE_ID_description246, !6, !"__UNIQUE_ID_description246", i1 false, i1 false}
!6 = !{!"../sound/soc/ti/davinci-i2s.c", i32 768, i32 1}
!7 = !{ptr @__UNIQUE_ID_file247, !8, !"__UNIQUE_ID_file247", i1 false, i1 false}
!8 = !{!"../sound/soc/ti/davinci-i2s.c", i32 769, i32 1}
!9 = !{ptr @__UNIQUE_ID_license248, !8, !"__UNIQUE_ID_license248", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/ti/davinci-i2s.c", i32 760, i32 11}
!12 = !{ptr @davinci_mcbsp_driver, !13, !"davinci_mcbsp_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/ti/davinci-i2s.c", i32 756, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/ti/davinci-i2s.c", i32 655, i32 59}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/ti/davinci-i2s.c", i32 657, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @davinci_i2s_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @davinci_i2s_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/ti/davinci-i2s.c", i32 661, i32 4}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @davinci_i2s_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @davinci_i2s_probe._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/ti/davinci-i2s.c", i32 687, i32 27}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/ti/davinci-i2s.c", i32 689, i32 3}
!33 = !{ptr @davinci_i2s_probe._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @davinci_i2s_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/ti/davinci-i2s.c", i32 702, i32 27}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/ti/davinci-i2s.c", i32 704, i32 3}
!39 = !{ptr @davinci_i2s_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @davinci_i2s_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/ti/davinci-i2s.c", i32 723, i32 3}
!43 = !{ptr @davinci_i2s_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @davinci_i2s_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/ti/davinci-i2s.c", i32 643, i32 11}
!47 = !{ptr @davinci_i2s_component, !48, !"davinci_i2s_component", i1 false, i1 false}
!48 = !{!"../sound/soc/ti/davinci-i2s.c", i32 642, i32 46}
!49 = !{ptr @davinci_i2s_dai, !50, !"davinci_i2s_dai", i1 false, i1 false}
!50 = !{!"../sound/soc/ti/davinci-i2s.c", i32 624, i32 34}
!51 = !{ptr @davinci_i2s_dai_ops, !52, !"davinci_i2s_dai_ops", i1 false, i1 false}
!52 = !{!"../sound/soc/ti/davinci-i2s.c", i32 604, i32 37}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/ti/davinci-i2s.c", i32 258, i32 4}
!55 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @davinci_i2s_set_dai_fmt._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @davinci_i2s_set_dai_fmt._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/ti/davinci-i2s.c", i32 268, i32 3}
!60 = !{ptr @davinci_i2s_set_dai_fmt._entry.25, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @davinci_i2s_set_dai_fmt._entry_ptr.27, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/ti/davinci-i2s.c", i32 300, i32 3}
!64 = !{ptr @davinci_i2s_set_dai_fmt._entry.28, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @davinci_i2s_set_dai_fmt._entry_ptr.30, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/ti/davinci-i2s.c", i32 442, i32 3}
!68 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @davinci_i2s_hw_params.__UNIQUE_ID_ddebug240, !67, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/ti/davinci-i2s.c", i32 465, i32 3}
!73 = !{ptr @davinci_i2s_hw_params._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @davinci_i2s_hw_params._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/ti/davinci-i2s.c", i32 519, i32 2}
!77 = !{ptr @davinci_i2s_hw_params.__UNIQUE_ID_ddebug241, !76, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/ti/davinci-i2s.c", i32 520, i32 2}
!80 = !{ptr @davinci_i2s_hw_params.__UNIQUE_ID_ddebug242, !79, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/ti/davinci-i2s.c", i32 521, i32 2}
!83 = !{ptr @davinci_i2s_hw_params.__UNIQUE_ID_ddebug243, !82, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!84 = !{ptr @asp_word_length, !85, !"asp_word_length", i1 false, i1 false}
!85 = !{!"../sound/soc/ti/davinci-i2s.c", i32 117, i32 28}
!86 = distinct !{null, !87, !"data_type", i1 false, i1 false}
!87 = !{!"../sound/soc/ti/davinci-i2s.c", i32 111, i32 28}
!88 = !{ptr @double_fmt, !89, !"double_fmt", i1 false, i1 false}
!89 = !{!"../sound/soc/ti/davinci-i2s.c", i32 123, i32 28}
!90 = !{ptr @davinci_i2s_match, !91, !"davinci_i2s_match", i1 false, i1 false}
!91 = !{!"../sound/soc/ti/davinci-i2s.c", i32 750, i32 34}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i64 5191651}
!102 = !{i64 5192069}
!103 = !{i32 0, i32 33}
!104 = !{i8 0, i8 2}
!105 = !{i64 2148974401, i64 2148974406, i64 2148974419, i64 2148974463, i64 2148974497, i64 2148974518}
