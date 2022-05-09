; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/rt715-sdw.c_pt.bc'
source_filename = "../sound/soc/codecs/rt715-sdw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+hda_to_sdw\22, \22a\22\09"
module asm "\09.weak\09__crc_hda_to_sdw\09\09\09\09"
module asm "\09.long\09__crc_hda_to_sdw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hda_to_sdw:\09\09\09\09\09"
module asm "\09.asciz \09\22hda_to_sdw\22\09\09\09\09\09"
module asm "__kstrtabns_hda_to_sdw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.sdw_slave = type { %struct.sdw_slave_id, %struct.device, i32, ptr, ptr, %struct.sdw_slave_prop, ptr, %struct.list_head, [15 x %struct.completion], [15 x i32], i16, i16, i8, %struct.completion, %struct.completion, %struct.completion, i32, i8, i8 }
%struct.sdw_slave_id = type { i16, i16, i8, i8, i8 }
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
%struct.rt715_priv = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.sdw_bus_params, i8, i8, [2 x i32], [8 x i32], [8 x i32] }
%struct.sdw_bus_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sdw_dpn_prop = type { i32, i32, i32, i32, ptr, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i8, i8, i32, ptr }

@__kstrtab_hda_to_sdw = external dso_local constant [0 x i8], align 1
@__kstrtabns_hda_to_sdw = external dso_local constant [0 x i8], align 1
@__ksymtab_hda_to_sdw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hda_to_sdw to i32), ptr @__kstrtab_hda_to_sdw, ptr @__kstrtabns_hda_to_sdw }, section "___ksymtab+hda_to_sdw", align 4
@__initcall__kmod_snd_soc_rt715__300_581_rt715_sdw_driver_init6 = internal global ptr @rt715_sdw_driver_init, section ".initcall6.init", align 4
@rt715_sdw_driver = internal global { %struct.sdw_driver, [60 x i8] } { %struct.sdw_driver { ptr null, ptr @rt715_sdw_probe, ptr null, ptr null, ptr @rt715_id, ptr @rt715_slave_ops, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt715_pm, ptr null, ptr null } }, [60 x i8] zeroinitializer }, align 32
@__exitcall_rt715_sdw_driver_exit = internal global ptr @rt715_sdw_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description301 = internal constant [48 x i8] c"snd_soc_rt715.description=ASoC RT715 driver SDW\00", section ".modinfo", align 1
@__UNIQUE_ID_author302 = internal constant [51 x i8] c"snd_soc_rt715.author=Jack Yu <jack.yu@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [50 x i8] c"snd_soc_rt715.file=sound/soc/codecs/snd-soc-rt715\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [29 x i8] c"snd_soc_rt715.license=GPL v2\00", section ".modinfo", align 1
@rt715_id = internal constant { [3 x %struct.sdw_device_id], [60 x i8] } { [3 x %struct.sdw_device_id] [%struct.sdw_device_id { i16 605, i16 1812, i8 2, i8 0, i32 0 }, %struct.sdw_device_id { i16 605, i16 1813, i8 2, i8 0, i32 0 }, %struct.sdw_device_id zeroinitializer], [60 x i8] zeroinitializer }, align 32
@rt715_slave_ops = internal constant { %struct.sdw_slave_ops, [40 x i8] } { %struct.sdw_slave_ops { ptr @rt715_read_prop, ptr null, ptr @rt715_update_status, ptr @rt715_bus_config, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rt715\00", [26 x i8] zeroinitializer }, align 32
@rt715_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rt715_dev_suspend, ptr @rt715_dev_resume, ptr @rt715_dev_suspend, ptr @rt715_dev_resume, ptr @rt715_dev_suspend, ptr @rt715_dev_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt715_dev_suspend, ptr @rt715_dev_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@rt715_sdw_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt715_sdw_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.4, i32 32, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 65281, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"rt715_sdw:503:(&rt715_sdw_regmap)->lock\00", [56 x i8] zeroinitializer }, align 32
@rt715_sdw_probe._key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt715_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 24, i32 0, i32 0, i32 32, ptr null, ptr @rt715_readable_register, ptr @rt715_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @rt715_sdw_read, ptr @rt715_sdw_write, ptr null, i8 0, i32 7675961, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rt715_reg_defaults, i32 323, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rt715_sdw:508:(&rt715_regmap)->lock\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sdw\00", [28 x i8] zeroinitializer }, align 32
@rt715_reg_defaults = internal constant { [323 x %struct.reg_default], [648 x i8] } { [323 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 1 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 37, i32 0 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 64, i32 0 }, %struct.reg_default { i32 65, i32 0 }, %struct.reg_default { i32 66, i32 0 }, %struct.reg_default { i32 67, i32 0 }, %struct.reg_default { i32 68, i32 32 }, %struct.reg_default { i32 69, i32 1 }, %struct.reg_default { i32 70, i32 0 }, %struct.reg_default { i32 80, i32 32 }, %struct.reg_default { i32 81, i32 2 }, %struct.reg_default { i32 82, i32 93 }, %struct.reg_default { i32 83, i32 7 }, %struct.reg_default { i32 84, i32 21 }, %struct.reg_default { i32 85, i32 0 }, %struct.reg_default { i32 96, i32 0 }, %struct.reg_default { i32 112, i32 0 }, %struct.reg_default { i32 128, i32 0 }, %struct.reg_default { i32 136, i32 16 }, %struct.reg_default { i32 224, i32 0 }, %struct.reg_default { i32 225, i32 0 }, %struct.reg_default { i32 226, i32 0 }, %struct.reg_default { i32 227, i32 0 }, %struct.reg_default { i32 228, i32 0 }, %struct.reg_default { i32 229, i32 0 }, %struct.reg_default { i32 238, i32 0 }, %struct.reg_default { i32 239, i32 0 }, %struct.reg_default { i32 240, i32 0 }, %struct.reg_default { i32 241, i32 0 }, %struct.reg_default { i32 242, i32 0 }, %struct.reg_default { i32 243, i32 0 }, %struct.reg_default { i32 244, i32 0 }, %struct.reg_default { i32 245, i32 0 }, %struct.reg_default { i32 254, i32 0 }, %struct.reg_default { i32 255, i32 0 }, %struct.reg_default { i32 512, i32 0 }, %struct.reg_default { i32 513, i32 0 }, %struct.reg_default { i32 514, i32 32 }, %struct.reg_default { i32 515, i32 0 }, %struct.reg_default { i32 516, i32 0 }, %struct.reg_default { i32 517, i32 3 }, %struct.reg_default { i32 544, i32 0 }, %struct.reg_default { i32 545, i32 0 }, %struct.reg_default { i32 546, i32 0 }, %struct.reg_default { i32 547, i32 0 }, %struct.reg_default { i32 548, i32 0 }, %struct.reg_default { i32 549, i32 0 }, %struct.reg_default { i32 550, i32 0 }, %struct.reg_default { i32 551, i32 0 }, %struct.reg_default { i32 560, i32 0 }, %struct.reg_default { i32 561, i32 0 }, %struct.reg_default { i32 562, i32 0 }, %struct.reg_default { i32 563, i32 0 }, %struct.reg_default { i32 564, i32 0 }, %struct.reg_default { i32 565, i32 0 }, %struct.reg_default { i32 566, i32 0 }, %struct.reg_default { i32 567, i32 0 }, %struct.reg_default { i32 736, i32 0 }, %struct.reg_default { i32 752, i32 0 }, %struct.reg_default { i32 1024, i32 0 }, %struct.reg_default { i32 1025, i32 0 }, %struct.reg_default { i32 1026, i32 32 }, %struct.reg_default { i32 1027, i32 0 }, %struct.reg_default { i32 1028, i32 0 }, %struct.reg_default { i32 1029, i32 15 }, %struct.reg_default { i32 1056, i32 0 }, %struct.reg_default { i32 1057, i32 0 }, %struct.reg_default { i32 1058, i32 0 }, %struct.reg_default { i32 1059, i32 0 }, %struct.reg_default { i32 1060, i32 0 }, %struct.reg_default { i32 1061, i32 0 }, %struct.reg_default { i32 1062, i32 0 }, %struct.reg_default { i32 1063, i32 0 }, %struct.reg_default { i32 1072, i32 0 }, %struct.reg_default { i32 1073, i32 0 }, %struct.reg_default { i32 1074, i32 0 }, %struct.reg_default { i32 1075, i32 0 }, %struct.reg_default { i32 1076, i32 0 }, %struct.reg_default { i32 1077, i32 0 }, %struct.reg_default { i32 1078, i32 0 }, %struct.reg_default { i32 1079, i32 0 }, %struct.reg_default { i32 1248, i32 0 }, %struct.reg_default { i32 1264, i32 0 }, %struct.reg_default { i32 1536, i32 0 }, %struct.reg_default { i32 1537, i32 0 }, %struct.reg_default { i32 1538, i32 32 }, %struct.reg_default { i32 1539, i32 0 }, %struct.reg_default { i32 1540, i32 0 }, %struct.reg_default { i32 1541, i32 255 }, %struct.reg_default { i32 1568, i32 0 }, %struct.reg_default { i32 1569, i32 0 }, %struct.reg_default { i32 1570, i32 0 }, %struct.reg_default { i32 1571, i32 0 }, %struct.reg_default { i32 1572, i32 0 }, %struct.reg_default { i32 1573, i32 0 }, %struct.reg_default { i32 1574, i32 0 }, %struct.reg_default { i32 1575, i32 0 }, %struct.reg_default { i32 1584, i32 0 }, %struct.reg_default { i32 1585, i32 0 }, %struct.reg_default { i32 1586, i32 0 }, %struct.reg_default { i32 1587, i32 0 }, %struct.reg_default { i32 1588, i32 0 }, %struct.reg_default { i32 1589, i32 0 }, %struct.reg_default { i32 1590, i32 0 }, %struct.reg_default { i32 1591, i32 0 }, %struct.reg_default { i32 1760, i32 0 }, %struct.reg_default { i32 1776, i32 0 }, %struct.reg_default { i32 3840, i32 0 }, %struct.reg_default { i32 3841, i32 0 }, %struct.reg_default { i32 3842, i32 0 }, %struct.reg_default { i32 3843, i32 0 }, %struct.reg_default { i32 3844, i32 0 }, %struct.reg_default { i32 3845, i32 255 }, %struct.reg_default { i32 3846, i32 0 }, %struct.reg_default { i32 3847, i32 0 }, %struct.reg_default { i32 3848, i32 0 }, %struct.reg_default { i32 3849, i32 0 }, %struct.reg_default { i32 3850, i32 0 }, %struct.reg_default { i32 3851, i32 0 }, %struct.reg_default { i32 3852, i32 0 }, %struct.reg_default { i32 3853, i32 0 }, %struct.reg_default { i32 3854, i32 0 }, %struct.reg_default { i32 3855, i32 0 }, %struct.reg_default { i32 3856, i32 0 }, %struct.reg_default { i32 3857, i32 0 }, %struct.reg_default { i32 3858, i32 0 }, %struct.reg_default { i32 3859, i32 0 }, %struct.reg_default { i32 3860, i32 0 }, %struct.reg_default { i32 3861, i32 0 }, %struct.reg_default { i32 3862, i32 0 }, %struct.reg_default { i32 3863, i32 0 }, %struct.reg_default { i32 3864, i32 0 }, %struct.reg_default { i32 3865, i32 0 }, %struct.reg_default { i32 3866, i32 0 }, %struct.reg_default { i32 3867, i32 0 }, %struct.reg_default { i32 3868, i32 0 }, %struct.reg_default { i32 3869, i32 0 }, %struct.reg_default { i32 3870, i32 0 }, %struct.reg_default { i32 3871, i32 0 }, %struct.reg_default { i32 3872, i32 0 }, %struct.reg_default { i32 3873, i32 0 }, %struct.reg_default { i32 3874, i32 0 }, %struct.reg_default { i32 3875, i32 0 }, %struct.reg_default { i32 3876, i32 0 }, %struct.reg_default { i32 3877, i32 0 }, %struct.reg_default { i32 3878, i32 0 }, %struct.reg_default { i32 3879, i32 0 }, %struct.reg_default { i32 3888, i32 0 }, %struct.reg_default { i32 3889, i32 0 }, %struct.reg_default { i32 3890, i32 0 }, %struct.reg_default { i32 3891, i32 0 }, %struct.reg_default { i32 3892, i32 0 }, %struct.reg_default { i32 3893, i32 0 }, %struct.reg_default { i32 3894, i32 0 }, %struct.reg_default { i32 3895, i32 0 }, %struct.reg_default { i32 8192, i32 0 }, %struct.reg_default { i32 8193, i32 0 }, %struct.reg_default { i32 8194, i32 0 }, %struct.reg_default { i32 8195, i32 0 }, %struct.reg_default { i32 8196, i32 0 }, %struct.reg_default { i32 8197, i32 0 }, %struct.reg_default { i32 8198, i32 0 }, %struct.reg_default { i32 8199, i32 0 }, %struct.reg_default { i32 8200, i32 0 }, %struct.reg_default { i32 8201, i32 3 }, %struct.reg_default { i32 8202, i32 0 }, %struct.reg_default { i32 8203, i32 0 }, %struct.reg_default { i32 8204, i32 0 }, %struct.reg_default { i32 8205, i32 0 }, %struct.reg_default { i32 8206, i32 0 }, %struct.reg_default { i32 8207, i32 16 }, %struct.reg_default { i32 8208, i32 0 }, %struct.reg_default { i32 8209, i32 0 }, %struct.reg_default { i32 8210, i32 0 }, %struct.reg_default { i32 8211, i32 0 }, %struct.reg_default { i32 8212, i32 0 }, %struct.reg_default { i32 8213, i32 0 }, %struct.reg_default { i32 8214, i32 0 }, %struct.reg_default { i32 8218, i32 0 }, %struct.reg_default { i32 8219, i32 0 }, %struct.reg_default { i32 8220, i32 0 }, %struct.reg_default { i32 8221, i32 0 }, %struct.reg_default { i32 8222, i32 0 }, %struct.reg_default { i32 8223, i32 0 }, %struct.reg_default { i32 8224, i32 0 }, %struct.reg_default { i32 8225, i32 0 }, %struct.reg_default { i32 8226, i32 0 }, %struct.reg_default { i32 8227, i32 0 }, %struct.reg_default { i32 8228, i32 0 }, %struct.reg_default { i32 8229, i32 1 }, %struct.reg_default { i32 8230, i32 0 }, %struct.reg_default { i32 8231, i32 0 }, %struct.reg_default { i32 8233, i32 0 }, %struct.reg_default { i32 8234, i32 0 }, %struct.reg_default { i32 8237, i32 0 }, %struct.reg_default { i32 8238, i32 0 }, %struct.reg_default { i32 8239, i32 0 }, %struct.reg_default { i32 8240, i32 0 }, %struct.reg_default { i32 8241, i32 0 }, %struct.reg_default { i32 8242, i32 0 }, %struct.reg_default { i32 8243, i32 0 }, %struct.reg_default { i32 8244, i32 0 }, %struct.reg_default { i32 8704, i32 0 }, %struct.reg_default { i32 8705, i32 0 }, %struct.reg_default { i32 8706, i32 0 }, %struct.reg_default { i32 8707, i32 0 }, %struct.reg_default { i32 8708, i32 0 }, %struct.reg_default { i32 8710, i32 0 }, %struct.reg_default { i32 8711, i32 0 }, %struct.reg_default { i32 8712, i32 0 }, %struct.reg_default { i32 8713, i32 0 }, %struct.reg_default { i32 8714, i32 0 }, %struct.reg_default { i32 8715, i32 0 }, %struct.reg_default { i32 8716, i32 0 }, %struct.reg_default { i32 8717, i32 0 }, %struct.reg_default { i32 8718, i32 0 }, %struct.reg_default { i32 8719, i32 0 }, %struct.reg_default { i32 8720, i32 0 }, %struct.reg_default { i32 8721, i32 0 }, %struct.reg_default { i32 8722, i32 0 }, %struct.reg_default { i32 8736, i32 0 }, %struct.reg_default { i32 8737, i32 0 }, %struct.reg_default { i32 8738, i32 0 }, %struct.reg_default { i32 8739, i32 0 }, %struct.reg_default { i32 8752, i32 0 }, %struct.reg_default { i32 8753, i32 15 }, %struct.reg_default { i32 8754, i32 0 }, %struct.reg_default { i32 8755, i32 0 }, %struct.reg_default { i32 8756, i32 0 }, %struct.reg_default { i32 8757, i32 0 }, %struct.reg_default { i32 8758, i32 0 }, %struct.reg_default { i32 8759, i32 0 }, %struct.reg_default { i32 8760, i32 0 }, %struct.reg_default { i32 8761, i32 0 }, %struct.reg_default { i32 8944, i32 0 }, %struct.reg_default { i32 8945, i32 0 }, %struct.reg_default { i32 8946, i32 0 }, %struct.reg_default { i32 8947, i32 0 }, %struct.reg_default { i32 12578, i32 2 }, %struct.reg_default { i32 12579, i32 3 }, %struct.reg_default { i32 12580, i32 0 }, %struct.reg_default { i32 12581, i32 1 }, %struct.reg_default { i32 13831, i32 0 }, %struct.reg_default { i32 13832, i32 0 }, %struct.reg_default { i32 13833, i32 0 }, %struct.reg_default { i32 13840, i32 0 }, %struct.reg_default { i32 13841, i32 0 }, %struct.reg_default { i32 13863, i32 0 }, %struct.reg_default { i32 14098, i32 0 }, %struct.reg_default { i32 14099, i32 0 }, %struct.reg_default { i32 14104, i32 0 }, %struct.reg_default { i32 14105, i32 0 }, %struct.reg_default { i32 14106, i32 0 }, %struct.reg_default { i32 14107, i32 0 }, %struct.reg_default { i32 14109, i32 0 }, %struct.reg_default { i32 14121, i32 0 }, %struct.reg_default { i32 14430, i32 0 }, %struct.reg_default { i32 14425, i32 0 }, %struct.reg_default { i32 19474, i32 1091637744 }, %struct.reg_default { i32 19475, i32 1091637744 }, %struct.reg_default { i32 19485, i32 1091637744 }, %struct.reg_default { i32 19497, i32 1091637744 }, %struct.reg_default { i32 19730, i32 1091637744 }, %struct.reg_default { i32 19731, i32 1091637744 }, %struct.reg_default { i32 19741, i32 1091637744 }, %struct.reg_default { i32 19753, i32 1091637744 }, %struct.reg_default { i32 19986, i32 1091637744 }, %struct.reg_default { i32 19987, i32 1091637744 }, %struct.reg_default { i32 19997, i32 1091637744 }, %struct.reg_default { i32 20009, i32 1091637744 }, %struct.reg_default { i32 20242, i32 1091637744 }, %struct.reg_default { i32 20243, i32 1091637744 }, %struct.reg_default { i32 20253, i32 1091637744 }, %struct.reg_default { i32 20265, i32 1091637744 }, %struct.reg_default { i32 29191, i32 0 }, %struct.reg_default { i32 33415, i32 0 }, %struct.reg_default { i32 29192, i32 0 }, %struct.reg_default { i32 33416, i32 0 }, %struct.reg_default { i32 29193, i32 0 }, %struct.reg_default { i32 33417, i32 0 }, %struct.reg_default { i32 29223, i32 0 }, %struct.reg_default { i32 33447, i32 0 }, %struct.reg_default { i32 29447, i32 151 }, %struct.reg_default { i32 33671, i32 151 }, %struct.reg_default { i32 29448, i32 151 }, %struct.reg_default { i32 33672, i32 151 }, %struct.reg_default { i32 29449, i32 151 }, %struct.reg_default { i32 33673, i32 151 }, %struct.reg_default { i32 29458, i32 0 }, %struct.reg_default { i32 33682, i32 0 }, %struct.reg_default { i32 29459, i32 0 }, %struct.reg_default { i32 33683, i32 0 }, %struct.reg_default { i32 29464, i32 0 }, %struct.reg_default { i32 33688, i32 0 }, %struct.reg_default { i32 29465, i32 0 }, %struct.reg_default { i32 33689, i32 0 }, %struct.reg_default { i32 29466, i32 0 }, %struct.reg_default { i32 33690, i32 0 }, %struct.reg_default { i32 29467, i32 0 }, %struct.reg_default { i32 33691, i32 0 }, %struct.reg_default { i32 29469, i32 0 }, %struct.reg_default { i32 33693, i32 0 }, %struct.reg_default { i32 29479, i32 151 }, %struct.reg_default { i32 33703, i32 151 }, %struct.reg_default { i32 29481, i32 0 }, %struct.reg_default { i32 33705, i32 0 }, %struct.reg_default { i32 7675961, i32 42240 }], [648 x i8] zeroinitializer }, align 32
@rt715_sdw_read.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_soc_rt715\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rt715_sdw_read\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/soc/codecs/rt715-sdw.c\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%s] %04x => %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@rt715_sdw_read.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s] %04x %04x %04x %04x => %08x\0A\00", [62 x i8] zeroinitializer }, align 32
@rt715_sdw_read.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.10, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%s] %04x %04x => %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@rt715_sdw_write.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.11, ptr @.str.7, ptr @.str.12, i8 0, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rt715_sdw_write\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%s] %04x <= %04x\0A\00", [45 x i8] zeroinitializer }, align 32
@rt715_sdw_write.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.11, ptr @.str.7, ptr @.str.13, i8 0, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[%s] %04x %04x %04x %04x <= %04x %04x\0A\00", [57 x i8] zeroinitializer }, align 32
@rt715_sdw_write.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.11, ptr @.str.7, ptr @.str.14, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%s] %04x %04x <= %04x\0A\00", [40 x i8] zeroinitializer }, align 32
@rt715_bus_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.7, i32 486, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid clk config\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt715_bus_config\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt715_bus_config._entry_ptr = internal global ptr @rt715_bus_config._entry, section ".printk_index", align 4
@rt715_dev_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.7, i32 553, ptr @.str.17, ptr @.str.18 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Initialization not complete, timed out\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt715_dev_resume\00", [47 x i8] zeroinitializer }, align 32
@rt715_dev_resume._entry_ptr = internal global ptr @rt715_dev_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [176 x i64] [i64 174, i64 32, i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 238, i64 239, i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 254, i64 255, i64 736, i64 752, i64 1248, i64 1264, i64 1760, i64 1776, i64 8192, i64 8193, i64 8194, i64 8195, i64 8196, i64 8197, i64 8198, i64 8199, i64 8200, i64 8201, i64 8202, i64 8203, i64 8204, i64 8205, i64 8206, i64 8207, i64 8208, i64 8209, i64 8210, i64 8211, i64 8212, i64 8213, i64 8214, i64 8218, i64 8219, i64 8220, i64 8221, i64 8222, i64 8223, i64 8224, i64 8225, i64 8226, i64 8227, i64 8228, i64 8229, i64 8230, i64 8231, i64 8233, i64 8234, i64 8237, i64 8238, i64 8239, i64 8240, i64 8241, i64 8242, i64 8243, i64 8244, i64 8704, i64 8705, i64 8706, i64 8707, i64 8708, i64 8710, i64 8711, i64 8712, i64 8713, i64 8714, i64 8715, i64 8716, i64 8717, i64 8718, i64 8719, i64 8720, i64 8721, i64 8722, i64 8736, i64 8737, i64 8738, i64 8739, i64 8752, i64 8753, i64 8754, i64 8755, i64 8756, i64 8757, i64 8758, i64 8759, i64 8760, i64 8761, i64 8944, i64 8945, i64 8946, i64 8947, i64 12578, i64 12579, i64 12580, i64 12581, i64 13831, i64 13832, i64 13833, i64 13840, i64 13841, i64 13863, i64 14098, i64 14099, i64 14104, i64 14105, i64 14106, i64 14107, i64 14109, i64 14121, i64 14425, i64 14430, i64 19474, i64 19475, i64 19485, i64 19497, i64 19730, i64 19731, i64 19741, i64 19753, i64 19986, i64 19987, i64 19997, i64 20009, i64 20242, i64 20243, i64 20253, i64 20265, i64 29191, i64 29192, i64 29193, i64 29223, i64 29447, i64 29448, i64 29449, i64 29458, i64 29459, i64 29464, i64 29465, i64 29466, i64 29467, i64 29469, i64 29479, i64 29481, i64 33415, i64 33416, i64 33417, i64 33447, i64 33671, i64 33672, i64 33673, i64 33682, i64 33683, i64 33688, i64 33689, i64 33690, i64 33691, i64 33693, i64 33703, i64 33705, i64 7675961]
@__sancov_gen_cov_switch_values.21 = internal global [47 x i64] [i64 45, i64 32, i64 229, i64 240, i64 243, i64 245, i64 8201, i64 8203, i64 8204, i64 8205, i64 8206, i64 8210, i64 8211, i64 8212, i64 8213, i64 8214, i64 8219, i64 8220, i64 8221, i64 8223, i64 8227, i64 8237, i64 8238, i64 8239, i64 8705, i64 8706, i64 8707, i64 8708, i64 8709, i64 8710, i64 8711, i64 8712, i64 8713, i64 8714, i64 8715, i64 8716, i64 8717, i64 8718, i64 8719, i64 8720, i64 8721, i64 8722, i64 8736, i64 8737, i64 8738, i64 8739, i64 8752]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 16, i64 12288, i64 28672]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 16, i64 36864, i64 45056]
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"rt715_sdw_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 571, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant [9 x i8] c"rt715_id\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 517, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"rt715_slave_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 491, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 573, i32 14 }
@___asan_gen_.36 = private unnamed_addr constant [9 x i8] c"rt715_pm\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 566, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"rt715_sdw_regmap\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 363, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 503, i32 15 }
@___asan_gen_.48 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [13 x i8] c"rt715_regmap\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 348, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 507, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 364, i32 10 }
@___asan_gen_.60 = private unnamed_addr constant [19 x i8] c"rt715_reg_defaults\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [32 x i8] c"../sound/soc/codecs/rt715-sdw.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 11, i32 33 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 258, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 260, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 263, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 337, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 339, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 342, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 486, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [32 x i8] c"../sound/soc/codecs/rt715-sdw.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 553, i32 3 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__exitcall_rt715_sdw_driver_exit, ptr @__initcall__kmod_snd_soc_rt715__300_581_rt715_sdw_driver_init6, ptr @__ksymtab_hda_to_sdw, ptr @rt715_bus_config._entry, ptr @rt715_bus_config._entry_ptr, ptr @rt715_dev_resume._entry, ptr @rt715_dev_resume._entry_ptr, ptr @rt715_sdw_driver_exit, ptr @rt715_sdw_driver, ptr @rt715_id, ptr @rt715_slave_ops, ptr @.str, ptr @rt715_pm, ptr @rt715_sdw_probe._key, ptr @rt715_sdw_regmap, ptr @.str.1, ptr @rt715_sdw_probe._key.2, ptr @rt715_regmap, ptr @.str.3, ptr @.str.4, ptr @rt715_reg_defaults, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_sdw_driver to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_id to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_slave_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_sdw_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_sdw_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_sdw_probe._key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_reg_defaults to i32), i32 2584, i32 3232, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_bus_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_dev_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @hda_to_sdw(i32 noundef %nid, i32 noundef %verb, i32 noundef %payload, ptr nocapture noundef writeonly %sdw_addr_h, ptr nocapture noundef writeonly %sdw_data_h, ptr nocapture noundef writeonly %sdw_addr_l, ptr nocapture noundef writeonly %sdw_data_l) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %verb, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3840, i32 %verb)
  %cmp1 = icmp eq i32 %verb, 3840
  %or.cond = or i1 %cmp1, %cmp.not
  br i1 %or.cond, label %if.then, label %if.else9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %verb)
  %cmp2 = icmp eq i32 %verb, 2047
  %. = select i1 %cmp2, i32 0, i32 12288
  %and4 = and i32 %verb, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  %sub = add i32 %verb, -3840
  %or = or i32 %sub, 128
  %sub7 = add i32 %verb, -1792
  %e_verb.0 = select i1 %tobool.not, i32 %sub7, i32 %or
  %0 = ptrtoint ptr %sdw_data_h to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %payload, ptr %sdw_data_h, align 4
  %1 = ptrtoint ptr %sdw_data_l to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %sdw_data_l, align 4
  %2 = ptrtoint ptr %sdw_addr_l to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sdw_addr_l, align 4
  br label %if.end19

