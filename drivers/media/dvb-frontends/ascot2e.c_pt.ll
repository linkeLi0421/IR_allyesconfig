; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/ascot2e.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/ascot2e.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ascot2e_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_ascot2e_attach\09\09\09\09"
module asm "\09.long\09__crc_ascot2e_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ascot2e_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22ascot2e_attach\22\09\09\09\09\09"
module asm "__kstrtabns_ascot2e_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ascot2e_band_sett = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ascot2e_priv = type { i32, i8, ptr, i32, ptr, ptr }
%struct.ascot2e_config = type { i8, i8, ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@ascot2e_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Sony ASCOT2E\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1000000, i32 1200000000, i32 25000, i32 0, i32 0, i32 0 }, ptr @ascot2e_release, ptr @ascot2e_init, ptr @ascot2e_sleep, ptr null, ptr null, ptr @ascot2e_set_params, ptr null, ptr null, ptr @ascot2e_get_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ascot2e_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 533, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Sony ASCOT2E attached on addr=%x at I2C adapter %p\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ascot2e_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/ascot2e.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ascot2e_attach._entry_ptr = internal global ptr @ascot2e_attach._entry, section ".printk_index", align 4
@__kstrtab_ascot2e_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_ascot2e_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_ascot2e_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ascot2e_attach to i32), ptr @__kstrtab_ascot2e_attach, ptr @__kstrtabns_ascot2e_attach }, section "___ksymtab+ascot2e_attach", align 4
@__UNIQUE_ID_description300 = internal constant [55 x i8] c"ascot2e.description=Sony ASCOT2E terr/cab tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [29 x i8] c"ascot2e.author=info@netup.ru\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [49 x i8] c"ascot2e.file=drivers/media/dvb-frontends/ascot2e\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [20 x i8] c"ascot2e.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ascot2e_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 128, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wr reg=%04x: len=%d is too big!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ascot2e_write_regs\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ascot2e_write_regs._entry_ptr = internal global ptr @ascot2e_write_regs._entry, section ".printk_index", align 4
@ascot2e_write_regs._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 141, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: i2c wr failed=%d reg=%02x len=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@ascot2e_write_regs._entry_ptr.10 = internal global ptr @ascot2e_write_regs._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ascot2e\00", [24 x i8] zeroinitializer }, align 32
@ascot2e_i2c_debug.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ascot2e_i2c_debug\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ascot2e: I2C %s reg 0x%02x size %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@ascot2e_i2c_debug.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.2, ptr @.str.16, i8 0, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ascot2e: I2C data: \00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@ascot2e_release.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ascot2e_release\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@ascot2e_init.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.20, ptr @.str.2, ptr @.str.19, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ascot2e_init\00", [19 x i8] zeroinitializer }, align 32
@ascot2e_leave_power_save.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.21, ptr @.str.2, ptr @.str.19, i8 0, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ascot2e_leave_power_save\00", [39 x i8] zeroinitializer }, align 32
@ascot2e_sleep.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.22, ptr @.str.2, ptr @.str.19, i8 0, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ascot2e_sleep\00", [18 x i8] zeroinitializer }, align 32
@ascot2e_enter_power_save.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.23, ptr @.str.2, ptr @.str.19, i8 0, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ascot2e_enter_power_save\00", [39 x i8] zeroinitializer }, align 32
@ascot2e_set_params.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ascot2e_set_params\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(): tune frequency %dkHz\0A\00", [36 x i8] zeroinitializer }, align 32
@ascot2e_set_params.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.24, ptr @.str.2, ptr @.str.26, i8 0, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(): unknown DTV system\0A\00", [38 x i8] zeroinitializer }, align 32
@ascot2e_sett = internal constant { [13 x %struct.ascot2e_band_sett], [62 x i8] } { [13 x %struct.ascot2e_band_sett] [%struct.ascot2e_band_sett { i8 -1, i8 -1, i8 3, i8 -1, i8 6, i8 24, i8 26, i8 0, i8 11, i8 0 }, %struct.ascot2e_band_sett { i8 -1, i8 -1, i8 3, i8 -1, i8 6, i8 24, i8 26, i8 0, i8 11, i8 0 }, %struct.ascot2e_band_sett { i8 -1, i8 -1, i8 3, i8 -1, i8 6, i8 26, i8 28, i8 1, i8 11, i8 0 }, %struct.ascot2e_band_sett { i8 -1, i8 -1, i8 3, i8 -1, i8 6, i8 28, i8 30, i8 2, i8 11, i8 0 }, %struct.ascot2e_band_sett { i8 -1, i8 -1, i8 3, i8 -1, i8 6, i8 22, i8 16, i8 3, i8 11, i8 0 }, %struct.ascot2e_band_sett { i8 -1, i8 -1, i8 3, i8 -1, i8 6, i8 24, i8 26, i8 0, i8 11, i8 0 }, %struct.ascot2e_band_sett { i8 -1, i8 -1, i8 3, i8 -1, i8 6, i8 24, i8 26, i8 0, i8 11, i8 0 }, %struct.ascot2e_band_sett { i8 -1, i8 -1, i8 3, i8 -1, i8 6, i8 26, i8 28, i8 1, i8 11, i8 0 }, %struct.ascot2e_band_sett { i8 -1, i8 -1, i8 3, i8 -1, i8 6, i8 28, i8 30, i8 2, i8 11, i8 0 }, %struct.ascot2e_band_sett { i8 -1, i8 -1, i8 2, i8 -1, i8 3, i8 26, i8 24, i8 0, i8 9, i8 0 }, %struct.ascot2e_band_sett { i8 -1, i8 -1, i8 2, i8 -1, i8 3, i8 30, i8 31, i8 2, i8 9, i8 0 }, %struct.ascot2e_band_sett { i8 -1, i8 -1, i8 3, i8 -1, i8 1, i8 26, i8 28, i8 0, i8 9, i8 0 }, %struct.ascot2e_band_sett { i8 -1, i8 -1, i8 3, i8 -1, i8 1, i8 30, i8 2, i8 2, i8 9, i8 0 }], [62 x i8] zeroinitializer }, align 32
@ascot2e_get_tv_system.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ascot2e_get_tv_system\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s(): ASCOT2E DTV system %d (delsys %d, bandwidth %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@ascot2e_read_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 178, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: I2C rw failed=%d addr=%02x reg=%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ascot2e_read_regs\00", [46 x i8] zeroinitializer }, align 32
@ascot2e_read_regs._entry_ptr = internal global ptr @ascot2e_read_regs._entry, section ".printk_index", align 4
@ascot2e_read_regs._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 187, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: i2c rd failed=%d addr=%02x reg=%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@ascot2e_read_regs._entry_ptr.33 = internal global ptr @ascot2e_read_regs._entry.31, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 16]
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"ascot2e_tuner_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 459, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 531, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 127, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 139, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 106, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 108, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 254, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 246, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 233, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 263, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 218, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 320, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 325, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [13 x i8] c"ascot2e_sett\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 74, i32 33 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 306, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 176, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [41 x i8] c"../drivers/media/dvb-frontends/ascot2e.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 185, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__ksymtab_ascot2e_attach, ptr @ascot2e_attach._entry, ptr @ascot2e_attach._entry_ptr, ptr @ascot2e_read_regs._entry, ptr @ascot2e_read_regs._entry.31, ptr @ascot2e_read_regs._entry_ptr, ptr @ascot2e_read_regs._entry_ptr.33, ptr @ascot2e_write_regs._entry, ptr @ascot2e_write_regs._entry.8, ptr @ascot2e_write_regs._entry_ptr, ptr @ascot2e_write_regs._entry_ptr.10, ptr @ascot2e_tuner_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @ascot2e_sett, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ascot2e_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ascot2e_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ascot2e_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ascot2e_write_regs._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ascot2e_sett to i32), i32 130, i32 192, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ascot2e_read_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ascot2e_read_regs._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ascot2e_attach(ptr noundef %fe, ptr nocapture noundef readonly %config, ptr noundef %i2c) #0 align 64 {
entry:
  %tmp.i83 = alloca i8, align 1
  %tmp.i81 = alloca i8, align 1
  %tmp.i79 = alloca i8, align 1
  %tmp.i77 = alloca i8, align 1
  %tmp.i75 = alloca i8, align 1
  %tmp.i73 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %data = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #6
  %0 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 24) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %config, align 4
  %6 = lshr i8 %5, 1
  %i2c_address2 = getelementptr inbounds %struct.ascot2e_priv, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %i2c_address2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %i2c_address2, align 4
  %i2c3 = getelementptr inbounds %struct.ascot2e_priv, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %i2c3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %i2c, ptr %i2c3, align 8
  %set_tuner_priv = getelementptr inbounds %struct.ascot2e_config, ptr %config, i32 0, i32 2
  %9 = ptrtoint ptr %set_tuner_priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_tuner_priv, align 4
  %set_tuner_data = getelementptr inbounds %struct.ascot2e_priv, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %set_tuner_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %set_tuner_data, align 8
  %set_tuner_callback = getelementptr inbounds %struct.ascot2e_config, ptr %config, i32 0, i32 3
  %12 = ptrtoint ptr %set_tuner_callback to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_tuner_callback, align 4
  %set_tuner = getelementptr inbounds %struct.ascot2e_priv, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %set_tuner to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %set_tuner, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %15 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 %16(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 16, ptr %data, align 1
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 6, ptr %0, align 1
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -60, ptr %1, align 1
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 64, ptr %2, align 1
  %call12 = call fastcc i32 @ascot2e_write_regs(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 1, ptr noundef nonnull %data, i32 noundef 4)
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 16, ptr %data, align 1
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 63, ptr %0, align 1
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 37, ptr %1, align 1
  %call17 = call fastcc i32 @ascot2e_write_regs(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 34, ptr noundef nonnull %data, i32 noundef 3)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #6
  %24 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 30, ptr %tmp.i, align 1
  %call.i = call fastcc i32 @ascot2e_write_regs(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 40, ptr noundef nonnull %tmp.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i73) #6
  %25 = ptrtoint ptr %tmp.i73 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 4, ptr %tmp.i73, align 1
  %call.i74 = call fastcc i32 @ascot2e_write_regs(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 89, ptr noundef nonnull %tmp.i73, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i73) #6
  call void @msleep(i32 noundef 80) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i75) #6
  %26 = ptrtoint ptr %tmp.i75 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %tmp.i75, align 1
  %call.i76 = call fastcc i32 @ascot2e_write_regs(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 76, ptr noundef nonnull %tmp.i75, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i75) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i77) #6
  %27 = ptrtoint ptr %tmp.i77 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 4, ptr %tmp.i77, align 1
  %call.i78 = call fastcc i32 @ascot2e_write_regs(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 7, ptr noundef nonnull %tmp.i77, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i77) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i79) #6
  %28 = ptrtoint ptr %tmp.i79 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %tmp.i79, align 1
  %call.i80 = call fastcc i32 @ascot2e_write_regs(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 4, ptr noundef nonnull %tmp.i79, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i79) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i81) #6
  %29 = ptrtoint ptr %tmp.i81 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -64, ptr %tmp.i81, align 1
  %call.i82 = call fastcc i32 @ascot2e_write_regs(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 3, ptr noundef nonnull %tmp.i81, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i81) #6
  %30 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %data, align 1
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 4, ptr %0, align 1
  %call27 = call fastcc i32 @ascot2e_write_regs(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 20, ptr noundef nonnull %data, i32 noundef 2)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i83) #6
  %32 = ptrtoint ptr %tmp.i83 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %tmp.i83, align 1
  %call.i84 = call fastcc i32 @ascot2e_write_regs(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 80, ptr noundef nonnull %tmp.i83, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i83) #6
  %state = getelementptr inbounds %struct.ascot2e_priv, ptr %call7.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %state, align 4
  %34 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool31.not = icmp eq ptr %35, null
  br i1 %tobool31.not, label %if.end8.if.end36_crit_edge, label %if.then32

