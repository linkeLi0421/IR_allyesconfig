; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/rt711-sdca-sdw.c_pt.bc'
source_filename = "../sound/soc/codecs/rt711-sdca-sdw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdw_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdw_device_id = type { i16, i16, i8, i8, i32 }
%struct.sdw_slave_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.reg_default = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sdw_slave = type { %struct.sdw_slave_id, %struct.device, i32, ptr, ptr, %struct.sdw_slave_prop, ptr, %struct.list_head, [15 x %struct.completion], [15 x i32], i16, i16, i8, %struct.completion, %struct.completion, %struct.completion, i32, i8, i8 }
%struct.sdw_slave_id = type { i16, i16, i8, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sdw_slave_prop = type { i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, i32, i32, i32, ptr, ptr, ptr, i8, i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rt711_sdca_priv = type { ptr, ptr, ptr, ptr, i32, %struct.sdw_bus_params, i8, i8, ptr, %struct.delayed_work, %struct.delayed_work, %struct.mutex, %struct.mutex, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.sdw_bus_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sdw_dpn_prop = type { i32, i32, i32, i32, ptr, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i8, i8, i32, ptr }
%struct.sdw_slave_intr_status = type { i8, i8, [15 x i8] }

@__initcall__kmod_snd_soc_rt711_sdca__240_473_rt711_sdca_sdw_driver_init6 = internal global ptr @rt711_sdca_sdw_driver_init, section ".initcall6.init", align 4
@rt711_sdca_sdw_driver = internal global { %struct.sdw_driver, [60 x i8] } { %struct.sdw_driver { ptr null, ptr @rt711_sdca_sdw_probe, ptr @rt711_sdca_sdw_remove, ptr null, ptr @rt711_sdca_id, ptr @rt711_sdca_slave_ops, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt711_sdca_pm, ptr null, ptr null } }, [60 x i8] zeroinitializer }, align 32
@__exitcall_rt711_sdca_sdw_driver_exit = internal global ptr @rt711_sdca_sdw_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [58 x i8] c"snd_soc_rt711_sdca.description=ASoC RT711 SDCA SDW driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [61 x i8] c"snd_soc_rt711_sdca.author=Shuming Fan <shumingf@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [60 x i8] c"snd_soc_rt711_sdca.file=sound/soc/codecs/snd-soc-rt711-sdca\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [31 x i8] c"snd_soc_rt711_sdca.license=GPL\00", section ".modinfo", align 1
@rt711_sdca_id = internal constant { [2 x %struct.sdw_device_id], [40 x i8] } { [2 x %struct.sdw_device_id] [%struct.sdw_device_id { i16 605, i16 1809, i8 3, i8 1, i32 0 }, %struct.sdw_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@rt711_sdca_slave_ops = internal global { %struct.sdw_slave_ops, [40 x i8] } { %struct.sdw_slave_ops { ptr @rt711_sdca_read_prop, ptr @rt711_sdca_interrupt_callback, ptr @rt711_sdca_update_status, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt711-sdca\00", [21 x i8] zeroinitializer }, align 32
@rt711_sdca_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rt711_sdca_dev_system_suspend, ptr @rt711_sdca_dev_resume, ptr @rt711_sdca_dev_system_suspend, ptr @rt711_sdca_dev_resume, ptr @rt711_sdca_dev_system_suspend, ptr @rt711_sdca_dev_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt711_sdca_dev_suspend, ptr @rt711_sdca_dev_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@rt711_sdca_sdw_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt711_sdca_mbq_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.4, i32 32, i32 0, i32 0, i32 16, ptr null, ptr @rt711_sdca_mbq_readable_register, ptr @rt711_sdca_mbq_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1082134290, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt711_sdca_mbq_defaults, i32 25, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"rt711_sdca_sdw:352:(&rt711_sdca_mbq_regmap)->lock\00", [46 x i8] zeroinitializer }, align 32
@rt711_sdca_sdw_probe._key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt711_sdca_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 0, i32 0, i32 8, ptr null, ptr @rt711_sdca_readable_register, ptr @rt711_sdca_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1157627903, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt711_sdca_reg_defaults, i32 54, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"rt711_sdca_sdw:356:(&rt711_sdca_regmap)->lock\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sdw-mbq\00", [24 x i8] zeroinitializer }, align 32
@rt711_sdca_mbq_defaults = internal constant { [25 x %struct.reg_default], [56 x i8] } { [25 x %struct.reg_default] [%struct.reg_default { i32 33554441, i32 4137 }, %struct.reg_default { i32 33554449, i32 122 }, %struct.reg_default { i32 33554458, i32 32771 }, %struct.reg_default { i32 33554501, i32 21129 }, %struct.reg_default { i32 33554504, i32 32841 }, %struct.reg_default { i32 33554506, i32 43067 }, %struct.reg_default { i32 33554539, i32 20580 }, %struct.reg_default { i32 33554543, i32 1419 }, %struct.reg_default { i32 92274688, i32 8 }, %struct.reg_default { i32 92274689, i32 0 }, %struct.reg_default { i32 99614721, i32 10 }, %struct.reg_default { i32 101711872, i32 24832 }, %struct.reg_default { i32 101711925, i32 96 }, %struct.reg_default { i32 101711926, i32 41 }, %struct.reg_default { i32 101711935, i32 65298 }, %struct.reg_default { i32 1077936785, i32 0 }, %struct.reg_default { i32 1077936786, i32 0 }, %struct.reg_default { i32 1082134289, i32 0 }, %struct.reg_default { i32 1082134290, i32 0 }, %struct.reg_default { i32 1077938065, i32 0 }, %struct.reg_default { i32 1077938066, i32 0 }, %struct.reg_default { i32 1080033881, i32 0 }, %struct.reg_default { i32 1080033882, i32 0 }, %struct.reg_default { i32 1082133209, i32 0 }, %struct.reg_default { i32 1082133210, i32 0 }], [56 x i8] zeroinitializer }, align 32
@rt711_sdca_reg_defaults = internal constant { [54 x %struct.reg_default], [112 x i8] } { [54 x %struct.reg_default] [%struct.reg_default { i32 8218, i32 0 }, %struct.reg_default { i32 8222, i32 0 }, %struct.reg_default { i32 8223, i32 0 }, %struct.reg_default { i32 8224, i32 0 }, %struct.reg_default { i32 8225, i32 0 }, %struct.reg_default { i32 8226, i32 0 }, %struct.reg_default { i32 8227, i32 0 }, %struct.reg_default { i32 8228, i32 0 }, %struct.reg_default { i32 8229, i32 1 }, %struct.reg_default { i32 8230, i32 0 }, %struct.reg_default { i32 8231, i32 0 }, %struct.reg_default { i32 8233, i32 0 }, %struct.reg_default { i32 8234, i32 0 }, %struct.reg_default { i32 8237, i32 0 }, %struct.reg_default { i32 8238, i32 0 }, %struct.reg_default { i32 8239, i32 0 }, %struct.reg_default { i32 8240, i32 0 }, %struct.reg_default { i32 8241, i32 0 }, %struct.reg_default { i32 8242, i32 0 }, %struct.reg_default { i32 8243, i32 0 }, %struct.reg_default { i32 8752, i32 0 }, %struct.reg_default { i32 8753, i32 47 }, %struct.reg_default { i32 8754, i32 128 }, %struct.reg_default { i32 8755, i32 0 }, %struct.reg_default { i32 8756, i32 0 }, %struct.reg_default { i32 8757, i32 0 }, %struct.reg_default { i32 8758, i32 0 }, %struct.reg_default { i32 8759, i32 0 }, %struct.reg_default { i32 8760, i32 0 }, %struct.reg_default { i32 8761, i32 0 }, %struct.reg_default { i32 12033, i32 0 }, %struct.reg_default { i32 12034, i32 9 }, %struct.reg_default { i32 12035, i32 0 }, %struct.reg_default { i32 12036, i32 0 }, %struct.reg_default { i32 12037, i32 11 }, %struct.reg_default { i32 12038, i32 1 }, %struct.reg_default { i32 12040, i32 0 }, %struct.reg_default { i32 12041, i32 0 }, %struct.reg_default { i32 12042, i32 0 }, %struct.reg_default { i32 12043, i32 0 }, %struct.reg_default { i32 12044, i32 0 }, %struct.reg_default { i32 12045, i32 0 }, %struct.reg_default { i32 12046, i32 20 }, %struct.reg_default { i32 12047, i32 0 }, %struct.reg_default { i32 12112, i32 3 }, %struct.reg_default { i32 12122, i32 0 }, %struct.reg_default { i32 1078460544, i32 9 }, %struct.reg_default { i32 1077936777, i32 1 }, %struct.reg_default { i32 1077936778, i32 1 }, %struct.reg_default { i32 1077938057, i32 1 }, %struct.reg_default { i32 1077938058, i32 1 }, %struct.reg_default { i32 1077941256, i32 3 }, %struct.reg_default { i32 1082134281, i32 1 }, %struct.reg_default { i32 1082134282, i32 1 }], [112 x i8] zeroinitializer }, align 32
@rt711_sdca_interrupt_callback.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 0, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_soc_rt711_sdca\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rt711_sdca_interrupt_callback\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sound/soc/codecs/rt711-sdca-sdw.c\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s control_port_stat=%x, sdca_cascade=%x\00", [55 x i8] zeroinitializer }, align 32
@rt711_sdca_interrupt_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 253, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s the pending delayed_work was cancelled\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt711_sdca_interrupt_callback._entry_ptr = internal global ptr @rt711_sdca_interrupt_callback._entry, section ".printk_index", align 4
@rt711_sdca_interrupt_callback._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.6, ptr @.str.7, i32 324, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s scp_sdca_stat1=0x%x, scp_sdca_stat2=0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@rt711_sdca_interrupt_callback._entry_ptr.14 = internal global ptr @rt711_sdca_interrupt_callback._entry.12, section ".printk_index", align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@rt711_sdca_interrupt_callback._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@rt711_sdca_interrupt_callback._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.7, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013IO error in %s, ret %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rt711_sdca_interrupt_callback._entry_ptr.18 = internal global ptr @rt711_sdca_interrupt_callback._entry.16, section ".printk_index", align 4
@rt711_sdca_dev_system_suspend.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.19, ptr @.str.7, ptr @.str.20, i8 0, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rt711_sdca_dev_system_suspend\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: could not disable SDCA interrupts\0A:\00", [56 x i8] zeroinitializer }, align 32
@rt711_sdca_dev_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.7, i32 444, ptr @.str.23, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Initialization not complete, timed out\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rt711_sdca_dev_resume\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rt711_sdca_dev_resume._entry_ptr = internal global ptr @rt711_sdca_dev_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 1077936785, i64 1077936786, i64 1077938065, i64 1077938066, i64 1080033881, i64 1080033882, i64 1082133209, i64 1082133210, i64 1082134289, i64 1082134290]
@__sancov_gen_cov_switch_values.24 = internal global [8 x i64] [i64 6, i64 32, i64 33554432, i64 90177536, i64 91226112, i64 92274688, i64 93323264, i64 95420416]
@__sancov_gen_cov_switch_values.25 = internal global [12 x i64] [i64 10, i64 32, i64 33554432, i64 33554458, i64 33554502, i64 33554560, i64 33554561, i64 33554563, i64 92274688, i64 92274689, i64 99614721, i64 101711880]
@__sancov_gen_cov_switch_values.26 = internal global [171 x i64] [i64 169, i64 32, i64 8218, i64 8219, i64 8220, i64 8221, i64 8222, i64 8223, i64 8224, i64 8225, i64 8226, i64 8227, i64 8228, i64 8229, i64 8230, i64 8231, i64 8233, i64 8234, i64 8237, i64 8238, i64 8239, i64 8240, i64 8241, i64 8242, i64 8243, i64 8244, i64 8704, i64 8705, i64 8706, i64 8707, i64 8708, i64 8710, i64 8711, i64 8712, i64 8713, i64 8714, i64 8715, i64 8716, i64 8717, i64 8718, i64 8719, i64 8720, i64 8721, i64 8722, i64 8736, i64 8737, i64 8738, i64 8739, i64 8752, i64 8753, i64 8754, i64 8755, i64 8756, i64 8757, i64 8758, i64 8759, i64 8760, i64 8761, i64 12033, i64 12034, i64 12035, i64 12036, i64 12037, i64 12038, i64 12039, i64 12040, i64 12041, i64 12042, i64 12043, i64 12044, i64 12045, i64 12046, i64 12047, i64 12080, i64 12081, i64 12082, i64 12083, i64 12084, i64 12085, i64 12086, i64 12112, i64 12113, i64 12114, i64 12115, i64 12116, i64 12117, i64 12118, i64 12119, i64 12120, i64 12121, i64 12122, i64 12128, i64 12800, i64 12801, i64 12802, i64 12803, i64 12804, i64 12805, i64 12806, i64 12807, i64 12808, i64 12809, i64 12810, i64 12811, i64 12812, i64 12813, i64 12814, i64 12815, i64 12816, i64 12817, i64 12818, i64 1080034440, i64 1080034448, i64 1086849152, i64 1086849153, i64 1086849154, i64 1086849155, i64 1086849156, i64 1086849157, i64 1086849158, i64 1086849159, i64 1086849160, i64 1086849161, i64 1086849162, i64 1086849163, i64 1086849164, i64 1086849165, i64 1086849166, i64 1086849167, i64 1086849168, i64 1086849169, i64 1086849170, i64 1086849171, i64 1086849172, i64 1086849173, i64 1086849174, i64 1086849175, i64 1086849176, i64 1141047296, i64 1141047297, i64 1141047298, i64 1141047299, i64 1141047300, i64 1141047301, i64 1141047302, i64 1141047303, i64 1141047304, i64 1141047305, i64 1141047306, i64 1141047307, i64 1141047308, i64 1141047309, i64 1141047310, i64 1141047311, i64 1141047312, i64 1141047313, i64 1141047314, i64 1141047315, i64 1141047316, i64 1141047317, i64 1141047318, i64 1141047319, i64 1141047320, i64 1141047321, i64 1141047322, i64 1141047323, i64 1141047324, i64 1141047325, i64 1141047326, i64 1141047327, i64 1141047328]
@__sancov_gen_cov_switch_values.27 = internal global [91 x i64] [i64 89, i64 32, i64 8219, i64 8220, i64 8221, i64 8223, i64 8225, i64 8227, i64 8237, i64 8238, i64 8239, i64 8704, i64 8705, i64 8706, i64 8707, i64 8708, i64 8709, i64 8710, i64 8711, i64 8712, i64 8713, i64 8714, i64 8715, i64 8716, i64 8717, i64 8718, i64 8719, i64 8720, i64 8721, i64 8722, i64 8752, i64 12812, i64 1080034448, i64 1086849152, i64 1086849153, i64 1086849154, i64 1086849155, i64 1086849156, i64 1086849157, i64 1086849158, i64 1086849159, i64 1086849160, i64 1086849161, i64 1086849162, i64 1086849163, i64 1086849164, i64 1086849165, i64 1086849166, i64 1086849167, i64 1086849168, i64 1086849169, i64 1086849170, i64 1086849171, i64 1086849172, i64 1086849173, i64 1086849174, i64 1086849175, i64 1086849176, i64 1141047296, i64 1141047297, i64 1141047298, i64 1141047299, i64 1141047300, i64 1141047301, i64 1141047302, i64 1141047303, i64 1141047304, i64 1141047305, i64 1141047306, i64 1141047307, i64 1141047308, i64 1141047309, i64 1141047310, i64 1141047311, i64 1141047312, i64 1141047313, i64 1141047314, i64 1141047315, i64 1141047316, i64 1141047317, i64 1141047318, i64 1141047319, i64 1141047320, i64 1141047321, i64 1141047322, i64 1141047323, i64 1141047324, i64 1141047325, i64 1141047326, i64 1141047327, i64 1141047328]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.29 = private unnamed_addr constant [22 x i8] c"rt711_sdca_sdw_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 462, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"rt711_sdca_id\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 375, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"rt711_sdca_slave_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 340, i32 29 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 464, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"rt711_sdca_pm\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 457, i32 32 }
@___asan_gen_.47 = private unnamed_addr constant [22 x i8] c"rt711_sdca_mbq_regmap\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 126, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 352, i32 15 }
@___asan_gen_.53 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"rt711_sdca_regmap\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 113, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 356, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 127, i32 10 }
@___asan_gen_.65 = private unnamed_addr constant [24 x i8] c"rt711_sdca_mbq_defaults\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 71, i32 33 }
@___asan_gen_.68 = private unnamed_addr constant [24 x i8] c"rt711_sdca_reg_defaults\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [37 x i8] c"../sound/soc/codecs/rt711-sdca-sdw.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 14, i32 33 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 248, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 253, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 322, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 336, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 421, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [37 x i8] c"../sound/soc/codecs/rt711-sdca-sdw.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 444, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_rt711_sdca_sdw_driver_exit, ptr @__initcall__kmod_snd_soc_rt711_sdca__240_473_rt711_sdca_sdw_driver_init6, ptr @rt711_sdca_dev_resume._entry, ptr @rt711_sdca_dev_resume._entry_ptr, ptr @rt711_sdca_interrupt_callback._entry, ptr @rt711_sdca_interrupt_callback._entry.12, ptr @rt711_sdca_interrupt_callback._entry.16, ptr @rt711_sdca_interrupt_callback._entry_ptr, ptr @rt711_sdca_interrupt_callback._entry_ptr.14, ptr @rt711_sdca_interrupt_callback._entry_ptr.18, ptr @rt711_sdca_sdw_driver_exit, ptr @rt711_sdca_sdw_driver, ptr @rt711_sdca_id, ptr @rt711_sdca_slave_ops, ptr @.str, ptr @rt711_sdca_pm, ptr @rt711_sdca_sdw_probe._key, ptr @rt711_sdca_mbq_regmap, ptr @.str.1, ptr @rt711_sdca_sdw_probe._key.2, ptr @rt711_sdca_regmap, ptr @.str.3, ptr @.str.4, ptr @rt711_sdca_mbq_defaults, ptr @rt711_sdca_reg_defaults, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @rt711_sdca_interrupt_callback._rs, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_sdw_driver to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_id to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_slave_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_sdw_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_mbq_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_sdw_probe._key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_mbq_defaults to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_reg_defaults to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_interrupt_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_interrupt_callback._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_interrupt_callback._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_interrupt_callback._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_dev_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_sdw_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__sdw_register_driver(ptr noundef nonnull @rt711_sdca_sdw_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt711_sdca_sdw_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sdw_unregister_driver(ptr noundef nonnull @rt711_sdca_sdw_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdw_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sdw_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_sdw_probe(ptr noundef %slave, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__devm_regmap_init_sdw_mbq(ptr noundef %slave, ptr noundef nonnull @rt711_sdca_mbq_regmap, ptr noundef nonnull @rt711_sdca_sdw_probe._key, ptr noundef nonnull @.str.1) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @__devm_regmap_init_sdw(ptr noundef %slave, ptr noundef nonnull @rt711_sdca_regmap, ptr noundef nonnull @rt711_sdca_sdw_probe._key.2, ptr noundef nonnull @.str.3) #7
  %cmp.i18 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i18, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %call9 = tail call i32 @rt711_sdca_init(ptr noundef %dev, ptr noundef %call4, ptr noundef %call, ptr noundef %slave) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %1, %if.then6 ], [ %call9, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_sdw_remove(ptr nocapture noundef readonly %slave) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %hw_init = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_init, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %jack_detect_work = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 9
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jack_detect_work) #7
  %jack_btn_check_work = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 10
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jack_btn_check_work) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_sdw_mbq(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_sdw(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt711_sdca_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt711_sdca_mbq_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.caserange21 [
    i32 1077936785, label %entry.return_crit_edge
    i32 1077936786, label %entry.return_crit_edge26
    i32 1082134289, label %entry.return_crit_edge27
    i32 1082134290, label %entry.return_crit_edge28
    i32 1077938065, label %entry.return_crit_edge29
    i32 1077938066, label %entry.return_crit_edge30
    i32 1080033881, label %entry.return_crit_edge31
    i32 1080033882, label %entry.return_crit_edge32
    i32 1082133209, label %entry.return_crit_edge33
    i32 1082133210, label %entry.return_crit_edge34
  ]

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.caserange9:                                    ; preds = %sw.caserange21
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 99614720, i32 %1)
  %inbounds10 = icmp eq i32 %1, 99614720
  call void @__sanitizer_cov_trace_const_cmp4(i32 101711872, i32 %1)
  %inbounds = icmp eq i32 %1, 101711872
  %or.cond = or i1 %inbounds10, %inbounds
  br label %return

sw.caserange21:                                   ; preds = %entry
  %1 = and i32 %reg, -256
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %1, label %sw.caserange9 [
    i32 90177536, label %sw.caserange21.return_crit_edge
    i32 33554432, label %sw.caserange21.return_crit_edge35
    i32 92274688, label %sw.caserange21.return_crit_edge36
    i32 91226112, label %sw.caserange21.return_crit_edge37
    i32 95420416, label %sw.caserange21.return_crit_edge38
    i32 93323264, label %sw.caserange21.return_crit_edge39
  ]

sw.caserange21.return_crit_edge39:                ; preds = %sw.caserange21
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.caserange21.return_crit_edge38:                ; preds = %sw.caserange21
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.caserange21.return_crit_edge37:                ; preds = %sw.caserange21
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.caserange21.return_crit_edge36:                ; preds = %sw.caserange21
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.caserange21.return_crit_edge35:                ; preds = %sw.caserange21
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.caserange21.return_crit_edge:                  ; preds = %sw.caserange21
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.caserange21.return_crit_edge, %sw.caserange21.return_crit_edge35, %sw.caserange21.return_crit_edge36, %sw.caserange21.return_crit_edge37, %sw.caserange21.return_crit_edge38, %sw.caserange21.return_crit_edge39, %sw.caserange9, %entry.return_crit_edge, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34
  %retval.0 = phi i1 [ true, %sw.caserange21.return_crit_edge ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ %or.cond, %sw.caserange9 ], [ true, %sw.caserange21.return_crit_edge35 ], [ true, %sw.caserange21.return_crit_edge36 ], [ true, %sw.caserange21.return_crit_edge37 ], [ true, %sw.caserange21.return_crit_edge38 ], [ true, %sw.caserange21.return_crit_edge39 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt711_sdca_mbq_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %reg, label %sw.default [
    i32 33554432, label %entry.return_crit_edge
    i32 33554458, label %entry.return_crit_edge1
    i32 33554502, label %entry.return_crit_edge2
    i32 33554560, label %entry.return_crit_edge3
    i32 33554561, label %entry.return_crit_edge4
    i32 33554563, label %entry.return_crit_edge5
    i32 92274688, label %entry.return_crit_edge6
    i32 92274689, label %entry.return_crit_edge7
    i32 99614721, label %entry.return_crit_edge8
    i32 101711880, label %entry.return_crit_edge9
  ]

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt711_sdca_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %reg, label %sw.default [
    i32 12128, label %entry.return_crit_edge
    i32 1080034440, label %entry.return_crit_edge15
    i32 1080034448, label %entry.return_crit_edge16
    i32 1141047296, label %entry.return_crit_edge17
    i32 1141047297, label %entry.return_crit_edge18
    i32 1141047298, label %entry.return_crit_edge19
    i32 1141047299, label %entry.return_crit_edge20
    i32 1141047300, label %entry.return_crit_edge21
    i32 1141047301, label %entry.return_crit_edge22
    i32 1141047302, label %entry.return_crit_edge23
    i32 1141047303, label %entry.return_crit_edge24
    i32 1141047304, label %entry.return_crit_edge25
    i32 1141047305, label %entry.return_crit_edge26
    i32 1141047306, label %entry.return_crit_edge27
    i32 1141047307, label %entry.return_crit_edge28
    i32 1141047308, label %entry.return_crit_edge29
    i32 1141047309, label %entry.return_crit_edge30
    i32 1141047310, label %entry.return_crit_edge31
    i32 1141047311, label %entry.return_crit_edge32
    i32 1141047312, label %entry.return_crit_edge33
    i32 1141047313, label %entry.return_crit_edge34
    i32 1141047314, label %entry.return_crit_edge35
    i32 1141047315, label %entry.return_crit_edge36
    i32 1141047316, label %entry.return_crit_edge37
    i32 1141047317, label %entry.return_crit_edge38
    i32 1141047318, label %entry.return_crit_edge39
    i32 1141047319, label %entry.return_crit_edge40
    i32 1141047320, label %entry.return_crit_edge41
    i32 1141047321, label %entry.return_crit_edge42
    i32 1141047322, label %entry.return_crit_edge43
    i32 1141047323, label %entry.return_crit_edge44
    i32 1141047324, label %entry.return_crit_edge45
    i32 1141047325, label %entry.return_crit_edge46
    i32 1141047326, label %entry.return_crit_edge47
    i32 1141047327, label %entry.return_crit_edge48
    i32 1141047328, label %entry.return_crit_edge49
    i32 1086849152, label %entry.return_crit_edge50
    i32 1086849153, label %entry.return_crit_edge51
    i32 1086849154, label %entry.return_crit_edge52
    i32 1086849155, label %entry.return_crit_edge53
    i32 1086849156, label %entry.return_crit_edge54
    i32 1086849157, label %entry.return_crit_edge55
    i32 1086849158, label %entry.return_crit_edge56
    i32 1086849159, label %entry.return_crit_edge57
    i32 1086849160, label %entry.return_crit_edge58
    i32 1086849161, label %entry.return_crit_edge59
    i32 1086849162, label %entry.return_crit_edge60
    i32 1086849163, label %entry.return_crit_edge61
    i32 1086849164, label %entry.return_crit_edge62
    i32 1086849165, label %entry.return_crit_edge63
    i32 1086849166, label %entry.return_crit_edge64
    i32 1086849167, label %entry.return_crit_edge65
    i32 1086849168, label %entry.return_crit_edge66
    i32 1086849169, label %entry.return_crit_edge67
    i32 1086849170, label %entry.return_crit_edge68
    i32 1086849171, label %entry.return_crit_edge69
    i32 1086849172, label %entry.return_crit_edge70
    i32 1086849173, label %entry.return_crit_edge71
    i32 1086849174, label %entry.return_crit_edge72
    i32 1086849175, label %entry.return_crit_edge73
    i32 1086849176, label %entry.return_crit_edge74
    i32 12800, label %entry.return_crit_edge75
    i32 12801, label %entry.return_crit_edge76
    i32 12802, label %entry.return_crit_edge77
    i32 12803, label %entry.return_crit_edge78
    i32 12804, label %entry.return_crit_edge79
    i32 12805, label %entry.return_crit_edge80
    i32 12806, label %entry.return_crit_edge81
    i32 12807, label %entry.return_crit_edge82
    i32 12808, label %entry.return_crit_edge83
    i32 12809, label %entry.return_crit_edge84
    i32 12810, label %entry.return_crit_edge85
    i32 12811, label %entry.return_crit_edge86
    i32 12812, label %entry.return_crit_edge87
    i32 12813, label %entry.return_crit_edge88
    i32 12814, label %entry.return_crit_edge89
    i32 12815, label %entry.return_crit_edge90
    i32 12816, label %entry.return_crit_edge91
    i32 12817, label %entry.return_crit_edge92
    i32 12818, label %entry.return_crit_edge93
    i32 12112, label %entry.return_crit_edge94
    i32 12113, label %entry.return_crit_edge95
    i32 12114, label %entry.return_crit_edge96
    i32 12115, label %entry.return_crit_edge97
    i32 12116, label %entry.return_crit_edge98
    i32 12117, label %entry.return_crit_edge99
    i32 12118, label %entry.return_crit_edge100
    i32 12119, label %entry.return_crit_edge101
    i32 12120, label %entry.return_crit_edge102
    i32 12121, label %entry.return_crit_edge103
    i32 12122, label %entry.return_crit_edge104
    i32 12080, label %entry.return_crit_edge105
    i32 12081, label %entry.return_crit_edge106
    i32 12082, label %entry.return_crit_edge107
    i32 12083, label %entry.return_crit_edge108
    i32 12084, label %entry.return_crit_edge109
    i32 12085, label %entry.return_crit_edge110
    i32 12086, label %entry.return_crit_edge111
    i32 12033, label %entry.return_crit_edge112
    i32 12034, label %entry.return_crit_edge113
    i32 12035, label %entry.return_crit_edge114
    i32 12036, label %entry.return_crit_edge115
    i32 12037, label %entry.return_crit_edge116
    i32 12038, label %entry.return_crit_edge117
    i32 12039, label %entry.return_crit_edge118
    i32 12040, label %entry.return_crit_edge119
    i32 12041, label %entry.return_crit_edge120
    i32 12042, label %entry.return_crit_edge121
    i32 12043, label %entry.return_crit_edge122
    i32 12044, label %entry.return_crit_edge123
    i32 12045, label %entry.return_crit_edge124
    i32 12046, label %entry.return_crit_edge125
    i32 12047, label %entry.return_crit_edge126
    i32 8752, label %entry.return_crit_edge127
    i32 8753, label %entry.return_crit_edge128
    i32 8754, label %entry.return_crit_edge129
    i32 8755, label %entry.return_crit_edge130
    i32 8756, label %entry.return_crit_edge131
    i32 8757, label %entry.return_crit_edge132
    i32 8758, label %entry.return_crit_edge133
    i32 8759, label %entry.return_crit_edge134
    i32 8760, label %entry.return_crit_edge135
    i32 8761, label %entry.return_crit_edge136
    i32 8736, label %entry.return_crit_edge137
    i32 8737, label %entry.return_crit_edge138
    i32 8738, label %entry.return_crit_edge139
    i32 8739, label %entry.return_crit_edge140
    i32 8710, label %entry.return_crit_edge141
    i32 8711, label %entry.return_crit_edge142
    i32 8712, label %entry.return_crit_edge143
    i32 8713, label %entry.return_crit_edge144
    i32 8714, label %entry.return_crit_edge145
    i32 8715, label %entry.return_crit_edge146
    i32 8716, label %entry.return_crit_edge147
    i32 8717, label %entry.return_crit_edge148
    i32 8718, label %entry.return_crit_edge149
    i32 8719, label %entry.return_crit_edge150
    i32 8720, label %entry.return_crit_edge151
    i32 8721, label %entry.return_crit_edge152
    i32 8722, label %entry.return_crit_edge153
    i32 8704, label %entry.return_crit_edge154
    i32 8705, label %entry.return_crit_edge155
    i32 8706, label %entry.return_crit_edge156
    i32 8707, label %entry.return_crit_edge157
    i32 8708, label %entry.return_crit_edge158
    i32 8237, label %entry.return_crit_edge159
    i32 8238, label %entry.return_crit_edge160
    i32 8239, label %entry.return_crit_edge161
    i32 8240, label %entry.return_crit_edge162
    i32 8241, label %entry.return_crit_edge163
    i32 8242, label %entry.return_crit_edge164
    i32 8243, label %entry.return_crit_edge165
    i32 8244, label %entry.return_crit_edge166
    i32 8233, label %entry.return_crit_edge167
    i32 8234, label %entry.return_crit_edge168
    i32 8218, label %entry.return_crit_edge169
    i32 8219, label %entry.return_crit_edge170
    i32 8220, label %entry.return_crit_edge171
    i32 8221, label %entry.return_crit_edge172
    i32 8222, label %entry.return_crit_edge173
    i32 8223, label %entry.return_crit_edge174
    i32 8224, label %entry.return_crit_edge175
    i32 8225, label %entry.return_crit_edge176
    i32 8226, label %entry.return_crit_edge177
    i32 8227, label %entry.return_crit_edge178
    i32 8228, label %entry.return_crit_edge179
    i32 8229, label %entry.return_crit_edge180
    i32 8230, label %entry.return_crit_edge181
    i32 8231, label %entry.return_crit_edge182
  ]

entry.return_crit_edge182:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge181:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge180:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge179:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge178:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge177:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge176:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge175:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge174:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge173:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge172:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge171:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge170:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge169:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge168:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge167:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge166:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge165:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge164:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge163:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge162:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge161:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge160:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge159:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge158:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge157:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge156:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge155:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge154:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge153:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge152:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge151:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge150:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge149:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge148:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge147:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge146:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge145:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge144:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge143:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge142:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge141:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge140:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge139:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge138:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge134:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge133:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge132:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge131:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge129:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge128:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge127:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge126:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge125:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge124:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge123:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge122:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge121:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge119:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge118:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge117:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge116:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110, %entry.return_crit_edge111, %entry.return_crit_edge112, %entry.return_crit_edge113, %entry.return_crit_edge114, %entry.return_crit_edge115, %entry.return_crit_edge116, %entry.return_crit_edge117, %entry.return_crit_edge118, %entry.return_crit_edge119, %entry.return_crit_edge120, %entry.return_crit_edge121, %entry.return_crit_edge122, %entry.return_crit_edge123, %entry.return_crit_edge124, %entry.return_crit_edge125, %entry.return_crit_edge126, %entry.return_crit_edge127, %entry.return_crit_edge128, %entry.return_crit_edge129, %entry.return_crit_edge130, %entry.return_crit_edge131, %entry.return_crit_edge132, %entry.return_crit_edge133, %entry.return_crit_edge134, %entry.return_crit_edge135, %entry.return_crit_edge136, %entry.return_crit_edge137, %entry.return_crit_edge138, %entry.return_crit_edge139, %entry.return_crit_edge140, %entry.return_crit_edge141, %entry.return_crit_edge142, %entry.return_crit_edge143, %entry.return_crit_edge144, %entry.return_crit_edge145, %entry.return_crit_edge146, %entry.return_crit_edge147, %entry.return_crit_edge148, %entry.return_crit_edge149, %entry.return_crit_edge150, %entry.return_crit_edge151, %entry.return_crit_edge152, %entry.return_crit_edge153, %entry.return_crit_edge154, %entry.return_crit_edge155, %entry.return_crit_edge156, %entry.return_crit_edge157, %entry.return_crit_edge158, %entry.return_crit_edge159, %entry.return_crit_edge160, %entry.return_crit_edge161, %entry.return_crit_edge162, %entry.return_crit_edge163, %entry.return_crit_edge164, %entry.return_crit_edge165, %entry.return_crit_edge166, %entry.return_crit_edge167, %entry.return_crit_edge168, %entry.return_crit_edge169, %entry.return_crit_edge170, %entry.return_crit_edge171, %entry.return_crit_edge172, %entry.return_crit_edge173, %entry.return_crit_edge174, %entry.return_crit_edge175, %entry.return_crit_edge176, %entry.return_crit_edge177, %entry.return_crit_edge178, %entry.return_crit_edge179, %entry.return_crit_edge180, %entry.return_crit_edge181, %entry.return_crit_edge182
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ], [ true, %entry.return_crit_edge111 ], [ true, %entry.return_crit_edge112 ], [ true, %entry.return_crit_edge113 ], [ true, %entry.return_crit_edge114 ], [ true, %entry.return_crit_edge115 ], [ true, %entry.return_crit_edge116 ], [ true, %entry.return_crit_edge117 ], [ true, %entry.return_crit_edge118 ], [ true, %entry.return_crit_edge119 ], [ true, %entry.return_crit_edge120 ], [ true, %entry.return_crit_edge121 ], [ true, %entry.return_crit_edge122 ], [ true, %entry.return_crit_edge123 ], [ true, %entry.return_crit_edge124 ], [ true, %entry.return_crit_edge125 ], [ true, %entry.return_crit_edge126 ], [ true, %entry.return_crit_edge127 ], [ true, %entry.return_crit_edge128 ], [ true, %entry.return_crit_edge129 ], [ true, %entry.return_crit_edge130 ], [ true, %entry.return_crit_edge131 ], [ true, %entry.return_crit_edge132 ], [ true, %entry.return_crit_edge133 ], [ true, %entry.return_crit_edge134 ], [ true, %entry.return_crit_edge135 ], [ true, %entry.return_crit_edge136 ], [ true, %entry.return_crit_edge137 ], [ true, %entry.return_crit_edge138 ], [ true, %entry.return_crit_edge139 ], [ true, %entry.return_crit_edge140 ], [ true, %entry.return_crit_edge141 ], [ true, %entry.return_crit_edge142 ], [ true, %entry.return_crit_edge143 ], [ true, %entry.return_crit_edge144 ], [ true, %entry.return_crit_edge145 ], [ true, %entry.return_crit_edge146 ], [ true, %entry.return_crit_edge147 ], [ true, %entry.return_crit_edge148 ], [ true, %entry.return_crit_edge149 ], [ true, %entry.return_crit_edge150 ], [ true, %entry.return_crit_edge151 ], [ true, %entry.return_crit_edge152 ], [ true, %entry.return_crit_edge153 ], [ true, %entry.return_crit_edge154 ], [ true, %entry.return_crit_edge155 ], [ true, %entry.return_crit_edge156 ], [ true, %entry.return_crit_edge157 ], [ true, %entry.return_crit_edge158 ], [ true, %entry.return_crit_edge159 ], [ true, %entry.return_crit_edge160 ], [ true, %entry.return_crit_edge161 ], [ true, %entry.return_crit_edge162 ], [ true, %entry.return_crit_edge163 ], [ true, %entry.return_crit_edge164 ], [ true, %entry.return_crit_edge165 ], [ true, %entry.return_crit_edge166 ], [ true, %entry.return_crit_edge167 ], [ true, %entry.return_crit_edge168 ], [ true, %entry.return_crit_edge169 ], [ true, %entry.return_crit_edge170 ], [ true, %entry.return_crit_edge171 ], [ true, %entry.return_crit_edge172 ], [ true, %entry.return_crit_edge173 ], [ true, %entry.return_crit_edge174 ], [ true, %entry.return_crit_edge175 ], [ true, %entry.return_crit_edge176 ], [ true, %entry.return_crit_edge177 ], [ true, %entry.return_crit_edge178 ], [ true, %entry.return_crit_edge179 ], [ true, %entry.return_crit_edge180 ], [ true, %entry.return_crit_edge181 ], [ true, %entry.return_crit_edge182 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt711_sdca_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %reg, label %sw.default [
    i32 8219, label %entry.return_crit_edge
    i32 8220, label %entry.return_crit_edge6
    i32 8221, label %entry.return_crit_edge7
    i32 8223, label %entry.return_crit_edge8
    i32 8225, label %entry.return_crit_edge9
    i32 8227, label %entry.return_crit_edge10
    i32 8752, label %entry.return_crit_edge11
    i32 12812, label %entry.return_crit_edge12
    i32 1080034448, label %entry.return_crit_edge13
    i32 1141047296, label %entry.return_crit_edge14
    i32 1141047297, label %entry.return_crit_edge15
    i32 1141047298, label %entry.return_crit_edge16
    i32 1141047299, label %entry.return_crit_edge17
    i32 1141047300, label %entry.return_crit_edge18
    i32 1141047301, label %entry.return_crit_edge19
    i32 1141047302, label %entry.return_crit_edge20
    i32 1141047303, label %entry.return_crit_edge21
    i32 1141047304, label %entry.return_crit_edge22
    i32 1141047305, label %entry.return_crit_edge23
    i32 1141047306, label %entry.return_crit_edge24
    i32 1141047307, label %entry.return_crit_edge25
    i32 1141047308, label %entry.return_crit_edge26
    i32 1141047309, label %entry.return_crit_edge27
    i32 1141047310, label %entry.return_crit_edge28
    i32 1141047311, label %entry.return_crit_edge29
    i32 1141047312, label %entry.return_crit_edge30
    i32 1141047313, label %entry.return_crit_edge31
    i32 1141047314, label %entry.return_crit_edge32
    i32 1141047315, label %entry.return_crit_edge33
    i32 1141047316, label %entry.return_crit_edge34
    i32 1141047317, label %entry.return_crit_edge35
    i32 1141047318, label %entry.return_crit_edge36
    i32 1141047319, label %entry.return_crit_edge37
    i32 1141047320, label %entry.return_crit_edge38
    i32 1141047321, label %entry.return_crit_edge39
    i32 1141047322, label %entry.return_crit_edge40
    i32 1141047323, label %entry.return_crit_edge41
    i32 1141047324, label %entry.return_crit_edge42
    i32 1141047325, label %entry.return_crit_edge43
    i32 1141047326, label %entry.return_crit_edge44
    i32 1141047327, label %entry.return_crit_edge45
    i32 1141047328, label %entry.return_crit_edge46
    i32 1086849152, label %entry.return_crit_edge47
    i32 1086849153, label %entry.return_crit_edge48
    i32 1086849154, label %entry.return_crit_edge49
    i32 1086849155, label %entry.return_crit_edge50
    i32 1086849156, label %entry.return_crit_edge51
    i32 1086849157, label %entry.return_crit_edge52
    i32 1086849158, label %entry.return_crit_edge53
    i32 1086849159, label %entry.return_crit_edge54
    i32 1086849160, label %entry.return_crit_edge55
    i32 1086849161, label %entry.return_crit_edge56
    i32 1086849162, label %entry.return_crit_edge57
    i32 1086849163, label %entry.return_crit_edge58
    i32 1086849164, label %entry.return_crit_edge59
    i32 1086849165, label %entry.return_crit_edge60
    i32 1086849166, label %entry.return_crit_edge61
    i32 1086849167, label %entry.return_crit_edge62
    i32 1086849168, label %entry.return_crit_edge63
    i32 1086849169, label %entry.return_crit_edge64
    i32 1086849170, label %entry.return_crit_edge65
    i32 1086849171, label %entry.return_crit_edge66
    i32 1086849172, label %entry.return_crit_edge67
    i32 1086849173, label %entry.return_crit_edge68
    i32 1086849174, label %entry.return_crit_edge69
    i32 1086849175, label %entry.return_crit_edge70
    i32 1086849176, label %entry.return_crit_edge71
    i32 8704, label %entry.return_crit_edge72
    i32 8705, label %entry.return_crit_edge73
    i32 8706, label %entry.return_crit_edge74
    i32 8707, label %entry.return_crit_edge75
    i32 8708, label %entry.return_crit_edge76
    i32 8709, label %entry.return_crit_edge77
    i32 8710, label %entry.return_crit_edge78
    i32 8711, label %entry.return_crit_edge79
    i32 8712, label %entry.return_crit_edge80
    i32 8713, label %entry.return_crit_edge81
    i32 8714, label %entry.return_crit_edge82
    i32 8715, label %entry.return_crit_edge83
    i32 8716, label %entry.return_crit_edge84
    i32 8717, label %entry.return_crit_edge85
    i32 8718, label %entry.return_crit_edge86
    i32 8719, label %entry.return_crit_edge87
    i32 8720, label %entry.return_crit_edge88
    i32 8721, label %entry.return_crit_edge89
    i32 8722, label %entry.return_crit_edge90
    i32 8237, label %entry.return_crit_edge91
    i32 8238, label %entry.return_crit_edge92
    i32 8239, label %entry.return_crit_edge93
  ]

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_read_prop(ptr noundef %slave) #2 align 64 {
entry:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #7
  %scp_int1_mask = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 19
  %0 = ptrtoint ptr %scp_int1_mask to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 3, ptr %scp_int1_mask, align 4
  %quirks = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 20
  %1 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %quirks, align 4
  %is_sdca = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 21
  %2 = ptrtoint ptr %is_sdca to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %is_sdca, align 4
  %paging_support = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 9
  %3 = ptrtoint ptr %paging_support to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %paging_support, align 1
  %source_ports = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 14
  %4 = ptrtoint ptr %source_ports to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 20, ptr %source_ports, align 4
  %sink_ports = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 15
  %5 = ptrtoint ptr %sink_ports to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %sink_ports, align 4
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 168, i32 noundef 3520) #7
  %src_dpn_prop = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 17
  %6 = ptrtoint ptr %src_dpn_prop to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5.i.i, ptr %src_dpn_prop, align 4
  %tobool317.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool317.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %source_ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %source_ports, align 4
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %addr, align 4
  %call320 = call i32 @_find_next_bit_be(ptr noundef nonnull %addr, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call320)
  %cmp798 = icmp ult i32 %call320, 32
  br i1 %cmp798, label %if.end.for.body_crit_edge, label %if.end.cond.false648_crit_edge

if.end.cond.false648_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false648

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %bit.0800 = phi i32 [ %call326, %for.body.for.body_crit_edge ], [ %call320, %if.end.for.body_crit_edge ]
  %i.0799 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i, i32 %i.0799
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %bit.0800, ptr %arrayidx, align 4
  %type = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i, i32 %i.0799, i32 5
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %type, align 4
  %simple_ch_prep_sm = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i, i32 %i.0799, i32 7
  %12 = ptrtoint ptr %simple_ch_prep_sm to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %simple_ch_prep_sm, align 4
  %ch_prep_timeout = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i, i32 %i.0799, i32 8
  %13 = ptrtoint ptr %ch_prep_timeout to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 10, ptr %ch_prep_timeout, align 4
  %inc = add i32 %i.0799, 1
  %add325 = add nuw nsw i32 %bit.0800, 1
  %call326 = call i32 @_find_next_bit_be(ptr noundef nonnull %addr, i32 noundef 32, i32 noundef %add325) #7
  %cmp = icmp ult i32 %call326, 32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cond.false648_crit_edge

for.body.cond.false648_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false648

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cond.false648:                                    ; preds = %for.body.cond.false648_crit_edge, %if.end.cond.false648_crit_edge
  %14 = ptrtoint ptr %sink_ports to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sink_ports, align 4
  %call.i = call i32 @__sw_hweight32(i32 noundef %15) #7
  %16 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 84) #7
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !78

