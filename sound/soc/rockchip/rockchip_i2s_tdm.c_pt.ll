; ModuleID = '/llk/IR_all_yes/sound/soc/rockchip/rockchip_i2s_tdm.c_pt.bc'
source_filename = "../sound/soc/rockchip/rockchip_i2s_tdm.c"
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
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.86, i32 }
%union.anon.86 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.reg_default = type { i32, i32 }
%struct.rk_i2s_soc_data = type { i32, i32, i32, i32, ptr, ptr }
%struct.txrx_config = type { i32, i32, i32, i32 }
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
%struct.rk_i2s_tdm_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_dmaengine_dai_dma_data, %struct.snd_dmaengine_dai_dma_data, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [4 x i32], i32, i32, %struct.spinlock, i8, i8, ptr }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.82, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { %struct.anon.85, [40 x i8] }
%struct.anon.85 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.81, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.81 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.76, [128 x i8] }
%union.anon.76 = type { %union.anon.78 }
%union.anon.78 = type { [64 x i64] }
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
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }

@__initcall__kmod_snd_soc_rockchip_i2s_tdm__242_1766_rockchip_i2s_tdm_driver_init6 = internal global ptr @rockchip_i2s_tdm_driver_init, section ".initcall6.init", align 4
@rockchip_i2s_tdm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rockchip_i2s_tdm_probe, ptr @rockchip_i2s_tdm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_i2s_tdm_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_i2s_tdm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rockchip_i2s_tdm_driver_exit = internal global ptr @rockchip_i2s_tdm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description243 = internal constant [69 x i8] c"snd_soc_rockchip_i2s_tdm.description=ROCKCHIP I2S/TDM ASoC Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_author244 = internal constant [73 x i8] c"snd_soc_rockchip_i2s_tdm.author=Sugar Zhang <sugar.zhang@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [74 x i8] c"snd_soc_rockchip_i2s_tdm.file=sound/soc/rockchip/snd-soc-rockchip-i2s-tdm\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [40 x i8] c"snd_soc_rockchip_i2s_tdm.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias247 = internal constant [57 x i8] c"snd_soc_rockchip_i2s_tdm.alias=platform:rockchip-i2s-tdm\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rockchip-i2s-tdm\00", [47 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-i2s-tdm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @px30_i2s_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk1808-i2s-tdm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk1808_i2s_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3308-i2s-tdm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3308_i2s_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3568-i2s-tdm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3568_i2s_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rv1126-i2s-tdm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rv1126_i2s_soc_data }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rockchip_i2s_tdm_suspend, ptr @rockchip_i2s_tdm_resume, ptr @rockchip_i2s_tdm_suspend, ptr @rockchip_i2s_tdm_resume, ptr @rockchip_i2s_tdm_suspend, ptr @rockchip_i2s_tdm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2s_tdm_runtime_suspend, ptr @i2s_tdm_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&i2s_tdm->lock\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rockchip,trcm-sync-tx-only\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rockchip,trcm-sync-rx-only\00", [37 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1561, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"invalid trcm-sync configuration\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rockchip_i2s_tdm_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"sound/soc/rockchip/rockchip_i2s_tdm.c\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_probe._entry_ptr = internal global ptr @rockchip_i2s_tdm_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip,grf\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error in rockchip,grf\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tx-m\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error in tx-m reset control\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rx-m\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error in rx-m reset control\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hclk\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get clock hclk\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mclk_tx\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get clock mclk_tx\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mclk_rx\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get clock mclk_rx\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rockchip,io-multiplex\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mclk-calibrate clocks missing\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to get resource IORESOURCE_MEM\0A\00", [57 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rockchip_i2s_tdm_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @rockchip_i2s_tdm_wr_reg, ptr @rockchip_i2s_tdm_rd_reg, ptr @rockchip_i2s_tdm_volatile_reg, ptr @rockchip_i2s_tdm_precious_reg, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 56, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_i2s_tdm_reg_defaults, i32 8, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"rockchip_i2s_tdm:1625:(&rockchip_i2s_tdm_regmap_config)->lock\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to initialise regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.5, ptr @.str.6, i32 1645, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"I2S TX path prepare failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_probe._entry_ptr.28 = internal global ptr @rockchip_i2s_tdm_probe._entry.26, section ".printk_index", align 4
@rockchip_i2s_tdm_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.5, ptr @.str.6, i32 1651, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"I2S RX path prepare failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_probe._entry_ptr.31 = internal global ptr @rockchip_i2s_tdm_probe._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable clock hclk\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to enable one or more mclks\0A\00", [60 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.5, ptr @.str.6, i32 1694, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Could not register DAI\0A\00", [40 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_probe._entry_ptr.36 = internal global ptr @rockchip_i2s_tdm_probe._entry.34, section ".printk_index", align 4
@rockchip_i2s_tdm_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.5, ptr @.str.6, i32 1700, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Could not register PCM\0A\00", [40 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_probe._entry_ptr.39 = internal global ptr @rockchip_i2s_tdm_probe._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dma-names\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@i2s_tdm_dai = internal constant { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @rockchip_i2s_tdm_dai_probe, ptr null, ptr null, ptr null, ptr @rockchip_i2s_tdm_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @rockchip_i2s_tdm_set_sysclk, ptr null, ptr null, ptr @rockchip_i2s_tdm_set_bclk_ratio, ptr @rockchip_i2s_tdm_set_fmt, ptr null, ptr @rockchip_dai_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_i2s_tdm_hw_params, ptr null, ptr null, ptr @rockchip_i2s_tdm_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_compensation_control = internal global { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @rockchip_i2s_tdm_clk_compensation_info, ptr @rockchip_i2s_tdm_clk_compensation_get, ptr @rockchip_i2s_tdm_clk_compensation_put, %union.anon.86 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PCM Clock Compensation in PPM\00", [34 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_set_sysclk.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.46, ptr @.str.47, ptr @.str.6, ptr @.str.48, i8 0, i8 -9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_soc_rockchip_i2s_tdm\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rockchip_i2s_tdm_set_sysclk\00", [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"The target mclk_%s freq is: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_calibrate_mclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.6, i32 647, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid LRCK frequency: %u Hz\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rockchip_i2s_tdm_calibrate_mclk\00", [32 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_calibrate_mclk._entry_ptr = internal global ptr @rockchip_i2s_tdm_calibrate_mclk._entry, section ".printk_index", align 4
@rockchip_i2s_tdm_set_mclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.6, i32 693, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"clk_trcm, tx: %d and rx: %d should be the same\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rockchip_i2s_tdm_set_mclk\00", [38 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_set_mclk._entry_ptr = internal global ptr @rockchip_i2s_tdm_set_mclk._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rockchip_snd_xfer_clear._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.6, i32 297, ptr @.str.55, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"clear failed, reset %s%s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rockchip_snd_xfer_clear\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rockchip_snd_xfer_clear._entry_ptr = internal global ptr @rockchip_snd_xfer_clear._entry, section ".printk_index", align 4
@.str.56 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@rockchip_i2s_io_multiplex._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.6, i32 777, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Capture channels (%d) > usable channels (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rockchip_i2s_io_multiplex\00", [38 x i8] zeroinitializer }, align 32
@rockchip_i2s_io_multiplex._entry_ptr = internal global ptr @rockchip_i2s_io_multiplex._entry, section ".printk_index", align 4
@rockchip_i2s_io_multiplex._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.6, i32 798, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Playback channels (%d) > usable channels (%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@rockchip_i2s_io_multiplex._entry_ptr.61 = internal global ptr @rockchip_i2s_io_multiplex._entry.59, section ".printk_index", align 4
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mclk_tx_src\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mclk_rx_src\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mclk_root0\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mclk_root1\00", [21 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_reg_defaults = internal constant { [8 x %struct.reg_default], [32 x i8] } { [8 x %struct.reg_default] [%struct.reg_default { i32 0, i32 1912602639 }, %struct.reg_default { i32 4, i32 29884431 }, %struct.reg_default { i32 8, i32 7967 }, %struct.reg_default { i32 16, i32 2031616 }, %struct.reg_default { i32 20, i32 32505856 }, %struct.reg_default { i32 48, i32 16127 }, %struct.reg_default { i32 52, i32 16127 }, %struct.reg_default { i32 56, i32 1799 }], [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rockchip,i2s-tx-route\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rockchip,i2s-rx-route\00", [42 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_path_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.6, i32 1489, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to read '%s' num: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rockchip_i2s_tdm_path_prepare\00", [34 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_path_prepare._entry_ptr = internal global ptr @rockchip_i2s_tdm_path_prepare._entry, section ".printk_index", align 4
@rockchip_i2s_tdm_path_prepare._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.6, i32 1495, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"The num: %d should be: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_path_prepare._entry_ptr.72 = internal global ptr @rockchip_i2s_tdm_path_prepare._entry.70, section ".printk_index", align 4
@rockchip_i2s_tdm_path_prepare._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str.6, i32 1504, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to read '%s': %d\0A\00", [39 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_path_prepare._entry_ptr.75 = internal global ptr @rockchip_i2s_tdm_path_prepare._entry.73, section ".printk_index", align 4
@rockchip_i2s_tdm_path_prepare._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.69, ptr @.str.6, i32 1511, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to check i2s data bus: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_path_prepare._entry_ptr.78 = internal global ptr @rockchip_i2s_tdm_path_prepare._entry.76, section ".printk_index", align 4
@rockchip_i2s_tdm_path_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.6, i32 1382, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s path i2s_data[%d]: %d is too high, max is: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rockchip_i2s_tdm_path_check\00", [36 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_path_check._entry_ptr = internal global ptr @rockchip_i2s_tdm_path_check._entry, section ".printk_index", align 4
@.str.81 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_path_check._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.80, ptr @.str.6, i32 1395, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s path invalid routed i2s_data: [%d]%d == [%d]%d\0A\00", [45 x i8] zeroinitializer }, align 32
@rockchip_i2s_tdm_path_check._entry_ptr.85 = internal global ptr @rockchip_i2s_tdm_path_check._entry.83, section ".printk_index", align 4
@px30_i2s_soc_data = internal global { %struct.rk_i2s_soc_data, [40 x i8] } { %struct.rk_i2s_soc_data { i32 768, i32 0, i32 0, i32 1, ptr @px30_txrx_config, ptr @common_soc_init }, [40 x i8] zeroinitializer }, align 32
@rk1808_i2s_soc_data = internal global { %struct.rk_i2s_soc_data, [40 x i8] } { %struct.rk_i2s_soc_data { i32 768, i32 0, i32 0, i32 1, ptr @rk1808_txrx_config, ptr @common_soc_init }, [40 x i8] zeroinitializer }, align 32
@rk3308_i2s_soc_data = internal global { %struct.rk_i2s_soc_data, [40 x i8] } { %struct.rk_i2s_soc_data { i32 1024, i32 776, i32 5, i32 2, ptr @rk3308_txrx_config, ptr @common_soc_init }, [40 x i8] zeroinitializer }, align 32
@rk3568_i2s_soc_data = internal global { %struct.rk_i2s_soc_data, [40 x i8] } { %struct.rk_i2s_soc_data { i32 1024, i32 0, i32 0, i32 6, ptr @rk3568_txrx_config, ptr @common_soc_init }, [40 x i8] zeroinitializer }, align 32
@rv1126_i2s_soc_data = internal global { %struct.rk_i2s_soc_data, [40 x i8] } { %struct.rk_i2s_soc_data { i32 768, i32 0, i32 0, i32 1, ptr @rv1126_txrx_config, ptr @common_soc_init }, [40 x i8] zeroinitializer }, align 32
@px30_txrx_config = internal constant { [1 x %struct.txrx_config], [16 x i8] } { [1 x %struct.txrx_config] [%struct.txrx_config { i32 -16384000, i32 388, i32 807407648, i32 807411712 }], [16 x i8] zeroinitializer }, align 32
@rk1808_txrx_config = internal constant { [1 x %struct.txrx_config], [16 x i8] } { [1 x %struct.txrx_config] [%struct.txrx_config { i32 -8519680, i32 400, i32 458753, i32 458758 }], [16 x i8] zeroinitializer }, align 32
@rk3308_txrx_config = internal constant { [2 x %struct.txrx_config], [32 x i8] } { [2 x %struct.txrx_config] [%struct.txrx_config { i32 -13631488, i32 776, i32 117441024, i32 117441792 }, %struct.txrx_config { i32 -13565952, i32 776, i32 458754, i32 458757 }], [32 x i8] zeroinitializer }, align 32
@rk3568_txrx_config = internal constant { [6 x %struct.txrx_config], [32 x i8] } { [6 x %struct.txrx_config] [%struct.txrx_config { i32 -29294592, i32 1284, i32 2097184, i32 2097152 }, %struct.txrx_config { i32 -29294592, i32 1288, i32 131074, i32 65537 }, %struct.txrx_config { i32 -29229056, i32 1288, i32 262148, i32 262148 }, %struct.txrx_config { i32 -29163520, i32 1284, i32 12583104, i32 12582912 }, %struct.txrx_config { i32 -29163520, i32 1288, i32 -2147450880, i32 -2147483648 }, %struct.txrx_config { i32 -29163520, i32 1288, i32 524296, i32 524296 }], [32 x i8] zeroinitializer }, align 32
@rv1126_txrx_config = internal constant { [1 x %struct.txrx_config], [16 x i8] } { [1 x %struct.txrx_config] [%struct.txrx_config { i32 -8388608, i32 66144, i32 33554432, i32 33554944 }], [16 x i8] zeroinitializer }, align 32
@switch.table.rockchip_i2s_tdm_set_fmt = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 50331648, i32 67108864, i32 117440512], [44 x i8] zeroinitializer }, align 32
@switch.table.rockchip_i2s_tdm_set_fmt.86 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 96, i32 96, i32 96, i32 64, i32 64], [44 x i8] zeroinitializer }, align 32
@switch.table.rockchip_i2s_tdm_set_fmt.87 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 32768, i32 16384, i32 0, i32 32768], [44 x i8] zeroinitializer }, align 32
@switch.table.rockchip_i2s_tdm_set_fmt.88 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1024, i32 512, i32 32, i32 160], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.89 = internal global [15 x i64] [i64 13, i64 32, i64 8000, i64 11025, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 64000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.90 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 6, i64 10, i64 36]
@__sancov_gen_cov_switch_values.91 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.92 = internal global [5 x i64] [i64 3, i64 32, i64 32768, i64 65536, i64 98304]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 32, i64 32768, i64 65536, i64 98304]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 32, i64 32768, i64 65536, i64 98304]
@__sancov_gen_cov_switch_values.95 = internal global [5 x i64] [i64 3, i64 32, i64 32768, i64 65536, i64 98304]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 32, i64 32768, i64 65536, i64 98304]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 32, i64 32768, i64 65536, i64 98304]
@__sancov_gen_cov_switch_values.98 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.99 = private unnamed_addr constant [24 x i8] c"rockchip_i2s_tdm_driver\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1757, i32 31 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1761, i32 11 }
@___asan_gen_.105 = private unnamed_addr constant [23 x i8] c"rockchip_i2s_tdm_match\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1305, i32 34 }
@___asan_gen_.108 = private unnamed_addr constant [24 x i8] c"rockchip_i2s_tdm_pm_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1750, i32 32 }
@___asan_gen_.111 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1551, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1557, i32 34 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1559, i32 34 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1561, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1571, i32 55 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1574, i32 10 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1577, i32 15 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1581, i32 10 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1585, i32 15 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1589, i32 10 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1592, i32 43 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1595, i32 10 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1598, i32 46 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1601, i32 10 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1604, i32 46 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1607, i32 10 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1611, i32 31 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1616, i32 10 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1621, i32 10 }
@___asan_gen_.186 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [31 x i8] c"rockchip_i2s_tdm_regmap_config\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1202, i32 35 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1624, i32 20 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1628, i32 10 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1645, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1651, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1660, i32 10 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1666, i32 9 }
@___asan_gen_.216 = private unnamed_addr constant [27 x i8] c"rockchip_i2s_tdm_component\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1121, i32 46 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1694, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1700, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1329, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1330, i32 25 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1332, i32 25 }
@___asan_gen_.240 = private unnamed_addr constant [12 x i8] c"i2s_tdm_dai\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1314, i32 40 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1342, i32 32 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1350, i32 31 }
@___asan_gen_.249 = private unnamed_addr constant [25 x i8] c"rockchip_i2s_tdm_dai_ops\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1112, i32 37 }
@___asan_gen_.252 = private unnamed_addr constant [38 x i8] c"rockchip_i2s_tdm_compensation_control\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1056, i32 32 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1058, i32 10 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 990, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 646, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 690, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 296, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 775, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 796, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1441, i32 52 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1445, i32 52 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1449, i32 51 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1453, i32 51 }
@___asan_gen_.327 = private unnamed_addr constant [30 x i8] c"rockchip_i2s_tdm_reg_defaults\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1191, i32 33 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1470, i32 27 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1471, i32 27 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1487, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1494, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1502, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1510, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1379, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1391, i32 5 }
@___asan_gen_.384 = private unnamed_addr constant [18 x i8] c"px30_i2s_soc_data\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1268, i32 31 }
@___asan_gen_.387 = private unnamed_addr constant [20 x i8] c"rk1808_i2s_soc_data\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1275, i32 31 }
@___asan_gen_.390 = private unnamed_addr constant [20 x i8] c"rk3308_i2s_soc_data\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1282, i32 31 }
@___asan_gen_.393 = private unnamed_addr constant [20 x i8] c"rk3568_i2s_soc_data\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1291, i32 31 }
@___asan_gen_.396 = private unnamed_addr constant [20 x i8] c"rv1126_i2s_soc_data\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1298, i32 31 }
@___asan_gen_.399 = private unnamed_addr constant [17 x i8] c"px30_txrx_config\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1242, i32 33 }
@___asan_gen_.402 = private unnamed_addr constant [19 x i8] c"rk1808_txrx_config\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1246, i32 33 }
@___asan_gen_.405 = private unnamed_addr constant [19 x i8] c"rk3308_txrx_config\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1250, i32 33 }
@___asan_gen_.408 = private unnamed_addr constant [19 x i8] c"rk3568_txrx_config\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1255, i32 33 }
@___asan_gen_.411 = private unnamed_addr constant [19 x i8] c"rv1126_txrx_config\00", align 1
@___asan_gen_.412 = private constant [41 x i8] c"../sound/soc/rockchip/rockchip_i2s_tdm.c\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.412, i32 1264, i32 33 }
@___asan_gen_.414 = private unnamed_addr constant [38 x i8] c"switch.table.rockchip_i2s_tdm_set_fmt\00", align 1
@___asan_gen_.415 = private unnamed_addr constant [41 x i8] c"switch.table.rockchip_i2s_tdm_set_fmt.86\00", align 1
@___asan_gen_.416 = private unnamed_addr constant [41 x i8] c"switch.table.rockchip_i2s_tdm_set_fmt.87\00", align 1
@___asan_gen_.417 = private unnamed_addr constant [41 x i8] c"switch.table.rockchip_i2s_tdm_set_fmt.88\00", align 1
@llvm.compiler.used = appending global [133 x ptr] [ptr @__UNIQUE_ID_alias247, ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_rockchip_i2s_tdm_driver_exit, ptr @__initcall__kmod_snd_soc_rockchip_i2s_tdm__242_1766_rockchip_i2s_tdm_driver_init6, ptr @rockchip_i2s_io_multiplex._entry, ptr @rockchip_i2s_io_multiplex._entry.59, ptr @rockchip_i2s_io_multiplex._entry_ptr, ptr @rockchip_i2s_io_multiplex._entry_ptr.61, ptr @rockchip_i2s_tdm_calibrate_mclk._entry, ptr @rockchip_i2s_tdm_calibrate_mclk._entry_ptr, ptr @rockchip_i2s_tdm_driver_exit, ptr @rockchip_i2s_tdm_path_check._entry, ptr @rockchip_i2s_tdm_path_check._entry.83, ptr @rockchip_i2s_tdm_path_check._entry_ptr, ptr @rockchip_i2s_tdm_path_check._entry_ptr.85, ptr @rockchip_i2s_tdm_path_prepare._entry, ptr @rockchip_i2s_tdm_path_prepare._entry.70, ptr @rockchip_i2s_tdm_path_prepare._entry.73, ptr @rockchip_i2s_tdm_path_prepare._entry.76, ptr @rockchip_i2s_tdm_path_prepare._entry_ptr, ptr @rockchip_i2s_tdm_path_prepare._entry_ptr.72, ptr @rockchip_i2s_tdm_path_prepare._entry_ptr.75, ptr @rockchip_i2s_tdm_path_prepare._entry_ptr.78, ptr @rockchip_i2s_tdm_probe._entry, ptr @rockchip_i2s_tdm_probe._entry.26, ptr @rockchip_i2s_tdm_probe._entry.29, ptr @rockchip_i2s_tdm_probe._entry.34, ptr @rockchip_i2s_tdm_probe._entry.37, ptr @rockchip_i2s_tdm_probe._entry_ptr, ptr @rockchip_i2s_tdm_probe._entry_ptr.28, ptr @rockchip_i2s_tdm_probe._entry_ptr.31, ptr @rockchip_i2s_tdm_probe._entry_ptr.36, ptr @rockchip_i2s_tdm_probe._entry_ptr.39, ptr @rockchip_i2s_tdm_set_mclk._entry, ptr @rockchip_i2s_tdm_set_mclk._entry_ptr, ptr @rockchip_snd_xfer_clear._entry, ptr @rockchip_snd_xfer_clear._entry_ptr, ptr @rockchip_i2s_tdm_driver, ptr @.str, ptr @rockchip_i2s_tdm_match, ptr @rockchip_i2s_tdm_pm_ops, ptr @rockchip_i2s_tdm_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @rockchip_i2s_tdm_probe._key, ptr @rockchip_i2s_tdm_regmap_config, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @rockchip_i2s_tdm_component, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @i2s_tdm_dai, ptr @.str.43, ptr @.str.44, ptr @rockchip_i2s_tdm_dai_ops, ptr @rockchip_i2s_tdm_compensation_control, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @rockchip_i2s_tdm_reg_defaults, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @px30_i2s_soc_data, ptr @rk1808_i2s_soc_data, ptr @rk3308_i2s_soc_data, ptr @rk3568_i2s_soc_data, ptr @rv1126_i2s_soc_data, ptr @px30_txrx_config, ptr @rk1808_txrx_config, ptr @rk3308_txrx_config, ptr @rk3568_txrx_config, ptr @rv1126_txrx_config, ptr @switch.table.rockchip_i2s_tdm_set_fmt, ptr @switch.table.rockchip_i2s_tdm_set_fmt.86, ptr @switch.table.rockchip_i2s_tdm_set_fmt.87, ptr @switch.table.rockchip_i2s_tdm_set_fmt.88], section "llvm.metadata"
@0 = internal global [109 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_tdm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_tdm_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_tdm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_tdm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_tdm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_tdm_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_tdm_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_tdm_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_tdm_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_tdm_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_tdm_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_tdm_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_tdm_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_tdm_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_tdm_compensation_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_tdm_calibrate_mclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_tdm_set_mclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_snd_xfer_clear._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_io_multiplex._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_io_multiplex._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_tdm_reg_defaults to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_tdm_path_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_tdm_path_prepare._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_tdm_path_prepare._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_tdm_path_prepare._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_tdm_path_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_i2s_tdm_path_check._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @px30_i2s_soc_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk1808_i2s_soc_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3308_i2s_soc_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3568_i2s_soc_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv1126_i2s_soc_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @px30_txrx_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk1808_txrx_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3308_txrx_config to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3568_txrx_config to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv1126_txrx_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rockchip_i2s_tdm_set_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rockchip_i2s_tdm_set_fmt.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rockchip_i2s_tdm_set_fmt.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rockchip_i2s_tdm_set_fmt.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_i2s_tdm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_i2s_tdm_driver, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_i2s_tdm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_i2s_tdm_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_i2s_tdm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #13
  %2 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !214
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 252, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 4
  %call5 = tail call ptr @of_match_device(ptr noundef nonnull @rockchip_i2s_tdm_match, ptr noundef %dev) #13
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call5, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %lor.lhs.false.cleanup_crit_edge, label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 31
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @rockchip_i2s_tdm_probe.__key, i16 noundef signext 3) #13
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %soc_data = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 14
  %8 = ptrtoint ptr %soc_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %soc_data, align 4
  %frame_width = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 25
  %9 = ptrtoint ptr %frame_width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 64, ptr %frame_width, align 4
  %clk_trcm = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 26
  %10 = ptrtoint ptr %clk_trcm to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %clk_trcm, align 4
  %call.i341 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef null) #13
  %tobool.i.not = icmp eq ptr %call.i341, null
  br i1 %tobool.i.not, label %do.body.if.end15_crit_edge, label %if.then13