if.end8.if.end36_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then32:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = call i32 %35(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end8.if.end36_crit_edge
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %36 = call ptr @memcpy(ptr %tuner_ops, ptr @ascot2e_tuner_ops, i32 220)
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %37 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %38 = ptrtoint ptr %i2c3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c3, align 8
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %i2c_address2 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %i2c_address2, align 4
  %conv40 = zext i8 %41 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %conv40, ptr noundef %39) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %fe, %if.end36 ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ascot2e_write_regs(ptr nocapture noundef readonly %priv, i8 noundef zeroext %reg, ptr noundef %data, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [11 x i8], align 1
  %msg = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf) #6
  %0 = getelementptr inbounds [11 x i8], ptr %buf, i32 0, i32 1
  %1 = call ptr @memset(ptr %buf, i32 255, i32 11)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %i2c_address = getelementptr inbounds %struct.ascot2e_priv, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %i2c_address to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_address, align 4
  %conv = zext i8 %5 to i16
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %8 = trunc i32 %len to i16
  %conv2 = add i16 %8, 1
  %9 = ptrtoint ptr %len1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv2, ptr %len1, align 4
  %buf3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %10 = ptrtoint ptr %buf3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf, ptr %buf3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ascot2e_i2c_debug.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ascot2e_write_regs, %if.then.i)) #6
          to label %do.body5.i [label %if.then.i], !srcloc !87

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i2c.i = getelementptr inbounds %struct.ascot2e_priv, ptr %priv, i32 0, i32 2
  %11 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 9
  %conv4.i = zext i8 %reg to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ascot2e_i2c_debug.__UNIQUE_ID_ddebug290, ptr noundef %dev.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15, i32 noundef %conv4.i, i32 noundef %len) #6
  br label %do.body5.i

