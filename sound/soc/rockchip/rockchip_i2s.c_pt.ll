; ModuleID = '/llk/IR_all_yes/sound/soc/rockchip/rockchip_i2s.c_pt.bc'
source_filename = "../sound/soc/rockchip/rockchip_i2s.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.reg_default = type { i32, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rk_i2s_pins = type { i32, i32 }
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
%struct.rk_i2s_dev = type { ptr, ptr, ptr, %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, %struct.spinlock }
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
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }

@__initcall__kmod_snd_soc_rockchip_i2s__241_802_rockchip_i2s_driver_init6 = internal global ptr @rockchip_i2s_driver_init, section ".initcall6.init", align 4
@rockchip_i2s_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rockchip_i2s_probe, ptr @rockchip_i2s_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_i2s_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_i2s_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rockchip_i2s_driver_exit = internal global ptr @rockchip_i2s_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description242 = internal constant [61 x i8] c"snd_soc_rockchip_i2s.description=ROCKCHIP IIS ASoC Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [60 x i8] c"snd_soc_rockchip_i2s.author=jianqun <jay.xu@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [66 x i8] c"snd_soc_rockchip_i2s.file=sound/soc/rockchip/snd-soc-rockchip-i2s\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [36 x i8] c"snd_soc_rockchip_i2s.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias246 = internal constant [49 x i8] c"snd_soc_rockchip_i2s.alias=platform:rockchip-i2s\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip-i2s\00", [19 x i8] zeroinitializer }, align 32
@rockchip_i2s_match = internal constant { [15 x %struct.of_device_id], [708 x i8] } { [15 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk1808-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3036-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3066-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3128-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3188-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3228-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3308-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3328-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3366-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3368-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_i2s_pins }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rv1126-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [708 x i8] zeroinitializer }, align 32
@rockchip_i2s_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2s_runtime_suspend, ptr @i2s_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@rockchip_i2s_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&i2s->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip,grf\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s_hclk\00", [23 x i8] zeroinitializer }, align 32
@rockchip_i2s_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 707, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Can't retrieve i2s bus clock\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rockchip_i2s_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sound/soc/rockchip/rockchip_i2s.c\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rockchip_i2s_probe._entry_ptr = internal global ptr @rockchip_i2s_probe._entry, section ".printk_index", align 4
@rockchip_i2s_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 712, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hclock enable failed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@rockchip_i2s_probe._entry_ptr.11 = internal global ptr @rockchip_i2s_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2s_clk\00", [24 x i8] zeroinitializer }, align 32
@rockchip_i2s_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 718, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can't retrieve i2s master clock\0A\00", [63 x i8] zeroinitializer }, align 32
@rockchip_i2s_probe._entry_ptr.15 = internal global ptr @rockchip_i2s_probe._entry.13, section ".printk_index", align 4
@rockchip_i2s_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rockchip_i2s_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @rockchip_i2s_wr_reg, ptr @rockchip_i2s_rd_reg, ptr @rockchip_i2s_volatile_reg, ptr @rockchip_i2s_precious_reg, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 40, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_i2s_reg_defaults, i32 5, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"rockchip_i2s:727:(&rockchip_i2s_regmap_config)->lock\00", [43 x i8] zeroinitializer }, align 32
@rockchip_i2s_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.6, i32 730, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to initialise managed register map\0A\00", [53 x i8] zeroinitializer }, align 32
@rockchip_i2s_probe._entry_ptr.19 = internal global ptr @rockchip_i2s_probe._entry.17, section ".printk_index", align 4
@rockchip_i2s_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rockchip_i2s_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.6, i32 754, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Could not register DAI\0A\00", [40 x i8] zeroinitializer }, align 32
@rockchip_i2s_probe._entry_ptr.22 = internal global ptr @rockchip_i2s_probe._entry.20, section ".printk_index", align 4
@rockchip_i2s_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.5, ptr @.str.6, i32 760, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Could not register PCM\0A\00", [40 x i8] zeroinitializer }, align 32
@rockchip_i2s_probe._entry_ptr.25 = internal global ptr @rockchip_i2s_probe._entry.23, section ".printk_index", align 4
@rockchip_i2s_reg_defaults = internal constant { [5 x %struct.reg_default], [56 x i8] } { [5 x %struct.reg_default] [%struct.reg_default { i32 0, i32 15 }, %struct.reg_default { i32 4, i32 15 }, %struct.reg_default { i32 8, i32 466719 }, %struct.reg_default { i32 16, i32 2031616 }, %struct.reg_default { i32 20, i32 32505856 }], [56 x i8] zeroinitializer }, align 32
@i2s_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.6, i32 76, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"clock enable failed %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i2s_runtime_resume\00", [45 x i8] zeroinitializer }, align 32
@i2s_runtime_resume._entry_ptr = internal global ptr @i2s_runtime_resume._entry, section ".printk_index", align 4
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dma-names\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@rockchip_i2s_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @rockchip_i2s_dai_probe, ptr null, ptr null, ptr null, ptr @rockchip_i2s_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream zeroinitializer, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rockchip,playback-channels\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rockchip,capture-channels\00", [38 x i8] zeroinitializer }, align 32
@rockchip_i2s_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @rockchip_i2s_set_sysclk, ptr null, ptr null, ptr @rockchip_i2s_set_bclk_ratio, ptr @rockchip_i2s_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_i2s_hw_params, ptr null, ptr null, ptr @rockchip_i2s_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@rockchip_i2s_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.6, i32 469, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Fail to set mclk %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rockchip_i2s_set_sysclk\00", [40 x i8] zeroinitializer }, align 32
@rockchip_i2s_set_sysclk._entry_ptr = internal global ptr @rockchip_i2s_set_sysclk._entry, section ".printk_index", align 4
@rockchip_i2s_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.6, i32 365, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid channel: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rockchip_i2s_hw_params\00", [41 x i8] zeroinitializer }, align 32
@rockchip_i2s_hw_params._entry_ptr = internal global ptr @rockchip_i2s_hw_params._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rockchip_snd_rxctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.6, i32 184, ptr @.str.41, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fail to clear\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rockchip_snd_rxctrl\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rockchip_snd_rxctrl._entry_ptr = internal global ptr @rockchip_snd_rxctrl._entry, section ".printk_index", align 4
@rockchip_snd_txctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.42, ptr @.str.6, i32 135, ptr @.str.41, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rockchip_snd_txctrl\00", [44 x i8] zeroinitializer }, align 32
@rockchip_snd_txctrl._entry_ptr = internal global ptr @rockchip_snd_txctrl._entry, section ".printk_index", align 4
@rk3399_i2s_pins = internal constant { %struct.rk_i2s_pins, [24 x i8] } { %struct.rk_i2s_pins { i32 57888, i32 11 }, [24 x i8] zeroinitializer }, align 32
@switch.table.rockchip_i2s_set_fmt = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 50331648, i32 67108864, i32 117440512], [44 x i8] zeroinitializer }, align 32
@switch.table.rockchip_i2s_set_fmt.43 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1024, i32 512, i32 160, i32 32], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.44 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 6, i64 10, i64 36]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 32768, i64 65536, i64 98304]
@__sancov_gen_cov_switch_values.47 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"rockchip_i2s_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 793, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 797, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c"rockchip_i2s_match\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 591, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant [20 x i8] c"rockchip_i2s_pm_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 788, i32 32 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 692, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 695, i32 51 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 705, i32 39 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 707, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 712, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 716, i32 39 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 718, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [27 x i8] c"rockchip_i2s_regmap_config\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 572, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 726, i32 16 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 729, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [23 x i8] c"rockchip_i2s_component\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 499, i32 46 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 754, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 760, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [26 x i8] c"rockchip_i2s_reg_defaults\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 564, i32 33 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 76, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 618, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 619, i32 25 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 621, i32 25 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"rockchip_i2s_dai\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 493, i32 34 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 631, i32 31 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 645, i32 35 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 652, i32 30 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 666, i32 35 }
@___asan_gen_.171 = private unnamed_addr constant [21 x i8] c"rockchip_i2s_dai_ops\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 485, i32 37 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 469, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 364, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 184, i32 6 }
@___asan_gen_.204 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 135, i32 6 }
@___asan_gen_.210 = private unnamed_addr constant [16 x i8] c"rk3399_i2s_pins\00", align 1
@___asan_gen_.211 = private constant [37 x i8] c"../sound/soc/rockchip/rockchip_i2s.c\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 586, i32 33 }
@___asan_gen_.213 = private unnamed_addr constant [34 x i8] c"switch.table.rockchip_i2s_set_fmt\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [37 x i8] c"switch.table.rockchip_i2s_set_fmt.43\00", align 1
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_alias246, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_rockchip_i2s_driver_exit, ptr @__initcall__kmod_snd_soc_rockchip_i2s__241_802_rockchip_i2s_driver_init6, ptr @i2s_runtime_resume._entry, ptr @i2s_runtime_resume._entry_ptr, ptr @rockchip_i2s_driver_exit, ptr @rockchip_i2s_hw_params._entry, ptr @rockchip_i2s_hw_params._entry_ptr, ptr @rockchip_i2s_probe._entry, ptr @rockchip_i2s_probe._entry.13, ptr @rockchip_i2s_probe._entry.17, ptr @rockchip_i2s_probe._entry.20, ptr @rockchip_i2s_probe._entry.23, ptr @rockchip_i2s_probe._entry.9, ptr @rockchip_i2s_probe._entry_ptr, ptr @rockchip_i2s_probe._entry_ptr.11, ptr @rockchip_i2s_probe._entry_ptr.15, ptr @rockchip_i2s_probe._entry_ptr.19, ptr @rockchip_i2s_probe._entry_ptr.22, ptr @rockchip_i2s_probe._entry_ptr.25, ptr @rockchip_i2s_set_sysclk._entry, ptr @rockchip_i2s_set_sysclk._entry_ptr, ptr @rockchip_snd_rxctrl._entry, ptr @rockchip_snd_rxctrl._entry_ptr, ptr @rockchip_snd_txctrl._entry, ptr @rockchip_snd_txctrl._entry_ptr, ptr @rockchip_i2s_driver, ptr @.str, ptr @rockchip_i2s_match, ptr @rockchip_i2s_pm_ops, ptr @rockchip_i2s_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @rockchip_i2s_probe._key, ptr @rockchip_i2s_regmap_config, ptr @.str.16, ptr @.str.18, ptr @rockchip_i2s_component, ptr @.str.21, ptr @.str.24, ptr @rockchip_i2s_reg_defaults, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @rockchip_i2s_dai, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @rockchip_i2s_dai_ops, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @rk3399_i2s_pins, ptr @switch.table.rockchip_i2s_set_fmt, ptr @switch.table.rockchip_i2s_set_fmt.43], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_match to i32), i32 2940, i32 3648, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_reg_defaults to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_snd_rxctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_snd_txctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_i2s_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rockchip_i2s_set_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rockchip_i2s_set_fmt.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_i2s_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_i2s_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_i2s_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_i2s_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_i2s_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #10
  %2 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !120
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 152, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.rk_i2s_dev, ptr %call.i, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @rockchip_i2s_probe.__key, i16 noundef signext 3) #10
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 4
  %call5 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.2) #10
  %grf = getelementptr inbounds %struct.rk_i2s_dev, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %grf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body.if.end16_crit_edge, label %if.then8

