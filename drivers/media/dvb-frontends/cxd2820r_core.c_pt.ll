; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/cxd2820r_core.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2820r_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cxd2820r_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_cxd2820r_attach\09\09\09\09"
module asm "\09.long\09__crc_cxd2820r_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxd2820r_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22cxd2820r_attach\22\09\09\09\09\09"
module asm "__kstrtabns_cxd2820r_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.cxd2820r_priv = type { [2 x ptr], [2 x ptr], ptr, %struct.dvb_frontend, i8, i8, i8, i8, i64, i64, i8, [3 x i8], %struct.gpio_chip, i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.78], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.78 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.79 }>
%union.anon.79 = type { i64 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.85, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.reg_val_mask = type { i32, i8, i8 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.cxd2820r_platform_data = type { i8, i8, i8, i8, ptr, ptr, i8 }
%struct.cxd2820r_config = type { i8, i8, i8, i8, i8 }

@cxd2820r_wr_reg_val_mask_tab.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cxd2820r\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cxd2820r_wr_reg_val_mask_tab\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/dvb-frontends/cxd2820r_core.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tab_len=%d\0A\00", [20 x i8] zeroinitializer }, align 32
@cxd2820r_wr_reg_val_mask_tab.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@cxd2820r_gpio.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cxd2820r_gpio\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"delivery_system=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@cxd2820r_gpio.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gpio i=%d %02x %02x\0A\00", [43 x i8] zeroinitializer }, align 32
@cxd2820r_gpio.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wr gpio=%02x %02x\0A\00", [45 x i8] zeroinitializer }, align 32
@cxd2820r_gpio.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.4, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__kstrtab_cxd2820r_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxd2820r_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_cxd2820r_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxd2820r_attach to i32), ptr @__kstrtab_cxd2820r_attach, ptr @__kstrtabns_cxd2820r_attach }, section "___ksymtab+cxd2820r_attach", align 4
@__initcall__kmod_cxd2820r__319_744_cxd2820r_driver_init6 = internal global ptr @cxd2820r_driver_init, section ".initcall6.init", align 4
@cxd2820r_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @cxd2820r_probe, ptr @cxd2820r_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @cxd2820r_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cxd2820r_driver_exit = internal global ptr @cxd2820r_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author320 = internal constant [47 x i8] c"cxd2820r.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description321 = internal constant [54 x i8] c"cxd2820r.description=Sony CXD2820R demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file322 = internal constant [51 x i8] c"cxd2820r.file=drivers/media/dvb-frontends/cxd2820r\00", section ".modinfo", align 1
@__UNIQUE_ID_license323 = internal constant [21 x i8] c"cxd2820r.license=GPL\00", section ".modinfo", align 1
@cxd2820r_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cxd2820r\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cxd2820r_probe.regmap_range_cfg0 = internal constant { [1 x %struct.regmap_range_cfg], [32 x i8] } { [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr null, i32 0, i32 16383, i32 0, i32 255, i32 0, i32 0, i32 256 }], [32 x i8] zeroinitializer }, align 32
@cxd2820r_probe.regmap_range_cfg1 = internal constant { [1 x %struct.regmap_range_cfg], [32 x i8] } { [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr null, i32 0, i32 511, i32 0, i32 255, i32 0, i32 0, i32 256 }], [32 x i8] zeroinitializer }, align 32
@cxd2820r_probe.regmap_config0 = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 16383, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr @cxd2820r_probe.regmap_range_cfg0, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@cxd2820r_probe.regmap_config1 = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 511, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr @cxd2820r_probe.regmap_range_cfg1, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@cxd2820r_probe.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 -107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cxd2820r_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@cxd2820r_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cxd2820r_core:612:(&regmap_config0)->lock\00", [54 x i8] zeroinitializer }, align 32
@cxd2820r_probe.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 0, i8 -101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chip_id=%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@cxd2820r_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.2, i32 638, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"I2C registration failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cxd2820r_probe._entry_ptr = internal global ptr @cxd2820r_probe._entry, section ".printk_index", align 4
@cxd2820r_probe._key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cxd2820r_core:642:(&regmap_config1)->lock\00", [54 x i8] zeroinitializer }, align 32
@cxd2820r_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@cxd2820r_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@cxd2820r_probe.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.18, i8 0, i8 -90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gpio_chip.base=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@cxd2820r_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Sony CXD2820R\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1810104658 }, [8 x i8] c"\03\10\01\00\00\00\00\00", ptr null, ptr @cxd2820r_release, ptr null, ptr @cxd2820r_init, ptr @cxd2820r_sleep, ptr null, ptr null, ptr null, ptr null, ptr @cxd2820r_get_frontend_algo, ptr null, ptr @cxd2820r_get_tune_settings, ptr @cxd2820r_get_frontend, ptr @cxd2820r_read_status, ptr @cxd2820r_read_ber, ptr @cxd2820r_read_signal_strength, ptr @cxd2820r_read_snr, ptr @cxd2820r_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cxd2820r_i2c_gate_ctrl, ptr null, ptr null, ptr @cxd2820r_search, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@cxd2820r_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.2, i32 692, ptr @.str.21, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Sony CXD2820R successfully identified\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cxd2820r_probe._entry_ptr.22 = internal global ptr @cxd2820r_probe._entry.19, section ".printk_index", align 4
@cxd2820r_probe.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.4, i8 0, i8 -80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cxd2820r_gpio_direction_output.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cxd2820r_gpio_direction_output\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nr=%u val=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@cxd2820r_gpio_set.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.24, i8 0, i8 110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxd2820r_gpio_set\00", [46 x i8] zeroinitializer }, align 32
@cxd2820r_gpio_get.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxd2820r_gpio_get\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nr=%u\0A\00", [25 x i8] zeroinitializer }, align 32
@cxd2820r_release.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.10, i8 0, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cxd2820r_release\00", [47 x i8] zeroinitializer }, align 32
@cxd2820r_sleep.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.6, i8 0, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cxd2820r_sleep\00", [17 x i8] zeroinitializer }, align 32
@cxd2820r_get_tune_settings.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.6, i8 0, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cxd2820r_get_tune_settings\00", [37 x i8] zeroinitializer }, align 32
@cxd2820r_get_frontend.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.6, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cxd2820r_get_frontend\00", [42 x i8] zeroinitializer }, align 32
@cxd2820r_read_status.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.6, i8 0, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cxd2820r_read_status\00", [43 x i8] zeroinitializer }, align 32
@cxd2820r_read_ber.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.6, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxd2820r_read_ber\00", [46 x i8] zeroinitializer }, align 32
@cxd2820r_read_signal_strength.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.6, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cxd2820r_read_signal_strength\00", [34 x i8] zeroinitializer }, align 32
@cxd2820r_read_snr.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.6, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxd2820r_read_snr\00", [46 x i8] zeroinitializer }, align 32
@cxd2820r_read_ucblocks.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.6, i8 0, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cxd2820r_read_ucblocks\00", [41 x i8] zeroinitializer }, align 32
@cxd2820r_i2c_gate_ctrl._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@cxd2820r_i2c_gate_ctrl.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cxd2820r_i2c_gate_ctrl\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"enable=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@cxd2820r_search.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.6, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cxd2820r_search\00", [16 x i8] zeroinitializer }, align 32
@cxd2820r_search.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"loop=%d\0A\00", [23 x i8] zeroinitializer }, align 32
@cxd2820r_search.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.4, i8 0, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cxd2820r_set_frontend.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.6, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cxd2820r_set_frontend\00", [42 x i8] zeroinitializer }, align 32
@cxd2820r_set_frontend.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid delivery_system\0A\00", [39 x i8] zeroinitializer }, align 32
@cxd2820r_get_dvb_frontend.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.10, i8 0, i8 -120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cxd2820r_get_dvb_frontend\00", [38 x i8] zeroinitializer }, align 32
@cxd2820r_remove.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.10, i8 0, i8 -78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cxd2820r_remove\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 16]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 16]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 16]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 16]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 16]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 16]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 16]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 16]
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 20, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 42, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 54, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 81, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 84, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [16 x i8] c"cxd2820r_driver\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 734, i32 26 }
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"cxd2820r_id_table\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 728, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant [18 x i8] c"regmap_range_cfg0\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 557, i32 39 }
@___asan_gen_.89 = private unnamed_addr constant [18 x i8] c"regmap_range_cfg1\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 568, i32 39 }
@___asan_gen_.92 = private unnamed_addr constant [15 x i8] c"regmap_config0\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 579, i32 36 }
@___asan_gen_.95 = private unnamed_addr constant [15 x i8] c"regmap_config1\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 587, i32 36 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 596, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 612, i32 20 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 623, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 638, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 642, i32 20 }
@___asan_gen_.131 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 660, i32 9 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 664, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [13 x i8] c"cxd2820r_ops\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 463, i32 38 }
@___asan_gen_.143 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 692, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 428, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 442, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 457, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 403, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 274, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 301, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 181, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 154, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 209, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 223, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 239, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 255, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 415, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 328, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 369, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 111, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 139, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 545, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.222 = private constant [47 x i8] c"../drivers/media/dvb-frontends/cxd2820r_core.c\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 712, i32 2 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author320, ptr @__UNIQUE_ID_description321, ptr @__UNIQUE_ID_file322, ptr @__UNIQUE_ID_license323, ptr @__exitcall_cxd2820r_driver_exit, ptr @__initcall__kmod_cxd2820r__319_744_cxd2820r_driver_init6, ptr @__ksymtab_cxd2820r_attach, ptr @cxd2820r_driver_exit, ptr @cxd2820r_probe._entry, ptr @cxd2820r_probe._entry.19, ptr @cxd2820r_probe._entry_ptr, ptr @cxd2820r_probe._entry_ptr.22, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @cxd2820r_driver, ptr @cxd2820r_id_table, ptr @cxd2820r_probe.regmap_range_cfg0, ptr @cxd2820r_probe.regmap_range_cfg1, ptr @cxd2820r_probe.regmap_config0, ptr @cxd2820r_probe.regmap_config1, ptr @.str.9, ptr @.str.10, ptr @cxd2820r_probe._key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @cxd2820r_probe._key.16, ptr @.str.17, ptr @cxd2820r_probe.lock_key, ptr @cxd2820r_probe.request_key, ptr @.str.18, ptr @cxd2820r_ops, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @cxd2820r_i2c_gate_ctrl._rs, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2820r_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2820r_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2820r_probe.regmap_range_cfg0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2820r_probe.regmap_range_cfg1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2820r_probe.regmap_config0 to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2820r_probe.regmap_config1 to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2820r_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2820r_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2820r_probe._key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2820r_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2820r_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2820r_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2820r_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2820r_i2c_gate_ctrl._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_wr_reg_val_mask_tab(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %tab, i32 noundef %tab_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_wr_reg_val_mask_tab.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_wr_reg_val_mask_tab, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_wr_reg_val_mask_tab.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %tab_len) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tab_len)
  %cmp78.not = icmp eq i32 %tab_len, 0
  br i1 %cmp78.not, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %arrayidx9 = getelementptr %struct.cxd2820r_priv, ptr %priv, i32 0, i32 1, i32 1
  %regmap10 = getelementptr inbounds %struct.cxd2820r_priv, ptr %priv, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %if.end28
  %inc = add nuw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc, %tab_len
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx4 = getelementptr %struct.reg_val_mask, ptr %tab, i32 %i.079
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx4, align 4
  %4 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool6.not = icmp eq i32 %4, 0
  %regmap.0.in = select i1 %tobool6.not, ptr %regmap10, ptr %arrayidx9
  %5 = ptrtoint ptr %regmap.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %regmap.0 = load ptr, ptr %regmap.0.in, align 4
  %and16 = and i32 %3, 65535
  %val18 = getelementptr %struct.reg_val_mask, ptr %tab, i32 %i.079, i32 1
  %6 = ptrtoint ptr %val18 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val18, align 4
  %conv = zext i8 %7 to i32
  %mask20 = getelementptr %struct.reg_val_mask, ptr %tab, i32 %i.079, i32 2
  %8 = ptrtoint ptr %mask20 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mask20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp22 = icmp eq i8 %9, -1
  br i1 %cmp22, label %if.then24, label %if.else26