do.body5.i:                                       ; preds = %if.then.i, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ascot2e_i2c_debug.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ascot2e_write_regs, %if.then17.i)) #6
          to label %ascot2e_i2c_debug.exit [label %if.then17.i], !srcloc !87

if.then17.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @print_hex_dump(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %data, i32 noundef %len, i1 noundef zeroext true) #6
  br label %ascot2e_i2c_debug.exit

ascot2e_i2c_debug.exit:                           ; preds = %if.then17.i, %do.body5.i
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %reg, ptr %buf, align 1
  %14 = call ptr @memcpy(ptr %0, ptr %data, i32 %len)
  %i2c9 = getelementptr inbounds %struct.ascot2e_priv, ptr %priv, i32 0, i32 2
  %15 = ptrtoint ptr %i2c9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c9, align 4
  %call = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp13.not = icmp eq i32 %call, 1
  %spec.store.select = select i1 %cmp13.not, i32 1, i32 -121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1146 = icmp slt i32 %call, 0
  %ret.0 = select i1 %cmp1146, i32 %call, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp17 = icmp slt i32 %ret.0, 0
  br i1 %cmp17, label %do.end22, label %ascot2e_i2c_debug.exit.cleanup_crit_edge

ascot2e_i2c_debug.exit.cleanup_crit_edge:         ; preds = %ascot2e_i2c_debug.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end22:                                         ; preds = %ascot2e_i2c_debug.exit
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %i2c9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c9, align 4
  %dev24 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 9
  %conv25 = zext i8 %reg to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev24, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %ret.0, i32 noundef %conv25, i32 noundef %len) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %ascot2e_i2c_debug.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end22 ], [ 0, %ascot2e_i2c_debug.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ascot2e_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ascot2e_release.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ascot2e_release, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i2c = getelementptr inbounds %struct.ascot2e_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ascot2e_release.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %5) #6
  %6 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ascot2e_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %tmp.i.i = alloca i8, align 1
  %data.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ascot2e_init.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ascot2e_init, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i2c = getelementptr inbounds %struct.ascot2e_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ascot2e_init.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #6
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1265, ptr %data.i, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ascot2e_leave_power_save.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ascot2e_init, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !87

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %i2c.i = getelementptr inbounds %struct.ascot2e_priv, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ascot2e_leave_power_save.__UNIQUE_ID_ddebug293, ptr noundef %dev.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %state.i = getelementptr inbounds %struct.ascot2e_priv, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.i = icmp eq i32 %8, 2
  br i1 %cmp.i, label %do.end.i.ascot2e_leave_power_save.exit_crit_edge, label %if.end4.i

do.end.i.ascot2e_leave_power_save.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ascot2e_leave_power_save.exit

if.end4.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = call fastcc i32 @ascot2e_write_regs(ptr noundef %1, i8 noundef zeroext 20, ptr noundef nonnull %data.i, i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #6
  %9 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %tmp.i.i, align 1
  %call.i.i = call fastcc i32 @ascot2e_write_regs(ptr noundef %1, i8 noundef zeroext 80, ptr noundef nonnull %tmp.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %state.i, align 4
  br label %ascot2e_leave_power_save.exit

ascot2e_leave_power_save.exit:                    ; preds = %if.end4.i, %do.end.i.ascot2e_leave_power_save.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ascot2e_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %tmp.i.i = alloca i8, align 1
  %data.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ascot2e_sleep.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ascot2e_sleep, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i2c = getelementptr inbounds %struct.ascot2e_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ascot2e_sleep.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.22) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #6
  %4 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ascot2e_enter_power_save.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ascot2e_sleep, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !87

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %i2c.i = getelementptr inbounds %struct.ascot2e_priv, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ascot2e_enter_power_save.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.23) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %state.i = getelementptr inbounds %struct.ascot2e_priv, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp eq i32 %8, 1
  br i1 %cmp.i, label %do.end.i.ascot2e_enter_power_save.exit_crit_edge, label %if.end4.i