do.body.if.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %clk_trcm to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %clk_trcm, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %do.body.if.end15_crit_edge
  %call.i342 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef null) #13
  %tobool.i343.not = icmp eq ptr %call.i342, null
  br i1 %tobool.i343.not, label %if.end15.if.end27_crit_edge, label %if.then17

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then17:                                        ; preds = %if.end15
  %12 = ptrtoint ptr %clk_trcm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clk_trcm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool19.not = icmp eq i32 %13, 0
  br i1 %tobool19.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.4) #16
  br label %cleanup

if.end25:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %clk_trcm to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %clk_trcm, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %if.end15.if.end27_crit_edge
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node.i, align 8
  %call.i344 = tail call ptr @of_find_property(ptr noundef %20, ptr noundef nonnull @.str.40, ptr noundef null) #13
  %call1.i = tail call ptr @of_prop_next_string(ptr noundef %call.i344, ptr noundef null) #13
  %tobool.not67.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not67.i, label %if.end27.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end27.for.end.i_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end27
  %has_playback.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 32
  %has_capture.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 33
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %dma_name.068.i = phi ptr [ %call1.i, %for.body.lr.ph.i ], [ %call8.i, %for.inc.i.for.body.i_crit_edge ]
  %call2.i = tail call i32 @strcmp(ptr noundef nonnull %dma_name.068.i, ptr noundef nonnull dereferenceable(3) @.str.41) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %has_playback.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %has_playback.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %call4.i = tail call i32 @strcmp(ptr noundef nonnull %dma_name.068.i, ptr noundef nonnull dereferenceable(3) @.str.42) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %has_capture.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %has_capture.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %if.end.i.for.inc.i_crit_edge
  %call8.i = tail call ptr @of_prop_next_string(ptr noundef %call.i344, ptr noundef nonnull %dma_name.068.i) #13
  %tobool.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end27.for.end.i_crit_edge
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %call10.i = tail call ptr @devm_kmemdup(ptr noundef %24, ptr noundef nonnull @i2s_tdm_dai, i32 noundef 168, i32 noundef 3264) #13
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %for.end.i.cleanup_crit_edge, label %if.end13.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13.i:                                       ; preds = %for.end.i
  %has_playback14.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 32
  %25 = ptrtoint ptr %has_playback14.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %has_playback14.i, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool15.not.i = icmp eq i8 %26, 0
  br i1 %tobool15.not.i, label %if.end13.i.if.end22.i_crit_edge, label %if.then16.i

if.end13.i.if.end22.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  %playback.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call10.i, i32 0, i32 11
  %27 = ptrtoint ptr %playback.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.43, ptr %playback.i, align 8
  %channels_min.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call10.i, i32 0, i32 11, i32 5
  %28 = ptrtoint ptr %channels_min.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %channels_min.i, align 4
  %channels_max.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call10.i, i32 0, i32 11, i32 6
  %29 = ptrtoint ptr %channels_max.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 8, ptr %channels_max.i, align 8
  %rates.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call10.i, i32 0, i32 11, i32 2
  %30 = ptrtoint ptr %rates.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8190, ptr %rates.i, align 8
  %formats21.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call10.i, i32 0, i32 11, i32 1
  %31 = ptrtoint ptr %formats21.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 68719477829, ptr %formats21.i, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then16.i, %if.end13.i.if.end22.i_crit_edge
  %has_capture23.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 33
  %32 = ptrtoint ptr %has_capture23.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %has_capture23.i, align 1, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool24.not.i = icmp eq i8 %33, 0
  br i1 %tobool24.not.i, label %if.end22.i.if.end35.i_crit_edge, label %if.then25.i

if.end22.i.if.end35.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35.i

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  %capture.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call10.i, i32 0, i32 10
  %34 = ptrtoint ptr %capture.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.44, ptr %capture.i, align 8
  %channels_min28.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call10.i, i32 0, i32 10, i32 5
  %35 = ptrtoint ptr %channels_min28.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %channels_min28.i, align 4
  %channels_max30.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call10.i, i32 0, i32 10, i32 6
  %36 = ptrtoint ptr %channels_max30.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8, ptr %channels_max30.i, align 8
  %rates32.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call10.i, i32 0, i32 10, i32 2
  %37 = ptrtoint ptr %rates32.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 8190, ptr %rates32.i, align 8
  %formats34.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call10.i, i32 0, i32 10, i32 1
  %38 = ptrtoint ptr %formats34.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 68719477829, ptr %formats34.i, align 8
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then25.i, %if.end22.i.if.end35.i_crit_edge
  %39 = ptrtoint ptr %clk_trcm to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %clk_trcm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.not.i = icmp eq i32 %40, 0
  br i1 %cmp.not.i, label %if.end35.i.if.end31_crit_edge, label %if.then36.i

if.end35.i.if.end31_crit_edge:                    ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then36.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #15
  %symmetric_rate.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %call10.i, i32 0, i32 12
  %41 = ptrtoint ptr %symmetric_rate.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i = load i8, ptr %symmetric_rate.i, align 8
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %symmetric_rate.i, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then36.i, %if.end35.i.if.end31_crit_edge
  %dai38.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 34
  %42 = ptrtoint ptr %dai38.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call10.i, ptr %dai38.i, align 4
  %call32 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.9) #13
  %grf = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 9
  %43 = ptrtoint ptr %grf to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call32, ptr %grf, align 4
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then35, label %if.end40

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  %46 = ptrtoint ptr %call32 to i32
  %call39 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %45, i32 noundef %46, ptr noundef nonnull @.str.10) #13
  br label %cleanup

if.end40:                                         ; preds = %if.end31
  %call.i345 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #13
  %tx_reset = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 12
  %47 = ptrtoint ptr %tx_reset to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i345, ptr %tx_reset, align 4
  %cmp.i346 = icmp ugt ptr %call.i345, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i346, label %if.then45, label %if.end50

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %call.i345 to i32
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 4
  %call49 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %50, i32 noundef %48, ptr noundef nonnull @.str.12) #13
  br label %cleanup

if.end50:                                         ; preds = %if.end40
  %call.i347 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #13
  %rx_reset = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 13
  %51 = ptrtoint ptr %rx_reset to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i347, ptr %rx_reset, align 4
  %cmp.i348 = icmp ugt ptr %call.i347, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i348, label %if.then55, label %if.end60

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %call.i347 to i32
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 4
  %call59 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %54, i32 noundef %52, ptr noundef nonnull @.str.14) #13
  br label %cleanup

if.end60:                                         ; preds = %if.end50
  %call62 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.15) #13
  %hclk = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 1
  %55 = ptrtoint ptr %hclk to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call62, ptr %hclk, align 4
  %cmp.i349 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i349, label %if.then65, label %if.end70

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 4
  %58 = ptrtoint ptr %call62 to i32
  %call69 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %57, i32 noundef %58, ptr noundef nonnull @.str.16) #13
  br label %cleanup

if.end70:                                         ; preds = %if.end60
  %call72 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.17) #13
  %mclk_tx = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 2
  %59 = ptrtoint ptr %mclk_tx to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call72, ptr %mclk_tx, align 4
  %cmp.i350 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i350, label %if.then75, label %if.end80

if.then75:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call.i, align 4
  %62 = ptrtoint ptr %call72 to i32
  %call79 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %61, i32 noundef %62, ptr noundef nonnull @.str.18) #13
  br label %cleanup

if.end80:                                         ; preds = %if.end70
  %call82 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.19) #13
  %mclk_rx = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 3
  %63 = ptrtoint ptr %mclk_rx to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call82, ptr %mclk_rx, align 4
  %cmp.i351 = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i351, label %if.then85, label %if.end90

if.then85:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call.i, align 4
  %66 = ptrtoint ptr %call82 to i32
  %call89 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %65, i32 noundef %66, ptr noundef nonnull @.str.20) #13
  br label %cleanup

if.end90:                                         ; preds = %if.end80
  %call.i352 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef null) #13
  %tobool.i353 = icmp ne ptr %call.i352, null
  %io_multiplex = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 16
  %frombool = zext i1 %tobool.i353 to i8
  %67 = ptrtoint ptr %io_multiplex to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %frombool, ptr %io_multiplex, align 1
  %call92 = tail call fastcc i32 @rockchip_i2s_tdm_get_calibrate_mclks(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end97, label %if.then94

if.then94:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  %68 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call.i, align 4
  %call96 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %69, i32 noundef %call92, ptr noundef nonnull @.str.22) #13
  br label %cleanup

if.end97:                                         ; preds = %if.end90
  %call98 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #13
  %cmp.i354 = icmp ugt ptr %call98, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i354, label %if.then100, label %if.end104

if.then100:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call.i, align 4
  %72 = ptrtoint ptr %call98 to i32
  %call103 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %71, i32 noundef %72, ptr noundef nonnull @.str.23) #13
  br label %cleanup

if.end104:                                        ; preds = %if.end97
  %call106 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call98, ptr noundef nonnull @rockchip_i2s_tdm_regmap_config, ptr noundef nonnull @rockchip_i2s_tdm_probe._key, ptr noundef nonnull @.str.24) #13
  %regmap = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 8
  %73 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call106, ptr %regmap, align 4
  %cmp.i355 = icmp ugt ptr %call106, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i355, label %if.then109, label %if.end114

if.then109:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call.i, align 4
  %76 = ptrtoint ptr %call106 to i32
  %call113 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %75, i32 noundef %76, ptr noundef nonnull @.str.25) #13
  br label %cleanup

if.end114:                                        ; preds = %if.end104
  %77 = ptrtoint ptr %has_playback14.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %has_playback14.i, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool115.not = icmp eq i8 %78, 0
  br i1 %tobool115.not, label %if.end114.if.end119_crit_edge, label %if.then116

if.end114.if.end119_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end119

if.then116:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  %79 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %res, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %add = add i32 %82, 36
  %playback_dma_data = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 11
  %83 = ptrtoint ptr %playback_dma_data to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %add, ptr %playback_dma_data, align 4
  %addr_width = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 11, i32 1
  %84 = ptrtoint ptr %addr_width to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 4, ptr %addr_width, align 4
  %maxburst = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 11, i32 2
  %85 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 8, ptr %maxburst, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.then116, %if.end114.if.end119_crit_edge
  %86 = ptrtoint ptr %has_capture23.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %has_capture23.i, align 1, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool120.not = icmp eq i8 %87, 0
  br i1 %tobool120.not, label %if.end119.if.end129_crit_edge, label %if.then121

if.end119.if.end129_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end129