if.else9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and10 = and i32 %verb, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp11.not = icmp eq i32 %and10, 0
  %.39 = select i1 %cmp11.not, i32 28672, i32 36864
  %.40 = select i1 %cmp11.not, i32 32768, i32 40960
  %shr = lshr i32 %verb, 8
  %shr15 = lshr i32 %payload, 8
  %3 = ptrtoint ptr %sdw_data_h to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shr15, ptr %sdw_data_h, align 4
  %shl = and i32 %verb, -256
  %or16 = or i32 %shl, %nid
  %or17 = or i32 %or16, 128
  %add = add i32 %.40, %or17
  %4 = ptrtoint ptr %sdw_addr_l to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %sdw_addr_l, align 4
  %and18 = and i32 %payload, 255
  %5 = ptrtoint ptr %sdw_data_l to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and18, ptr %sdw_data_l, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else9, %if.then
  %offset_h.2 = phi i32 [ %., %if.then ], [ %.39, %if.else9 ]
  %e_verb.1 = phi i32 [ %e_verb.0, %if.then ], [ %shr, %if.else9 ]
  %shl20 = shl i32 %e_verb.1, 8
  %or21 = or i32 %shl20, %nid
  %add22 = add i32 %or21, %offset_h.2
  %6 = ptrtoint ptr %sdw_addr_h to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add22, ptr %sdw_addr_h, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_sdw_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__sdw_register_driver(ptr noundef nonnull @rt715_sdw_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt715_sdw_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sdw_unregister_driver(ptr noundef nonnull @rt715_sdw_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdw_unregister_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sdw_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_sdw_probe(ptr noundef %slave, ptr nocapture noundef readnone %id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__devm_regmap_init_sdw(ptr noundef %slave, ptr noundef nonnull @rt715_sdw_regmap, ptr noundef nonnull @rt715_sdw_probe._key, ptr noundef nonnull @.str.1) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %call5 = tail call ptr @__devm_regmap_init(ptr noundef %dev, ptr noundef null, ptr noundef %dev, ptr noundef nonnull @rt715_regmap, ptr noundef nonnull @rt715_sdw_probe._key.2, ptr noundef nonnull @.str.3) #7
  %cmp.i21 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i21, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 @rt715_init(ptr noundef %dev, ptr noundef %call, ptr noundef %call5, ptr noundef %slave) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %1, %if.then7 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_sdw(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt715_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt715_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 736, label %entry.return_crit_edge
    i32 752, label %entry.return_crit_edge15
    i32 1248, label %entry.return_crit_edge16
    i32 1264, label %entry.return_crit_edge17
    i32 1760, label %entry.return_crit_edge18
    i32 1776, label %entry.return_crit_edge19
    i32 12578, label %entry.return_crit_edge20
    i32 12579, label %entry.return_crit_edge21
    i32 12580, label %entry.return_crit_edge22
    i32 12581, label %entry.return_crit_edge23
    i32 13831, label %entry.return_crit_edge24
    i32 13832, label %entry.return_crit_edge25
    i32 13833, label %entry.return_crit_edge26
    i32 13840, label %entry.return_crit_edge27
    i32 13841, label %entry.return_crit_edge28
    i32 13863, label %entry.return_crit_edge29
    i32 14098, label %entry.return_crit_edge30
    i32 14099, label %entry.return_crit_edge31
    i32 14104, label %entry.return_crit_edge32
    i32 14105, label %entry.return_crit_edge33
    i32 14106, label %entry.return_crit_edge34
    i32 14107, label %entry.return_crit_edge35
    i32 14109, label %entry.return_crit_edge36
    i32 14121, label %entry.return_crit_edge37
    i32 14430, label %entry.return_crit_edge38
    i32 14425, label %entry.return_crit_edge39
    i32 19474, label %entry.return_crit_edge40
    i32 19475, label %entry.return_crit_edge41
    i32 19485, label %entry.return_crit_edge42
    i32 19497, label %entry.return_crit_edge43
    i32 19730, label %entry.return_crit_edge44
    i32 19731, label %entry.return_crit_edge45
    i32 19741, label %entry.return_crit_edge46
    i32 19753, label %entry.return_crit_edge47
    i32 19986, label %entry.return_crit_edge48
    i32 19987, label %entry.return_crit_edge49
    i32 19997, label %entry.return_crit_edge50
    i32 20009, label %entry.return_crit_edge51
    i32 20242, label %entry.return_crit_edge52
    i32 20243, label %entry.return_crit_edge53
    i32 20253, label %entry.return_crit_edge54
    i32 20265, label %entry.return_crit_edge55
    i32 29191, label %entry.return_crit_edge56
    i32 29192, label %entry.return_crit_edge57
    i32 29193, label %entry.return_crit_edge58
    i32 29223, label %entry.return_crit_edge59
    i32 29447, label %entry.return_crit_edge60
    i32 29448, label %entry.return_crit_edge61
    i32 29449, label %entry.return_crit_edge62
    i32 29458, label %entry.return_crit_edge63
    i32 29459, label %entry.return_crit_edge64
    i32 29464, label %entry.return_crit_edge65
    i32 29465, label %entry.return_crit_edge66
    i32 29466, label %entry.return_crit_edge67
    i32 29467, label %entry.return_crit_edge68
    i32 29469, label %entry.return_crit_edge69
    i32 29479, label %entry.return_crit_edge70
    i32 29481, label %entry.return_crit_edge71
    i32 33415, label %entry.return_crit_edge72
    i32 33416, label %entry.return_crit_edge73
    i32 33417, label %entry.return_crit_edge74
    i32 33447, label %entry.return_crit_edge75
    i32 33671, label %entry.return_crit_edge76
    i32 33672, label %entry.return_crit_edge77
    i32 33673, label %entry.return_crit_edge78
    i32 33682, label %entry.return_crit_edge79
    i32 33683, label %entry.return_crit_edge80
    i32 33688, label %entry.return_crit_edge81
    i32 33689, label %entry.return_crit_edge82
    i32 33690, label %entry.return_crit_edge83
    i32 33691, label %entry.return_crit_edge84
    i32 33693, label %entry.return_crit_edge85
    i32 33703, label %entry.return_crit_edge86
    i32 33705, label %entry.return_crit_edge87
    i32 7675961, label %entry.return_crit_edge88
    i32 8944, label %entry.return_crit_edge89
    i32 8945, label %entry.return_crit_edge90
    i32 8946, label %entry.return_crit_edge91
    i32 8947, label %entry.return_crit_edge92
    i32 8752, label %entry.return_crit_edge93
    i32 8753, label %entry.return_crit_edge94
    i32 8754, label %entry.return_crit_edge95
    i32 8755, label %entry.return_crit_edge96
    i32 8756, label %entry.return_crit_edge97
    i32 8757, label %entry.return_crit_edge98
    i32 8758, label %entry.return_crit_edge99
    i32 8759, label %entry.return_crit_edge100
    i32 8760, label %entry.return_crit_edge101
    i32 8761, label %entry.return_crit_edge102
    i32 8736, label %entry.return_crit_edge103
    i32 8737, label %entry.return_crit_edge104
    i32 8738, label %entry.return_crit_edge105
    i32 8739, label %entry.return_crit_edge106
    i32 8710, label %entry.return_crit_edge107
    i32 8711, label %entry.return_crit_edge108
    i32 8712, label %entry.return_crit_edge109
    i32 8713, label %entry.return_crit_edge110
    i32 8714, label %entry.return_crit_edge111
    i32 8715, label %entry.return_crit_edge112
    i32 8716, label %entry.return_crit_edge113
    i32 8717, label %entry.return_crit_edge114
    i32 8718, label %entry.return_crit_edge115
    i32 8719, label %entry.return_crit_edge116
    i32 8720, label %entry.return_crit_edge117
    i32 8721, label %entry.return_crit_edge118
    i32 8722, label %entry.return_crit_edge119
    i32 8704, label %entry.return_crit_edge120
    i32 8705, label %entry.return_crit_edge121
    i32 8706, label %entry.return_crit_edge122
    i32 8707, label %entry.return_crit_edge123
    i32 8708, label %entry.return_crit_edge124
    i32 8237, label %entry.return_crit_edge125
    i32 8238, label %entry.return_crit_edge126
    i32 8239, label %entry.return_crit_edge127
    i32 8240, label %entry.return_crit_edge128
    i32 8241, label %entry.return_crit_edge129
    i32 8242, label %entry.return_crit_edge130
    i32 8243, label %entry.return_crit_edge131
    i32 8244, label %entry.return_crit_edge132
    i32 8233, label %entry.return_crit_edge133
    i32 8234, label %entry.return_crit_edge134
    i32 8218, label %entry.return_crit_edge135
    i32 8219, label %entry.return_crit_edge136
    i32 8220, label %entry.return_crit_edge137
    i32 8221, label %entry.return_crit_edge138
    i32 8222, label %entry.return_crit_edge139
    i32 8223, label %entry.return_crit_edge140
    i32 8224, label %entry.return_crit_edge141
    i32 8225, label %entry.return_crit_edge142
    i32 8226, label %entry.return_crit_edge143
    i32 8227, label %entry.return_crit_edge144
    i32 8228, label %entry.return_crit_edge145
    i32 8229, label %entry.return_crit_edge146
    i32 8230, label %entry.return_crit_edge147
    i32 8231, label %entry.return_crit_edge148
    i32 8192, label %entry.return_crit_edge149
    i32 8193, label %entry.return_crit_edge150
    i32 8194, label %entry.return_crit_edge151
    i32 8195, label %entry.return_crit_edge152
    i32 8196, label %entry.return_crit_edge153
    i32 8197, label %entry.return_crit_edge154
    i32 8198, label %entry.return_crit_edge155
    i32 8199, label %entry.return_crit_edge156
    i32 8200, label %entry.return_crit_edge157
    i32 8201, label %entry.return_crit_edge158
    i32 8202, label %entry.return_crit_edge159
    i32 8203, label %entry.return_crit_edge160
    i32 8204, label %entry.return_crit_edge161
    i32 8205, label %entry.return_crit_edge162
    i32 8206, label %entry.return_crit_edge163
    i32 8207, label %entry.return_crit_edge164
    i32 8208, label %entry.return_crit_edge165
    i32 8209, label %entry.return_crit_edge166
    i32 8210, label %entry.return_crit_edge167
    i32 8211, label %entry.return_crit_edge168
    i32 8212, label %entry.return_crit_edge169
    i32 8213, label %entry.return_crit_edge170
    i32 8214, label %entry.return_crit_edge171
    i32 254, label %entry.return_crit_edge172
    i32 255, label %entry.return_crit_edge173
    i32 240, label %entry.return_crit_edge174
    i32 241, label %entry.return_crit_edge175
    i32 242, label %entry.return_crit_edge176
    i32 243, label %entry.return_crit_edge177
    i32 244, label %entry.return_crit_edge178
    i32 245, label %entry.return_crit_edge179
    i32 238, label %entry.return_crit_edge180
    i32 239, label %entry.return_crit_edge181
    i32 224, label %entry.return_crit_edge182
    i32 225, label %entry.return_crit_edge183
    i32 226, label %entry.return_crit_edge184
    i32 227, label %entry.return_crit_edge185
    i32 228, label %entry.return_crit_edge186
    i32 229, label %entry.return_crit_edge187
  ]

entry.return_crit_edge187:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge186:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge185:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge184:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge183:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110, %entry.return_crit_edge111, %entry.return_crit_edge112, %entry.return_crit_edge113, %entry.return_crit_edge114, %entry.return_crit_edge115, %entry.return_crit_edge116, %entry.return_crit_edge117, %entry.return_crit_edge118, %entry.return_crit_edge119, %entry.return_crit_edge120, %entry.return_crit_edge121, %entry.return_crit_edge122, %entry.return_crit_edge123, %entry.return_crit_edge124, %entry.return_crit_edge125, %entry.return_crit_edge126, %entry.return_crit_edge127, %entry.return_crit_edge128, %entry.return_crit_edge129, %entry.return_crit_edge130, %entry.return_crit_edge131, %entry.return_crit_edge132, %entry.return_crit_edge133, %entry.return_crit_edge134, %entry.return_crit_edge135, %entry.return_crit_edge136, %entry.return_crit_edge137, %entry.return_crit_edge138, %entry.return_crit_edge139, %entry.return_crit_edge140, %entry.return_crit_edge141, %entry.return_crit_edge142, %entry.return_crit_edge143, %entry.return_crit_edge144, %entry.return_crit_edge145, %entry.return_crit_edge146, %entry.return_crit_edge147, %entry.return_crit_edge148, %entry.return_crit_edge149, %entry.return_crit_edge150, %entry.return_crit_edge151, %entry.return_crit_edge152, %entry.return_crit_edge153, %entry.return_crit_edge154, %entry.return_crit_edge155, %entry.return_crit_edge156, %entry.return_crit_edge157, %entry.return_crit_edge158, %entry.return_crit_edge159, %entry.return_crit_edge160, %entry.return_crit_edge161, %entry.return_crit_edge162, %entry.return_crit_edge163, %entry.return_crit_edge164, %entry.return_crit_edge165, %entry.return_crit_edge166, %entry.return_crit_edge167, %entry.return_crit_edge168, %entry.return_crit_edge169, %entry.return_crit_edge170, %entry.return_crit_edge171, %entry.return_crit_edge172, %entry.return_crit_edge173, %entry.return_crit_edge174, %entry.return_crit_edge175, %entry.return_crit_edge176, %entry.return_crit_edge177, %entry.return_crit_edge178, %entry.return_crit_edge179, %entry.return_crit_edge180, %entry.return_crit_edge181, %entry.return_crit_edge182, %entry.return_crit_edge183, %entry.return_crit_edge184, %entry.return_crit_edge185, %entry.return_crit_edge186, %entry.return_crit_edge187
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ], [ true, %entry.return_crit_edge111 ], [ true, %entry.return_crit_edge112 ], [ true, %entry.return_crit_edge113 ], [ true, %entry.return_crit_edge114 ], [ true, %entry.return_crit_edge115 ], [ true, %entry.return_crit_edge116 ], [ true, %entry.return_crit_edge117 ], [ true, %entry.return_crit_edge118 ], [ true, %entry.return_crit_edge119 ], [ true, %entry.return_crit_edge120 ], [ true, %entry.return_crit_edge121 ], [ true, %entry.return_crit_edge122 ], [ true, %entry.return_crit_edge123 ], [ true, %entry.return_crit_edge124 ], [ true, %entry.return_crit_edge125 ], [ true, %entry.return_crit_edge126 ], [ true, %entry.return_crit_edge127 ], [ true, %entry.return_crit_edge128 ], [ true, %entry.return_crit_edge129 ], [ true, %entry.return_crit_edge130 ], [ true, %entry.return_crit_edge131 ], [ true, %entry.return_crit_edge132 ], [ true, %entry.return_crit_edge133 ], [ true, %entry.return_crit_edge134 ], [ true, %entry.return_crit_edge135 ], [ true, %entry.return_crit_edge136 ], [ true, %entry.return_crit_edge137 ], [ true, %entry.return_crit_edge138 ], [ true, %entry.return_crit_edge139 ], [ true, %entry.return_crit_edge140 ], [ true, %entry.return_crit_edge141 ], [ true, %entry.return_crit_edge142 ], [ true, %entry.return_crit_edge143 ], [ true, %entry.return_crit_edge144 ], [ true, %entry.return_crit_edge145 ], [ true, %entry.return_crit_edge146 ], [ true, %entry.return_crit_edge147 ], [ true, %entry.return_crit_edge148 ], [ true, %entry.return_crit_edge149 ], [ true, %entry.return_crit_edge150 ], [ true, %entry.return_crit_edge151 ], [ true, %entry.return_crit_edge152 ], [ true, %entry.return_crit_edge153 ], [ true, %entry.return_crit_edge154 ], [ true, %entry.return_crit_edge155 ], [ true, %entry.return_crit_edge156 ], [ true, %entry.return_crit_edge157 ], [ true, %entry.return_crit_edge158 ], [ true, %entry.return_crit_edge159 ], [ true, %entry.return_crit_edge160 ], [ true, %entry.return_crit_edge161 ], [ true, %entry.return_crit_edge162 ], [ true, %entry.return_crit_edge163 ], [ true, %entry.return_crit_edge164 ], [ true, %entry.return_crit_edge165 ], [ true, %entry.return_crit_edge166 ], [ true, %entry.return_crit_edge167 ], [ true, %entry.return_crit_edge168 ], [ true, %entry.return_crit_edge169 ], [ true, %entry.return_crit_edge170 ], [ true, %entry.return_crit_edge171 ], [ true, %entry.return_crit_edge172 ], [ true, %entry.return_crit_edge173 ], [ true, %entry.return_crit_edge174 ], [ true, %entry.return_crit_edge175 ], [ true, %entry.return_crit_edge176 ], [ true, %entry.return_crit_edge177 ], [ true, %entry.return_crit_edge178 ], [ true, %entry.return_crit_edge179 ], [ true, %entry.return_crit_edge180 ], [ true, %entry.return_crit_edge181 ], [ true, %entry.return_crit_edge182 ], [ true, %entry.return_crit_edge183 ], [ true, %entry.return_crit_edge184 ], [ true, %entry.return_crit_edge185 ], [ true, %entry.return_crit_edge186 ], [ true, %entry.return_crit_edge187 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rt715_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %reg, label %sw.default [
    i32 229, label %entry.return_crit_edge
    i32 240, label %entry.return_crit_edge6
    i32 243, label %entry.return_crit_edge7
    i32 245, label %entry.return_crit_edge8
    i32 8201, label %entry.return_crit_edge9
    i32 8214, label %entry.return_crit_edge10
    i32 8219, label %entry.return_crit_edge11
    i32 8220, label %entry.return_crit_edge12
    i32 8221, label %entry.return_crit_edge13
    i32 8223, label %entry.return_crit_edge14
    i32 8227, label %entry.return_crit_edge15
    i32 8752, label %entry.return_crit_edge16
    i32 8736, label %entry.return_crit_edge17
    i32 8737, label %entry.return_crit_edge18
    i32 8738, label %entry.return_crit_edge19
    i32 8739, label %entry.return_crit_edge20
    i32 8705, label %entry.return_crit_edge21
    i32 8706, label %entry.return_crit_edge22
    i32 8707, label %entry.return_crit_edge23
    i32 8708, label %entry.return_crit_edge24
    i32 8709, label %entry.return_crit_edge25
    i32 8710, label %entry.return_crit_edge26
    i32 8711, label %entry.return_crit_edge27
    i32 8712, label %entry.return_crit_edge28
    i32 8713, label %entry.return_crit_edge29
    i32 8714, label %entry.return_crit_edge30
    i32 8715, label %entry.return_crit_edge31
    i32 8716, label %entry.return_crit_edge32
    i32 8717, label %entry.return_crit_edge33
    i32 8718, label %entry.return_crit_edge34
    i32 8719, label %entry.return_crit_edge35
    i32 8720, label %entry.return_crit_edge36
    i32 8721, label %entry.return_crit_edge37
    i32 8722, label %entry.return_crit_edge38
    i32 8237, label %entry.return_crit_edge39
    i32 8238, label %entry.return_crit_edge40
    i32 8239, label %entry.return_crit_edge41
    i32 8210, label %entry.return_crit_edge42
    i32 8211, label %entry.return_crit_edge43
    i32 8212, label %entry.return_crit_edge44
    i32 8213, label %entry.return_crit_edge45
    i32 8203, label %entry.return_crit_edge46
    i32 8204, label %entry.return_crit_edge47
    i32 8205, label %entry.return_crit_edge48
    i32 8206, label %entry.return_crit_edge49
  ]

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_sdw_read(ptr noundef %context, i32 noundef %reg, ptr noundef %val) #4 align 64 {
entry:
  %sdw_data_3 = alloca i32, align 4
  %sdw_data_2 = alloca i32, align 4
  %sdw_data_1 = alloca i32, align 4
  %sdw_data_0 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sdw_data_3) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sdw_data_2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sdw_data_1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sdw_data_0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %reg)
  %cmp = icmp ugt i32 %reg, 65535
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %entry
  %shr = lshr i32 %reg, 8
  %and3 = and i32 %shr, 223
  %sdw_regmap = getelementptr inbounds %struct.rt715_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sdw_regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdw_regmap, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %shr, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then1.cleanup_crit_edge, label %if.end7

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.then1
  %and2 = and i32 %reg, 255
  %add = add nuw nsw i32 %shr, 4096
  %or = or i32 %add, 128
  %4 = ptrtoint ptr %sdw_regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdw_regmap, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %or, i32 noundef %and2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %or13 = or i32 %and3, 39968
  %6 = ptrtoint ptr %sdw_regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdw_regmap, align 4
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %shr15 = lshr i32 %9, 8
  %and16 = and i32 %shr15, 255
  %call17 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %or13, i32 noundef %and16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end12.cleanup_crit_edge, label %if.end20

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %or22 = or i32 %and3, 44192
  %10 = ptrtoint ptr %sdw_regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdw_regmap, align 4
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %and24 = and i32 %13, 255
  %call25 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %or22, i32 noundef %and24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end20.cleanup_crit_edge, label %if.end20.if.then115_crit_edge

if.end20.if.then115_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then115

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  %14 = trunc i32 %reg to i16
  %trunc = and i16 %14, -4096
  %15 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %trunc, label %if.else57 [
    i16 12288, label %if.then30
    i16 28672, label %if.then39
  ]

if.then30:                                        ; preds = %if.else
  %add31 = add nuw nsw i32 %reg, 32768
  %sdw_regmap32 = getelementptr inbounds %struct.rt715_priv, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %sdw_regmap32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdw_regmap32, align 4
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %call33 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef %add31, i32 noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then30.cleanup_crit_edge, label %if.then30.if.then115_crit_edge

if.then30.if.then115_crit_edge:                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then115

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then39:                                        ; preds = %if.else
  %add40 = add nuw nsw i32 %reg, 8192
  %or41 = or i32 %add40, 2048
  %sdw_regmap42 = getelementptr inbounds %struct.rt715_priv, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %sdw_regmap42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdw_regmap42, align 4
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  %shr43 = lshr i32 %23, 8
  %and44 = and i32 %shr43, 255
  %call45 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef %or41, i32 noundef %and44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then39.cleanup_crit_edge, label %if.end48

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end48:                                         ; preds = %if.then39
  %add49 = add i32 %or41, 4096
  %or50 = or i32 %add49, 128
  %24 = ptrtoint ptr %sdw_regmap42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sdw_regmap42, align 4
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  %and52 = and i32 %27, 255
  %call53 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef %or50, i32 noundef %and52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.end48.cleanup_crit_edge, label %if.end48.if.then115_crit_edge

if.end48.if.then115_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then115

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else57:                                        ; preds = %if.else
  %and58 = and i32 %reg, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 33536, i32 %and58)
  %cmp59 = icmp eq i32 %and58, 33536
  br i1 %cmp59, label %if.then60, label %if.else75