if.then24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call25 = tail call i32 @regmap_write(ptr noundef %regmap.0, i32 noundef %and16, i32 noundef %conv) #8
  br label %if.end28

if.else26:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv21 = zext i8 %9 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %regmap.0, i32 noundef %and16, i32 noundef %conv21, i32 noundef %conv, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.then24
  %ret.0 = phi i32 [ %call25, %if.then24 ], [ %call.i, %if.else26 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool29.not = icmp eq i32 %ret.0, 0
  br i1 %tobool29.not, label %for.cond, label %do.body32

do.body32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_wr_reg_val_mask_tab.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_wr_reg_val_mask_tab, %if.then44)) #8
          to label %cleanup [label %if.then44], !srcloc !152

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  %dev45 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_wr_reg_val_mask_tab.__UNIQUE_ID_ddebug291, ptr noundef %dev45, ptr noundef nonnull @.str.4, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %do.body32, %for.cond.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.then44 ], [ %ret.0, %do.body32 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_gpio(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %gpio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_gpio.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_gpio, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %4 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delivery_system, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_gpio.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %gpio4 = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 11
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(3) %gpio, ptr noundef dereferenceable(3) %gpio4, i32 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool6.not = icmp eq i32 %bcmp, 0
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %for.cond.preheader

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end
  %dev65 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0181 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %tmp0.0180 = phi i8 [ 0, %for.cond.preheader ], [ %tmp0.1, %for.inc.for.body_crit_edge ]
  %tmp1.0179 = phi i8 [ 0, %for.cond.preheader ], [ %tmp1.2, %for.inc.for.body_crit_edge ]
  %arrayidx9 = getelementptr i8, ptr %gpio, i32 %i.0181
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool10.not = icmp eq i8 %8, 0
  %mul = shl nuw nsw i32 %i.0181, 1
  %.pn.in.v = select i1 %tobool10.not, i32 64, i32 128
  %.pn.in = lshr i32 %.pn.in.v, %mul
  %.pn = trunc i32 %.pn.in to i8
  %tmp0.1 = or i8 %tmp0.0180, %.pn
  %9 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool23.not = icmp eq i8 %9, 0
  %shl = shl i32 8, %i.0181
  %10 = trunc i32 %shl to i8
  %conv27 = select i1 %tobool23.not, i8 0, i8 %10
  %tmp1.1 = or i8 %conv27, %tmp1.0179
  %11 = and i8 %7, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool38.not = icmp eq i8 %11, 0
  %shl41 = shl nuw nsw i32 1, %i.0181
  %12 = trunc i32 %shl41 to i8
  %conv44 = select i1 %tobool38.not, i8 0, i8 %12
  %tmp1.2 = or i8 %tmp1.1, %conv44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_gpio.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_gpio, %if.then64)) #8
          to label %for.inc [label %if.then64], !srcloc !152