if.then121:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #15
  %88 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %res, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  %add123 = add i32 %91, 40
  %capture_dma_data = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 10
  %92 = ptrtoint ptr %capture_dma_data to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add123, ptr %capture_dma_data, align 4
  %addr_width126 = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 10, i32 1
  %93 = ptrtoint ptr %addr_width126 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 4, ptr %addr_width126, align 4
  %maxburst128 = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 10, i32 2
  %94 = ptrtoint ptr %maxburst128 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 8, ptr %maxburst128, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then121, %if.end119.if.end129_crit_edge
  %call.i356 = call fastcc i32 @rockchip_i2s_tdm_path_prepare(ptr noundef %call.i, ptr noundef %1, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i356)
  %cmp = icmp slt i32 %call.i356, 0
  br i1 %cmp, label %do.end134, label %if.end136

do.end134:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call.i356) #16
  br label %cleanup

if.end136:                                        ; preds = %if.end129
  %call.i357 = call fastcc i32 @rockchip_i2s_tdm_path_prepare(ptr noundef %call.i, ptr noundef %1, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i357)
  %cmp138 = icmp slt i32 %call.i357, 0
  br i1 %cmp138, label %do.end142, label %if.end144

do.end142:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %call.i357) #16
  br label %cleanup

if.end144:                                        ; preds = %if.end136
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %95 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call.i, ptr %driver_data.i, align 4
  %96 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hclk, align 4
  %call147 = call fastcc i32 @clk_prepare_enable(ptr noundef %97)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end152, label %if.then149

if.then149:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #15
  %98 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %call.i, align 4
  %call151 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %99, i32 noundef %call147, ptr noundef nonnull @.str.32) #13
  br label %cleanup

if.end152:                                        ; preds = %if.end144
  %call153 = call fastcc i32 @i2s_tdm_prepare_enable_mclk(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.end158, label %if.then155

if.then155:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #15
  %100 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %call.i, align 4
  %call157 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %101, i32 noundef %call153, ptr noundef nonnull @.str.33) #13
  br label %err_disable_hclk

if.end158:                                        ; preds = %if.end152
  %mclk_calibrate = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 17
  %102 = ptrtoint ptr %mclk_calibrate to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %mclk_calibrate, align 2, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool159.not = icmp eq i8 %103, 0
  br i1 %tobool159.not, label %if.end158.if.end165_crit_edge, label %if.then160

if.end158.if.end165_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end165

if.then160:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #15
  %mclk_root0 = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 6
  %104 = ptrtoint ptr %mclk_root0 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mclk_root0, align 4
  %call161 = call i32 @clk_get_rate(ptr noundef %105) #13
  %mclk_root0_initial_freq = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 23
  %106 = ptrtoint ptr %mclk_root0_initial_freq to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %call161, ptr %mclk_root0_initial_freq, align 4
  %mclk_root1 = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 7
  %107 = ptrtoint ptr %mclk_root1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mclk_root1, align 4
  %call162 = call i32 @clk_get_rate(ptr noundef %108) #13
  %mclk_root1_initial_freq = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 24
  %109 = ptrtoint ptr %mclk_root1_initial_freq to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %call162, ptr %mclk_root1_initial_freq, align 4
  %110 = ptrtoint ptr %mclk_root0_initial_freq to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %mclk_root0_initial_freq, align 4
  %mclk_root0_freq = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 21
  %112 = ptrtoint ptr %mclk_root0_freq to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %mclk_root0_freq, align 4
  %mclk_root1_freq = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %call.i, i32 0, i32 22
  %113 = ptrtoint ptr %mclk_root1_freq to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %call162, ptr %mclk_root1_freq, align 4
  br label %if.end165

if.end165:                                        ; preds = %if.then160, %if.end158.if.end165_crit_edge
  call void @pm_runtime_enable(ptr noundef %dev) #13
  %114 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regmap, align 4
  %call.i358 = call i32 @regmap_update_bits_base(ptr noundef %115, i32 noundef 16, i32 noundef 31, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %116 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regmap, align 4
  %call.i359 = call i32 @regmap_update_bits_base(ptr noundef %117, i32 noundef 16, i32 noundef 2031616, i32 noundef 983040, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %118 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regmap, align 4
  %120 = ptrtoint ptr %clk_trcm to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %clk_trcm, align 4
  %shl = shl i32 %121, 28
  %call.i360 = call i32 @regmap_update_bits_base(ptr noundef %119, i32 noundef 8, i32 noundef 805306368, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %122 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %soc_data, align 4
  %tobool175.not = icmp eq ptr %123, null
  br i1 %tobool175.not, label %if.end165.if.end184_crit_edge, label %land.lhs.true

if.end165.if.end184_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end184

land.lhs.true:                                    ; preds = %if.end165
  %init = getelementptr inbounds %struct.rk_i2s_soc_data, ptr %123, i32 0, i32 5
  %124 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %init, align 4
  %tobool177.not = icmp eq ptr %125, null
  br i1 %tobool177.not, label %land.lhs.true.if.end184_crit_edge, label %if.then178

land.lhs.true.if.end184_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end184

if.then178:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %126 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %res, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 4
  %call183 = call i32 %125(ptr noundef %dev, i32 noundef %129) #13
  br label %if.end184

if.end184:                                        ; preds = %if.then178, %land.lhs.true.if.end184_crit_edge, %if.end165.if.end184_crit_edge
  %130 = ptrtoint ptr %dai38.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dai38.i, align 4
  %call186 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @rockchip_i2s_tdm_component, ptr noundef %131, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %if.end193, label %if.end184.err_suspend_crit_edge

if.end184.err_suspend_crit_edge:                  ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_suspend

if.end193:                                        ; preds = %if.end184
  %call195 = call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev, ptr noundef null, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %if.end193.cleanup_crit_edge, label %if.end193.err_suspend_crit_edge

if.end193.err_suspend_crit_edge:                  ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_suspend

if.end193.cleanup_crit_edge:                      ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err_suspend:                                      ; preds = %if.end193.err_suspend_crit_edge, %if.end184.err_suspend_crit_edge
  %.str.38.sink = phi ptr [ @.str.35, %if.end184.err_suspend_crit_edge ], [ @.str.38, %if.end193.err_suspend_crit_edge ]
  %ret.0 = phi i32 [ %call186, %if.end184.err_suspend_crit_edge ], [ %call195, %if.end193.err_suspend_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.38.sink) #16
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %132 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %133)
  %cmp.i361 = icmp eq i32 %133, 2
  br i1 %cmp.i361, label %err_suspend.if.end208_crit_edge, label %if.then205

err_suspend.if.end208_crit_edge:                  ; preds = %err_suspend
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end208

if.then205:                                       ; preds = %err_suspend
  call void @__sanitizer_cov_trace_pc() #15
  %call207 = call i32 @i2s_tdm_runtime_suspend(ptr noundef %dev)
  br label %if.end208

if.end208:                                        ; preds = %if.then205, %err_suspend.if.end208_crit_edge
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #13
  br label %err_disable_hclk

err_disable_hclk:                                 ; preds = %if.end208, %if.then155
  %ret.1 = phi i32 [ %call157, %if.then155 ], [ %ret.0, %if.end208 ]
  %134 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %hclk, align 4
  call void @clk_disable(ptr noundef %135) #13
  call void @clk_unprepare(ptr noundef %135) #13
  br label %cleanup

cleanup:                                          ; preds = %err_disable_hclk, %if.end193.cleanup_crit_edge, %if.then149, %do.end142, %do.end134, %if.then109, %if.then100, %if.then94, %if.then85, %if.then75, %if.then65, %if.then55, %if.then45, %if.then35, %for.end.i.cleanup_crit_edge, %do.end23, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end23 ], [ %call39, %if.then35 ], [ %call49, %if.then45 ], [ %call59, %if.then55 ], [ %call69, %if.then65 ], [ %call79, %if.then75 ], [ %call89, %if.then85 ], [ %call96, %if.then94 ], [ %call103, %if.then100 ], [ %call113, %if.then109 ], [ %call.i356, %do.end134 ], [ %call.i357, %do.end142 ], [ %call151, %if.then149 ], [ %ret.1, %err_disable_hclk ], [ -12, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end193.cleanup_crit_edge ], [ -12, %for.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_i2s_tdm_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #13
  tail call fastcc void @i2s_tdm_disable_unprepare_mclk(ptr noundef %3) #13
  %hclk.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %hclk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hclk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #13
  tail call void @clk_unprepare(ptr noundef %7) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_i2s_tdm_get_calibrate_mclks(ptr nocapture noundef %i2s_tdm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i2s_tdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2s_tdm, align 4
  %call = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.62) #13
  %mclk_tx_src = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 4
  %2 = ptrtoint ptr %mclk_tx_src to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %mclk_tx_src, align 4
  %cmp.i = icmp ule ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select = zext i1 %cmp.i to i32
  %3 = ptrtoint ptr %i2s_tdm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2s_tdm, align 4
  %call4 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.63) #13
  %mclk_rx_src = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 5
  %5 = ptrtoint ptr %mclk_rx_src to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %mclk_rx_src, align 4
  %cmp.i48 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  %inc8 = select i1 %cmp.i, i32 2, i32 1
  %num_mclks.1 = select i1 %cmp.i48, i32 %spec.select, i32 %inc8
  %6 = ptrtoint ptr %i2s_tdm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2s_tdm, align 4
  %call11 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.64) #13
  %mclk_root0 = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 6
  %8 = ptrtoint ptr %mclk_root0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call11, ptr %mclk_root0, align 4
  %cmp.i49 = icmp ule ptr %call11, inttoptr (i32 -4096 to ptr)
  %inc15 = zext i1 %cmp.i49 to i32
  %num_mclks.2 = add nuw nsw i32 %num_mclks.1, %inc15
  %9 = ptrtoint ptr %i2s_tdm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2s_tdm, align 4
  %call18 = tail call ptr @devm_clk_get(ptr noundef %10, ptr noundef nonnull @.str.65) #13
  %mclk_root1 = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 7
  %11 = ptrtoint ptr %mclk_root1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call18, ptr %mclk_root1, align 4
  %cmp.i50 = icmp ule ptr %call18, inttoptr (i32 -4096 to ptr)
  %inc22 = zext i1 %cmp.i50 to i32
  %num_mclks.3 = add nuw nsw i32 %num_mclks.2, %inc22
  %12 = add nsw i32 %num_mclks.3, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %12)
  %13 = icmp ult i32 %12, -3
  br i1 %13, label %if.end26, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end26:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %num_mclks.3)
  %cmp27 = icmp eq i32 %num_mclks.3, 4
  br i1 %cmp27, label %if.then28, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %mclk_calibrate = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 17
  %14 = ptrtoint ptr %mclk_calibrate to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %mclk_calibrate, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end26.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ 0, %if.then28 ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @clk_unprepare(ptr noundef %clk) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2s_tdm_prepare_enable_mclk(ptr nocapture noundef readonly %i2s_tdm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mclk_tx = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 2
  %0 = ptrtoint ptr %mclk_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mclk_tx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %mclk_rx = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 3
  %2 = ptrtoint ptr %mclk_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mclk_rx, align 4
  %call.i44 = tail call i32 @clk_prepare(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i45 = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i45, label %if.end.i48, label %if.end.err_mclk_rx_crit_edge

if.end.err_mclk_rx_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_mclk_rx

if.end.i48:                                       ; preds = %if.end
  %call1.i46 = tail call i32 @clk_enable(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool2.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool2.not.i47, label %if.end4, label %if.end.i48.err_mclk_rx.sink.split_crit_edge

if.end.i48.err_mclk_rx.sink.split_crit_edge:      ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_mclk_rx.sink.split

if.end4:                                          ; preds = %if.end.i48
  %mclk_calibrate = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 17
  %4 = ptrtoint ptr %mclk_calibrate to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mclk_calibrate, align 2, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.then6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  %mclk_tx_src = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 4
  %6 = ptrtoint ptr %mclk_tx_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mclk_tx_src, align 4
  %call.i52 = tail call i32 @clk_prepare(ptr noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool.not.i53 = icmp eq i32 %call.i52, 0
  br i1 %tobool.not.i53, label %if.end.i56, label %if.then6.err_mclk_rx_crit_edge

if.then6.err_mclk_rx_crit_edge:                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_mclk_rx

if.end.i56:                                       ; preds = %if.then6
  %call1.i54 = tail call i32 @clk_enable(ptr noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i54)
  %tobool2.not.i55 = icmp eq i32 %call1.i54, 0
  br i1 %tobool2.not.i55, label %if.end10, label %if.end.i56.err_mclk_rx.sink.split_crit_edge

if.end.i56.err_mclk_rx.sink.split_crit_edge:      ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_mclk_rx.sink.split

if.end10:                                         ; preds = %if.end.i56
  %mclk_rx_src = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 5
  %8 = ptrtoint ptr %mclk_rx_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mclk_rx_src, align 4
  %call.i60 = tail call i32 @clk_prepare(ptr noundef %9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool.not.i61 = icmp eq i32 %call.i60, 0
  br i1 %tobool.not.i61, label %if.end.i64, label %if.end10.err_mclk_rx_src_crit_edge

if.end10.err_mclk_rx_src_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_mclk_rx_src

if.end.i64:                                       ; preds = %if.end10
  %call1.i62 = tail call i32 @clk_enable(ptr noundef %9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i62)
  %tobool2.not.i63 = icmp eq i32 %call1.i62, 0
  br i1 %tobool2.not.i63, label %if.end14, label %if.end.i64.err_mclk_rx_src.sink.split_crit_edge

if.end.i64.err_mclk_rx_src.sink.split_crit_edge:  ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_mclk_rx_src.sink.split

if.end14:                                         ; preds = %if.end.i64
  %mclk_root0 = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 6
  %10 = ptrtoint ptr %mclk_root0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mclk_root0, align 4
  %call15 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.err_mclk_root0_crit_edge

if.end14.err_mclk_root0_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_mclk_root0

if.end18:                                         ; preds = %if.end14
  %mclk_root1 = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 7
  %12 = ptrtoint ptr %mclk_root1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mclk_root1, align 4
  %call19 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %err_mclk_root1

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err_mclk_root1:                                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %mclk_root0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mclk_root0, align 4
  tail call void @clk_disable(ptr noundef %15) #13
  tail call void @clk_unprepare(ptr noundef %15) #13
  br label %err_mclk_root0

err_mclk_root0:                                   ; preds = %err_mclk_root1, %if.end14.err_mclk_root0_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end14.err_mclk_root0_crit_edge ], [ %call19, %err_mclk_root1 ]
  %16 = ptrtoint ptr %mclk_rx_src to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mclk_rx_src, align 4
  tail call void @clk_disable(ptr noundef %17) #13
  br label %err_mclk_rx_src.sink.split

err_mclk_rx_src.sink.split:                       ; preds = %err_mclk_root0, %if.end.i64.err_mclk_rx_src.sink.split_crit_edge
  %.sink = phi ptr [ %17, %err_mclk_root0 ], [ %9, %if.end.i64.err_mclk_rx_src.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ %ret.0, %err_mclk_root0 ], [ %call1.i62, %if.end.i64.err_mclk_rx_src.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #13
  br label %err_mclk_rx_src

err_mclk_rx_src:                                  ; preds = %err_mclk_rx_src.sink.split, %if.end10.err_mclk_rx_src_crit_edge
  %ret.1 = phi i32 [ %call.i60, %if.end10.err_mclk_rx_src_crit_edge ], [ %ret.1.ph, %err_mclk_rx_src.sink.split ]
  %18 = ptrtoint ptr %mclk_tx_src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mclk_tx_src, align 4
  tail call void @clk_disable(ptr noundef %19) #13
  br label %err_mclk_rx.sink.split

err_mclk_rx.sink.split:                           ; preds = %err_mclk_rx_src, %if.end.i56.err_mclk_rx.sink.split_crit_edge, %if.end.i48.err_mclk_rx.sink.split_crit_edge
  %.sink76 = phi ptr [ %19, %err_mclk_rx_src ], [ %3, %if.end.i48.err_mclk_rx.sink.split_crit_edge ], [ %7, %if.end.i56.err_mclk_rx.sink.split_crit_edge ]
  %ret.2.ph = phi i32 [ %ret.1, %err_mclk_rx_src ], [ %call1.i46, %if.end.i48.err_mclk_rx.sink.split_crit_edge ], [ %call1.i54, %if.end.i56.err_mclk_rx.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink76) #13
  br label %err_mclk_rx

err_mclk_rx:                                      ; preds = %err_mclk_rx.sink.split, %if.then6.err_mclk_rx_crit_edge, %if.end.err_mclk_rx_crit_edge
  %ret.2 = phi i32 [ %call.i44, %if.end.err_mclk_rx_crit_edge ], [ %call.i52, %if.then6.err_mclk_rx_crit_edge ], [ %ret.2.ph, %err_mclk_rx.sink.split ]
  %20 = ptrtoint ptr %mclk_tx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mclk_tx, align 4
  tail call void @clk_disable(ptr noundef %21) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_mclk_rx, %if.end.i.cleanup.sink.split_crit_edge
  %.sink77 = phi ptr [ %21, %err_mclk_rx ], [ %1, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.2, %err_mclk_rx ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink77) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end18.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2s_tdm_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #13
  tail call fastcc void @i2s_tdm_disable_unprepare_mclk(ptr noundef %1)
  %hclk = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hclk, align 4
  tail call void @clk_disable(ptr noundef %5) #13
  tail call void @clk_unprepare(ptr noundef %5) #13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_i2s_tdm_dai_probe(ptr noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %has_capture = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %has_capture to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_capture, align 1, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %capture_dma_data = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 10
  %capture_dma_data1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %6 = ptrtoint ptr %capture_dma_data1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %capture_dma_data, ptr %capture_dma_data1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %has_playback = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 32
  %7 = ptrtoint ptr %has_playback to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %has_playback, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not = icmp eq i8 %8, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %playback_dma_data = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 11
  %playback_dma_data4 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %9 = ptrtoint ptr %playback_dma_data4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %playback_dma_data, ptr %playback_dma_data4, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %mclk_calibrate = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 17
  %10 = ptrtoint ptr %mclk_calibrate to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mclk_calibrate, align 2, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = tail call i32 @snd_soc_add_dai_controls(ptr noundef %dai, ptr noundef nonnull @rockchip_i2s_tdm_compensation_control, i32 noundef 1) #13
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_dai_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @rockchip_i2s_tdm_clk_compensation_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1000, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1000, ptr %max, align 4
  %step = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 2
  %4 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %step, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rockchip_i2s_tdm_clk_compensation_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  %clk_ppm = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %clk_ppm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_ppm, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_i2s_tdm_clk_compensation_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  %8 = add i32 %7, -1001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2001, i32 %8)
  %9 = icmp ult i32 %8, -2001
  br i1 %9, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %mclk_root0 = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %mclk_root0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mclk_root0, align 4
  %call6 = tail call i32 @clk_get_rate(ptr noundef %11) #13
  %12 = ptrtoint ptr %mclk_root0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mclk_root0, align 4
  %clk_ppm.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %5, i32 0, i32 29
  %14 = ptrtoint ptr %clk_ppm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clk_ppm.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %7)
  %cmp.i = icmp eq i32 %15, %7
  br i1 %cmp.i, label %if.end.if.end10_crit_edge, label %if.end.i

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.end.i:                                         ; preds = %if.end
  %mclk_root0_freq = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %5, i32 0, i32 21
  %16 = ptrtoint ptr %mclk_root0_freq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mclk_root0_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.i = icmp slt i32 %7, 0
  %conv.i = zext i32 %17 to i64
  %18 = tail call i32 @llvm.abs.i32(i32 %7, i1 true) #13
  %conv6.i80 = zext i32 %18 to i64
  %mul.i = mul nuw nsw i64 %conv.i, %conv6.i80
  %add.i = add nuw nsw i64 %mul.i, 500000
  %call.i = tail call i64 @div64_u64(i64 noundef %add.i, i64 noundef 1000000) #13
  %conv7.i = trunc i64 %call.i to i32
  %19 = sub i32 0, %conv7.i
  %20 = select i1 %cmp1.i, i32 %19, i32 %conv7.i
  %add9.i = add i32 %20, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add9.i)
  %tobool.not.i = icmp eq i32 %add9.i, 0
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end11.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11.i:                                       ; preds = %if.end.i
  %call12.i = tail call i32 @clk_set_rate(ptr noundef %13, i32 noundef %add9.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end11.i.cleanup_crit_edge

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %clk_ppm.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %7, ptr %clk_ppm.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end15.i, %if.end.if.end10_crit_edge
  %22 = ptrtoint ptr %mclk_root0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mclk_root0, align 4
  %call12 = tail call i32 @clk_get_rate(ptr noundef %23) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %call12)
  %cmp13.not = icmp ne i32 %call6, %call12
  %spec.select = zext i1 %cmp13.not to i32
  %24 = ptrtoint ptr %mclk_root0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mclk_root0, align 4
  %mclk_root1 = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %5, i32 0, i32 7
  %26 = ptrtoint ptr %mclk_root1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mclk_root1, align 4
  %call17 = tail call zeroext i1 @clk_is_match(ptr noundef %25, ptr noundef %27) #13
  br i1 %call17, label %if.end10.cleanup_crit_edge, label %if.end19

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %28 = ptrtoint ptr %mclk_root1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mclk_root1, align 4
  %call21 = tail call i32 @clk_get_rate(ptr noundef %29) #13
  %30 = ptrtoint ptr %mclk_root1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mclk_root1, align 4
  %32 = ptrtoint ptr %clk_ppm.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %clk_ppm.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %7)
  %cmp.i58 = icmp eq i32 %33, %7
  br i1 %cmp.i58, label %if.end19.if.end26_crit_edge, label %if.end.i68

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.end.i68:                                       ; preds = %if.end19
  %mclk_root1_freq = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %5, i32 0, i32 22
  %34 = ptrtoint ptr %mclk_root1_freq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mclk_root1_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.i59 = icmp slt i32 %7, 0
  %conv.i60 = zext i32 %35 to i64
  %36 = tail call i32 @llvm.abs.i32(i32 %7, i1 true) #13
  %conv6.i6179 = zext i32 %36 to i64
  %mul.i62 = mul nuw nsw i64 %conv.i60, %conv6.i6179
  %add.i63 = add nuw nsw i64 %mul.i62, 500000
  %call.i64 = tail call i64 @div64_u64(i64 noundef %add.i63, i64 noundef 1000000) #13
  %conv7.i65 = trunc i64 %call.i64 to i32
  %37 = sub i32 0, %conv7.i65
  %38 = select i1 %cmp1.i59, i32 %37, i32 %conv7.i65
  %add9.i66 = add i32 %38, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add9.i66)
  %tobool.not.i67 = icmp eq i32 %add9.i66, 0
  br i1 %tobool.not.i67, label %if.end.i68.cleanup_crit_edge, label %if.end11.i71