devm_kcalloc.exit.thread:                         ; preds = %cond.false648
  call void @__sanitizer_cov_trace_pc() #9
  %sink_dpn_prop796 = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 18
  %18 = ptrtoint ptr %sink_dpn_prop796 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %sink_dpn_prop796, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %cond.false648
  %19 = extractvalue { i32, i1 } %16, 0
  %call5.i.i794 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %19, i32 noundef 3520) #7
  %sink_dpn_prop = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 18
  %20 = ptrtoint ptr %sink_dpn_prop to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5.i.i794, ptr %sink_dpn_prop, align 4
  %tobool656.not = icmp eq ptr %call5.i.i794, null
  br i1 %tobool656.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end658

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end658:                                        ; preds = %devm_kcalloc.exit
  %21 = ptrtoint ptr %sink_ports to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sink_ports, align 4
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %addr, align 4
  %call661 = call i32 @_find_next_bit_be(ptr noundef nonnull %addr, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call661)
  %cmp663801 = icmp ult i32 %call661, 32
  br i1 %cmp663801, label %if.end658.for.body665_crit_edge, label %if.end658.for.end678_crit_edge

if.end658.for.end678_crit_edge:                   ; preds = %if.end658
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end678

if.end658.for.body665_crit_edge:                  ; preds = %if.end658
  br label %for.body665

