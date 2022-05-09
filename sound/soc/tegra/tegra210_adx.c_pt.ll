; ModuleID = '/llk/IR_all_yes/sound/soc/tegra/tegra210_adx.c_pt.bc'
source_filename = "../sound/soc/tegra/tegra210_adx.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.77, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.77 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.tegra210_adx = type { ptr, [16 x i32], [2 x i32] }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.72, [128 x i8] }
%union.anon.72 = type { %union.anon.74 }
%union.anon.74 = type { [64 x i64] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_tegra210_adx__239_530_tegra210_adx_driver_init6 = internal global ptr @tegra210_adx_driver_init, section ".initcall6.init", align 4
@tegra210_adx_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra210_adx_platform_probe, ptr @tegra210_adx_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra210_adx_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_adx_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra210_adx_driver_exit = internal global ptr @tegra210_adx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author240 = internal constant [69 x i8] c"snd_soc_tegra210_adx.author=Arun Shamanna Lakshmi <aruns@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [58 x i8] c"snd_soc_tegra210_adx.description=Tegra210 ADX ASoC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [63 x i8] c"snd_soc_tegra210_adx.file=sound/soc/tegra/snd-soc-tegra210-adx\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [36 x i8] c"snd_soc_tegra210_adx.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra210-adx\00", [19 x i8] zeroinitializer }, align 32
@tegra210_adx_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-adx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tegra210_adx_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_adx_runtime_suspend, ptr @tegra210_adx_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra210_adx_platform_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tegra210_adx_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @tegra210_adx_wr_reg, ptr @tegra210_adx_rd_reg, ptr @tegra210_adx_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 188, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_adx_reg_defaults, i32 9, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"tegra210_adx:486:(&tegra210_adx_regmap_config)->lock\00", [43 x i8] zeroinitializer }, align 32
@tegra210_adx_platform_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 488, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"regmap init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tegra210_adx_platform_probe\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/soc/tegra/tegra210_adx.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra210_adx_platform_probe._entry_ptr = internal global ptr @tegra210_adx_platform_probe._entry, section ".printk_index", align 4
@tegra210_adx_cmpnt = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @tegra210_adx_controls, i32 64, ptr @tegra210_adx_widgets, i32 5, ptr @tegra210_adx_routes, i32 56, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@tegra210_adx_dais = internal global { [5 x %struct.snd_soc_dai_driver], [216 x i8] } { [5 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.168, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_adx_in_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.150, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.145, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.169, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_adx_out_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.151, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.146, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.170, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_adx_out_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.156, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.153, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.171, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_adx_out_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.161, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.158, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.172, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_adx_out_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.166, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.163, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 16, i32 0 }, i8 0, i32 0, i32 0 }], [216 x i8] zeroinitializer }, align 32
@tegra210_adx_platform_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 498, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"can't register ADX component, err: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra210_adx_platform_probe._entry_ptr.9 = internal global ptr @tegra210_adx_platform_probe._entry.7, section ".printk_index", align 4
@tegra210_adx_reg_defaults = internal constant { [9 x %struct.reg_default], [56 x i8] } { [9 x %struct.reg_default] [%struct.reg_default { i32 20, i32 1 }, %struct.reg_default { i32 32, i32 28672 }, %struct.reg_default { i32 84, i32 15 }, %struct.reg_default { i32 96, i32 28672 }, %struct.reg_default { i32 100, i32 28672 }, %struct.reg_default { i32 104, i32 28672 }, %struct.reg_default { i32 108, i32 28672 }, %struct.reg_default { i32 136, i32 1 }, %struct.reg_default { i32 184, i32 16384 }], [56 x i8] zeroinitializer }, align 32
@tegra210_adx_controls = internal global { [64 x %struct.snd_kcontrol_new], [768 x i8] } { [64 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.12 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.14 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.16 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.18 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.20 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.60 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.62 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.66 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.68 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.70 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.78 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.80 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.82 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.88 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.90 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.92 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.94 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.98 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.100 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.102 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.104 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.106 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.108 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.109, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.110 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.111, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.112 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.113, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.114 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.115, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.116 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.117, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.118 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.119, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.120 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.121, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.122 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.123, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.124 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.125, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.126 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.128 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.129, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.130 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.132 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.134 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_adx_get_byte_map, ptr @tegra210_adx_put_byte_map, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.136 to i32) }], [768 x i8] zeroinitializer }, align 32
@tegra210_adx_routes = internal constant { [56 x %struct.snd_soc_dapm_route], [704 x i8] } { [56 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.143, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr null, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr null, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr null, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr null, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr null, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr null, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr null, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr null, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr null, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr null, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr null, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr null, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr null, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr null, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr null, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr null, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr null, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr null, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr null, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr null, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr null, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr null, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr null, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr null, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }], [704 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Byte Map 0\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Byte Map 1\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 1, i32 1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Byte Map 2\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 2, i32 2, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Byte Map 3\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 3, i32 3, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Byte Map 4\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 4, i32 4, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Byte Map 5\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 5, i32 5, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Byte Map 6\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 6, i32 6, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Byte Map 7\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 7, i32 7, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Byte Map 8\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 8, i32 8, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Byte Map 9\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 9, i32 9, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 10\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 10, i32 10, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 11\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 11, i32 11, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 12\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 12, i32 12, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 13\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 13, i32 13, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 14\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 14, i32 14, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 15\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 15, i32 15, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 16\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 16, i32 16, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 17\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 17, i32 17, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 18\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 18, i32 18, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 19\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 19, i32 19, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 20\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 20, i32 20, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 21\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 21, i32 21, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 22\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 22, i32 22, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 23\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 23, i32 23, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 24\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 24, i32 24, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 25\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 25, i32 25, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 26\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 26, i32 26, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 27\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 27, i32 27, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 28\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 28, i32 28, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 29\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 29, i32 29, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 30\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 30, i32 30, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 31\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 31, i32 31, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 32\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 32, i32 32, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 33\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 33, i32 33, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 34\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 34, i32 34, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 35\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 35, i32 35, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 36\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 36, i32 36, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 37\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 37, i32 37, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 38\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 38, i32 38, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 39\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 39, i32 39, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 40\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 40, i32 40, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 41\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 41, i32 41, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 42\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 42, i32 42, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 43\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 43, i32 43, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 44\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 44, i32 44, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 45\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 45, i32 45, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 46\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 46, i32 46, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 47\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 47, i32 47, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 48\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 48, i32 48, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 49\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 49, i32 49, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 50\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.110 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 50, i32 50, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 51\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.112 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 51, i32 51, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 52\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.114 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 52, i32 52, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 53\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 53, i32 53, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 54\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 54, i32 54, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 55\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.120 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 55, i32 55, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 56\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.122 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 56, i32 56, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 57\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.124 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 57, i32 57, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 58\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.126 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 58, i32 58, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 59\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.128 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 59, i32 59, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 60\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.130 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 60, i32 60, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 61\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.132 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 61, i32 61, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 62\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.134 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 62, i32 62, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Byte Map 63\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.136 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 256, i32 256, i32 63, i32 63, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TX1\00", [28 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TX2\00", [28 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TX3\00", [28 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TX4\00", [28 x i8] zeroinitializer }, align 32
@tegra210_adx_widgets = internal constant { [5 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [252 x i8] } { [5 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.137, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 128, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.138, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 164, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.139, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 164, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.140, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 164, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.141, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 164, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [252 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"XBAR-Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"XBAR-TX\00", [24 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX-CIF-Playback\00", [16 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX1-CIF-Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX1 XBAR-Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX1 XBAR-RX\00", [20 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"XBAR-Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RX-CIF-Capture\00", [17 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TX1-CIF-Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX1 XBAR-Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX2-CIF-Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX2 XBAR-Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX2 XBAR-RX\00", [20 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TX2-CIF-Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX2 XBAR-Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX3-CIF-Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX3 XBAR-Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX3 XBAR-RX\00", [20 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TX3-CIF-Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX3 XBAR-Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX4-CIF-Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX4 XBAR-Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX4 XBAR-RX\00", [20 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TX4-CIF-Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX4 XBAR-Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADX-RX-CIF\00", [21 x i8] zeroinitializer }, align 32
@tegra210_adx_in_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_adx_startup, ptr null, ptr @tegra210_adx_in_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADX-TX1-CIF\00", [20 x i8] zeroinitializer }, align 32
@tegra210_adx_out_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_adx_out_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADX-TX2-CIF\00", [20 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADX-TX3-CIF\00", [20 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADX-TX4-CIF\00", [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tegra210_adx_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.4, i32 64, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to stop ADX, err = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tegra210_adx_startup\00", [43 x i8] zeroinitializer }, align 32
@tegra210_adx_startup._entry_ptr = internal global ptr @tegra210_adx_startup._entry, section ".printk_index", align 4
@tegra210_adx_startup._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.174, ptr @.str.4, i32 81, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to reset ADX, err = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra210_adx_startup._entry_ptr.177 = internal global ptr @tegra210_adx_startup._entry.175, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [63 x i64] [i64 61, i64 32, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135, i64 136, i64 164, i64 165, i64 166, i64 167, i64 168, i64 169, i64 170, i64 171, i64 172, i64 184, i64 185, i64 186, i64 187, i64 188]
@__sancov_gen_cov_switch_values.178 = internal global [13 x i64] [i64 11, i64 32, i64 12, i64 16, i64 24, i64 76, i64 80, i64 88, i64 132, i64 140, i64 144, i64 184, i64 188]
@__sancov_gen_cov_switch_values.179 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 10]
@__sancov_gen_cov_switch_values.180 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 10]
@___asan_gen_.181 = private unnamed_addr constant [20 x i8] c"tegra210_adx_driver\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 521, i32 31 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 523, i32 11 }
@___asan_gen_.187 = private unnamed_addr constant [22 x i8] c"tegra210_adx_of_match\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 462, i32 34 }
@___asan_gen_.190 = private unnamed_addr constant [20 x i8] c"tegra210_adx_pm_ops\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 514, i32 32 }
@___asan_gen_.193 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [27 x i8] c"tegra210_adx_regmap_config\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 449, i32 35 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 485, i32 16 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 488, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [19 x i8] c"tegra210_adx_cmpnt\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 391, i32 46 }
@___asan_gen_.223 = private unnamed_addr constant [18 x i8] c"tegra210_adx_dais\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 269, i32 34 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 498, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [26 x i8] c"tegra210_adx_reg_defaults\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 24, i32 33 }
@___asan_gen_.235 = private unnamed_addr constant [22 x i8] c"tegra210_adx_controls\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 324, i32 32 }
@___asan_gen_.238 = private unnamed_addr constant [20 x i8] c"tegra210_adx_routes\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 312, i32 40 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 325, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 326, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 327, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 328, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 329, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 330, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 331, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 332, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 333, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 334, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 335, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 336, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 337, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 338, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 339, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 340, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 341, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 342, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 343, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 344, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 345, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 346, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 347, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 348, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 349, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 350, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 351, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 352, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 353, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 354, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 355, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 356, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 357, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 358, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 359, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 360, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 361, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 362, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 363, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 364, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 365, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 366, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 367, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 368, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 369, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 370, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 371, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 372, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 373, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 374, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 375, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant [21 x i8] c".compoundliteral.110\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 376, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant [21 x i8] c".compoundliteral.112\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 377, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant [21 x i8] c".compoundliteral.114\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 378, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 379, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 380, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant [21 x i8] c".compoundliteral.120\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 381, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant [21 x i8] c".compoundliteral.122\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 382, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant [21 x i8] c".compoundliteral.124\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 383, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant [21 x i8] c".compoundliteral.126\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 384, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant [21 x i8] c".compoundliteral.128\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 385, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant [21 x i8] c".compoundliteral.130\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 386, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant [21 x i8] c".compoundliteral.132\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 387, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant [21 x i8] c".compoundliteral.134\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 388, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant [21 x i8] c".compoundliteral.136\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 278, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 280, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 281, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 282, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 283, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant [21 x i8] c"tegra210_adx_widgets\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 277, i32 41 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 313, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 314, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 315, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 316, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 270, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant [24 x i8] c"tegra210_adx_in_dai_ops\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 212, i32 37 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 271, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant [25 x i8] c"tegra210_adx_out_dai_ops\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 217, i32 37 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 272, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 273, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 274, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 64, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.623 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.624 = private constant [34 x i8] c"../sound/soc/tegra/tegra210_adx.c\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 81, i32 3 }
@llvm.compiler.used = appending global [202 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_tegra210_adx_driver_exit, ptr @__initcall__kmod_snd_soc_tegra210_adx__239_530_tegra210_adx_driver_init6, ptr @tegra210_adx_driver_exit, ptr @tegra210_adx_platform_probe._entry, ptr @tegra210_adx_platform_probe._entry.7, ptr @tegra210_adx_platform_probe._entry_ptr, ptr @tegra210_adx_platform_probe._entry_ptr.9, ptr @tegra210_adx_startup._entry, ptr @tegra210_adx_startup._entry.175, ptr @tegra210_adx_startup._entry_ptr, ptr @tegra210_adx_startup._entry_ptr.177, ptr @tegra210_adx_driver, ptr @.str, ptr @tegra210_adx_of_match, ptr @tegra210_adx_pm_ops, ptr @tegra210_adx_platform_probe._key, ptr @tegra210_adx_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tegra210_adx_cmpnt, ptr @tegra210_adx_dais, ptr @.str.8, ptr @tegra210_adx_reg_defaults, ptr @tegra210_adx_controls, ptr @tegra210_adx_routes, ptr @.str.10, ptr @.compoundliteral, ptr @.str.11, ptr @.compoundliteral.12, ptr @.str.13, ptr @.compoundliteral.14, ptr @.str.15, ptr @.compoundliteral.16, ptr @.str.17, ptr @.compoundliteral.18, ptr @.str.19, ptr @.compoundliteral.20, ptr @.str.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @.compoundliteral.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @.compoundliteral.44, ptr @.str.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.str.57, ptr @.compoundliteral.58, ptr @.str.59, ptr @.compoundliteral.60, ptr @.str.61, ptr @.compoundliteral.62, ptr @.str.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @.compoundliteral.66, ptr @.str.67, ptr @.compoundliteral.68, ptr @.str.69, ptr @.compoundliteral.70, ptr @.str.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @.compoundliteral.74, ptr @.str.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @.compoundliteral.78, ptr @.str.79, ptr @.compoundliteral.80, ptr @.str.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @.compoundliteral.86, ptr @.str.87, ptr @.compoundliteral.88, ptr @.str.89, ptr @.compoundliteral.90, ptr @.str.91, ptr @.compoundliteral.92, ptr @.str.93, ptr @.compoundliteral.94, ptr @.str.95, ptr @.compoundliteral.96, ptr @.str.97, ptr @.compoundliteral.98, ptr @.str.99, ptr @.compoundliteral.100, ptr @.str.101, ptr @.compoundliteral.102, ptr @.str.103, ptr @.compoundliteral.104, ptr @.str.105, ptr @.compoundliteral.106, ptr @.str.107, ptr @.compoundliteral.108, ptr @.str.109, ptr @.compoundliteral.110, ptr @.str.111, ptr @.compoundliteral.112, ptr @.str.113, ptr @.compoundliteral.114, ptr @.str.115, ptr @.compoundliteral.116, ptr @.str.117, ptr @.compoundliteral.118, ptr @.str.119, ptr @.compoundliteral.120, ptr @.str.121, ptr @.compoundliteral.122, ptr @.str.123, ptr @.compoundliteral.124, ptr @.str.125, ptr @.compoundliteral.126, ptr @.str.127, ptr @.compoundliteral.128, ptr @.str.129, ptr @.compoundliteral.130, ptr @.str.131, ptr @.compoundliteral.132, ptr @.str.133, ptr @.compoundliteral.134, ptr @.str.135, ptr @.compoundliteral.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @tegra210_adx_widgets, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @tegra210_adx_in_dai_ops, ptr @.str.169, ptr @tegra210_adx_out_dai_ops, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.176], section "llvm.metadata"
@0 = internal global [191 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_adx_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_adx_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_adx_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_adx_platform_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_adx_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_adx_platform_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_adx_cmpnt to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_adx_dais to i32), i32 840, i32 1056, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_adx_platform_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_adx_reg_defaults to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_adx_controls to i32), i32 3072, i32 3840, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_adx_routes to i32), i32 2912, i32 3616, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.110 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.112 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.114 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.120 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.122 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.124 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.126 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.128 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.130 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.132 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.134 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.136 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_adx_widgets to i32), i32 900, i32 1152, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_adx_in_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_adx_out_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_adx_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_adx_startup._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_adx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra210_adx_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra210_adx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra210_adx_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_adx_platform_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 76, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call2, ptr noundef nonnull @tegra210_adx_regmap_config, ptr noundef nonnull @tegra210_adx_platform_probe._key, ptr noundef nonnull @.str.1) #8
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %call.i, align 4
  %cmp.i41 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i41, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #11
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  tail call void @regcache_cache_only(ptr noundef %call7, i1 noundef zeroext true) #8
  %call15 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @tegra210_adx_cmpnt, ptr noundef nonnull @tegra210_adx_dais, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end21, label %do.end20

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %call15) #11
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pm_runtime_enable(ptr noundef %dev1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end20, %do.end, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %5, %do.end ], [ %call15, %do.end20 ], [ 0, %if.end21 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_adx_platform_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra210_adx_wr_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 184, label %entry.return_crit_edge
    i32 185, label %entry.return_crit_edge5
    i32 186, label %entry.return_crit_edge6
    i32 187, label %entry.return_crit_edge7
    i32 188, label %entry.return_crit_edge8
    i32 164, label %entry.return_crit_edge9
    i32 165, label %entry.return_crit_edge10
    i32 166, label %entry.return_crit_edge11
    i32 167, label %entry.return_crit_edge12
    i32 168, label %entry.return_crit_edge13
    i32 169, label %entry.return_crit_edge14
    i32 170, label %entry.return_crit_edge15
    i32 171, label %entry.return_crit_edge16
    i32 172, label %entry.return_crit_edge17
    i32 128, label %entry.return_crit_edge18
    i32 129, label %entry.return_crit_edge19
    i32 130, label %entry.return_crit_edge20
    i32 131, label %entry.return_crit_edge21
    i32 132, label %entry.return_crit_edge22
    i32 133, label %entry.return_crit_edge23
    i32 134, label %entry.return_crit_edge24
    i32 135, label %entry.return_crit_edge25
    i32 136, label %entry.return_crit_edge26
    i32 20, label %entry.return_crit_edge27
    i32 21, label %entry.return_crit_edge28
    i32 22, label %entry.return_crit_edge29
    i32 23, label %entry.return_crit_edge30
    i32 24, label %entry.return_crit_edge31
    i32 25, label %entry.return_crit_edge32
    i32 26, label %entry.return_crit_edge33
    i32 27, label %entry.return_crit_edge34
    i32 28, label %entry.return_crit_edge35
    i32 29, label %entry.return_crit_edge36
    i32 30, label %entry.return_crit_edge37
    i32 31, label %entry.return_crit_edge38
    i32 32, label %entry.return_crit_edge39
    i32 84, label %entry.return_crit_edge40
    i32 85, label %entry.return_crit_edge41
    i32 86, label %entry.return_crit_edge42
    i32 87, label %entry.return_crit_edge43
    i32 88, label %entry.return_crit_edge44
    i32 89, label %entry.return_crit_edge45
    i32 90, label %entry.return_crit_edge46
    i32 91, label %entry.return_crit_edge47
    i32 92, label %entry.return_crit_edge48
    i32 93, label %entry.return_crit_edge49
    i32 94, label %entry.return_crit_edge50
    i32 95, label %entry.return_crit_edge51
    i32 96, label %entry.return_crit_edge52
    i32 97, label %entry.return_crit_edge53
    i32 98, label %entry.return_crit_edge54
    i32 99, label %entry.return_crit_edge55
    i32 100, label %entry.return_crit_edge56
    i32 101, label %entry.return_crit_edge57
    i32 102, label %entry.return_crit_edge58
    i32 103, label %entry.return_crit_edge59
    i32 104, label %entry.return_crit_edge60
    i32 105, label %entry.return_crit_edge61
    i32 106, label %entry.return_crit_edge62
    i32 107, label %entry.return_crit_edge63
    i32 108, label %entry.return_crit_edge64
  ]

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra210_adx_rd_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 177, i32 %0)
  %inbounds = icmp ult i32 %0, 177
  ret i1 %inbounds
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra210_adx_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %reg, label %sw.epilog [
    i32 12, label %entry.return_crit_edge
    i32 16, label %entry.return_crit_edge1
    i32 24, label %entry.return_crit_edge2
    i32 76, label %entry.return_crit_edge3
    i32 80, label %entry.return_crit_edge4
    i32 88, label %entry.return_crit_edge5
    i32 132, label %entry.return_crit_edge6
    i32 140, label %entry.return_crit_edge7
    i32 144, label %entry.return_crit_edge8
    i32 184, label %entry.return_crit_edge9
    i32 188, label %entry.return_crit_edge10
  ]

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra210_adx_get_byte_map(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %reg = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  %div = sdiv i32 %10, 32
  %arrayidx = getelementptr %struct.tegra210_adx, ptr %5, i32 0, i32 2, i32 %div
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %rem13 = and i32 %10, 31
  %shl = shl nuw i32 1, %rem13
  %and = and i32 %shl, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %map = getelementptr inbounds %struct.tegra210_adx, ptr %5, i32 0, i32 1
  %arrayidx4 = getelementptr i8, ptr %map, i32 %10
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx4, align 1
  %conv = zext i8 %14 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv.sink = phi i32 [ %conv, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %15 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv.sink, ptr %15, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra210_adx_put_byte_map(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %map = getelementptr inbounds %struct.tegra210_adx, ptr %5, i32 0, i32 1
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value2, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %8 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private_value, align 4
  %10 = inttoptr i32 %9 to ptr
  %reg = getelementptr inbounds %struct.soc_mixer_control, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg, align 4
  %arrayidx3 = getelementptr i8, ptr %map, i32 %12
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx3, align 1
  %conv = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp = icmp eq i32 %7, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %7)
  %15 = icmp ult i32 %7, 256
  br i1 %15, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv10 = trunc i32 %7 to i8
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv10, ptr %arrayidx3, align 1
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg, align 4
  %rem45 = and i32 %18, 31
  %shl = shl nuw i32 1, %rem45
  %div = sdiv i32 %18, 32
  %arrayidx15 = getelementptr %struct.tegra210_adx, ptr %5, i32 0, i32 2, i32 %div
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx15, align 4
  %or = or i32 %shl, %20
  store i32 %or, ptr %arrayidx15, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx3, align 1
  %22 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg, align 4
  %rem1944 = and i32 %23, 31
  %shl20 = shl nuw i32 1, %rem1944
  %neg = xor i32 %shl20, -1
  %div23 = sdiv i32 %23, 32
  %arrayidx24 = getelementptr %struct.tegra210_adx, ptr %5, i32 0, i32 2, i32 %div23
  %24 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx24, align 4
  %and = and i32 %25, %neg
  store i32 %and, ptr %arrayidx24, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.else ], [ 1, %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_adx_startup(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !246
  %call1 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call1, 10000000
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %call3144 = call i32 @regmap_read(ptr noundef %6, i32 noundef 140, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3144)
  %tobool.not145 = icmp eq i32 %call3144, 0
  br i1 %tobool.not145, label %entry.if.end_crit_edge, label %entry.cond.end26_crit_edge

entry.cond.end26_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end26

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %cond.false.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.cond.false23_crit_edge, label %land.lhs.true

if.end.cond.false23_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false23

land.lhs.true:                                    ; preds = %if.end
  %call8 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call8, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call8, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 2147480) #8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %call3 = call i32 @regmap_read(ptr noundef %11, i32 noundef 140, ptr noundef nonnull %val) #8
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cond.false.if.end_crit_edge, label %cond.false.cond.end26_crit_edge

cond.false.cond.end26_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end26

cond.false.if.end_crit_edge:                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.end:                                          ; preds = %land.lhs.true
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %call12 = call i32 @regmap_read(ptr noundef %13, i32 noundef 140, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool21.not = icmp eq i32 %call12, 0
  br i1 %tobool21.not, label %for.end.cond.false23_crit_edge, label %for.end.cond.end26_crit_edge

for.end.cond.end26_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end26

for.end.cond.false23_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false23

cond.false23:                                     ; preds = %for.end.cond.false23_crit_edge, %if.end.cond.false23_crit_edge
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %and24 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %cond.false23.if.end30_crit_edge, label %cond.false23.do.end_crit_edge

cond.false23.do.end_crit_edge:                    ; preds = %cond.false23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

cond.false23.if.end30_crit_edge:                  ; preds = %cond.false23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

cond.end26:                                       ; preds = %for.end.cond.end26_crit_edge, %cond.false.cond.end26_crit_edge, %entry.cond.end26_crit_edge
  %cond27 = phi i32 [ %call12, %for.end.cond.end26_crit_edge ], [ %call3144, %entry.cond.end26_crit_edge ], [ %call3, %cond.false.cond.end26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond27)
  %cmp28 = icmp slt i32 %cond27, 0
  br i1 %cmp28, label %cond.end26.do.end_crit_edge, label %cond.end26.if.end30_crit_edge

cond.end26.if.end30_crit_edge:                    ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

cond.end26.do.end_crit_edge:                      ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %cond.end26.do.end_crit_edge, %cond.false23.do.end_crit_edge
  %cond27127 = phi i32 [ %cond27, %cond.end26.do.end_crit_edge ], [ -110, %cond.false23.do.end_crit_edge ]
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.173, i32 noundef %cond27127) #11
  br label %cleanup

if.end30:                                         ; preds = %cond.end26.if.end30_crit_edge, %cond.false23.if.end30_crit_edge
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 132, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call36 = call i64 @ktime_get() #8
  %add.i115 = add i64 %call36, 10000000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 79) #8
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %call52146 = call i32 @regmap_read(ptr noundef %21, i32 noundef 132, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52146)
  %tobool53.not147 = icmp eq i32 %call52146, 0
  br i1 %tobool53.not147, label %if.end30.lor.lhs.false_crit_edge, label %if.end30.lor.end_crit_edge

if.end30.lor.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

if.end30.lor.lhs.false_crit_edge:                 ; preds = %if.end30
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then68.lor.lhs.false_crit_edge, %if.end30.lor.lhs.false_crit_edge
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  %and54 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true59

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

land.lhs.true59:                                  ; preds = %lor.lhs.false
  %call60 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call60, i64 %add.i115)
  %cmp3.i117 = icmp sgt i64 %call60, %add.i115
  br i1 %cmp3.i117, label %for.end70, label %if.then68