if.then60:                                        ; preds = %if.else57
  %sub = add nsw i32 %reg, -4096
  %and61 = and i32 %sub, -129
  %sdw_regmap62 = getelementptr inbounds %struct.rt715_priv, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %sdw_regmap62 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sdw_regmap62, align 4
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val, align 4
  %shr63 = lshr i32 %31, 8
  %and64 = and i32 %shr63, 255
  %call65 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef %and61, i32 noundef %and64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %if.then60.cleanup_crit_edge, label %if.end68

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end68:                                         ; preds = %if.then60
  %32 = ptrtoint ptr %sdw_regmap62 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sdw_regmap62, align 4
  %34 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val, align 4
  %and70 = and i32 %35, 255
  %call71 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef %reg, i32 noundef %and70) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.end68.cleanup_crit_edge, label %if.end68.if.then115_crit_edge

if.end68.if.then115_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then115

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else75:                                        ; preds = %if.else57
  %36 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %trunc, label %if.else101 [
    i16 -28672, label %if.then77
    i16 -20480, label %if.then95
  ]

if.then77:                                        ; preds = %if.else75
  %sdw_regmap78 = getelementptr inbounds %struct.rt715_priv, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %sdw_regmap78 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sdw_regmap78, align 4
  %39 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val, align 4
  %shr79 = lshr i32 %40, 8
  %and80 = and i32 %shr79, 255
  %call81 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef %reg, i32 noundef %and80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.then77.cleanup_crit_edge, label %if.end84