if.then64:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv66 = zext i8 %tmp0.1 to i32
  %conv67 = zext i8 %tmp1.2 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_gpio.__UNIQUE_ID_ddebug293, ptr noundef %dev65, ptr noundef nonnull @.str.7, i32 noundef %i.0181, i32 noundef %conv66, i32 noundef %conv67) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then64, %for.body
  %inc = add nuw nsw i32 %i.0181, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %do.body71, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body71:                                        ; preds = %for.inc
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_gpio.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_gpio, %if.then83)) #8
          to label %do.end89 [label %if.then83], !srcloc !152

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  %conv85 = zext i8 %tmp0.1 to i32
  %conv86 = zext i8 %tmp1.2 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_gpio.__UNIQUE_ID_ddebug294, ptr noundef %dev65, ptr noundef nonnull @.str.8, i32 noundef %conv85, i32 noundef %conv86) #8
  br label %do.end89

do.end89:                                         ; preds = %if.then83, %do.body71
  %regmap = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 8
  %conv91 = zext i8 %tmp0.1 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 137, i32 noundef 252, i32 noundef %conv91, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool93.not = icmp eq i32 %call.i, 0
  br i1 %tobool93.not, label %if.end95, label %do.end89.do.body105_crit_edge

do.end89.do.body105_crit_edge:                    ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body105

if.end95:                                         ; preds = %do.end89
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 8
  %conv98 = zext i8 %tmp1.2 to i32
  %call.i174 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 142, i32 noundef 63, i32 noundef %conv98, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174)
  %tobool100.not = icmp eq i32 %call.i174, 0
  br i1 %tobool100.not, label %if.end102, label %if.end95.do.body105_crit_edge

if.end95.do.body105_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body105

if.end102:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  %17 = call ptr @memcpy(ptr %gpio4, ptr %gpio, i32 3)
  br label %cleanup

do.body105:                                       ; preds = %if.end95.do.body105_crit_edge, %do.end89.do.body105_crit_edge
  %ret.0 = phi i32 [ %call.i, %do.end89.do.body105_crit_edge ], [ %call.i174, %if.end95.do.body105_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_gpio.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_gpio, %if.then117)) #8
          to label %cleanup [label %if.then117], !srcloc !152

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_gpio.__UNIQUE_ID_ddebug295, ptr noundef %dev65, ptr noundef nonnull @.str.4, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then117, %do.body105, %if.end102, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end102 ], [ 0, %do.end.cleanup_crit_edge ], [ %ret.0, %if.then117 ], [ %ret.0, %do.body105 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cxd2820r_attach(ptr nocapture noundef readonly %config, ptr noundef %adapter, ptr noundef %gpio_chip_base) #0 align 64 {
entry:
  %gpio_chip_base.addr = alloca ptr, align 4
  %board_info = alloca %struct.i2c_board_info, align 4
  %pdata = alloca %struct.cxd2820r_platform_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gpio_chip_base.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %gpio_chip_base, ptr %gpio_chip_base.addr, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %board_info) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pdata) #8
  %1 = getelementptr inbounds i8, ptr %pdata, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 -1, ptr %1, align 4
  %ts_mode = getelementptr inbounds %struct.cxd2820r_config, ptr %config, i32 0, i32 1
  %3 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ts_mode, align 1
  %5 = ptrtoint ptr %pdata to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %pdata, align 4
  %ts_clock_inv = getelementptr inbounds %struct.cxd2820r_config, ptr %config, i32 0, i32 2
  %6 = ptrtoint ptr %ts_clock_inv to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ts_clock_inv, align 1, !range !153
  %ts_clk_inv = getelementptr inbounds %struct.cxd2820r_platform_data, ptr %pdata, i32 0, i32 1
  %8 = ptrtoint ptr %ts_clk_inv to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %ts_clk_inv, align 1
  %if_agc_polarity = getelementptr inbounds %struct.cxd2820r_config, ptr %config, i32 0, i32 3
  %9 = ptrtoint ptr %if_agc_polarity to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %if_agc_polarity, align 1, !range !153
  %if_agc_polarity3 = getelementptr inbounds %struct.cxd2820r_platform_data, ptr %pdata, i32 0, i32 2
  %11 = ptrtoint ptr %if_agc_polarity3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %if_agc_polarity3, align 2
  %spec_inv = getelementptr inbounds %struct.cxd2820r_config, ptr %config, i32 0, i32 4
  %12 = ptrtoint ptr %spec_inv to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %spec_inv, align 1, !range !153
  %spec_inv6 = getelementptr inbounds %struct.cxd2820r_platform_data, ptr %pdata, i32 0, i32 3
  %14 = ptrtoint ptr %spec_inv6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %spec_inv6, align 1
  %gpio_chip_base8 = getelementptr inbounds %struct.cxd2820r_platform_data, ptr %pdata, i32 0, i32 4
  %15 = ptrtoint ptr %gpio_chip_base8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %gpio_chip_base.addr, ptr %gpio_chip_base8, align 4
  %attach_in_use = getelementptr inbounds %struct.cxd2820r_platform_data, ptr %pdata, i32 0, i32 6
  %16 = ptrtoint ptr %attach_in_use to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %attach_in_use, align 4
  %17 = call ptr @memset(ptr %board_info, i32 0, i32 56)
  %call = call i32 @strscpy(ptr noundef nonnull %board_info, ptr noundef nonnull @.str, i32 noundef 20) #8
  %18 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %config, align 1
  %conv = zext i8 %19 to i16
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %board_info, i32 0, i32 2
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv, ptr %addr, align 2
  %platform_data = getelementptr inbounds %struct.i2c_board_info, ptr %board_info, i32 0, i32 4
  %21 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pdata, ptr %platform_data, align 4
  %call9 = call ptr @i2c_new_client_device(ptr noundef %adapter, ptr noundef nonnull %board_info) #8
  %tobool.not.i.i = icmp eq ptr %call9, null
  %cmp.i.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.cleanup_crit_edge, label %i2c_client_has_driver.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

i2c_client_has_driver.exit:                       ; preds = %entry
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %call9, i32 0, i32 4, i32 6
  %22 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver.i, align 4
  %tobool.i.not = icmp eq ptr %23, null
  br i1 %tobool.i.not, label %i2c_client_has_driver.exit.cleanup_crit_edge, label %if.end

i2c_client_has_driver.exit.cleanup_crit_edge:     ; preds = %i2c_client_has_driver.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %i2c_client_has_driver.exit
  call void @__sanitizer_cov_trace_pc() #10
  %get_dvb_frontend = getelementptr inbounds %struct.cxd2820r_platform_data, ptr %pdata, i32 0, i32 5
  %24 = ptrtoint ptr %get_dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_dvb_frontend, align 4
  %call11 = call ptr %25(ptr noundef nonnull %call9) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %i2c_client_has_driver.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call11, %if.end ], [ null, %i2c_client_has_driver.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pdata) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %board_info) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2820r_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cxd2820r_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cxd2820r_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @cxd2820r_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2820r_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %utmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #8
  %2 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %utmp, align 4, !annotation !154
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_probe.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_probe, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_probe.__UNIQUE_ID_ddebug314, ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1440) #12
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %do.end.do.body144_crit_edge, label %if.end7

