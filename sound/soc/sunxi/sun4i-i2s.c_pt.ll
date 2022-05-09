; ModuleID = '/llk/IR_all_yes/sound/soc/sunxi/sun4i-i2s.c_pt.bc'
source_filename = "../sound/soc/sunxi/sun4i-i2s.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.sun4i_i2s_quirks = type { i8, i32, ptr, %struct.reg_field, %struct.reg_field, %struct.reg_field, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.sun4i_i2s_clk_div = type { i8, i8 }
%struct.reg_default = type { i32, i32 }
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
%struct.sun4i_i2s = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data, ptr, ptr, ptr, ptr }
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

@__initcall__kmod_sun4i_i2s__241_1627_sun4i_i2s_driver_init6 = internal global ptr @sun4i_i2s_driver_init, section ".initcall6.init", align 4
@sun4i_i2s_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun4i_i2s_probe, ptr @sun4i_i2s_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_i2s_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_i2s_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun4i_i2s_driver_exit = internal global ptr @sun4i_i2s_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author242 = internal constant [57 x i8] c"sun4i_i2s.author=Andrea Venturi <be17068@iperbole.bo.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [66 x i8] c"sun4i_i2s.author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [47 x i8] c"sun4i_i2s.description=Allwinner A10 I2S driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [41 x i8] c"sun4i_i2s.file=sound/soc/sunxi/sun4i-i2s\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [22 x i8] c"sun4i_i2s.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sun4i-i2s\00", [22 x i8] zeroinitializer }, align 32
@sun4i_i2s_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_i2s_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_a31_i2s_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a83t_i2s_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_i2s_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-codec-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_codec_i2s_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h6_i2s_quirks }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@sun4i_i2s_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_i2s_runtime_suspend, ptr @sun4i_i2s_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@sun4i_i2s_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1483, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to determine the quirks to use\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sun4i_i2s_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/sunxi/sun4i-i2s.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun4i_i2s_probe._entry_ptr = internal global ptr @sun4i_i2s_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"apb\00", [28 x i8] zeroinitializer }, align 32
@sun4i_i2s_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1489, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can't get our bus clock\0A\00", [39 x i8] zeroinitializer }, align 32
@sun4i_i2s_probe._entry_ptr.9 = internal global ptr @sun4i_i2s_probe._entry.7, section ".printk_index", align 4
@sun4i_i2s_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"sun4i_i2s:1494:(i2s->variant->sun4i_i2s_regmap)->lock\00", [42 x i8] zeroinitializer }, align 32
@sun4i_i2s_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1496, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Regmap initialisation failed\0A\00", [34 x i8] zeroinitializer }, align 32
@sun4i_i2s_probe._entry_ptr.13 = internal global ptr @sun4i_i2s_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mod\00", [28 x i8] zeroinitializer }, align 32
@sun4i_i2s_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1502, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can't get our mod clock\0A\00", [39 x i8] zeroinitializer }, align 32
@sun4i_i2s_probe._entry_ptr.17 = internal global ptr @sun4i_i2s_probe._entry.15, section ".printk_index", align 4
@sun4i_i2s_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1509, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get reset control\0A\00", [35 x i8] zeroinitializer }, align 32
@sun4i_i2s_probe._entry_ptr.20 = internal global ptr @sun4i_i2s_probe._entry.18, section ".printk_index", align 4
@sun4i_i2s_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1518, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to deassert the reset control\0A\00", [58 x i8] zeroinitializer }, align 32
@sun4i_i2s_probe._entry_ptr.23 = internal global ptr @sun4i_i2s_probe._entry.21, section ".printk_index", align 4
@sun4i_i2s_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 1539, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Could not initialise regmap fields\0A\00", [60 x i8] zeroinitializer }, align 32
@sun4i_i2s_probe._entry_ptr.26 = internal global ptr @sun4i_i2s_probe._entry.24, section ".printk_index", align 4
@sun4i_i2s_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 1545, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Could not register PCM\0A\00", [40 x i8] zeroinitializer }, align 32
@sun4i_i2s_probe._entry_ptr.29 = internal global ptr @sun4i_i2s_probe._entry.27, section ".printk_index", align 4
@sun4i_i2s_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.41, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@sun4i_i2s_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @sun4i_i2s_dai_probe, ptr null, ptr null, ptr null, ptr @sun4i_i2s_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.42, i64 33554500, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.43, i64 33554500, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@sun4i_i2s_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1553, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Could not register DAI\0A\00", [40 x i8] zeroinitializer }, align 32
@sun4i_i2s_probe._entry_ptr.32 = internal global ptr @sun4i_i2s_probe._entry.30, section ".printk_index", align 4
@sun4i_i2s_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 1268, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable bus clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sun4i_i2s_runtime_resume\00", [39 x i8] zeroinitializer }, align 32
@sun4i_i2s_runtime_resume._entry_ptr = internal global ptr @sun4i_i2s_runtime_resume._entry, section ".printk_index", align 4
@sun4i_i2s_runtime_resume._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 1277, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to sync regmap cache\0A\00", [35 x i8] zeroinitializer }, align 32
@sun4i_i2s_runtime_resume._entry_ptr.37 = internal global ptr @sun4i_i2s_runtime_resume._entry.35, section ".printk_index", align 4
@sun4i_i2s_runtime_resume._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.3, i32 1292, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable module clock\0A\00", [33 x i8] zeroinitializer }, align 32
@sun4i_i2s_runtime_resume._entry_ptr.40 = internal global ptr @sun4i_i2s_runtime_resume._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sun4i-dai\00", [22 x i8] zeroinitializer }, align 32
@sun4i_i2s_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @sun4i_i2s_set_sysclk, ptr null, ptr null, ptr null, ptr @sun4i_i2s_set_fmt, ptr null, ptr @sun4i_i2s_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_i2s_hw_params, ptr null, ptr null, ptr @sun4i_i2s_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@sun4i_i2s_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 930, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unsupported format configuration\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sun4i_i2s_set_fmt\00", [46 x i8] zeroinitializer }, align 32
@sun4i_i2s_set_fmt._entry_ptr = internal global ptr @sun4i_i2s_set_fmt._entry, section ".printk_index", align 4
@sun4i_i2s_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 595, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid channel configuration\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sun4i_i2s_hw_params\00", [44 x i8] zeroinitializer }, align 32
@sun4i_i2s_hw_params._entry_ptr = internal global ptr @sun4i_i2s_hw_params._entry, section ".printk_index", align 4
@sun4i_i2s_hw_params._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.3, i32 615, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unsupported physical sample width: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@sun4i_i2s_hw_params._entry_ptr.50 = internal global ptr @sun4i_i2s_hw_params._entry.48, section ".printk_index", align 4
@sun4i_i2s_set_clk_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 358, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported sample rate: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sun4i_i2s_set_clk_rate\00", [41 x i8] zeroinitializer }, align 32
@sun4i_i2s_set_clk_rate._entry_ptr = internal global ptr @sun4i_i2s_set_clk_rate._entry, section ".printk_index", align 4
@sun4i_i2s_set_clk_rate._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.3, i32 369, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unsupported oversample rate: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@sun4i_i2s_set_clk_rate._entry_ptr.55 = internal global ptr @sun4i_i2s_set_clk_rate._entry.53, section ".printk_index", align 4
@sun4i_i2s_set_clk_rate._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.3, i32 377, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported BCLK divider: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@sun4i_i2s_set_clk_rate._entry_ptr.58 = internal global ptr @sun4i_i2s_set_clk_rate._entry.56, section ".printk_index", align 4
@sun4i_i2s_set_clk_rate._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.52, ptr @.str.3, i32 383, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported MCLK divider: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@sun4i_i2s_set_clk_rate._entry_ptr.61 = internal global ptr @sun4i_i2s_set_clk_rate._entry.59, section ".printk_index", align 4
@sun4i_a10_i2s_quirks = internal constant { %struct.sun4i_i2s_quirks, [52 x i8] } { %struct.sun4i_i2s_quirks { i8 0, i32 12, ptr @sun4i_i2s_regmap_config, %struct.reg_field { i32 36, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 2, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 4, i32 5, i32 0, i32 0 }, ptr @sun4i_i2s_bclk_div, i32 6, ptr @sun4i_i2s_mclk_div, i32 8, ptr @sun4i_i2s_get_bclk_parent_rate, ptr @sun4i_i2s_get_sr, ptr @sun4i_i2s_get_wss, ptr @sun4i_i2s_set_chan_cfg, ptr @sun4i_i2s_set_soc_fmt }, [52 x i8] zeroinitializer }, align 32
@sun6i_a31_i2s_quirks = internal constant { %struct.sun4i_i2s_quirks, [52 x i8] } { %struct.sun4i_i2s_quirks { i8 1, i32 12, ptr @sun4i_i2s_regmap_config, %struct.reg_field { i32 36, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 2, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 4, i32 5, i32 0, i32 0 }, ptr @sun4i_i2s_bclk_div, i32 6, ptr @sun4i_i2s_mclk_div, i32 8, ptr @sun4i_i2s_get_bclk_parent_rate, ptr @sun4i_i2s_get_sr, ptr @sun4i_i2s_get_wss, ptr @sun4i_i2s_set_chan_cfg, ptr @sun4i_i2s_set_soc_fmt }, [52 x i8] zeroinitializer }, align 32
@sun8i_a83t_i2s_quirks = internal constant { %struct.sun4i_i2s_quirks, [52 x i8] } { %struct.sun4i_i2s_quirks { i8 1, i32 32, ptr @sun4i_i2s_regmap_config, %struct.reg_field { i32 36, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 2, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 4, i32 5, i32 0, i32 0 }, ptr @sun4i_i2s_bclk_div, i32 6, ptr @sun4i_i2s_mclk_div, i32 8, ptr @sun4i_i2s_get_bclk_parent_rate, ptr @sun4i_i2s_get_sr, ptr @sun4i_i2s_get_wss, ptr @sun4i_i2s_set_chan_cfg, ptr @sun4i_i2s_set_soc_fmt }, [52 x i8] zeroinitializer }, align 32
@sun8i_h3_i2s_quirks = internal constant { %struct.sun4i_i2s_quirks, [52 x i8] } { %struct.sun4i_i2s_quirks { i8 1, i32 32, ptr @sun8i_i2s_regmap_config, %struct.reg_field { i32 36, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 4, i32 6, i32 0, i32 0 }, ptr @sun8i_i2s_clk_div, i32 15, ptr @sun8i_i2s_clk_div, i32 15, ptr @sun8i_i2s_get_bclk_parent_rate, ptr @sun8i_i2s_get_sr_wss, ptr @sun8i_i2s_get_sr_wss, ptr @sun8i_i2s_set_chan_cfg, ptr @sun8i_i2s_set_soc_fmt }, [52 x i8] zeroinitializer }, align 32
@sun50i_a64_codec_i2s_quirks = internal constant { %struct.sun4i_i2s_quirks, [52 x i8] } { %struct.sun4i_i2s_quirks { i8 1, i32 32, ptr @sun4i_i2s_regmap_config, %struct.reg_field { i32 36, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 2, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 4, i32 5, i32 0, i32 0 }, ptr @sun4i_i2s_bclk_div, i32 6, ptr @sun4i_i2s_mclk_div, i32 8, ptr @sun4i_i2s_get_bclk_parent_rate, ptr @sun4i_i2s_get_sr, ptr @sun4i_i2s_get_wss, ptr @sun4i_i2s_set_chan_cfg, ptr @sun4i_i2s_set_soc_fmt }, [52 x i8] zeroinitializer }, align 32
@sun50i_h6_i2s_quirks = internal constant { %struct.sun4i_i2s_quirks, [52 x i8] } { %struct.sun4i_i2s_quirks { i8 1, i32 32, ptr @sun50i_h6_i2s_regmap_config, %struct.reg_field { i32 36, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 4, i32 6, i32 0, i32 0 }, ptr @sun8i_i2s_clk_div, i32 15, ptr @sun8i_i2s_clk_div, i32 15, ptr @sun8i_i2s_get_bclk_parent_rate, ptr @sun8i_i2s_get_sr_wss, ptr @sun8i_i2s_get_sr_wss, ptr @sun50i_h6_i2s_set_chan_cfg, ptr @sun50i_h6_i2s_set_soc_fmt }, [52 x i8] zeroinitializer }, align 32
@sun4i_i2s_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @sun4i_i2s_wr_reg, ptr @sun4i_i2s_rd_reg, ptr @sun4i_i2s_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 60, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_i2s_reg_defaults, i32 10, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@sun4i_i2s_bclk_div = internal constant { [6 x %struct.sun4i_i2s_clk_div], [20 x i8] } { [6 x %struct.sun4i_i2s_clk_div] [%struct.sun4i_i2s_clk_div { i8 2, i8 0 }, %struct.sun4i_i2s_clk_div { i8 4, i8 1 }, %struct.sun4i_i2s_clk_div { i8 6, i8 2 }, %struct.sun4i_i2s_clk_div { i8 8, i8 3 }, %struct.sun4i_i2s_clk_div { i8 12, i8 4 }, %struct.sun4i_i2s_clk_div { i8 16, i8 5 }], [20 x i8] zeroinitializer }, align 32
@sun4i_i2s_mclk_div = internal constant { [8 x %struct.sun4i_i2s_clk_div], [16 x i8] } { [8 x %struct.sun4i_i2s_clk_div] [%struct.sun4i_i2s_clk_div { i8 1, i8 0 }, %struct.sun4i_i2s_clk_div { i8 2, i8 1 }, %struct.sun4i_i2s_clk_div { i8 4, i8 2 }, %struct.sun4i_i2s_clk_div { i8 6, i8 3 }, %struct.sun4i_i2s_clk_div { i8 8, i8 4 }, %struct.sun4i_i2s_clk_div { i8 12, i8 5 }, %struct.sun4i_i2s_clk_div { i8 16, i8 6 }, %struct.sun4i_i2s_clk_div { i8 24, i8 7 }], [16 x i8] zeroinitializer }, align 32
@sun4i_i2s_reg_defaults = internal constant { [10 x %struct.reg_default], [48 x i8] } { [10 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 4, i32 12 }, %struct.reg_default { i32 8, i32 16416 }, %struct.reg_default { i32 20, i32 262384 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 48, i32 1 }, %struct.reg_default { i32 52, i32 1985229328 }, %struct.reg_default { i32 56, i32 1 }, %struct.reg_default { i32 60, i32 12816 }], [48 x i8] zeroinitializer }, align 32
@sun8i_i2s_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @sun4i_i2s_wr_reg, ptr @sun8i_i2s_rd_reg, ptr @sun8i_i2s_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 88, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun8i_i2s_reg_defaults, i32 11, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@sun8i_i2s_clk_div = internal constant { [15 x %struct.sun4i_i2s_clk_div], [34 x i8] } { [15 x %struct.sun4i_i2s_clk_div] [%struct.sun4i_i2s_clk_div { i8 1, i8 1 }, %struct.sun4i_i2s_clk_div { i8 2, i8 2 }, %struct.sun4i_i2s_clk_div { i8 4, i8 3 }, %struct.sun4i_i2s_clk_div { i8 6, i8 4 }, %struct.sun4i_i2s_clk_div { i8 8, i8 5 }, %struct.sun4i_i2s_clk_div { i8 12, i8 6 }, %struct.sun4i_i2s_clk_div { i8 16, i8 7 }, %struct.sun4i_i2s_clk_div { i8 24, i8 8 }, %struct.sun4i_i2s_clk_div { i8 32, i8 9 }, %struct.sun4i_i2s_clk_div { i8 48, i8 10 }, %struct.sun4i_i2s_clk_div { i8 64, i8 11 }, %struct.sun4i_i2s_clk_div { i8 96, i8 12 }, %struct.sun4i_i2s_clk_div { i8 -128, i8 13 }, %struct.sun4i_i2s_clk_div { i8 -80, i8 14 }, %struct.sun4i_i2s_clk_div { i8 -64, i8 15 }], [34 x i8] zeroinitializer }, align 32
@sun8i_i2s_reg_defaults = internal constant { [11 x %struct.reg_default], [40 x i8] } { [11 x %struct.reg_default] [%struct.reg_default { i32 0, i32 393216 }, %struct.reg_default { i32 4, i32 51 }, %struct.reg_default { i32 8, i32 48 }, %struct.reg_default { i32 20, i32 262384 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 68, i32 0 }, %struct.reg_default { i32 84, i32 0 }, %struct.reg_default { i32 88, i32 0 }], [40 x i8] zeroinitializer }, align 32
@sun50i_h6_i2s_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @sun4i_i2s_wr_reg, ptr @sun8i_i2s_rd_reg, ptr @sun8i_i2s_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 108, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun50i_h6_i2s_reg_defaults, i32 13, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@sun50i_h6_i2s_reg_defaults = internal constant { [13 x %struct.reg_default], [56 x i8] } { [13 x %struct.reg_default] [%struct.reg_default { i32 0, i32 393216 }, %struct.reg_default { i32 4, i32 51 }, %struct.reg_default { i32 8, i32 48 }, %struct.reg_default { i32 20, i32 262384 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 68, i32 0 }, %struct.reg_default { i32 72, i32 0 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 104, i32 0 }, %struct.reg_default { i32 108, i32 0 }], [56 x i8] zeroinitializer }, align 32
@switch.table.sun4i_i2s_get_wss = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 2, i32 -22, i32 3], [44 x i8] zeroinitializer }, align 32
@switch.table.sun4i_i2s_set_soc_fmt = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 192, i32 128, i32 64, i32 192], [44 x i8] zeroinitializer }, align 32
@switch.table.sun4i_i2s_set_soc_fmt.62 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 2, i32 1], [20 x i8] zeroinitializer }, align 32
@switch.table.sun8i_i2s_set_soc_fmt = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 524288, i32 128, i32 0, i32 524416, i32 128], [44 x i8] zeroinitializer }, align 32
@switch.table.sun8i_i2s_set_soc_fmt.63 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 16, i32 32, i32 16, i32 0, i32 0], [44 x i8] zeroinitializer }, align 32
@switch.table.sun8i_i2s_set_soc_fmt.64 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 4096, i32 0, i32 0, i32 4096, i32 0], [44 x i8] zeroinitializer }, align 32
@switch.table.sun50i_h6_i2s_set_soc_fmt = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 524288, i32 128, i32 0, i32 524416, i32 128], [44 x i8] zeroinitializer }, align 32
@switch.table.sun50i_h6_i2s_set_soc_fmt.65 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 16, i32 32, i32 16, i32 0, i32 0], [44 x i8] zeroinitializer }, align 32
@switch.table.sun50i_h6_i2s_set_soc_fmt.66 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1048576, i32 0, i32 0, i32 1048576, i32 0], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.67 = internal global [17 x i64] [i64 15, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 64000, i64 88200, i64 96000, i64 128000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.68 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6, i64 10]
@__sancov_gen_cov_switch_values.69 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 20, i64 24]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.72 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.74 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"sun4i_i2s_driver\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1618, i32 31 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1622, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant [16 x i8] c"sun4i_i2s_match\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1584, i32 34 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"sun4i_i2s_pm_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1613, i32 32 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1483, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1487, i32 42 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1489, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1493, i32 16 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1496, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1500, i32 42 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1502, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1509, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1517, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1539, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1545, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [20 x i8] c"sun4i_i2s_component\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1109, i32 46 }
@___asan_gen_.163 = private unnamed_addr constant [14 x i8] c"sun4i_i2s_dai\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1089, i32 34 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1553, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1268, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1277, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1292, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1110, i32 10 }
@___asan_gen_.196 = private unnamed_addr constant [18 x i8] c"sun4i_i2s_dai_ops\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1066, i32 37 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1092, i32 18 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1099, i32 18 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 930, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 595, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 614, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 358, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 368, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 377, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 383, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant [21 x i8] c"sun4i_a10_i2s_quirks\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1324, i32 38 }
@___asan_gen_.259 = private unnamed_addr constant [21 x i8] c"sun6i_a31_i2s_quirks\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1342, i32 38 }
@___asan_gen_.262 = private unnamed_addr constant [22 x i8] c"sun8i_a83t_i2s_quirks\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1365, i32 38 }
@___asan_gen_.265 = private unnamed_addr constant [20 x i8] c"sun8i_h3_i2s_quirks\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1383, i32 38 }
@___asan_gen_.268 = private unnamed_addr constant [28 x i8] c"sun50i_a64_codec_i2s_quirks\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1401, i32 38 }
@___asan_gen_.271 = private unnamed_addr constant [21 x i8] c"sun50i_h6_i2s_quirks\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1419, i32 38 }
@___asan_gen_.274 = private unnamed_addr constant [24 x i8] c"sun4i_i2s_regmap_config\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1221, i32 35 }
@___asan_gen_.277 = private unnamed_addr constant [19 x i8] c"sun4i_i2s_bclk_div\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 225, i32 39 }
@___asan_gen_.280 = private unnamed_addr constant [19 x i8] c"sun4i_i2s_mclk_div\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 235, i32 39 }
@___asan_gen_.283 = private unnamed_addr constant [23 x i8] c"sun4i_i2s_reg_defaults\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1178, i32 33 }
@___asan_gen_.286 = private unnamed_addr constant [24 x i8] c"sun8i_i2s_regmap_config\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1235, i32 35 }
@___asan_gen_.289 = private unnamed_addr constant [18 x i8] c"sun8i_i2s_clk_div\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 247, i32 39 }
@___asan_gen_.292 = private unnamed_addr constant [23 x i8] c"sun8i_i2s_reg_defaults\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1191, i32 33 }
@___asan_gen_.295 = private unnamed_addr constant [28 x i8] c"sun50i_h6_i2s_regmap_config\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1248, i32 35 }
@___asan_gen_.298 = private unnamed_addr constant [27 x i8] c"sun50i_h6_i2s_reg_defaults\00", align 1
@___asan_gen_.299 = private constant [31 x i8] c"../sound/soc/sunxi/sun4i-i2s.c\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 1205, i32 33 }
@___asan_gen_.301 = private unnamed_addr constant [31 x i8] c"switch.table.sun4i_i2s_get_wss\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [35 x i8] c"switch.table.sun4i_i2s_set_soc_fmt\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [38 x i8] c"switch.table.sun4i_i2s_set_soc_fmt.62\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [35 x i8] c"switch.table.sun8i_i2s_set_soc_fmt\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [38 x i8] c"switch.table.sun8i_i2s_set_soc_fmt.63\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [38 x i8] c"switch.table.sun8i_i2s_set_soc_fmt.64\00", align 1
@___asan_gen_.307 = private unnamed_addr constant [39 x i8] c"switch.table.sun50i_h6_i2s_set_soc_fmt\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [42 x i8] c"switch.table.sun50i_h6_i2s_set_soc_fmt.65\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [42 x i8] c"switch.table.sun50i_h6_i2s_set_soc_fmt.66\00", align 1
@llvm.compiler.used = appending global [111 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_sun4i_i2s_driver_exit, ptr @__initcall__kmod_sun4i_i2s__241_1627_sun4i_i2s_driver_init6, ptr @sun4i_i2s_driver_exit, ptr @sun4i_i2s_hw_params._entry, ptr @sun4i_i2s_hw_params._entry.48, ptr @sun4i_i2s_hw_params._entry_ptr, ptr @sun4i_i2s_hw_params._entry_ptr.50, ptr @sun4i_i2s_probe._entry, ptr @sun4i_i2s_probe._entry.11, ptr @sun4i_i2s_probe._entry.15, ptr @sun4i_i2s_probe._entry.18, ptr @sun4i_i2s_probe._entry.21, ptr @sun4i_i2s_probe._entry.24, ptr @sun4i_i2s_probe._entry.27, ptr @sun4i_i2s_probe._entry.30, ptr @sun4i_i2s_probe._entry.7, ptr @sun4i_i2s_probe._entry_ptr, ptr @sun4i_i2s_probe._entry_ptr.13, ptr @sun4i_i2s_probe._entry_ptr.17, ptr @sun4i_i2s_probe._entry_ptr.20, ptr @sun4i_i2s_probe._entry_ptr.23, ptr @sun4i_i2s_probe._entry_ptr.26, ptr @sun4i_i2s_probe._entry_ptr.29, ptr @sun4i_i2s_probe._entry_ptr.32, ptr @sun4i_i2s_probe._entry_ptr.9, ptr @sun4i_i2s_runtime_resume._entry, ptr @sun4i_i2s_runtime_resume._entry.35, ptr @sun4i_i2s_runtime_resume._entry.38, ptr @sun4i_i2s_runtime_resume._entry_ptr, ptr @sun4i_i2s_runtime_resume._entry_ptr.37, ptr @sun4i_i2s_runtime_resume._entry_ptr.40, ptr @sun4i_i2s_set_clk_rate._entry, ptr @sun4i_i2s_set_clk_rate._entry.53, ptr @sun4i_i2s_set_clk_rate._entry.56, ptr @sun4i_i2s_set_clk_rate._entry.59, ptr @sun4i_i2s_set_clk_rate._entry_ptr, ptr @sun4i_i2s_set_clk_rate._entry_ptr.55, ptr @sun4i_i2s_set_clk_rate._entry_ptr.58, ptr @sun4i_i2s_set_clk_rate._entry_ptr.61, ptr @sun4i_i2s_set_fmt._entry, ptr @sun4i_i2s_set_fmt._entry_ptr, ptr @sun4i_i2s_driver, ptr @.str, ptr @sun4i_i2s_match, ptr @sun4i_i2s_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @sun4i_i2s_probe._key, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @sun4i_i2s_component, ptr @sun4i_i2s_dai, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @sun4i_i2s_dai_ops, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @sun4i_a10_i2s_quirks, ptr @sun6i_a31_i2s_quirks, ptr @sun8i_a83t_i2s_quirks, ptr @sun8i_h3_i2s_quirks, ptr @sun50i_a64_codec_i2s_quirks, ptr @sun50i_h6_i2s_quirks, ptr @sun4i_i2s_regmap_config, ptr @sun4i_i2s_bclk_div, ptr @sun4i_i2s_mclk_div, ptr @sun4i_i2s_reg_defaults, ptr @sun8i_i2s_regmap_config, ptr @sun8i_i2s_clk_div, ptr @sun8i_i2s_reg_defaults, ptr @sun50i_h6_i2s_regmap_config, ptr @sun50i_h6_i2s_reg_defaults, ptr @switch.table.sun4i_i2s_get_wss, ptr @switch.table.sun4i_i2s_set_soc_fmt, ptr @switch.table.sun4i_i2s_set_soc_fmt.62, ptr @switch.table.sun8i_i2s_set_soc_fmt, ptr @switch.table.sun8i_i2s_set_soc_fmt.63, ptr @switch.table.sun8i_i2s_set_soc_fmt.64, ptr @switch.table.sun50i_h6_i2s_set_soc_fmt, ptr @switch.table.sun50i_h6_i2s_set_soc_fmt.65, ptr @switch.table.sun50i_h6_i2s_set_soc_fmt.66], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_runtime_resume._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_runtime_resume._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_hw_params._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_set_clk_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_set_clk_rate._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_set_clk_rate._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_set_clk_rate._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_i2s_quirks to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_a31_i2s_quirks to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a83t_i2s_quirks to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_h3_i2s_quirks to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a64_codec_i2s_quirks to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_i2s_quirks to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_bclk_div to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_mclk_div to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_i2s_reg_defaults to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_i2s_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_i2s_clk_div to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_i2s_reg_defaults to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_i2s_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_i2s_reg_defaults to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sun4i_i2s_get_wss to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sun4i_i2s_set_soc_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sun4i_i2s_set_soc_fmt.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sun8i_i2s_set_soc_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sun8i_i2s_set_soc_fmt.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sun8i_i2s_set_soc_fmt.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sun50i_h6_i2s_set_soc_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sun50i_h6_i2s_set_soc_fmt.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sun50i_h6_i2s_set_soc_fmt.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_i2s_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_i2s_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_i2s_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_i2s_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_i2s_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #10
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !164
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 120, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call1 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #10
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %call10 = call ptr @of_device_get_match_data(ptr noundef %dev) #10
  %variant = getelementptr inbounds %struct.sun4i_i2s, ptr %call.i, i32 0, i32 13
  %3 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %variant, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %call17 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #10
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call17, ptr %call.i, align 4
  %cmp.i204 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i204, label %do.end23, label %if.end27

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #13
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end15
  %8 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %variant, align 4
  %sun4i_i2s_regmap = getelementptr inbounds %struct.sun4i_i2s_quirks, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %sun4i_i2s_regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sun4i_i2s_regmap, align 4
  %call30 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call1, ptr noundef %11, ptr noundef nonnull @sun4i_i2s_probe._key, ptr noundef nonnull @.str.10) #10
  %regmap = getelementptr inbounds %struct.sun4i_i2s, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call30, ptr %regmap, align 4
  %cmp.i205 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i205, label %do.end36, label %if.end40