if.then77.cleanup_crit_edge:                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end84:                                         ; preds = %if.then77
  %add85 = add nuw nsw i32 %reg, 4096
  %or86 = or i32 %add85, 128
  %41 = ptrtoint ptr %sdw_regmap78 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sdw_regmap78, align 4
  %43 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val, align 4
  %and88 = and i32 %44, 255
  %call89 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef %or86, i32 noundef %and88) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %if.end84.cleanup_crit_edge, label %if.end84.if.then115_crit_edge

if.end84.if.then115_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then115

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then95:                                        ; preds = %if.else75
  %sdw_regmap96 = getelementptr inbounds %struct.rt715_priv, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %sdw_regmap96 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sdw_regmap96, align 4
  %47 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val, align 4
  %call97 = tail call i32 @regmap_write(ptr noundef %46, i32 noundef %reg, i32 noundef %48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %if.then95.cleanup_crit_edge, label %if.then95.if.then115_crit_edge

if.then95.if.then115_crit_edge:                   ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then115

if.then95.cleanup_crit_edge:                      ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else101:                                       ; preds = %if.else75
  %sdw_regmap102 = getelementptr inbounds %struct.rt715_priv, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %sdw_regmap102 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sdw_regmap102, align 4
  %call103 = tail call i32 @regmap_read(ptr noundef %50, i32 noundef %reg, ptr noundef %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %if.else101.cleanup_crit_edge, label %do.body

if.else101.cleanup_crit_edge:                     ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then115:                                       ; preds = %if.then95.if.then115_crit_edge, %if.end84.if.then115_crit_edge, %if.end68.if.then115_crit_edge, %if.end48.if.then115_crit_edge, %if.then30.if.then115_crit_edge, %if.end20.if.then115_crit_edge
  %reg.addr.0335 = phi i32 [ %reg, %if.then95.if.then115_crit_edge ], [ %reg, %if.end84.if.then115_crit_edge ], [ %reg, %if.end68.if.then115_crit_edge ], [ %or41, %if.end48.if.then115_crit_edge ], [ %add31, %if.then30.if.then115_crit_edge ], [ %shr, %if.end20.if.then115_crit_edge ]
  %reg2.0333 = phi i32 [ 0, %if.then95.if.then115_crit_edge ], [ %or86, %if.end84.if.then115_crit_edge ], [ %and61, %if.end68.if.then115_crit_edge ], [ %or50, %if.end48.if.then115_crit_edge ], [ 0, %if.then30.if.then115_crit_edge ], [ %or, %if.end20.if.then115_crit_edge ]
  %reg3.0331 = phi i32 [ 0, %if.then95.if.then115_crit_edge ], [ 0, %if.end84.if.then115_crit_edge ], [ 0, %if.end68.if.then115_crit_edge ], [ 0, %if.end48.if.then115_crit_edge ], [ 0, %if.then30.if.then115_crit_edge ], [ %or13, %if.end20.if.then115_crit_edge ]
  %reg4.0327 = phi i32 [ 0, %if.then95.if.then115_crit_edge ], [ 0, %if.end84.if.then115_crit_edge ], [ 0, %if.end68.if.then115_crit_edge ], [ 0, %if.end48.if.then115_crit_edge ], [ 0, %if.then30.if.then115_crit_edge ], [ %or22, %if.end20.if.then115_crit_edge ]
  %51 = ptrtoint ptr %sdw_data_3 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %sdw_data_3, align 4
  %52 = ptrtoint ptr %sdw_data_2 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %sdw_data_2, align 4
  %53 = ptrtoint ptr %sdw_data_1 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %sdw_data_1, align 4
  %54 = ptrtoint ptr %sdw_data_0 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %sdw_data_0, align 4
  %sdw_regmap116 = getelementptr inbounds %struct.rt715_priv, ptr %1, i32 0, i32 1
  %55 = ptrtoint ptr %sdw_regmap116 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sdw_regmap116, align 4
  %call117 = call i32 @regmap_read(ptr noundef %56, i32 noundef 8210, ptr noundef nonnull %sdw_data_3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp118 = icmp slt i32 %call117, 0
  br i1 %cmp118, label %if.then115.cleanup_crit_edge, label %if.end120

if.then115.cleanup_crit_edge:                     ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end120:                                        ; preds = %if.then115
  %57 = ptrtoint ptr %sdw_regmap116 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sdw_regmap116, align 4
  %call122 = call i32 @regmap_read(ptr noundef %58, i32 noundef 8211, ptr noundef nonnull %sdw_data_2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %cmp123 = icmp slt i32 %call122, 0
  br i1 %cmp123, label %if.end120.cleanup_crit_edge, label %if.end125

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end125:                                        ; preds = %if.end120
  %59 = ptrtoint ptr %sdw_regmap116 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sdw_regmap116, align 4
  %call127 = call i32 @regmap_read(ptr noundef %60, i32 noundef 8212, ptr noundef nonnull %sdw_data_1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %cmp128 = icmp slt i32 %call127, 0
  br i1 %cmp128, label %if.end125.cleanup_crit_edge, label %if.end130

if.end125.cleanup_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end130:                                        ; preds = %if.end125
  %61 = ptrtoint ptr %sdw_regmap116 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sdw_regmap116, align 4
  %call132 = call i32 @regmap_read(ptr noundef %62, i32 noundef 8213, ptr noundef nonnull %sdw_data_0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %cmp133 = icmp slt i32 %call132, 0
  br i1 %cmp133, label %if.end130.cleanup_crit_edge, label %if.end145

if.end130.cleanup_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end145:                                        ; preds = %if.end130
  %63 = ptrtoint ptr %sdw_data_3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sdw_data_3, align 4
  %shl = shl i32 %64, 24
  %65 = ptrtoint ptr %sdw_data_2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sdw_data_2, align 4
  %and137 = shl i32 %66, 16
  %shl138 = and i32 %and137, 16711680
  %or139 = or i32 %shl138, %shl
  %67 = ptrtoint ptr %sdw_data_1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sdw_data_1, align 4
  %and140 = shl i32 %68, 8
  %shl141 = and i32 %and140, 65280
  %or142 = or i32 %or139, %shl141
  %69 = ptrtoint ptr %sdw_data_0 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sdw_data_0, align 4
  %and143 = and i32 %70, 255
  %or144 = or i32 %or142, %and143
  %71 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or144, ptr %val, align 4
  br i1 %cmp, label %do.body157, label %do.body174

do.body:                                          ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt715_sdw_read.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt715_sdw_read, %if.then152)) #7
          to label %cleanup [label %if.then152], !srcloc !79

if.then152:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt715_sdw_read.__UNIQUE_ID_ddebug294, ptr noundef %context, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef %reg, i32 noundef %73) #7
  br label %cleanup

do.body157:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt715_sdw_read.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt715_sdw_read, %if.then169)) #7
          to label %cleanup [label %if.then169], !srcloc !79

if.then169:                                       ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt715_sdw_read.__UNIQUE_ID_ddebug295, ptr noundef %context, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.6, i32 noundef %reg.addr.0335, i32 noundef %reg2.0333, i32 noundef %reg3.0331, i32 noundef %reg4.0327, i32 noundef %75) #7
  br label %cleanup