for.body665:                                      ; preds = %for.body665.for.body665_crit_edge, %if.end658.for.body665_crit_edge
  %bit.1803 = phi i32 [ %call677, %for.body665.for.body665_crit_edge ], [ %call661, %if.end658.for.body665_crit_edge ]
  %j.0802 = phi i32 [ %inc674, %for.body665.for.body665_crit_edge ], [ 0, %if.end658.for.body665_crit_edge ]
  %arrayidx666 = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i794, i32 %j.0802
  %24 = ptrtoint ptr %arrayidx666 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %bit.1803, ptr %arrayidx666, align 4
  %type669 = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i794, i32 %j.0802, i32 5
  %25 = ptrtoint ptr %type669 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %type669, align 4
  %simple_ch_prep_sm671 = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i794, i32 %j.0802, i32 7
  %26 = ptrtoint ptr %simple_ch_prep_sm671 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %simple_ch_prep_sm671, align 4
  %ch_prep_timeout673 = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i794, i32 %j.0802, i32 8
  %27 = ptrtoint ptr %ch_prep_timeout673 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 10, ptr %ch_prep_timeout673, align 4
  %inc674 = add i32 %j.0802, 1
  %add676 = add nuw nsw i32 %bit.1803, 1
  %call677 = call i32 @_find_next_bit_be(ptr noundef nonnull %addr, i32 noundef 32, i32 noundef %add676) #7
  %cmp663 = icmp ult i32 %call677, 32
  br i1 %cmp663, label %for.body665.for.body665_crit_edge, label %for.body665.for.end678_crit_edge