do.end36:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #13
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end27
  %call42 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  %mod_clk = getelementptr inbounds %struct.sun4i_i2s, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %mod_clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call42, ptr %mod_clk, align 4
  %cmp.i206 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i206, label %do.end48, label %if.end52

do.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #13
  %17 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mod_clk, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end52:                                         ; preds = %if.end40
  %20 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %variant, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 4, !range !165
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool54.not = icmp eq i8 %23, 0
  br i1 %tobool54.not, label %if.end52.if.end68_crit_edge, label %if.then55

if.end52.if.end68_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then55:                                        ; preds = %if.end52
  %call.i207 = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %rst = getelementptr inbounds %struct.sun4i_i2s, ptr %call.i, i32 0, i32 3
  %24 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i207, ptr %rst, align 4
  %cmp.i208 = icmp ugt ptr %call.i207, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i208, label %do.end63, label %if.then55.if.end68_crit_edge

if.then55.if.end68_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

do.end63:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #13
  %25 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rst, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup

if.end68:                                         ; preds = %if.then55.if.end68_crit_edge, %if.end52.if.end68_crit_edge
  %rst69 = getelementptr inbounds %struct.sun4i_i2s, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %rst69 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rst69, align 4
  %cmp.i209 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i209, label %if.end68.if.end81_crit_edge, label %if.then71