do.body.if.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then8:                                         ; preds = %do.body
  %call10 = tail call ptr @of_match_device(ptr noundef nonnull @rockchip_i2s_match, ptr noundef %dev) #10
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then8.cleanup_crit_edge, label %lor.lhs.false

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then8
  %data = getelementptr inbounds %struct.of_device_id, ptr %call10, i32 0, i32 3
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %tobool12.not = icmp eq ptr %6, null
  br i1 %tobool12.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end14

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %pins = getelementptr inbounds %struct.rk_i2s_dev, ptr %call.i, i32 0, i32 12
  %7 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %pins, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %do.body.if.end16_crit_edge
  %call18 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #10
  %hclk = getelementptr inbounds %struct.rk_i2s_dev, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %hclk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call18, ptr %hclk, align 4
  %cmp.i164 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i164, label %do.end24, label %if.end28

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #13
  %9 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hclk, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end16
  %call.i165 = tail call i32 @clk_prepare(ptr noundef %call18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %tobool.not.i = icmp eq i32 %call.i165, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end28.do.end35_crit_edge

if.end28.do.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end35

if.end.i:                                         ; preds = %if.end28
  %call1.i = tail call i32 @clk_enable(ptr noundef %call18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end37, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %call18) #10
  br label %do.end35

do.end35:                                         ; preds = %if.then3.i, %if.end28.do.end35_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i165, %if.end28.do.end35_crit_edge ]
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i.ph) #13
  br label %cleanup

if.end37:                                         ; preds = %if.end.i
  %call39 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  %mclk = getelementptr inbounds %struct.rk_i2s_dev, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call39, ptr %mclk, align 4
  %cmp.i166 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166, label %do.end45, label %if.end49

do.end45:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #13
  %15 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mclk, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %cleanup

if.end49:                                         ; preds = %if.end37
  %call50 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #10
  %cmp.i167 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %call50 to i32
  br label %cleanup

if.end54:                                         ; preds = %if.end49
  %call56 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call50, ptr noundef nonnull @rockchip_i2s_regmap_config, ptr noundef nonnull @rockchip_i2s_probe._key, ptr noundef nonnull @.str.16) #10
  %regmap = getelementptr inbounds %struct.rk_i2s_dev, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call56, ptr %regmap, align 4
  %cmp.i168 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i168, label %do.end62, label %if.end66

do.end62:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #13
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %22 = ptrtoint ptr %21 to i32
  br label %cleanup

if.end66:                                         ; preds = %if.end54
  %bclk_ratio = getelementptr inbounds %struct.rk_i2s_dev, ptr %call.i, i32 0, i32 13
  %23 = ptrtoint ptr %bclk_ratio to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 64, ptr %bclk_ratio, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i, align 4
  call void @pm_runtime_enable(ptr noundef %dev) #10
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %25 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i169 = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i169, label %if.end66.if.end77_crit_edge, label %if.then71