if.end.i68.cleanup_crit_edge:                     ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11.i71:                                     ; preds = %if.end.i68
  %call12.i69 = tail call i32 @clk_set_rate(ptr noundef %31, i32 noundef %add9.i66) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i69)
  %tobool13.not.i70 = icmp eq i32 %call12.i69, 0
  br i1 %tobool13.not.i70, label %if.end15.i72, label %if.end11.i71.cleanup_crit_edge

if.end11.i71.cleanup_crit_edge:                   ; preds = %if.end11.i71
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15.i72:                                     ; preds = %if.end11.i71
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %clk_ppm.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %7, ptr %clk_ppm.i, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end15.i72, %if.end19.if.end26_crit_edge
  %40 = ptrtoint ptr %mclk_root1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mclk_root1, align 4
  %call28 = tail call i32 @clk_get_rate(ptr noundef %41) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call21, i32 %call28)
  %cmp29.not = icmp eq i32 %call21, %call28
  %spec.select56 = select i1 %cmp29.not, i32 %spec.select, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end11.i71.cleanup_crit_edge, %if.end.i68.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select56, %if.end26 ], [ -22, %entry.cleanup_crit_edge ], [ %spec.select, %if.end10.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ %call12.i, %if.end11.i.cleanup_crit_edge ], [ -22, %if.end.i68.cleanup_crit_edge ], [ %call12.i69, %if.end11.i71.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clk_is_match(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_i2s_tdm_set_sysclk(ptr nocapture noundef readonly %cpu_dai, i32 noundef %stream, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %clk_trcm = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %clk_trcm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk_trcm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mclk_tx_freq = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %mclk_tx_freq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %freq, ptr %mclk_tx_freq, align 4
  %mclk_rx_freq = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 19
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stream)
  %cmp = icmp eq i32 %stream, 0
  br i1 %cmp, label %if.then1, label %if.else3

if.then1:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %mclk_tx_freq2 = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 20
  br label %do.body

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %mclk_rx_freq4 = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 19
  br label %do.body

do.body:                                          ; preds = %if.else3, %if.then1, %if.then
  %mclk_rx_freq.sink = phi ptr [ %mclk_rx_freq, %if.then ], [ %mclk_rx_freq4, %if.else3 ], [ %mclk_tx_freq2, %if.then1 ]
  %7 = ptrtoint ptr %mclk_rx_freq.sink to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %freq, ptr %mclk_rx_freq.sink, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_i2s_tdm_set_sysclk.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_i2s_tdm_set_sysclk, %if.then10)) #13
          to label %do.end [label %if.then10], !srcloc !216

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stream)
  %tobool11.not = icmp eq i32 %stream, 0
  %cond = select i1 %tobool11.not, ptr @.str.41, ptr @.str.42
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_i2s_tdm_set_sysclk.__UNIQUE_ID_ddebug241, ptr noundef %9, ptr noundef nonnull @.str.48, ptr noundef nonnull %cond, i32 noundef %freq) #13
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rockchip_i2s_tdm_set_bclk_ratio(ptr nocapture noundef readonly %dai, i32 noundef %ratio) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %ratio, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 481, i32 %0)
  %1 = icmp ult i32 %0, 481
  %rem = and i32 %ratio, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp3.not = icmp eq i32 %rem, 0
  %or.cond7 = and i1 %1, %cmp3.not
  br i1 %or.cond7, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %frame_width = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %frame_width to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %ratio, ptr %frame_width, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_i2s_tdm_set_fmt(ptr nocapture noundef readonly %cpu_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %tdm_mode = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %tdm_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tdm_mode, align 1, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call.i)
  %cmp2.not = icmp eq i32 %call.i, -13
  %or.cond = or i1 %cmp, %cmp2.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #13
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #13, !srcloc !218
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !219
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = trunc i32 %fmt to i16
  %trunc = and i16 %9, -4096
  %10 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %if.end.err_pm_put_crit_edge [
    i16 16384, label %if.end.sw.epilog_crit_edge
    i16 4096, label %sw.bb4
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end.err_pm_put_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_pm_put

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %if.end.sw.epilog_crit_edge
  %.sink = phi i8 [ 0, %sw.bb4 ], [ 1, %if.end.sw.epilog_crit_edge ]
  %val.0 = phi i32 [ 134217728, %sw.bb4 ], [ 0, %if.end.sw.epilog_crit_edge ]
  %is_master_mode5 = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 15
  %11 = ptrtoint ptr %is_master_mode5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink, ptr %is_master_mode5, align 4
  %regmap = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i89 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 8, i32 noundef 134217728, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %and7 = lshr i32 %fmt, 8
  %14 = and i32 %and7, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %15 = icmp ult i32 %14, 5
  br i1 %15, label %switch.hole_check, label %sw.epilog.err_pm_put_crit_edge

sw.epilog.err_pm_put_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_pm_put

switch.hole_check:                                ; preds = %sw.epilog
  %switch.maskindex = trunc i32 %14 to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %16 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %switch.lobit.not = icmp eq i8 %16, 0
  br i1 %switch.lobit.not, label %switch.hole_check.err_pm_put_crit_edge, label %switch.lookup

switch.hole_check.err_pm_put_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_pm_put

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rockchip_i2s_tdm_set_fmt, i32 0, i32 %14
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load i32, ptr %switch.gep, align 4
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i90 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 8, i32 noundef 117440512, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %and16 = and i32 %fmt, 15
  %switch.tableidx104 = add nsw i32 %and16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx104)
  %20 = icmp ult i32 %switch.tableidx104, 5
  br i1 %20, label %switch.lookup103, label %switch.lookup.err_pm_put_crit_edge

switch.lookup.err_pm_put_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_pm_put

switch.lookup103:                                 ; preds = %switch.lookup
  %switch.gep105 = getelementptr inbounds [5 x i32], ptr @switch.table.rockchip_i2s_tdm_set_fmt.88, i32 0, i32 %switch.tableidx104
  %21 = ptrtoint ptr %switch.gep105 to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load106 = load i32, ptr %switch.gep105, align 4
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call.i91 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 0, i32 noundef 2016, i32 noundef %switch.load106, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call.i92 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 4, i32 noundef 2016, i32 noundef %switch.load106, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br i1 %tobool.not, label %switch.lookup103.err_pm_put_crit_edge, label %if.then29

switch.lookup103.err_pm_put_crit_edge:            ; preds = %switch.lookup103
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_pm_put

if.then29:                                        ; preds = %switch.lookup103
  %switch.tableidx = add nsw i32 %and16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %26 = icmp ult i32 %switch.tableidx, 5
  br i1 %26, label %switch.lookup98, label %if.then29.err_pm_put_crit_edge

if.then29.err_pm_put_crit_edge:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_pm_put

switch.lookup98:                                  ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep99 = getelementptr inbounds [5 x i32], ptr @switch.table.rockchip_i2s_tdm_set_fmt.86, i32 0, i32 %switch.tableidx
  %27 = ptrtoint ptr %switch.gep99 to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load100 = load i32, ptr %switch.gep99, align 4
  %switch.gep101 = getelementptr inbounds [5 x i32], ptr @switch.table.rockchip_i2s_tdm_set_fmt.87, i32 0, i32 %switch.tableidx
  %28 = ptrtoint ptr %switch.gep101 to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load102 = load i32, ptr %switch.gep101, align 4
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call.i93 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 0, i32 noundef 96, i32 noundef %switch.load100, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call.i94 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 4, i32 noundef 96, i32 noundef %switch.load100, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call.i95 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 48, i32 noundef 2080768, i32 noundef %switch.load102, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call.i96 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 52, i32 noundef 2080768, i32 noundef %switch.load102, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %err_pm_put

err_pm_put:                                       ; preds = %switch.lookup98, %if.then29.err_pm_put_crit_edge, %switch.lookup103.err_pm_put_crit_edge, %switch.lookup.err_pm_put_crit_edge, %switch.hole_check.err_pm_put_crit_edge, %sw.epilog.err_pm_put_crit_edge, %if.end.err_pm_put_crit_edge
  %ret.0 = phi i32 [ %call.i, %switch.lookup98 ], [ %call.i, %switch.lookup103.err_pm_put_crit_edge ], [ -22, %if.end.err_pm_put_crit_edge ], [ -22, %sw.epilog.err_pm_put_crit_edge ], [ -22, %switch.lookup.err_pm_put_crit_edge ], [ -22, %if.then29.err_pm_put_crit_edge ], [ -22, %switch.hole_check.err_pm_put_crit_edge ]
  %37 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i.i, align 4
  %call.i97 = tail call i32 @__pm_runtime_idle(ptr noundef %38, i32 noundef 5) #13
  br label %cleanup

cleanup:                                          ; preds = %err_pm_put, %do.end11.i.i.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_pm_put ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_dai_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tdm_mode = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %tdm_mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %tdm_mode, align 1
  %mul = mul i32 %slot_width, %slots
  %frame_width = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 25
  %5 = ptrtoint ptr %frame_width to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul, ptr %frame_width, align 4
  %sub = shl i32 %slot_width, 9
  %shl = add i32 %sub, -512
  %sub2 = add i32 %mul, -1
  %or = or i32 %shl, %sub2
  %regmap = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 48, i32 noundef 16383, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i15 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 52, i32 noundef 16383, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_i2s_tdm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %is_master_mode = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %is_master_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_master_mode, align 4, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then:                                          ; preds = %entry
  %mclk_calibrate = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %mclk_calibrate to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mclk_calibrate, align 2, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then2:                                         ; preds = %if.then
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %10 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  %mclk_tx_src.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 4
  %mclk_rx_src.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 5
  %mclk_parent.0.in.i = select i1 %cmp.i, ptr %mclk_tx_src.i, ptr %mclk_rx_src.i
  %12 = ptrtoint ptr %mclk_parent.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %mclk_parent.0.i = load ptr, ptr %mclk_parent.0.in.i, align 4
  %13 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %9, label %do.end.i [
    i32 8000, label %if.then2.sw.bb.i_crit_edge
    i32 16000, label %if.then2.sw.bb.i_crit_edge152
    i32 24000, label %if.then2.sw.bb.i_crit_edge153
    i32 32000, label %if.then2.sw.bb.i_crit_edge154
    i32 48000, label %if.then2.sw.bb.i_crit_edge155
    i32 64000, label %if.then2.sw.bb.i_crit_edge156
    i32 96000, label %if.then2.sw.bb.i_crit_edge157
    i32 192000, label %if.then2.sw.bb.i_crit_edge158
    i32 11025, label %if.then2.sw.bb1.i_crit_edge
    i32 22050, label %if.then2.sw.bb1.i_crit_edge159
    i32 44100, label %if.then2.sw.bb1.i_crit_edge160
    i32 88200, label %if.then2.sw.bb1.i_crit_edge161
    i32 176400, label %if.then2.sw.bb1.i_crit_edge162
  ]

if.then2.sw.bb1.i_crit_edge162:                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1.i

if.then2.sw.bb1.i_crit_edge161:                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1.i

if.then2.sw.bb1.i_crit_edge160:                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1.i

if.then2.sw.bb1.i_crit_edge159:                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1.i

if.then2.sw.bb1.i_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb1.i

if.then2.sw.bb.i_crit_edge158:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.then2.sw.bb.i_crit_edge157:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.then2.sw.bb.i_crit_edge156:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.then2.sw.bb.i_crit_edge155:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.then2.sw.bb.i_crit_edge154:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.then2.sw.bb.i_crit_edge153:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.then2.sw.bb.i_crit_edge152:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

if.then2.sw.bb.i_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then2.sw.bb.i_crit_edge, %if.then2.sw.bb.i_crit_edge152, %if.then2.sw.bb.i_crit_edge153, %if.then2.sw.bb.i_crit_edge154, %if.then2.sw.bb.i_crit_edge155, %if.then2.sw.bb.i_crit_edge156, %if.then2.sw.bb.i_crit_edge157, %if.then2.sw.bb.i_crit_edge158
  %mclk_root0.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 6
  %mclk_root0_freq.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 21
  %mclk_root0_initial_freq.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 23
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then2.sw.bb1.i_crit_edge, %if.then2.sw.bb1.i_crit_edge159, %if.then2.sw.bb1.i_crit_edge160, %if.then2.sw.bb1.i_crit_edge161, %if.then2.sw.bb1.i_crit_edge162
  %mclk_root1.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 7
  %mclk_root1_freq.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 22
  %mclk_root1_initial_freq.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 24
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.49, i32 noundef %9) #16
  br label %if.end