do.body174:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt715_sdw_read.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt715_sdw_read, %if.then186)) #7
          to label %cleanup [label %if.then186], !srcloc !79

if.then186:                                       ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt715_sdw_read.__UNIQUE_ID_ddebug296, ptr noundef %context, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6, i32 noundef %reg.addr.0335, i32 noundef %reg2.0333, i32 noundef %77) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then186, %do.body174, %if.then169, %do.body157, %if.then152, %do.body, %if.end130.cleanup_crit_edge, %if.end125.cleanup_crit_edge, %if.end120.cleanup_crit_edge, %if.then115.cleanup_crit_edge, %if.else101.cleanup_crit_edge, %if.then95.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %if.then77.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %if.then60.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then1.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then1.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ], [ %call17, %if.end12.cleanup_crit_edge ], [ %call25, %if.end20.cleanup_crit_edge ], [ %call33, %if.then30.cleanup_crit_edge ], [ %call45, %if.then39.cleanup_crit_edge ], [ %call53, %if.end48.cleanup_crit_edge ], [ %call65, %if.then60.cleanup_crit_edge ], [ %call71, %if.end68.cleanup_crit_edge ], [ %call81, %if.then77.cleanup_crit_edge ], [ %call89, %if.end84.cleanup_crit_edge ], [ %call97, %if.then95.cleanup_crit_edge ], [ %call103, %if.else101.cleanup_crit_edge ], [ %call117, %if.then115.cleanup_crit_edge ], [ %call122, %if.end120.cleanup_crit_edge ], [ %call127, %if.end125.cleanup_crit_edge ], [ %call132, %if.end130.cleanup_crit_edge ], [ 0, %if.then169 ], [ 0, %if.then186 ], [ 0, %if.then152 ], [ 0, %do.body ], [ 0, %do.body157 ], [ 0, %do.body174 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sdw_data_0) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sdw_data_1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sdw_data_2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sdw_data_3) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_sdw_write(ptr noundef %context, i32 noundef %reg, i32 noundef %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %reg)
  %cmp = icmp ugt i32 %reg, 65535
  %and = and i32 %reg, 61440
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %entry
  %and2 = and i32 %reg, 255
  %shr = lshr i32 %reg, 8
  %and3 = and i32 %shr, 223
  %sdw_regmap = getelementptr inbounds %struct.rt715_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sdw_regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdw_regmap, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %shr, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then1.cleanup_crit_edge, label %if.end7

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.then1
  %add = add nuw nsw i32 %shr, 4096
  %or = or i32 %add, 128
  %4 = ptrtoint ptr %sdw_regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdw_regmap, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %or, i32 noundef %and2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %or13 = or i32 %and3, 29728
  %6 = ptrtoint ptr %sdw_regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdw_regmap, align 4
  %shr15 = lshr i32 %val, 8
  %and16 = and i32 %shr15, 255
  %call17 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %or13, i32 noundef %and16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end12.cleanup_crit_edge, label %if.end20

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %or22 = or i32 %and3, 33952
  %8 = ptrtoint ptr %sdw_regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdw_regmap, align 4
  %and24 = and i32 %val, 255
  %call25 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %or22, i32 noundef %and24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end20.cleanup_crit_edge, label %do.body96

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 20479, i32 %reg)
  %cmp29 = icmp ult i32 %reg, 20479
  br i1 %cmp29, label %if.then30, label %if.else36