if.end66.if.end77_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then71:                                        ; preds = %if.end66
  %call73 = call i32 @i2s_runtime_resume(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then71.if.end77_crit_edge, label %if.then71.err_pm_disable_crit_edge

if.then71.err_pm_disable_crit_edge:               ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_pm_disable

if.then71.if.end77_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.end77:                                         ; preds = %if.then71.if.end77_crit_edge, %if.end66.if.end77_crit_edge
  %26 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %res, align 4
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 27
  %30 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %32 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %val.i, align 4, !annotation !120
  %call.i170 = call ptr @of_find_property(ptr noundef %31, ptr noundef nonnull @.str.28, ptr noundef null) #10
  %call1.i171 = call ptr @of_prop_next_string(ptr noundef %call.i170, ptr noundef null) #10
  %tobool.not106.i = icmp eq ptr %call1.i171, null
  br i1 %tobool.not106.i, label %if.end77.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end77.for.end.i_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end77
  %has_playback.i = getelementptr inbounds %struct.rk_i2s_dev, ptr %call.i, i32 0, i32 8
  %has_capture.i = getelementptr inbounds %struct.rk_i2s_dev, ptr %call.i, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %dma_name.0107.i = phi ptr [ %call1.i171, %for.body.lr.ph.i ], [ %call8.i, %for.inc.i.for.body.i_crit_edge ]
  %call2.i = call i32 @strcmp(ptr noundef nonnull %dma_name.0107.i, ptr noundef nonnull dereferenceable(3) @.str.29) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then.i, label %for.body.i.if.end.i172_crit_edge

for.body.i.if.end.i172_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i172

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %has_playback.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %has_playback.i, align 1
  br label %if.end.i172

if.end.i172:                                      ; preds = %if.then.i, %for.body.i.if.end.i172_crit_edge
  %call4.i = call i32 @strcmp(ptr noundef nonnull %dma_name.0107.i, ptr noundef nonnull dereferenceable(3) @.str.30) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i172.for.inc.i_crit_edge

if.end.i172.for.inc.i_crit_edge:                  ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %has_capture.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %has_capture.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %if.end.i172.for.inc.i_crit_edge
  %call8.i = call ptr @of_prop_next_string(ptr noundef %call.i170, ptr noundef nonnull %dma_name.0107.i) #10
  %tobool.not.i173 = icmp eq ptr %call8.i, null
  br i1 %tobool.not.i173, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end77.for.end.i_crit_edge
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  %call10.i = call ptr @devm_kmemdup(ptr noundef %36, ptr noundef nonnull @rockchip_i2s_dai, i32 noundef 168, i32 noundef 3264) #10
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %rockchip_i2s_init_dai.exit, label %if.end13.i

if.end13.i:                                       ; preds = %for.end.i
  %has_playback14.i = getelementptr inbounds %struct.rk_i2s_dev, ptr %call.i, i32 0, i32 8
  %37 = ptrtoint ptr %has_playback14.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %has_playback14.i, align 1, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool15.not.i = icmp eq i8 %38, 0
  br i1 %tobool15.not.i, label %if.end13.i.if.end32.i_crit_edge, label %if.then16.i

if.end13.i.if.end32.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

if.then16.i:                                      ; preds = %if.end13.i
  %playback.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call10.i, i32 0, i32 11
  %39 = ptrtoint ptr %playback.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.31, ptr %playback.i, align 8
  %channels_min.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call10.i, i32 0, i32 11, i32 5
  %40 = ptrtoint ptr %channels_min.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %channels_min.i, align 4
  %channels_max.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call10.i, i32 0, i32 11, i32 6
  %41 = ptrtoint ptr %channels_max.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 8, ptr %channels_max.i, align 8
  %rates.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call10.i, i32 0, i32 11, i32 2
  %42 = ptrtoint ptr %rates.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 8190, ptr %rates.i, align 8
  %formats.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call10.i, i32 0, i32 11, i32 1
  %43 = ptrtoint ptr %formats.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 68719477829, ptr %formats.i, align 8
  %44 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %27, align 4
  %add.i = add i32 %45, 36
  %playback_dma_data.i = getelementptr inbounds %struct.rk_i2s_dev, ptr %call.i, i32 0, i32 4
  %46 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add.i, ptr %playback_dma_data.i, align 4
  %addr_width.i = getelementptr inbounds %struct.rk_i2s_dev, ptr %call.i, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %addr_width.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 4, ptr %addr_width.i, align 4
  %maxburst.i = getelementptr inbounds %struct.rk_i2s_dev, ptr %call.i, i32 0, i32 4, i32 2
  %48 = ptrtoint ptr %maxburst.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 8, ptr %maxburst.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %31, ptr noundef nonnull @.str.32, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool24.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool24.not.i, label %if.then25.i, label %if.then16.i.if.end32.i_crit_edge

if.then16.i.if.end32.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

if.then25.i:                                      ; preds = %if.then16.i
  %49 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val.i, align 4
  %51 = add i32 %50, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %51)
  %52 = icmp ult i32 %51, 7
  br i1 %52, label %if.then27.i, label %if.then25.i.if.end32.i_crit_edge

if.then25.i.if.end32.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

if.then27.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %channels_max.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %50, ptr %channels_max.i, align 8
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then27.i, %if.then25.i.if.end32.i_crit_edge, %if.then16.i.if.end32.i_crit_edge, %if.end13.i.if.end32.i_crit_edge
  %has_capture33.i = getelementptr inbounds %struct.rk_i2s_dev, ptr %call.i, i32 0, i32 7
  %54 = ptrtoint ptr %has_capture33.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %has_capture33.i, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool34.not.i = icmp eq i8 %55, 0
  br i1 %tobool34.not.i, label %if.end32.i.if.end81_crit_edge, label %if.then35.i

if.end32.i.if.end81_crit_edge:                    ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then35.i:                                      ; preds = %if.end32.i
  %capture.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call10.i, i32 0, i32 10
  %56 = ptrtoint ptr %capture.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.33, ptr %capture.i, align 8
  %channels_min38.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call10.i, i32 0, i32 10, i32 5
  %57 = ptrtoint ptr %channels_min38.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %channels_min38.i, align 4
  %channels_max40.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call10.i, i32 0, i32 10, i32 6
  %58 = ptrtoint ptr %channels_max40.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 8, ptr %channels_max40.i, align 8
  %rates42.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call10.i, i32 0, i32 10, i32 2
  %59 = ptrtoint ptr %rates42.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 8190, ptr %rates42.i, align 8
  %formats44.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call10.i, i32 0, i32 10, i32 1
  %60 = ptrtoint ptr %formats44.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 68719477829, ptr %formats44.i, align 8
  %61 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %27, align 4
  %add46.i = add i32 %62, 40
  %capture_dma_data.i = getelementptr inbounds %struct.rk_i2s_dev, ptr %call.i, i32 0, i32 3
  %63 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add46.i, ptr %capture_dma_data.i, align 4
  %addr_width49.i = getelementptr inbounds %struct.rk_i2s_dev, ptr %call.i, i32 0, i32 3, i32 1
  %64 = ptrtoint ptr %addr_width49.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 4, ptr %addr_width49.i, align 4
  %maxburst51.i = getelementptr inbounds %struct.rk_i2s_dev, ptr %call.i, i32 0, i32 3, i32 2
  %65 = ptrtoint ptr %maxburst51.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 8, ptr %maxburst51.i, align 4
  %call.i.i105.i = call i32 @of_property_read_variable_u32_array(ptr noundef %31, ptr noundef nonnull @.str.34, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i105.i)
  %tobool53.not.i = icmp sgt i32 %call.i.i105.i, -1
  br i1 %tobool53.not.i, label %if.then54.i, label %if.then35.i.if.end81_crit_edge

if.then35.i.if.end81_crit_edge:                   ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then54.i:                                      ; preds = %if.then35.i
  %66 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %val.i, align 4
  %68 = add i32 %67, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %68)
  %69 = icmp ult i32 %68, 7
  br i1 %69, label %if.then58.i, label %if.then54.i.if.end81_crit_edge

if.then54.i.if.end81_crit_edge:                   ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then58.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %channels_max40.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %67, ptr %channels_max40.i, align 8
  br label %if.end81

rockchip_i2s_init_dai.exit:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  br label %err_pm_disable

if.end81:                                         ; preds = %if.then58.i, %if.then54.i.if.end81_crit_edge, %if.then35.i.if.end81_crit_edge, %if.end32.i.if.end81_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %call83 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @rockchip_i2s_component, ptr noundef nonnull %call10.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end90, label %if.end81.err_suspend_crit_edge

if.end81.err_suspend_crit_edge:                   ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_suspend

if.end90:                                         ; preds = %if.end81
  %call92 = call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev, ptr noundef null, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end90.cleanup_crit_edge, label %if.end90.err_suspend_crit_edge

if.end90.err_suspend_crit_edge:                   ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_suspend

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_suspend:                                      ; preds = %if.end90.err_suspend_crit_edge, %if.end81.err_suspend_crit_edge
  %.str.24.sink = phi ptr [ @.str.21, %if.end81.err_suspend_crit_edge ], [ @.str.24, %if.end90.err_suspend_crit_edge ]
  %ret.0 = phi i32 [ %call83, %if.end81.err_suspend_crit_edge ], [ %call92, %if.end90.err_suspend_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.24.sink) #13
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %71 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %cmp.i175 = icmp eq i32 %72, 2
  br i1 %cmp.i175, label %err_suspend.err_pm_disable_crit_edge, label %if.then102

err_suspend.err_pm_disable_crit_edge:             ; preds = %err_suspend
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_pm_disable