if.then68:                                        ; preds = %land.lhs.true59
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %call52 = call i32 @regmap_read(ptr noundef %25, i32 noundef 132, ptr noundef nonnull %val) #8
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then68.lor.lhs.false_crit_edge, label %if.then68.lor.end_crit_edge

if.then68.lor.end_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

if.then68.lor.lhs.false_crit_edge:                ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

for.end70:                                        ; preds = %land.lhs.true59
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %call65 = call i32 @regmap_read(ptr noundef %27, i32 noundef 132, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool72.not = icmp eq i32 %call65, 0
  br i1 %tobool72.not, label %for.end70.lor.rhs_crit_edge, label %for.end70.lor.end_crit_edge

for.end70.lor.end_crit_edge:                      ; preds = %for.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

for.end70.lor.rhs_crit_edge:                      ; preds = %for.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end70.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  %and73 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %lor.rhs.cleanup_crit_edge, label %lor.rhs.do.end87_crit_edge

lor.rhs.do.end87_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end87

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.end:                                          ; preds = %for.end70.lor.end_crit_edge, %if.then68.lor.end_crit_edge, %if.end30.lor.end_crit_edge
  %tobool72.not135 = phi i32 [ %call65, %for.end70.lor.end_crit_edge ], [ %call52146, %if.end30.lor.end_crit_edge ], [ %call52, %if.then68.lor.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool72.not135)
  %cmp83 = icmp slt i32 %tobool72.not135, 0
  br i1 %cmp83, label %lor.end.do.end87_crit_edge, label %lor.end.cleanup_crit_edge

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.end.do.end87_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end87

do.end87:                                         ; preds = %lor.end.do.end87_crit_edge, %lor.rhs.do.end87_crit_edge
  %tobool72.not135151 = phi i32 [ %tobool72.not135, %lor.end.do.end87_crit_edge ], [ -110, %lor.rhs.do.end87_crit_edge ]
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.176, i32 noundef %tobool72.not135151) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end87, %lor.end.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %cond27127, %do.end ], [ %tobool72.not135151, %do.end87 ], [ 0, %lor.end.cleanup_crit_edge ], [ 0, %lor.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_adx_in_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i4 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.if.then.i.i_crit_edge

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %3, %entry.if.then.i.i_crit_edge ], [ %6, %for.inc.i.i.if.then.i.i_crit_edge ]
  %4 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #8, !range !247
  %add.i.i = or i32 %4, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.1.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i, align 4
  %11 = add i32 %1, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %11)
  %12 = icmp ult i32 %11, -16
  br i1 %12, label %params_format.exit.tegra210_adx_set_audio_cif.exit_crit_edge, label %if.end.i

