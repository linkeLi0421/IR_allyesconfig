; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/ts3a227e.c_pt.bc'
source_filename = "../sound/soc/codecs/ts3a227e.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ts3a227e_enable_jack_detect\22, \22a\22\09"
module asm "\09.weak\09__crc_ts3a227e_enable_jack_detect\09\09\09\09"
module asm "\09.long\09__crc_ts3a227e_enable_jack_detect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ts3a227e_enable_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22ts3a227e_enable_jack_detect\22\09\09\09\09\09"
module asm "__kstrtabns_ts3a227e_enable_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.reg_default = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ts3a227e = type { ptr, ptr, ptr, i8, i8, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@__kstrtab_ts3a227e_enable_jack_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_ts3a227e_enable_jack_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_ts3a227e_enable_jack_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ts3a227e_enable_jack_detect to i32), ptr @__kstrtab_ts3a227e_enable_jack_detect, ptr @__kstrtabns_ts3a227e_enable_jack_detect }, section "___ksymtab_gpl+ts3a227e_enable_jack_detect", align 4
@__initcall__kmod_snd_soc_ts3a227e__296_395_ts3a227e_driver_init6 = internal global ptr @ts3a227e_driver_init, section ".initcall6.init", align 4
@ts3a227e_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ts3a227e_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ts3a227e_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ts3a227e_pm, ptr null, ptr null }, ptr @ts3a227e_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ts3a227e_driver_exit = internal global ptr @ts3a227e_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description297 = internal constant [50 x i8] c"snd_soc_ts3a227e.description=ASoC ts3a227e driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [57 x i8] c"snd_soc_ts3a227e.author=Dylan Reid <dgreid@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [56 x i8] c"snd_soc_ts3a227e.file=sound/soc/codecs/snd-soc-ts3a227e\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [32 x i8] c"snd_soc_ts3a227e.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ts3a227e\00", [23 x i8] zeroinitializer }, align 32
@ts3a227e_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ts3a227e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ts3a227e_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ts3a227e_suspend, ptr @ts3a227e_resume, ptr @ts3a227e_suspend, ptr @ts3a227e_resume, ptr @ts3a227e_suspend, ptr @ts3a227e_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ts3a227e_i2c_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ts3a227e\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ts3a227e_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ts3a227e_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @ts3a227e_writeable_reg, ptr @ts3a227e_readable_reg, ptr @ts3a227e_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ts3a227e_reg_defaults, i32 16, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ts3a227e:301:(&ts3a227e_regmap_config)->lock\00", [51 x i8] zeroinitializer }, align 32
@ts3a227e_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 307, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to parse device property: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ts3a227e_i2c_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/codecs/ts3a227e.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ts3a227e_i2c_probe._entry_ptr = internal global ptr @ts3a227e_i2c_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TS3A227E\00", [23 x i8] zeroinitializer }, align 32
@ts3a227e_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 315, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot request irq %d (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@ts3a227e_i2c_probe._entry_ptr.10 = internal global ptr @ts3a227e_i2c_probe._entry.8, section ".printk_index", align 4
@ts3a227e_soc_driver = internal global { %struct.snd_soc_component_driver, [36 x i8] } zeroinitializer, align 32
@ts3a227e_reg_defaults = internal constant { [16 x %struct.reg_default], [32 x i8] } { [16 x %struct.reg_default] [%struct.reg_default { i32 0, i32 16 }, %struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 8 }, %struct.reg_default { i32 4, i32 35 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 14 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 9, i32 12 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 11, i32 0 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 13, i32 32 }, %struct.reg_default { i32 14, i32 64 }, %struct.reg_default { i32 15, i32 104 }], [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti,micbias\00", [21 x i8] zeroinitializer }, align 32
@ts3a227e_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 198, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to clear interrupt ret=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ts3a227e_interrupt\00", [45 x i8] zeroinitializer }, align 32
@ts3a227e_interrupt._entry_ptr = internal global ptr @ts3a227e_interrupt._entry, section ".printk_index", align 4
@ts3a227e_interrupt._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.4, i32 210, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to clear key interrupt ret=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@ts3a227e_interrupt._entry_ptr.16 = internal global ptr @ts3a227e_interrupt._entry.14, section ".printk_index", align 4
@ts3a227e_suspend.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.4, ptr @.str.19, i8 0, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_soc_ts3a227e\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ts3a227e_suspend\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"suspend disable irq\0A\00", [43 x i8] zeroinitializer }, align 32
@ts3a227e_resume.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 0, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ts3a227e_resume\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"resume enable irq\0A\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [16 x i8] c"ts3a227e_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 385, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 387, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"ts3a227e_of_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 370, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [12 x i8] c"ts3a227e_pm\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 359, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"ts3a227e_i2c_ids\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 363, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [23 x i8] c"ts3a227e_regmap_config\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 255, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 301, i32 21 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 307, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 313, i32 6 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 315, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [20 x i8] c"ts3a227e_soc_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 253, i32 40 }
@___asan_gen_.76 = private unnamed_addr constant [22 x i8] c"ts3a227e_reg_defaults\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 95, i32 33 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 275, i32 38 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 198, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 210, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 342, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [31 x i8] c"../sound/soc/codecs/ts3a227e.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 352, i32 2 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_ts3a227e_driver_exit, ptr @__initcall__kmod_snd_soc_ts3a227e__296_395_ts3a227e_driver_init6, ptr @__ksymtab_ts3a227e_enable_jack_detect, ptr @ts3a227e_driver_exit, ptr @ts3a227e_i2c_probe._entry, ptr @ts3a227e_i2c_probe._entry.8, ptr @ts3a227e_i2c_probe._entry_ptr, ptr @ts3a227e_i2c_probe._entry_ptr.10, ptr @ts3a227e_interrupt._entry, ptr @ts3a227e_interrupt._entry.14, ptr @ts3a227e_interrupt._entry_ptr, ptr @ts3a227e_interrupt._entry_ptr.16, ptr @ts3a227e_driver, ptr @.str, ptr @ts3a227e_of_match, ptr @ts3a227e_pm, ptr @ts3a227e_i2c_ids, ptr @ts3a227e_i2c_probe._key, ptr @ts3a227e_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @ts3a227e_soc_driver, ptr @ts3a227e_reg_defaults, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts3a227e_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts3a227e_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts3a227e_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts3a227e_i2c_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts3a227e_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts3a227e_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts3a227e_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts3a227e_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts3a227e_soc_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts3a227e_reg_defaults to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts3a227e_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts3a227e_interrupt._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ts3a227e_enable_jack_detect(ptr nocapture noundef readonly %component, ptr noundef %jack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %jack1 = getelementptr inbounds %struct.snd_soc_jack, ptr %jack, i32 0, i32 1
  %4 = ptrtoint ptr %jack1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %jack1, align 4
  %call2 = tail call i32 @snd_jack_set_key(ptr noundef %5, i32 noundef 16384, i32 noundef 164) #6
  %6 = ptrtoint ptr %jack1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %jack1, align 4
  %call4 = tail call i32 @snd_jack_set_key(ptr noundef %7, i32 noundef 8192, i32 noundef 582) #6
  %8 = ptrtoint ptr %jack1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %jack1, align 4
  %call6 = tail call i32 @snd_jack_set_key(ptr noundef %9, i32 noundef 4096, i32 noundef 115) #6
  %10 = ptrtoint ptr %jack1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %jack1, align 4
  %call8 = tail call i32 @snd_jack_set_key(ptr noundef %11, i32 noundef 2048, i32 noundef 114) #6
  %jack9 = getelementptr inbounds %struct.ts3a227e, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %jack9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %jack, ptr %jack9, align 4
  %tobool.not.i = icmp eq ptr %jack, null
  br i1 %tobool.not.i, label %entry.ts3a227e_jack_report.exit_crit_edge, label %if.end.i

entry.ts3a227e_jack_report.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ts3a227e_jack_report.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %plugged.i = getelementptr inbounds %struct.ts3a227e, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %plugged.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %plugged.i, align 4, !range !76
  %15 = zext i8 %14 to i32
  %mic_present.i = getelementptr inbounds %struct.ts3a227e, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %mic_present.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mic_present.i, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool4.not.i = icmp eq i8 %17, 0
  %or.i = or i32 %15, 2
  %report.1.i = select i1 %tobool4.not.i, i32 %15, i32 %or.i
  %buttons_held.i = getelementptr inbounds %struct.ts3a227e, ptr %3, i32 0, i32 5
  %18 = ptrtoint ptr %buttons_held.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buttons_held.i, align 4
  %and.i = shl i32 %19, 14
  %20 = and i32 %and.i, 16384
  %21 = or i32 %20, %report.1.i
  %and.1.i = shl i32 %19, 12
  %22 = and i32 %and.1.i, 8192
  %23 = or i32 %21, %22
  %and.2.i = shl i32 %19, 10
  %24 = and i32 %and.2.i, 4096
  %25 = or i32 %23, %24
  %and.3.i = shl i32 %19, 8
  %26 = and i32 %and.3.i, 2048
  %27 = or i32 %25, %26
  tail call void @snd_soc_jack_report(ptr noundef nonnull %jack, i32 noundef %27, i32 noundef 30723) #6
  br label %ts3a227e_jack_report.exit

ts3a227e_jack_report.exit:                        ; preds = %if.end.i, %entry.ts3a227e_jack_report.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_jack_set_key(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ts3a227e_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ts3a227e_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ts3a227e_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @ts3a227e_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ts3a227e_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %micbias.i = alloca i32, align 4
  %acc_reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acc_reg) #6
  %0 = ptrtoint ptr %acc_reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %acc_reg, align 4, !annotation !77
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 24, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %irq4 = getelementptr inbounds %struct.ts3a227e, ptr %call.i, i32 0, i32 6
  %5 = ptrtoint ptr %irq4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %irq4, align 4
  %call5 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @ts3a227e_regmap_config, ptr noundef nonnull @ts3a227e_i2c_probe._key, ptr noundef nonnull @.str.1) #6
  %regmap = getelementptr inbounds %struct.ts3a227e, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %micbias.i) #6
  %8 = ptrtoint ptr %micbias.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %micbias.i, align 4, !annotation !77
  %call.i.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.11, ptr noundef nonnull %micbias.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end11.ts3a227e_parse_device_property.exit_crit_edge