do.end.i.ascot2e_enter_power_save.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ascot2e_enter_power_save.exit

if.end4.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %data.i, align 1
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %4, align 1
  %call6.i = call fastcc i32 @ascot2e_write_regs(ptr noundef %1, i8 noundef zeroext 20, ptr noundef nonnull %data.i, i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #6
  %11 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %tmp.i.i, align 1
  %call.i.i = call fastcc i32 @ascot2e_write_regs(ptr noundef %1, i8 noundef zeroext 80, ptr noundef nonnull %tmp.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #6
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %state.i, align 4
  br label %ascot2e_enter_power_save.exit

ascot2e_enter_power_save.exit:                    ; preds = %if.end4.i, %do.end.i.ascot2e_enter_power_save.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ascot2e_set_params(ptr nocapture noundef %fe) #0 align 64 {
entry:
  %tmp.i.i286 = alloca i8, align 1
  %rdata.i287 = alloca i8, align 1
  %tmp.i284 = alloca i8, align 1
  %tmp.i282 = alloca i8, align 1
  %tmp.i.i272 = alloca i8, align 1
  %rdata.i273 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %tmp.i.i269 = alloca i8, align 1
  %rdata.i = alloca i8, align 1
  %tmp.i.i = alloca i8, align 1
  %data.i = alloca [2 x i8], align 2
  %data = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %data) #6
  %0 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 3
  %3 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 4
  %4 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 5
  %5 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 6
  %6 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 7
  %7 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 8
  %8 = getelementptr inbounds [10 x i8], ptr %data, i32 0, i32 9
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %9 = call ptr @memset(ptr %data, i32 255, i32 10)
  %10 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tuner_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ascot2e_set_params.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ascot2e_set_params, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i2c = getelementptr inbounds %struct.ascot2e_priv, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dtv_property_cache, align 4
  %div = udiv i32 %15, 1000
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ascot2e_set_params.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef %div) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call fastcc i32 @ascot2e_get_tv_system(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %call4)
  %cmp = icmp eq i32 %call4, 13
  br i1 %cmp, label %do.body6, label %if.end24

do.body6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ascot2e_set_params.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ascot2e_set_params, %if.then18)) #6
          to label %cleanup [label %if.then18], !srcloc !87

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %i2c19 = getelementptr inbounds %struct.ascot2e_priv, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %i2c19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c19, align 4
  %dev20 = getelementptr inbounds %struct.i2c_adapter, ptr %17, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ascot2e_set_params.__UNIQUE_ID_ddebug299, ptr noundef %dev20, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24) #6
  br label %cleanup

if.end24:                                         ; preds = %do.end
  %set_tuner = getelementptr inbounds %struct.ascot2e_priv, ptr %11, i32 0, i32 5
  %18 = ptrtoint ptr %set_tuner to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_tuner, align 4
  %tobool25.not = icmp eq ptr %19, null
  br i1 %tobool25.not, label %if.end24.if.end29_crit_edge, label %if.then26

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %set_tuner_data = getelementptr inbounds %struct.ascot2e_priv, ptr %11, i32 0, i32 4
  %20 = ptrtoint ptr %set_tuner_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_tuner_data, align 4
  %call28 = tail call i32 %19(ptr noundef %21, i32 noundef 1) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end24.if.end29_crit_edge
  %22 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dtv_property_cache, align 4
  %div32 = udiv i32 %23, 1000
  %add = add nuw nsw i32 %div32, 24
  %24 = urem i32 %add, 25
  %mul = sub nuw nsw i32 %add, %24
  %state = getelementptr inbounds %struct.ascot2e_priv, ptr %11, i32 0, i32 3
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp34 = icmp eq i32 %26, 1
  br i1 %cmp34, label %if.then35, label %if.end29.if.end37_crit_edge

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then35:                                        ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #6
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1265, ptr %data.i, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ascot2e_leave_power_save.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ascot2e_set_params, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !87

if.then.i:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %i2c.i = getelementptr inbounds %struct.ascot2e_priv, ptr %11, i32 0, i32 2
  %28 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %29, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ascot2e_leave_power_save.__UNIQUE_ID_ddebug293, ptr noundef %dev.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then35
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp.i = icmp eq i32 %31, 2
  br i1 %cmp.i, label %do.end.i.ascot2e_leave_power_save.exit_crit_edge, label %if.end4.i

do.end.i.ascot2e_leave_power_save.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ascot2e_leave_power_save.exit