for.body665.for.end678_crit_edge:                 ; preds = %for.body665
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end678

for.body665.for.body665_crit_edge:                ; preds = %for.body665
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body665

for.end678:                                       ; preds = %for.body665.for.end678_crit_edge, %if.end658.for.end678_crit_edge
  %clk_stop_timeout = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 5
  %28 = ptrtoint ptr %clk_stop_timeout to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 20, ptr %clk_stop_timeout, align 4
  %wake_capable = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %wake_capable to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %wake_capable, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end678, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end678 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_interrupt_callback(ptr noundef %slave, ptr nocapture noundef readonly %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %driver_data.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt711_sdca_interrupt_callback.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt711_sdca_interrupt_callback, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !79

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %control_port = getelementptr inbounds %struct.sdw_slave_intr_status, ptr %status, i32 0, i32 1
  %2 = ptrtoint ptr %control_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %control_port, align 1
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status, align 1, !range !77
  %6 = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt711_sdca_interrupt_callback.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %6) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %jack_detect_work = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 9
  %call8 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jack_detect_work) #7
  br i1 %call8, label %do.end12, label %do.end.if.end19_crit_edge

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6) #10
  %scp_sdca_stat214 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %scp_sdca_stat214 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %scp_sdca_stat214, align 4
  br label %if.end19