if.then30:                                        ; preds = %if.else
  %sdw_regmap31 = getelementptr inbounds %struct.rt715_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %sdw_regmap31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdw_regmap31, align 4
  %call32 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %reg, i32 noundef %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then30.cleanup_crit_edge, label %if.then30.do.body_crit_edge

if.then30.do.body_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 65281, i32 %reg)
  %cmp37 = icmp eq i32 %reg, 65281
  br i1 %cmp37, label %if.then38, label %if.else44

if.then38:                                        ; preds = %if.else36
  %sdw_regmap39 = getelementptr inbounds %struct.rt715_priv, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %sdw_regmap39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdw_regmap39, align 4
  %call40 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 65281, i32 noundef %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then38.cleanup_crit_edge, label %if.then38.do.body_crit_edge

if.then38.do.body_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else44:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_const_cmp4(i32 28672, i32 %and)
  %cmp45 = icmp eq i32 %and, 28672
  br i1 %cmp45, label %if.then46, label %if.else62

if.then46:                                        ; preds = %if.else44
  %sdw_regmap47 = getelementptr inbounds %struct.rt715_priv, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %sdw_regmap47 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdw_regmap47, align 4
  %shr48 = lshr i32 %val, 8
  %and49 = and i32 %shr48, 255
  %call50 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef %reg, i32 noundef %and49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then46.cleanup_crit_edge, label %if.end53

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end53:                                         ; preds = %if.then46
  %add54 = add nuw nsw i32 %reg, 4096
  %or55 = or i32 %add54, 128
  %16 = ptrtoint ptr %sdw_regmap47 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdw_regmap47, align 4
  %and57 = and i32 %val, 255
  %call58 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef %or55, i32 noundef %and57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.end53.cleanup_crit_edge, label %if.end53.do.body113_crit_edge