params_format.exit.tegra210_adx_set_audio_cif.exit_crit_edge: ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra210_adx_set_audio_cif.exit

if.end.i:                                         ; preds = %params_format.exit
  %13 = zext i32 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %retval.0.i.i, label %if.end.i.tegra210_adx_set_audio_cif.exit_crit_edge [
    i32 0, label %if.end.i.sw.epilog.i_crit_edge
    i32 2, label %sw.bb2.i
    i32 10, label %sw.bb3.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end.i.tegra210_adx_set_audio_cif.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra210_adx_set_audio_cif.exit

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb2.i, %if.end.i.sw.epilog.i_crit_edge
  %audio_bits.0.i = phi i32 [ 7, %sw.bb3.i ], [ 3, %sw.bb2.i ], [ 1, %if.end.i.sw.epilog.i_crit_edge ]
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %10, align 4
  %sub.i.i = shl nuw nsw i32 %1, 20
  %shl1.i.i = add nsw i32 %sub.i.i, -1048576
  %sub2.i.i = shl nuw nsw i32 %1, 16
  %shl3.i.i = add nsw i32 %sub2.i.i, -65536
  %or4.i.i = or i32 %shl1.i.i, %shl3.i.i
  %shl5.i.i = shl nuw nsw i32 %audio_bits.0.i, 12
  %or6.i.i = or i32 %shl5.i.i, %or4.i.i
  %shl7.i.i = shl nuw nsw i32 %audio_bits.0.i, 8
  %or8.i.i = or i32 %or6.i.i, %shl7.i.i
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 32, i32 noundef 1073741819, i32 noundef %or8.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %tegra210_adx_set_audio_cif.exit

tegra210_adx_set_audio_cif.exit:                  ; preds = %sw.epilog.i, %if.end.i.tegra210_adx_set_audio_cif.exit_crit_edge, %params_format.exit.tegra210_adx_set_audio_cif.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.epilog.i ], [ -22, %params_format.exit.tegra210_adx_set_audio_cif.exit_crit_edge ], [ -22, %if.end.i.tegra210_adx_set_audio_cif.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_adx_out_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i5 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.if.then.i.i_crit_edge

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %3, %entry.if.then.i.i_crit_edge ], [ %6, %for.inc.i.i.if.then.i.i_crit_edge ]
  %4 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #8, !range !247
  %add.i.i = or i32 %4, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.1.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %sub = shl i32 %8, 2
  %add = add i32 %sub, 92
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %9 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i, align 4
  %13 = add i32 %1, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %13)
  %14 = icmp ult i32 %13, -16
  br i1 %14, label %params_format.exit.tegra210_adx_set_audio_cif.exit_crit_edge, label %if.end.i