if.end4.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = call fastcc i32 @ascot2e_write_regs(ptr noundef %11, i8 noundef zeroext 20, ptr noundef nonnull %data.i, i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #6
  %32 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %tmp.i.i, align 1
  %call.i.i = call fastcc i32 @ascot2e_write_regs(ptr noundef %11, i8 noundef zeroext 80, ptr noundef nonnull %tmp.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #6
  %33 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %state, align 4
  br label %ascot2e_leave_power_save.exit

ascot2e_leave_power_save.exit:                    ; preds = %if.end4.i, %do.end.i.ascot2e_leave_power_save.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #6
  br label %if.end37

if.end37:                                         ; preds = %ascot2e_leave_power_save.exit, %if.end29.if.end37_crit_edge
  %34 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %data, align 1
  %arrayidx38 = getelementptr [13 x %struct.ascot2e_band_sett], ptr @ascot2e_sett, i32 0, i32 %call4
  %35 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx38, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %cmp53.not = icmp eq i8 %36, -1
  br i1 %cmp53.not, label %if.end37.if.end67_crit_edge, label %if.then55

if.end37.if.end67_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then55:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %37 = shl i8 %36, 2
  %38 = and i8 %37, 4
  %39 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %data, align 1
  br label %if.end67

if.end67:                                         ; preds = %if.then55, %if.end37.if.end67_crit_edge
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %data, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rdata.i) #6
  %42 = ptrtoint ptr %rdata.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %rdata.i, align 1, !annotation !88
  %call.i.i270 = call fastcc i32 @ascot2e_read_regs(ptr noundef %11, i8 noundef zeroext 5, ptr noundef nonnull %rdata.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i270)
  %cmp2.not.i = icmp eq i32 %call.i.i270, 0
  br i1 %cmp2.not.i, label %if.end.i, label %if.end67.ascot2e_set_reg_bits.exit_crit_edge

if.end67.ascot2e_set_reg_bits.exit_crit_edge:     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %ascot2e_set_reg_bits.exit

if.end.i:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %and1.i = and i8 %41, 28
  %43 = ptrtoint ptr %rdata.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rdata.i, align 1
  %and92.i = and i8 %44, -29
  %or3.i = or i8 %and92.i, %and1.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i269) #6
  %45 = ptrtoint ptr %tmp.i.i269 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %or3.i, ptr %tmp.i.i269, align 1
  %call.i4.i = call fastcc i32 @ascot2e_write_regs(ptr noundef %11, i8 noundef zeroext 5, ptr noundef nonnull %tmp.i.i269, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i269) #6
  br label %ascot2e_set_reg_bits.exit

ascot2e_set_reg_bits.exit:                        ; preds = %if.end.i, %if.end67.ascot2e_set_reg_bits.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rdata.i) #6
  %46 = add i32 %call4, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %47 = icmp ult i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %mul)
  %cmp79 = icmp ugt i32 %mul, 500000
  %conv82 = select i1 %cmp79, i8 2, i8 4
  %conv77 = select i1 %cmp79, i8 16, i8 32
  %storemerge = select i1 %47, i8 %conv77, i8 %conv82
  %48 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %storemerge, ptr %data, align 1
  %49 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 4, ptr %0, align 1
  %storemerge257 = select i1 %47, i8 18, i8 48
  %storemerge256 = select i1 %47, i8 120, i8 10
  %storemerge255 = select i1 %47, i8 20, i8 30
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %storemerge257, ptr %1, align 1
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %storemerge256, ptr %2, align 1
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %storemerge255, ptr %3, align 1
  %conv115 = select i1 %cmp79, i8 48, i8 56
  %conv109 = select i1 %cmp79, i8 8, i8 12
  %storemerge258 = select i1 %47, i8 %conv109, i8 %conv115
  %53 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %storemerge258, ptr %4, align 1
  %mix_oll = getelementptr [13 x %struct.ascot2e_band_sett], ptr @ascot2e_sett, i32 0, i32 %call4, i32 2
  %54 = ptrtoint ptr %mix_oll to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %mix_oll, align 1
  %56 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #6
  %57 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %tmp.i, align 1
  %call.i = call fastcc i32 @ascot2e_write_regs(ptr noundef %11, i8 noundef zeroext 78, ptr noundef nonnull %tmp.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #6
  %58 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %6, align 1
  %fif_offset = getelementptr [13 x %struct.ascot2e_band_sett], ptr @ascot2e_sett, i32 0, i32 %call4, i32 5
  %59 = ptrtoint ptr %fif_offset to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %fif_offset, align 1
  %shl135 = shl i8 %60, 3
  %if_bpf_gc = getelementptr [13 x %struct.ascot2e_band_sett], ptr @ascot2e_sett, i32 0, i32 %call4, i32 4
  %61 = ptrtoint ptr %if_bpf_gc to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %if_bpf_gc, align 1
  %63 = and i8 %62, 7
  %or139 = or i8 %63, %shl135
  %64 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %or139, ptr %7, align 1
  %bw_offset = getelementptr [13 x %struct.ascot2e_band_sett], ptr @ascot2e_sett, i32 0, i32 %call4, i32 6
  %65 = ptrtoint ptr %bw_offset to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %bw_offset, align 1
  %67 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %8, align 1
  %call144 = call fastcc i32 @ascot2e_write_regs(ptr noundef %11, i8 noundef zeroext 6, ptr noundef nonnull %data, i32 noundef 10)
  %storemerge260 = select i1 %47, i8 1, i8 3
  %68 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 15, ptr %data, align 1
  %69 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %0, align 1
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %storemerge260, ptr %1, align 1
  %call160 = call fastcc i32 @ascot2e_write_regs(ptr noundef %11, i8 noundef zeroext 69, ptr noundef nonnull %data, i32 noundef 3)
  %rf_oldet = getelementptr [13 x %struct.ascot2e_band_sett], ptr @ascot2e_sett, i32 0, i32 %call4, i32 8
  %71 = ptrtoint ptr %rf_oldet to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %rf_oldet, align 1
  %73 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %data, align 1
  %if_bpf_f0 = getelementptr [13 x %struct.ascot2e_band_sett], ptr @ascot2e_sett, i32 0, i32 %call4, i32 9
  %74 = ptrtoint ptr %if_bpf_f0 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %if_bpf_f0, align 1
  %76 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %0, align 1
  %call166 = call fastcc i32 @ascot2e_write_regs(ptr noundef %11, i8 noundef zeroext 73, ptr noundef nonnull %data, i32 noundef 2)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rdata.i273) #6
  %77 = ptrtoint ptr %rdata.i273 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -1, ptr %rdata.i273, align 1, !annotation !88
  %call.i.i274 = call fastcc i32 @ascot2e_read_regs(ptr noundef %11, i8 noundef zeroext 12, ptr noundef nonnull %rdata.i273) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i274)
  %cmp2.not.i275 = icmp eq i32 %call.i.i274, 0
  br i1 %cmp2.not.i275, label %if.end.i279, label %ascot2e_set_reg_bits.exit.ascot2e_set_reg_bits.exit281_crit_edge