sw.epilog.i:                                      ; preds = %sw.bb1.i, %sw.bb.i
  %mclk_root_initial_freq.0.in.i = phi ptr [ %mclk_root1_initial_freq.i, %sw.bb1.i ], [ %mclk_root0_initial_freq.i, %sw.bb.i ]
  %mclk_parent_freq.0.i = phi i32 [ 45158400, %sw.bb1.i ], [ 49152000, %sw.bb.i ]
  %mclk_root_freq.0.in.i = phi ptr [ %mclk_root1_freq.i, %sw.bb1.i ], [ %mclk_root0_freq.i, %sw.bb.i ]
  %mclk_root.0.in.i = phi ptr [ %mclk_root1.i, %sw.bb1.i ], [ %mclk_root0.i, %sw.bb.i ]
  %16 = ptrtoint ptr %mclk_root.0.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %mclk_root.0.i = load ptr, ptr %mclk_root.0.in.i, align 4
  %17 = ptrtoint ptr %mclk_root_freq.0.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %mclk_root_freq.0.i = load i32, ptr %mclk_root_freq.0.in.i, align 4
  %18 = ptrtoint ptr %mclk_root_initial_freq.0.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %mclk_root_initial_freq.0.i = load i32, ptr %mclk_root_initial_freq.0.in.i, align 4
  %call.i = tail call i32 @clk_set_parent(ptr noundef %mclk_parent.0.i, ptr noundef %mclk_root.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %sw.epilog.i.if.end_crit_edge

sw.epilog.i.if.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end3.i:                                        ; preds = %sw.epilog.i
  %clk_ppm.i.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 29
  %19 = ptrtoint ptr %clk_ppm.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clk_ppm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i = icmp eq i32 %20, 0
  br i1 %cmp.i.i, label %if.end3.i.if.end7.i_crit_edge, label %if.end.i.i

if.end3.i.if.end7.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.end.i.i:                                       ; preds = %if.end3.i
  %call.i.i = tail call i64 @div64_u64(i64 noundef 500000, i64 noundef 1000000) #13
  %conv7.i.i = trunc i64 %call.i.i to i32
  %add9.i.i = add i32 %mclk_root_freq.0.i, %conv7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add9.i.i)
  %tobool.not.i.i = icmp eq i32 %add9.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end_crit_edge, label %if.end11.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end11.i.i:                                     ; preds = %if.end.i.i
  %call12.i.i = tail call i32 @clk_set_rate(ptr noundef %mclk_root.0.i, i32 noundef %add9.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.end15.i.i, label %if.end11.i.i.if.end_crit_edge

if.end11.i.i.if.end_crit_edge:                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end15.i.i:                                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %clk_ppm.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %clk_ppm.i.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end15.i.i, %if.end3.i.if.end7.i_crit_edge
  %rem.i = urem i32 %mclk_root_freq.0.i, %mclk_parent_freq.0.i
  %sub.i = sub nsw i32 %rem.i, %mclk_parent_freq.0.i
  %22 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 true) #13
  %conv.i = zext i32 %22 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000000
  %conv10.i = zext i32 %mclk_root_freq.0.i to i64
  %call11.i = tail call i64 @div64_u64(i64 noundef %mul.i, i64 noundef %conv10.i) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call11.i)
  %tobool12.not.i = icmp eq i64 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end7.i.if.end34.i_crit_edge, label %if.then13.i

if.end7.i.if.end34.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.i

if.then13.i:                                      ; preds = %if.end7.i
  %div161.i = lshr exact i32 %mclk_parent_freq.0.i, 1
  %add.i = add i32 %mclk_root_initial_freq.0.i, %div161.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mclk_parent_freq.0.i, i32 %add.i)
  %tobool18.not.i = icmp ugt i32 %mclk_parent_freq.0.i, %add.i
  br i1 %tobool18.not.i, label %if.then13.i.if.end_crit_edge, label %if.end20.i

if.then13.i.if.end_crit_edge:                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end20.i:                                       ; preds = %if.then13.i
  %div17.i = udiv i32 %add.i, %mclk_parent_freq.0.i
  %sub21.i = add nsw i32 %div17.i, -1
  %or.i = or i32 %sub21.i, 1
  %add22.i = add nsw i32 %or.i, 1
  %mul23.i = mul i32 %add22.i, %mclk_parent_freq.0.i
  %call24.i = tail call i32 @clk_set_rate(ptr noundef %mclk_root.0.i, i32 noundef %mul23.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end20.i.if.end_crit_edge

if.end20.i.if.end_crit_edge:                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end27.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  %mclk_root028.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 6
  %23 = ptrtoint ptr %mclk_root028.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mclk_root028.i, align 4
  %call29.i = tail call i32 @clk_get_rate(ptr noundef %24) #13
  %mclk_root0_freq30.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 21
  %25 = ptrtoint ptr %mclk_root0_freq30.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call29.i, ptr %mclk_root0_freq30.i, align 4
  %mclk_root131.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 7
  %26 = ptrtoint ptr %mclk_root131.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mclk_root131.i, align 4
  %call32.i = tail call i32 @clk_get_rate(ptr noundef %27) #13
  %mclk_root1_freq33.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 22
  %28 = ptrtoint ptr %mclk_root1_freq33.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call32.i, ptr %mclk_root1_freq33.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.end27.i, %if.end7.i.if.end34.i_crit_edge
  %call35.i = tail call i32 @clk_set_rate(ptr noundef %mclk_parent.0.i, i32 noundef %mclk_parent_freq.0.i) #13
  br label %if.end

if.end:                                           ; preds = %if.end34.i, %if.end20.i.if.end_crit_edge, %if.then13.i.if.end_crit_edge, %if.end11.i.i.if.end_crit_edge, %if.end.i.i.if.end_crit_edge, %sw.epilog.i.if.end_crit_edge, %do.end.i, %if.then.if.end_crit_edge
  %clk_trcm.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 26
  %29 = ptrtoint ptr %clk_trcm.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %clk_trcm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i111 = icmp eq i32 %30, 0
  br i1 %tobool.not.i111, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %mclk_tx_freq.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 20
  %31 = ptrtoint ptr %mclk_tx_freq.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mclk_tx_freq.i, align 4
  %mclk_rx_freq.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 19
  %33 = ptrtoint ptr %mclk_rx_freq.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mclk_rx_freq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp.not.i = icmp eq i32 %32, %34
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i112

do.end.i112:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.51, i32 noundef %32, i32 noundef %34) #16
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %mclk_tx.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 2
  %37 = ptrtoint ptr %mclk_tx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mclk_tx.i, align 4
  %call.i113 = tail call i32 @clk_set_rate(ptr noundef %38, i32 noundef %32) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool5.not.i = icmp eq i32 %call.i113, 0
  br i1 %tobool5.not.i, label %if.end7.i114, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7.i114:                                     ; preds = %if.end.i
  %mclk_rx.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 3
  %39 = ptrtoint ptr %mclk_rx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mclk_rx.i, align 4
  %41 = ptrtoint ptr %mclk_rx_freq.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mclk_rx_freq.i, align 4
  %call9.i = tail call i32 @clk_set_rate(ptr noundef %40, i32 noundef %42) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end7.i114.cleanup_crit_edge

if.end7.i114.cleanup_crit_edge:                   ; preds = %if.end7.i114
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12.i:                                       ; preds = %if.end7.i114
  call void @__sanitizer_cov_trace_pc() #15
  %43 = ptrtoint ptr %mclk_tx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mclk_tx.i, align 4
  br label %if.end8

if.else.i:                                        ; preds = %if.end
  %stream.i115 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %45 = ptrtoint ptr %stream.i115 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %stream.i115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp14.i = icmp eq i32 %46, 0
  %mclk_tx16.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 2
  %mclk_tx_freq17.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 20
  %mclk_rx19.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 3
  %mclk_rx_freq20.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 19
  %mclk.0.in = select i1 %cmp14.i, ptr %mclk_tx16.i, ptr %mclk_rx19.i
  %mclk_freq.0.in.i = select i1 %cmp14.i, ptr %mclk_tx_freq17.i, ptr %mclk_rx_freq20.i
  %47 = ptrtoint ptr %mclk.0.in to i32
  call void @__asan_load4_noabort(i32 %47)
  %mclk.0 = load ptr, ptr %mclk.0.in, align 4
  %48 = ptrtoint ptr %mclk_freq.0.in.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %mclk_freq.0.i = load i32, ptr %mclk_freq.0.in.i, align 4
  %call22.i = tail call i32 @clk_set_rate(ptr noundef %mclk.0, i32 noundef %mclk_freq.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.else.i.if.end8_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else.i.if.end8_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.end8:                                          ; preds = %if.else.i.if.end8_crit_edge, %if.end12.i
  %mclk.1 = phi ptr [ %mclk.0, %if.else.i.if.end8_crit_edge ], [ %44, %if.end12.i ]
  %call9 = tail call i32 @clk_get_rate(ptr noundef %mclk.1) #13
  %frame_width = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 25
  %49 = ptrtoint ptr %frame_width to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %frame_width, align 4
  %arrayidx.i.i116 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %51 = ptrtoint ptr %arrayidx.i.i116 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i116, align 4
  %mul = mul i32 %52, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool11.not = icmp eq i32 %mul, 0
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %div110 = lshr i32 %mul, 1
  %add = add i32 %div110, %call9
  %div14 = udiv i32 %add, %mul
  %div16 = udiv i32 %mul, %52
  br label %if.end17

if.end17:                                         ; preds = %if.end13, %entry.if.end17_crit_edge
  %div_bclk.0 = phi i32 [ %div14, %if.end13 ], [ 4, %entry.if.end17_crit_edge ]
  %div_lrck.0 = phi i32 [ %div16, %if.end13 ], [ 64, %entry.if.end17_crit_edge ]
  %arrayidx.i.i118 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %arrayidx.i.i118 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i119 = icmp eq i32 %54, 0
  br i1 %tobool.not.i.i119, label %for.inc.i.i, label %if.end17.params_format.exit_crit_edge

if.end17.params_format.exit_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.end17
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %55 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.1.i.i = icmp eq i32 %56, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.sw.epilog_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %params_format.exit

for.inc.i.i.sw.epilog_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.end17.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.end17.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %54, %if.end17.params_format.exit_crit_edge ], [ %56, %for.inc.i.i.params_format.exit_crit_edge ]
  %57 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #13, !range !220
  %add.i.i = or i32 %57, %i.09.lcssa.i.i
  %58 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %add.i.i, label %params_format.exit.cleanup_crit_edge [
    i32 0, label %params_format.exit.sw.epilog_crit_edge
    i32 2, label %sw.bb19
    i32 36, label %sw.bb21
    i32 6, label %sw.bb23
    i32 10, label %sw.bb25
  ]

params_format.exit.sw.epilog_crit_edge:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb19:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb21:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb23:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb25:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %params_format.exit.sw.epilog_crit_edge, %for.inc.i.i.sw.epilog_crit_edge
  %val.0 = phi i32 [ 31, %sw.bb25 ], [ 23, %sw.bb23 ], [ 19, %sw.bb21 ], [ 15, %sw.bb19 ], [ 7, %params_format.exit.sw.epilog_crit_edge ], [ 7, %for.inc.i.i.sw.epilog_crit_edge ]
  %arrayidx.i.i120 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %59 = ptrtoint ptr %arrayidx.i.i120 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i120, align 4
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %60, label %sw.epilog.cleanup_crit_edge [
    i32 8, label %sw.bb28
    i32 6, label %sw.bb30
    i32 4, label %sw.bb32
    i32 2, label %sw.epilog.sw.epilog37_crit_edge
  ]

sw.epilog.sw.epilog37_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog37

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb28:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %or29 = or i32 %val.0, 98304
  br label %sw.epilog37

sw.bb30:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %or31 = or i32 %val.0, 65536
  br label %sw.epilog37

sw.bb32:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %or33 = or i32 %val.0, 32768
  br label %sw.epilog37

sw.epilog37:                                      ; preds = %sw.bb32, %sw.bb30, %sw.bb28, %sw.epilog.sw.epilog37_crit_edge
  %val.1 = phi i32 [ %or33, %sw.bb32 ], [ %or31, %sw.bb30 ], [ %or29, %sw.bb28 ], [ %val.0, %sw.epilog.sw.epilog37_crit_edge ]
  %clk_trcm = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 26
  %62 = ptrtoint ptr %clk_trcm to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %clk_trcm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool38.not = icmp eq i32 %63, 0
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %sw.epilog37
  %64 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %65, i32 0, i32 8
  %66 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %clk_trcm.i121 = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %67, i32 0, i32 26
  %68 = ptrtoint ptr %clk_trcm.i121 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %clk_trcm.i121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i122 = icmp eq i32 %69, 0
  br i1 %tobool.not.i122, label %if.then39.if.end61_crit_edge, label %do.body1.i

if.then39.if.end61_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

do.body1.i:                                       ; preds = %if.then39
  %lock.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %67, i32 0, i32 31
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %refcount.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %67, i32 0, i32 30
  %70 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool6.not.i = icmp eq i32 %71, 0
  br i1 %tobool6.not.i, label %do.body1.i.if.end8.i_crit_edge, label %if.then7.i

do.body1.i.if.end8.i_crit_edge:                   ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