if.end68.if.end81_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then71:                                        ; preds = %if.end68
  %call73 = call i32 @reset_control_deassert(ptr noundef %29) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then71.if.end81_crit_edge, label %do.end78

if.then71.if.end81_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

do.end78:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #13
  br label %cleanup

if.end81:                                         ; preds = %if.then71.if.end81_crit_edge, %if.end68.if.end81_crit_edge
  %30 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %res, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %34 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %variant, align 4
  %reg_offset_txdata = getelementptr inbounds %struct.sun4i_i2s_quirks, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %reg_offset_txdata to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reg_offset_txdata, align 4
  %add = add i32 %37, %33
  %playback_dma_data = getelementptr inbounds %struct.sun4i_i2s, ptr %call.i, i32 0, i32 9
  %38 = ptrtoint ptr %playback_dma_data to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add, ptr %playback_dma_data, align 4
  %maxburst = getelementptr inbounds %struct.sun4i_i2s, ptr %call.i, i32 0, i32 9, i32 2
  %39 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8, ptr %maxburst, align 4
  %40 = load i32, ptr %31, align 4
  %add85 = add i32 %40, 16
  %capture_dma_data = getelementptr inbounds %struct.sun4i_i2s, ptr %call.i, i32 0, i32 8
  %41 = ptrtoint ptr %capture_dma_data to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add85, ptr %capture_dma_data, align 4
  %maxburst88 = getelementptr inbounds %struct.sun4i_i2s, ptr %call.i, i32 0, i32 8, i32 2
  %42 = ptrtoint ptr %maxburst88 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 8, ptr %maxburst88, align 4
  call void @pm_runtime_enable(ptr noundef %dev) #10
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %43 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.end81.if.end98_crit_edge, label %if.then92