ascot2e_set_reg_bits.exit.ascot2e_set_reg_bits.exit281_crit_edge: ; preds = %ascot2e_set_reg_bits.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ascot2e_set_reg_bits.exit281

if.end.i279:                                      ; preds = %ascot2e_set_reg_bits.exit
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %rdata.i273 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %rdata.i273, align 1
  %and92.i277 = and i8 %79, 79
  %or3.i278 = or i8 %and92.i277, -112
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i272) #6
  %80 = ptrtoint ptr %tmp.i.i272 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %or3.i278, ptr %tmp.i.i272, align 1
  %call.i4.i280 = call fastcc i32 @ascot2e_write_regs(ptr noundef %11, i8 noundef zeroext 12, ptr noundef nonnull %tmp.i.i272, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i272) #6
  br label %ascot2e_set_reg_bits.exit281

ascot2e_set_reg_bits.exit281:                     ; preds = %if.end.i279, %ascot2e_set_reg_bits.exit.ascot2e_set_reg_bits.exit281_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rdata.i273) #6
  %81 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -60, ptr %data, align 1
  %82 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 64, ptr %0, align 1
  %call171 = call fastcc i32 @ascot2e_write_regs(ptr noundef %11, i8 noundef zeroext 3, ptr noundef nonnull %data, i32 noundef 2)
  %conv173 = trunc i32 %mul to i8
  %83 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv173, ptr %data, align 1
  %shr = lshr i32 %mul, 8
  %conv176 = trunc i32 %shr to i8
  %84 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv176, ptr %0, align 1
  %shr178 = lshr i32 %mul, 16
  %85 = trunc i32 %shr178 to i8
  %conv180 = and i8 %85, 15
  %bw = getelementptr [13 x %struct.ascot2e_band_sett], ptr @ascot2e_sett, i32 0, i32 %call4, i32 7
  %86 = ptrtoint ptr %bw to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %bw, align 1
  %shl184 = shl i8 %87, 4
  %or189261 = or i8 %shl184, %conv180
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %or189261, ptr %1, align 1
  %89 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -1, ptr %2, align 1
  %90 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -1, ptr %3, align 1
  %call194 = call fastcc i32 @ascot2e_write_regs(ptr noundef %11, i8 noundef zeroext 16, ptr noundef nonnull %data, i32 noundef 5)
  call void @msleep(i32 noundef 50) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i282) #6
  %91 = ptrtoint ptr %tmp.i282 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %tmp.i282, align 1
  %call.i283 = call fastcc i32 @ascot2e_write_regs(ptr noundef %11, i8 noundef zeroext 4, ptr noundef nonnull %tmp.i282, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i282) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i284) #6
  %92 = ptrtoint ptr %tmp.i284 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -64, ptr %tmp.i284, align 1
  %call.i285 = call fastcc i32 @ascot2e_write_regs(ptr noundef %11, i8 noundef zeroext 3, ptr noundef nonnull %tmp.i284, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i284) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rdata.i287) #6
  %93 = ptrtoint ptr %rdata.i287 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -1, ptr %rdata.i287, align 1, !annotation !88
  %call.i.i288 = call fastcc i32 @ascot2e_read_regs(ptr noundef %11, i8 noundef zeroext 12, ptr noundef nonnull %rdata.i287) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i288)
  %cmp2.not.i289 = icmp eq i32 %call.i.i288, 0
  br i1 %cmp2.not.i289, label %if.end.i292, label %ascot2e_set_reg_bits.exit281.ascot2e_set_reg_bits.exit294_crit_edge

ascot2e_set_reg_bits.exit281.ascot2e_set_reg_bits.exit294_crit_edge: ; preds = %ascot2e_set_reg_bits.exit281
  call void @__sanitizer_cov_trace_pc() #8
  br label %ascot2e_set_reg_bits.exit294

if.end.i292:                                      ; preds = %ascot2e_set_reg_bits.exit281
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %rdata.i287 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %rdata.i287, align 1
  %and92.i291 = and i8 %95, -49
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i286) #6
  %96 = ptrtoint ptr %tmp.i.i286 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %and92.i291, ptr %tmp.i.i286, align 1
  %call.i4.i293 = call fastcc i32 @ascot2e_write_regs(ptr noundef %11, i8 noundef zeroext 12, ptr noundef nonnull %tmp.i.i286, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i286) #6
  br label %ascot2e_set_reg_bits.exit294

ascot2e_set_reg_bits.exit294:                     ; preds = %if.end.i292, %ascot2e_set_reg_bits.exit281.ascot2e_set_reg_bits.exit294_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rdata.i287) #6
  %97 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %mul, ptr %11, align 4
  br label %cleanup