do.end.do.body144_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body144

if.end7:                                          ; preds = %do.end
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %client, ptr %call7.i.i, align 8
  %demodulator_priv = getelementptr inbounds %struct.cxd2820r_priv, ptr %call7.i.i, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %demodulator_priv, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %i2c = getelementptr inbounds %struct.cxd2820r_priv, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %i2c, align 8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 4
  %ts_mode9 = getelementptr inbounds %struct.cxd2820r_priv, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %ts_mode9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %ts_mode9, align 4
  %ts_clk_inv = getelementptr inbounds %struct.cxd2820r_platform_data, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %ts_clk_inv to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ts_clk_inv, align 1, !range !153
  %ts_clk_inv11 = getelementptr inbounds %struct.cxd2820r_priv, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %ts_clk_inv11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %ts_clk_inv11, align 1
  %if_agc_polarity = getelementptr inbounds %struct.cxd2820r_platform_data, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %if_agc_polarity to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %if_agc_polarity, align 2, !range !153
  %if_agc_polarity14 = getelementptr inbounds %struct.cxd2820r_priv, ptr %call7.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %if_agc_polarity14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %if_agc_polarity14, align 2
  %spec_inv = getelementptr inbounds %struct.cxd2820r_platform_data, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %spec_inv to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %spec_inv, align 1, !range !153
  %spec_inv17 = getelementptr inbounds %struct.cxd2820r_priv, ptr %call7.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %spec_inv17 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %spec_inv17, align 1
  %gpio_chip_base19 = getelementptr inbounds %struct.cxd2820r_platform_data, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %gpio_chip_base19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gpio_chip_base19, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call23 = tail call ptr @__regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @cxd2820r_probe.regmap_config0, ptr noundef nonnull @cxd2820r_probe._key, ptr noundef nonnull @.str.11) #8
  %regmap = getelementptr inbounds %struct.cxd2820r_priv, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call23, ptr %regmap, align 8
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.end32

if.then28:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %call23 to i32
  br label %err_kfree

if.end32:                                         ; preds = %if.end7
  %call35 = call i32 @regmap_read(ptr noundef %call23, i32 noundef 253, ptr noundef nonnull %utmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %do.body39, label %if.end32.err_regmap_0_regmap_exit_crit_edge

if.end32.err_regmap_0_regmap_exit_crit_edge:      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_regmap_0_regmap_exit

do.body39:                                        ; preds = %if.end32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_probe.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_probe, %if.then51)) #8
          to label %do.end55 [label %if.then51], !srcloc !152

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %utmp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_probe.__UNIQUE_ID_ddebug315, ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %28) #8
  br label %do.end55

do.end55:                                         ; preds = %if.then51, %do.body39
  %29 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %utmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 225, i32 %30)
  %cmp.not = icmp eq i32 %30, 225
  br i1 %cmp.not, label %if.end57, label %do.end55.err_regmap_0_regmap_exit_crit_edge

do.end55.err_regmap_0_regmap_exit_crit_edge:      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_regmap_0_regmap_exit

if.end57:                                         ; preds = %do.end55
  %31 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %33 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %addr, align 2
  %35 = or i16 %34, 2
  %call60 = call ptr @i2c_new_dummy_device(ptr noundef %32, i16 noundef zeroext %35) #8
  %arrayidx62 = getelementptr [2 x ptr], ptr %call7.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call60, ptr %arrayidx62, align 4
  %cmp.i236 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i236, label %if.then66, label %if.end74

if.then66:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %call60 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #13
  br label %err_regmap_0_regmap_exit

if.end74:                                         ; preds = %if.end57
  %call78 = call ptr @__regmap_init_i2c(ptr noundef %call60, ptr noundef nonnull @cxd2820r_probe.regmap_config1, ptr noundef nonnull @cxd2820r_probe._key.16, ptr noundef nonnull @.str.17) #8
  %arrayidx80 = getelementptr %struct.cxd2820r_priv, ptr %call7.i.i, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call78, ptr %arrayidx80, align 4
  %cmp.i237 = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i237, label %if.then84, label %if.end88

if.then84:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %call78 to i32
  br label %err_client_1_i2c_unregister_device

if.end88:                                         ; preds = %if.end74
  %tobool89.not = icmp eq ptr %24, null
  br i1 %tobool89.not, label %if.end88.if.end127_crit_edge, label %if.then90

if.end88.if.end127_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.then90:                                        ; preds = %if.end88
  %gpio_chip = getelementptr inbounds %struct.cxd2820r_priv, ptr %call7.i.i, i32 0, i32 12
  %40 = ptrtoint ptr %gpio_chip to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str, ptr %gpio_chip, align 4
  %parent = getelementptr inbounds %struct.cxd2820r_priv, ptr %call7.i.i, i32 0, i32 12, i32 2
  %41 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %dev, ptr %parent, align 4
  %owner = getelementptr inbounds %struct.cxd2820r_priv, ptr %call7.i.i, i32 0, i32 12, i32 4
  %42 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %owner, align 4
  %direction_output = getelementptr inbounds %struct.cxd2820r_priv, ptr %call7.i.i, i32 0, i32 12, i32 9
  %43 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @cxd2820r_gpio_direction_output, ptr %direction_output, align 8
  %set = getelementptr inbounds %struct.cxd2820r_priv, ptr %call7.i.i, i32 0, i32 12, i32 12
  %44 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @cxd2820r_gpio_set, ptr %set, align 4
  %get = getelementptr inbounds %struct.cxd2820r_priv, ptr %call7.i.i, i32 0, i32 12, i32 10
  %45 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @cxd2820r_gpio_get, ptr %get, align 4
  %base = getelementptr inbounds %struct.cxd2820r_priv, ptr %call7.i.i, i32 0, i32 12, i32 19
  %46 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %base, align 8
  %ngpio = getelementptr inbounds %struct.cxd2820r_priv, ptr %call7.i.i, i32 0, i32 12, i32 20
  %47 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 3, ptr %ngpio, align 4
  %can_sleep = getelementptr inbounds %struct.cxd2820r_priv, ptr %call7.i.i, i32 0, i32 12, i32 23
  %48 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %can_sleep, align 4
  %call102 = call i32 @gpiochip_add_data_with_key(ptr noundef %gpio_chip, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @cxd2820r_probe.lock_key, ptr noundef nonnull @cxd2820r_probe.request_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %do.body106, label %err_regmap_1_regmap_exit

do.body106:                                       ; preds = %if.then90
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_probe.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_probe, %if.then118)) #8
          to label %do.end124 [label %if.then118], !srcloc !152

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %base, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_probe.__UNIQUE_ID_ddebug316, ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %50) #8
  br label %do.end124

do.end124:                                        ; preds = %if.then118, %do.body106
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %base, align 8
  %53 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %24, align 4
  br label %if.end127

if.end127:                                        ; preds = %do.end124, %if.end88.if.end127_crit_edge
  %ops = getelementptr inbounds %struct.cxd2820r_priv, ptr %call7.i.i, i32 0, i32 3, i32 1
  %54 = call ptr @memcpy(ptr %ops, ptr @cxd2820r_ops, i32 544)
  %attach_in_use = getelementptr inbounds %struct.cxd2820r_platform_data, ptr %1, i32 0, i32 6
  %55 = ptrtoint ptr %attach_in_use to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %attach_in_use, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool129.not = icmp eq i8 %56, 0
  br i1 %tobool129.not, label %if.then130, label %if.end127.if.end133_crit_edge