if.end81.if.end98_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then92:                                        ; preds = %if.end81
  %call94 = call i32 @sun4i_i2s_runtime_resume(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.then92.if.end98_crit_edge, label %if.then92.err_pm_disable_crit_edge

if.then92.err_pm_disable_crit_edge:               ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_pm_disable

if.then92.if.end98_crit_edge:                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.end98:                                         ; preds = %if.then92.if.end98_crit_edge, %if.end81.if.end98_crit_edge
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %46 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %variant, align 4
  %field_clkdiv_mclk_en.i = getelementptr inbounds %struct.sun4i_i2s_quirks, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %field_clkdiv_mclk_en.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.unpack.i = load i32, ptr %field_clkdiv_mclk_en.i, align 4
  %49 = insertvalue [5 x i32] undef, i32 %.unpack.i, 0
  %.elt42.i = getelementptr inbounds %struct.sun4i_i2s_quirks, ptr %47, i32 0, i32 3, i32 1
  %50 = ptrtoint ptr %.elt42.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.unpack43.i = load i32, ptr %.elt42.i, align 4
  %51 = insertvalue [5 x i32] %49, i32 %.unpack43.i, 1
  %.elt44.i = getelementptr inbounds %struct.sun4i_i2s_quirks, ptr %47, i32 0, i32 3, i32 2
  %52 = ptrtoint ptr %.elt44.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.unpack45.i = load i32, ptr %.elt44.i, align 4
  %53 = insertvalue [5 x i32] %51, i32 %.unpack45.i, 2
  %.elt46.i = getelementptr inbounds %struct.sun4i_i2s_quirks, ptr %47, i32 0, i32 3, i32 3
  %54 = ptrtoint ptr %.elt46.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.unpack47.i = load i32, ptr %.elt46.i, align 4
  %55 = insertvalue [5 x i32] %53, i32 %.unpack47.i, 3
  %.elt48.i = getelementptr inbounds %struct.sun4i_i2s_quirks, ptr %47, i32 0, i32 3, i32 4
  %56 = ptrtoint ptr %.elt48.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.unpack49.i = load i32, ptr %.elt48.i, align 4
  %57 = insertvalue [5 x i32] %55, i32 %.unpack49.i, 4
  %call.i210 = call ptr @devm_regmap_field_alloc(ptr noundef %dev, ptr noundef %45, [5 x i32] %57) #10
  %field_clkdiv_mclk_en1.i = getelementptr inbounds %struct.sun4i_i2s, ptr %call.i, i32 0, i32 10
  %58 = ptrtoint ptr %field_clkdiv_mclk_en1.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i210, ptr %field_clkdiv_mclk_en1.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i210, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end98.sun4i_i2s_init_regmap_fields.exit_crit_edge, label %if.end.i

if.end98.sun4i_i2s_init_regmap_fields.exit_crit_edge: ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %sun4i_i2s_init_regmap_fields.exit

if.end.i:                                         ; preds = %if.end98
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap, align 4
  %61 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %variant, align 4
  %field_fmt_wss.i = getelementptr inbounds %struct.sun4i_i2s_quirks, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %field_fmt_wss.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %.unpack50.i = load i32, ptr %field_fmt_wss.i, align 4
  %64 = insertvalue [5 x i32] undef, i32 %.unpack50.i, 0
  %.elt51.i = getelementptr inbounds %struct.sun4i_i2s_quirks, ptr %62, i32 0, i32 4, i32 1
  %65 = ptrtoint ptr %.elt51.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.unpack52.i = load i32, ptr %.elt51.i, align 4
  %66 = insertvalue [5 x i32] %64, i32 %.unpack52.i, 1
  %.elt53.i = getelementptr inbounds %struct.sun4i_i2s_quirks, ptr %62, i32 0, i32 4, i32 2
  %67 = ptrtoint ptr %.elt53.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.unpack54.i = load i32, ptr %.elt53.i, align 4
  %68 = insertvalue [5 x i32] %66, i32 %.unpack54.i, 2
  %.elt55.i = getelementptr inbounds %struct.sun4i_i2s_quirks, ptr %62, i32 0, i32 4, i32 3
  %69 = ptrtoint ptr %.elt55.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.unpack56.i = load i32, ptr %.elt55.i, align 4
  %70 = insertvalue [5 x i32] %68, i32 %.unpack56.i, 3
  %.elt57.i = getelementptr inbounds %struct.sun4i_i2s_quirks, ptr %62, i32 0, i32 4, i32 4
  %71 = ptrtoint ptr %.elt57.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %.unpack58.i = load i32, ptr %.elt57.i, align 4
  %72 = insertvalue [5 x i32] %70, i32 %.unpack58.i, 4
  %call8.i = call ptr @devm_regmap_field_alloc(ptr noundef %dev, ptr noundef %60, [5 x i32] %72) #10
  %field_fmt_wss9.i = getelementptr inbounds %struct.sun4i_i2s, ptr %call.i, i32 0, i32 11
  %73 = ptrtoint ptr %field_fmt_wss9.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call8.i, ptr %field_fmt_wss9.i, align 4
  %cmp.i68.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68.i, label %if.end.i.sun4i_i2s_init_regmap_fields.exit_crit_edge, label %if.end15.i

if.end.i.sun4i_i2s_init_regmap_fields.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sun4i_i2s_init_regmap_fields.exit

if.end15.i:                                       ; preds = %if.end.i
  %74 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap, align 4
  %76 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %variant, align 4
  %field_fmt_sr.i = getelementptr inbounds %struct.sun4i_i2s_quirks, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %field_fmt_sr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %.unpack59.i = load i32, ptr %field_fmt_sr.i, align 4
  %79 = insertvalue [5 x i32] undef, i32 %.unpack59.i, 0
  %.elt60.i = getelementptr inbounds %struct.sun4i_i2s_quirks, ptr %77, i32 0, i32 5, i32 1
  %80 = ptrtoint ptr %.elt60.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %.unpack61.i = load i32, ptr %.elt60.i, align 4
  %81 = insertvalue [5 x i32] %79, i32 %.unpack61.i, 1
  %.elt62.i = getelementptr inbounds %struct.sun4i_i2s_quirks, ptr %77, i32 0, i32 5, i32 2
  %82 = ptrtoint ptr %.elt62.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %.unpack63.i = load i32, ptr %.elt62.i, align 4
  %83 = insertvalue [5 x i32] %81, i32 %.unpack63.i, 2
  %.elt64.i = getelementptr inbounds %struct.sun4i_i2s_quirks, ptr %77, i32 0, i32 5, i32 3
  %84 = ptrtoint ptr %.elt64.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %.unpack65.i = load i32, ptr %.elt64.i, align 4
  %85 = insertvalue [5 x i32] %83, i32 %.unpack65.i, 3
  %.elt66.i = getelementptr inbounds %struct.sun4i_i2s_quirks, ptr %77, i32 0, i32 5, i32 4
  %86 = ptrtoint ptr %.elt66.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %.unpack67.i = load i32, ptr %.elt66.i, align 4
  %87 = insertvalue [5 x i32] %85, i32 %.unpack67.i, 4
  %call18.i = call ptr @devm_regmap_field_alloc(ptr noundef %dev, ptr noundef %75, [5 x i32] %87) #10
  %field_fmt_sr19.i = getelementptr inbounds %struct.sun4i_i2s, ptr %call.i, i32 0, i32 12
  %88 = ptrtoint ptr %field_fmt_sr19.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call18.i, ptr %field_fmt_sr19.i, align 4
  %cmp.i69.i = icmp ugt ptr %call18.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69.i, label %if.end15.i.sun4i_i2s_init_regmap_fields.exit_crit_edge, label %if.end15.i.if.end107_crit_edge

if.end15.i.if.end107_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107

if.end15.i.sun4i_i2s_init_regmap_fields.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sun4i_i2s_init_regmap_fields.exit

sun4i_i2s_init_regmap_fields.exit:                ; preds = %if.end15.i.sun4i_i2s_init_regmap_fields.exit_crit_edge, %if.end.i.sun4i_i2s_init_regmap_fields.exit_crit_edge, %if.end98.sun4i_i2s_init_regmap_fields.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call18.i, %if.end15.i.sun4i_i2s_init_regmap_fields.exit_crit_edge ], [ %call.i210, %if.end98.sun4i_i2s_init_regmap_fields.exit_crit_edge ], [ %call8.i, %if.end.i.sun4i_i2s_init_regmap_fields.exit_crit_edge ]
  %tobool101.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool101.not, label %sun4i_i2s_init_regmap_fields.exit.if.end107_crit_edge, label %do.end105

sun4i_i2s_init_regmap_fields.exit.if.end107_crit_edge: ; preds = %sun4i_i2s_init_regmap_fields.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107

do.end105:                                        ; preds = %sun4i_i2s_init_regmap_fields.exit
  call void @__sanitizer_cov_trace_pc() #12
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  br label %err_suspend

if.end107:                                        ; preds = %sun4i_i2s_init_regmap_fields.exit.if.end107_crit_edge, %if.end15.i.if.end107_crit_edge
  %call109 = call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev, ptr noundef null, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end116, label %if.end107.err_suspend_crit_edge

if.end107.err_suspend_crit_edge:                  ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_suspend

if.end116:                                        ; preds = %if.end107
  %call118 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @sun4i_i2s_component, ptr noundef nonnull @sun4i_i2s_dai, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end116.cleanup_crit_edge, label %if.end116.err_suspend_crit_edge

if.end116.err_suspend_crit_edge:                  ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_suspend

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_suspend:                                      ; preds = %if.end116.err_suspend_crit_edge, %if.end107.err_suspend_crit_edge, %do.end105
  %.str.31.sink = phi ptr [ @.str.25, %do.end105 ], [ @.str.28, %if.end107.err_suspend_crit_edge ], [ @.str.31, %if.end116.err_suspend_crit_edge ]
  %ret.0 = phi i32 [ %retval.0.i, %do.end105 ], [ %call109, %if.end107.err_suspend_crit_edge ], [ %call118, %if.end116.err_suspend_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.31.sink) #13
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %89 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %90)
  %cmp.i211 = icmp eq i32 %90, 2
  br i1 %cmp.i211, label %err_suspend.err_pm_disable_crit_edge, label %if.then128

err_suspend.err_pm_disable_crit_edge:             ; preds = %err_suspend
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_pm_disable

if.then128:                                       ; preds = %err_suspend
  call void @__sanitizer_cov_trace_pc() #12
  %call130 = call i32 @sun4i_i2s_runtime_suspend(ptr noundef %dev)
  br label %err_pm_disable

err_pm_disable:                                   ; preds = %if.then128, %err_suspend.err_pm_disable_crit_edge, %if.then92.err_pm_disable_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_suspend.err_pm_disable_crit_edge ], [ %ret.0, %if.then128 ], [ %call94, %if.then92.err_pm_disable_crit_edge ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  %91 = ptrtoint ptr %rst69 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rst69, align 4
  %cmp.i212 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i212, label %err_pm_disable.cleanup_crit_edge, label %if.then135

err_pm_disable.cleanup_crit_edge:                 ; preds = %err_pm_disable
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then135:                                       ; preds = %err_pm_disable
  call void @__sanitizer_cov_trace_pc() #12
  %call137 = call i32 @reset_control_assert(ptr noundef %92) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then135, %err_pm_disable.cleanup_crit_edge, %if.end116.cleanup_crit_edge, %do.end78, %do.end63, %do.end48, %do.end36, %do.end23, %do.end, %if.end5.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then3 ], [ %7, %do.end23 ], [ %15, %do.end36 ], [ %19, %do.end48 ], [ %27, %do.end63 ], [ -22, %do.end78 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ 0, %if.end116.cleanup_crit_edge ], [ %ret.1, %if.then135 ], [ %ret.1, %err_pm_disable.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_i2s_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %mod_clk.i = getelementptr inbounds %struct.sun4i_i2s, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %mod_clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mod_clk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #10
  tail call void @clk_unprepare(ptr noundef %7) #10
  %regmap.i = getelementptr inbounds %struct.sun4i_i2s, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 0, i32 noundef 3840, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i9.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  tail call void @regcache_cache_only(ptr noundef %13, i1 noundef zeroext true) #10
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %15) #10
  tail call void @clk_unprepare(ptr noundef %15) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rst = getelementptr inbounds %struct.sun4i_i2s, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rst, align 4
  %cmp.i15 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i15, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 @reset_control_assert(ptr noundef %17) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_i2s_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %regmap = getelementptr inbounds %struct.sun4i_i2s, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext false) #10
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %7) #10
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call4 = tail call i32 @regcache_sync(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end10, label %if.end.err_disable_clk_crit_edge

if.end.err_disable_clk_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_disable_clk

if.end10:                                         ; preds = %if.end
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i38 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i39 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef 3840, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %mod_clk = getelementptr inbounds %struct.sun4i_i2s, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mod_clk, align 4
  %call.i40 = tail call i32 @clk_prepare(ptr noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool.not.i41 = icmp eq i32 %call.i40, 0
  br i1 %tobool.not.i41, label %if.end.i44, label %if.end10.err_disable_clk_crit_edge

if.end10.err_disable_clk_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_disable_clk

if.end.i44:                                       ; preds = %if.end10
  %call1.i42 = tail call i32 @clk_enable(ptr noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i42)
  %tobool2.not.i43 = icmp eq i32 %call1.i42, 0
  br i1 %tobool2.not.i43, label %if.end.i44.cleanup_crit_edge, label %if.then3.i45

if.end.i44.cleanup_crit_edge:                     ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.i45:                                     ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %15) #10
  br label %err_disable_clk

err_disable_clk:                                  ; preds = %if.then3.i45, %if.end10.err_disable_clk_crit_edge, %if.end.err_disable_clk_crit_edge
  %.str.39.sink = phi ptr [ @.str.36, %if.end.err_disable_clk_crit_edge ], [ @.str.39, %if.end10.err_disable_clk_crit_edge ], [ @.str.39, %if.then3.i45 ]
  %ret.0 = phi i32 [ %call4, %if.end.err_disable_clk_crit_edge ], [ %call.i40, %if.end10.err_disable_clk_crit_edge ], [ %call1.i42, %if.then3.i45 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.39.sink) #13
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %17) #10
  tail call void @clk_unprepare(ptr noundef %17) #10
  br label %cleanup