if.end19:                                         ; preds = %do.end12, %do.end.if.end19_crit_edge
  %scp_sdca_stat2.0 = phi i32 [ 0, %do.end.if.end19_crit_edge ], [ %8, %do.end12 ]
  %disable_irq_lock = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %disable_irq_lock, i32 noundef 0) #7
  %slave20 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %slave20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %slave20, align 4
  %call21 = tail call i32 @sdw_read_no_pm(ptr noundef %10, i32 noundef 88) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.end19.io_error_crit_edge, label %if.end24

if.end19.io_error_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %io_error

if.end24:                                         ; preds = %if.end19
  %scp_sdca_stat125 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %scp_sdca_stat125 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call21, ptr %scp_sdca_stat125, align 4
  %12 = ptrtoint ptr %slave20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %slave20, align 4
  %call27 = tail call i32 @sdw_read_no_pm(ptr noundef %13, i32 noundef 89) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end24.io_error_crit_edge, label %if.end31

if.end24.io_error_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %io_error

if.end31:                                         ; preds = %if.end24
  %scp_sdca_stat232 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 17
  %or = or i32 %call27, %scp_sdca_stat2.0
  %14 = ptrtoint ptr %scp_sdca_stat232 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %scp_sdca_stat232, align 4
  br label %do.body37