cleanup:                                          ; preds = %ascot2e_set_reg_bits.exit294, %if.then18, %do.body6
  %retval.0 = phi i32 [ 0, %ascot2e_set_reg_bits.exit294 ], [ -22, %if.then18 ], [ -22, %do.body6 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ascot2e_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %mul = mul i32 %3, 1000
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ascot2e_get_tv_system(ptr nocapture noundef %fe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %2 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delivery_system, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.do.body_crit_edge [
    i32 3, label %if.then
    i32 16, label %if.then22
    i32 1, label %if.then47
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %5 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000001, i32 %6)
  %cmp1 = icmp ult i32 %6, 5000001
  br i1 %cmp1, label %if.then.do.body_crit_edge, label %if.else

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000001, i32 %6)
  %cmp4 = icmp ult i32 %6, 6000001
  br i1 %cmp4, label %if.else.do.body_crit_edge, label %if.else6

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %6)
  %cmp8 = icmp ult i32 %6, 7000001
  br i1 %cmp8, label %if.else6.do.body_crit_edge, label %if.else10

if.else6.do.body_crit_edge:                       ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.else10:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000001, i32 %6)
  %cmp12 = icmp ult i32 %6, 8000001
  br i1 %cmp12, label %if.else10.do.body_crit_edge, label %if.else14

if.else10.do.body_crit_edge:                      ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.else14:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8000000, ptr %bandwidth_hz, align 4
  br label %do.body

if.then22:                                        ; preds = %entry
  %bandwidth_hz23 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %8 = ptrtoint ptr %bandwidth_hz23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bandwidth_hz23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000001, i32 %9)
  %cmp24 = icmp ult i32 %9, 5000001
  br i1 %cmp24, label %if.then22.do.body_crit_edge, label %if.else26

if.then22.do.body_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.else26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000001, i32 %9)
  %cmp28 = icmp ult i32 %9, 6000001
  br i1 %cmp28, label %if.else26.do.body_crit_edge, label %if.else30

if.else26.do.body_crit_edge:                      ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.else30:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %9)
  %cmp32 = icmp ult i32 %9, 7000001
  br i1 %cmp32, label %if.else30.do.body_crit_edge, label %if.else34

if.else30.do.body_crit_edge:                      ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.else34:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000001, i32 %9)
  %cmp36 = icmp ult i32 %9, 8000001
  br i1 %cmp36, label %if.else34.do.body_crit_edge, label %if.else38

if.else34.do.body_crit_edge:                      ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.else38:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %bandwidth_hz23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8000000, ptr %bandwidth_hz23, align 4
  br label %do.body

if.then47:                                        ; preds = %entry
  %bandwidth_hz48 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %11 = ptrtoint ptr %bandwidth_hz48 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bandwidth_hz48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000001, i32 %12)
  %cmp49 = icmp ult i32 %12, 6000001
  br i1 %cmp49, label %if.then47.do.body_crit_edge, label %if.else51

if.then47.do.body_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.else51:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000001, i32 %12)
  %cmp53 = icmp ult i32 %12, 8000001
  %spec.select = select i1 %cmp53, i32 10, i32 13
  br label %do.body

do.body:                                          ; preds = %if.else51, %if.then47.do.body_crit_edge, %if.else38, %if.else34.do.body_crit_edge, %if.else30.do.body_crit_edge, %if.else26.do.body_crit_edge, %if.then22.do.body_crit_edge, %if.else14, %if.else10.do.body_crit_edge, %if.else6.do.body_crit_edge, %if.else.do.body_crit_edge, %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  %system.0 = phi i32 [ 3, %if.else14 ], [ 8, %if.else38 ], [ 0, %if.then.do.body_crit_edge ], [ 1, %if.else.do.body_crit_edge ], [ 2, %if.else6.do.body_crit_edge ], [ 3, %if.else10.do.body_crit_edge ], [ 5, %if.then22.do.body_crit_edge ], [ 6, %if.else26.do.body_crit_edge ], [ 7, %if.else30.do.body_crit_edge ], [ 8, %if.else34.do.body_crit_edge ], [ 13, %entry.do.body_crit_edge ], [ 9, %if.then47.do.body_crit_edge ], [ %spec.select, %if.else51 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ascot2e_get_tv_system.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ascot2e_get_tv_system, %if.then62)) #6
          to label %do.end [label %if.then62], !srcloc !87

if.then62:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %i2c = getelementptr inbounds %struct.ascot2e_priv, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delivery_system, align 4
  %bandwidth_hz64 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %17 = ptrtoint ptr %bandwidth_hz64 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bandwidth_hz64, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ascot2e_get_tv_system.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef %system.0, i32 noundef %16, i32 noundef %18) #6
  br label %do.end

do.end:                                           ; preds = %if.then62, %do.body
  ret i32 %system.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ascot2e_read_regs(ptr nocapture noundef readonly %priv, i8 noundef zeroext %reg, ptr noundef %val) unnamed_addr #0 align 64 {
entry:
  %reg.addr = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %reg.addr, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #6
  %1 = getelementptr inbounds i8, ptr %msg, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %i2c_address = getelementptr inbounds %struct.ascot2e_priv, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %i2c_address to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %i2c_address, align 4
  %conv = zext i8 %4 to i16
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags, align 2
  %len1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %len1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %len1, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %reg.addr, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %9 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %arrayinit.element, align 4
  %flags5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %10 = ptrtoint ptr %flags5 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags5, align 2
  %len6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %11 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %len6, align 4
  %buf8 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %12 = ptrtoint ptr %buf8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %val, ptr %buf8, align 4
  %i2c = getelementptr inbounds %struct.ascot2e_priv, ptr %priv, i32 0, i32 2
  %13 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c, align 4
  %call = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp10.not = icmp eq i32 %call, 1
  %spec.store.select = select i1 %cmp10.not, i32 1, i32 -121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  %ret.0 = select i1 %cmp1, i32 %call, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp12 = icmp slt i32 %ret.0, 0
  %15 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c, align 4
  br i1 %cmp12, label %do.end, label %if.end19

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %i2c_address to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %i2c_address, align 4
  %conv17 = zext i8 %18 to i32
  %19 = ptrtoint ptr %reg.addr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %reg.addr, align 1
  %conv18 = zext i8 %20 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.11, i32 noundef %ret.0, i32 noundef %conv17, i32 noundef %conv18) #10
  br label %cleanup