if.then7.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  %stream1.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %72 = ptrtoint ptr %stream1.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %stream1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp.i.i123 = icmp eq i32 %73, 1
  %regmap.i.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %67, i32 0, i32 8
  %74 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap.i.i, align 4
  %..i.i = select i1 %cmp.i.i123, i32 256, i32 16777216
  %call.i.i5.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %75, i32 noundef 16, i32 noundef %..i.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  tail call fastcc void @rockchip_snd_xfer_clear(ptr noundef %67, i32 noundef 3) #13
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %do.body1.i.if.end8.i_crit_edge
  %regmap.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %67, i32 0, i32 8
  %76 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap.i, align 4
  %sub.i124 = add i32 %div_bclk.0, -1
  %shl10.i = shl i32 %sub.i124, 8
  %or.i125 = or i32 %shl10.i, %sub.i124
  %call.i.i126 = tail call i32 @regmap_update_bits_base(ptr noundef %77, i32 noundef 56, i32 noundef 65535, i32 noundef %or.i125, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %78 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap.i, align 4
  %sub13.i = add i32 %div_lrck.0, -1
  %shl16.i = shl i32 %sub13.i, 8
  %or17.i = or i32 %shl16.i, %sub13.i
  %call.i1.i = tail call i32 @regmap_update_bits_base(ptr noundef %79, i32 noundef 8, i32 noundef 65535, i32 noundef %or17.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %stream.i127 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %80 = ptrtoint ptr %stream.i127 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %stream.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp19.i = icmp eq i32 %81, 0
  %82 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap.i, align 4
  %..i = select i1 %cmp19.i, i32 0, i32 4
  %call.i3.i = tail call i32 @regmap_update_bits_base(ptr noundef %83, i32 noundef %..i, i32 noundef 98335, i32 noundef %val.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %84 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool28.not.i = icmp eq i32 %85, 0
  br i1 %tobool28.not.i, label %if.end8.i.if.end30.i_crit_edge, label %if.then29.i

if.end8.i.if.end30.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

if.then29.i:                                      ; preds = %if.end8.i
  %86 = ptrtoint ptr %stream.i127 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %stream.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp.i5.i = icmp eq i32 %87, 1
  %88 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap.i, align 4
  br i1 %cmp.i5.i, label %if.then.i.i128, label %if.else.i.i

if.then.i.i128:                                   ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %89, i32 noundef 16, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %rockchip_i2s_tdm_xfer_resume.exit.i

if.else.i.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i6.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %89, i32 noundef 16, i32 noundef 16777216, i32 noundef 16777216, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %rockchip_i2s_tdm_xfer_resume.exit.i

rockchip_i2s_tdm_xfer_resume.exit.i:              ; preds = %if.else.i.i, %if.then.i.i128
  %90 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %91, i32 noundef 28, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %if.end30.i

if.end30.i:                                       ; preds = %rockchip_i2s_tdm_xfer_resume.exit.i, %if.end8.i.if.end30.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #13
  br label %if.end61

if.else:                                          ; preds = %sw.epilog37
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %92 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp = icmp eq i32 %93, 0
  %regmap = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 8
  %94 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regmap, align 4
  br i1 %cmp, label %if.then41, label %if.else49

if.then41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %sub = add i32 %div_bclk.0, -1
  %call.i129 = tail call i32 @regmap_update_bits_base(ptr noundef %95, i32 noundef 56, i32 noundef 255, i32 noundef %sub, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %96 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap, align 4
  %sub44 = add i32 %div_lrck.0, -1
  %call.i130 = tail call i32 @regmap_update_bits_base(ptr noundef %97, i32 noundef 8, i32 noundef 255, i32 noundef %sub44, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %98 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regmap, align 4
  %call.i131 = tail call i32 @regmap_update_bits_base(ptr noundef %99, i32 noundef 0, i32 noundef 98335, i32 noundef %val.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %if.end61

if.else49:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %sub51 = shl i32 %div_bclk.0, 8
  %shl52 = add i32 %sub51, -256
  %call.i132 = tail call i32 @regmap_update_bits_base(ptr noundef %95, i32 noundef 56, i32 noundef 65280, i32 noundef %shl52, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %100 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regmap, align 4
  %sub55 = shl i32 %div_lrck.0, 8
  %shl56 = add i32 %sub55, -256
  %call.i133 = tail call i32 @regmap_update_bits_base(ptr noundef %101, i32 noundef 8, i32 noundef 65280, i32 noundef %shl56, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %102 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regmap, align 4
  %call.i134 = tail call i32 @regmap_update_bits_base(ptr noundef %103, i32 noundef 4, i32 noundef 98335, i32 noundef %val.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %if.end61

if.end61:                                         ; preds = %if.else49, %if.then41, %if.end30.i, %if.then39.if.end61_crit_edge
  %104 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i.i136 = getelementptr inbounds %struct.device, ptr %105, i32 0, i32 8
  %106 = ptrtoint ptr %driver_data.i.i.i.i136 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %driver_data.i.i.i.i136, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #13
  %108 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %val.i, align 4
  %io_multiplex.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %107, i32 0, i32 16
  %109 = ptrtoint ptr %io_multiplex.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %io_multiplex.i, align 1, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i137 = icmp eq i8 %110, 0
  br i1 %tobool.not.i137, label %if.end61.rockchip_i2s_io_multiplex.exit_crit_edge, label %if.end.i140

if.end61.rockchip_i2s_io_multiplex.exit_crit_edge: ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %rockchip_i2s_io_multiplex.exit

if.end.i140:                                      ; preds = %if.end61
  %stream.i138 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %111 = ptrtoint ptr %stream.i138 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %stream.i138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %112)
  %cmp.i139 = icmp eq i32 %112, 1
  %113 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %substream, align 4
  br i1 %cmp.i139, label %if.then1.i, label %if.else.i143

if.then1.i:                                       ; preds = %if.end.i140
  %substream_opened.i = getelementptr inbounds %struct.snd_pcm, ptr %114, i32 0, i32 8, i32 0, i32 3
  %115 = ptrtoint ptr %substream_opened.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %substream_opened.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool2.not.i = icmp eq i32 %116, 0
  br i1 %tobool2.not.i, label %if.then1.i.if.end6.i_crit_edge, label %if.then3.i

if.then1.i.if.end6.i_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.then1.i
  %regmap.i141 = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %107, i32 0, i32 8
  %117 = ptrtoint ptr %regmap.i141 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regmap.i141, align 4
  %call4.i = call i32 @regmap_read(ptr noundef %118, i32 noundef 0, ptr noundef nonnull %val.i) #13
  %119 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %val.i, align 4
  %and.i = and i32 %120, 98304
  store i32 %and.i, ptr %val.i, align 4
  %121 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %and.i, label %sw.default.i.i [
    i32 32768, label %if.then3.i.if.end6.i_crit_edge
    i32 65536, label %sw.bb1.i.i
    i32 98304, label %sw.bb2.i.i
  ]

if.then3.i.if.end6.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

sw.bb1.i.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

sw.bb2.i.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

sw.default.i.i:                                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.end6.i:                                        ; preds = %sw.default.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.then3.i.if.end6.i_crit_edge, %if.then1.i.if.end6.i_crit_edge
  %usable_chs.0.i = phi i32 [ 10, %if.then1.i.if.end6.i_crit_edge ], [ 8, %sw.default.i.i ], [ 2, %sw.bb2.i.i ], [ 4, %sw.bb1.i.i ], [ 6, %if.then3.i.if.end6.i_crit_edge ]
  %regmap7.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %107, i32 0, i32 8
  %122 = ptrtoint ptr %regmap7.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regmap7.i, align 4
  %call8.i = call i32 @regmap_read(ptr noundef %123, i32 noundef 4, ptr noundef nonnull %val.i) #13
  %124 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %val.i, align 4
  %and9.i = and i32 %125, 98304
  store i32 %and9.i, ptr %val.i, align 4
  %126 = zext i32 %and9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %and9.i, label %if.end6.i.if.end43.i_crit_edge [
    i32 32768, label %if.end6.i.to_ch_num.exit77.i_crit_edge
    i32 65536, label %sw.bb1.i73.i
    i32 98304, label %sw.bb2.i74.i
  ]

if.end6.i.to_ch_num.exit77.i_crit_edge:           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %to_ch_num.exit77.i

if.end6.i.if.end43.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43.i

sw.bb1.i73.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %to_ch_num.exit77.i

sw.bb2.i74.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %to_ch_num.exit77.i

to_ch_num.exit77.i:                               ; preds = %sw.bb2.i74.i, %sw.bb1.i73.i, %if.end6.i.to_ch_num.exit77.i_crit_edge
  %retval.0.i76.i = phi i32 [ 8, %sw.bb2.i74.i ], [ 6, %sw.bb1.i73.i ], [ 4, %if.end6.i.to_ch_num.exit77.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i76.i, i32 %usable_chs.0.i)
  %cmp11.i = icmp ugt i32 %retval.0.i76.i, %usable_chs.0.i
  br i1 %cmp11.i, label %do.end.i142, label %to_ch_num.exit77.i.if.end43.i_crit_edge

to_ch_num.exit77.i.if.end43.i_crit_edge:          ; preds = %to_ch_num.exit77.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43.i

do.end.i142:                                      ; preds = %to_ch_num.exit77.i
  %127 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %107, align 4
  %129 = zext i32 %and9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %and9.i, label %sw.default.i80.i [
    i32 32768, label %do.end.i142.to_ch_num.exit82.i_crit_edge
    i32 65536, label %sw.bb1.i78.i
    i32 98304, label %sw.bb2.i79.i
  ]

do.end.i142.to_ch_num.exit82.i_crit_edge:         ; preds = %do.end.i142
  call void @__sanitizer_cov_trace_pc() #15
  br label %to_ch_num.exit82.i

sw.bb1.i78.i:                                     ; preds = %do.end.i142
  call void @__sanitizer_cov_trace_pc() #15
  br label %to_ch_num.exit82.i

sw.bb2.i79.i:                                     ; preds = %do.end.i142
  call void @__sanitizer_cov_trace_pc() #15
  br label %to_ch_num.exit82.i

sw.default.i80.i:                                 ; preds = %do.end.i142
  call void @__sanitizer_cov_trace_pc() #15
  br label %to_ch_num.exit82.i

to_ch_num.exit82.i:                               ; preds = %sw.default.i80.i, %sw.bb2.i79.i, %sw.bb1.i78.i, %do.end.i142.to_ch_num.exit82.i_crit_edge
  %retval.0.i81.i = phi i32 [ 2, %sw.default.i80.i ], [ 8, %sw.bb2.i79.i ], [ 6, %sw.bb1.i78.i ], [ 4, %do.end.i142.to_ch_num.exit82.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.57, i32 noundef %retval.0.i81.i, i32 noundef %usable_chs.0.i) #16
  br label %rockchip_i2s_io_multiplex.exit

if.else.i143:                                     ; preds = %if.end.i140
  %substream_opened19.i = getelementptr %struct.snd_pcm, ptr %114, i32 0, i32 8, i32 1, i32 3
  %130 = ptrtoint ptr %substream_opened19.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %substream_opened19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool20.not.i = icmp eq i32 %131, 0
  br i1 %tobool20.not.i, label %if.else.i143.if.end27.i145_crit_edge, label %if.then21.i

if.else.i143.if.end27.i145_crit_edge:             ; preds = %if.else.i143
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i145

if.then21.i:                                      ; preds = %if.else.i143
  %regmap22.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %107, i32 0, i32 8
  %132 = ptrtoint ptr %regmap22.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regmap22.i, align 4
  %call23.i = call i32 @regmap_read(ptr noundef %133, i32 noundef 4, ptr noundef nonnull %val.i) #13
  %134 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %val.i, align 4
  %and24.i = and i32 %135, 98304
  store i32 %and24.i, ptr %val.i, align 4
  %136 = zext i32 %and24.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %and24.i, label %sw.default.i85.i [
    i32 32768, label %if.then21.i.if.end27.i145_crit_edge
    i32 65536, label %sw.bb1.i83.i
    i32 98304, label %sw.bb2.i84.i
  ]

if.then21.i.if.end27.i145_crit_edge:              ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i145

sw.bb1.i83.i:                                     ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i145

sw.bb2.i84.i:                                     ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i145

sw.default.i85.i:                                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i145

if.end27.i145:                                    ; preds = %sw.default.i85.i, %sw.bb2.i84.i, %sw.bb1.i83.i, %if.then21.i.if.end27.i145_crit_edge, %if.else.i143.if.end27.i145_crit_edge
  %usable_chs.1.i = phi i32 [ 10, %if.else.i143.if.end27.i145_crit_edge ], [ 8, %sw.default.i85.i ], [ 2, %sw.bb2.i84.i ], [ 4, %sw.bb1.i83.i ], [ 6, %if.then21.i.if.end27.i145_crit_edge ]
  %regmap28.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %107, i32 0, i32 8
  %137 = ptrtoint ptr %regmap28.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regmap28.i, align 4
  %call29.i144 = call i32 @regmap_read(ptr noundef %138, i32 noundef 0, ptr noundef nonnull %val.i) #13
  %139 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %val.i, align 4
  %and30.i = and i32 %140, 98304
  store i32 %and30.i, ptr %val.i, align 4
  %141 = zext i32 %and30.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %and30.i, label %if.end27.i145.if.end43.i_crit_edge [
    i32 32768, label %if.end27.i145.to_ch_num.exit92.i_crit_edge
    i32 65536, label %sw.bb1.i88.i
    i32 98304, label %sw.bb2.i89.i
  ]

if.end27.i145.to_ch_num.exit92.i_crit_edge:       ; preds = %if.end27.i145
  call void @__sanitizer_cov_trace_pc() #15
  br label %to_ch_num.exit92.i

if.end27.i145.if.end43.i_crit_edge:               ; preds = %if.end27.i145
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43.i

sw.bb1.i88.i:                                     ; preds = %if.end27.i145
  call void @__sanitizer_cov_trace_pc() #15
  br label %to_ch_num.exit92.i

sw.bb2.i89.i:                                     ; preds = %if.end27.i145
  call void @__sanitizer_cov_trace_pc() #15
  br label %to_ch_num.exit92.i

to_ch_num.exit92.i:                               ; preds = %sw.bb2.i89.i, %sw.bb1.i88.i, %if.end27.i145.to_ch_num.exit92.i_crit_edge
  %retval.0.i91.i = phi i32 [ 8, %sw.bb2.i89.i ], [ 6, %sw.bb1.i88.i ], [ 4, %if.end27.i145.to_ch_num.exit92.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i91.i, i32 %usable_chs.1.i)
  %cmp32.i = icmp ugt i32 %retval.0.i91.i, %usable_chs.1.i
  br i1 %cmp32.i, label %do.end36.i, label %to_ch_num.exit92.i.if.end43.i_crit_edge

to_ch_num.exit92.i.if.end43.i_crit_edge:          ; preds = %to_ch_num.exit92.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43.i

do.end36.i:                                       ; preds = %to_ch_num.exit92.i
  %142 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %107, align 4
  %144 = zext i32 %and30.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %and30.i, label %sw.default.i95.i [
    i32 32768, label %do.end36.i.to_ch_num.exit97.i_crit_edge
    i32 65536, label %sw.bb1.i93.i
    i32 98304, label %sw.bb2.i94.i
  ]

do.end36.i.to_ch_num.exit97.i_crit_edge:          ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %to_ch_num.exit97.i

sw.bb1.i93.i:                                     ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %to_ch_num.exit97.i

sw.bb2.i94.i:                                     ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %to_ch_num.exit97.i

sw.default.i95.i:                                 ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %to_ch_num.exit97.i

to_ch_num.exit97.i:                               ; preds = %sw.default.i95.i, %sw.bb2.i94.i, %sw.bb1.i93.i, %do.end36.i.to_ch_num.exit97.i_crit_edge
  %retval.0.i96.i = phi i32 [ 2, %sw.default.i95.i ], [ 8, %sw.bb2.i94.i ], [ 6, %sw.bb1.i93.i ], [ 4, %do.end36.i.to_ch_num.exit97.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.60, i32 noundef %retval.0.i96.i, i32 noundef %usable_chs.1.i) #16
  br label %rockchip_i2s_io_multiplex.exit

if.end43.i:                                       ; preds = %to_ch_num.exit92.i.if.end43.i_crit_edge, %if.end27.i145.if.end43.i_crit_edge, %to_ch_num.exit77.i.if.end43.i_crit_edge, %if.end6.i.if.end43.i_crit_edge
  %soc_data.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %107, i32 0, i32 14
  %145 = ptrtoint ptr %soc_data.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %soc_data.i, align 4
  %grf_shift.i = getelementptr inbounds %struct.rk_i2s_soc_data, ptr %146, i32 0, i32 2
  %147 = ptrtoint ptr %grf_shift.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %grf_shift.i, align 4
  %149 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %val.i, align 4
  %shl70.i = or i32 %150, 458752
  %or.i146 = shl i32 %shl70.i, %148
  store i32 %or.i146, ptr %val.i, align 4
  %grf.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %107, i32 0, i32 9
  %151 = ptrtoint ptr %grf.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %grf.i, align 4
  %grf_reg_offset.i = getelementptr inbounds %struct.rk_i2s_soc_data, ptr %146, i32 0, i32 1
  %153 = ptrtoint ptr %grf_reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %grf_reg_offset.i, align 4
  %call49.i = call i32 @regmap_write(ptr noundef %152, i32 noundef %154, i32 noundef %or.i146) #13
  br label %rockchip_i2s_io_multiplex.exit

rockchip_i2s_io_multiplex.exit:                   ; preds = %if.end43.i, %to_ch_num.exit97.i, %to_ch_num.exit82.i, %if.end61.rockchip_i2s_io_multiplex.exit_crit_edge
  %retval.2.i = phi i32 [ 0, %if.end43.i ], [ 0, %if.end61.rockchip_i2s_io_multiplex.exit_crit_edge ], [ -22, %to_ch_num.exit82.i ], [ -22, %to_ch_num.exit97.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #13
  br label %cleanup

cleanup:                                          ; preds = %rockchip_i2s_io_multiplex.exit, %sw.epilog.cleanup_crit_edge, %params_format.exit.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.end7.i114.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.end.i112
  %retval.0 = phi i32 [ %retval.2.i, %rockchip_i2s_io_multiplex.exit ], [ -22, %if.end8.cleanup_crit_edge ], [ -22, %params_format.exit.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ %call22.i, %if.else.i.cleanup_crit_edge ], [ %call9.i, %if.end7.i114.cleanup_crit_edge ], [ %call.i113, %if.end.i.cleanup_crit_edge ], [ -22, %do.end.i112 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_i2s_tdm_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge31
    i32 4, label %entry.sw.bb_crit_edge32
    i32 5, label %entry.sw.bb4_crit_edge
    i32 0, label %entry.sw.bb4_crit_edge33
    i32 3, label %entry.sw.bb4_crit_edge34
  ]

entry.sw.bb4_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb4

entry.sw.bb4_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb4

entry.sw.bb_crit_edge32:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge31:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge31, %entry.sw.bb_crit_edge32
  %clk_trcm = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 26
  %5 = ptrtoint ptr %clk_trcm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %clk_trcm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @rockchip_snd_txrxctrl(ptr noundef %substream, ptr noundef %dai, i32 noundef 1)
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %7 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  %regmap2.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %regmap2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap2.i, align 4
  br i1 %cmp, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 16, i32 noundef 16777216, i32 noundef 16777216, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %11 = ptrtoint ptr %regmap2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap2.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 28, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %cleanup

if.else2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 16, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %13 = ptrtoint ptr %regmap2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap2.i, align 4
  %call.i.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 28, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %cleanup

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge33, %entry.sw.bb4_crit_edge34
  %clk_trcm5 = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 26
  %15 = ptrtoint ptr %clk_trcm5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clk_trcm5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not = icmp eq i32 %16, 0
  br i1 %tobool6.not, label %if.else8, label %if.then7

if.then7:                                         ; preds = %sw.bb4
  %lock.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 31
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  %stream17.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %17 = ptrtoint ptr %stream17.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stream17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp18.i = icmp eq i32 %18, 0
  %regmap21.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 8
  %19 = ptrtoint ptr %regmap21.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap21.i, align 4
  %..i = select i1 %cmp18.i, i32 256, i32 16777216
  %call.i.i46.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 16, i32 noundef %..i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %refcount25.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 30
  %21 = ptrtoint ptr %refcount25.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %refcount25.i, align 4
  %dec.i = add i32 %22, -1
  store i32 %dec.i, ptr %refcount25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp26.i = icmp eq i32 %dec.i, 0
  br i1 %cmp26.i, label %if.then28.i, label %if.then7.rockchip_snd_txrxctrl.exit_crit_edge

if.then7.rockchip_snd_txrxctrl.exit_crit_edge:    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %rockchip_snd_txrxctrl.exit

if.then28.i:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @rockchip_snd_xfer_clear(ptr noundef %3, i32 noundef 3) #13
  br label %rockchip_snd_txrxctrl.exit

rockchip_snd_txrxctrl.exit:                       ; preds = %if.then28.i, %if.then7.rockchip_snd_txrxctrl.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #13
  br label %cleanup

if.else8:                                         ; preds = %sw.bb4
  %stream9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %23 = ptrtoint ptr %stream9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stream9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp10 = icmp eq i32 %24, 1
  %regmap2.i28 = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 8
  %25 = ptrtoint ptr %regmap2.i28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap2.i28, align 4
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i6.i = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 16, i32 noundef 16777216, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  tail call fastcc void @rockchip_snd_xfer_clear(ptr noundef %3, i32 noundef 2) #13
  br label %cleanup

if.else12:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i6.i30 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 16, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  tail call fastcc void @rockchip_snd_xfer_clear(ptr noundef %3, i32 noundef 1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else12, %if.then11, %rockchip_snd_txrxctrl.exit, %if.else2, %if.then1, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %rockchip_snd_txrxctrl.exit ], [ 0, %if.else12 ], [ 0, %if.then11 ], [ 0, %if.then ], [ 0, %if.else2 ], [ 0, %if.then1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rockchip_snd_xfer_clear(ptr nocapture noundef readonly %i2s_tdm, i32 noundef %clr) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !214
  %and = and i32 %clr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and1 = and i32 %clr, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %1 = and i32 %clr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %not.tobool.not = xor i1 %tobool.not, true
  %spec.select = zext i1 %not.tobool.not to i32
  %2 = or i32 %and1, %spec.select
  %regmap = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 8
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 28, i32 noundef %2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 32212200) #13
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i64 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 32, i32 noundef %clr, i32 noundef %clr, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call16 = call i32 @regmap_read(ptr noundef %9, i32 noundef 32, ptr noundef nonnull %val) #13
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool17.not = icmp eq i32 %11, 0
  br i1 %tobool17.not, label %if.end.cleanup_crit_edge, label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body:                                       ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 3221220) #13
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call19 = call i32 @regmap_read(ptr noundef %14, i32 noundef 32, ptr noundef nonnull %val) #13
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool17.not.1 = icmp eq i32 %16, 0
  br i1 %tobool17.not.1, label %while.body.cleanup_crit_edge, label %while.body.1

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.1:                                     ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 3221220) #13
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call19.1 = call i32 @regmap_read(ptr noundef %19, i32 noundef 32, ptr noundef nonnull %val) #13
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool17.not.2 = icmp eq i32 %21, 0
  br i1 %tobool17.not.2, label %while.body.1.cleanup_crit_edge, label %while.body.2

while.body.1.cleanup_crit_edge:                   ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.2:                                     ; preds = %while.body.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 3221220) #13
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call19.2 = call i32 @regmap_read(ptr noundef %24, i32 noundef 32, ptr noundef nonnull %val) #13
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool17.not.3 = icmp eq i32 %26, 0
  br i1 %tobool17.not.3, label %while.body.2.cleanup_crit_edge, label %while.body.3

while.body.2.cleanup_crit_edge:                   ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.3:                                     ; preds = %while.body.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 3221220) #13
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call19.3 = call i32 @regmap_read(ptr noundef %29, i32 noundef 32, ptr noundef nonnull %val) #13
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool17.not.4 = icmp eq i32 %31, 0
  br i1 %tobool17.not.4, label %while.body.3.cleanup_crit_edge, label %while.body.4

while.body.3.cleanup_crit_edge:                   ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.4:                                     ; preds = %while.body.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %32(i32 noundef 3221220) #13
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call19.4 = call i32 @regmap_read(ptr noundef %34, i32 noundef 32, ptr noundef nonnull %val) #13
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool17.not.5 = icmp eq i32 %36, 0
  br i1 %tobool17.not.5, label %while.body.4.cleanup_crit_edge, label %while.body.5

while.body.4.cleanup_crit_edge:                   ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.5:                                     ; preds = %while.body.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %37(i32 noundef 3221220) #13
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %call19.5 = call i32 @regmap_read(ptr noundef %39, i32 noundef 32, ptr noundef nonnull %val) #13
  %40 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool17.not.6 = icmp eq i32 %41, 0
  br i1 %tobool17.not.6, label %while.body.5.cleanup_crit_edge, label %while.body.6

while.body.5.cleanup_crit_edge:                   ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.6:                                     ; preds = %while.body.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %42(i32 noundef 3221220) #13
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call19.6 = call i32 @regmap_read(ptr noundef %44, i32 noundef 32, ptr noundef nonnull %val) #13
  %45 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool17.not.7 = icmp eq i32 %46, 0
  br i1 %tobool17.not.7, label %while.body.6.cleanup_crit_edge, label %while.body.7

while.body.6.cleanup_crit_edge:                   ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.7:                                     ; preds = %while.body.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 3221220) #13
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %call19.7 = call i32 @regmap_read(ptr noundef %49, i32 noundef 32, ptr noundef nonnull %val) #13
  %50 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool17.not.8 = icmp eq i32 %51, 0
  br i1 %tobool17.not.8, label %while.body.7.cleanup_crit_edge, label %while.body.8

while.body.7.cleanup_crit_edge:                   ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.8:                                     ; preds = %while.body.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 3221220) #13
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %call19.8 = call i32 @regmap_read(ptr noundef %54, i32 noundef 32, ptr noundef nonnull %val) #13
  %55 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool17.not.9 = icmp eq i32 %56, 0
  br i1 %tobool17.not.9, label %while.body.8.cleanup_crit_edge, label %while.body.9

while.body.8.cleanup_crit_edge:                   ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.9:                                     ; preds = %while.body.8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %57(i32 noundef 3221220) #13
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 4
  %call19.9 = call i32 @regmap_read(ptr noundef %59, i32 noundef 32, ptr noundef nonnull %val) #13
  %60 = ptrtoint ptr %i2s_tdm to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i2s_tdm, align 4
  %cond = select i1 %tobool.not, ptr @.str.56, ptr @.str.41
  %cond24 = select i1 %tobool2.not, ptr @.str.56, ptr @.str.42
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.53, ptr noundef nonnull %cond, ptr noundef nonnull %cond24) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %.not65 = icmp eq i32 %1, 3
  br i1 %.not65, label %if.then27, label %if.else

if.then27:                                        ; preds = %while.body.9
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @rockchip_snd_xfer_sync_reset(ptr noundef %i2s_tdm)
  br label %cleanup

if.else:                                          ; preds = %while.body.9
  br i1 %tobool.not, label %if.else30, label %if.then29

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %tx_reset = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 12
  %62 = ptrtoint ptr %tx_reset to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tx_reset, align 4
  call fastcc void @rockchip_snd_reset(ptr noundef %63)
  br label %cleanup

if.else30:                                        ; preds = %if.else
  br i1 %tobool2.not, label %if.else30.cleanup_crit_edge, label %if.then32

if.else30.cleanup_crit_edge:                      ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then32:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #15
  %rx_reset = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 13
  %64 = ptrtoint ptr %rx_reset to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rx_reset, align 4
  call fastcc void @rockchip_snd_reset(ptr noundef %65)
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.else30.cleanup_crit_edge, %if.then29, %if.then27, %while.body.8.cleanup_crit_edge, %while.body.7.cleanup_crit_edge, %while.body.6.cleanup_crit_edge, %while.body.5.cleanup_crit_edge, %while.body.4.cleanup_crit_edge, %while.body.3.cleanup_crit_edge, %while.body.2.cleanup_crit_edge, %while.body.1.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rockchip_snd_xfer_sync_reset(ptr nocapture noundef readonly %i2s_tdm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_reset = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 12
  %0 = ptrtoint ptr %tx_reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_reset, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %1) #13
  %rx_reset = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 13
  %2 = ptrtoint ptr %rx_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_reset, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %3) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #13
  %5 = ptrtoint ptr %tx_reset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_reset, align 4
  %call3 = tail call i32 @reset_control_deassert(ptr noundef %6) #13
  %7 = ptrtoint ptr %rx_reset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_reset, align 4
  %call5 = tail call i32 @reset_control_deassert(ptr noundef %8) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rockchip_snd_reset(ptr noundef %rc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @reset_control_assert(ptr noundef %rc) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #13
  %call1 = tail call i32 @reset_control_deassert(ptr noundef %rc) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rockchip_snd_txrxctrl(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai, i32 noundef %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %lock = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 31
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %stream17 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp18 = icmp eq i32 %5, 0
  %regmap21 = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %regmap21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap21, align 4
  br i1 %tobool.not, label %if.else16, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp18, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 16, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i43 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 16, i32 noundef 16777216, i32 noundef 16777216, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then8
  %refcount = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 30
  %8 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %refcount, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp10 = icmp eq i32 %9, 0
  br i1 %cmp10, label %if.then12, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %tx_reset.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 12
  %10 = ptrtoint ptr %tx_reset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_reset.i, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %11) #13
  %rx_reset.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 13
  %12 = ptrtoint ptr %rx_reset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_reset.i, align 4
  %call1.i = tail call i32 @reset_control_assert(ptr noundef %13) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #13
  %15 = ptrtoint ptr %tx_reset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_reset.i, align 4
  %call3.i = tail call i32 @reset_control_deassert(ptr noundef %16) #13
  %17 = ptrtoint ptr %rx_reset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_reset.i, align 4
  %call5.i = tail call i32 @reset_control_deassert(ptr noundef %18) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #13
  %regmap13 = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 8
  %20 = ptrtoint ptr %regmap13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap13, align 4
  %call.i44 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 28, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %if.end30

if.else16:                                        ; preds = %entry
  %. = select i1 %cmp18, i32 256, i32 16777216
  %call.i.i46 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 16, i32 noundef %., i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %refcount25 = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %3, i32 0, i32 30
  %22 = ptrtoint ptr %refcount25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %refcount25, align 4
  %dec = add i32 %23, -1
  store i32 %dec, ptr %refcount25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp26 = icmp eq i32 %dec, 0
  br i1 %cmp26, label %if.then28, label %if.else16.if.end30_crit_edge

if.else16.if.end30_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then28:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @rockchip_snd_xfer_clear(ptr noundef %3, i32 noundef 3)
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.else16.if.end30_crit_edge, %if.then12, %if.end.if.end30_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rockchip_i2s_tdm_wr_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.fshl.i32(i32 %reg, i32 %reg, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %0)
  %1 = icmp ult i32 %0, 15
  %switch.cast = trunc i32 %0 to i15
  %switch.downshift = lshr i15 -3145, %switch.cast
  %2 = and i15 %switch.downshift, 1
  %3 = sext i15 %2 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %switch.masked = icmp ne i15 %2, 0
  %retval.0 = select i1 %1, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rockchip_i2s_tdm_rd_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.fshl.i32(i32 %reg, i32 %reg, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %0)
  %switch = icmp ult i32 %0, 15
  ret i1 %switch
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rockchip_i2s_tdm_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -12
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %2 = icmp ult i32 %1, 9
  %switch.cast = trunc i32 %1 to i9
  %switch.downshift = lshr i9 -23, %switch.cast
  %3 = and i9 %switch.downshift, 1
  %4 = sext i9 %3 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %switch.masked = icmp ne i9 %3, 0
  %retval.0 = select i1 %2, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rockchip_i2s_tdm_precious_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %reg)
  %cmp = icmp eq i32 %reg, 40
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_i2s_tdm_path_prepare(ptr noundef %i2s_tdm, ptr noundef %np, i1 noundef zeroext %is_rx_path) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i2s_sdis = getelementptr %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 27
  %i2s_sdos = getelementptr %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 28
  %i2s_path_prop.0 = select i1 %is_rx_path, ptr @.str.67, ptr @.str.66
  %i2s_data.0 = select i1 %is_rx_path, ptr %i2s_sdis, ptr %i2s_sdos
  %call = tail call i32 @of_count_phandle_with_args(ptr noundef %np, ptr noundef nonnull %i2s_path_prop.0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then2, label %if.else6

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call)
  %cmp3.not = icmp eq i32 %call, -2
  br i1 %cmp3.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %i2s_tdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2s_tdm, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.68, ptr noundef nonnull %i2s_path_prop.0, i32 noundef %call) #16
  br label %cleanup