if.end53.do.body113_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body113

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else62:                                        ; preds = %if.else44
  %and63 = and i32 %reg, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 33536, i32 %and63)
  %cmp64 = icmp eq i32 %and63, 33536
  br i1 %cmp64, label %if.then65, label %if.else62.do.body_crit_edge

if.else62.do.body_crit_edge:                      ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then65:                                        ; preds = %if.else62
  %sub = add nsw i32 %reg, -4096
  %and66 = and i32 %sub, -129
  %sdw_regmap67 = getelementptr inbounds %struct.rt715_priv, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %sdw_regmap67 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdw_regmap67, align 4
  %shr68 = lshr i32 %val, 8
  %and69 = and i32 %shr68, 255
  %call70 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef %and66, i32 noundef %and69) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.then65.cleanup_crit_edge, label %if.end73

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end73:                                         ; preds = %if.then65
  %20 = ptrtoint ptr %sdw_regmap67 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdw_regmap67, align 4
  %and75 = and i32 %val, 255
  %call76 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef %reg, i32 noundef %and75) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.end73.cleanup_crit_edge, label %if.end84

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end84:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %cmp85 = icmp eq i32 %and66, 0
  br i1 %cmp85, label %if.end84.do.body_crit_edge, label %if.end84.do.body113_crit_edge

if.end84.do.body113_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body113

if.end84.do.body_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %if.end84.do.body_crit_edge, %if.else62.do.body_crit_edge, %if.then38.do.body_crit_edge, %if.then30.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt715_sdw_write.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt715_sdw_write, %if.then91)) #7
          to label %cleanup [label %if.then91], !srcloc !79

if.then91:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt715_sdw_write.__UNIQUE_ID_ddebug297, ptr noundef %context, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef %reg, i32 noundef %val) #7
  br label %cleanup