if.end19:                                         ; preds = %entry
  %call22 = call i32 @i2c_transfer(ptr noundef %16, ptr noundef %arrayinit.element, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call22)
  %cmp26.not = icmp eq i32 %call22, 1
  %spec.store.select43 = select i1 %cmp26.not, i32 1, i32 -121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp232 = icmp slt i32 %call22, 0
  %ret.1 = select i1 %cmp232, i32 %call22, i32 %spec.store.select43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp30 = icmp slt i32 %ret.1, 0
  br i1 %cmp30, label %do.end35, label %if.end41

do.end35:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c, align 4
  %dev37 = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %i2c_address to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %i2c_address, align 4
  %conv39 = zext i8 %24 to i32
  %25 = ptrtoint ptr %reg.addr to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %reg.addr, align 1
  %conv40 = zext i8 %26 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev37, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.11, i32 noundef %ret.1, i32 noundef %conv39, i32 noundef %conv40) #10
  br label %cleanup

if.end41:                                         ; preds = %if.end19
  %27 = ptrtoint ptr %reg.addr to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %reg.addr, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ascot2e_i2c_debug.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ascot2e_read_regs, %if.then.i)) #6
          to label %do.body5.i [label %if.then.i], !srcloc !87

if.then.i:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %30, i32 0, i32 9
  %conv4.i = zext i8 %28 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ascot2e_i2c_debug.__UNIQUE_ID_ddebug290, ptr noundef %dev.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %conv4.i, i32 noundef 1) #6
  br label %do.body5.i

do.body5.i:                                       ; preds = %if.then.i, %if.end41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ascot2e_i2c_debug.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ascot2e_read_regs, %if.then17.i)) #6
          to label %cleanup [label %if.then17.i], !srcloc !87

if.then17.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @print_hex_dump(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %val, i32 noundef 1, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then17.i, %do.body5.i, %do.end35, %do.end
  %retval.0 = phi i32 [ %ret.0, %do.end ], [ %ret.1, %do.end35 ], [ 0, %do.body5.i ], [ 0, %if.then17.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !60, !62, !63, !65, !66, !67, !69, !71, !72, !73, !74, !76, !77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/ascot2e.c", i32 531, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ascot2e_attach._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ascot2e_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_ascot2e_attach, !9, !"__ksymtab_ascot2e_attach", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/ascot2e.c", i32 536, i32 1}
!10 = !{ptr @__UNIQUE_ID_description300, !11, !"__UNIQUE_ID_description300", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/ascot2e.c", i32 538, i32 1}
!12 = !{ptr @__UNIQUE_ID_author301, !13, !"__UNIQUE_ID_author301", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/ascot2e.c", i32 539, i32 1}
!14 = !{ptr @__UNIQUE_ID_file302, !15, !"__UNIQUE_ID_file302", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/ascot2e.c", i32 540, i32 1}
!16 = !{ptr @__UNIQUE_ID_license303, !15, !"__UNIQUE_ID_license303", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/ascot2e.c", i32 127, i32 3}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ascot2e_write_regs._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @ascot2e_write_regs._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/ascot2e.c", i32 139, i32 3}
!25 = !{ptr @ascot2e_write_regs._entry.8, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ascot2e_write_regs._entry_ptr.10, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/ascot2e.c", i32 106, i32 2}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ascot2e_i2c_debug.__UNIQUE_ID_ddebug290, !29, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!32 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/ascot2e.c", i32 108, i32 2}
!36 = !{ptr @ascot2e_i2c_debug.__UNIQUE_ID_ddebug291, !35, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!37 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ascot2e_tuner_ops, !39, !"ascot2e_tuner_ops", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/ascot2e.c", i32 459, i32 35}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/ascot2e.c", i32 254, i32 2}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ascot2e_release.__UNIQUE_ID_ddebug295, !41, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/ascot2e.c", i32 246, i32 2}
!46 = !{ptr @ascot2e_init.__UNIQUE_ID_ddebug294, !45, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/dvb-frontends/ascot2e.c", i32 233, i32 2}
!49 = !{ptr @ascot2e_leave_power_save.__UNIQUE_ID_ddebug293, !48, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/ascot2e.c", i32 263, i32 2}
!52 = !{ptr @ascot2e_sleep.__UNIQUE_ID_ddebug296, !51, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/ascot2e.c", i32 218, i32 2}
!55 = !{ptr @ascot2e_enter_power_save.__UNIQUE_ID_ddebug292, !54, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/ascot2e.c", i32 320, i32 2}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ascot2e_set_params.__UNIQUE_ID_ddebug298, !57, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/dvb-frontends/ascot2e.c", i32 325, i32 3}
!62 = !{ptr @ascot2e_set_params.__UNIQUE_ID_ddebug299, !61, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/dvb-frontends/ascot2e.c", i32 306, i32 2}
!65 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ascot2e_get_tv_system.__UNIQUE_ID_ddebug297, !64, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!67 = !{ptr @ascot2e_sett, !68, !"ascot2e_sett", i1 false, i1 false}
!68 = !{!"../drivers/media/dvb-frontends/ascot2e.c", i32 74, i32 33}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/dvb-frontends/ascot2e.c", i32 176, i32 3}
!71 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @ascot2e_read_regs._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @ascot2e_read_regs._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/dvb-frontends/ascot2e.c", i32 185, i32 3}
!76 = !{ptr @ascot2e_read_regs._entry.31, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ascot2e_read_regs._entry_ptr.33, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i64 2148214369, i64 2148214374, i64 2148214387, i64 2148214431, i64 2148214465, i64 2148214486}
!88 = !{!"auto-init"}