if.end11.ts3a227e_parse_device_property.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %ts3a227e_parse_device_property.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %11 = ptrtoint ptr %micbias.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %micbias.i, align 4
  %and.i = shl i32 %12, 3
  %shl.i = and i32 %and.i, 56
  %call.i1.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 6, i32 noundef 56, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %ts3a227e_parse_device_property.exit

ts3a227e_parse_device_property.exit:              ; preds = %if.then.i, %if.end11.ts3a227e_parse_device_property.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %micbias.i) #6
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  %call16 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %14, ptr noundef null, ptr noundef nonnull @ts3a227e_interrupt, i32 noundef 8200, ptr noundef nonnull @.str.7, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end23, label %do.end21

do.end21:                                         ; preds = %ts3a227e_parse_device_property.exit
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %16, i32 noundef %call16) #9
  br label %cleanup

if.end23:                                         ; preds = %ts3a227e_parse_device_property.exit
  %call25 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @ts3a227e_soc_driver, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i66 = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 3, i32 noundef 12, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call32 = call i32 @regmap_read(ptr noundef %20, i32 noundef 11, ptr noundef nonnull %acc_reg) #6
  %21 = ptrtoint ptr %acc_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %acc_reg, align 4
  %and.i67 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i67)
  %tobool.not.i68 = icmp ne i32 %and.i67, 0
  %and.lobit.i = lshr exact i32 %and.i67, 3
  %23 = trunc i32 %and.lobit.i to i8
  %and3.i = and i32 %22, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.i = icmp ne i32 %and3.i, 0
  %24 = and i1 %tobool.not.i68, %tobool4.i
  %plugged9.i = getelementptr inbounds %struct.ts3a227e, ptr %call.i, i32 0, i32 3
  %25 = ptrtoint ptr %plugged9.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %23, ptr %plugged9.i, align 4
  %mic_present12.i = getelementptr inbounds %struct.ts3a227e, ptr %call.i, i32 0, i32 4
  %26 = ptrtoint ptr %mic_present12.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mic_present12.i, align 1, !range !76
  %28 = zext i1 %24 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %28)
  %cmp.not.i = icmp eq i8 %27, %28
  br i1 %cmp.not.i, label %if.end28.ts3a227e_new_jack_state.exit_crit_edge, label %if.then.i69