do.body37:                                        ; preds = %if.end88.do.body37_crit_edge, %if.end31
  %count.0 = phi i32 [ 0, %if.end31 ], [ %inc, %if.end88.do.body37_crit_edge ]
  %15 = ptrtoint ptr %slave20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %slave20, align 4
  %call39 = tail call i32 @sdw_read_no_pm(ptr noundef %16, i32 noundef 88) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %do.body37.io_error_crit_edge, label %if.end43

do.body37.io_error_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  br label %io_error

if.end43:                                         ; preds = %do.body37
  %and = and i32 %call39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %if.end43.if.end52_crit_edge, label %if.then45

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then45:                                        ; preds = %if.end43
  %17 = ptrtoint ptr %slave20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %slave20, align 4
  %call47 = tail call i32 @sdw_write_no_pm(ptr noundef %18, i32 noundef 88, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then45.io_error_crit_edge, label %if.then45.if.end52_crit_edge

if.then45.if.end52_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then45.io_error_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %io_error

if.end52:                                         ; preds = %if.then45.if.end52_crit_edge, %if.end43.if.end52_crit_edge
  %19 = ptrtoint ptr %slave20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %slave20, align 4
  %call54 = tail call i32 @sdw_read_no_pm(ptr noundef %20, i32 noundef 89) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end52.io_error_crit_edge, label %if.end58

if.end52.io_error_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %io_error

if.end58:                                         ; preds = %if.end52
  %and59 = and i32 %call54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end58.if.end68_crit_edge, label %if.then61

if.end58.if.end68_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then61:                                        ; preds = %if.end58
  %21 = ptrtoint ptr %slave20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %slave20, align 4
  %call63 = tail call i32 @sdw_write_no_pm(ptr noundef %22, i32 noundef 89, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.then61.io_error_crit_edge, label %if.then61.if.end68_crit_edge

if.then61.if.end68_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then61.io_error_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  br label %io_error

if.end68:                                         ; preds = %if.then61.if.end68_crit_edge, %if.end58.if.end68_crit_edge
  %23 = ptrtoint ptr %slave20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %slave20, align 4
  %call70 = tail call i32 @sdw_read_no_pm(ptr noundef %24, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.end68.io_error_crit_edge, label %if.end74

if.end68.io_error_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %io_error

if.end74:                                         ; preds = %if.end68
  %and75 = and i32 %call70, 8
  %25 = ptrtoint ptr %slave20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %slave20, align 4
  %call77 = tail call i32 @sdw_read_no_pm(ptr noundef %26, i32 noundef 88) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.end74.io_error_crit_edge, label %if.end81

if.end74.io_error_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %io_error

if.end81:                                         ; preds = %if.end74
  %27 = ptrtoint ptr %slave20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %slave20, align 4
  %call84 = tail call i32 @sdw_read_no_pm(ptr noundef %28, i32 noundef 89) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.end81.io_error_crit_edge, label %if.end88

if.end81.io_error_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %io_error

if.end88:                                         ; preds = %if.end81
  %and82 = and i32 %call77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool90.not = icmp ne i32 %and82, 0
  %and89 = and i32 %call84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool91.not = icmp ne i32 %and89, 0
  %or.cond = select i1 %tobool90.not, i1 true, i1 %tobool91.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool92 = icmp ne i32 %and75, 0
  %spec.select184 = select i1 %or.cond, i1 true, i1 %tobool92
  %inc = add nuw nsw i32 %count.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count.0)
  %cmp96 = icmp ult i32 %count.0, 2
  %or.cond183 = select i1 %spec.select184, i1 %cmp96, i1 false
  br i1 %or.cond183, label %if.end88.do.body37_crit_edge, label %do.end98

if.end88.do.body37_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body37

do.end98:                                         ; preds = %if.end88
  br i1 %spec.select184, label %do.end103, label %do.end98.if.end107_crit_edge

do.end98.if.end107_crit_edge:                     ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

do.end103:                                        ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %scp_sdca_stat125 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %scp_sdca_stat125, align 4
  %31 = ptrtoint ptr %scp_sdca_stat232 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %scp_sdca_stat232, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.6, i32 noundef %30, i32 noundef %32) #10
  br label %if.end107

if.end107:                                        ; preds = %do.end103, %do.end98.if.end107_crit_edge
  %33 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %status, align 1, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool109.not = icmp eq i8 %34, 0
  br i1 %tobool109.not, label %if.end107.if.end116_crit_edge, label %land.lhs.true

if.end107.if.end116_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

land.lhs.true:                                    ; preds = %if.end107
  %disable_irq = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 13
  %35 = ptrtoint ptr %disable_irq to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %disable_irq, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool111.not = icmp eq i8 %36, 0
  br i1 %tobool111.not, label %if.then112, label %land.lhs.true.if.end116_crit_edge

land.lhs.true.if.end116_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

if.then112:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %37 = load ptr, ptr @system_power_efficient_wq, align 4
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %37, ptr noundef %jack_detect_work, i32 noundef 3) #7
  br label %if.end116

