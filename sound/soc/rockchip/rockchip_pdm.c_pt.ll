; ModuleID = '/llk/IR_all_yes/sound/soc/rockchip/rockchip_pdm.c_pt.bc'
source_filename = "../sound/soc/rockchip/rockchip_pdm.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reg_default = type { i32, i32 }
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
%struct.rk_pdm_dev = type { ptr, ptr, ptr, ptr, %struct.snd_dmaengine_dai_dma_data, ptr, i32 }
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

@__initcall__kmod_snd_soc_rockchip_pdm__241_721_rockchip_pdm_driver_init6 = internal global ptr @rockchip_pdm_driver_init, section ".initcall6.init", align 4
@rockchip_pdm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rockchip_pdm_probe, ptr @rockchip_pdm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_pdm_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_pdm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rockchip_pdm_driver_exit = internal global ptr @rockchip_pdm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author242 = internal constant [63 x i8] c"snd_soc_rockchip_pdm.author=Sugar <sugar.zhang@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [64 x i8] c"snd_soc_rockchip_pdm.description=Rockchip PDM Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [66 x i8] c"snd_soc_rockchip_pdm.file=sound/soc/rockchip/snd-soc-rockchip-pdm\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [36 x i8] c"snd_soc_rockchip_pdm.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip-pdm\00", [19 x i8] zeroinitializer }, align 32
@rockchip_pdm_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,pdm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-pdm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk1808-pdm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3308-pdm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3568-pdm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rv1126-pdm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@rockchip_pdm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rockchip_pdm_suspend, ptr @rockchip_pdm_resume, ptr @rockchip_pdm_suspend, ptr @rockchip_pdm_resume, ptr @rockchip_pdm_suspend, ptr @rockchip_pdm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_pdm_runtime_suspend, ptr @rockchip_pdm_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pdm-m\00", [26 x i8] zeroinitializer }, align 32
@rockchip_pdm_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rockchip_pdm_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @rockchip_pdm_wr_reg, ptr @rockchip_pdm_rd_reg, ptr @rockchip_pdm_volatile_reg, ptr @rockchip_pdm_precious_reg, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 88, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_pdm_reg_defaults, i32 4, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"rockchip_pdm:598:(&rockchip_pdm_regmap_config)->lock\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pdm_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pdm_hclk\00", [23 x i8] zeroinitializer }, align 32
@rockchip_pdm_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rockchip_pdm_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @rockchip_pdm_dai_probe, ptr null, ptr null, ptr null, ptr @rockchip_pdm_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.18, i64 68719477828, i32 8190, i32 0, i32 0, i32 2, i32 8, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@rockchip_pdm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 633, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not register dai: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rockchip_pdm_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sound/soc/rockchip/rockchip_pdm.c\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rockchip_pdm_probe._entry_ptr = internal global ptr @rockchip_pdm_probe._entry, section ".printk_index", align 4
@rockchip_pdm_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 645, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not register pcm: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rockchip_pdm_probe._entry_ptr.12 = internal global ptr @rockchip_pdm_probe._entry.10, section ".printk_index", align 4
@rockchip_pdm_reg_defaults = internal constant { [4 x %struct.reg_default], [32 x i8] } { [4 x %struct.reg_default] [%struct.reg_default { i32 4, i32 2013265943 }, %struct.reg_default { i32 8, i32 196668000 }, %struct.reg_default { i32 12, i32 58369 }, %struct.reg_default { i32 24, i32 31 }], [32 x i8] zeroinitializer }, align 32
@rockchip_pdm_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.7, i32 427, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"clock enable failed %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rockchip_pdm_runtime_resume\00", [36 x i8] zeroinitializer }, align 32
@rockchip_pdm_runtime_resume._entry_ptr = internal global ptr @rockchip_pdm_runtime_resume._entry, section ".printk_index", align 4
@rockchip_pdm_runtime_resume._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.7, i32 433, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hclock enable failed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@rockchip_pdm_runtime_resume._entry_ptr.17 = internal global ptr @rockchip_pdm_runtime_resume._entry.15, section ".printk_index", align 4
@rockchip_pdm_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @rockchip_pdm_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_pdm_hw_params, ptr null, ptr null, ptr @rockchip_pdm_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@rockchip_pdm_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.7, i32 306, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid channel: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rockchip_pdm_hw_params\00", [41 x i8] zeroinitializer }, align 32
@rockchip_pdm_hw_params._entry_ptr = internal global ptr @rockchip_pdm_hw_params._entry, section ".printk_index", align 4
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rockchip,path-map\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.22 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 20, i64 32, i64 36, i64 48]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 1024000, i64 1411200, i64 1536000]
@__sancov_gen_cov_switch_values.25 = internal global [17 x i64] [i64 15, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 64000, i64 88200, i64 96000, i64 128000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.26 = internal global [14 x i64] [i64 12, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 64000, i64 88200, i64 96000]
@__sancov_gen_cov_switch_values.27 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 6, i64 10, i64 36]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.29 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.30 = private unnamed_addr constant [20 x i8] c"rockchip_pdm_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 711, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 715, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"rockchip_pdm_match\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 526, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c"rockchip_pdm_pm_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 705, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 588, i32 51 }
@___asan_gen_.45 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [27 x i8] c"rockchip_pdm_regmap_config\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 512, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 597, i32 16 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 609, i32 38 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 613, i32 39 }
@___asan_gen_.60 = private unnamed_addr constant [23 x i8] c"rockchip_pdm_component\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 406, i32 46 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"rockchip_pdm_dai\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 393, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 633, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 645, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [26 x i8] c"rockchip_pdm_reg_defaults\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 505, i32 33 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 427, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 433, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [21 x i8] c"rockchip_pdm_dai_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 381, i32 37 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 396, i32 18 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 305, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private constant [37 x i8] c"../sound/soc/rockchip/rockchip_pdm.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 548, i32 41 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_rockchip_pdm_driver_exit, ptr @__initcall__kmod_snd_soc_rockchip_pdm__241_721_rockchip_pdm_driver_init6, ptr @rockchip_pdm_driver_exit, ptr @rockchip_pdm_hw_params._entry, ptr @rockchip_pdm_hw_params._entry_ptr, ptr @rockchip_pdm_probe._entry, ptr @rockchip_pdm_probe._entry.10, ptr @rockchip_pdm_probe._entry_ptr, ptr @rockchip_pdm_probe._entry_ptr.12, ptr @rockchip_pdm_runtime_resume._entry, ptr @rockchip_pdm_runtime_resume._entry.15, ptr @rockchip_pdm_runtime_resume._entry_ptr, ptr @rockchip_pdm_runtime_resume._entry_ptr.17, ptr @rockchip_pdm_driver, ptr @.str, ptr @rockchip_pdm_match, ptr @rockchip_pdm_pm_ops, ptr @.str.1, ptr @rockchip_pdm_probe._key, ptr @rockchip_pdm_regmap_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rockchip_pdm_component, ptr @rockchip_pdm_dai, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @rockchip_pdm_reg_defaults, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @rockchip_pdm_dai_ops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pdm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pdm_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pdm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pdm_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pdm_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pdm_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pdm_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pdm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pdm_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pdm_reg_defaults to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pdm_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pdm_runtime_resume._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pdm_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pdm_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pdm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_pdm_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_pdm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_pdm_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pdm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #9
  %2 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !80
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 60, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_match_device(ptr noundef nonnull @rockchip_pdm_match, ptr noundef %dev) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.of_device_id, ptr %call3, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %4 to i32
  %version = getelementptr inbounds %struct.rk_pdm_dev, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %version, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %version7 = getelementptr inbounds %struct.rk_pdm_dev, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %version7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %version7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then8, label %if.end6.if.end17_crit_edge

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then8:                                         ; preds = %if.end6
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %reset = getelementptr inbounds %struct.rk_pdm_dev, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i, ptr %reset, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.then8.if.end17_crit_edge