do.body96:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt715_sdw_write.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt715_sdw_write, %if.then108)) #7
          to label %cleanup [label %if.then108], !srcloc !79

if.then108:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt715_sdw_write.__UNIQUE_ID_ddebug298, ptr noundef %context, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef %shr, i32 noundef %or, i32 noundef %or13, i32 noundef %or22, i32 noundef %and2, i32 noundef %val) #7
  br label %cleanup

do.body113:                                       ; preds = %if.end84.do.body113_crit_edge, %if.end53.do.body113_crit_edge
  %reg2.0238247 = phi i32 [ %or55, %if.end53.do.body113_crit_edge ], [ %and66, %if.end84.do.body113_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rt715_sdw_write.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rt715_sdw_write, %if.then125)) #7
          to label %cleanup [label %if.then125], !srcloc !79

if.then125:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rt715_sdw_write.__UNIQUE_ID_ddebug299, ptr noundef %context, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11, i32 noundef %reg, i32 noundef %reg2.0238247, i32 noundef %val) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then125, %do.body113, %if.then108, %do.body96, %if.then91, %do.body, %if.end73.cleanup_crit_edge, %if.then65.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.then46.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then1.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then1.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ], [ %call17, %if.end12.cleanup_crit_edge ], [ %call25, %if.end20.cleanup_crit_edge ], [ %call32, %if.then30.cleanup_crit_edge ], [ %call40, %if.then38.cleanup_crit_edge ], [ %call50, %if.then46.cleanup_crit_edge ], [ %call58, %if.end53.cleanup_crit_edge ], [ %call70, %if.then65.cleanup_crit_edge ], [ %call76, %if.end73.cleanup_crit_edge ], [ 0, %if.then108 ], [ 0, %if.then125 ], [ 0, %if.then91 ], [ 0, %do.body ], [ 0, %do.body96 ], [ 0, %do.body113 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_read_prop(ptr noundef %slave) #4 align 64 {
entry:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #7
  %scp_int1_mask = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 19
  %0 = ptrtoint ptr %scp_int1_mask to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 7, ptr %scp_int1_mask, align 4
  %quirks = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 20
  %1 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %quirks, align 4
  %paging_support = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 9
  %2 = ptrtoint ptr %paging_support to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %paging_support, align 1
  %source_ports = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 14
  %3 = ptrtoint ptr %source_ports to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 80, ptr %source_ports, align 4
  %sink_ports = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 15
  %4 = ptrtoint ptr %sink_ports to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %sink_ports, align 4
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 168, i32 noundef 3520) #7
  %src_dpn_prop = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 17
  %5 = ptrtoint ptr %src_dpn_prop to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5.i.i, ptr %src_dpn_prop, align 4
  %tobool317.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool317.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %source_ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %source_ports, align 4
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %addr, align 4
  %call320 = call i32 @_find_next_bit_be(ptr noundef nonnull %addr, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call320)
  %cmp383 = icmp ult i32 %call320, 32
  br i1 %cmp383, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %bit.0385 = phi i32 [ %call325, %for.body.for.body_crit_edge ], [ %call320, %if.end.for.body_crit_edge ]
  %i.0384 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i, i32 %i.0384
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bit.0385, ptr %arrayidx, align 4
  %simple_ch_prep_sm = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i, i32 %i.0384, i32 7
  %10 = ptrtoint ptr %simple_ch_prep_sm to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %simple_ch_prep_sm, align 4
  %ch_prep_timeout = getelementptr %struct.sdw_dpn_prop, ptr %call5.i.i, i32 %i.0384, i32 8
  %11 = ptrtoint ptr %ch_prep_timeout to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 10, ptr %ch_prep_timeout, align 4
  %inc = add i32 %i.0384, 1
  %add324 = add nuw nsw i32 %bit.0385, 1
  %call325 = call i32 @_find_next_bit_be(ptr noundef nonnull %addr, i32 noundef 32, i32 noundef %add324) #7
  %cmp = icmp ult i32 %call325, 32
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %clk_stop_timeout = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 5
  %12 = ptrtoint ptr %clk_stop_timeout to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 20, ptr %clk_stop_timeout, align 4
  %wake_capable = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %wake_capable to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %wake_capable, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_update_status(ptr noundef %slave, i32 noundef %status) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status1 = getelementptr inbounds %struct.rt715_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %status, ptr %status1, align 4
  %hw_init = getelementptr inbounds %struct.rt715_priv, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hw_init, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status)
  %cmp.not = icmp eq i32 %status, 1
  %or.cond = and i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %call4 = tail call i32 @rt715_io_init(ptr noundef %dev, ptr noundef %slave) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_bus_config(ptr noundef %slave, ptr nocapture noundef readonly %params) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1
  %driver_data.i = getelementptr inbounds %struct.sdw_slave, ptr %slave, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %params1 = getelementptr inbounds %struct.rt715_priv, ptr %1, i32 0, i32 8
  %2 = call ptr @memcpy(ptr %params1, ptr %params, i32 36)
  %call3 = tail call i32 @rt715_clock_config(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt715_io_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt715_clock_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_dev_suspend(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hw_init = getelementptr inbounds %struct.rt715_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_init, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt715_dev_resume(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %first_hw_init = getelementptr inbounds %struct.rt715_priv, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %first_hw_init to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %first_hw_init, align 1, !range !80
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #10
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
  %call12 = tail call i32 @regcache_sync_region(ptr noundef %10, i32 noundef 12288, i32 noundef 36863) #7
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call14 = tail call i32 @regcache_sync_region(ptr noundef %12, i32 noundef 7675961, i32 noundef 7675961) #7
  br label %cleanup

cleanup:                                          ; preds = %regmap_sync, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %regmap_sync ], [ -110, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !24, !26, !28, !30, !31, !32, !33, !34, !36, !37, !39, !40, !42, !43, !44, !46, !47, !49, !50, !52, !54, !56, !58, !59, !60, !61, !62, !63, !65, !67, !68, !69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__ksymtab_hda_to_sdw, !1, !"__ksymtab_hda_to_sdw", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/rt715-sdw.c", i32 412, i32 1}
!2 = !{ptr @__initcall__kmod_snd_soc_rt715__300_581_rt715_sdw_driver_init6, !3, !"__initcall__kmod_snd_soc_rt715__300_581_rt715_sdw_driver_init6", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/rt715-sdw.c", i32 581, i32 1}
!4 = !{ptr @__exitcall_rt715_sdw_driver_exit, !3, !"__exitcall_rt715_sdw_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description301, !6, !"__UNIQUE_ID_description301", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/rt715-sdw.c", i32 583, i32 1}
!7 = !{ptr @__UNIQUE_ID_author302, !8, !"__UNIQUE_ID_author302", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/rt715-sdw.c", i32 584, i32 1}
!9 = !{ptr @__UNIQUE_ID_file303, !10, !"__UNIQUE_ID_file303", i1 false, i1 false}
!10 = !{!"../sound/soc/codecs/rt715-sdw.c", i32 585, i32 1}
!11 = !{ptr @__UNIQUE_ID_license304, !10, !"__UNIQUE_ID_license304", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/rt715-sdw.c", i32 573, i32 14}
!14 = !{ptr @rt715_sdw_driver, !15, !"rt715_sdw_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/rt715-sdw.c", i32 571, i32 26}
!16 = !{ptr @rt715_sdw_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/rt715-sdw.c", i32 503, i32 15}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @rt715_sdw_probe._key.2, !20, !"_key", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/rt715-sdw.c", i32 507, i32 11}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/rt715-sdw.c", i32 364, i32 10}
!24 = !{ptr @rt715_sdw_regmap, !25, !"rt715_sdw_regmap", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/rt715-sdw.c", i32 363, i32 35}
!26 = !{ptr @rt715_regmap, !27, !"rt715_regmap", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/rt715-sdw.c", i32 348, i32 35}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/rt715-sdw.c", i32 258, i32 3}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @rt715_sdw_read.__UNIQUE_ID_ddebug294, !29, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/rt715-sdw.c", i32 260, i32 3}
!36 = !{ptr @rt715_sdw_read.__UNIQUE_ID_ddebug295, !35, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/rt715-sdw.c", i32 263, i32 3}
!39 = !{ptr @rt715_sdw_read.__UNIQUE_ID_ddebug296, !38, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/rt715-sdw.c", i32 337, i32 3}
!42 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @rt715_sdw_write.__UNIQUE_ID_ddebug297, !41, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/rt715-sdw.c", i32 339, i32 3}
!46 = !{ptr @rt715_sdw_write.__UNIQUE_ID_ddebug298, !45, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/rt715-sdw.c", i32 342, i32 3}
!49 = !{ptr @rt715_sdw_write.__UNIQUE_ID_ddebug299, !48, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!50 = !{ptr @rt715_reg_defaults, !51, !"rt715_reg_defaults", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/rt715-sdw.h", i32 11, i32 33}
!52 = !{ptr @rt715_id, !53, !"rt715_id", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/rt715-sdw.c", i32 517, i32 35}
!54 = !{ptr @rt715_slave_ops, !55, !"rt715_slave_ops", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/rt715-sdw.c", i32 491, i32 35}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/rt715-sdw.c", i32 486, i32 3}
!58 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rt715_bus_config._entry, !57, !"_entry", i1 false, i1 false}
!62 = !{ptr @rt715_bus_config._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @rt715_pm, !64, !"rt715_pm", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/rt715-sdw.c", i32 566, i32 32}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/rt715-sdw.c", i32 553, i32 3}
!67 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @rt715_dev_resume._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @rt715_dev_resume._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 2148768571, i64 2148768576, i64 2148768589, i64 2148768633, i64 2148768667, i64 2148768688}
!80 = !{i8 0, i8 2}