if.end127.if.end133_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133

if.then130:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  %release = getelementptr inbounds %struct.cxd2820r_priv, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 3
  %57 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %release, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then130, %if.end127.if.end133_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %58 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %get_dvb_frontend = getelementptr inbounds %struct.cxd2820r_platform_data, ptr %1, i32 0, i32 5
  %59 = ptrtoint ptr %get_dvb_frontend to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @cxd2820r_get_dvb_frontend, ptr %get_dvb_frontend, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.20) #13
  br label %cleanup

err_regmap_1_regmap_exit:                         ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx80, align 4
  call void @regmap_exit(ptr noundef %61) #8
  br label %err_client_1_i2c_unregister_device

err_client_1_i2c_unregister_device:               ; preds = %err_regmap_1_regmap_exit, %if.then84
  %ret.0 = phi i32 [ %39, %if.then84 ], [ %call102, %err_regmap_1_regmap_exit ]
  %62 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx62, align 4
  call void @i2c_unregister_device(ptr noundef %63) #8
  br label %err_regmap_0_regmap_exit

err_regmap_0_regmap_exit:                         ; preds = %err_client_1_i2c_unregister_device, %if.then66, %do.end55.err_regmap_0_regmap_exit_crit_edge, %if.end32.err_regmap_0_regmap_exit_crit_edge
  %ret.1 = phi i32 [ %call35, %if.end32.err_regmap_0_regmap_exit_crit_edge ], [ %37, %if.then66 ], [ %ret.0, %err_client_1_i2c_unregister_device ], [ -19, %do.end55.err_regmap_0_regmap_exit_crit_edge ]
  %64 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap, align 8
  call void @regmap_exit(ptr noundef %65) #8
  br label %err_kfree

err_kfree:                                        ; preds = %err_regmap_0_regmap_exit, %if.then28
  %ret.2 = phi i32 [ %26, %if.then28 ], [ %ret.1, %err_regmap_0_regmap_exit ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %do.body144

do.body144:                                       ; preds = %err_kfree, %do.end.do.body144_crit_edge
  %ret.3 = phi i32 [ %ret.2, %err_kfree ], [ -12, %do.end.do.body144_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_probe.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_probe, %if.then156)) #8
          to label %cleanup [label %if.then156], !srcloc !152