if.then102:                                       ; preds = %err_suspend
  call void @__sanitizer_cov_trace_pc() #12
  %call104 = call i32 @i2s_runtime_suspend(ptr noundef %dev)
  br label %err_pm_disable

err_pm_disable:                                   ; preds = %if.then102, %err_suspend.err_pm_disable_crit_edge, %rockchip_i2s_init_dai.exit, %if.then71.err_pm_disable_crit_edge
  %ret.1 = phi i32 [ -12, %rockchip_i2s_init_dai.exit ], [ %ret.0, %err_suspend.err_pm_disable_crit_edge ], [ %ret.0, %if.then102 ], [ %call73, %if.then71.err_pm_disable_crit_edge ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %err_pm_disable, %if.end90.cleanup_crit_edge, %do.end62, %if.then52, %do.end45, %do.end35, %do.end24, %lor.lhs.false.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %do.end24 ], [ %retval.0.i.ph, %do.end35 ], [ %17, %do.end45 ], [ %18, %if.then52 ], [ %22, %do.end62 ], [ %ret.1, %err_pm_disable ], [ -12, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then8.cleanup_crit_edge ], [ 0, %if.end90.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_i2s_remove(ptr noundef %pdev) #2 align 64 {
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
  %regmap.i = getelementptr inbounds %struct.rk_i2s_dev, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  tail call void @regcache_cache_only(ptr noundef %7, i1 noundef zeroext true) #10
  %mclk.i = getelementptr inbounds %struct.rk_i2s_dev, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mclk.i, align 4
  tail call void @clk_disable(ptr noundef %9) #10
  tail call void @clk_unprepare(ptr noundef %9) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hclk = getelementptr inbounds %struct.rk_i2s_dev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hclk, align 4
  tail call void @clk_disable(ptr noundef %11) #10
  tail call void @clk_unprepare(ptr noundef %11) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2s_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mclk = getelementptr inbounds %struct.rk_i2s_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mclk, align 4
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
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.26, i32 noundef %retval.0.i.ph) #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %regmap = getelementptr inbounds %struct.rk_i2s_dev, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %7, i1 noundef zeroext false) #10
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %9) #10
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call5 = tail call i32 @regcache_sync(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mclk, align 4
  tail call void @clk_disable(ptr noundef %13) #10
  tail call void @clk_unprepare(ptr noundef %13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call5, %if.then7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2s_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.rk_i2s_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #10
  %mclk = getelementptr inbounds %struct.rk_i2s_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mclk, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rockchip_i2s_wr_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.fshl.i32(i32 %reg, i32 %reg, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %0)
  %1 = icmp ult i32 %0, 10
  %switch.cast = trunc i32 %0 to i10
  %switch.downshift = lshr i10 -73, %switch.cast
  %2 = and i10 %switch.downshift, 1
  %3 = sext i10 %2 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %switch.masked = icmp ne i10 %2, 0
  %retval.0 = select i1 %1, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rockchip_i2s_rd_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.fshl.i32(i32 %reg, i32 %reg, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %0)
  %switch = icmp ult i32 %0, 11
  ret i1 %switch
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rockchip_i2s_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -12
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %2 = icmp ult i32 %1, 8
  %switch.cast = trunc i32 %1 to i8
  %switch.downshift = lshr i8 -23, %switch.cast
  %3 = and i8 %switch.downshift, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %switch.masked = icmp ne i8 %3, 0
  %retval.0 = select i1 %2, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rockchip_i2s_precious_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %reg)
  %cond = icmp eq i32 %reg, 40
  ret i1 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rockchip_i2s_dai_probe(ptr nocapture noundef %dai) #8 align 64 {
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
  %has_playback = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %has_playback to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_playback, align 1, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %playback_dma_data = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 4
  %spec.select = select i1 %tobool.not, ptr null, ptr %playback_dma_data
  %has_capture = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %has_capture to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_capture, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  %capture_dma_data = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 3
  %cond5 = select i1 %tobool1.not, ptr null, ptr %capture_dma_data
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %8 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %spec.select, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %9 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cond5, ptr %capture_dma_data.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_i2s_set_sysclk(ptr nocapture noundef readonly %cpu_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq)
  %cmp = icmp eq i32 %freq, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mclk = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mclk, align 4
  %call1 = tail call i32 @clk_set_rate(ptr noundef %5, i32 noundef %freq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.35, i32 noundef %call1) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call1, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rockchip_i2s_set_bclk_ratio(ptr nocapture noundef readonly %dai, i32 noundef %ratio) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %bclk_ratio = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %bclk_ratio to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %ratio, ptr %bclk_ratio, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_i2s_set_fmt(ptr nocapture noundef readonly %cpu_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #10
  %4 = trunc i32 %fmt to i16
  %trunc = and i16 %4, -4096
  %5 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %entry.err_pm_put_crit_edge [
    i16 16384, label %entry.sw.epilog_crit_edge
    i16 4096, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.err_pm_put_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_pm_put

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %.sink = phi i8 [ 0, %sw.bb2 ], [ 1, %entry.sw.epilog_crit_edge ]
  %val.0 = phi i32 [ 134217728, %sw.bb2 ], [ 0, %entry.sw.epilog_crit_edge ]
  %is_master_mode3 = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %is_master_mode3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.sink, ptr %is_master_mode3, align 4
  %regmap = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i52 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 8, i32 noundef 134217728, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %and5 = lshr i32 %fmt, 8
  %9 = and i32 %and5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %10 = icmp ult i32 %9, 5
  br i1 %10, label %switch.hole_check, label %sw.epilog.err_pm_put_crit_edge

sw.epilog.err_pm_put_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_pm_put

switch.hole_check:                                ; preds = %sw.epilog
  %switch.maskindex = trunc i32 %9 to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %11 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %switch.lobit.not = icmp eq i8 %11, 0
  br i1 %switch.lobit.not, label %switch.hole_check.err_pm_put_crit_edge, label %switch.lookup

switch.hole_check.err_pm_put_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_pm_put

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rockchip_i2s_set_fmt, i32 0, i32 %9
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i53 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 8, i32 noundef 117440512, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %and14 = and i32 %fmt, 15
  %switch.tableidx = add nsw i32 %and14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 5
  br i1 %15, label %switch.lookup70, label %switch.lookup.err_pm_put_crit_edge

switch.lookup.err_pm_put_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_pm_put

switch.lookup70:                                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep71 = getelementptr inbounds [5 x i32], ptr @switch.table.rockchip_i2s_set_fmt.43, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep71 to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load72 = load i32, ptr %switch.gep71, align 4
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i5458 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 0, i32 noundef 1952, i32 noundef %switch.load72, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call.i55 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 4, i32 noundef 1952, i32 noundef %switch.load72, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %err_pm_put

err_pm_put:                                       ; preds = %switch.lookup70, %switch.lookup.err_pm_put_crit_edge, %switch.hole_check.err_pm_put_crit_edge, %sw.epilog.err_pm_put_crit_edge, %entry.err_pm_put_crit_edge
  %ret.0 = phi i32 [ 0, %switch.lookup70 ], [ -22, %entry.err_pm_put_crit_edge ], [ -22, %sw.epilog.err_pm_put_crit_edge ], [ -22, %switch.lookup.err_pm_put_crit_edge ], [ -22, %switch.hole_check.err_pm_put_crit_edge ]
  %21 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i.i, align 4
  %call.i56 = tail call i32 @__pm_runtime_idle(ptr noundef %22, i32 noundef 5) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_i2s_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %val, align 4
  %is_master_mode = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 11
  %7 = ptrtoint ptr %is_master_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_master_mode, align 4, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then:                                          ; preds = %entry
  %mclk = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mclk, align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %10) #10
  %bclk_ratio = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 13
  %11 = ptrtoint ptr %bclk_ratio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bclk_ratio, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %mul = mul i32 %14, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool3.not = icmp eq i32 %mul, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %div112 = lshr i32 %mul, 1
  %add = add i32 %div112, %call1
  %div5 = udiv i32 %add, %mul
  %div7 = udiv i32 %mul, %14
  %regmap = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %sub = shl i32 %div5, 16
  %shl = add i32 %sub, -65536
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 8, i32 noundef 16711680, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %sub10 = add i32 %div7, -1
  %shl13 = shl i32 %sub10, 8
  %or = or i32 %shl13, %sub10
  %call.i115 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 8, i32 noundef 65535, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end15

if.end15:                                         ; preds = %if.end, %entry.if.end15_crit_edge
  %arrayidx.i.i116 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx.i.i116 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.end15.params_format.exit_crit_edge

if.end15.params_format.exit_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.end15
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.1.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.sw.bb_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit

for.inc.i.i.sw.bb_crit_edge:                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.end15.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.end15.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %20, %if.end15.params_format.exit_crit_edge ], [ %22, %for.inc.i.i.params_format.exit_crit_edge ]
  %23 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #10, !range !122
  %add.i.i = or i32 %23, %i.09.lcssa.i.i
  %24 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %add.i.i, label %params_format.exit.cleanup_crit_edge [
    i32 0, label %params_format.exit.sw.bb_crit_edge
    i32 2, label %sw.bb18
    i32 36, label %sw.bb20
    i32 6, label %sw.bb22
    i32 10, label %sw.bb24
  ]

params_format.exit.sw.bb_crit_edge:               ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %params_format.exit.sw.bb_crit_edge, %for.inc.i.i.sw.bb_crit_edge
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  %or17 = or i32 %26, 7
  store i32 %or17, ptr %val, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  %or19 = or i32 %28, 15
  store i32 %or19, ptr %val, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  %or21 = or i32 %30, 19
  store i32 %or21, ptr %val, align 4
  br label %sw.epilog

sw.bb22:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val, align 4
  %or23 = or i32 %32, 23
  store i32 %or23, ptr %val, align 4
  br label %sw.epilog

sw.bb24:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val, align 4
  %or25 = or i32 %34, 31
  store i32 %or25, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb
  %arrayidx.i.i117 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %35 = ptrtoint ptr %arrayidx.i.i117 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i117, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %36, label %do.end [
    i32 8, label %sw.bb27
    i32 6, label %sw.bb29
    i32 4, label %sw.bb31
    i32 2, label %sw.epilog.sw.epilog37_crit_edge
  ]

sw.epilog.sw.epilog37_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog37

sw.bb27:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val, align 4
  %or28 = or i32 %39, 98304
  store i32 %or28, ptr %val, align 4
  br label %sw.epilog37

sw.bb29:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val, align 4
  %or30 = or i32 %41, 65536
  store i32 %or30, ptr %val, align 4
  br label %sw.epilog37

sw.bb31:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val, align 4
  %or32 = or i32 %43, 32768
  store i32 %or32, ptr %val, align 4
  br label %sw.epilog37

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.37, i32 noundef %36) #13
  br label %cleanup