if.else6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp7.not = icmp eq i32 %call, 4
  br i1 %cmp7.not, label %if.end14, label %do.end11

do.end11:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %i2s_tdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2s_tdm, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.71, i32 noundef %call, i32 noundef 4) #16
  br label %cleanup

if.end14:                                         ; preds = %if.else6
  %call.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull %i2s_path_prop.0, ptr noundef %i2s_data.0, i32 noundef 4, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp16 = icmp slt i32 %call.i, 0
  br i1 %cmp16, label %do.end20, label %if.end22

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %i2s_tdm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2s_tdm, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.74, ptr noundef nonnull %i2s_path_prop.0, i32 noundef %call.i) #16
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %6 = ptrtoint ptr %i2s_data.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i2s_data.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp2.i = icmp ugt i32 %7, 3
  br i1 %cmp2.i, label %if.end22.do.end.i_crit_edge, label %if.end12.1.i

if.end22.do.end.i_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.3.2.i.do.end.i_crit_edge, %for.inc.3.1.i.do.end.i_crit_edge, %for.inc.3.i.do.end.i_crit_edge, %if.end22.do.end.i_crit_edge
  %i.08.lcssa.i = phi i32 [ 0, %if.end22.do.end.i_crit_edge ], [ 1, %for.inc.3.i.do.end.i_crit_edge ], [ 2, %for.inc.3.1.i.do.end.i_crit_edge ], [ 3, %for.inc.3.2.i.do.end.i_crit_edge ]
  %.lcssa10.i = phi i32 [ %7, %if.end22.do.end.i_crit_edge ], [ %13, %for.inc.3.i.do.end.i_crit_edge ], [ %15, %for.inc.3.1.i.do.end.i_crit_edge ], [ %17, %for.inc.3.2.i.do.end.i_crit_edge ]
  %8 = ptrtoint ptr %i2s_tdm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2s_tdm, align 4
  %cond.i = select i1 %is_rx_path, ptr @.str.81, ptr @.str.82
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.79, ptr noundef nonnull %cond.i, i32 noundef %i.08.lcssa.i, i32 noundef %.lcssa10.i, i32 noundef 4) #16
  br label %do.end29

do.end19.i:                                       ; preds = %if.end12.3.2.i.do.end19.i_crit_edge, %if.end12.3.1.i.do.end19.i_crit_edge, %if.end12.2.1.i.do.end19.i_crit_edge, %if.end12.3.i.do.end19.i_crit_edge, %if.end12.2.i.do.end19.i_crit_edge, %if.end12.1.i.do.end19.i_crit_edge
  %i.08.lcssa13.i = phi i32 [ 0, %if.end12.1.i.do.end19.i_crit_edge ], [ 0, %if.end12.2.i.do.end19.i_crit_edge ], [ 0, %if.end12.3.i.do.end19.i_crit_edge ], [ 1, %if.end12.2.1.i.do.end19.i_crit_edge ], [ 1, %if.end12.3.1.i.do.end19.i_crit_edge ], [ 2, %if.end12.3.2.i.do.end19.i_crit_edge ]
  %.lcssa11.i = phi i32 [ %7, %if.end12.1.i.do.end19.i_crit_edge ], [ %7, %if.end12.2.i.do.end19.i_crit_edge ], [ %7, %if.end12.3.i.do.end19.i_crit_edge ], [ %13, %if.end12.2.1.i.do.end19.i_crit_edge ], [ %13, %if.end12.3.1.i.do.end19.i_crit_edge ], [ %15, %if.end12.3.2.i.do.end19.i_crit_edge ]
  %j.06.lcssa.i = phi i32 [ 1, %if.end12.1.i.do.end19.i_crit_edge ], [ 2, %if.end12.2.i.do.end19.i_crit_edge ], [ 3, %if.end12.3.i.do.end19.i_crit_edge ], [ 2, %if.end12.2.1.i.do.end19.i_crit_edge ], [ 3, %if.end12.3.1.i.do.end19.i_crit_edge ], [ 3, %if.end12.3.2.i.do.end19.i_crit_edge ]
  %10 = ptrtoint ptr %i2s_tdm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2s_tdm, align 4
  %cond22.i = select i1 %is_rx_path, ptr @.str.81, ptr @.str.82
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.84, ptr noundef nonnull %cond22.i, i32 noundef %i.08.lcssa13.i, i32 noundef %.lcssa11.i, i32 noundef %j.06.lcssa.i, i32 noundef %.lcssa11.i) #16
  br label %do.end29

if.end12.1.i:                                     ; preds = %if.end22
  %arrayidx14.1.i = getelementptr i32, ptr %i2s_data.0, i32 1
  %12 = ptrtoint ptr %arrayidx14.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx14.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %13)
  %cmp15.1.i = icmp eq i32 %7, %13
  br i1 %cmp15.1.i, label %if.end12.1.i.do.end19.i_crit_edge, label %if.end12.2.i

if.end12.1.i.do.end19.i_crit_edge:                ; preds = %if.end12.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end19.i

if.end12.2.i:                                     ; preds = %if.end12.1.i
  %arrayidx14.2.i = getelementptr i32, ptr %i2s_data.0, i32 2
  %14 = ptrtoint ptr %arrayidx14.2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx14.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %15)
  %cmp15.2.i = icmp eq i32 %7, %15
  br i1 %cmp15.2.i, label %if.end12.2.i.do.end19.i_crit_edge, label %if.end12.3.i

if.end12.2.i.do.end19.i_crit_edge:                ; preds = %if.end12.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end19.i

if.end12.3.i:                                     ; preds = %if.end12.2.i
  %arrayidx14.3.i = getelementptr i32, ptr %i2s_data.0, i32 3
  %16 = ptrtoint ptr %arrayidx14.3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %17)
  %cmp15.3.i = icmp eq i32 %7, %17
  br i1 %cmp15.3.i, label %if.end12.3.i.do.end19.i_crit_edge, label %for.inc.3.i

if.end12.3.i.do.end19.i_crit_edge:                ; preds = %if.end12.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end19.i

for.inc.3.i:                                      ; preds = %if.end12.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp2.1.i = icmp ugt i32 %13, 3
  br i1 %cmp2.1.i, label %for.inc.3.i.do.end.i_crit_edge, label %if.end12.2.1.i

for.inc.3.i.do.end.i_crit_edge:                   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.end12.2.1.i:                                   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp15.2.1.i = icmp eq i32 %13, %15
  br i1 %cmp15.2.1.i, label %if.end12.2.1.i.do.end19.i_crit_edge, label %if.end12.3.1.i

if.end12.2.1.i.do.end19.i_crit_edge:              ; preds = %if.end12.2.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end19.i

if.end12.3.1.i:                                   ; preds = %if.end12.2.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %17)
  %cmp15.3.1.i = icmp eq i32 %13, %17
  br i1 %cmp15.3.1.i, label %if.end12.3.1.i.do.end19.i_crit_edge, label %for.inc.3.1.i