if.then8.if.end17_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end17:                                         ; preds = %if.then8.if.end17_crit_edge, %if.end6.if.end17_crit_edge
  %call18 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #9
  %cmp.i154 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %call24 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call18, ptr noundef nonnull @rockchip_pdm_regmap_config, ptr noundef nonnull @rockchip_pdm_probe._key, ptr noundef nonnull @.str.2) #9
  %regmap = getelementptr inbounds %struct.rk_pdm_dev, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call24, ptr %regmap, align 4
  %cmp.i155 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end22
  %14 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %res, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add = add i32 %17, 48
  %capture_dma_data = getelementptr inbounds %struct.rk_pdm_dev, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %capture_dma_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %capture_dma_data, align 4
  %addr_width = getelementptr inbounds %struct.rk_pdm_dev, ptr %call.i, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %addr_width to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %addr_width, align 4
  %maxburst = getelementptr inbounds %struct.rk_pdm_dev, ptr %call.i, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %maxburst, align 4
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %22 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call37 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  %clk = getelementptr inbounds %struct.rk_pdm_dev, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call37, ptr %clk, align 4
  %cmp.i156 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i156, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %call37 to i32
  br label %cleanup

if.end43:                                         ; preds = %if.end30
  %call45 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.4) #9
  %hclk = getelementptr inbounds %struct.rk_pdm_dev, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %hclk to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call45, ptr %hclk, align 4
  %cmp.i157 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i157, label %if.then48, label %if.end51

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %call45 to i32
  br label %cleanup

if.end51:                                         ; preds = %if.end43
  %call.i158 = call i32 @clk_prepare(ptr noundef %call45) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %tobool.not.i = icmp eq i32 %call.i158, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end51
  %call1.i = call i32 @clk_enable(ptr noundef %call45) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end56, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_unprepare(ptr noundef %call45) #9
  br label %cleanup

if.end56:                                         ; preds = %if.end.i
  call void @pm_runtime_enable(ptr noundef %dev) #9
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %27 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i159 = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i159, label %if.end56.if.end66_crit_edge, label %if.then60

if.end56.if.end66_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then60:                                        ; preds = %if.end56
  %call62 = call i32 @rockchip_pdm_runtime_resume(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then60.if.end66_crit_edge, label %if.then60.err_pm_disable_crit_edge

if.then60.err_pm_disable_crit_edge:               ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pm_disable

if.then60.if.end66_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.end66:                                         ; preds = %if.then60.if.end66_crit_edge, %if.end56.if.end66_crit_edge
  %call68 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @rockchip_pdm_component, ptr noundef nonnull @rockchip_pdm_dai, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end72, label %do.end

do.end:                                           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %call68) #12
  br label %err_suspend

if.end72:                                         ; preds = %if.end66
  call fastcc void @rockchip_pdm_rxctrl(ptr noundef nonnull %call.i, i32 noundef 0)
  %call73 = call fastcc i32 @rockchip_pdm_path_parse(ptr noundef nonnull %call.i, ptr noundef %1)
  %28 = zext i32 %call73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call73, label %if.end72.err_suspend_crit_edge [
    i32 0, label %if.end72.if.end77_crit_edge
    i32 -2, label %if.end72.if.end77_crit_edge163
  ]

if.end72.if.end77_crit_edge163:                   ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.end72.if.end77_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.end72.err_suspend_crit_edge:                   ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_suspend

if.end77:                                         ; preds = %if.end72.if.end77_crit_edge, %if.end72.if.end77_crit_edge163
  %call79 = call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end77.cleanup_crit_edge, label %do.end84

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end84:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call79) #12
  br label %err_suspend

err_suspend:                                      ; preds = %do.end84, %if.end72.err_suspend_crit_edge, %do.end
  %ret.0 = phi i32 [ %call68, %do.end ], [ %call79, %do.end84 ], [ %call73, %if.end72.err_suspend_crit_edge ]
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %29 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp.i160 = icmp eq i32 %30, 2
  br i1 %cmp.i160, label %err_suspend.err_pm_disable_crit_edge, label %if.then89

err_suspend.err_pm_disable_crit_edge:             ; preds = %err_suspend
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pm_disable

if.then89:                                        ; preds = %err_suspend
  call void @__sanitizer_cov_trace_pc() #11
  %call91 = call i32 @rockchip_pdm_runtime_suspend(ptr noundef %dev)
  br label %err_pm_disable