if.end28.ts3a227e_new_jack_state.exit_crit_edge:  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %ts3a227e_new_jack_state.exit

if.then.i69:                                      ; preds = %if.end28
  %29 = ptrtoint ptr %mic_present12.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %mic_present12.i, align 1
  %buttons_held.i = getelementptr inbounds %struct.ts3a227e, ptr %call.i, i32 0, i32 5
  %30 = ptrtoint ptr %buttons_held.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %buttons_held.i, align 4
  br i1 %24, label %if.then20.i, label %if.then.i69.ts3a227e_new_jack_state.exit_crit_edge

if.then.i69.ts3a227e_new_jack_state.exit_crit_edge: ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_pc() #8
  br label %ts3a227e_new_jack_state.exit

if.then20.i:                                      ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call.i.i71 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 5, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %ts3a227e_new_jack_state.exit

ts3a227e_new_jack_state.exit:                     ; preds = %if.then20.i, %if.then.i69.ts3a227e_new_jack_state.exit_crit_edge, %if.end28.ts3a227e_new_jack_state.exit_crit_edge
  %jack.i = getelementptr inbounds %struct.ts3a227e, ptr %call.i, i32 0, i32 2
  %33 = ptrtoint ptr %jack.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %jack.i, align 4
  %tobool.not.i72 = icmp eq ptr %34, null
  br i1 %tobool.not.i72, label %ts3a227e_new_jack_state.exit.cleanup_crit_edge, label %if.end.i