sw.epilog37:                                      ; preds = %sw.bb31, %sw.bb29, %sw.bb27, %sw.epilog.sw.epilog37_crit_edge
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %46 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp = icmp eq i32 %47, 1
  %regmap39 = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 5
  %48 = ptrtoint ptr %regmap39 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap39, align 4
  %50 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val, align 4
  %. = select i1 %cmp, i32 4, i32 0
  %call.i120 = tail call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef %., i32 noundef 98335, i32 noundef %51, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %grf = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 6
  %52 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sw.epilog37.if.end64_crit_edge, label %land.lhs.true

sw.epilog37.if.end64_crit_edge:                   ; preds = %sw.epilog37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

land.lhs.true:                                    ; preds = %sw.epilog37
  %pins = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 12
  %54 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pins, align 4
  %tobool45.not = icmp eq ptr %55, null
  br i1 %tobool45.not, label %land.lhs.true.if.end64_crit_edge, label %if.then46

land.lhs.true.if.end64_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then46:                                        ; preds = %land.lhs.true
  %regmap47 = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 5
  %56 = ptrtoint ptr %regmap47 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap47, align 4
  %call48 = call i32 @regmap_read(ptr noundef %57, i32 noundef 0, ptr noundef nonnull %val) #10
  %58 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %val, align 4
  %and = and i32 %59, 98304
  %60 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %and, label %sw.default52 [
    i32 32768, label %sw.bb49
    i32 65536, label %sw.bb50
    i32 98304, label %sw.bb51
  ]

sw.bb49:                                          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 6, ptr %val, align 4
  br label %sw.epilog53

sw.bb50:                                          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 4, ptr %val, align 4
  br label %sw.epilog53

sw.bb51:                                          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %val, align 4
  br label %sw.epilog53

sw.default52:                                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 7, ptr %val, align 4
  br label %sw.epilog53

sw.epilog53:                                      ; preds = %sw.default52, %sw.bb51, %sw.bb50, %sw.bb49
  %65 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pins, align 4
  %shift = getelementptr inbounds %struct.rk_i2s_pins, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %shift, align 4
  %69 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %val, align 4
  %shl55113 = or i32 %70, 458752
  %or60 = shl i32 %shl55113, %68
  store i32 %or60, ptr %val, align 4
  %71 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %grf, align 4
  %73 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %66, align 4
  %call63 = call i32 @regmap_write(ptr noundef %72, i32 noundef %74, i32 noundef %or60) #10
  br label %if.end64

if.end64:                                         ; preds = %sw.epilog53, %land.lhs.true.if.end64_crit_edge, %sw.epilog37.if.end64_crit_edge
  %regmap65 = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 5
  %75 = ptrtoint ptr %regmap65 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap65, align 4
  %call.i121 = call i32 @regmap_update_bits_base(ptr noundef %76, i32 noundef 16, i32 noundef 31, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %77 = ptrtoint ptr %regmap65 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap65, align 4
  %call.i122 = call i32 @regmap_update_bits_base(ptr noundef %78, i32 noundef 16, i32 noundef 2031616, i32 noundef 983040, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %79 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %val, align 4
  %driver = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 3
  %80 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %driver, align 4
  %symmetric_rate = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %81, i32 0, i32 12
  %82 = ptrtoint ptr %symmetric_rate to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load = load i8, ptr %symmetric_rate, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool69.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool69.not, label %if.end64.if.end76_crit_edge, label %land.lhs.true70

if.end64.if.end76_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

land.lhs.true70:                                  ; preds = %if.end64
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 2
  %83 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dai_link, align 4
  %symmetric_rate71 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %84, i32 0, i32 18
  %85 = ptrtoint ptr %symmetric_rate71 to i32
  call void @__asan_load4_noabort(i32 %85)
  %bf.load72 = load i32, ptr %symmetric_rate71, align 4
  %86 = and i32 %bf.load72, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool74.not = icmp eq i32 %86, 0
  br i1 %tobool74.not, label %land.lhs.true70.if.end76_crit_edge, label %if.then75

land.lhs.true70.if.end76_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then75:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 268435456, ptr %val, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %land.lhs.true70.if.end76_crit_edge, %if.end64.if.end76_crit_edge
  %88 = ptrtoint ptr %regmap65 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap65, align 4
  %90 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %val, align 4
  %call.i123 = call i32 @regmap_update_bits_base(ptr noundef %89, i32 noundef 8, i32 noundef 805306368, i32 noundef %91, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %do.end, %params_format.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end76 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %params_format.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_i2s_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %val.i19 = alloca i32, align 4
  %val.i16 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge59
    i32 4, label %entry.sw.bb_crit_edge60
    i32 5, label %entry.sw.bb1_crit_edge
    i32 0, label %entry.sw.bb1_crit_edge61
    i32 3, label %entry.sw.bb1_crit_edge62
  ]

entry.sw.bb1_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb_crit_edge60:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge59:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge59, %entry.sw.bb_crit_edge60
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %5 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  %lock.i = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %regmap.i = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 16, i32 noundef 16777216, i32 noundef 16777216, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call.i35.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 28, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %rx_start.i = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 10
  %11 = ptrtoint ptr %rx_start.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %rx_start.i, align 1
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i14 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 16, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call.i35.i15 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 28, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %tx_start.i = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %tx_start.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %tx_start.i, align 2
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge61, %entry.sw.bb1_crit_edge62
  %stream2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %15 = ptrtoint ptr %stream2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stream2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp3 = icmp eq i32 %16, 1
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %sw.bb1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i16) #10
  %17 = ptrtoint ptr %val.i16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %val.i16, align 4
  %lock.i17 = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %lock.i17) #10
  %rx_start3.i = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 10
  %18 = ptrtoint ptr %rx_start3.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %rx_start3.i, align 1
  %regmap4.i = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %regmap4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap4.i, align 4
  %call.i36.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 16, i32 noundef 16777216, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %tx_start.i18 = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 9
  %21 = ptrtoint ptr %tx_start.i18 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tx_start.i18, align 2, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool6.not.i = icmp eq i8 %22, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.then4.rockchip_snd_rxctrl.exit_crit_edge