cleanup:                                          ; preds = %err_disable_clk, %if.end.i44.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %ret.0, %err_disable_clk ], [ 0, %if.end.i44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_i2s_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mod_clk = getelementptr inbounds %struct.sun4i_i2s, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mod_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #10
  tail call void @clk_unprepare(ptr noundef %3) #10
  %regmap = getelementptr inbounds %struct.sun4i_i2s, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 3840, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i9 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %9, i1 noundef zeroext true) #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %11) #10
  tail call void @clk_unprepare(ptr noundef %11) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sun4i_i2s_dai_probe(ptr nocapture noundef %dai) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %playback_dma_data = getelementptr inbounds %struct.sun4i_i2s, ptr %3, i32 0, i32 9
  %capture_dma_data = getelementptr inbounds %struct.sun4i_i2s, ptr %3, i32 0, i32 8
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %4 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %playback_dma_data, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %5 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %capture_dma_data, ptr %capture_dma_data.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sun4i_i2s_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk_id)
  %cmp.not = icmp eq i32 %clk_id, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %mclk_freq = getelementptr inbounds %struct.sun4i_i2s, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %freq, ptr %mclk_freq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_i2s_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %variant = getelementptr inbounds %struct.sun4i_i2s, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant, align 4
  %set_fmt = getelementptr inbounds %struct.sun4i_i2s_quirks, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_fmt, align 4
  %call1 = tail call i32 %7(ptr noundef %3, i32 noundef %fmt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.44) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %format = getelementptr inbounds %struct.sun4i_i2s, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %fmt, ptr %format, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sun4i_i2s_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %slots)
  %cmp = icmp sgt i32 %slots, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %slots1 = getelementptr inbounds %struct.sun4i_i2s, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %slots1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %slots, ptr %slots1, align 4
  %slot_width2 = getelementptr inbounds %struct.sun4i_i2s, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %slot_width2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %slot_width, ptr %slot_width2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_i2s_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %5, %entry.if.then.i.i.i_crit_edge ], [ %8, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %6 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #10, !range !166
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #10
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i72 = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i72, label %for.inc.i.i.i79, label %params_width.exit.if.then.i.i.i76_crit_edge

params_width.exit.if.then.i.i.i76_crit_edge:      ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i76

if.then.i.i.i76:                                  ; preds = %for.inc.i.i.i79.if.then.i.i.i76_crit_edge, %params_width.exit.if.then.i.i.i76_crit_edge
  %i.09.lcssa.i.i.i73 = phi i32 [ 0, %params_width.exit.if.then.i.i.i76_crit_edge ], [ 32, %for.inc.i.i.i79.if.then.i.i.i76_crit_edge ]
  %.lcssa.i.i.i74 = phi i32 [ %10, %params_width.exit.if.then.i.i.i76_crit_edge ], [ %13, %for.inc.i.i.i79.if.then.i.i.i76_crit_edge ]
  %11 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i74, i1 true) #10, !range !166
  %add.i.i.i75 = or i32 %11, %i.09.lcssa.i.i.i73
  br label %params_physical_width.exit

for.inc.i.i.i79:                                  ; preds = %params_width.exit
  %arrayidx.1.i.i.i77 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1.i.i.i77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.1.i.i.i78 = icmp eq i32 %13, 0
  br i1 %tobool.not.1.i.i.i78, label %for.inc.i.i.i79.params_physical_width.exit_crit_edge, label %for.inc.i.i.i79.if.then.i.i.i76_crit_edge

for.inc.i.i.i79.if.then.i.i.i76_crit_edge:        ; preds = %for.inc.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i76

for.inc.i.i.i79.params_physical_width.exit_crit_edge: ; preds = %for.inc.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_physical_width.exit

params_physical_width.exit:                       ; preds = %for.inc.i.i.i79.params_physical_width.exit_crit_edge, %if.then.i.i.i76
  %retval.0.i.i.i80 = phi i32 [ %add.i.i.i75, %if.then.i.i.i76 ], [ 0, %for.inc.i.i.i79.params_physical_width.exit_crit_edge ]
  %call1.i81 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %retval.0.i.i.i80) #10
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %slots4 = getelementptr inbounds %struct.sun4i_i2s, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %slots4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slots4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  %spec.select = select i1 %tobool.not, i32 %15, i32 %17
  %slot_width6 = getelementptr inbounds %struct.sun4i_i2s, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %slot_width6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %slot_width6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool7.not = icmp eq i32 %19, 0
  %slot_width.0 = select i1 %tobool7.not, i32 %call1.i81, i32 %19
  %variant = getelementptr inbounds %struct.sun4i_i2s, ptr %3, i32 0, i32 13
  %20 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %variant, align 4
  %set_chan_cfg = getelementptr inbounds %struct.sun4i_i2s_quirks, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %set_chan_cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_chan_cfg, align 4
  %call11 = tail call i32 %23(ptr noundef %3, i32 noundef %15, i32 noundef %spec.select, i32 noundef %slot_width.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end, label %if.end13

do.end:                                           ; preds = %params_physical_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.46) #13
  br label %cleanup

if.end13:                                         ; preds = %params_physical_width.exit
  %regmap = getelementptr inbounds %struct.sun4i_i2s, ptr %3, i32 0, i32 2
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 20, i32 noundef 7, i32 noundef 5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i.i83 = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i.i83, label %for.inc.i.i.i90, label %if.end13.if.then.i.i.i87_crit_edge

if.end13.if.then.i.i.i87_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i87

if.then.i.i.i87:                                  ; preds = %for.inc.i.i.i90.if.then.i.i.i87_crit_edge, %if.end13.if.then.i.i.i87_crit_edge
  %i.09.lcssa.i.i.i84 = phi i32 [ 0, %if.end13.if.then.i.i.i87_crit_edge ], [ 32, %for.inc.i.i.i90.if.then.i.i.i87_crit_edge ]
  %.lcssa.i.i.i85 = phi i32 [ %29, %if.end13.if.then.i.i.i87_crit_edge ], [ %32, %for.inc.i.i.i90.if.then.i.i.i87_crit_edge ]
  %30 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i85, i1 true) #10, !range !166
  %add.i.i.i86 = or i32 %30, %i.09.lcssa.i.i.i84
  br label %params_physical_width.exit93

for.inc.i.i.i90:                                  ; preds = %if.end13
  %arrayidx.1.i.i.i88 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx.1.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.1.i.i.i88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.1.i.i.i89 = icmp eq i32 %32, 0
  br i1 %tobool.not.1.i.i.i89, label %for.inc.i.i.i90.params_physical_width.exit93_crit_edge, label %for.inc.i.i.i90.if.then.i.i.i87_crit_edge

for.inc.i.i.i90.if.then.i.i.i87_crit_edge:        ; preds = %for.inc.i.i.i90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i87

for.inc.i.i.i90.params_physical_width.exit93_crit_edge: ; preds = %for.inc.i.i.i90
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_physical_width.exit93

params_physical_width.exit93:                     ; preds = %for.inc.i.i.i90.params_physical_width.exit93_crit_edge, %if.then.i.i.i87
  %retval.0.i.i.i91 = phi i32 [ %add.i.i.i86, %if.then.i.i.i87 ], [ 0, %for.inc.i.i.i90.params_physical_width.exit93_crit_edge ]
  %call1.i92 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %retval.0.i.i.i91) #10
  %33 = zext i32 %call1.i92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1.i92, label %do.end19 [
    i32 16, label %params_physical_width.exit93.sw.epilog_crit_edge
    i32 32, label %sw.bb16
  ]

params_physical_width.exit93.sw.epilog_crit_edge: ; preds = %params_physical_width.exit93
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb16:                                          ; preds = %params_physical_width.exit93
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end19:                                         ; preds = %params_physical_width.exit93
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %36 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i.i95 = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i.i95, label %for.inc.i.i.i102, label %do.end19.if.then.i.i.i99_crit_edge

do.end19.if.then.i.i.i99_crit_edge:               ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i99

if.then.i.i.i99:                                  ; preds = %for.inc.i.i.i102.if.then.i.i.i99_crit_edge, %do.end19.if.then.i.i.i99_crit_edge
  %i.09.lcssa.i.i.i96 = phi i32 [ 0, %do.end19.if.then.i.i.i99_crit_edge ], [ 32, %for.inc.i.i.i102.if.then.i.i.i99_crit_edge ]
  %.lcssa.i.i.i97 = phi i32 [ %37, %do.end19.if.then.i.i.i99_crit_edge ], [ %40, %for.inc.i.i.i102.if.then.i.i.i99_crit_edge ]
  %38 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i97, i1 true) #10, !range !166
  %add.i.i.i98 = or i32 %38, %i.09.lcssa.i.i.i96
  br label %params_physical_width.exit105

for.inc.i.i.i102:                                 ; preds = %do.end19
  %arrayidx.1.i.i.i100 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx.1.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.1.i.i.i100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.1.i.i.i101 = icmp eq i32 %40, 0
  br i1 %tobool.not.1.i.i.i101, label %for.inc.i.i.i102.params_physical_width.exit105_crit_edge, label %for.inc.i.i.i102.if.then.i.i.i99_crit_edge

for.inc.i.i.i102.if.then.i.i.i99_crit_edge:       ; preds = %for.inc.i.i.i102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i99

for.inc.i.i.i102.params_physical_width.exit105_crit_edge: ; preds = %for.inc.i.i.i102
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_physical_width.exit105