ts3a227e_new_jack_state.exit.cleanup_crit_edge:   ; preds = %ts3a227e_new_jack_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %ts3a227e_new_jack_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %plugged9.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %plugged9.i, align 4, !range !76
  %37 = zext i8 %36 to i32
  %38 = ptrtoint ptr %mic_present12.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %mic_present12.i, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool4.not.i = icmp eq i8 %39, 0
  %or.i = or i32 %37, 2
  %report.1.i = select i1 %tobool4.not.i, i32 %37, i32 %or.i
  %buttons_held.i73 = getelementptr inbounds %struct.ts3a227e, ptr %call.i, i32 0, i32 5
  %40 = ptrtoint ptr %buttons_held.i73 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %buttons_held.i73, align 4
  %and.i74 = shl i32 %41, 14
  %42 = and i32 %and.i74, 16384
  %43 = or i32 %42, %report.1.i
  %and.1.i = shl i32 %41, 12
  %44 = and i32 %and.1.i, 8192
  %45 = or i32 %43, %44
  %and.2.i = shl i32 %41, 10
  %46 = and i32 %and.2.i, 4096
  %47 = or i32 %45, %46
  %and.3.i = shl i32 %41, 8
  %48 = and i32 %and.3.i, 2048
  %49 = or i32 %47, %48
  call void @snd_soc_jack_report(ptr noundef nonnull %34, i32 noundef %49, i32 noundef 30723) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %ts3a227e_new_jack_state.exit.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end21, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then8 ], [ %call16, %do.end21 ], [ -12, %entry.cleanup_crit_edge ], [ %call25, %if.end23.cleanup_crit_edge ], [ 0, %ts3a227e_new_jack_state.exit.cleanup_crit_edge ], [ 0, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acc_reg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ts3a227e_interrupt(i32 noundef %irq, ptr nocapture noundef %data) #0 align 64 {
entry:
  %int_reg = alloca i32, align 4
  %kp_int_reg = alloca i32, align 4
  %acc_reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.ts3a227e, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_reg) #6
  %2 = ptrtoint ptr %int_reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %int_reg, align 4, !annotation !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kp_int_reg) #6
  %3 = ptrtoint ptr %kp_int_reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %kp_int_reg, align 4, !annotation !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acc_reg) #6
  %4 = ptrtoint ptr %acc_reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %acc_reg, align 4, !annotation !77
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %call = call i32 @regmap_read(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %int_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.12, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %int_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %int_reg, align 4
  %and = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %if.end
  %call5 = call i32 @regmap_read(ptr noundef %1, i32 noundef 11, ptr noundef nonnull %acc_reg) #6
  %9 = ptrtoint ptr %acc_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %acc_reg, align 4
  %and.i = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %and.lobit.i = lshr exact i32 %and.i, 3
  %11 = trunc i32 %and.lobit.i to i8
  %and3.i = and i32 %10, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.i = icmp ne i32 %and3.i, 0
  %12 = and i1 %tobool.not.i, %tobool4.i
  %plugged9.i = getelementptr inbounds %struct.ts3a227e, ptr %data, i32 0, i32 3
  %13 = ptrtoint ptr %plugged9.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %11, ptr %plugged9.i, align 4
  %mic_present12.i = getelementptr inbounds %struct.ts3a227e, ptr %data, i32 0, i32 4
  %14 = ptrtoint ptr %mic_present12.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mic_present12.i, align 1, !range !76
  %16 = zext i1 %12 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %16)
  %cmp.not.i = icmp eq i8 %15, %16
  br i1 %cmp.not.i, label %if.then4.if.end6_crit_edge, label %if.then.i