if.then4.rockchip_snd_rxctrl.exit_crit_edge:      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_snd_rxctrl.exit

if.then7.i:                                       ; preds = %if.then4
  %23 = ptrtoint ptr %regmap4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap4.i, align 4
  %call.i37.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 28, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 32212200) #10
  %26 = ptrtoint ptr %regmap4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap4.i, align 4
  %call.i38.i = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 32, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %28 = ptrtoint ptr %regmap4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap4.i, align 4
  %call13.i = call i32 @regmap_read(ptr noundef %29, i32 noundef 32, ptr noundef nonnull %val.i16) #10
  %30 = ptrtoint ptr %val.i16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val.i16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool14.not.i = icmp eq i32 %31, 0
  br i1 %tobool14.not.i, label %if.then7.i.rockchip_snd_rxctrl.exit_crit_edge, label %while.body.i

if.then7.i.rockchip_snd_rxctrl.exit_crit_edge:    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_snd_rxctrl.exit

while.body.i:                                     ; preds = %if.then7.i
  %32 = ptrtoint ptr %regmap4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap4.i, align 4
  %call16.i = call i32 @regmap_read(ptr noundef %33, i32 noundef 32, ptr noundef nonnull %val.i16) #10
  %34 = ptrtoint ptr %val.i16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.i16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool14.not.1.i = icmp eq i32 %35, 0
  br i1 %tobool14.not.1.i, label %while.body.i.rockchip_snd_rxctrl.exit_crit_edge, label %while.body.1.i

while.body.i.rockchip_snd_rxctrl.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_snd_rxctrl.exit

while.body.1.i:                                   ; preds = %while.body.i
  %36 = ptrtoint ptr %regmap4.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap4.i, align 4
  %call16.1.i = call i32 @regmap_read(ptr noundef %37, i32 noundef 32, ptr noundef nonnull %val.i16) #10
  %38 = ptrtoint ptr %val.i16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val.i16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool14.not.2.i = icmp eq i32 %39, 0
  br i1 %tobool14.not.2.i, label %while.body.1.i.rockchip_snd_rxctrl.exit_crit_edge, label %while.body.2.i

while.body.1.i.rockchip_snd_rxctrl.exit_crit_edge: ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_snd_rxctrl.exit

while.body.2.i:                                   ; preds = %while.body.1.i
  %40 = ptrtoint ptr %regmap4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap4.i, align 4
  %call16.2.i = call i32 @regmap_read(ptr noundef %41, i32 noundef 32, ptr noundef nonnull %val.i16) #10
  %42 = ptrtoint ptr %val.i16 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val.i16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool14.not.3.i = icmp eq i32 %43, 0
  br i1 %tobool14.not.3.i, label %while.body.2.i.rockchip_snd_rxctrl.exit_crit_edge, label %while.body.3.i

while.body.2.i.rockchip_snd_rxctrl.exit_crit_edge: ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_snd_rxctrl.exit

while.body.3.i:                                   ; preds = %while.body.2.i
  %44 = ptrtoint ptr %regmap4.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap4.i, align 4
  %call16.3.i = call i32 @regmap_read(ptr noundef %45, i32 noundef 32, ptr noundef nonnull %val.i16) #10
  %46 = ptrtoint ptr %val.i16 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val.i16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool14.not.4.i = icmp eq i32 %47, 0
  br i1 %tobool14.not.4.i, label %while.body.3.i.rockchip_snd_rxctrl.exit_crit_edge, label %while.body.4.i

while.body.3.i.rockchip_snd_rxctrl.exit_crit_edge: ; preds = %while.body.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_snd_rxctrl.exit

while.body.4.i:                                   ; preds = %while.body.3.i
  %48 = ptrtoint ptr %regmap4.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap4.i, align 4
  %call16.4.i = call i32 @regmap_read(ptr noundef %49, i32 noundef 32, ptr noundef nonnull %val.i16) #10
  %50 = ptrtoint ptr %val.i16 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val.i16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool14.not.5.i = icmp eq i32 %51, 0
  br i1 %tobool14.not.5.i, label %while.body.4.i.rockchip_snd_rxctrl.exit_crit_edge, label %while.body.5.i

while.body.4.i.rockchip_snd_rxctrl.exit_crit_edge: ; preds = %while.body.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_snd_rxctrl.exit

while.body.5.i:                                   ; preds = %while.body.4.i
  %52 = ptrtoint ptr %regmap4.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap4.i, align 4
  %call16.5.i = call i32 @regmap_read(ptr noundef %53, i32 noundef 32, ptr noundef nonnull %val.i16) #10
  %54 = ptrtoint ptr %val.i16 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val.i16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool14.not.6.i = icmp eq i32 %55, 0
  br i1 %tobool14.not.6.i, label %while.body.5.i.rockchip_snd_rxctrl.exit_crit_edge, label %while.body.6.i

while.body.5.i.rockchip_snd_rxctrl.exit_crit_edge: ; preds = %while.body.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_snd_rxctrl.exit

while.body.6.i:                                   ; preds = %while.body.5.i
  %56 = ptrtoint ptr %regmap4.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap4.i, align 4
  %call16.6.i = call i32 @regmap_read(ptr noundef %57, i32 noundef 32, ptr noundef nonnull %val.i16) #10
  %58 = ptrtoint ptr %val.i16 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %val.i16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool14.not.7.i = icmp eq i32 %59, 0
  br i1 %tobool14.not.7.i, label %while.body.6.i.rockchip_snd_rxctrl.exit_crit_edge, label %while.body.7.i

while.body.6.i.rockchip_snd_rxctrl.exit_crit_edge: ; preds = %while.body.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_snd_rxctrl.exit

while.body.7.i:                                   ; preds = %while.body.6.i
  %60 = ptrtoint ptr %regmap4.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap4.i, align 4
  %call16.7.i = call i32 @regmap_read(ptr noundef %61, i32 noundef 32, ptr noundef nonnull %val.i16) #10
  %62 = ptrtoint ptr %val.i16 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val.i16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool14.not.8.i = icmp eq i32 %63, 0
  br i1 %tobool14.not.8.i, label %while.body.7.i.rockchip_snd_rxctrl.exit_crit_edge, label %while.body.8.i

while.body.7.i.rockchip_snd_rxctrl.exit_crit_edge: ; preds = %while.body.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_snd_rxctrl.exit

while.body.8.i:                                   ; preds = %while.body.7.i
  %64 = ptrtoint ptr %regmap4.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap4.i, align 4
  %call16.8.i = call i32 @regmap_read(ptr noundef %65, i32 noundef 32, ptr noundef nonnull %val.i16) #10
  %66 = ptrtoint ptr %val.i16 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %val.i16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool14.not.9.i = icmp eq i32 %67, 0
  br i1 %tobool14.not.9.i, label %while.body.8.i.rockchip_snd_rxctrl.exit_crit_edge, label %while.body.9.i