if.then156:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_probe.__UNIQUE_ID_ddebug317, ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %ret.3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then156, %do.body144, %if.end133
  %retval.0 = phi i32 [ 0, %if.end133 ], [ %ret.3, %if.then156 ], [ %ret.3, %do.body144 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2820r_remove(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_remove.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_remove, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_remove.__UNIQUE_ID_ddebug318, ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %gpio_chip = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %gpio_chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_chip, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %do.end.if.end7_crit_edge, label %if.then5

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiochip_remove(ptr noundef %gpio_chip) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end.if.end7_crit_edge
  %regmap = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 1
  %arrayidx = getelementptr %struct.cxd2820r_priv, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @regmap_exit(ptr noundef %5) #8
  %arrayidx9 = getelementptr [2 x ptr], ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx9, align 4
  tail call void @i2c_unregister_device(ptr noundef %7) #8
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 8
  tail call void @regmap_exit(ptr noundef %9) #8
  tail call void @kfree(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2820r_gpio_direction_output(ptr noundef %chip, i32 noundef %nr, i32 noundef %val) #0 align 64 {
entry:
  %gpio = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %gpio) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_gpio_direction_output.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_gpio_direction_output, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_gpio_direction_output.__UNIQUE_ID_ddebug310, ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %nr, i32 noundef %val) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %gpio5 = getelementptr inbounds %struct.cxd2820r_priv, ptr %call, i32 0, i32 11
  %2 = call ptr @memcpy(ptr %gpio, ptr %gpio5, i32 3)
  %val.tr = trunc i32 %val to i8
  %3 = shl i8 %val.tr, 2
  %conv = or i8 %3, 1
  %arrayidx7 = getelementptr [3 x i8], ptr %gpio, i32 0, i32 %nr
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx7, align 1
  %fe = getelementptr inbounds %struct.cxd2820r_priv, ptr %call, i32 0, i32 3
  %call9 = call i32 @cxd2820r_gpio(ptr noundef %fe, ptr noundef nonnull %gpio)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %gpio) #8
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxd2820r_gpio_set(ptr noundef %chip, i32 noundef %nr, i32 noundef %val) #0 align 64 {
entry:
  %gpio = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %gpio) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_gpio_set.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_gpio_set, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_gpio_set.__UNIQUE_ID_ddebug311, ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %nr, i32 noundef %val) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %gpio5 = getelementptr inbounds %struct.cxd2820r_priv, ptr %call, i32 0, i32 11
  %2 = call ptr @memcpy(ptr %gpio, ptr %gpio5, i32 3)
  %val.tr = trunc i32 %val to i8
  %3 = shl i8 %val.tr, 2
  %conv = or i8 %3, 1
  %arrayidx7 = getelementptr [3 x i8], ptr %gpio, i32 0, i32 %nr
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx7, align 1
  %fe = getelementptr inbounds %struct.cxd2820r_priv, ptr %call, i32 0, i32 3
  %call9 = call i32 @cxd2820r_gpio(ptr noundef %fe, ptr noundef nonnull %gpio)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %gpio) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2820r_gpio_get(ptr noundef %chip, i32 noundef %nr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_gpio_get.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_gpio_get, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_gpio_get.__UNIQUE_ID_ddebug312, ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %nr) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx5 = getelementptr %struct.cxd2820r_priv, ptr %call, i32 0, i32 11, i32 %nr
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx5, align 1
  %4 = lshr i8 %3, 2
  %5 = and i8 %4, 1
  %and = zext i8 %5 to i32
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cxd2820r_get_dvb_frontend(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_get_dvb_frontend.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_get_dvb_frontend, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_get_dvb_frontend.__UNIQUE_ID_ddebug313, ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fe = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 3
  ret ptr %fe
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxd2820r_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_release.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_release, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_release.__UNIQUE_ID_ddebug309, ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @i2c_unregister_device(ptr noundef %3) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cxd2820r_init(ptr nocapture noundef readnone %fe) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2820r_sleep(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_sleep.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_sleep, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %4 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delivery_system, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_sleep.__UNIQUE_ID_ddebug304, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %delivery_system4 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %6 = ptrtoint ptr %delivery_system4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delivery_system4, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.end.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 16, label %sw.bb6
    i32 1, label %sw.bb8
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 @cxd2820r_sleep_t(ptr noundef %fe) #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 @cxd2820r_sleep_t2(ptr noundef %fe) #8
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 @cxd2820r_sleep_c(ptr noundef %fe) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb6, %sw.bb, %do.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call9, %sw.bb8 ], [ %call7, %sw.bb6 ], [ %call5, %sw.bb ], [ -22, %do.end.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cxd2820r_get_frontend_algo(ptr nocapture noundef readnone %fe) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2820r_get_tune_settings(ptr noundef %fe, ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_get_tune_settings.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_get_tune_settings, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %4 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delivery_system, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_get_tune_settings.__UNIQUE_ID_ddebug305, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %delivery_system4 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %6 = ptrtoint ptr %delivery_system4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delivery_system4, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %7, label %do.end.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 16, label %sw.bb6
    i32 1, label %sw.bb8
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 @cxd2820r_get_tune_settings_t(ptr noundef %fe, ptr noundef %s) #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 @cxd2820r_get_tune_settings_t2(ptr noundef %fe, ptr noundef %s) #8
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 @cxd2820r_get_tune_settings_c(ptr noundef %fe, ptr noundef %s) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb6, %sw.bb, %do.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call9, %sw.bb8 ], [ %call7, %sw.bb6 ], [ %call5, %sw.bb ], [ -22, %do.end.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2820r_get_frontend(ptr noundef %fe, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_get_frontend.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_get_frontend, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %4 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delivery_system, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_get_frontend.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %delivery_system4 = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %delivery_system4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delivery_system4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %delivery_system7 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %8 = ptrtoint ptr %delivery_system7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delivery_system7, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %9, label %if.end6.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 16, label %sw.bb9
    i32 1, label %sw.bb11
  ]

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 @cxd2820r_get_frontend_t(ptr noundef %fe, ptr noundef %p) #8
  br label %cleanup

sw.bb9:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 @cxd2820r_get_frontend_t2(ptr noundef %fe, ptr noundef %p) #8
  br label %cleanup

sw.bb11:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 @cxd2820r_get_frontend_c(ptr noundef %fe, ptr noundef %p) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb11, %sw.bb9, %sw.bb, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ %call12, %sw.bb11 ], [ %call10, %sw.bb9 ], [ %call8, %sw.bb ], [ -22, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2820r_read_status(ptr noundef %fe, ptr noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_read_status.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_read_status, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %4 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delivery_system, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_read_status.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %delivery_system4 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %6 = ptrtoint ptr %delivery_system4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delivery_system4, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %7, label %do.end.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 16, label %sw.bb6
    i32 1, label %sw.bb8
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 @cxd2820r_read_status_t(ptr noundef %fe, ptr noundef %status) #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 @cxd2820r_read_status_t2(ptr noundef %fe, ptr noundef %status) #8
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 @cxd2820r_read_status_c(ptr noundef %fe, ptr noundef %status) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb6, %sw.bb, %do.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call9, %sw.bb8 ], [ %call7, %sw.bb6 ], [ %call5, %sw.bb ], [ -22, %do.end.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2820r_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_read_ber.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_read_ber, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %4 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delivery_system, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_read_ber.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %post_bit_error = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %post_bit_error, align 8
  %post_bit_error_prev_dvbv3 = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %post_bit_error_prev_dvbv3 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %post_bit_error_prev_dvbv3, align 8
  %sub = sub i64 %7, %9
  %conv = trunc i64 %sub to i32
  %10 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %ber, align 4
  %11 = load i64, ptr %post_bit_error, align 8
  store i64 %11, ptr %post_bit_error_prev_dvbv3, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2820r_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_read_signal_strength.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_read_signal_strength, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %4 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delivery_system, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_read_signal_strength.__UNIQUE_ID_ddebug301, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %6 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp = icmp eq i8 %7, 2
  br i1 %cmp, label %if.then7, label %do.end.if.end12_crit_edge

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %8, align 1
  %conv11 = trunc i64 %10 to i16
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %do.end.if.end12_crit_edge
  %storemerge = phi i16 [ %conv11, %if.then7 ], [ 0, %do.end.if.end12_crit_edge ]
  %11 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %storemerge, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2820r_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  %remainder.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_read_snr.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_read_snr, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %4 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delivery_system, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_read_snr.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %6 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  br i1 %cmp, label %if.then6, label %do.end.if.end12_crit_edge

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #8
  %11 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %remainder.i, align 4, !annotation !154
  %call.i = call i64 @div_s64_rem(i64 noundef %10, i32 noundef 100, ptr noundef nonnull %remainder.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #8
  %conv11 = trunc i64 %call.i to i16
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %do.end.if.end12_crit_edge
  %storemerge = phi i16 [ %conv11, %if.then6 ], [ 0, %do.end.if.end12_crit_edge ]
  %12 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %storemerge, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2820r_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_read_ucblocks.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_read_ucblocks, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %4 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delivery_system, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_read_ucblocks.__UNIQUE_ID_ddebug303, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2820r_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_i2c_gate_ctrl.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_i2c_gate_ctrl, %land.lhs.true)) #8
          to label %do.end [label %land.lhs.true], !srcloc !152

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @cxd2820r_i2c_gate_ctrl._rs, ptr noundef nonnull @.str.38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %if.then

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_i2c_gate_ctrl.descriptor, ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %enable) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true.do.end_crit_edge, %entry
  %regmap = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool7.not = icmp ne i32 %enable, 0
  %cond = zext i1 %tobool7.not to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 219, i32 noundef 1, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2820r_search(ptr noundef %fe) #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %status, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_search.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_search, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %5 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delivery_system, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_search.__UNIQUE_ID_ddebug306, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %6) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %last_tune_failed = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %last_tune_failed to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %last_tune_failed, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %do.end.if.end23_crit_edge, label %if.then5

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then5:                                         ; preds = %do.end
  %delivery_system6 = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %delivery_system6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delivery_system6, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %10, label %if.then5.if.end23_crit_edge [
    i32 3, label %if.then7
    i32 16, label %if.then15
  ]

if.then5.if.end23_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then7:                                         ; preds = %if.then5
  %call8 = tail call i32 @cxd2820r_sleep_t(ptr noundef %fe) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end23.sink.split_crit_edge, label %if.then7.do.body62_crit_edge

if.then7.do.body62_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body62

if.then7.if.end23.sink.split_crit_edge:           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.sink.split

if.then15:                                        ; preds = %if.then5
  %call16 = tail call i32 @cxd2820r_sleep_t2(ptr noundef %fe) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then15.if.end23.sink.split_crit_edge, label %if.then15.do.body62_crit_edge

if.then15.do.body62_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body62

if.then15.if.end23.sink.split_crit_edge:          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %if.then15.if.end23.sink.split_crit_edge, %if.then7.if.end23.sink.split_crit_edge
  %.sink = phi i32 [ 16, %if.then7.if.end23.sink.split_crit_edge ], [ 3, %if.then15.if.end23.sink.split_crit_edge ]
  %delivery_system12 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %12 = ptrtoint ptr %delivery_system12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %delivery_system12, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %if.then5.if.end23_crit_edge, %do.end.if.end23_crit_edge
  %call24 = tail call fastcc i32 @cxd2820r_set_frontend(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.do.body62_crit_edge

if.end23.do.body62_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body62

if.end27:                                         ; preds = %if.end23
  %delivery_system28 = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %delivery_system28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %delivery_system28, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %14, label %if.end27.for.end_crit_edge [
    i32 3, label %if.end27.do.body32.lr.ph_crit_edge
    i32 1, label %if.end27.do.body32.lr.ph_crit_edge122
    i32 16, label %sw.bb29
  ]

if.end27.do.body32.lr.ph_crit_edge122:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32.lr.ph

if.end27.do.body32.lr.ph_crit_edge:               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32.lr.ph

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

sw.bb29:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32.lr.ph

do.body32.lr.ph:                                  ; preds = %sw.bb29, %if.end27.do.body32.lr.ph_crit_edge, %if.end27.do.body32.lr.ph_crit_edge122
  %i.0.ph = phi i32 [ 40, %sw.bb29 ], [ 20, %if.end27.do.body32.lr.ph_crit_edge ], [ 20, %if.end27.do.body32.lr.ph_crit_edge122 ]
  %dev45 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %delivery_system.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  br label %do.body32

do.body32:                                        ; preds = %if.end52.do.body32_crit_edge, %do.body32.lr.ph
  %i.1117 = phi i32 [ %i.0.ph, %do.body32.lr.ph ], [ %dec, %if.end52.do.body32_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_search.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_search, %if.then44)) #8
          to label %do.end48 [label %if.then44], !srcloc !152

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_search.__UNIQUE_ID_ddebug307, ptr noundef %dev45, ptr noundef nonnull @.str.41, i32 noundef %i.1117) #8
  br label %do.end48

do.end48:                                         ; preds = %if.then44, %do.body32
  call void @msleep(i32 noundef 50) #8
  %16 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %demodulator_priv, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_read_status.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_search, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !152

if.then.i:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %delivery_system.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %delivery_system.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_read_status.__UNIQUE_ID_ddebug298, ptr noundef %dev.i, ptr noundef nonnull @.str.6, i32 noundef %21) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end48
  %22 = ptrtoint ptr %delivery_system.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %delivery_system.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %23, label %do.end.i.do.body62_crit_edge [
    i32 3, label %sw.bb.i
    i32 16, label %sw.bb6.i
    i32 1, label %sw.bb8.i
  ]