if.end116:                                        ; preds = %if.then112, %land.lhs.true.if.end116_crit_edge, %if.end107.if.end116_crit_edge
  tail call void @mutex_unlock(ptr noundef %disable_irq_lock) #7
  br label %cleanup

io_error:                                         ; preds = %if.end81.io_error_crit_edge, %if.end74.io_error_crit_edge, %if.end68.io_error_crit_edge, %if.then61.io_error_crit_edge, %if.end52.io_error_crit_edge, %if.then45.io_error_crit_edge, %do.body37.io_error_crit_edge, %if.end24.io_error_crit_edge, %if.end19.io_error_crit_edge
  %ret.0 = phi i32 [ %call21, %if.end19.io_error_crit_edge ], [ %call27, %if.end24.io_error_crit_edge ], [ %call84, %if.end81.io_error_crit_edge ], [ %call77, %if.end74.io_error_crit_edge ], [ %call70, %if.end68.io_error_crit_edge ], [ %call63, %if.then61.io_error_crit_edge ], [ %call54, %if.end52.io_error_crit_edge ], [ %call47, %if.then45.io_error_crit_edge ], [ %call39, %do.body37.io_error_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %disable_irq_lock) #7
  %call119 = tail call i32 @___ratelimit(ptr noundef nonnull @rt711_sdca_interrupt_callback._rs, ptr noundef nonnull @.str.6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %io_error.cleanup_crit_edge, label %do.end124

io_error.cleanup_crit_edge:                       ; preds = %io_error
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end124:                                        ; preds = %io_error
  call void @__sanitizer_cov_trace_pc() #9
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.6, i32 noundef %ret.0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end124, %io_error.cleanup_crit_edge, %if.end116
  %retval.0 = phi i32 [ 0, %if.end116 ], [ %ret.0, %do.end124 ], [ %ret.0, %io_error.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_update_status(ptr noundef %slave, i32 noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %driver_data.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status1 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %status, ptr %status1, align 4
  %3 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %status, label %entry.if.end10_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then3
  ]

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hw_init = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %hw_init to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %hw_init, align 4
  br label %if.end10

if.then3:                                         ; preds = %entry
  %hs_jack = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %hs_jack to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hs_jack, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then3.if.end10_crit_edge, label %if.then4

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then4:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %slave5 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %slave5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %slave5, align 4
  %call6 = tail call i32 @sdw_write_no_pm(ptr noundef %8, i32 noundef 92, i8 noundef zeroext 1) #7
  %9 = ptrtoint ptr %slave5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %slave5, align 4
  %call8 = tail call i32 @sdw_write_no_pm(ptr noundef %10, i32 noundef 93, i8 noundef zeroext 1) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %if.then3.if.end10_crit_edge, %if.then, %entry.if.end10_crit_edge
  %hw_init11 = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %hw_init11 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hw_init11, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool12.not = icmp eq i8 %12, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end10
  %13 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp14.not = icmp eq i32 %14, 1
  br i1 %cmp14.not, label %if.end16, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call i32 @rt711_sdca_io_init(ptr noundef %dev, ptr noundef %slave) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %lor.lhs.false.cleanup_crit_edge, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end16 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_read_no_pm(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_write_no_pm(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt711_sdca_io_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_dev_system_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hw_init = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_init, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %disable_irq_lock = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %disable_irq_lock, i32 noundef 0) #7
  %disable_irq = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %disable_irq to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %disable_irq, align 4
  %call1 = tail call i32 @sdw_update_no_pm(ptr noundef %add.ptr, i32 noundef 92, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  %call2 = tail call i32 @sdw_update_no_pm(ptr noundef %add.ptr, i32 noundef 93, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  tail call void @mutex_unlock(ptr noundef %disable_irq_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp4 = icmp slt i32 %call2, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4
  br i1 %or.cond, label %do.body, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt711_sdca_dev_system_suspend.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt711_sdca_dev_system_suspend, %if.then11)) #7
          to label %if.end14 [label %if.then11], !srcloc !79

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt711_sdca_dev_system_suspend.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %do.body, %if.end.if.end14_crit_edge
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  %hw_init.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %hw_init.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hw_init.i, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end14.cleanup_crit_edge, label %if.end.i

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %jack_detect_work.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %6, i32 0, i32 9
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jack_detect_work.i) #7
  %jack_btn_check_work.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %6, i32 0, i32 10
  %call2.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jack_btn_check_work.i) #7
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  tail call void @regcache_cache_only(ptr noundef %10, i1 noundef zeroext true) #7
  %mbq_regmap.i = getelementptr inbounds %struct.rt711_sdca_priv, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %mbq_regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mbq_regmap.i, align 4
  tail call void @regcache_cache_only(ptr noundef %12, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_dev_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %first_hw_init = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %first_hw_init, align 1, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %unattach_request = getelementptr i8, ptr %dev, i32 2096
  %4 = ptrtoint ptr %unattach_request to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %unattach_request, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end.regmap_sync_crit_edge, label %if.end3

if.end.regmap_sync_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %regmap_sync

if.end3:                                          ; preds = %if.end
  %initialization_complete = getelementptr i8, ptr %dev, i32 2040
  %call5 = tail call i32 @wait_for_completion_timeout(ptr noundef %initialization_complete, i32 noundef 500) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end, label %if.end3.regmap_sync_crit_edge

if.end3.regmap_sync_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %regmap_sync

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #10
  br label %cleanup

regmap_sync:                                      ; preds = %if.end3.regmap_sync_crit_edge, %if.end.regmap_sync_crit_edge
  %6 = ptrtoint ptr %unattach_request to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %unattach_request, align 8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_only(ptr noundef %8, i1 noundef zeroext false) #7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call12 = tail call i32 @regcache_sync(ptr noundef %10) #7
  %mbq_regmap = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mbq_regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %12, i1 noundef zeroext false) #7
  %13 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mbq_regmap, align 4
  %call14 = tail call i32 @regcache_sync(ptr noundef %14) #7
  br label %cleanup

cleanup:                                          ; preds = %regmap_sync, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %regmap_sync ], [ -110, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt711_sdca_dev_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hw_init = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_init, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %jack_detect_work = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 9
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jack_detect_work) #7
  %jack_btn_check_work = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 10
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %jack_btn_check_work) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #7
  %mbq_regmap = getelementptr inbounds %struct.rt711_sdca_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mbq_regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mbq_regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %7, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_update_no_pm(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !56, !58, !60, !61, !62, !64, !65, !66, !67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_snd_soc_rt711_sdca__240_473_rt711_sdca_sdw_driver_init6, !1, !"__initcall__kmod_snd_soc_rt711_sdca__240_473_rt711_sdca_sdw_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/rt711-sdca-sdw.c", i32 473, i32 1}