err_pm_disable:                                   ; preds = %if.then89, %err_suspend.err_pm_disable_crit_edge, %if.then60.err_pm_disable_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_suspend.err_pm_disable_crit_edge ], [ %ret.0, %if.then89 ], [ %call62, %if.then60.err_pm_disable_crit_edge ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %31 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hclk, align 4
  call void @clk_disable(ptr noundef %32) #9
  call void @clk_unprepare(ptr noundef %32) #9
  br label %cleanup

cleanup:                                          ; preds = %err_pm_disable, %if.end77.cleanup_crit_edge, %if.then3.i, %if.end51.cleanup_crit_edge, %if.then48, %if.then40, %if.then27, %if.then20, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then13 ], [ %11, %if.then20 ], [ %13, %if.then27 ], [ %24, %if.then40 ], [ %26, %if.then48 ], [ %ret.1, %err_pm_disable ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end77.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i158, %if.end51.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pdm_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %clk.i = getelementptr inbounds %struct.rk_pdm_dev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  %hclk.i = getelementptr inbounds %struct.rk_pdm_dev, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %hclk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hclk.i, align 4
  tail call void @clk_disable(ptr noundef %9) #9
  tail call void @clk_unprepare(ptr noundef %9) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clk = getelementptr inbounds %struct.rk_pdm_dev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %11) #9
  tail call void @clk_unprepare(ptr noundef %11) #9
  %hclk = getelementptr inbounds %struct.rk_pdm_dev, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hclk, align 4
  tail call void @clk_disable(ptr noundef %13) #9
  tail call void @clk_unprepare(ptr noundef %13) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pdm_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.rk_pdm_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i.ph) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %hclk = getelementptr inbounds %struct.rk_pdm_dev, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hclk, align 4
  %call.i20 = tail call i32 @clk_prepare(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool.not.i21 = icmp eq i32 %call.i20, 0
  br i1 %tobool.not.i21, label %if.end.i24, label %if.end.do.end8_crit_edge

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.end.i24:                                       ; preds = %if.end
  %call1.i22 = tail call i32 @clk_enable(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool2.not.i23 = icmp eq i32 %call1.i22, 0
  br i1 %tobool2.not.i23, label %if.end.i24.cleanup_crit_edge, label %if.then3.i25

if.end.i24.cleanup_crit_edge:                     ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i25:                                     ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %7) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then3.i25, %if.end.do.end8_crit_edge
  %retval.0.i26.ph = phi i32 [ %call1.i22, %if.then3.i25 ], [ %call.i20, %if.end.do.end8_crit_edge ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i26.ph) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %if.end.i24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i26.ph, %do.end8 ], [ 0, %if.end.i24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rockchip_pdm_rxctrl(ptr nocapture noundef readonly %pdm, i32 noundef %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %regmap3 = getelementptr inbounds %struct.rk_pdm_dev, ptr %pdm, i32 0, i32 3
  %0 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap3, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 24, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %2 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap3, align 4
  %call.i10 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i11 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 24, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %4 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap3, align 4
  %call.i12 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 5, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_pdm_path_parse(ptr nocapture noundef readonly %pdm, ptr noundef %node) unnamed_addr #2 align 64 {
entry:
  %path = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %path) #9
  %0 = getelementptr inbounds [4 x i32], ptr %path, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %path, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %path, i32 0, i32 3
  %3 = call ptr @memset(ptr %path, i32 255, i32 16)
  %call = tail call i32 @of_count_phandle_with_args(ptr noundef %node, ptr noundef nonnull @.str.21, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp.not = icmp eq i32 %call, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.21, ptr noundef nonnull %path, i32 noundef 4, i32 noundef 0) #9
  %4 = call i32 @llvm.smin.i32(i32 %call.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %for.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %5 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp5 = icmp ugt i32 %6, 3
  br i1 %cmp5, label %for.body.preheader.cleanup_crit_edge, label %if.end7

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %for.body.preheader
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp5.1 = icmp ugt i32 %8, 3
  br i1 %cmp5.1, label %if.end7.cleanup_crit_edge, label %if.end7.1

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.1:                                        ; preds = %if.end7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp5.2 = icmp ugt i32 %10, 3
  br i1 %cmp5.2, label %if.end7.1.cleanup_crit_edge, label %if.end7.2

if.end7.1.cleanup_crit_edge:                      ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.2:                                        ; preds = %if.end7.1
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp5.3 = icmp ugt i32 %12, 3
  br i1 %cmp5.3, label %if.end7.2.cleanup_crit_edge, label %if.end7.3

if.end7.2.cleanup_crit_edge:                      ; preds = %if.end7.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.3:                                        ; preds = %if.end7.2
  call void @__sanitizer_cov_trace_pc() #11
  %shl11.2 = shl nuw nsw i32 %10, 12
  %shl11.1 = shl nuw nsw i32 %8, 10
  %shl11 = shl nuw nsw i32 %6, 8
  %or12.1 = or i32 %shl11.1, %shl11
  %or12.2 = or i32 %shl11.2, %or12.1
  %shl11.3 = shl nuw nsw i32 %12, 14
  %or12.3 = or i32 %shl11.3, %or12.2
  %regmap = getelementptr inbounds %struct.rk_pdm_dev, ptr %pdm, i32 0, i32 3
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i31 = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 12, i32 noundef 65280, i32 noundef %or12.3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7.3, %if.end7.2.cleanup_crit_edge, %if.end7.1.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7.3 ], [ %call, %entry.cleanup_crit_edge ], [ %4, %if.end.cleanup_crit_edge ], [ -22, %if.end7.2.cleanup_crit_edge ], [ -22, %if.end7.1.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %for.body.preheader.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %path) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pdm_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.rk_pdm_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  %hclk = getelementptr inbounds %struct.rk_pdm_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hclk, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rockchip_pdm_wr_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.fshl.i32(i32 %reg, i32 %reg, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %0)
  %1 = icmp ult i32 %0, 22
  %switch.cast = trunc i32 %0 to i22
  %switch.downshift = lshr i22 -2096641, %switch.cast
  %2 = and i22 %switch.downshift, 1
  %switch.masked = icmp ne i22 %2, 0
  %retval.0 = select i1 %1, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rockchip_pdm_rd_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.fshl.i32(i32 %reg, i32 %reg, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %0)
  %1 = icmp ult i32 %0, 23
  %switch.cast = trunc i32 %0 to i23
  %switch.downshift = lshr i23 -2092033, %switch.cast
  %2 = and i23 %switch.downshift, 1
  %switch.masked = icmp ne i23 %2, 0
  %retval.0 = select i1 %1, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rockchip_pdm_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 20, label %entry.return_crit_edge1
    i32 32, label %entry.return_crit_edge2
    i32 36, label %entry.return_crit_edge3
    i32 48, label %entry.return_crit_edge4
  ]

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rockchip_pdm_precious_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %reg)
  %cond = icmp eq i32 %reg, 48
  ret i1 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rockchip_pdm_dai_probe(ptr nocapture noundef %dai) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %capture_dma_data = getelementptr inbounds %struct.rk_pdm_dev, ptr %3, i32 0, i32 4
  %capture_dma_data1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %4 = ptrtoint ptr %capture_dma_data1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %capture_dma_data, ptr %capture_dma_data1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pdm_set_fmt(ptr nocapture noundef readonly %cpu_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %and = and i32 %fmt, 3840
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 768, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 8, %sw.bb1 ], [ %and, %entry.sw.epilog_crit_edge ]
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  %regmap = getelementptr inbounds %struct.rk_pdm_dev, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i10 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 12, i32 noundef 8, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 4
  %call.i11 = tail call i32 @__pm_runtime_idle(ptr noundef %8, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pdm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %change = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #9
  %4 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %m, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #9
  %5 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %n, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %change) #9
  %6 = ptrtoint ptr %change to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %change, align 1, !annotation !80
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %7 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %for.cond.preheader.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end
  %clk12.i = getelementptr inbounds %struct.rk_pdm_dev, ptr %3, i32 0, i32 1
  %.frozen = freeze i32 %10
  %div7.3.i = udiv i32 %.frozen, 8000
  %11 = mul i32 %div7.3.i, 8000
  %rem.i.decomposed = sub i32 %.frozen, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool2.not.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %for.cond.preheader.i.for.inc.i_crit_edge