params_physical_width.exit105:                    ; preds = %for.inc.i.i.i102.params_physical_width.exit105_crit_edge, %if.then.i.i.i99
  %retval.0.i.i.i103 = phi i32 [ %add.i.i.i98, %if.then.i.i.i99 ], [ 0, %for.inc.i.i.i102.params_physical_width.exit105_crit_edge ]
  %call1.i104 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %retval.0.i.i.i103) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.49, i32 noundef %call1.i104) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb16, %params_physical_width.exit93.sw.epilog_crit_edge
  %width.0 = phi i32 [ 4, %sw.bb16 ], [ 2, %params_physical_width.exit93.sw.epilog_crit_edge ]
  %addr_width = getelementptr inbounds %struct.sun4i_i2s, ptr %3, i32 0, i32 9, i32 1
  %41 = ptrtoint ptr %addr_width to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %width.0, ptr %addr_width, align 4
  %42 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %variant, align 4
  %get_sr = getelementptr inbounds %struct.sun4i_i2s_quirks, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %get_sr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %get_sr, align 4
  %call23 = tail call i32 %45(i32 noundef %call1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %sw.epilog.cleanup_crit_edge, label %if.end26

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %sw.epilog
  %46 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %variant, align 4
  %get_wss = getelementptr inbounds %struct.sun4i_i2s_quirks, ptr %47, i32 0, i32 12
  %48 = ptrtoint ptr %get_wss to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %get_wss, align 4
  %call28 = tail call i32 %49(i32 noundef %slot_width.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end26.cleanup_crit_edge, label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %field_fmt_wss = getelementptr inbounds %struct.sun4i_i2s, ptr %3, i32 0, i32 11
  %50 = ptrtoint ptr %field_fmt_wss to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %field_fmt_wss, align 4
  %call.i106 = tail call i32 @regmap_field_update_bits_base(ptr noundef %51, i32 noundef -1, i32 noundef %call28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %field_fmt_sr = getelementptr inbounds %struct.sun4i_i2s, ptr %3, i32 0, i32 12
  %52 = ptrtoint ptr %field_fmt_sr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %field_fmt_sr, align 4
  %call.i107 = tail call i32 @regmap_field_update_bits_base(ptr noundef %53, i32 noundef -1, i32 noundef %call23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %arrayidx.i.i108 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %54 = ptrtoint ptr %arrayidx.i.i108 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i.i108, align 4
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %driver_data.i.i.i, align 4
  %60 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %55, label %do.end.i [
    i32 176400, label %if.end31.sw.epilog.i_crit_edge
    i32 88200, label %if.end31.sw.epilog.i_crit_edge122
    i32 44100, label %if.end31.sw.epilog.i_crit_edge123
    i32 22050, label %if.end31.sw.epilog.i_crit_edge124
    i32 11025, label %if.end31.sw.epilog.i_crit_edge125
    i32 192000, label %if.end31.sw.bb1.i_crit_edge
    i32 128000, label %if.end31.sw.bb1.i_crit_edge126
    i32 96000, label %if.end31.sw.bb1.i_crit_edge127
    i32 64000, label %if.end31.sw.bb1.i_crit_edge128
    i32 48000, label %if.end31.sw.bb1.i_crit_edge129
    i32 32000, label %if.end31.sw.bb1.i_crit_edge130
    i32 24000, label %if.end31.sw.bb1.i_crit_edge131
    i32 16000, label %if.end31.sw.bb1.i_crit_edge132
    i32 12000, label %if.end31.sw.bb1.i_crit_edge133
    i32 8000, label %if.end31.sw.bb1.i_crit_edge134
  ]

if.end31.sw.bb1.i_crit_edge134:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

if.end31.sw.bb1.i_crit_edge133:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

if.end31.sw.bb1.i_crit_edge132:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

if.end31.sw.bb1.i_crit_edge131:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

if.end31.sw.bb1.i_crit_edge130:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

if.end31.sw.bb1.i_crit_edge129:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

if.end31.sw.bb1.i_crit_edge128:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

if.end31.sw.bb1.i_crit_edge127:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

if.end31.sw.bb1.i_crit_edge126:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

if.end31.sw.bb1.i_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

if.end31.sw.epilog.i_crit_edge125:                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end31.sw.epilog.i_crit_edge124:                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end31.sw.epilog.i_crit_edge123:                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end31.sw.epilog.i_crit_edge122:                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end31.sw.epilog.i_crit_edge:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end31.sw.bb1.i_crit_edge, %if.end31.sw.bb1.i_crit_edge126, %if.end31.sw.bb1.i_crit_edge127, %if.end31.sw.bb1.i_crit_edge128, %if.end31.sw.bb1.i_crit_edge129, %if.end31.sw.bb1.i_crit_edge130, %if.end31.sw.bb1.i_crit_edge131, %if.end31.sw.bb1.i_crit_edge132, %if.end31.sw.bb1.i_crit_edge133, %if.end31.sw.bb1.i_crit_edge134
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.51, i32 noundef %55) #13
  br label %cleanup

sw.epilog.i:                                      ; preds = %sw.bb1.i, %if.end31.sw.epilog.i_crit_edge, %if.end31.sw.epilog.i_crit_edge122, %if.end31.sw.epilog.i_crit_edge123, %if.end31.sw.epilog.i_crit_edge124, %if.end31.sw.epilog.i_crit_edge125
  %clk_rate.0.i = phi i32 [ 24576000, %sw.bb1.i ], [ 22579200, %if.end31.sw.epilog.i_crit_edge ], [ 22579200, %if.end31.sw.epilog.i_crit_edge122 ], [ 22579200, %if.end31.sw.epilog.i_crit_edge123 ], [ 22579200, %if.end31.sw.epilog.i_crit_edge124 ], [ 22579200, %if.end31.sw.epilog.i_crit_edge125 ]
  %mod_clk.i = getelementptr inbounds %struct.sun4i_i2s, ptr %59, i32 0, i32 1
  %61 = ptrtoint ptr %mod_clk.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mod_clk.i, align 4
  %call2.i = tail call i32 @clk_set_rate(ptr noundef %62, i32 noundef %clk_rate.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.epilog.i.cleanup_crit_edge

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog.i
  %mclk_freq.i = getelementptr inbounds %struct.sun4i_i2s, ptr %59, i32 0, i32 5
  %63 = ptrtoint ptr %mclk_freq.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mclk_freq.i, align 4
  %div.i = udiv i32 %64, %55
  %65 = add nsw i32 %div.i, -128
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 26) #10
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %66, label %do.end7.i [
    i32 0, label %if.end.i.if.end9.i_crit_edge
    i32 1, label %if.end.i.if.end9.i_crit_edge135
    i32 2, label %if.end.i.if.end9.i_crit_edge136
    i32 4, label %if.end.i.if.end9.i_crit_edge137
    i32 6, label %if.end.i.if.end9.i_crit_edge138
    i32 10, label %if.end.i.if.end9.i_crit_edge139
  ]

if.end.i.if.end9.i_crit_edge139:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end.i.if.end9.i_crit_edge138:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end.i.if.end9.i_crit_edge137:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end.i.if.end9.i_crit_edge136:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end.i.if.end9.i_crit_edge135:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.54, i32 noundef %div.i) #13
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge135, %if.end.i.if.end9.i_crit_edge136, %if.end.i.if.end9.i_crit_edge137, %if.end.i.if.end9.i_crit_edge138, %if.end.i.if.end9.i_crit_edge139
  %variant.i = getelementptr inbounds %struct.sun4i_i2s, ptr %59, i32 0, i32 13
  %70 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %variant.i, align 4
  %get_bclk_parent_rate.i = getelementptr inbounds %struct.sun4i_i2s_quirks, ptr %71, i32 0, i32 10
  %72 = ptrtoint ptr %get_bclk_parent_rate.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %get_bclk_parent_rate.i, align 4
  %call10.i = tail call i32 %73(ptr noundef %59) #10
  %74 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %variant.i, align 4
  %bclk_dividers.i.i = getelementptr inbounds %struct.sun4i_i2s_quirks, ptr %75, i32 0, i32 6
  %76 = ptrtoint ptr %bclk_dividers.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bclk_dividers.i.i, align 4
  %div1.i.i = udiv i32 %call10.i, %55
  %div2.i.i = udiv i32 %div1.i.i, %slot_width.0
  %div3.i.i = udiv i32 %div2.i.i, %spec.select
  %num_bclk_dividers.i.i = getelementptr inbounds %struct.sun4i_i2s_quirks, ptr %75, i32 0, i32 7
  %78 = ptrtoint ptr %num_bclk_dividers.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_bclk_dividers.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp18.not.i.i = icmp eq i32 %79, 0
  br i1 %cmp18.not.i.i, label %if.end9.i.do.end15.i_crit_edge, label %if.end9.i.for.body.i.i_crit_edge

if.end9.i.for.body.i.i_crit_edge:                 ; preds = %if.end9.i
  br label %for.body.i.i

if.end9.i.do.end15.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end9.i.for.body.i.i_crit_edge
  %i.019.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end9.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i109 = getelementptr %struct.sun4i_i2s_clk_div, ptr %77, i32 %i.019.i.i
  %80 = ptrtoint ptr %arrayidx.i.i109 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i.i109, align 1
  %conv.i.i = zext i8 %81 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div3.i.i, i32 %conv.i.i)
  %cmp6.i.i = icmp eq i32 %div3.i.i, %conv.i.i
  br i1 %cmp6.i.i, label %sun4i_i2s_get_bclk_div.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.019.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %79
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end15.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.do.end15.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15.i

sun4i_i2s_get_bclk_div.exit.i:                    ; preds = %for.body.i.i
  %val.i.i = getelementptr %struct.sun4i_i2s_clk_div, ptr %77, i32 %i.019.i.i, i32 1
  %82 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %val.i.i, align 1
  %conv8.i.i = zext i8 %83 to i32
  %84 = ptrtoint ptr %mclk_freq.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mclk_freq.i, align 4
  %mclk_dividers.i.i = getelementptr inbounds %struct.sun4i_i2s_quirks, ptr %75, i32 0, i32 8
  %86 = ptrtoint ptr %mclk_dividers.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mclk_dividers.i.i, align 4
  %div1.i59.i = udiv i32 %clk_rate.0.i, %85
  %num_mclk_dividers.i.i = getelementptr inbounds %struct.sun4i_i2s_quirks, ptr %75, i32 0, i32 9
  %88 = ptrtoint ptr %num_mclk_dividers.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_mclk_dividers.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp16.not.i.i = icmp eq i32 %89, 0
  br i1 %cmp16.not.i.i, label %sun4i_i2s_get_bclk_div.exit.i.do.end24.i_crit_edge, label %sun4i_i2s_get_bclk_div.exit.i.for.body.i62.i_crit_edge

sun4i_i2s_get_bclk_div.exit.i.for.body.i62.i_crit_edge: ; preds = %sun4i_i2s_get_bclk_div.exit.i
  br label %for.body.i62.i

sun4i_i2s_get_bclk_div.exit.i.do.end24.i_crit_edge: ; preds = %sun4i_i2s_get_bclk_div.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24.i

do.end15.i:                                       ; preds = %for.inc.i.i.do.end15.i_crit_edge, %if.end9.i.do.end15.i_crit_edge
  %90 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.57, i32 noundef -22) #13
  br label %cleanup

for.body.i62.i:                                   ; preds = %for.inc.i67.i.for.body.i62.i_crit_edge, %sun4i_i2s_get_bclk_div.exit.i.for.body.i62.i_crit_edge
  %i.017.i.i = phi i32 [ %inc.i65.i, %for.inc.i67.i.for.body.i62.i_crit_edge ], [ 0, %sun4i_i2s_get_bclk_div.exit.i.for.body.i62.i_crit_edge ]
  %arrayidx.i60.i = getelementptr %struct.sun4i_i2s_clk_div, ptr %87, i32 %i.017.i.i
  %92 = ptrtoint ptr %arrayidx.i60.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.i60.i, align 1
  %conv.i61.i = zext i8 %93 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i59.i, i32 %conv.i61.i)
  %cmp4.i.i = icmp eq i32 %div1.i59.i, %conv.i61.i
  br i1 %cmp4.i.i, label %sun4i_i2s_get_mclk_div.exit.i, label %for.inc.i67.i

for.inc.i67.i:                                    ; preds = %for.body.i62.i
  %inc.i65.i = add nuw i32 %i.017.i.i, 1
  %exitcond.not.i66.i = icmp eq i32 %inc.i65.i, %89
  br i1 %exitcond.not.i66.i, label %for.inc.i67.i.do.end24.i_crit_edge, label %for.inc.i67.i.for.body.i62.i_crit_edge

for.inc.i67.i.for.body.i62.i_crit_edge:           ; preds = %for.inc.i67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i62.i

for.inc.i67.i.do.end24.i_crit_edge:               ; preds = %for.inc.i67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24.i

sun4i_i2s_get_mclk_div.exit.i:                    ; preds = %for.body.i62.i
  call void @__sanitizer_cov_trace_pc() #12
  %val.i63.i = getelementptr %struct.sun4i_i2s_clk_div, ptr %87, i32 %i.017.i.i, i32 1
  %94 = ptrtoint ptr %val.i63.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %val.i63.i, align 1
  %conv6.i.i = zext i8 %95 to i32
  %regmap.i = getelementptr inbounds %struct.sun4i_i2s, ptr %59, i32 0, i32 2
  %96 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap.i, align 4
  %shl.i = shl nuw nsw i32 %conv8.i.i, 4
  %or.i = or i32 %shl.i, %conv6.i.i
  %call28.i = tail call i32 @regmap_write(ptr noundef %97, i32 noundef 36, i32 noundef %or.i) #10
  %field_clkdiv_mclk_en.i = getelementptr inbounds %struct.sun4i_i2s, ptr %59, i32 0, i32 10
  %98 = ptrtoint ptr %field_clkdiv_mclk_en.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %field_clkdiv_mclk_en.i, align 4
  %call.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %99, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