params_format.exit.tegra210_adx_set_audio_cif.exit_crit_edge: ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra210_adx_set_audio_cif.exit

if.end.i:                                         ; preds = %params_format.exit
  %15 = zext i32 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %retval.0.i.i, label %if.end.i.tegra210_adx_set_audio_cif.exit_crit_edge [
    i32 0, label %if.end.i.sw.epilog.i_crit_edge
    i32 2, label %sw.bb2.i
    i32 10, label %sw.bb3.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end.i.tegra210_adx_set_audio_cif.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra210_adx_set_audio_cif.exit

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb2.i, %if.end.i.sw.epilog.i_crit_edge
  %audio_bits.0.i = phi i32 [ 7, %sw.bb3.i ], [ 3, %sw.bb2.i ], [ 1, %if.end.i.sw.epilog.i_crit_edge ]
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %12, align 4
  %sub.i.i = shl nuw nsw i32 %1, 20
  %shl1.i.i = add nsw i32 %sub.i.i, -1048576
  %sub2.i.i = shl nuw nsw i32 %1, 16
  %shl3.i.i = add nsw i32 %sub2.i.i, -65536
  %or4.i.i = or i32 %shl1.i.i, %shl3.i.i
  %shl5.i.i = shl nuw nsw i32 %audio_bits.0.i, 12
  %or6.i.i = or i32 %shl5.i.i, %or4.i.i
  %shl7.i.i = shl nuw nsw i32 %audio_bits.0.i, 8
  %or8.i.i = or i32 %or6.i.i, %shl7.i.i
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %add, i32 noundef 1073741819, i32 noundef %or8.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %tegra210_adx_set_audio_cif.exit

tegra210_adx_set_audio_cif.exit:                  ; preds = %sw.epilog.i, %if.end.i.tegra210_adx_set_audio_cif.exit_crit_edge, %params_format.exit.tegra210_adx_set_audio_cif.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.epilog.i ], [ -22, %params_format.exit.tegra210_adx_set_audio_cif.exit_crit_edge ], [ -22, %if.end.i.tegra210_adx_set_audio_cif.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_adx_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @regcache_mark_dirty(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_adx_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext false) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @regcache_sync(ptr noundef %5) #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 184, i32 noundef 28672) #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %arrayidx.i = getelementptr %struct.tegra210_adx, ptr %1, i32 0, i32 1, i32 0
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 188, i32 noundef %11) #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %arrayidx.1.i = getelementptr %struct.tegra210_adx, ptr %1, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1.i, align 4
  %call2.1.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 188, i32 noundef %15) #8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %arrayidx.2.i = getelementptr %struct.tegra210_adx, ptr %1, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.2.i, align 4
  %call2.2.i = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 188, i32 noundef %19) #8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %arrayidx.3.i = getelementptr %struct.tegra210_adx, ptr %1, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.3.i, align 4
  %call2.3.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 188, i32 noundef %23) #8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %arrayidx.4.i = getelementptr %struct.tegra210_adx, ptr %1, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.4.i, align 4
  %call2.4.i = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 188, i32 noundef %27) #8
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %arrayidx.5.i = getelementptr %struct.tegra210_adx, ptr %1, i32 0, i32 1, i32 5
  %30 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.5.i, align 4
  %call2.5.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 188, i32 noundef %31) #8
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %arrayidx.6.i = getelementptr %struct.tegra210_adx, ptr %1, i32 0, i32 1, i32 6
  %34 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.6.i, align 4
  %call2.6.i = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 188, i32 noundef %35) #8
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %arrayidx.7.i = getelementptr %struct.tegra210_adx, ptr %1, i32 0, i32 1, i32 7
  %38 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.7.i, align 4
  %call2.7.i = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 188, i32 noundef %39) #8
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %arrayidx.8.i = getelementptr %struct.tegra210_adx, ptr %1, i32 0, i32 1, i32 8
  %42 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.8.i, align 4
  %call2.8.i = tail call i32 @regmap_write(ptr noundef %41, i32 noundef 188, i32 noundef %43) #8
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %arrayidx.9.i = getelementptr %struct.tegra210_adx, ptr %1, i32 0, i32 1, i32 9
  %46 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.9.i, align 4
  %call2.9.i = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 188, i32 noundef %47) #8
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %arrayidx.10.i = getelementptr %struct.tegra210_adx, ptr %1, i32 0, i32 1, i32 10
  %50 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.10.i, align 4
  %call2.10.i = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 188, i32 noundef %51) #8
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %arrayidx.11.i = getelementptr %struct.tegra210_adx, ptr %1, i32 0, i32 1, i32 11
  %54 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.11.i, align 4
  %call2.11.i = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 188, i32 noundef %55) #8
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %arrayidx.12.i = getelementptr %struct.tegra210_adx, ptr %1, i32 0, i32 1, i32 12
  %58 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.12.i, align 4
  %call2.12.i = tail call i32 @regmap_write(ptr noundef %57, i32 noundef 188, i32 noundef %59) #8
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %arrayidx.13.i = getelementptr %struct.tegra210_adx, ptr %1, i32 0, i32 1, i32 13
  %62 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.13.i, align 4
  %call2.13.i = tail call i32 @regmap_write(ptr noundef %61, i32 noundef 188, i32 noundef %63) #8
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %arrayidx.14.i = getelementptr %struct.tegra210_adx, ptr %1, i32 0, i32 1, i32 14
  %66 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.14.i, align 4
  %call2.14.i = tail call i32 @regmap_write(ptr noundef %65, i32 noundef 188, i32 noundef %67) #8
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %arrayidx.15.i = getelementptr %struct.tegra210_adx, ptr %1, i32 0, i32 1, i32 15
  %70 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.15.i, align 4
  %call2.15.i = tail call i32 @regmap_write(ptr noundef %69, i32 noundef 188, i32 noundef %71) #8
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %byte_mask.i = getelementptr inbounds %struct.tegra210_adx, ptr %1, i32 0, i32 2
  %74 = ptrtoint ptr %byte_mask.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %byte_mask.i, align 4
  %call5.i = tail call i32 @regmap_write(ptr noundef %73, i32 noundef 168, i32 noundef %75) #8
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  %arrayidx8.i = getelementptr %struct.tegra210_adx, ptr %1, i32 0, i32 2, i32 1
  %78 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx8.i, align 4
  %call9.i = tail call i32 @regmap_write(ptr noundef %77, i32 noundef 172, i32 noundef %79) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 191)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 191)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !190, !191, !192, !193, !194, !196, !197, !198, !199, !200, !202, !203, !204, !205, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !225, !226, !227, !229, !230, !231, !233, !235}