if.then4.if.end6_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then.i:                                        ; preds = %if.then4
  %17 = ptrtoint ptr %mic_present12.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %mic_present12.i, align 1
  %buttons_held.i = getelementptr inbounds %struct.ts3a227e, ptr %data, i32 0, i32 5
  %18 = ptrtoint ptr %buttons_held.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %buttons_held.i, align 4
  br i1 %12, label %if.then20.i, label %if.then.i.if.end6_crit_edge

if.then.i.if.end6_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then20.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap1, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 5, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then20.i, %if.then.i.if.end6_crit_edge, %if.then4.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %call7 = call i32 @regmap_read(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %kp_int_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %for.cond.preheader, label %do.end12

for.cond.preheader:                               ; preds = %if.end6
  %21 = ptrtoint ptr %kp_int_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %kp_int_reg, align 4
  %buttons_held = getelementptr inbounds %struct.ts3a227e, ptr %data, i32 0, i32 5
  %and14 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %for.cond.preheader.if.end18_crit_edge, label %if.then16

for.cond.preheader.if.end18_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.15, i32 noundef %call7) #9
  br label %cleanup

if.then16:                                        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %buttons_held to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buttons_held, align 4
  %or = or i32 %24, 1
  store i32 %or, ptr %buttons_held, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %for.cond.preheader.if.end18_crit_edge
  %and21 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end18.for.inc_crit_edge, label %if.then23

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %buttons_held to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buttons_held, align 4
  %and26 = and i32 %26, -2
  store i32 %and26, ptr %buttons_held, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then23, %if.end18.for.inc_crit_edge
  %and14.1 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.1)
  %tobool15.not.1 = icmp eq i32 %and14.1, 0
  br i1 %tobool15.not.1, label %for.inc.if.end18.1_crit_edge, label %if.then16.1

for.inc.if.end18.1_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.1

if.then16.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %buttons_held to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buttons_held, align 4
  %or.1 = or i32 %28, 2
  store i32 %or.1, ptr %buttons_held, align 4
  br label %if.end18.1

if.end18.1:                                       ; preds = %if.then16.1, %for.inc.if.end18.1_crit_edge
  %and21.1 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.1)
  %tobool22.not.1 = icmp eq i32 %and21.1, 0
  br i1 %tobool22.not.1, label %if.end18.1.for.inc.1_crit_edge, label %if.then23.1

if.end18.1.for.inc.1_crit_edge:                   ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then23.1:                                      ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %buttons_held to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buttons_held, align 4
  %and26.1 = and i32 %30, -3
  store i32 %and26.1, ptr %buttons_held, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then23.1, %if.end18.1.for.inc.1_crit_edge
  %and14.2 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.2)
  %tobool15.not.2 = icmp eq i32 %and14.2, 0
  br i1 %tobool15.not.2, label %for.inc.1.if.end18.2_crit_edge, label %if.then16.2

for.inc.1.if.end18.2_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.2

if.then16.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %buttons_held to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buttons_held, align 4
  %or.2 = or i32 %32, 4
  store i32 %or.2, ptr %buttons_held, align 4
  br label %if.end18.2

if.end18.2:                                       ; preds = %if.then16.2, %for.inc.1.if.end18.2_crit_edge
  %and21.2 = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.2)
  %tobool22.not.2 = icmp eq i32 %and21.2, 0
  br i1 %tobool22.not.2, label %if.end18.2.for.inc.2_crit_edge, label %if.then23.2