if.end12.3.1.i.do.end19.i_crit_edge:              ; preds = %if.end12.3.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end19.i

for.inc.3.1.i:                                    ; preds = %if.end12.3.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp2.2.i = icmp ugt i32 %15, 3
  br i1 %cmp2.2.i, label %for.inc.3.1.i.do.end.i_crit_edge, label %if.end12.3.2.i

for.inc.3.1.i.do.end.i_crit_edge:                 ; preds = %for.inc.3.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.end12.3.2.i:                                   ; preds = %for.inc.3.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp15.3.2.i = icmp eq i32 %15, %17
  br i1 %cmp15.3.2.i, label %if.end12.3.2.i.do.end19.i_crit_edge, label %for.inc.3.2.i

if.end12.3.2.i.do.end19.i_crit_edge:              ; preds = %if.end12.3.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end19.i

for.inc.3.2.i:                                    ; preds = %if.end12.3.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp2.3.i = icmp ugt i32 %17, 3
  br i1 %cmp2.3.i, label %for.inc.3.2.i.do.end.i_crit_edge, label %if.end31

for.inc.3.2.i.do.end.i_crit_edge:                 ; preds = %for.inc.3.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end29:                                         ; preds = %do.end19.i, %do.end.i
  %18 = ptrtoint ptr %i2s_tdm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2s_tdm, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.77, i32 noundef -22) #16
  br label %cleanup

if.end31:                                         ; preds = %for.inc.3.2.i
  %regmap.i.i = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 8
  %20 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i.i, align 4
  br i1 %is_rx_path, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %i2s_sdis to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i2s_sdis, align 4
  %shl3.i.i = shl i32 %23, 17
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 4, i32 noundef 393216, i32 noundef %shl3.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %24 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i.i, align 4
  %arrayidx.1.i.i = getelementptr %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 27, i32 1
  %26 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.1.i.i, align 4
  %shl3.1.i.i = shl i32 %27, 19
  %call.i.1.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 4, i32 noundef 1572864, i32 noundef %shl3.1.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %28 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i.i, align 4
  %arrayidx.2.i.i = getelementptr %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 27, i32 2
  %30 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.2.i.i, align 4
  %shl3.2.i.i = shl i32 %31, 21
  %call.i.2.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 4, i32 noundef 6291456, i32 noundef %shl3.2.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %32 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i.i, align 4
  %arrayidx.3.i.i = getelementptr %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 27, i32 3
  %34 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.3.i.i, align 4
  %shl3.3.i.i = shl i32 %35, 23
  %call.i.3.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 4, i32 noundef 25165824, i32 noundef %shl3.3.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %cleanup

if.else.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %i2s_sdos to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i2s_sdos, align 4
  %shl3.i3.i = shl i32 %37, 23
  %call.i.i4.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 0, i32 noundef 25165824, i32 noundef %shl3.i3.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %38 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i.i, align 4
  %arrayidx.1.i5.i = getelementptr %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 28, i32 1
  %40 = ptrtoint ptr %arrayidx.1.i5.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.1.i5.i, align 4
  %shl3.1.i6.i = shl i32 %41, 25
  %call.i.1.i7.i = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 0, i32 noundef 100663296, i32 noundef %shl3.1.i6.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %42 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i.i, align 4
  %arrayidx.2.i8.i = getelementptr %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 28, i32 2
  %44 = ptrtoint ptr %arrayidx.2.i8.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.2.i8.i, align 4
  %shl3.2.i9.i = shl i32 %45, 27
  %call.i.2.i10.i = tail call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 0, i32 noundef 402653184, i32 noundef %shl3.2.i9.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %46 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i.i, align 4
  %arrayidx.3.i11.i = getelementptr %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 28, i32 3
  %48 = ptrtoint ptr %arrayidx.3.i11.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.3.i11.i, align 4
  %shl3.3.i12.i = shl i32 %49, 29
  %call.i.3.i13.i = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 0, i32 noundef 1610612736, i32 noundef %shl3.3.i12.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %do.end29, %do.end20, %do.end11, %do.end, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end11 ], [ %call.i, %do.end20 ], [ -22, %do.end29 ], [ %call, %do.end ], [ 0, %if.then2.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2s_tdm_disable_unprepare_mclk(ptr nocapture noundef readonly %i2s_tdm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mclk_tx = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 2
  %0 = ptrtoint ptr %mclk_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mclk_tx, align 4
  tail call void @clk_disable(ptr noundef %1) #13
  tail call void @clk_unprepare(ptr noundef %1) #13
  %mclk_rx = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 3
  %2 = ptrtoint ptr %mclk_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mclk_rx, align 4
  tail call void @clk_disable(ptr noundef %3) #13
  tail call void @clk_unprepare(ptr noundef %3) #13
  %mclk_calibrate = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 17
  %4 = ptrtoint ptr %mclk_calibrate to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mclk_calibrate, align 2, !range !215
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mclk_tx_src = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 4
  %6 = ptrtoint ptr %mclk_tx_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mclk_tx_src, align 4
  tail call void @clk_disable(ptr noundef %7) #13
  tail call void @clk_unprepare(ptr noundef %7) #13
  %mclk_rx_src = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 5
  %8 = ptrtoint ptr %mclk_rx_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mclk_rx_src, align 4
  tail call void @clk_disable(ptr noundef %9) #13
  tail call void @clk_unprepare(ptr noundef %9) #13
  %mclk_root0 = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 6
  %10 = ptrtoint ptr %mclk_root0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mclk_root0, align 4
  tail call void @clk_disable(ptr noundef %11) #13
  tail call void @clk_unprepare(ptr noundef %11) #13
  %mclk_root1 = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %i2s_tdm, i32 0, i32 7
  %12 = ptrtoint ptr %mclk_root1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mclk_root1, align 4
  tail call void @clk_disable(ptr noundef %13) #13
  tail call void @clk_unprepare(ptr noundef %13) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @common_soc_init(ptr nocapture noundef readonly %dev, i32 noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %soc_data = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc_data, align 4
  %configs1 = getelementptr inbounds %struct.rk_i2s_soc_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %configs1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %configs1, align 4
  %clk_trcm = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %clk_trcm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_trcm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %8 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc_data, align 4
  %config_count37 = getelementptr inbounds %struct.rk_i2s_soc_data, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %config_count37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %config_count37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp338 = icmp sgt i32 %11, 0
  br i1 %cmp338, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp10 = icmp eq i32 %7, 1
  %grf = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %1, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.txrx_config, ptr %5, i32 %i.039
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %addr)
  %cmp5.not = icmp eq i32 %13, %addr
  br i1 %cmp5.not, label %if.end7, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %reg9 = getelementptr %struct.txrx_config, ptr %5, i32 %i.039, i32 1
  %14 = ptrtoint ptr %reg9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.end7.for.inc_crit_edge, label %if.then15

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then15:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %txonly = getelementptr %struct.txrx_config, ptr %5, i32 %i.039, i32 2
  %rxonly = getelementptr %struct.txrx_config, ptr %5, i32 %i.039, i32 3
  %val.0.in = select i1 %cmp10, ptr %txonly, ptr %rxonly
  %16 = ptrtoint ptr %val.0.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %val.0 = load i32, ptr %val.0.in, align 4
  %17 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %grf, align 4
  %call16 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef %15, i32 noundef %val.0) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %if.end7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.039, 1
  %19 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %soc_data, align 4
  %config_count = getelementptr inbounds %struct.rk_i2s_soc_data, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %config_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %config_count, align 4
  %cmp3 = icmp slt i32 %inc, %22
  br i1 %cmp3, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_i2s_tdm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %3) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_i2s_tdm_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %regmap = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regcache_sync(ptr noundef %3) #13
  %call.i9 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2s_tdm_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hclk = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %call2 = tail call fastcc i32 @i2s_tdm_prepare_enable_mclk(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_mclk_crit_edge

if.end.err_mclk_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_mclk

if.end5:                                          ; preds = %if.end
  %regmap = getelementptr inbounds %struct.rk_i2s_tdm_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext false) #13
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %7) #13
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regcache_sync(ptr noundef %9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end5.cleanup_crit_edge, label %err_regcache

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err_regcache:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @i2s_tdm_disable_unprepare_mclk(ptr noundef %1)
  br label %err_mclk

err_mclk:                                         ; preds = %err_regcache, %if.end.err_mclk_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.err_mclk_crit_edge ], [ %call8, %err_regcache ]
  %10 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hclk, align 4
  tail call void @clk_disable(ptr noundef %11) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_mclk, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %11, %err_mclk ], [ %3, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.0, %err_mclk ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !66, !68, !69, !70, !72, !73, !74, !76, !78, !80, !81, !82, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !173, !174, !175, !177, !178, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203}
!llvm.module.flags = !{!205, !206, !207, !208, !209, !210, !211, !212}
!llvm.ident = !{!213}

!0 = !{ptr @__initcall__kmod_snd_soc_rockchip_i2s_tdm__242_1766_rockchip_i2s_tdm_driver_init6, !1, !"__initcall__kmod_snd_soc_rockchip_i2s_tdm__242_1766_rockchip_i2s_tdm_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1766, i32 1}
!2 = !{ptr @__exitcall_rockchip_i2s_tdm_driver_exit, !1, !"__exitcall_rockchip_i2s_tdm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description243, !4, !"__UNIQUE_ID_description243", i1 false, i1 false}
!4 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1768, i32 1}
!5 = !{ptr @__UNIQUE_ID_author244, !6, !"__UNIQUE_ID_author244", i1 false, i1 false}
!6 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1769, i32 1}
!7 = !{ptr @__UNIQUE_ID_file245, !8, !"__UNIQUE_ID_file245", i1 false, i1 false}
!8 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1770, i32 1}
!9 = !{ptr @__UNIQUE_ID_license246, !8, !"__UNIQUE_ID_license246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias247, !11, !"__UNIQUE_ID_alias247", i1 false, i1 false}
!11 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1771, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1761, i32 11}
!14 = !{ptr @rockchip_i2s_tdm_driver, !15, !"rockchip_i2s_tdm_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1757, i32 31}
!16 = !{ptr @rockchip_i2s_tdm_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1551, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1557, i32 34}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1559, i32 34}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1561, i32 4}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @rockchip_i2s_tdm_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @rockchip_i2s_tdm_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1571, i32 55}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1574, i32 10}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1577, i32 15}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1581, i32 10}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1585, i32 15}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1589, i32 10}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1592, i32 43}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1595, i32 10}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1598, i32 46}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1601, i32 10}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1604, i32 46}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1607, i32 10}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1611, i32 31}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1616, i32 10}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1621, i32 10}
!61 = !{ptr @rockchip_i2s_tdm_probe._key, !62, !"_key", i1 false, i1 false}
!62 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1624, i32 20}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1628, i32 10}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1645, i32 3}
!68 = !{ptr @rockchip_i2s_tdm_probe._entry.26, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @rockchip_i2s_tdm_probe._entry_ptr.28, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1651, i32 3}
!72 = !{ptr @rockchip_i2s_tdm_probe._entry.29, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @rockchip_i2s_tdm_probe._entry_ptr.31, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1660, i32 10}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1666, i32 9}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1694, i32 3}
!80 = !{ptr @rockchip_i2s_tdm_probe._entry.34, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @rockchip_i2s_tdm_probe._entry_ptr.36, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1700, i32 3}
!84 = !{ptr @rockchip_i2s_tdm_probe._entry.37, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @rockchip_i2s_tdm_probe._entry_ptr.39, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1329, i32 2}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1330, i32 25}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1332, i32 25}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1342, i32 32}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1350, i32 31}
!96 = !{ptr @i2s_tdm_dai, !97, !"i2s_tdm_dai", i1 false, i1 false}
!97 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1314, i32 40}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1058, i32 10}
!100 = !{ptr @rockchip_i2s_tdm_compensation_control, !101, !"rockchip_i2s_tdm_compensation_control", i1 false, i1 false}
!101 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1056, i32 32}
!102 = !{ptr @rockchip_i2s_tdm_dai_ops, !103, !"rockchip_i2s_tdm_dai_ops", i1 false, i1 false}
!103 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1112, i32 37}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 990, i32 2}
!106 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @rockchip_i2s_tdm_set_sysclk.__UNIQUE_ID_ddebug241, !105, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 646, i32 3}
!111 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @rockchip_i2s_tdm_calibrate_mclk._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @rockchip_i2s_tdm_calibrate_mclk._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 690, i32 4}
!116 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @rockchip_i2s_tdm_set_mclk._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @rockchip_i2s_tdm_set_mclk._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 296, i32 4}
!121 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @rockchip_snd_xfer_clear._entry, !120, !"_entry", i1 false, i1 false}
!124 = !{ptr @rockchip_snd_xfer_clear._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 775, i32 4}
!128 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @rockchip_i2s_io_multiplex._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @rockchip_i2s_io_multiplex._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 796, i32 4}
!133 = !{ptr @rockchip_i2s_io_multiplex._entry.59, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @rockchip_i2s_io_multiplex._entry_ptr.61, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1441, i32 52}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1445, i32 52}
!139 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1449, i32 51}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1453, i32 51}
!143 = !{ptr @rockchip_i2s_tdm_regmap_config, !144, !"rockchip_i2s_tdm_regmap_config", i1 false, i1 false}
!144 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1202, i32 35}
!145 = !{ptr @rockchip_i2s_tdm_reg_defaults, !146, !"rockchip_i2s_tdm_reg_defaults", i1 false, i1 false}
!146 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1191, i32 33}
!147 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1470, i32 27}
!149 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1471, i32 27}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1487, i32 4}
!153 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @rockchip_i2s_tdm_path_prepare._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @rockchip_i2s_tdm_path_prepare._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.71, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1494, i32 3}
!158 = !{ptr @rockchip_i2s_tdm_path_prepare._entry.70, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @rockchip_i2s_tdm_path_prepare._entry_ptr.72, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1502, i32 3}
!162 = !{ptr @rockchip_i2s_tdm_path_prepare._entry.73, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @rockchip_i2s_tdm_path_prepare._entry_ptr.75, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1510, i32 3}
!166 = !{ptr @rockchip_i2s_tdm_path_prepare._entry.76, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @rockchip_i2s_tdm_path_prepare._entry_ptr.78, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1379, i32 4}
!170 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @rockchip_i2s_tdm_path_check._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @rockchip_i2s_tdm_path_check._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.81, !169, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.82, !169, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1391, i32 5}
!177 = !{ptr @rockchip_i2s_tdm_path_check._entry.83, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @rockchip_i2s_tdm_path_check._entry_ptr.85, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @rockchip_i2s_tdm_component, !180, !"rockchip_i2s_tdm_component", i1 false, i1 false}
!180 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1121, i32 46}
!181 = !{ptr @rockchip_i2s_tdm_match, !182, !"rockchip_i2s_tdm_match", i1 false, i1 false}
!182 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1305, i32 34}
!183 = !{ptr @px30_i2s_soc_data, !184, !"px30_i2s_soc_data", i1 false, i1 false}
!184 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1268, i32 31}
!185 = !{ptr @px30_txrx_config, !186, !"px30_txrx_config", i1 false, i1 false}
!186 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1242, i32 33}
!187 = !{ptr @rk1808_i2s_soc_data, !188, !"rk1808_i2s_soc_data", i1 false, i1 false}
!188 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1275, i32 31}
!189 = !{ptr @rk1808_txrx_config, !190, !"rk1808_txrx_config", i1 false, i1 false}
!190 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1246, i32 33}
!191 = !{ptr @rk3308_i2s_soc_data, !192, !"rk3308_i2s_soc_data", i1 false, i1 false}
!192 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1282, i32 31}
!193 = !{ptr @rk3308_txrx_config, !194, !"rk3308_txrx_config", i1 false, i1 false}
!194 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1250, i32 33}
!195 = !{ptr @rk3568_i2s_soc_data, !196, !"rk3568_i2s_soc_data", i1 false, i1 false}
!196 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1291, i32 31}
!197 = !{ptr @rk3568_txrx_config, !198, !"rk3568_txrx_config", i1 false, i1 false}
!198 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1255, i32 33}
!199 = !{ptr @rv1126_i2s_soc_data, !200, !"rv1126_i2s_soc_data", i1 false, i1 false}
!200 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1298, i32 31}
!201 = !{ptr @rv1126_txrx_config, !202, !"rv1126_txrx_config", i1 false, i1 false}
!202 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1264, i32 33}
!203 = !{ptr @rockchip_i2s_tdm_pm_ops, !204, !"rockchip_i2s_tdm_pm_ops", i1 false, i1 false}
!204 = !{!"../sound/soc/rockchip/rockchip_i2s_tdm.c", i32 1750, i32 32}
!205 = !{i32 1, !"wchar_size", i32 2}
!206 = !{i32 1, !"min_enum_size", i32 4}
!207 = !{i32 8, !"branch-target-enforcement", i32 0}
!208 = !{i32 8, !"sign-return-address", i32 0}
!209 = !{i32 8, !"sign-return-address-all", i32 0}
!210 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!211 = !{i32 7, !"uwtable", i32 1}
!212 = !{i32 7, !"frame-pointer", i32 2}
!213 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!214 = !{!"auto-init"}
!215 = !{i8 0, i8 2}
!216 = !{i64 2148765430, i64 2148765435, i64 2148765448, i64 2148765492, i64 2148765526, i64 2148765547}
!217 = !{i64 2148283034}
!218 = !{i64 767857, i64 767882, i64 767904, i64 767920, i64 767932, i64 767952, i64 767976, i64 767992, i64 768004}
!219 = !{i64 2148283222}
!220 = !{i32 0, i32 33}