do.end24.i:                                       ; preds = %for.inc.i67.i.do.end24.i_crit_edge, %sun4i_i2s_get_bclk_div.exit.i.do.end24.i_crit_edge
  %100 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.60, i32 noundef -22) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end24.i, %sun4i_i2s_get_mclk_div.exit.i, %do.end15.i, %do.end7.i, %sw.epilog.i.cleanup_crit_edge, %do.end.i, %if.end26.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %params_physical_width.exit105, %do.end
  %retval.0 = phi i32 [ %call11, %do.end ], [ -22, %params_physical_width.exit105 ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %if.end26.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end15.i ], [ -22, %do.end24.i ], [ 0, %sun4i_i2s_get_mclk_div.exit.i ], [ -22, %do.end7.i ], [ %call2.i, %sw.epilog.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_i2s_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge21
    i32 6, label %entry.sw.bb_crit_edge22
    i32 0, label %entry.sw.bb1_crit_edge
    i32 3, label %entry.sw.bb1_crit_edge23
    i32 5, label %entry.sw.bb1_crit_edge24
  ]

entry.sw.bb1_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb_crit_edge22:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge21:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge21, %entry.sw.bb_crit_edge22
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %5 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  %regmap.i = getelementptr inbounds %struct.sun4i_i2s, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 20, i32 noundef 33554432, i32 noundef 33554432, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 40, i32 noundef 0) #10
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call.i10.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 0, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call.i11.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 28, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i12 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 20, i32 noundef 16777216, i32 noundef 16777216, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %call2.i13 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 44, i32 noundef 0) #10
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 4
  %call.i10.i14 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 0, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 4
  %call.i11.i15 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 28, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge23, %entry.sw.bb1_crit_edge24
  %stream2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %21 = ptrtoint ptr %stream2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stream2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp3 = icmp eq i32 %22, 0
  %regmap.i16 = getelementptr inbounds %struct.sun4i_i2s, ptr %3, i32 0, i32 2
  %23 = ptrtoint ptr %regmap.i16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i16, align 4
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 0, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %25 = ptrtoint ptr %regmap.i16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i16, align 4
  %call.i4.i = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 28, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

if.else5:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i19 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %27 = ptrtoint ptr %regmap.i16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i16, align 4
  %call.i4.i20 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 28, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else5, %if.then4, %if.else, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %if.else5 ], [ 0, %if.then ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sun4i_i2s_get_bclk_parent_rate(ptr nocapture noundef readonly %i2s) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mclk_freq = getelementptr inbounds %struct.sun4i_i2s, ptr %i2s, i32 0, i32 5
  %0 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mclk_freq, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sun4i_i2s_get_sr(i32 noundef %width) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %width to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %width, label %sw.epilog [
    i32 16, label %entry.return_crit_edge
    i32 20, label %sw.bb1
    i32 24, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %sw.epilog ], [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sun4i_i2s_get_wss(i32 noundef %width) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %width, -16
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %2 = icmp ult i32 %1, 5
  br i1 %2, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.sun4i_i2s_get_wss, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_i2s_set_chan_cfg(ptr nocapture noundef readonly %i2s, i32 noundef %channels, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.sun4i_i2s, ptr %i2s, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 52, i32 noundef 1985229328) #10
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 60, i32 noundef 12816) #10
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %sub = add i32 %channels, -1
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 48, i32 noundef 7, i32 noundef %sub, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i13 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 56, i32 noundef 7, i32 noundef %sub, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_i2s_set_soc_fmt(ptr nocapture noundef readonly %i2s, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %fmt, 8
  %0 = and i32 %and, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %0)
  %1 = icmp ult i32 %0, 5
  br i1 %1, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %0 to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %2 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %switch.lobit.not = icmp eq i8 %2, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.sun4i_i2s_set_soc_fmt, i32 0, i32 %0
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %regmap = getelementptr inbounds %struct.sun4i_i2s, ptr %i2s, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 4, i32 noundef 192, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %and4 = and i32 %fmt, 15
  %switch.tableidx = add nsw i32 %and4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  br i1 %6, label %switch.lookup27, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup27:                                  ; preds = %switch.lookup
  %switch.gep28 = getelementptr inbounds [3 x i32], ptr @switch.table.sun4i_i2s_set_soc_fmt.62, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep28 to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load29 = load i32, ptr %switch.gep28, align 4
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 4, i32 noundef 3, i32 noundef %switch.load29, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %10 = trunc i32 %fmt to i16
  %trunc = and i16 %10, -4096
  %11 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.71)
  switch i16 %trunc, label %switch.lookup27.cleanup_crit_edge [
    i16 16384, label %switch.lookup27.sw.epilog16_crit_edge
    i16 4096, label %sw.bb14
  ]

switch.lookup27.sw.epilog16_crit_edge:            ; preds = %switch.lookup27
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog16

switch.lookup27.cleanup_crit_edge:                ; preds = %switch.lookup27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb14:                                          ; preds = %switch.lookup27
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog16

sw.epilog16:                                      ; preds = %sw.bb14, %switch.lookup27.sw.epilog16_crit_edge
  %val.2 = phi i32 [ 32, %sw.bb14 ], [ 0, %switch.lookup27.sw.epilog16_crit_edge ]
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef 32, i32 noundef %val.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog16, %switch.lookup27.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog16 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ -22, %switch.lookup27.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sun4i_i2s_wr_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -16
  %switch.and = and i32 %0, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp ne i32 %switch.and, 0
  ret i1 %switch.selectcmp
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sun4i_i2s_rd_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %reg)
  %cond = icmp ne i32 %reg, 12
  ret i1 %cond
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sun4i_i2s_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -16
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %2 = icmp ult i32 %1, 8
  %switch.cast = trunc i32 %1 to i8
  %switch.downshift = lshr i8 -47, %switch.cast
  %3 = and i8 %switch.downshift, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %switch.masked = icmp ne i8 %3, 0
  %retval.0 = select i1 %2, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_i2s_get_bclk_parent_rate(ptr nocapture noundef readonly %i2s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mod_clk = getelementptr inbounds %struct.sun4i_i2s, ptr %i2s, i32 0, i32 1
  %0 = ptrtoint ptr %mod_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mod_clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sun8i_i2s_get_sr_wss(i32 noundef %width) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %width, -8
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %2 = icmp ult i32 %1, 7
  %switch.offset = add i32 %1, 1
  %retval.0 = select i1 %2, i32 %switch.offset, i32 -22
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_i2s_set_chan_cfg(ptr nocapture noundef readonly %i2s, i32 noundef %channels, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.sun4i_i2s, ptr %i2s, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 68, i32 noundef 1985229328) #10
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 88, i32 noundef 1985229328) #10
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %sub = add i32 %channels, -1
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 52, i32 noundef 7, i32 noundef %sub, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i39 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 84, i32 noundef 7, i32 noundef %sub, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i40 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 48, i32 noundef 7, i32 noundef %sub, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %shl14 = shl i32 %sub, 4
  %call.i41 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 48, i32 noundef 112, i32 noundef %shl14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %format = getelementptr inbounds %struct.sun4i_i2s, ptr %i2s, i32 0, i32 4
  %12 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %format, align 4
  %and = and i32 %13, 15
  %14 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 4, label %entry.sw.bb_crit_edge
    i32 5, label %entry.sw.bb_crit_edge44
    i32 3, label %entry.sw.epilog_crit_edge
    i32 2, label %entry.sw.epilog_crit_edge45
    i32 1, label %entry.sw.epilog_crit_edge46
  ]

entry.sw.epilog_crit_edge46:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge45:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.bb_crit_edge44:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge44
  %mul = mul i32 %slot_width, %slots
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge45, %entry.sw.epilog_crit_edge46
  %lrck_period.0 = phi i32 [ %mul, %sw.bb ], [ %slot_width, %entry.sw.epilog_crit_edge ], [ %slot_width, %entry.sw.epilog_crit_edge45 ], [ %slot_width, %entry.sw.epilog_crit_edge46 ]
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %sub18 = shl i32 %lrck_period.0, 8
  %shl19 = add i32 %sub18, -256
  %call.i42 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 4, i32 noundef 261888, i32 noundef %shl19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %notmask = shl nsw i32 -1, %channels
  %sub23 = xor i32 %notmask, -1
  %shl24 = shl i32 %sub23, 4
  %call.i43 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 52, i32 noundef 4080, i32 noundef %shl24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_i2s_set_soc_fmt(ptr nocapture noundef readonly %i2s, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %fmt, 8
  %0 = and i32 %and, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %0)
  %1 = icmp ult i32 %0, 5
  br i1 %1, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %0 to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %2 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %switch.lobit.not = icmp eq i8 %2, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.sun8i_i2s_set_soc_fmt, i32 0, i32 %0
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %regmap = getelementptr inbounds %struct.sun4i_i2s, ptr %i2s, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 4, i32 noundef 524416, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %and4 = and i32 %fmt, 15
  %switch.tableidx = add nsw i32 %and4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 5
  br i1 %6, label %switch.lookup45, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup45:                                  ; preds = %switch.lookup
  %switch.gep46 = getelementptr inbounds [5 x i32], ptr @switch.table.sun8i_i2s_set_soc_fmt.63, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep46 to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load47 = load i32, ptr %switch.gep46, align 4
  %switch.gep48 = getelementptr inbounds [5 x i32], ptr @switch.table.sun8i_i2s_set_soc_fmt.64, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep48 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load49 = load i32, ptr %switch.gep48, align 4
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i40 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 0, i32 noundef 48, i32 noundef %switch.load47, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i41 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 52, i32 noundef 12288, i32 noundef %switch.load49, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i42 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 84, i32 noundef 12288, i32 noundef %switch.load49, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %15 = trunc i32 %fmt to i16
  %trunc = and i16 %15, -4096
  %16 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.73)
  switch i16 %trunc, label %switch.lookup45.cleanup_crit_edge [
    i16 16384, label %switch.lookup45.sw.epilog24_crit_edge
    i16 4096, label %sw.bb22
  ]

switch.lookup45.sw.epilog24_crit_edge:            ; preds = %switch.lookup45
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog24

switch.lookup45.cleanup_crit_edge:                ; preds = %switch.lookup45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb22:                                          ; preds = %switch.lookup45
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog24

sw.epilog24:                                      ; preds = %sw.bb22, %switch.lookup45.sw.epilog24_crit_edge
  %val.1 = phi i32 [ 0, %sw.bb22 ], [ 393216, %switch.lookup45.sw.epilog24_crit_edge ]
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i43 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 0, i32 noundef 393216, i32 noundef %val.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call.i44 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 8, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog24, %switch.lookup45.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog24 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ -22, %switch.lookup45.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sun8i_i2s_rd_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %reg)
  %cond = icmp ne i32 %reg, 32
  ret i1 %cond
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sun8i_i2s_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -12
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %2 = icmp ult i32 %1, 9
  %switch.cast = trunc i32 %1 to i9
  %switch.downshift = lshr i9 -81, %switch.cast
  %3 = and i9 %switch.downshift, 1
  %4 = sext i9 %3 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %switch.masked = icmp ne i9 %3, 0
  %retval.0 = select i1 %2, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun50i_h6_i2s_set_chan_cfg(ptr nocapture noundef readonly %i2s, i32 noundef %channels, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.sun4i_i2s, ptr %i2s, i32 0, i32 2
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 68, i32 noundef -19088744) #10
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 72, i32 noundef 1985229328) #10
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 104, i32 noundef -19088744) #10
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 108, i32 noundef 1985229328) #10
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %sub = add i32 %channels, -1
  %shl = shl i32 %sub, 16
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 52, i32 noundef 983040, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i44 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 100, i32 noundef 983040, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i45 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 48, i32 noundef 7, i32 noundef %sub, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %shl18 = shl i32 %sub, 4
  %call.i46 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 48, i32 noundef 112, i32 noundef %shl18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %format = getelementptr inbounds %struct.sun4i_i2s, ptr %i2s, i32 0, i32 4
  %16 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %format, align 4
  %and = and i32 %17, 15
  %18 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 4, label %entry.sw.bb_crit_edge
    i32 5, label %entry.sw.bb_crit_edge49
    i32 3, label %entry.sw.epilog_crit_edge
    i32 2, label %entry.sw.epilog_crit_edge50
    i32 1, label %entry.sw.epilog_crit_edge51
  ]