do.end.i.do.body62_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body62

sw.bb.i:                                          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = call i32 @cxd2820r_read_status_t(ptr noundef %fe, ptr noundef nonnull %status) #8
  br label %cxd2820r_read_status.exit

sw.bb6.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = call i32 @cxd2820r_read_status_t2(ptr noundef %fe, ptr noundef nonnull %status) #8
  br label %cxd2820r_read_status.exit

sw.bb8.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i = call i32 @cxd2820r_read_status_c(ptr noundef %fe, ptr noundef nonnull %status) #8
  br label %cxd2820r_read_status.exit

cxd2820r_read_status.exit:                        ; preds = %sw.bb8.i, %sw.bb6.i, %sw.bb.i
  %ret.0.i = phi i32 [ %call9.i, %sw.bb8.i ], [ %call7.i, %sw.bb6.i ], [ %call5.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool50.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool50.not, label %if.end52, label %cxd2820r_read_status.exit.do.body62_crit_edge

cxd2820r_read_status.exit.do.body62_crit_edge:    ; preds = %cxd2820r_read_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body62

if.end52:                                         ; preds = %cxd2820r_read_status.exit
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status, align 4
  %and = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool53.not = icmp eq i32 %and, 0
  %dec = add nsw i32 %i.1117, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.1117)
  %cmp31 = icmp sgt i32 %i.1117, 1
  %or.cond = select i1 %tobool53.not, i1 %cmp31, i1 false
  br i1 %or.cond, label %if.end52.do.body32_crit_edge, label %if.end52.for.end_crit_edge

if.end52.for.end_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end52.do.body32_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

for.end:                                          ; preds = %if.end52.for.end_crit_edge, %if.end27.for.end_crit_edge
  %27 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status, align 4
  %and56 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.else60, label %if.then58

if.then58:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %last_tune_failed to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %last_tune_failed, align 4
  br label %cleanup

if.else60:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %last_tune_failed to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %last_tune_failed, align 4
  br label %cleanup