while.body.8.i.rockchip_snd_rxctrl.exit_crit_edge: ; preds = %while.body.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_snd_rxctrl.exit

while.body.9.i:                                   ; preds = %while.body.8.i
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %regmap4.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap4.i, align 4
  %call16.9.i = call i32 @regmap_read(ptr noundef %69, i32 noundef 32, ptr noundef nonnull %val.i16) #10
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %71, ptr noundef nonnull @.str.39) #13
  br label %rockchip_snd_rxctrl.exit

rockchip_snd_rxctrl.exit:                         ; preds = %while.body.9.i, %while.body.8.i.rockchip_snd_rxctrl.exit_crit_edge, %while.body.7.i.rockchip_snd_rxctrl.exit_crit_edge, %while.body.6.i.rockchip_snd_rxctrl.exit_crit_edge, %while.body.5.i.rockchip_snd_rxctrl.exit_crit_edge, %while.body.4.i.rockchip_snd_rxctrl.exit_crit_edge, %while.body.3.i.rockchip_snd_rxctrl.exit_crit_edge, %while.body.2.i.rockchip_snd_rxctrl.exit_crit_edge, %while.body.1.i.rockchip_snd_rxctrl.exit_crit_edge, %while.body.i.rockchip_snd_rxctrl.exit_crit_edge, %if.then7.i.rockchip_snd_rxctrl.exit_crit_edge, %if.then4.rockchip_snd_rxctrl.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i17) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i16) #10
  br label %sw.epilog

if.else5:                                         ; preds = %sw.bb1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i19) #10
  %72 = ptrtoint ptr %val.i19 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %val.i19, align 4
  %lock.i20 = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %lock.i20) #10
  %tx_start3.i = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 9
  %73 = ptrtoint ptr %tx_start3.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %tx_start3.i, align 2
  %regmap4.i21 = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 5
  %74 = ptrtoint ptr %regmap4.i21 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap4.i21, align 4
  %call.i36.i22 = tail call i32 @regmap_update_bits_base(ptr noundef %75, i32 noundef 16, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %rx_start.i23 = getelementptr inbounds %struct.rk_i2s_dev, ptr %3, i32 0, i32 10
  %76 = ptrtoint ptr %rx_start.i23 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %rx_start.i23, align 1, !range !121
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool6.not.i24 = icmp eq i8 %77, 0
  br i1 %tobool6.not.i24, label %if.then7.i29, label %if.else5.rockchip_snd_txctrl.exit_crit_edge

if.else5.rockchip_snd_txctrl.exit_crit_edge:      ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_snd_txctrl.exit

if.then7.i29:                                     ; preds = %if.else5
  %78 = ptrtoint ptr %regmap4.i21 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap4.i21, align 4
  %call.i37.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %79, i32 noundef 28, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 32212200) #10
  %81 = ptrtoint ptr %regmap4.i21 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap4.i21, align 4
  %call.i38.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 32, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %83 = ptrtoint ptr %regmap4.i21 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap4.i21, align 4
  %call13.i27 = call i32 @regmap_read(ptr noundef %84, i32 noundef 32, ptr noundef nonnull %val.i19) #10
  %85 = ptrtoint ptr %val.i19 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %val.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool14.not.i28 = icmp eq i32 %86, 0
  br i1 %tobool14.not.i28, label %if.then7.i29.rockchip_snd_txctrl.exit_crit_edge, label %while.body.i32

if.then7.i29.rockchip_snd_txctrl.exit_crit_edge:  ; preds = %if.then7.i29
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_snd_txctrl.exit

while.body.i32:                                   ; preds = %if.then7.i29
  %87 = ptrtoint ptr %regmap4.i21 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap4.i21, align 4
  %call16.i30 = call i32 @regmap_read(ptr noundef %88, i32 noundef 32, ptr noundef nonnull %val.i19) #10
  %89 = ptrtoint ptr %val.i19 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %val.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool14.not.1.i31 = icmp eq i32 %90, 0
  br i1 %tobool14.not.1.i31, label %while.body.i32.rockchip_snd_txctrl.exit_crit_edge, label %while.body.1.i35

while.body.i32.rockchip_snd_txctrl.exit_crit_edge: ; preds = %while.body.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_snd_txctrl.exit

while.body.1.i35:                                 ; preds = %while.body.i32
  %91 = ptrtoint ptr %regmap4.i21 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap4.i21, align 4
  %call16.1.i33 = call i32 @regmap_read(ptr noundef %92, i32 noundef 32, ptr noundef nonnull %val.i19) #10
  %93 = ptrtoint ptr %val.i19 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %val.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool14.not.2.i34 = icmp eq i32 %94, 0
  br i1 %tobool14.not.2.i34, label %while.body.1.i35.rockchip_snd_txctrl.exit_crit_edge, label %while.body.2.i38

while.body.1.i35.rockchip_snd_txctrl.exit_crit_edge: ; preds = %while.body.1.i35
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_snd_txctrl.exit

while.body.2.i38:                                 ; preds = %while.body.1.i35
  %95 = ptrtoint ptr %regmap4.i21 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regmap4.i21, align 4
  %call16.2.i36 = call i32 @regmap_read(ptr noundef %96, i32 noundef 32, ptr noundef nonnull %val.i19) #10
  %97 = ptrtoint ptr %val.i19 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %val.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool14.not.3.i37 = icmp eq i32 %98, 0
  br i1 %tobool14.not.3.i37, label %while.body.2.i38.rockchip_snd_txctrl.exit_crit_edge, label %while.body.3.i41

while.body.2.i38.rockchip_snd_txctrl.exit_crit_edge: ; preds = %while.body.2.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_snd_txctrl.exit

while.body.3.i41:                                 ; preds = %while.body.2.i38
  %99 = ptrtoint ptr %regmap4.i21 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regmap4.i21, align 4
  %call16.3.i39 = call i32 @regmap_read(ptr noundef %100, i32 noundef 32, ptr noundef nonnull %val.i19) #10
  %101 = ptrtoint ptr %val.i19 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %val.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool14.not.4.i40 = icmp eq i32 %102, 0
  br i1 %tobool14.not.4.i40, label %while.body.3.i41.rockchip_snd_txctrl.exit_crit_edge, label %while.body.4.i44

while.body.3.i41.rockchip_snd_txctrl.exit_crit_edge: ; preds = %while.body.3.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_snd_txctrl.exit

while.body.4.i44:                                 ; preds = %while.body.3.i41
  %103 = ptrtoint ptr %regmap4.i21 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regmap4.i21, align 4
  %call16.4.i42 = call i32 @regmap_read(ptr noundef %104, i32 noundef 32, ptr noundef nonnull %val.i19) #10
  %105 = ptrtoint ptr %val.i19 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %val.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool14.not.5.i43 = icmp eq i32 %106, 0
  br i1 %tobool14.not.5.i43, label %while.body.4.i44.rockchip_snd_txctrl.exit_crit_edge, label %while.body.5.i47

while.body.4.i44.rockchip_snd_txctrl.exit_crit_edge: ; preds = %while.body.4.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_snd_txctrl.exit

while.body.5.i47:                                 ; preds = %while.body.4.i44
  %107 = ptrtoint ptr %regmap4.i21 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regmap4.i21, align 4
  %call16.5.i45 = call i32 @regmap_read(ptr noundef %108, i32 noundef 32, ptr noundef nonnull %val.i19) #10
  %109 = ptrtoint ptr %val.i19 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %val.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool14.not.6.i46 = icmp eq i32 %110, 0
  br i1 %tobool14.not.6.i46, label %while.body.5.i47.rockchip_snd_txctrl.exit_crit_edge, label %while.body.6.i50

while.body.5.i47.rockchip_snd_txctrl.exit_crit_edge: ; preds = %while.body.5.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_snd_txctrl.exit