for.cond.preheader.i.for.inc.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end4.i:                                        ; preds = %for.cond.preheader.i
  %div7.i = udiv i32 %10, 8000
  %12 = tail call i32 @llvm.ctpop.i32(i32 %div7.i) #9, !range !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp8.i = icmp ult i32 %12, 2
  br i1 %cmp8.i, label %if.then9.i, label %if.end4.i.for.inc.i_crit_edge

if.end4.i.for.inc.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then9.i:                                       ; preds = %if.end4.i
  %13 = ptrtoint ptr %clk12.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk12.i, align 4
  %call.i = tail call i32 @clk_round_rate(ptr noundef %14, i32 noundef 40960000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 40960000, i32 %call.i)
  %cmp17.not.i = icmp eq i32 %call.i, 40960000
  br i1 %cmp17.not.i, label %if.then9.i.if.end4_crit_edge, label %if.then9.i.for.inc.i_crit_edge

if.then9.i.for.inc.i_crit_edge:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then9.i.if.end4_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

for.inc.i:                                        ; preds = %if.then9.i.for.inc.i_crit_edge, %if.end4.i.for.inc.i_crit_edge, %for.cond.preheader.i.for.inc.i_crit_edge
  %clk_out.0 = phi i32 [ 2048000, %if.then9.i.for.inc.i_crit_edge ], [ 0, %if.end4.i.for.inc.i_crit_edge ], [ 0, %for.cond.preheader.i.for.inc.i_crit_edge ]
  %.frozen175 = freeze i32 %10
  %div7.1.i = udiv i32 %.frozen175, 11025
  %15 = mul i32 %div7.1.i, 11025
  %rem.1.i.decomposed = sub i32 %.frozen175, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.1.i.decomposed)
  %tobool2.not.1.i = icmp eq i32 %rem.1.i.decomposed, 0
  %16 = tail call i32 @llvm.ctpop.i32(i32 %div7.1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp8.1.i = icmp ult i32 %16, 2
  %or.cond = and i1 %tobool2.not.1.i, %cmp8.1.i
  br i1 %or.cond, label %if.then9.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

if.then9.1.i:                                     ; preds = %for.inc.i
  %17 = ptrtoint ptr %clk12.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk12.i, align 4
  %call.1.i = tail call i32 @clk_round_rate(ptr noundef %18, i32 noundef 56448000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 56448000, i32 %call.1.i)
  %cmp17.not.1.i = icmp eq i32 %call.1.i, 56448000
  br i1 %cmp17.not.1.i, label %if.then9.1.i.if.end4_crit_edge, label %if.then9.1.i.for.inc.1.i_crit_edge

if.then9.1.i.for.inc.1.i_crit_edge:               ; preds = %if.then9.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

if.then9.1.i.if.end4_crit_edge:                   ; preds = %if.then9.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

for.inc.1.i:                                      ; preds = %if.then9.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %clk_out.1 = phi i32 [ 2822400, %if.then9.1.i.for.inc.1.i_crit_edge ], [ %clk_out.0, %for.inc.i.for.inc.1.i_crit_edge ]
  %.frozen176 = freeze i32 %10
  %div7.4.i = udiv i32 %.frozen176, 12000
  %19 = mul i32 %div7.4.i, 12000
  %rem.2.i.decomposed = sub i32 %.frozen176, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.2.i.decomposed)
  %tobool2.not.2.i = icmp eq i32 %rem.2.i.decomposed, 0
  br i1 %tobool2.not.2.i, label %if.end4.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

if.end4.2.i:                                      ; preds = %for.inc.1.i
  %div7.2.i = udiv i32 %10, 12000
  %20 = tail call i32 @llvm.ctpop.i32(i32 %div7.2.i) #9, !range !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp8.2.i = icmp ult i32 %20, 2
  br i1 %cmp8.2.i, label %if.then9.2.i, label %if.end4.2.i.for.inc.2.i_crit_edge

if.end4.2.i.for.inc.2.i_crit_edge:                ; preds = %if.end4.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

if.then9.2.i:                                     ; preds = %if.end4.2.i
  %21 = ptrtoint ptr %clk12.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk12.i, align 4
  %call.2.i = tail call i32 @clk_round_rate(ptr noundef %22, i32 noundef 61440000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 61440000, i32 %call.2.i)
  %cmp17.not.2.i = icmp eq i32 %call.2.i, 61440000
  br i1 %cmp17.not.2.i, label %if.then9.2.i.if.end4_crit_edge, label %if.then9.2.i.for.inc.2.i_crit_edge

if.then9.2.i.for.inc.2.i_crit_edge:               ; preds = %if.then9.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

if.then9.2.i.if.end4_crit_edge:                   ; preds = %if.then9.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