!llvm.module.flags = !{!237, !238, !239, !240, !241, !242, !243, !244}
!llvm.ident = !{!245}

!0 = !{ptr @__initcall__kmod_snd_soc_tegra210_adx__239_530_tegra210_adx_driver_init6, !1, !"__initcall__kmod_snd_soc_tegra210_adx__239_530_tegra210_adx_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 530, i32 1}
!2 = !{ptr @__exitcall_tegra210_adx_driver_exit, !1, !"__exitcall_tegra210_adx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author240, !4, !"__UNIQUE_ID_author240", i1 false, i1 false}
!4 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 532, i32 1}
!5 = !{ptr @__UNIQUE_ID_description241, !6, !"__UNIQUE_ID_description241", i1 false, i1 false}
!6 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 533, i32 1}
!7 = !{ptr @__UNIQUE_ID_file242, !8, !"__UNIQUE_ID_file242", i1 false, i1 false}
!8 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 534, i32 1}
!9 = !{ptr @__UNIQUE_ID_license243, !8, !"__UNIQUE_ID_license243", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 523, i32 11}
!12 = !{ptr @tegra210_adx_driver, !13, !"tegra210_adx_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 521, i32 31}
!14 = !{ptr @tegra210_adx_platform_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 485, i32 16}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 488, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @tegra210_adx_platform_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @tegra210_adx_platform_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 498, i32 3}
!27 = !{ptr @tegra210_adx_platform_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @tegra210_adx_platform_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @tegra210_adx_regmap_config, !30, !"tegra210_adx_regmap_config", i1 false, i1 false}
!30 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 449, i32 35}
!31 = !{ptr @tegra210_adx_reg_defaults, !32, !"tegra210_adx_reg_defaults", i1 false, i1 false}
!32 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 24, i32 33}
!33 = !{ptr @tegra210_adx_cmpnt, !34, !"tegra210_adx_cmpnt", i1 false, i1 false}
!34 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 391, i32 46}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 325, i32 2}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 326, i32 2}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 327, i32 2}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 328, i32 2}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 329, i32 2}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 330, i32 2}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 331, i32 2}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 332, i32 2}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 333, i32 2}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 334, i32 2}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 335, i32 2}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 336, i32 2}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 337, i32 2}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 338, i32 2}
!63 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 339, i32 2}
!65 = !{ptr @.str.39, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 340, i32 2}
!67 = !{ptr @.str.41, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 341, i32 2}
!69 = !{ptr @.str.43, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 342, i32 2}
!71 = !{ptr @.str.45, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 343, i32 2}
!73 = !{ptr @.str.47, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 344, i32 2}
!75 = !{ptr @.str.49, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 345, i32 2}
!77 = !{ptr @.str.51, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 346, i32 2}
!79 = !{ptr @.str.53, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 347, i32 2}
!81 = !{ptr @.str.55, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 348, i32 2}
!83 = !{ptr @.str.57, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 349, i32 2}
!85 = !{ptr @.str.59, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 350, i32 2}
!87 = !{ptr @.str.61, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 351, i32 2}
!89 = !{ptr @.str.63, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 352, i32 2}
!91 = !{ptr @.str.65, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 353, i32 2}
!93 = !{ptr @.str.67, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 354, i32 2}
!95 = !{ptr @.str.69, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 355, i32 2}
!97 = !{ptr @.str.71, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 356, i32 2}
!99 = !{ptr @.str.73, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 357, i32 2}
!101 = !{ptr @.str.75, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 358, i32 2}
!103 = !{ptr @.str.77, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 359, i32 2}
!105 = !{ptr @.str.79, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 360, i32 2}
!107 = !{ptr @.str.81, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 361, i32 2}
!109 = !{ptr @.str.83, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 362, i32 2}
!111 = !{ptr @.str.85, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 363, i32 2}
!113 = !{ptr @.str.87, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 364, i32 2}
!115 = !{ptr @.str.89, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 365, i32 2}
!117 = !{ptr @.str.91, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 366, i32 2}
!119 = !{ptr @.str.93, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 367, i32 2}
!121 = !{ptr @.str.95, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 368, i32 2}
!123 = !{ptr @.str.97, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 369, i32 2}
!125 = !{ptr @.str.99, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 370, i32 2}
!127 = !{ptr @.str.101, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 371, i32 2}
!129 = !{ptr @.str.103, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 372, i32 2}
!131 = !{ptr @.str.105, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 373, i32 2}
!133 = !{ptr @.str.107, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 374, i32 2}
!135 = !{ptr @.str.109, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 375, i32 2}
!137 = !{ptr @.str.111, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 376, i32 2}
!139 = !{ptr @.str.113, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 377, i32 2}
!141 = !{ptr @.str.115, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 378, i32 2}
!143 = !{ptr @.str.117, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 379, i32 2}
!145 = !{ptr @.str.119, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 380, i32 2}
!147 = !{ptr @.str.121, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 381, i32 2}
!149 = !{ptr @.str.123, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 382, i32 2}
!151 = !{ptr @.str.125, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 383, i32 2}
!153 = !{ptr @.str.127, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 384, i32 2}
!155 = !{ptr @.str.129, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 385, i32 2}
!157 = !{ptr @.str.131, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 386, i32 2}
!159 = !{ptr @.str.133, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 387, i32 2}
!161 = !{ptr @.str.135, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 388, i32 2}
!163 = !{ptr @tegra210_adx_controls, !164, !"tegra210_adx_controls", i1 false, i1 false}
!164 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 324, i32 32}
!165 = !{ptr @.str.137, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 278, i32 2}
!167 = !{ptr @.str.138, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 280, i32 2}
!169 = !{ptr @.str.139, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 281, i32 2}
!171 = !{ptr @.str.140, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 282, i32 2}
!173 = !{ptr @.str.141, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 283, i32 2}
!175 = !{ptr @tegra210_adx_widgets, !176, !"tegra210_adx_widgets", i1 false, i1 false}
!176 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 277, i32 41}
!177 = !{ptr @.str.143, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 313, i32 2}
!179 = !{ptr @.str.144, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.145, !178, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.146, !178, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.147, !178, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.148, !178, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.149, !178, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.150, !178, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.151, !178, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.152, !178, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.153, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 314, i32 2}
!190 = !{ptr @.str.154, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.155, !189, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.156, !189, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.157, !189, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.158, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 315, i32 2}
!196 = !{ptr @.str.159, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.160, !195, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.161, !195, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.162, !195, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.163, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 316, i32 2}
!202 = !{ptr @.str.164, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.165, !201, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.166, !201, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.167, !201, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @tegra210_adx_routes, !207, !"tegra210_adx_routes", i1 false, i1 false}
!207 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 312, i32 40}
!208 = !{ptr @.str.168, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 270, i32 2}
!210 = !{ptr @.str.169, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 271, i32 2}
!212 = !{ptr @.str.170, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 272, i32 2}
!214 = !{ptr @.str.171, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 273, i32 2}
!216 = !{ptr @.str.172, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 274, i32 2}
!218 = !{ptr @tegra210_adx_dais, !219, !"tegra210_adx_dais", i1 false, i1 false}
!219 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 269, i32 34}
!220 = !{ptr @tegra210_adx_in_dai_ops, !221, !"tegra210_adx_in_dai_ops", i1 false, i1 false}
!221 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 212, i32 37}
!222 = !{ptr @.str.173, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 64, i32 3}
!224 = !{ptr @.str.174, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @tegra210_adx_startup._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @tegra210_adx_startup._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.176, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 81, i32 3}
!229 = !{ptr @tegra210_adx_startup._entry.175, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @tegra210_adx_startup._entry_ptr.177, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @tegra210_adx_out_dai_ops, !232, !"tegra210_adx_out_dai_ops", i1 false, i1 false}
!232 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 217, i32 37}
!233 = !{ptr @tegra210_adx_of_match, !234, !"tegra210_adx_of_match", i1 false, i1 false}
!234 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 462, i32 34}
!235 = !{ptr @tegra210_adx_pm_ops, !236, !"tegra210_adx_pm_ops", i1 false, i1 false}
!236 = !{!"../sound/soc/tegra/tegra210_adx.c", i32 514, i32 32}
!237 = !{i32 1, !"wchar_size", i32 2}
!238 = !{i32 1, !"min_enum_size", i32 4}
!239 = !{i32 8, !"branch-target-enforcement", i32 0}
!240 = !{i32 8, !"sign-return-address", i32 0}
!241 = !{i32 8, !"sign-return-address-all", i32 0}
!242 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!243 = !{i32 7, !"uwtable", i32 1}
!244 = !{i32 7, !"frame-pointer", i32 2}
!245 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!246 = !{!"auto-init"}
!247 = !{i32 0, i32 33}