do.body62:                                        ; preds = %cxd2820r_read_status.exit.do.body62_crit_edge, %do.end.i.do.body62_crit_edge, %if.end23.do.body62_crit_edge, %if.then15.do.body62_crit_edge, %if.then7.do.body62_crit_edge
  %ret.0 = phi i32 [ %call8, %if.then7.do.body62_crit_edge ], [ %call24, %if.end23.do.body62_crit_edge ], [ %call16, %if.then15.do.body62_crit_edge ], [ -22, %do.end.i.do.body62_crit_edge ], [ %ret.0.i, %cxd2820r_read_status.exit.do.body62_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_search.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_search, %if.then74)) #8
          to label %cleanup [label %if.then74], !srcloc !152

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  %dev75 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_search.__UNIQUE_ID_ddebug308, ptr noundef %dev75, ptr noundef nonnull @.str.4, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %do.body62, %if.else60, %if.then58
  %retval.0 = phi i32 [ 1, %if.then58 ], [ 16, %if.else60 ], [ -2147483648, %if.then74 ], [ -2147483648, %do.body62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_sleep_t(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_sleep_t2(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_sleep_c(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_get_tune_settings_t(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_get_tune_settings_t2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_get_tune_settings_c(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_get_frontend_t(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_get_frontend_t2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_get_frontend_c(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_read_status_t(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_read_status_t2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_read_status_c(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxd2820r_set_frontend(ptr noundef %fe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_set_frontend.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_set_frontend, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %4 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delivery_system, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_set_frontend.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %delivery_system4 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %6 = ptrtoint ptr %delivery_system4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delivery_system4, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %7, label %do.body30 [
    i32 3, label %sw.bb
    i32 16, label %sw.bb12
    i32 1, label %sw.bb21
  ]

sw.bb:                                            ; preds = %do.end
  %call5 = tail call i32 @cxd2820r_init_t(ptr noundef %fe) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %sw.bb.err_crit_edge, label %if.end7

sw.bb.err_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end7:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 @cxd2820r_set_frontend_t(ptr noundef %fe) #8
  br label %err

sw.bb12:                                          ; preds = %do.end
  %call13 = tail call i32 @cxd2820r_init_t(ptr noundef %fe) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %sw.bb12.err_crit_edge, label %if.end16

sw.bb12.err_crit_edge:                            ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end16:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 @cxd2820r_set_frontend_t2(ptr noundef %fe) #8
  br label %err

sw.bb21:                                          ; preds = %do.end
  %call22 = tail call i32 @cxd2820r_init_c(ptr noundef %fe) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %sw.bb21.err_crit_edge, label %if.end25

sw.bb21.err_crit_edge:                            ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end25:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 @cxd2820r_set_frontend_c(ptr noundef %fe) #8
  br label %err

do.body30:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_set_frontend.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_set_frontend, %if.then42)) #8
          to label %err [label %if.then42], !srcloc !152

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  %dev43 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_set_frontend.__UNIQUE_ID_ddebug297, ptr noundef %dev43, ptr noundef nonnull @.str.43) #8
  br label %err

err:                                              ; preds = %if.then42, %do.body30, %if.end25, %sw.bb21.err_crit_edge, %if.end16, %sw.bb12.err_crit_edge, %if.end7, %sw.bb.err_crit_edge
  %ret.0 = phi i32 [ %call22, %sw.bb21.err_crit_edge ], [ %call26, %if.end25 ], [ %call13, %sw.bb12.err_crit_edge ], [ %call17, %if.end16 ], [ %call5, %sw.bb.err_crit_edge ], [ %call8, %if.end7 ], [ -22, %if.then42 ], [ -22, %do.body30 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_init_t(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_set_frontend_t(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_set_frontend_t2(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_init_c(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_set_frontend_c(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !18, !19, !21, !23, !25, !26, !28, !30, !32, !33, !35, !37, !39, !41, !43, !45, !46, !47, !49, !50, !52, !53, !55, !56, !57, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !72, !73, !75, !77, !78, !79, !81, !82, !84, !85, !86, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !119, !120, !121, !123, !124, !126, !127, !129, !131, !132, !134, !135, !137, !138, !140, !141}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 20, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cxd2820r_wr_reg_val_mask_tab.__UNIQUE_ID_ddebug290, !1, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 42, i32 2}
!8 = !{ptr @cxd2820r_wr_reg_val_mask_tab.__UNIQUE_ID_ddebug291, !7, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 54, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @cxd2820r_gpio.__UNIQUE_ID_ddebug292, !10, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 81, i32 3}
!15 = !{ptr @cxd2820r_gpio.__UNIQUE_ID_ddebug293, !14, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 84, i32 2}
!18 = !{ptr @cxd2820r_gpio.__UNIQUE_ID_ddebug294, !17, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!19 = !{ptr @cxd2820r_gpio.__UNIQUE_ID_ddebug295, !20, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!20 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 100, i32 2}
!21 = !{ptr @__ksymtab_cxd2820r_attach, !22, !"__ksymtab_cxd2820r_attach", i1 false, i1 false}
!22 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 539, i32 1}
!23 = !{ptr @__initcall__kmod_cxd2820r__319_744_cxd2820r_driver_init6, !24, !"__initcall__kmod_cxd2820r__319_744_cxd2820r_driver_init6", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 744, i32 1}
!25 = !{ptr @__exitcall_cxd2820r_driver_exit, !24, !"__exitcall_cxd2820r_driver_exit", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_author320, !27, !"__UNIQUE_ID_author320", i1 false, i1 false}
!27 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 746, i32 1}
!28 = !{ptr @__UNIQUE_ID_description321, !29, !"__UNIQUE_ID_description321", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 747, i32 1}
!30 = !{ptr @__UNIQUE_ID_file322, !31, !"__UNIQUE_ID_file322", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 748, i32 1}
!32 = !{ptr @__UNIQUE_ID_license323, !31, !"__UNIQUE_ID_license323", i1 false, i1 false}
!33 = !{ptr @cxd2820r_driver, !34, !"cxd2820r_driver", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 734, i32 26}
!35 = !{ptr @cxd2820r_probe.regmap_range_cfg0, !36, !"regmap_range_cfg0", i1 false, i1 false}
!36 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 557, i32 39}
!37 = !{ptr @cxd2820r_probe.regmap_range_cfg1, !38, !"regmap_range_cfg1", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 568, i32 39}
!39 = !{ptr @cxd2820r_probe.regmap_config0, !40, !"regmap_config0", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 579, i32 36}
!41 = !{ptr @cxd2820r_probe.regmap_config1, !42, !"regmap_config1", i1 false, i1 false}
!42 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 587, i32 36}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 596, i32 2}
!45 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @cxd2820r_probe.__UNIQUE_ID_ddebug314, !44, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!47 = !{ptr @cxd2820r_probe._key, !48, !"_key", i1 false, i1 false}
!48 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 612, i32 20}
!49 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 623, i32 2}
!52 = !{ptr @cxd2820r_probe.__UNIQUE_ID_ddebug315, !51, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 638, i32 3}
!55 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @cxd2820r_probe._entry, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @cxd2820r_probe._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @cxd2820r_probe._key.16, !60, !"_key", i1 false, i1 false}
!60 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 642, i32 20}
!61 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @cxd2820r_probe.lock_key, !63, !"lock_key", i1 false, i1 false}
!63 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 660, i32 9}
!64 = !{ptr @cxd2820r_probe.request_key, !63, !"request_key", i1 false, i1 false}
!65 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 664, i32 3}
!67 = !{ptr @cxd2820r_probe.__UNIQUE_ID_ddebug316, !66, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 692, i32 2}
!70 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @cxd2820r_probe._entry.19, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @cxd2820r_probe._entry_ptr.22, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @cxd2820r_probe.__UNIQUE_ID_ddebug317, !74, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!74 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 704, i32 2}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 428, i32 2}
!77 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @cxd2820r_gpio_direction_output.__UNIQUE_ID_ddebug310, !76, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 442, i32 2}
!81 = !{ptr @cxd2820r_gpio_set.__UNIQUE_ID_ddebug311, !80, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!82 = !{ptr @.str.26, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 457, i32 2}
!84 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @cxd2820r_gpio_get.__UNIQUE_ID_ddebug312, !83, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!86 = !{ptr @cxd2820r_ops, !87, !"cxd2820r_ops", i1 false, i1 false}
!87 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 463, i32 38}
!88 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 403, i32 2}
!90 = !{ptr @cxd2820r_release.__UNIQUE_ID_ddebug309, !89, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!91 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 274, i32 2}
!93 = !{ptr @cxd2820r_sleep.__UNIQUE_ID_ddebug304, !92, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 301, i32 2}
!96 = !{ptr @cxd2820r_get_tune_settings.__UNIQUE_ID_ddebug305, !95, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!97 = !{ptr @.str.31, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 181, i32 2}
!99 = !{ptr @cxd2820r_get_frontend.__UNIQUE_ID_ddebug299, !98, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!100 = !{ptr @.str.32, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 154, i32 2}
!102 = !{ptr @cxd2820r_read_status.__UNIQUE_ID_ddebug298, !101, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!103 = !{ptr @.str.33, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 209, i32 2}
!105 = !{ptr @cxd2820r_read_ber.__UNIQUE_ID_ddebug300, !104, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!106 = !{ptr @.str.34, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 223, i32 2}
!108 = !{ptr @cxd2820r_read_signal_strength.__UNIQUE_ID_ddebug301, !107, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!109 = !{ptr @.str.35, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 239, i32 2}
!111 = !{ptr @cxd2820r_read_snr.__UNIQUE_ID_ddebug302, !110, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!112 = !{ptr @.str.36, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 255, i32 2}
!114 = !{ptr @cxd2820r_read_ucblocks.__UNIQUE_ID_ddebug303, !113, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 415, i32 2}
!117 = !{ptr @cxd2820r_i2c_gate_ctrl._rs, !116, !"_rs", i1 false, i1 false}
!118 = !{ptr @.str.38, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.39, !116, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @cxd2820r_i2c_gate_ctrl.descriptor, !116, !"descriptor", i1 false, i1 false}
!121 = !{ptr @.str.40, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 328, i32 2}
!123 = !{ptr @cxd2820r_search.__UNIQUE_ID_ddebug306, !122, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!124 = !{ptr @.str.41, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 369, i32 3}
!126 = !{ptr @cxd2820r_search.__UNIQUE_ID_ddebug307, !125, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!127 = !{ptr @cxd2820r_search.__UNIQUE_ID_ddebug308, !128, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!128 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 389, i32 2}
!129 = !{ptr @.str.42, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 111, i32 2}
!131 = !{ptr @cxd2820r_set_frontend.__UNIQUE_ID_ddebug296, !130, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!132 = !{ptr @.str.43, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 139, i32 3}
!134 = !{ptr @cxd2820r_set_frontend.__UNIQUE_ID_ddebug297, !133, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!135 = !{ptr @.str.44, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 545, i32 2}
!137 = !{ptr @cxd2820r_get_dvb_frontend.__UNIQUE_ID_ddebug313, !136, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!138 = !{ptr @.str.45, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 712, i32 2}
!140 = !{ptr @cxd2820r_remove.__UNIQUE_ID_ddebug318, !139, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!141 = !{ptr @cxd2820r_id_table, !142, !"cxd2820r_id_table", i1 false, i1 false}
!142 = !{!"../drivers/media/dvb-frontends/cxd2820r_core.c", i32 728, i32 35}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{i64 2148284249, i64 2148284254, i64 2148284267, i64 2148284311, i64 2148284345, i64 2148284366}
!153 = !{i8 0, i8 2}
!154 = !{!"auto-init"}