for.inc.2.i:                                      ; preds = %if.then9.2.i.for.inc.2.i_crit_edge, %if.end4.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %clk_out.2 = phi i32 [ 3072000, %if.then9.2.i.for.inc.2.i_crit_edge ], [ %clk_out.1, %if.end4.2.i.for.inc.2.i_crit_edge ], [ %clk_out.1, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %23 = tail call i32 @llvm.ctpop.i32(i32 %div7.3.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp8.3.i = icmp ult i32 %23, 2
  %or.cond177 = and i1 %tobool2.not.i, %cmp8.3.i
  br i1 %or.cond177, label %if.then9.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3.i

if.then9.3.i:                                     ; preds = %for.inc.2.i
  %24 = ptrtoint ptr %clk12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk12.i, align 4
  %call.3.i = tail call i32 @clk_round_rate(ptr noundef %25, i32 noundef 98304000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 98304000, i32 %call.3.i)
  %cmp17.not.3.i = icmp eq i32 %call.3.i, 98304000
  br i1 %cmp17.not.3.i, label %if.then9.3.i.if.end4_crit_edge, label %if.then9.3.i.for.inc.3.i_crit_edge

if.then9.3.i.for.inc.3.i_crit_edge:               ; preds = %if.then9.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3.i

if.then9.3.i.if.end4_crit_edge:                   ; preds = %if.then9.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

for.inc.3.i:                                      ; preds = %if.then9.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %clk_out.3 = phi i32 [ 2048000, %if.then9.3.i.for.inc.3.i_crit_edge ], [ %clk_out.2, %for.inc.2.i.for.inc.3.i_crit_edge ]
  %26 = tail call i32 @llvm.ctpop.i32(i32 %div7.4.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp8.4.i = icmp ult i32 %26, 2
  %or.cond178 = and i1 %tobool2.not.2.i, %cmp8.4.i
  br i1 %or.cond178, label %if.then9.4.i, label %for.inc.3.i.get_pdm_clk.exit_crit_edge

for.inc.3.i.get_pdm_clk.exit_crit_edge:           ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pdm_clk.exit

if.then9.4.i:                                     ; preds = %for.inc.3.i
  %27 = ptrtoint ptr %clk12.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk12.i, align 4
  %call.4.i = tail call i32 @clk_round_rate(ptr noundef %28, i32 noundef 98304000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 98304000, i32 %call.4.i)
  %cmp17.not.4.i = icmp eq i32 %call.4.i, 98304000
  br i1 %cmp17.not.4.i, label %if.then9.4.i.if.end4_crit_edge, label %if.then9.4.i.get_pdm_clk.exit_crit_edge

if.then9.4.i.get_pdm_clk.exit_crit_edge:          ; preds = %if.then9.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pdm_clk.exit

if.then9.4.i.if.end4_crit_edge:                   ; preds = %if.then9.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

get_pdm_clk.exit:                                 ; preds = %if.then9.4.i.get_pdm_clk.exit_crit_edge, %for.inc.3.i.get_pdm_clk.exit_crit_edge
  %clk_out.4 = phi i32 [ 3072000, %if.then9.4.i.get_pdm_clk.exit_crit_edge ], [ %clk_out.3, %for.inc.3.i.get_pdm_clk.exit_crit_edge ]
  %29 = ptrtoint ptr %clk12.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk12.i, align 4
  %call28.i = tail call i32 @clk_round_rate(ptr noundef %30, i32 noundef 100000000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool.not = icmp eq i32 %call28.i, 0
  br i1 %tobool.not, label %get_pdm_clk.exit.cleanup_crit_edge, label %get_pdm_clk.exit.if.end4_crit_edge

get_pdm_clk.exit.if.end4_crit_edge:               ; preds = %get_pdm_clk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

get_pdm_clk.exit.cleanup_crit_edge:               ; preds = %get_pdm_clk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %get_pdm_clk.exit.if.end4_crit_edge, %if.then9.4.i.if.end4_crit_edge, %if.then9.3.i.if.end4_crit_edge, %if.then9.2.i.if.end4_crit_edge, %if.then9.1.i.if.end4_crit_edge, %if.then9.i.if.end4_crit_edge
  %clk_out.6165 = phi i32 [ %clk_out.4, %get_pdm_clk.exit.if.end4_crit_edge ], [ 3072000, %if.then9.4.i.if.end4_crit_edge ], [ 2048000, %if.then9.3.i.if.end4_crit_edge ], [ 3072000, %if.then9.2.i.if.end4_crit_edge ], [ 2822400, %if.then9.1.i.if.end4_crit_edge ], [ 2048000, %if.then9.i.if.end4_crit_edge ]
  %clk_src.0164 = phi i32 [ %call28.i, %get_pdm_clk.exit.if.end4_crit_edge ], [ 98304000, %if.then9.4.i.if.end4_crit_edge ], [ 98304000, %if.then9.3.i.if.end4_crit_edge ], [ 61440000, %if.then9.2.i.if.end4_crit_edge ], [ 56448000, %if.then9.1.i.if.end4_crit_edge ], [ 40960000, %if.then9.i.if.end4_crit_edge ]
  %31 = ptrtoint ptr %clk12.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk12.i, align 4
  %call5 = tail call i32 @clk_set_rate(ptr noundef %32, i32 noundef %clk_src.0164) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %version = getelementptr inbounds %struct.rk_pdm_dev, ptr %3, i32 0, i32 6
  %33 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %version, align 4
  %.off = add i32 %34, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then12, label %if.end8.if.else41_crit_edge

if.end8.if.else41_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else41

if.then12:                                        ; preds = %if.end8
  call void @rational_best_approximation(i32 noundef %clk_out.6165, i32 noundef %clk_src.0164, i32 noundef 65535, i32 noundef 65535, ptr noundef nonnull %m, ptr noundef nonnull %n) #9
  %35 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %m, align 4
  %shl = shl i32 %36, 16
  %37 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n, align 4
  %or = or i32 %shl, %38
  %regmap = getelementptr inbounds %struct.rk_pdm_dev, ptr %3, i32 0, i32 3
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call.i137 = call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 8, i32 noundef -1, i32 noundef %or, ptr noundef nonnull %change, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %41 = ptrtoint ptr %change to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %change, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool15.not = icmp eq i8 %42, 0
  br i1 %tobool15.not, label %if.then12.if.end20_crit_edge, label %if.then16

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %reset = getelementptr inbounds %struct.rk_pdm_dev, ptr %3, i32 0, i32 5
  %43 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reset, align 4
  %call17 = call i32 @reset_control_assert(ptr noundef %44) #9
  %45 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reset, align 4
  %call19 = call i32 @reset_control_deassert(ptr noundef %46) #9
  %47 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap, align 4
  %call.i11.i = call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 24, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %call.i12.i = call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 0, i32 noundef 5, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.then12.if.end20_crit_edge
  %51 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n, align 4
  %53 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %m, align 4
  %div = udiv i32 %52, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %div)
  %cmp21 = icmp ugt i32 %div, 39
  br i1 %cmp21, label %if.end20.if.end30_crit_edge, label %if.else

if.end20.if.end30_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %div)
  %cmp23 = icmp ult i32 %div, 36
  br i1 %cmp23, label %if.else.if.end30_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.end30:                                         ; preds = %if.else.if.end30_crit_edge, %if.end20.if.end30_crit_edge
  %val.0 = phi i32 [ 0, %if.end20.if.end30_crit_edge ], [ 64, %if.else.if.end30_crit_edge ]
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 4
  %call.i138 = call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 12, i32 noundef 64, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %57 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp32 = icmp eq i32 %.pr, 2
  br i1 %cmp32, label %if.then33, label %if.end30.if.else41_crit_edge

if.end30.if.else41_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else41

if.then33:                                        ; preds = %if.end30
  %58 = zext i32 %clk_out.6165 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %clk_out.6165, label %if.then33.get_pdm_cic_ratio.exit_crit_edge [
    i32 1536000, label %if.then33.sw.bb2.i_crit_edge
    i32 1411200, label %if.then33.sw.bb2.i_crit_edge179
    i32 1024000, label %if.then33.sw.bb2.i_crit_edge180
  ]

if.then33.sw.bb2.i_crit_edge180:                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

if.then33.sw.bb2.i_crit_edge179:                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

if.then33.sw.bb2.i_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

if.then33.get_pdm_cic_ratio.exit_crit_edge:       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pdm_cic_ratio.exit

sw.bb2.i:                                         ; preds = %if.then33.sw.bb2.i_crit_edge, %if.then33.sw.bb2.i_crit_edge179, %if.then33.sw.bb2.i_crit_edge180
  br label %get_pdm_cic_ratio.exit

get_pdm_cic_ratio.exit:                           ; preds = %sw.bb2.i, %if.then33.get_pdm_cic_ratio.exit_crit_edge
  %retval.0.i139 = phi i32 [ 2, %sw.bb2.i ], [ 1, %if.then33.get_pdm_cic_ratio.exit_crit_edge ]
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap, align 4
  %call.i140 = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 12, i32 noundef 3, i32 noundef %retval.0.i139, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %61 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %10, label %sw.default.i143 [
    i32 8000, label %get_pdm_cic_ratio.exit.samplerate_to_bit.exit_crit_edge
    i32 11025, label %get_pdm_cic_ratio.exit.samplerate_to_bit.exit_crit_edge181
    i32 12000, label %get_pdm_cic_ratio.exit.samplerate_to_bit.exit_crit_edge182
    i32 16000, label %get_pdm_cic_ratio.exit.sw.bb1.i141_crit_edge
    i32 22050, label %get_pdm_cic_ratio.exit.sw.bb1.i141_crit_edge183
    i32 24000, label %get_pdm_cic_ratio.exit.sw.bb1.i141_crit_edge184
    i32 32000, label %sw.bb2.i142
    i32 44100, label %get_pdm_cic_ratio.exit.sw.bb3.i_crit_edge
    i32 48000, label %get_pdm_cic_ratio.exit.sw.bb3.i_crit_edge185
    i32 64000, label %get_pdm_cic_ratio.exit.sw.bb4.i_crit_edge
    i32 88200, label %get_pdm_cic_ratio.exit.sw.bb4.i_crit_edge186
    i32 96000, label %get_pdm_cic_ratio.exit.sw.bb4.i_crit_edge187
    i32 128000, label %get_pdm_cic_ratio.exit.sw.bb5.i_crit_edge
    i32 176400, label %get_pdm_cic_ratio.exit.sw.bb5.i_crit_edge188
    i32 192000, label %get_pdm_cic_ratio.exit.sw.bb5.i_crit_edge189
  ]

get_pdm_cic_ratio.exit.sw.bb5.i_crit_edge189:     ; preds = %get_pdm_cic_ratio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i

get_pdm_cic_ratio.exit.sw.bb5.i_crit_edge188:     ; preds = %get_pdm_cic_ratio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i

get_pdm_cic_ratio.exit.sw.bb5.i_crit_edge:        ; preds = %get_pdm_cic_ratio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i

get_pdm_cic_ratio.exit.sw.bb4.i_crit_edge187:     ; preds = %get_pdm_cic_ratio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4.i

get_pdm_cic_ratio.exit.sw.bb4.i_crit_edge186:     ; preds = %get_pdm_cic_ratio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4.i

get_pdm_cic_ratio.exit.sw.bb4.i_crit_edge:        ; preds = %get_pdm_cic_ratio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4.i

get_pdm_cic_ratio.exit.sw.bb3.i_crit_edge185:     ; preds = %get_pdm_cic_ratio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

get_pdm_cic_ratio.exit.sw.bb3.i_crit_edge:        ; preds = %get_pdm_cic_ratio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

get_pdm_cic_ratio.exit.sw.bb1.i141_crit_edge184:  ; preds = %get_pdm_cic_ratio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i141

get_pdm_cic_ratio.exit.sw.bb1.i141_crit_edge183:  ; preds = %get_pdm_cic_ratio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i141

get_pdm_cic_ratio.exit.sw.bb1.i141_crit_edge:     ; preds = %get_pdm_cic_ratio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i141

get_pdm_cic_ratio.exit.samplerate_to_bit.exit_crit_edge182: ; preds = %get_pdm_cic_ratio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %samplerate_to_bit.exit

get_pdm_cic_ratio.exit.samplerate_to_bit.exit_crit_edge181: ; preds = %get_pdm_cic_ratio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %samplerate_to_bit.exit

get_pdm_cic_ratio.exit.samplerate_to_bit.exit_crit_edge: ; preds = %get_pdm_cic_ratio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %samplerate_to_bit.exit

sw.bb1.i141:                                      ; preds = %get_pdm_cic_ratio.exit.sw.bb1.i141_crit_edge, %get_pdm_cic_ratio.exit.sw.bb1.i141_crit_edge183, %get_pdm_cic_ratio.exit.sw.bb1.i141_crit_edge184
  br label %samplerate_to_bit.exit

sw.bb2.i142:                                      ; preds = %get_pdm_cic_ratio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %samplerate_to_bit.exit

sw.bb3.i:                                         ; preds = %get_pdm_cic_ratio.exit.sw.bb3.i_crit_edge, %get_pdm_cic_ratio.exit.sw.bb3.i_crit_edge185
  br label %samplerate_to_bit.exit

sw.bb4.i:                                         ; preds = %get_pdm_cic_ratio.exit.sw.bb4.i_crit_edge, %get_pdm_cic_ratio.exit.sw.bb4.i_crit_edge186, %get_pdm_cic_ratio.exit.sw.bb4.i_crit_edge187
  br label %samplerate_to_bit.exit

sw.bb5.i:                                         ; preds = %get_pdm_cic_ratio.exit.sw.bb5.i_crit_edge, %get_pdm_cic_ratio.exit.sw.bb5.i_crit_edge188, %get_pdm_cic_ratio.exit.sw.bb5.i_crit_edge189
  br label %samplerate_to_bit.exit

sw.default.i143:                                  ; preds = %get_pdm_cic_ratio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %samplerate_to_bit.exit

samplerate_to_bit.exit:                           ; preds = %sw.default.i143, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i142, %sw.bb1.i141, %get_pdm_cic_ratio.exit.samplerate_to_bit.exit_crit_edge, %get_pdm_cic_ratio.exit.samplerate_to_bit.exit_crit_edge181, %get_pdm_cic_ratio.exit.samplerate_to_bit.exit_crit_edge182
  %retval.0.i144 = phi i32 [ 32, %sw.default.i143 ], [ 160, %sw.bb5.i ], [ 128, %sw.bb4.i ], [ 96, %sw.bb3.i ], [ 64, %sw.bb2.i142 ], [ 32, %sw.bb1.i141 ], [ 0, %get_pdm_cic_ratio.exit.samplerate_to_bit.exit_crit_edge ], [ 0, %get_pdm_cic_ratio.exit.samplerate_to_bit.exit_crit_edge181 ], [ 0, %get_pdm_cic_ratio.exit.samplerate_to_bit.exit_crit_edge182 ]
  %62 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap, align 4
  %call.i145 = call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 4, i32 noundef 224, i32 noundef %retval.0.i144, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end45

if.else41:                                        ; preds = %if.end30.if.else41_crit_edge, %if.end8.if.else41_crit_edge
  %64 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %10, label %if.else41.get_pdm_ds_ratio.exit_crit_edge [
    i32 8000, label %if.then3.14.i
    i32 96000, label %cleanup.fold.split.i
    i32 88200, label %cleanup.fold.split39.i
    i32 64000, label %cleanup.fold.split40.i
    i32 48000, label %cleanup.fold.split41.i
    i32 44100, label %cleanup.fold.split42.i
    i32 32000, label %cleanup.fold.split43.i
    i32 24000, label %cleanup.fold.split44.i
    i32 22050, label %cleanup.fold.split45.i
    i32 16000, label %cleanup.fold.split46.i
    i32 12000, label %cleanup.fold.split47.i
    i32 11025, label %cleanup.fold.split48.i
  ]

if.else41.get_pdm_ds_ratio.exit_crit_edge:        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pdm_ds_ratio.exit

if.then3.14.i:                                    ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pdm_ds_ratio.exit

cleanup.fold.split.i:                             ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pdm_ds_ratio.exit

cleanup.fold.split39.i:                           ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pdm_ds_ratio.exit

cleanup.fold.split40.i:                           ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pdm_ds_ratio.exit

cleanup.fold.split41.i:                           ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pdm_ds_ratio.exit

cleanup.fold.split42.i:                           ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pdm_ds_ratio.exit

cleanup.fold.split43.i:                           ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pdm_ds_ratio.exit

cleanup.fold.split44.i:                           ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pdm_ds_ratio.exit

cleanup.fold.split45.i:                           ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pdm_ds_ratio.exit

cleanup.fold.split46.i:                           ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pdm_ds_ratio.exit

cleanup.fold.split47.i:                           ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pdm_ds_ratio.exit

cleanup.fold.split48.i:                           ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_pdm_ds_ratio.exit

get_pdm_ds_ratio.exit:                            ; preds = %cleanup.fold.split48.i, %cleanup.fold.split47.i, %cleanup.fold.split46.i, %cleanup.fold.split45.i, %cleanup.fold.split44.i, %cleanup.fold.split43.i, %cleanup.fold.split42.i, %cleanup.fold.split41.i, %cleanup.fold.split40.i, %cleanup.fold.split39.i, %cleanup.fold.split.i, %if.then3.14.i, %if.else41.get_pdm_ds_ratio.exit_crit_edge
  %retval.0.i146 = phi i32 [ 4, %if.then3.14.i ], [ 1, %cleanup.fold.split.i ], [ 1, %cleanup.fold.split39.i ], [ 1, %cleanup.fold.split40.i ], [ 2, %cleanup.fold.split41.i ], [ 2, %cleanup.fold.split42.i ], [ 2, %cleanup.fold.split43.i ], [ 3, %cleanup.fold.split44.i ], [ 3, %cleanup.fold.split45.i ], [ 3, %cleanup.fold.split46.i ], [ 4, %cleanup.fold.split47.i ], [ 4, %cleanup.fold.split48.i ], [ 0, %if.else41.get_pdm_ds_ratio.exit_crit_edge ]
  %regmap43 = getelementptr inbounds %struct.rk_pdm_dev, ptr %3, i32 0, i32 3
  %65 = ptrtoint ptr %regmap43 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap43, align 4
  %call.i147 = call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef 12, i32 noundef 7, i32 noundef %retval.0.i146, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end45

if.end45:                                         ; preds = %get_pdm_ds_ratio.exit, %samplerate_to_bit.exit
  %regmap46 = getelementptr inbounds %struct.rk_pdm_dev, ptr %3, i32 0, i32 3
  %67 = ptrtoint ptr %regmap46 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap46, align 4
  %call.i148 = call i32 @regmap_update_bits_base(ptr noundef %68, i32 noundef 16, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %69 = ptrtoint ptr %regmap46 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap46, align 4
  %call.i149 = call i32 @regmap_update_bits_base(ptr noundef %70, i32 noundef 16, i32 noundef 12, i32 noundef 12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %71 = ptrtoint ptr %regmap46 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap46, align 4
  %call.i150 = call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef 12, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %73 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp53.not = icmp eq i32 %74, 0
  br i1 %cmp53.not, label %if.end45.if.end57_crit_edge, label %if.then54

if.end45.if.end57_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then54:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %regmap46 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap46, align 4
  %call.i151 = call i32 @regmap_update_bits_base(ptr noundef %76, i32 noundef 4, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end45.if.end57_crit_edge
  %arrayidx.i.i152 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %77 = ptrtoint ptr %arrayidx.i.i152 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i.i152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i.i = icmp eq i32 %78, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.end57.params_format.exit_crit_edge

if.end57.params_format.exit_crit_edge:            ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.end57
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %79 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.1.i.i = icmp eq i32 %80, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.sw.epilog_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_format.exit

for.inc.i.i.sw.epilog_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.end57.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.end57.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %78, %if.end57.params_format.exit_crit_edge ], [ %80, %for.inc.i.i.params_format.exit_crit_edge ]
  %81 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #9, !range !81
  %add.i.i = or i32 %81, %i.09.lcssa.i.i
  %82 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %add.i.i, label %params_format.exit.cleanup_crit_edge [
    i32 0, label %params_format.exit.sw.epilog_crit_edge
    i32 2, label %sw.bb60
    i32 36, label %sw.bb62
    i32 6, label %sw.bb64
    i32 10, label %sw.bb66
  ]

params_format.exit.sw.epilog_crit_edge:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb60:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb62:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb64:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb66:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb66, %sw.bb64, %sw.bb62, %sw.bb60, %params_format.exit.sw.epilog_crit_edge, %for.inc.i.i.sw.epilog_crit_edge
  %val.1 = phi i32 [ 31, %sw.bb66 ], [ 23, %sw.bb64 ], [ 19, %sw.bb62 ], [ 15, %sw.bb60 ], [ 7, %params_format.exit.sw.epilog_crit_edge ], [ 7, %for.inc.i.i.sw.epilog_crit_edge ]
  %arrayidx.i.i153 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %83 = ptrtoint ptr %arrayidx.i.i153 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i.i153, align 4
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %84, label %do.end [
    i32 8, label %sw.bb69
    i32 6, label %sw.epilog.sw.bb71_crit_edge
    i32 4, label %sw.epilog.sw.bb73_crit_edge
    i32 2, label %sw.epilog.sw.bb75_crit_edge
  ]

sw.epilog.sw.bb75_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb75

sw.epilog.sw.bb73_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb73

sw.epilog.sw.bb71_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb71

sw.bb69:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %or70 = or i32 %val.1, 1073741824
  br label %sw.bb71

sw.bb71:                                          ; preds = %sw.bb69, %sw.epilog.sw.bb71_crit_edge
  %val.2 = phi i32 [ %val.1, %sw.epilog.sw.bb71_crit_edge ], [ %or70, %sw.bb69 ]
  %or72 = or i32 %val.2, 536870912
  br label %sw.bb73

sw.bb73:                                          ; preds = %sw.bb71, %sw.epilog.sw.bb73_crit_edge
  %val.3 = phi i32 [ %val.1, %sw.epilog.sw.bb73_crit_edge ], [ %or72, %sw.bb71 ]
  %or74 = or i32 %val.3, 268435456
  br label %sw.bb75

sw.bb75:                                          ; preds = %sw.bb73, %sw.epilog.sw.bb75_crit_edge
  %val.4 = phi i32 [ %val.1, %sw.epilog.sw.bb75_crit_edge ], [ %or74, %sw.bb73 ]
  %or76 = or i32 %val.4, 134217728
  %86 = ptrtoint ptr %regmap46 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap46, align 4
  %call.i154 = call i32 @regmap_update_bits_base(ptr noundef %87, i32 noundef 4, i32 noundef 2013265951, i32 noundef %or76, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %88 = ptrtoint ptr %regmap46 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap46, align 4
  %90 = ptrtoint ptr %arrayidx.i.i153 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i.i153, align 4
  %mul = shl i32 %91, 3
  %sub = add i32 %mul, -1
  %call.i156 = call i32 @regmap_update_bits_base(ptr noundef %89, i32 noundef 24, i32 noundef 127, i32 noundef %sub, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.19, i32 noundef %84) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb75, %params_format.exit.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %get_pdm_clk.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb75 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %get_pdm_clk.exit.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %params_format.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %change) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pdm_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge9
    i32 4, label %entry.sw.bb_crit_edge10
    i32 5, label %entry.sw.bb1_crit_edge
    i32 0, label %entry.sw.bb1_crit_edge11
    i32 3, label %entry.sw.bb1_crit_edge12
  ]

entry.sw.bb1_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb_crit_edge10:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge9, %entry.sw.bb_crit_edge10
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %5 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %regmap3.i = getelementptr inbounds %struct.rk_pdm_dev, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %regmap3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap3.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 24, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %9 = ptrtoint ptr %regmap3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap3.i, align 4
  %call.i10.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 0, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge11, %entry.sw.bb1_crit_edge12
  %stream2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %11 = ptrtoint ptr %stream2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stream2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp3 = icmp eq i32 %12, 1
  br i1 %cmp3, label %if.then4, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then4:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  %regmap3.i8 = getelementptr inbounds %struct.rk_pdm_dev, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %regmap3.i8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap3.i8, align 4
  %call.i11.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 24, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %15 = ptrtoint ptr %regmap3.i8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap3.i8, align 4
  %call.i12.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 0, i32 noundef 5, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then4, %sw.bb1.sw.epilog_crit_edge, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %if.then4 ], [ 0, %sw.bb1.sw.epilog_crit_edge ], [ 0, %if.then ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rational_best_approximation(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pdm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.rk_pdm_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pdm_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap = getelementptr inbounds %struct.rk_pdm_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regcache_sync(ptr noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  %call.i12 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !58, !59, !60, !61, !63, !65, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__initcall__kmod_snd_soc_rockchip_pdm__241_721_rockchip_pdm_driver_init6, !1, !"__initcall__kmod_snd_soc_rockchip_pdm__241_721_rockchip_pdm_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/rockchip/rockchip_pdm.c", i32 721, i32 1}
!2 = !{ptr @__exitcall_rockchip_pdm_driver_exit, !1, !"__exitcall_rockchip_pdm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author242, !4, !"__UNIQUE_ID_author242", i1 false, i1 false}
!4 = !{!"../sound/soc/rockchip/rockchip_pdm.c", i32 723, i32 1}
!5 = !{ptr @__UNIQUE_ID_description243, !6, !"__UNIQUE_ID_description243", i1 false, i1 false}
!6 = !{!"../sound/soc/rockchip/rockchip_pdm.c", i32 724, i32 1}
!7 = !{ptr @__UNIQUE_ID_file244, !8, !"__UNIQUE_ID_file244", i1 false, i1 false}
!8 = !{!"../sound/soc/rockchip/rockchip_pdm.c", i32 725, i32 1}
!9 = !{ptr @__UNIQUE_ID_license245, !8, !"__UNIQUE_ID_license245", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/rockchip/rockchip_pdm.c", i32 715, i32 11}
!12 = !{ptr @rockchip_pdm_driver, !13, !"rockchip_pdm_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/rockchip/rockchip_pdm.c", i32 711, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/rockchip/rockchip_pdm.c", i32 588, i32 51}
!16 = !{ptr @rockchip_pdm_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../sound/soc/rockchip/rockchip_pdm.c", i32 597, i32 16}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/rockchip/rockchip_pdm.c", i32 609, i32 38}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/rockchip/rockchip_pdm.c", i32 613, i32 39}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/rockchip/rockchip_pdm.c", i32 633, i32 3}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @rockchip_pdm_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @rockchip_pdm_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/rockchip/rockchip_pdm.c", i32 645, i32 3}
!33 = !{ptr @rockchip_pdm_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @rockchip_pdm_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @rockchip_pdm_regmap_config, !36, !"rockchip_pdm_regmap_config", i1 false, i1 false}
!36 = !{!"../sound/soc/rockchip/rockchip_pdm.c", i32 512, i32 35}
!37 = !{ptr @rockchip_pdm_reg_defaults, !38, !"rockchip_pdm_reg_defaults", i1 false, i1 false}
!38 = !{!"../sound/soc/rockchip/rockchip_pdm.c", i32 505, i32 33}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/rockchip/rockchip_pdm.c", i32 427, i32 3}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @rockchip_pdm_runtime_resume._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @rockchip_pdm_runtime_resume._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/rockchip/rockchip_pdm.c", i32 433, i32 3}
!46 = !{ptr @rockchip_pdm_runtime_resume._entry.15, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @rockchip_pdm_runtime_resume._entry_ptr.17, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @rockchip_pdm_component, !49, !"rockchip_pdm_component", i1 false, i1 false}
!49 = !{!"../sound/soc/rockchip/rockchip_pdm.c", i32 406, i32 46}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/rockchip/rockchip_pdm.c", i32 396, i32 18}
!52 = !{ptr @rockchip_pdm_dai, !53, !"rockchip_pdm_dai", i1 false, i1 false}
!53 = !{!"../sound/soc/rockchip/rockchip_pdm.c", i32 393, i32 34}
!54 = !{ptr @rockchip_pdm_dai_ops, !55, !"rockchip_pdm_dai_ops", i1 false, i1 false}
!55 = !{!"../sound/soc/rockchip/rockchip_pdm.c", i32 381, i32 37}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/rockchip/rockchip_pdm.c", i32 305, i32 3}
!58 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @rockchip_pdm_hw_params._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @rockchip_pdm_hw_params._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = distinct !{null, !62, !"clkref", i1 false, i1 false}
!62 = !{!"../sound/soc/rockchip/rockchip_pdm.c", i32 52, i32 29}
!63 = distinct !{null, !64, !"ds_ratio", i1 false, i1 false}
!64 = !{!"../sound/soc/rockchip/rockchip_pdm.c", i32 60, i32 31}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/rockchip/rockchip_pdm.c", i32 548, i32 41}
!67 = !{ptr @rockchip_pdm_match, !68, !"rockchip_pdm_match", i1 false, i1 false}
!68 = !{!"../sound/soc/rockchip/rockchip_pdm.c", i32 526, i32 34}
!69 = !{ptr @rockchip_pdm_pm_ops, !70, !"rockchip_pdm_pm_ops", i1 false, i1 false}
!70 = !{!"../sound/soc/rockchip/rockchip_pdm.c", i32 705, i32 32}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"auto-init"}
!81 = !{i32 0, i32 33}
!82 = !{i8 0, i8 2}