while.body.6.i50:                                 ; preds = %while.body.5.i47
  %111 = ptrtoint ptr %regmap4.i21 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regmap4.i21, align 4
  %call16.6.i48 = call i32 @regmap_read(ptr noundef %112, i32 noundef 32, ptr noundef nonnull %val.i19) #10
  %113 = ptrtoint ptr %val.i19 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %val.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool14.not.7.i49 = icmp eq i32 %114, 0
  br i1 %tobool14.not.7.i49, label %while.body.6.i50.rockchip_snd_txctrl.exit_crit_edge, label %while.body.7.i53

while.body.6.i50.rockchip_snd_txctrl.exit_crit_edge: ; preds = %while.body.6.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_snd_txctrl.exit

while.body.7.i53:                                 ; preds = %while.body.6.i50
  %115 = ptrtoint ptr %regmap4.i21 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regmap4.i21, align 4
  %call16.7.i51 = call i32 @regmap_read(ptr noundef %116, i32 noundef 32, ptr noundef nonnull %val.i19) #10
  %117 = ptrtoint ptr %val.i19 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %val.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool14.not.8.i52 = icmp eq i32 %118, 0
  br i1 %tobool14.not.8.i52, label %while.body.7.i53.rockchip_snd_txctrl.exit_crit_edge, label %while.body.8.i56

while.body.7.i53.rockchip_snd_txctrl.exit_crit_edge: ; preds = %while.body.7.i53
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_snd_txctrl.exit

while.body.8.i56:                                 ; preds = %while.body.7.i53
  %119 = ptrtoint ptr %regmap4.i21 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regmap4.i21, align 4
  %call16.8.i54 = call i32 @regmap_read(ptr noundef %120, i32 noundef 32, ptr noundef nonnull %val.i19) #10
  %121 = ptrtoint ptr %val.i19 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %val.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool14.not.9.i55 = icmp eq i32 %122, 0
  br i1 %tobool14.not.9.i55, label %while.body.8.i56.rockchip_snd_txctrl.exit_crit_edge, label %while.body.9.i58

while.body.8.i56.rockchip_snd_txctrl.exit_crit_edge: ; preds = %while.body.8.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %rockchip_snd_txctrl.exit

while.body.9.i58:                                 ; preds = %while.body.8.i56
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %regmap4.i21 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regmap4.i21, align 4
  %call16.9.i57 = call i32 @regmap_read(ptr noundef %124, i32 noundef 32, ptr noundef nonnull %val.i19) #10
  %125 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %126, ptr noundef nonnull @.str.39) #13
  br label %rockchip_snd_txctrl.exit

rockchip_snd_txctrl.exit:                         ; preds = %while.body.9.i58, %while.body.8.i56.rockchip_snd_txctrl.exit_crit_edge, %while.body.7.i53.rockchip_snd_txctrl.exit_crit_edge, %while.body.6.i50.rockchip_snd_txctrl.exit_crit_edge, %while.body.5.i47.rockchip_snd_txctrl.exit_crit_edge, %while.body.4.i44.rockchip_snd_txctrl.exit_crit_edge, %while.body.3.i41.rockchip_snd_txctrl.exit_crit_edge, %while.body.2.i38.rockchip_snd_txctrl.exit_crit_edge, %while.body.1.i35.rockchip_snd_txctrl.exit_crit_edge, %while.body.i32.rockchip_snd_txctrl.exit_crit_edge, %if.then7.i29.rockchip_snd_txctrl.exit_crit_edge, %if.else5.rockchip_snd_txctrl.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i20) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i19) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %rockchip_snd_txctrl.exit, %rockchip_snd_rxctrl.exit, %if.else, %if.then, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %rockchip_snd_rxctrl.exit ], [ 0, %rockchip_snd_txctrl.exit ], [ 0, %if.then ], [ 0, %if.else ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !99, !101, !102, !103, !105, !107, !109}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__initcall__kmod_snd_soc_rockchip_i2s__241_802_rockchip_i2s_driver_init6, !1, !"__initcall__kmod_snd_soc_rockchip_i2s__241_802_rockchip_i2s_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 802, i32 1}
!2 = !{ptr @__exitcall_rockchip_i2s_driver_exit, !1, !"__exitcall_rockchip_i2s_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description242, !4, !"__UNIQUE_ID_description242", i1 false, i1 false}
!4 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 804, i32 1}
!5 = !{ptr @__UNIQUE_ID_author243, !6, !"__UNIQUE_ID_author243", i1 false, i1 false}
!6 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 805, i32 1}
!7 = !{ptr @__UNIQUE_ID_file244, !8, !"__UNIQUE_ID_file244", i1 false, i1 false}
!8 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 806, i32 1}
!9 = !{ptr @__UNIQUE_ID_license245, !8, !"__UNIQUE_ID_license245", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias246, !11, !"__UNIQUE_ID_alias246", i1 false, i1 false}
!11 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 807, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 797, i32 11}
!14 = !{ptr @rockchip_i2s_driver, !15, !"rockchip_i2s_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 793, i32 31}
!16 = !{ptr @rockchip_i2s_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 692, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 695, i32 51}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 705, i32 39}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 707, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @rockchip_i2s_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @rockchip_i2s_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 712, i32 3}
!33 = !{ptr @rockchip_i2s_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @rockchip_i2s_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 716, i32 39}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 718, i32 3}
!39 = !{ptr @rockchip_i2s_probe._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @rockchip_i2s_probe._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @rockchip_i2s_probe._key, !42, !"_key", i1 false, i1 false}
!42 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 726, i32 16}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 729, i32 3}
!46 = !{ptr @rockchip_i2s_probe._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @rockchip_i2s_probe._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 754, i32 3}
!50 = !{ptr @rockchip_i2s_probe._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @rockchip_i2s_probe._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 760, i32 3}
!54 = !{ptr @rockchip_i2s_probe._entry.23, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @rockchip_i2s_probe._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @rockchip_i2s_regmap_config, !57, !"rockchip_i2s_regmap_config", i1 false, i1 false}
!57 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 572, i32 35}
!58 = !{ptr @rockchip_i2s_reg_defaults, !59, !"rockchip_i2s_reg_defaults", i1 false, i1 false}
!59 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 564, i32 33}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 76, i32 3}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @i2s_runtime_resume._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @i2s_runtime_resume._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 618, i32 2}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 619, i32 25}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 621, i32 25}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 631, i32 31}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 645, i32 35}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 652, i32 30}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 666, i32 35}
!79 = !{ptr @rockchip_i2s_dai, !80, !"rockchip_i2s_dai", i1 false, i1 false}
!80 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 493, i32 34}
!81 = !{ptr @rockchip_i2s_dai_ops, !82, !"rockchip_i2s_dai_ops", i1 false, i1 false}
!82 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 485, i32 37}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 469, i32 3}
!85 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @rockchip_i2s_set_sysclk._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @rockchip_i2s_set_sysclk._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 364, i32 3}
!90 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @rockchip_i2s_hw_params._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @rockchip_i2s_hw_params._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 184, i32 6}
!95 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @rockchip_snd_rxctrl._entry, !94, !"_entry", i1 false, i1 false}
!98 = !{ptr @rockchip_snd_rxctrl._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 135, i32 6}
!101 = !{ptr @rockchip_snd_txctrl._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @rockchip_snd_txctrl._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @rockchip_i2s_component, !104, !"rockchip_i2s_component", i1 false, i1 false}
!104 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 499, i32 46}
!105 = !{ptr @rockchip_i2s_match, !106, !"rockchip_i2s_match", i1 false, i1 false}
!106 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 591, i32 34}
!107 = !{ptr @rk3399_i2s_pins, !108, !"rk3399_i2s_pins", i1 false, i1 false}
!108 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 586, i32 33}
!109 = !{ptr @rockchip_i2s_pm_ops, !110, !"rockchip_i2s_pm_ops", i1 false, i1 false}
!110 = !{!"../sound/soc/rockchip/rockchip_i2s.c", i32 788, i32 32}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{!"auto-init"}
!121 = !{i8 0, i8 2}
!122 = !{i32 0, i32 33}