entry.sw.epilog_crit_edge51:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge50:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.bb_crit_edge49:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge49
  %mul = mul i32 %slot_width, %slots
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge50, %entry.sw.epilog_crit_edge51
  %lrck_period.0 = phi i32 [ %mul, %sw.bb ], [ %slot_width, %entry.sw.epilog_crit_edge ], [ %slot_width, %entry.sw.epilog_crit_edge50 ], [ %slot_width, %entry.sw.epilog_crit_edge51 ]
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %sub22 = shl i32 %lrck_period.0, 8
  %shl23 = add i32 %sub22, -256
  %call.i47 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 4, i32 noundef 261888, i32 noundef %shl23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %notmask = shl nsw i32 -1, %channels
  %sub27 = xor i32 %notmask, -1
  %call.i48 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 52, i32 noundef 65535, i32 noundef %sub27, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun50i_h6_i2s_set_soc_fmt(ptr nocapture noundef readonly %i2s, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %fmt, 8
  %0 = and i32 %and, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %0)
  %1 = icmp ult i32 %0, 5
  br i1 %1, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %0 to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %2 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %switch.lobit.not = icmp eq i8 %2, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.sun50i_h6_i2s_set_soc_fmt, i32 0, i32 %0
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %regmap = getelementptr inbounds %struct.sun4i_i2s, ptr %i2s, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 4, i32 noundef 524416, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %and4 = and i32 %fmt, 15
  %switch.tableidx = add nsw i32 %and4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 5
  br i1 %6, label %switch.lookup45, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup45:                                  ; preds = %switch.lookup
  %switch.gep46 = getelementptr inbounds [5 x i32], ptr @switch.table.sun50i_h6_i2s_set_soc_fmt.65, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep46 to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load47 = load i32, ptr %switch.gep46, align 4
  %switch.gep48 = getelementptr inbounds [5 x i32], ptr @switch.table.sun50i_h6_i2s_set_soc_fmt.66, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep48 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load49 = load i32, ptr %switch.gep48, align 4
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i40 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 0, i32 noundef 48, i32 noundef %switch.load47, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i41 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 52, i32 noundef 3145728, i32 noundef %switch.load49, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i42 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 100, i32 noundef 3145728, i32 noundef %switch.load49, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %15 = trunc i32 %fmt to i16
  %trunc = and i16 %15, -4096
  %16 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.75)
  switch i16 %trunc, label %switch.lookup45.cleanup_crit_edge [
    i16 16384, label %switch.lookup45.sw.epilog24_crit_edge
    i16 4096, label %sw.bb22
  ]

switch.lookup45.sw.epilog24_crit_edge:            ; preds = %switch.lookup45
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog24

switch.lookup45.cleanup_crit_edge:                ; preds = %switch.lookup45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb22:                                          ; preds = %switch.lookup45
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog24

sw.epilog24:                                      ; preds = %sw.bb22, %switch.lookup45.sw.epilog24_crit_edge
  %val.1 = phi i32 [ 0, %sw.bb22 ], [ 393216, %switch.lookup45.sw.epilog24_crit_edge ]
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i43 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 0, i32 noundef 393216, i32 noundef %val.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call.i44 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 8, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog24, %switch.lookup45.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog24 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ], [ -22, %switch.lookup45.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !80, !82, !84, !86, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @__initcall__kmod_sun4i_i2s__241_1627_sun4i_i2s_driver_init6, !1, !"__initcall__kmod_sun4i_i2s__241_1627_sun4i_i2s_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1627, i32 1}
!2 = !{ptr @__exitcall_sun4i_i2s_driver_exit, !1, !"__exitcall_sun4i_i2s_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author242, !4, !"__UNIQUE_ID_author242", i1 false, i1 false}
!4 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1629, i32 1}
!5 = !{ptr @__UNIQUE_ID_author243, !6, !"__UNIQUE_ID_author243", i1 false, i1 false}
!6 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1630, i32 1}
!7 = !{ptr @__UNIQUE_ID_description244, !8, !"__UNIQUE_ID_description244", i1 false, i1 false}
!8 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1631, i32 1}
!9 = !{ptr @__UNIQUE_ID_file245, !10, !"__UNIQUE_ID_file245", i1 false, i1 false}
!10 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1632, i32 1}
!11 = !{ptr @__UNIQUE_ID_license246, !10, !"__UNIQUE_ID_license246", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1622, i32 12}
!14 = !{ptr @sun4i_i2s_driver, !15, !"sun4i_i2s_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1618, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1483, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sun4i_i2s_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @sun4i_i2s_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1487, i32 42}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1489, i32 3}
!28 = !{ptr @sun4i_i2s_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @sun4i_i2s_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @sun4i_i2s_probe._key, !31, !"_key", i1 false, i1 false}
!31 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1493, i32 16}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1496, i32 3}
!35 = !{ptr @sun4i_i2s_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @sun4i_i2s_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1500, i32 42}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1502, i32 3}
!41 = !{ptr @sun4i_i2s_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sun4i_i2s_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1509, i32 4}
!45 = !{ptr @sun4i_i2s_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @sun4i_i2s_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1517, i32 4}
!49 = !{ptr @sun4i_i2s_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @sun4i_i2s_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1539, i32 3}
!53 = !{ptr @sun4i_i2s_probe._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @sun4i_i2s_probe._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1545, i32 3}
!57 = !{ptr @sun4i_i2s_probe._entry.27, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @sun4i_i2s_probe._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1553, i32 3}
!61 = !{ptr @sun4i_i2s_probe._entry.30, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @sun4i_i2s_probe._entry_ptr.32, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1268, i32 3}
!65 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @sun4i_i2s_runtime_resume._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @sun4i_i2s_runtime_resume._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1277, i32 3}
!70 = !{ptr @sun4i_i2s_runtime_resume._entry.35, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @sun4i_i2s_runtime_resume._entry_ptr.37, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1292, i32 3}
!74 = !{ptr @sun4i_i2s_runtime_resume._entry.38, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @sun4i_i2s_runtime_resume._entry_ptr.40, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1110, i32 10}
!78 = !{ptr @sun4i_i2s_component, !79, !"sun4i_i2s_component", i1 false, i1 false}
!79 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1109, i32 46}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1092, i32 18}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1099, i32 18}
!84 = !{ptr @sun4i_i2s_dai, !85, !"sun4i_i2s_dai", i1 false, i1 false}
!85 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1089, i32 34}
!86 = !{ptr @sun4i_i2s_dai_ops, !87, !"sun4i_i2s_dai_ops", i1 false, i1 false}
!87 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1066, i32 37}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 930, i32 3}
!90 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @sun4i_i2s_set_fmt._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @sun4i_i2s_set_fmt._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 595, i32 3}
!95 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @sun4i_i2s_hw_params._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @sun4i_i2s_hw_params._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 614, i32 3}
!100 = !{ptr @sun4i_i2s_hw_params._entry.48, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @sun4i_i2s_hw_params._entry_ptr.50, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 358, i32 3}
!104 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @sun4i_i2s_set_clk_rate._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @sun4i_i2s_set_clk_rate._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 368, i32 3}
!109 = !{ptr @sun4i_i2s_set_clk_rate._entry.53, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @sun4i_i2s_set_clk_rate._entry_ptr.55, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 377, i32 3}
!113 = !{ptr @sun4i_i2s_set_clk_rate._entry.56, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @sun4i_i2s_set_clk_rate._entry_ptr.58, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.60, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 383, i32 3}
!117 = !{ptr @sun4i_i2s_set_clk_rate._entry.59, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @sun4i_i2s_set_clk_rate._entry_ptr.61, !116, !"_entry_ptr", i1 false, i1 false}
!119 = distinct !{null, !120, !"sun4i_i2s_oversample_rates", i1 false, i1 false}
!120 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 313, i32 12}
!121 = !{ptr @sun4i_i2s_match, !122, !"sun4i_i2s_match", i1 false, i1 false}
!122 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1584, i32 34}
!123 = !{ptr @sun4i_a10_i2s_quirks, !124, !"sun4i_a10_i2s_quirks", i1 false, i1 false}
!124 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1324, i32 38}
!125 = !{ptr @sun4i_i2s_regmap_config, !126, !"sun4i_i2s_regmap_config", i1 false, i1 false}
!126 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1221, i32 35}
!127 = !{ptr @sun4i_i2s_reg_defaults, !128, !"sun4i_i2s_reg_defaults", i1 false, i1 false}
!128 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1178, i32 33}
!129 = !{ptr @sun4i_i2s_bclk_div, !130, !"sun4i_i2s_bclk_div", i1 false, i1 false}
!130 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 225, i32 39}
!131 = !{ptr @sun4i_i2s_mclk_div, !132, !"sun4i_i2s_mclk_div", i1 false, i1 false}
!132 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 235, i32 39}
!133 = !{ptr @sun6i_a31_i2s_quirks, !134, !"sun6i_a31_i2s_quirks", i1 false, i1 false}
!134 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1342, i32 38}
!135 = !{ptr @sun8i_a83t_i2s_quirks, !136, !"sun8i_a83t_i2s_quirks", i1 false, i1 false}
!136 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1365, i32 38}
!137 = !{ptr @sun8i_h3_i2s_quirks, !138, !"sun8i_h3_i2s_quirks", i1 false, i1 false}
!138 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1383, i32 38}
!139 = !{ptr @sun8i_i2s_regmap_config, !140, !"sun8i_i2s_regmap_config", i1 false, i1 false}
!140 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1235, i32 35}
!141 = !{ptr @sun8i_i2s_reg_defaults, !142, !"sun8i_i2s_reg_defaults", i1 false, i1 false}
!142 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1191, i32 33}
!143 = !{ptr @sun8i_i2s_clk_div, !144, !"sun8i_i2s_clk_div", i1 false, i1 false}
!144 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 247, i32 39}
!145 = !{ptr @sun50i_a64_codec_i2s_quirks, !146, !"sun50i_a64_codec_i2s_quirks", i1 false, i1 false}
!146 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1401, i32 38}
!147 = !{ptr @sun50i_h6_i2s_quirks, !148, !"sun50i_h6_i2s_quirks", i1 false, i1 false}
!148 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1419, i32 38}
!149 = !{ptr @sun50i_h6_i2s_regmap_config, !150, !"sun50i_h6_i2s_regmap_config", i1 false, i1 false}
!150 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1248, i32 35}
!151 = !{ptr @sun50i_h6_i2s_reg_defaults, !152, !"sun50i_h6_i2s_reg_defaults", i1 false, i1 false}
!152 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1205, i32 33}
!153 = !{ptr @sun4i_i2s_pm_ops, !154, !"sun4i_i2s_pm_ops", i1 false, i1 false}
!154 = !{!"../sound/soc/sunxi/sun4i-i2s.c", i32 1613, i32 32}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{!"auto-init"}
!165 = !{i8 0, i8 2}
!166 = !{i32 0, i32 33}