!2 = !{ptr @__exitcall_rt711_sdca_sdw_driver_exit, !1, !"__exitcall_rt711_sdca_sdw_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description241, !4, !"__UNIQUE_ID_description241", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/rt711-sdca-sdw.c", i32 475, i32 1}
!5 = !{ptr @__UNIQUE_ID_author242, !6, !"__UNIQUE_ID_author242", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/rt711-sdca-sdw.c", i32 476, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/rt711-sdca-sdw.c", i32 477, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/rt711-sdca-sdw.c", i32 464, i32 11}
!12 = !{ptr @rt711_sdca_sdw_driver, !13, !"rt711_sdca_sdw_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/rt711-sdca-sdw.c", i32 462, i32 26}
!14 = !{ptr @rt711_sdca_sdw_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/rt711-sdca-sdw.c", i32 352, i32 15}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @rt711_sdca_sdw_probe._key.2, !18, !"_key", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/rt711-sdca-sdw.c", i32 356, i32 11}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/rt711-sdca-sdw.c", i32 127, i32 10}
!22 = !{ptr @rt711_sdca_mbq_regmap, !23, !"rt711_sdca_mbq_regmap", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/rt711-sdca-sdw.c", i32 126, i32 35}
!24 = !{ptr @rt711_sdca_mbq_defaults, !25, !"rt711_sdca_mbq_defaults", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/rt711-sdca-sdw.h", i32 71, i32 33}
!26 = !{ptr @rt711_sdca_regmap, !27, !"rt711_sdca_regmap", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/rt711-sdca-sdw.c", i32 113, i32 35}
!28 = !{ptr @rt711_sdca_reg_defaults, !29, !"rt711_sdca_reg_defaults", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/rt711-sdca-sdw.h", i32 14, i32 33}
!30 = !{ptr @rt711_sdca_id, !31, !"rt711_sdca_id", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/rt711-sdca-sdw.c", i32 375, i32 35}
!32 = !{ptr @rt711_sdca_slave_ops, !33, !"rt711_sdca_slave_ops", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/rt711-sdca-sdw.c", i32 340, i32 29}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/rt711-sdca-sdw.c", i32 248, i32 2}
!36 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @rt711_sdca_interrupt_callback.__UNIQUE_ID_ddebug238, !35, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/rt711-sdca-sdw.c", i32 253, i32 3}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @rt711_sdca_interrupt_callback._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @rt711_sdca_interrupt_callback._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/rt711-sdca-sdw.c", i32 322, i32 3}
!48 = !{ptr @rt711_sdca_interrupt_callback._entry.12, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @rt711_sdca_interrupt_callback._entry_ptr.14, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/rt711-sdca-sdw.c", i32 336, i32 2}
!52 = !{ptr @rt711_sdca_interrupt_callback._rs, !51, !"_rs", i1 false, i1 false}
!53 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @rt711_sdca_interrupt_callback._entry.16, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @rt711_sdca_interrupt_callback._entry_ptr.18, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @rt711_sdca_pm, !57, !"rt711_sdca_pm", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/rt711-sdca-sdw.c", i32 457, i32 32}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/rt711-sdca-sdw.c", i32 421, i32 3}
!60 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rt711_sdca_dev_system_suspend.__UNIQUE_ID_ddebug239, !59, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/rt711-sdca-sdw.c", i32 444, i32 3}
!64 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @rt711_sdca_dev_resume._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @rt711_sdca_dev_resume._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i8 0, i8 2}
!78 = !{!"branch_weights", i32 1, i32 2000}
!79 = !{i64 2148768639, i64 2148768644, i64 2148768657, i64 2148768701, i64 2148768735, i64 2148768756}