if.end18.2.for.inc.2_crit_edge:                   ; preds = %if.end18.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then23.2:                                      ; preds = %if.end18.2
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %buttons_held to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buttons_held, align 4
  %and26.2 = and i32 %34, -5
  store i32 %and26.2, ptr %buttons_held, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then23.2, %if.end18.2.for.inc.2_crit_edge
  %and14.3 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.3)
  %tobool15.not.3 = icmp eq i32 %and14.3, 0
  br i1 %tobool15.not.3, label %for.inc.2.if.end18.3_crit_edge, label %if.then16.3

for.inc.2.if.end18.3_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.3

if.then16.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %buttons_held to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %buttons_held, align 4
  %or.3 = or i32 %36, 8
  store i32 %or.3, ptr %buttons_held, align 4
  br label %if.end18.3

if.end18.3:                                       ; preds = %if.then16.3, %for.inc.2.if.end18.3_crit_edge
  %and21.3 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.3)
  %tobool22.not.3 = icmp eq i32 %and21.3, 0
  br i1 %tobool22.not.3, label %if.end18.3.for.inc.3_crit_edge, label %if.then23.3

if.end18.3.for.inc.3_crit_edge:                   ; preds = %if.end18.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then23.3:                                      ; preds = %if.end18.3
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %buttons_held to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %buttons_held, align 4
  %and26.3 = and i32 %38, -9
  store i32 %and26.3, ptr %buttons_held, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then23.3, %if.end18.3.for.inc.3_crit_edge
  %jack.i = getelementptr inbounds %struct.ts3a227e, ptr %data, i32 0, i32 2
  %39 = ptrtoint ptr %jack.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %jack.i, align 4
  %tobool.not.i51 = icmp eq ptr %40, null
  br i1 %tobool.not.i51, label %for.inc.3.cleanup_crit_edge, label %if.end.i

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  %plugged.i = getelementptr inbounds %struct.ts3a227e, ptr %data, i32 0, i32 3
  %41 = ptrtoint ptr %plugged.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %plugged.i, align 4, !range !76
  %43 = zext i8 %42 to i32
  %mic_present.i = getelementptr inbounds %struct.ts3a227e, ptr %data, i32 0, i32 4
  %44 = ptrtoint ptr %mic_present.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %mic_present.i, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool4.not.i = icmp eq i8 %45, 0
  %or.i = or i32 %43, 2
  %report.1.i = select i1 %tobool4.not.i, i32 %43, i32 %or.i
  %46 = ptrtoint ptr %buttons_held to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %buttons_held, align 4
  %and.i53 = shl i32 %47, 14
  %48 = and i32 %and.i53, 16384
  %49 = or i32 %48, %report.1.i
  %and.1.i = shl i32 %47, 12
  %50 = and i32 %and.1.i, 8192
  %51 = or i32 %49, %50
  %and.2.i = shl i32 %47, 10
  %52 = and i32 %and.2.i, 4096
  %53 = or i32 %51, %52
  %and.3.i = shl i32 %47, 8
  %54 = and i32 %and.3.i, 2048
  %55 = or i32 %53, %54
  call void @snd_soc_jack_report(ptr noundef nonnull %40, i32 noundef %55, i32 noundef 30723) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %for.inc.3.cleanup_crit_edge, %do.end12, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end12 ], [ 1, %for.inc.3.cleanup_crit_edge ], [ 1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acc_reg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kp_int_reg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_reg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ts3a227e_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 13
  %switch.cast = trunc i32 %switch.tableidx to i13
  %switch.downshift = lshr i13 -961, %switch.cast
  %1 = and i13 %switch.downshift, 1
  %2 = sext i13 %1 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %switch.masked = icmp ne i13 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ts3a227e_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %reg)
  %switch = icmp ult i32 %reg, 16
  ret i1 %switch
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ts3a227e_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 12
  %switch.cast = trunc i32 %switch.tableidx to i12
  %switch.downshift = lshr i12 -233, %switch.cast
  %1 = and i12 %switch.downshift, 1
  %2 = sext i12 %1 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %switch.masked = icmp ne i12 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ts3a227e_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ts3a227e_suspend.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ts3a227e_suspend, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !78

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ts3a227e_suspend.__UNIQUE_ID_ddebug294, ptr noundef %3, ptr noundef nonnull @.str.19) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %irq = getelementptr inbounds %struct.ts3a227e, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ts3a227e_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ts3a227e_resume.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ts3a227e_resume, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !78

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ts3a227e_resume.__UNIQUE_ID_ddebug295, ptr noundef %3, ptr noundef nonnull @.str.21) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %irq = getelementptr inbounds %struct.ts3a227e, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !34, !35, !37, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58, !59, !60, !61, !63, !64, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__ksymtab_ts3a227e_enable_jack_detect, !1, !"__ksymtab_ts3a227e_enable_jack_detect", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/ts3a227e.c", i32 251, i32 1}
!2 = !{ptr @__initcall__kmod_snd_soc_ts3a227e__296_395_ts3a227e_driver_init6, !3, !"__initcall__kmod_snd_soc_ts3a227e__296_395_ts3a227e_driver_init6", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/ts3a227e.c", i32 395, i32 1}
!4 = !{ptr @__exitcall_ts3a227e_driver_exit, !3, !"__exitcall_ts3a227e_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description297, !6, !"__UNIQUE_ID_description297", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/ts3a227e.c", i32 397, i32 1}
!7 = !{ptr @__UNIQUE_ID_author298, !8, !"__UNIQUE_ID_author298", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/ts3a227e.c", i32 398, i32 1}
!9 = !{ptr @__UNIQUE_ID_file299, !10, !"__UNIQUE_ID_file299", i1 false, i1 false}
!10 = !{!"../sound/soc/codecs/ts3a227e.c", i32 399, i32 1}
!11 = !{ptr @__UNIQUE_ID_license300, !10, !"__UNIQUE_ID_license300", i1 false, i1 false}
!12 = distinct !{null, !13, !"ts3a227e_buttons", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/ts3a227e.c", i32 34, i32 18}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/ts3a227e.c", i32 387, i32 11}
!16 = !{ptr @ts3a227e_driver, !17, !"ts3a227e_driver", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/ts3a227e.c", i32 385, i32 26}
!18 = !{ptr @ts3a227e_i2c_probe._key, !19, !"_key", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/ts3a227e.c", i32 301, i32 21}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/ts3a227e.c", i32 307, i32 3}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ts3a227e_i2c_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @ts3a227e_i2c_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/ts3a227e.c", i32 313, i32 6}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/ts3a227e.c", i32 315, i32 3}
!33 = !{ptr @ts3a227e_i2c_probe._entry.8, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ts3a227e_i2c_probe._entry_ptr.10, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @ts3a227e_regmap_config, !36, !"ts3a227e_regmap_config", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/ts3a227e.c", i32 255, i32 35}
!37 = !{ptr @ts3a227e_reg_defaults, !38, !"ts3a227e_reg_defaults", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/ts3a227e.c", i32 95, i32 33}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/ts3a227e.c", i32 275, i32 38}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/ts3a227e.c", i32 198, i32 3}
!43 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ts3a227e_interrupt._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @ts3a227e_interrupt._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/ts3a227e.c", i32 210, i32 3}
!48 = !{ptr @ts3a227e_interrupt._entry.14, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ts3a227e_interrupt._entry_ptr.16, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @ts3a227e_soc_driver, !51, !"ts3a227e_soc_driver", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/ts3a227e.c", i32 253, i32 40}
!52 = !{ptr @ts3a227e_of_match, !53, !"ts3a227e_of_match", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/ts3a227e.c", i32 370, i32 34}
!54 = !{ptr @ts3a227e_pm, !55, !"ts3a227e_pm", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/ts3a227e.c", i32 359, i32 32}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/ts3a227e.c", i32 342, i32 2}
!58 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ts3a227e_suspend.__UNIQUE_ID_ddebug294, !57, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/ts3a227e.c", i32 352, i32 2}
!63 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ts3a227e_resume.__UNIQUE_ID_ddebug295, !62, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!65 = !{ptr @ts3a227e_i2c_ids, !66, !"ts3a227e_i2c_ids", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/ts3a227e.c", i32 363, i32 35}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i8 0, i8 2}
!77 = !{!"auto-init"}
!78 = !{i64 2148329416, i64 2148329421, i64 2148329434, i64 2148329478, i64 2148329512, i64 2148329533}
