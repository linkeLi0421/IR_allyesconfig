; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/helene.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/helene.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+helene_attach_s\22, \22a\22\09"
module asm "\09.weak\09__crc_helene_attach_s\09\09\09\09"
module asm "\09.long\09__crc_helene_attach_s\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_helene_attach_s:\09\09\09\09\09"
module asm "\09.asciz \09\22helene_attach_s\22\09\09\09\09\09"
module asm "__kstrtabns_helene_attach_s:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+helene_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_helene_attach\09\09\09\09"
module asm "\09.long\09__crc_helene_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_helene_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22helene_attach\22\09\09\09\09\09"
module asm "__kstrtabns_helene_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.helene_terr_adjust_param_t = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.helene_priv = type { i32, i8, ptr, i32, ptr, ptr, i32 }
%struct.helene_config = type { i8, i8, ptr, ptr, i32, ptr }
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
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@helene_tuner_ops_s = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Sony HELENE Sat tuner\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 500000000, i32 -1794967296, i32 1000000, i32 0, i32 0, i32 0 }, ptr @helene_release, ptr @helene_init, ptr @helene_sleep, ptr null, ptr null, ptr @helene_set_params_s, ptr null, ptr null, ptr @helene_get_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@helene_attach_s._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1025, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Sony HELENE Sat attached on addr=%x at I2C adapter %p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"helene_attach_s\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/dvb-frontends/helene.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@helene_attach_s._entry_ptr = internal global ptr @helene_attach_s._entry, section ".printk_index", align 4
@__kstrtab_helene_attach_s = external dso_local constant [0 x i8], align 1
@__kstrtabns_helene_attach_s = external dso_local constant [0 x i8], align 1
@__ksymtab_helene_attach_s = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @helene_attach_s to i32), ptr @__kstrtab_helene_attach_s, ptr @__kstrtabns_helene_attach_s }, section "___ksymtab+helene_attach_s", align 4
@helene_tuner_ops_t = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Sony HELENE Ter tuner\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1000000, i32 1200000000, i32 25000, i32 0, i32 0, i32 0 }, ptr @helene_release, ptr @helene_init, ptr @helene_sleep, ptr null, ptr null, ptr @helene_set_params_t, ptr null, ptr null, ptr @helene_get_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@helene_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1061, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Sony HELENE Ter attached on addr=%x at I2C adapter %p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"helene_attach\00", [18 x i8] zeroinitializer }, align 32
@helene_attach._entry_ptr = internal global ptr @helene_attach._entry, section ".printk_index", align 4
@__kstrtab_helene_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_helene_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_helene_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @helene_attach to i32), ptr @__kstrtab_helene_attach, ptr @__kstrtabns_helene_attach }, section "___ksymtab+helene_attach", align 4
@__initcall__kmod_helene__303_1117_helene_driver_init6 = internal global ptr @helene_driver_init, section ".initcall6.init", align 4
@helene_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @helene_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.19, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @helene_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_helene_driver_exit = internal global ptr @helene_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description304 = internal constant [52 x i8] c"helene.description=Sony HELENE Sat/Ter tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author305 = internal constant [45 x i8] c"helene.author=Abylay Ospan <aospan@netup.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [47 x i8] c"helene.file=drivers/media/dvb-frontends/helene\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [19 x i8] c"helene.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@helene_x_pon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 959, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HELENE tuner CPU error 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"helene_x_pon\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@helene_x_pon._entry_ptr = internal global ptr @helene_x_pon._entry, section ".printk_index", align 4
@helene_x_pon._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.2, i32 989, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HELENE tuner x_pon done\0A\00", [39 x i8] zeroinitializer }, align 32
@helene_x_pon._entry_ptr.12 = internal global ptr @helene_x_pon._entry.10, section ".printk_index", align 4
@helene_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 304, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"wr reg=%04x: len=%d vs %zu is too big!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"helene_write_regs\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@helene_write_regs._entry_ptr = internal global ptr @helene_write_regs._entry, section ".printk_index", align 4
@helene_write_regs._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.2, i32 317, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: i2c wr failed=%d reg=%02x len=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@helene_write_regs._entry_ptr.18 = internal global ptr @helene_write_regs._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"helene\00", [25 x i8] zeroinitializer }, align 32
@helene_i2c_debug.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"helene_i2c_debug\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"helene: I2C %s reg 0x%02x size %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@helene_i2c_debug.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.2, ptr @.str.24, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"helene: I2C data: \00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@helene_read_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 354, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: I2C rw failed=%d addr=%02x reg=%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"helene_read_regs\00", [47 x i8] zeroinitializer }, align 32
@helene_read_regs._entry_ptr = internal global ptr @helene_read_regs._entry, section ".printk_index", align 4
@helene_read_regs._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 363, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: i2c rd failed=%d addr=%02x reg=%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@helene_read_regs._entry_ptr.30 = internal global ptr @helene_read_regs._entry.28, section ".printk_index", align 4
@helene_release.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"helene_release\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@helene_init.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.33, ptr @.str.2, ptr @.str.32, i8 0, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"helene_init\00", [20 x i8] zeroinitializer }, align 32
@helene_leave_power_save.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.34, ptr @.str.2, ptr @.str.32, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"helene_leave_power_save\00", [40 x i8] zeroinitializer }, align 32
@helene_sleep.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.35, ptr @.str.2, ptr @.str.32, i8 0, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"helene_sleep\00", [19 x i8] zeroinitializer }, align 32
@helene_enter_power_save.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.36, ptr @.str.2, ptr @.str.32, i8 0, i8 98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"helene_enter_power_save\00", [40 x i8] zeroinitializer }, align 32
@helene_set_params_s.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"helene_set_params_s\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(): tune frequency %dkHz sr=%uKsps\0A\00", [58 x i8] zeroinitializer }, align 32
@helene_set_params_s._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 527, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(): unknown DTV system\0A\00", [38 x i8] zeroinitializer }, align 32
@helene_set_params_s._entry_ptr = internal global ptr @helene_set_params_s._entry, section ".printk_index", align 4
@helene_set_params_s._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.37, ptr @.str.2, i32 573, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(): unknown xtal %d\0A\00", [41 x i8] zeroinitializer }, align 32
@helene_set_params_s._entry_ptr.42 = internal global ptr @helene_set_params_s._entry.40, section ".printk_index", align 4
@helene_set_params_s._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.37, ptr @.str.2, i32 631, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(): unknown standard %d\0A\00", [37 x i8] zeroinitializer }, align 32
@helene_set_params_s._entry_ptr.45 = internal global ptr @helene_set_params_s._entry.43, section ".printk_index", align 4
@helene_set_params_s.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.37, ptr @.str.2, ptr @.str.46, i8 0, i8 -93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s(): tune done\0A\00", [47 x i8] zeroinitializer }, align 32
@helene_get_tv_system.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"helene_get_tv_system\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s(): HELENE DTV system %d (delsys %d, bandwidth %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@helene_set_params_t.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 -89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"helene_set_params_t\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(): tune frequency %dkHz\0A\00", [36 x i8] zeroinitializer }, align 32
@helene_set_params_t.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.49, ptr @.str.2, ptr @.str.39, i8 0, i8 -88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@terr_params = internal constant { [28 x %struct.helene_terr_adjust_param_t], [84 x i8] } { [28 x %struct.helene_terr_adjust_param_t] [%struct.helene_terr_adjust_param_t { i8 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 5, i8 3, i8 6, i8 3, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 5, i8 3, i8 6, i8 3, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 5, i8 3, i8 6, i8 3, i8 1, i8 1, i8 1, i8 0, i8 0, i8 3, i8 1, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 5, i8 3, i8 6, i8 3, i8 1, i8 1, i8 1, i8 0, i8 1, i8 11, i8 5, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 5, i8 3, i8 6, i8 3, i8 1, i8 1, i8 1, i8 0, i8 2, i8 2, i8 29, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 5, i8 3, i8 6, i8 3, i8 1, i8 1, i8 1, i8 0, i8 2, i8 2, i8 29, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 3, i8 4, i8 10, i8 4, i8 4, i8 4, i8 4, i8 0, i8 2, i8 2, i8 29, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 3, i8 4, i8 10, i8 4, i8 4, i8 4, i8 4, i8 0, i8 2, i8 31, i8 4, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 3, i8 3, i8 3, i8 0, i8 0, i8 26, i8 29, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 0, i8 26, i8 29, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 0, i8 23, i8 27, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 1, i8 25, i8 26, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 2, i8 27, i8 25, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 0, i8 24, i8 29, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 0, i8 24, i8 29, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 1, i8 26, i8 27, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 2, i8 28, i8 26, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 3, i8 22, i8 22, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 0, i8 24, i8 29, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 0, i8 24, i8 29, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 1, i8 26, i8 27, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 9, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 2, i8 28, i8 26, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 5, i8 2, i8 2, i8 2, i8 1, i8 1, i8 1, i8 0, i8 0, i8 26, i8 28, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 5, i8 2, i8 2, i8 2, i8 1, i8 1, i8 1, i8 0, i8 2, i8 30, i8 29, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 3, i8 9, i8 9, i8 9, i8 2, i8 2, i8 2, i8 0, i8 0, i8 26, i8 30, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 3, i8 9, i8 9, i8 9, i8 2, i8 2, i8 2, i8 0, i8 2, i8 30, i8 0, i8 0 }, %struct.helene_terr_adjust_param_t { i8 -1, i8 4, i8 11, i8 11, i8 11, i8 2, i8 2, i8 2, i8 0, i8 2, i8 2, i8 1, i8 0 }], [84 x i8] zeroinitializer }, align 32
@helene_set_params_t.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.49, ptr @.str.2, ptr @.str.46, i8 0, i8 -51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@helene_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"helene\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@helene_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Sony HELENE Sat/Ter tuner\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1000000, i32 -1794967296, i32 25000, i32 0, i32 0, i32 0 }, ptr @helene_release, ptr @helene_init, ptr @helene_sleep, ptr null, ptr null, ptr @helene_set_params, ptr null, ptr null, ptr @helene_get_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@helene_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 1099, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Sony HELENE attached on addr=%x at I2C adapter %p\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"helene_probe\00", [19 x i8] zeroinitializer }, align 32
@helene_probe._entry_ptr = internal global ptr @helene_probe._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 28, i64 29, i64 30]
@__sancov_gen_cov_switch_values.53 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 3, i64 5, i64 6, i64 8, i64 9, i64 16]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 8, i64 16]
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c"helene_tuner_ops_s\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 864, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1023, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"helene_tuner_ops_t\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 850, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1059, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [14 x i8] c"helene_driver\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1110, i32 26 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 958, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 988, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 302, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 315, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 281, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 283, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 352, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 361, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 434, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 426, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 408, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 443, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 392, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 521, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 526, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 572, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 630, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 653, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 503, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 669, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant [12 x i8] c"terr_params\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 189, i32 1 }
@___asan_gen_.223 = private unnamed_addr constant [10 x i8] c"helene_id\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1104, i32 35 }
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"helene_tuner_ops\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 878, i32 35 }
@___asan_gen_.229 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.236 = private constant [40 x i8] c"../drivers/media/dvb-frontends/helene.c\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1098, i32 2 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_helene_driver_exit, ptr @__initcall__kmod_helene__303_1117_helene_driver_init6, ptr @__ksymtab_helene_attach, ptr @__ksymtab_helene_attach_s, ptr @helene_attach._entry, ptr @helene_attach._entry_ptr, ptr @helene_attach_s._entry, ptr @helene_attach_s._entry_ptr, ptr @helene_driver_exit, ptr @helene_probe._entry, ptr @helene_probe._entry_ptr, ptr @helene_read_regs._entry, ptr @helene_read_regs._entry.28, ptr @helene_read_regs._entry_ptr, ptr @helene_read_regs._entry_ptr.30, ptr @helene_set_params_s._entry, ptr @helene_set_params_s._entry.40, ptr @helene_set_params_s._entry.43, ptr @helene_set_params_s._entry_ptr, ptr @helene_set_params_s._entry_ptr.42, ptr @helene_set_params_s._entry_ptr.45, ptr @helene_write_regs._entry, ptr @helene_write_regs._entry.16, ptr @helene_write_regs._entry_ptr, ptr @helene_write_regs._entry_ptr.18, ptr @helene_x_pon._entry, ptr @helene_x_pon._entry.10, ptr @helene_x_pon._entry_ptr, ptr @helene_x_pon._entry_ptr.12, ptr @helene_tuner_ops_s, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @helene_tuner_ops_t, ptr @.str.5, ptr @.str.6, ptr @helene_driver, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @terr_params, ptr @helene_id, ptr @helene_tuner_ops, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @helene_tuner_ops_s to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @helene_attach_s._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @helene_tuner_ops_t to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @helene_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @helene_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @helene_x_pon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @helene_x_pon._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @helene_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @helene_write_regs._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @helene_read_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @helene_read_regs._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @helene_set_params_s._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @helene_set_params_s._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @helene_set_params_s._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terr_params to i32), i32 364, i32 448, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @helene_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @helene_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @helene_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @helene_attach_s(ptr noundef %fe, ptr nocapture noundef readonly %config, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %config, align 4
  %3 = lshr i8 %2, 1
  %i2c_address2 = getelementptr inbounds %struct.helene_priv, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %i2c_address2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %i2c_address2, align 4
  %i2c3 = getelementptr inbounds %struct.helene_priv, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %i2c3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %i2c, ptr %i2c3, align 8
  %set_tuner_priv = getelementptr inbounds %struct.helene_config, ptr %config, i32 0, i32 2
  %6 = ptrtoint ptr %set_tuner_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_tuner_priv, align 4
  %set_tuner_data = getelementptr inbounds %struct.helene_priv, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %set_tuner_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %set_tuner_data, align 8
  %set_tuner_callback = getelementptr inbounds %struct.helene_config, ptr %config, i32 0, i32 3
  %9 = ptrtoint ptr %set_tuner_callback to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_tuner_callback, align 4
  %set_tuner = getelementptr inbounds %struct.helene_priv, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %set_tuner to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %set_tuner, align 4
  %xtal = getelementptr inbounds %struct.helene_config, ptr %config, i32 0, i32 4
  %12 = ptrtoint ptr %xtal to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %xtal, align 4
  %xtal4 = getelementptr inbounds %struct.helene_priv, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %xtal4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %xtal4, align 8
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %15 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 %16(ptr noundef %fe, i32 noundef 1) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %call10 = tail call fastcc i32 @helene_x_pon(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %17 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool17.not = icmp eq ptr %18, null
  br i1 %tobool17.not, label %if.end14.if.end22_crit_edge, label %if.then18

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = tail call i32 %18(ptr noundef %fe, i32 noundef 0) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end14.if.end22_crit_edge
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %19 = call ptr @memcpy(ptr %tuner_ops, ptr @helene_tuner_ops_s, i32 220)
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %20 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %21 = ptrtoint ptr %i2c3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c3, align 8
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %i2c_address2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %i2c_address2, align 4
  %conv26 = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %conv26, ptr noundef %22) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then13 ], [ %fe, %if.end22 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @helene_x_pon(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  %tmp.i105 = alloca i8, align 1
  %tmp.i103 = alloca i8, align 1
  %tmp.i101 = alloca i8, align 1
  %tmp.i99 = alloca i8, align 1
  %tmp.i97 = alloca i8, align 1
  %tmp.i94 = alloca i8, align 1
  %tmp.i92 = alloca i8, align 1
  %tmp.i90 = alloca i8, align 1
  %tmp.i88 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %dataT = alloca [4 x i8], align 4
  %cdata = alloca [2 x i8], align 2
  %data = alloca [20 x i8], align 1
  %rdata = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dataT) #8
  %0 = ptrtoint ptr %dataT to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 100663808, ptr %dataT, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cdata) #8
  %1 = ptrtoint ptr %cdata to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 31233, ptr %cdata, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %data) #8
  %2 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 1
  %3 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 2
  %4 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 3
  %5 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 4
  %6 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 5
  %7 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 6
  %8 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 7
  %9 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 8
  %10 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 9
  %11 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 10
  %12 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 11
  %13 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 12
  %14 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 13
  %15 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 14
  %16 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 15
  %17 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 16
  %18 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 17
  %19 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 18
  %20 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 19
  %21 = call ptr @memset(ptr %data, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rdata) #8
  %22 = ptrtoint ptr %rdata to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %rdata, align 1, !annotation !140
  %23 = getelementptr inbounds [2 x i8], ptr %rdata, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %23, align 1, !annotation !140
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #8
  %25 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %tmp.i, align 1
  %call.i = call fastcc i32 @helene_write_regs(ptr noundef %priv, i8 noundef zeroext 1, ptr noundef nonnull %tmp.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i88) #8
  %26 = ptrtoint ptr %tmp.i88 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %tmp.i88, align 1
  %call.i89 = call fastcc i32 @helene_write_regs(ptr noundef %priv, i8 noundef zeroext 103, ptr noundef nonnull %tmp.i88, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i88) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i90) #8
  %27 = ptrtoint ptr %tmp.i90 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 6, ptr %tmp.i90, align 1
  %call.i91 = call fastcc i32 @helene_write_regs(ptr noundef %priv, i8 noundef zeroext 67, ptr noundef nonnull %tmp.i90, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i90) #8
  %call4 = call fastcc i32 @helene_write_regs(ptr noundef %priv, i8 noundef zeroext 94, ptr noundef nonnull %dataT, i32 noundef 3)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i92) #8
  %28 = ptrtoint ptr %tmp.i92 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 5, ptr %tmp.i92, align 1
  %call.i93 = call fastcc i32 @helene_write_regs(ptr noundef %priv, i8 noundef zeroext 12, ptr noundef nonnull %tmp.i92, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i92) #8
  %call8 = call fastcc i32 @helene_write_regs(ptr noundef %priv, i8 noundef zeroext -103, ptr noundef nonnull %cdata, i32 noundef 2)
  %xtal = getelementptr inbounds %struct.helene_priv, ptr %priv, i32 0, i32 6
  %29 = ptrtoint ptr %xtal to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %xtal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp = icmp eq i32 %30, 0
  %. = select i1 %cmp, i8 16, i8 24
  %31 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %., ptr %data, align 1
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -124, ptr %2, align 1
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -90, ptr %3, align 1
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -128, ptr %4, align 1
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %5, align 1
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %6, align 1
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -60, ptr %7, align 1
  %38 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 64, ptr %8, align 1
  %39 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 16, ptr %9, align 1
  %40 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %10, align 1
  %41 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 69, ptr %11, align 1
  %42 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 117, ptr %12, align 1
  %43 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 7, ptr %13, align 1
  %44 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 28, ptr %14, align 1
  %45 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 63, ptr %15, align 1
  %46 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 2, ptr %16, align 1
  %47 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 16, ptr %17, align 1
  %48 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 32, ptr %18, align 1
  %49 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 10, ptr %19, align 1
  %50 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %20, align 1
  %call31 = call fastcc i32 @helene_write_regs(ptr noundef %priv, i8 noundef zeroext -127, ptr noundef nonnull %data, i32 noundef 20)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i94) #8
  %51 = ptrtoint ptr %tmp.i94 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %tmp.i94, align 1
  %call.i95 = call fastcc i32 @helene_write_regs(ptr noundef %priv, i8 noundef zeroext -101, ptr noundef nonnull %tmp.i94, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i94) #8
  call void @msleep(i32 noundef 20) #8
  %call34 = call fastcc i32 @helene_read_regs(ptr noundef %priv, i8 noundef zeroext 26, ptr noundef nonnull %rdata, i32 noundef 2)
  %52 = ptrtoint ptr %rdata to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %rdata, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp36.not = icmp eq i8 %53, 0
  br i1 %cmp36.not, label %if.end41, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %53 to i32
  %i2c = getelementptr inbounds %struct.helene_priv, ptr %priv, i32 0, i32 2
  %54 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %55, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %conv) #12
  br label %cleanup

if.end41:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %cdata to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -112, ptr %cdata, align 2
  %arrayidx43 = getelementptr inbounds [2 x i8], ptr %cdata, i32 0, i32 1
  %57 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 6, ptr %arrayidx43, align 1
  %call45 = call fastcc i32 @helene_write_regs(ptr noundef %priv, i8 noundef zeroext 23, ptr noundef nonnull %cdata, i32 noundef 2)
  call void @msleep(i32 noundef 20) #8
  %call.i96 = call fastcc i32 @helene_read_regs(ptr noundef %priv, i8 noundef zeroext 25, ptr noundef nonnull %data, i32 noundef 1) #8
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %data, align 1
  %60 = lshr i8 %59, 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i97) #8
  %61 = ptrtoint ptr %tmp.i97 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %tmp.i97, align 1
  %call.i98 = call fastcc i32 @helene_write_regs(ptr noundef %priv, i8 noundef zeroext -107, ptr noundef nonnull %tmp.i97, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i97) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i99) #8
  %62 = ptrtoint ptr %tmp.i99 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 2, ptr %tmp.i99, align 1
  %call.i100 = call fastcc i32 @helene_write_regs(ptr noundef %priv, i8 noundef zeroext 116, ptr noundef nonnull %tmp.i99, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i99) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i101) #8
  %63 = ptrtoint ptr %tmp.i101 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %tmp.i101, align 1
  %call.i102 = call fastcc i32 @helene_write_regs(ptr noundef %priv, i8 noundef zeroext -120, ptr noundef nonnull %tmp.i101, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i101) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i103) #8
  %64 = ptrtoint ptr %tmp.i103 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -64, ptr %tmp.i103, align 1
  %call.i104 = call fastcc i32 @helene_write_regs(ptr noundef %priv, i8 noundef zeroext -121, ptr noundef nonnull %tmp.i103, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i103) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i105) #8
  %65 = ptrtoint ptr %tmp.i105 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %tmp.i105, align 1
  %call.i106 = call fastcc i32 @helene_write_regs(ptr noundef %priv, i8 noundef zeroext -128, ptr noundef nonnull %tmp.i105, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i105) #8
  %66 = ptrtoint ptr %cdata to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 7, ptr %cdata, align 2
  %67 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %arrayidx43, align 1
  %call59 = call fastcc i32 @helene_write_regs(ptr noundef %priv, i8 noundef zeroext 65, ptr noundef nonnull %cdata, i32 noundef 2)
  %i2c63 = getelementptr inbounds %struct.helene_priv, ptr %priv, i32 0, i32 2
  %68 = ptrtoint ptr %i2c63 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i2c63, align 4
  %dev64 = getelementptr inbounds %struct.i2c_adapter, ptr %69, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev64, ptr noundef nonnull @.str.11) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end41 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rdata) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %data) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cdata) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dataT) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @helene_attach(ptr noundef %fe, ptr nocapture noundef readonly %config, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %config, align 4
  %3 = lshr i8 %2, 1
  %i2c_address2 = getelementptr inbounds %struct.helene_priv, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %i2c_address2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %i2c_address2, align 4
  %i2c3 = getelementptr inbounds %struct.helene_priv, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %i2c3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %i2c, ptr %i2c3, align 8
  %set_tuner_priv = getelementptr inbounds %struct.helene_config, ptr %config, i32 0, i32 2
  %6 = ptrtoint ptr %set_tuner_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_tuner_priv, align 4
  %set_tuner_data = getelementptr inbounds %struct.helene_priv, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %set_tuner_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %set_tuner_data, align 8
  %set_tuner_callback = getelementptr inbounds %struct.helene_config, ptr %config, i32 0, i32 3
  %9 = ptrtoint ptr %set_tuner_callback to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_tuner_callback, align 4
  %set_tuner = getelementptr inbounds %struct.helene_priv, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %set_tuner to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %set_tuner, align 4
  %xtal = getelementptr inbounds %struct.helene_config, ptr %config, i32 0, i32 4
  %12 = ptrtoint ptr %xtal to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %xtal, align 4
  %xtal4 = getelementptr inbounds %struct.helene_priv, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %xtal4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %xtal4, align 8
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %15 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 %16(ptr noundef %fe, i32 noundef 1) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %call10 = tail call fastcc i32 @helene_x_pon(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %17 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool17.not = icmp eq ptr %18, null
  br i1 %tobool17.not, label %if.end14.if.end22_crit_edge, label %if.then18

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = tail call i32 %18(ptr noundef %fe, i32 noundef 0) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end14.if.end22_crit_edge
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %19 = call ptr @memcpy(ptr %tuner_ops, ptr @helene_tuner_ops_t, i32 220)
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %20 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %21 = ptrtoint ptr %i2c3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c3, align 8
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %i2c_address2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %i2c_address2, align 4
  %conv26 = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %conv26, ptr noundef %22) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then13 ], [ %fe, %if.end22 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @helene_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @helene_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @helene_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @helene_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @helene_write_regs(ptr nocapture noundef readonly %priv, i8 noundef zeroext %reg, ptr noundef %data, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [21 x i8], align 1
  %msg = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %buf) #8
  %0 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 1
  %1 = call ptr @memset(ptr %buf, i32 255, i32 21)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #8
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %i2c_address = getelementptr inbounds %struct.helene_priv, ptr %priv, i32 0, i32 1
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @helene_i2c_debug.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@helene_write_regs, %if.then.i)) #8
          to label %do.body5.i [label %if.then.i], !srcloc !141

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i2c.i = getelementptr inbounds %struct.helene_priv, ptr %priv, i32 0, i32 2
  %11 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 9
  %conv4.i = zext i8 %reg to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @helene_i2c_debug.__UNIQUE_ID_ddebug290, ptr noundef %dev.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.23, i32 noundef %conv4.i, i32 noundef %len) #8
  br label %do.body5.i

do.body5.i:                                       ; preds = %if.then.i, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @helene_i2c_debug.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@helene_write_regs, %if.then17.i)) #8
          to label %helene_i2c_debug.exit [label %if.then17.i], !srcloc !141

if.then17.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @print_hex_dump(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %data, i32 noundef %len, i1 noundef zeroext true) #8
  br label %helene_i2c_debug.exit

helene_i2c_debug.exit:                            ; preds = %if.then17.i, %do.body5.i
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %reg, ptr %buf, align 1
  %14 = call ptr @memcpy(ptr %0, ptr %data, i32 %len)
  %i2c9 = getelementptr inbounds %struct.helene_priv, ptr %priv, i32 0, i32 2
  %15 = ptrtoint ptr %i2c9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c9, align 4
  %call = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp13.not = icmp eq i32 %call, 1
  %spec.store.select = select i1 %cmp13.not, i32 1, i32 -121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1146 = icmp slt i32 %call, 0
  %ret.0 = select i1 %cmp1146, i32 %call, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp17 = icmp slt i32 %ret.0, 0
  br i1 %cmp17, label %do.end22, label %helene_i2c_debug.exit.cleanup_crit_edge

helene_i2c_debug.exit.cleanup_crit_edge:          ; preds = %helene_i2c_debug.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end22:                                         ; preds = %helene_i2c_debug.exit
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %i2c9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c9, align 4
  %dev24 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 9
  %conv25 = zext i8 %reg to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev24, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19, i32 noundef %ret.0, i32 noundef %conv25, i32 noundef %len) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %helene_i2c_debug.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end22 ], [ 0, %helene_i2c_debug.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #8
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @helene_read_regs(ptr nocapture noundef readonly %priv, i8 noundef zeroext %reg, ptr noundef %val, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %reg.addr = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %reg.addr, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #8
  %1 = getelementptr inbounds i8, ptr %msg, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %i2c_address = getelementptr inbounds %struct.helene_priv, ptr %priv, i32 0, i32 1
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
  %conv7 = trunc i32 %len to i16
  %11 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv7, ptr %len6, align 4
  %buf8 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %12 = ptrtoint ptr %buf8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %val, ptr %buf8, align 4
  %i2c = getelementptr inbounds %struct.helene_priv, ptr %priv, i32 0, i32 2
  %13 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c, align 4
  %call = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp10.not = icmp eq i32 %call, 1
  %spec.store.select = select i1 %cmp10.not, i32 1, i32 -121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp63 = icmp slt i32 %call, 0
  %ret.0 = select i1 %cmp63, i32 %call, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp12 = icmp slt i32 %ret.0, 0
  %15 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c, align 4
  br i1 %cmp12, label %do.end, label %if.end19

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %i2c_address to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %i2c_address, align 4
  %conv17 = zext i8 %18 to i32
  %19 = ptrtoint ptr %reg.addr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %reg.addr, align 1
  %conv18 = zext i8 %20 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.19, i32 noundef %ret.0, i32 noundef %conv17, i32 noundef %conv18) #12
  br label %cleanup

if.end19:                                         ; preds = %entry
  %call22 = call i32 @i2c_transfer(ptr noundef %16, ptr noundef %arrayinit.element, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call22)
  %cmp26.not = icmp eq i32 %call22, 1
  %spec.store.select43 = select i1 %cmp26.not, i32 1, i32 -121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp2364 = icmp slt i32 %call22, 0
  %ret.1 = select i1 %cmp2364, i32 %call22, i32 %spec.store.select43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp30 = icmp slt i32 %ret.1, 0
  br i1 %cmp30, label %do.end35, label %if.end41

do.end35:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
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
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev37, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.19, i32 noundef %ret.1, i32 noundef %conv39, i32 noundef %conv40) #12
  br label %cleanup

if.end41:                                         ; preds = %if.end19
  %27 = ptrtoint ptr %reg.addr to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %reg.addr, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @helene_i2c_debug.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@helene_read_regs, %if.then.i)) #8
          to label %do.body5.i [label %if.then.i], !srcloc !141

if.then.i:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %30, i32 0, i32 9
  %conv4.i = zext i8 %28 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @helene_i2c_debug.__UNIQUE_ID_ddebug290, ptr noundef %dev.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %conv4.i, i32 noundef %len) #8
  br label %do.body5.i

do.body5.i:                                       ; preds = %if.then.i, %if.end41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @helene_i2c_debug.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@helene_read_regs, %if.then17.i)) #8
          to label %cleanup [label %if.then17.i], !srcloc !141

if.then17.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @print_hex_dump(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %val, i32 noundef %len, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then17.i, %do.body5.i, %do.end35, %do.end
  %retval.0 = phi i32 [ %ret.0, %do.end ], [ %ret.1, %do.end35 ], [ 0, %do.body5.i ], [ 0, %if.then17.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @helene_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @helene_release.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@helene_release, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !141

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i2c = getelementptr inbounds %struct.helene_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @helene_release.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %5) #8
  %6 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @helene_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %tmp.i1.i = alloca i8, align 1
  %tmp.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @helene_init.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@helene_init, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !141

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i2c = getelementptr inbounds %struct.helene_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @helene_init.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @helene_leave_power_save.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@helene_init, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !141

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %i2c.i = getelementptr inbounds %struct.helene_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @helene_leave_power_save.__UNIQUE_ID_ddebug293, ptr noundef %dev.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.34) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %state.i = getelementptr inbounds %struct.helene_priv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp eq i32 %7, 2
  br i1 %cmp.i, label %do.end.i.helene_leave_power_save.exit_crit_edge, label %if.end4.i

do.end.i.helene_leave_power_save.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %helene_leave_power_save.exit

if.end4.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #8
  %8 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -60, ptr %tmp.i.i, align 1
  %call.i.i = call fastcc i32 @helene_write_regs(ptr noundef %1, i8 noundef zeroext -121, ptr noundef nonnull %tmp.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i1.i) #8
  %9 = ptrtoint ptr %tmp.i1.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 64, ptr %tmp.i1.i, align 1
  %call.i2.i = call fastcc i32 @helene_write_regs(ptr noundef %1, i8 noundef zeroext -120, ptr noundef nonnull %tmp.i1.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i1.i) #8
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %state.i, align 4
  br label %helene_leave_power_save.exit

helene_leave_power_save.exit:                     ; preds = %if.end4.i, %do.end.i.helene_leave_power_save.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @helene_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %tmp.i1.i = alloca i8, align 1
  %tmp.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @helene_sleep.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@helene_sleep, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !141

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i2c = getelementptr inbounds %struct.helene_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @helene_sleep.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.35) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @helene_enter_power_save.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@helene_sleep, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !141

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %i2c.i = getelementptr inbounds %struct.helene_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @helene_enter_power_save.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.36) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %state.i = getelementptr inbounds %struct.helene_priv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  br i1 %cmp.i, label %do.end.i.helene_enter_power_save.exit_crit_edge, label %if.end4.i

do.end.i.helene_enter_power_save.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %helene_enter_power_save.exit

if.end4.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #8
  %8 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %tmp.i.i, align 1
  %call.i.i = call fastcc i32 @helene_write_regs(ptr noundef %1, i8 noundef zeroext -120, ptr noundef nonnull %tmp.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i1.i) #8
  %9 = ptrtoint ptr %tmp.i1.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -64, ptr %tmp.i1.i, align 1
  %call.i2.i = call fastcc i32 @helene_write_regs(ptr noundef %1, i8 noundef zeroext -121, ptr noundef nonnull %tmp.i1.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i1.i) #8
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %state.i, align 4
  br label %helene_enter_power_save.exit

helene_enter_power_save.exit:                     ; preds = %if.end4.i, %do.end.i.helene_enter_power_save.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @helene_set_params_s(ptr nocapture noundef %fe) #0 align 64 {
entry:
  %tmp.i220 = alloca i8, align 1
  %tmp.i218 = alloca i8, align 1
  %tmp.i216 = alloca i8, align 1
  %tmp.i214 = alloca i8, align 1
  %tmp.i212 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %data = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %data) #8
  %0 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 3
  %3 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 4
  %4 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 5
  %5 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 6
  %6 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 7
  %7 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 8
  %8 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 9
  %9 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 10
  %10 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 11
  %11 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 12
  %12 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 13
  %13 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 14
  %14 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 15
  %15 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 16
  %16 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 17
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %17 = call ptr @memset(ptr %data, i32 255, i32 20)
  %18 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tuner_priv, align 4
  %20 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dtv_property_cache, align 4
  %symbol_rate2 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %22 = ptrtoint ptr %symbol_rate2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %symbol_rate2, align 4
  %div = udiv i32 %23, 1000
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @helene_set_params_s.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@helene_set_params_s, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !141

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i2c = getelementptr inbounds %struct.helene_priv, ptr %19, i32 0, i32 2
  %24 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %25, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @helene_set_params_s.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef %21, i32 noundef %div) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call fastcc i32 @helene_get_tv_system(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %i2c10 = getelementptr inbounds %struct.helene_priv, ptr %19, i32 0, i32 2
  %26 = ptrtoint ptr %i2c10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c10, align 4
  %dev11 = getelementptr inbounds %struct.i2c_adapter, ptr %27, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37) #12
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %set_tuner = getelementptr inbounds %struct.helene_priv, ptr %19, i32 0, i32 5
  %28 = ptrtoint ptr %set_tuner to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_tuner, align 4
  %tobool13.not = icmp eq ptr %29, null
  br i1 %tobool13.not, label %if.end12.if.end17_crit_edge, label %if.then14

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %set_tuner_data = getelementptr inbounds %struct.helene_priv, ptr %19, i32 0, i32 4
  %30 = ptrtoint ptr %set_tuner_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_tuner_data, align 4
  %call16 = tail call i32 %29(ptr noundef %31, i32 noundef 0) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12.if.end17_crit_edge
  %32 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dtv_property_cache, align 4
  %div20 = udiv i32 %33, 1000
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #8
  %34 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 2, ptr %tmp.i, align 1
  %call.i = call fastcc i32 @helene_write_regs(ptr noundef %19, i8 noundef zeroext 21, ptr noundef nonnull %tmp.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i212) #8
  %35 = ptrtoint ptr %tmp.i212 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 6, ptr %tmp.i212, align 1
  %call.i213 = call fastcc i32 @helene_write_regs(ptr noundef %19, i8 noundef zeroext 67, ptr noundef nonnull %tmp.i212, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i212) #8
  %36 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %data, align 1
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %0, align 1
  %call25 = call fastcc i32 @helene_write_regs(ptr noundef %19, i8 noundef zeroext 106, ptr noundef nonnull %data, i32 noundef 2)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i214) #8
  %38 = ptrtoint ptr %tmp.i214 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -103, ptr %tmp.i214, align 1
  %call.i215 = call fastcc i32 @helene_write_regs(ptr noundef %19, i8 noundef zeroext 117, ptr noundef nonnull %tmp.i214, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i214) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i216) #8
  %39 = ptrtoint ptr %tmp.i216 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %tmp.i216, align 1
  %call.i217 = call fastcc i32 @helene_write_regs(ptr noundef %19, i8 noundef zeroext -99, ptr noundef nonnull %tmp.i216, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i216) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i218) #8
  %40 = ptrtoint ptr %tmp.i218 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 7, ptr %tmp.i218, align 1
  %call.i219 = call fastcc i32 @helene_write_regs(ptr noundef %19, i8 noundef zeroext 97, ptr noundef nonnull %tmp.i218, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i218) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i220) #8
  %41 = ptrtoint ptr %tmp.i220 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %tmp.i220, align 1
  %call.i221 = call fastcc i32 @helene_write_regs(ptr noundef %19, i8 noundef zeroext 1, ptr noundef nonnull %tmp.i220, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i220) #8
  %42 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -60, ptr %data, align 1
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 64, ptr %0, align 1
  %xtal = getelementptr inbounds %struct.helene_priv, ptr %19, i32 0, i32 6
  %44 = ptrtoint ptr %xtal to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %xtal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %46 = icmp ult i32 %45, 4
  br i1 %46, label %switch.lookup, label %do.end41

do.end41:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %i2c42 = getelementptr inbounds %struct.helene_priv, ptr %19, i32 0, i32 2
  %47 = ptrtoint ptr %i2c42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i2c42, align 4
  %dev43 = getelementptr inbounds %struct.i2c_adapter, ptr %48, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.37, i32 noundef %45) #12
  br label %cleanup

switch.lookup:                                    ; preds = %if.end17
  %switch.shiftamt = shl i32 %45, 3
  %switch.downshift = lshr i32 84083202, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %switch.masked, ptr %1, align 1
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -128, ptr %2, align 1
  %51 = ptrtoint ptr %xtal to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %xtal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp47 = icmp eq i32 %52, 1
  %. = select i1 %cmp47, i8 88, i8 112
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %., ptr %3, align 1
  %54 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 30, ptr %4, align 1
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 2, ptr %5, align 1
  %56 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 36, ptr %6, align 1
  %57 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -17, ptr %7, align 1
  %58 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 2, ptr %8, align 1
  %59 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 30, ptr %9, align 1
  %60 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call5, label %do.end125 [
    i32 28, label %switch.lookup.sw.epilog128_crit_edge
    i32 29, label %sw.bb62
    i32 30, label %sw.bb92
  ]

switch.lookup.sw.epilog128_crit_edge:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog128

sw.bb62:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_const_cmp4(i32 4001000, i32 %23)
  %cmp63 = icmp ult i32 %23, 4001000
  br i1 %cmp63, label %sw.bb62.sw.epilog128_crit_edge, label %if.else67

sw.bb62.sw.epilog128_crit_edge:                   ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog128

if.else67:                                        ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_const_cmp4(i32 10001000, i32 %23)
  %cmp68 = icmp ult i32 %23, 10001000
  br i1 %cmp68, label %if.then70, label %if.else76

if.then70:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #10
  %mul71 = mul nuw nsw i32 %div, 47
  %add72 = add nuw nsw i32 %mul71, 39999
  %div73 = udiv i32 %add72, 40000
  %conv74 = trunc i32 %div73 to i8
  br label %if.end84

if.else76:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #10
  %mul77 = mul nuw nsw i32 %div, 27
  %add78 = add nuw nsw i32 %mul77, 39999
  %div79 = udiv i32 %add78, 40000
  %61 = trunc i32 %div79 to i8
  %conv81 = add i8 %61, 5
  br label %if.end84

if.end84:                                         ; preds = %if.else76, %if.then70
  %storemerge226 = phi i8 [ %conv81, %if.else76 ], [ %conv74, %if.then70 ]
  %62 = call i8 @llvm.umin.i8(i8 %storemerge226, i8 36)
  br label %sw.epilog128

sw.bb92:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_const_cmp4(i32 4001000, i32 %23)
  %cmp93 = icmp ult i32 %23, 4001000
  br i1 %cmp93, label %sw.bb92.sw.epilog128_crit_edge, label %if.else97

sw.bb92.sw.epilog128_crit_edge:                   ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog128

if.else97:                                        ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_const_cmp4(i32 10001000, i32 %23)
  %cmp98 = icmp ult i32 %23, 10001000
  br i1 %cmp98, label %if.then100, label %if.else106

if.then100:                                       ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #10
  %mul101 = mul nuw nsw i32 %div, 11
  %add102 = add nuw nsw i32 %mul101, 9999
  %div103 = udiv i32 %add102, 10000
  %conv104 = trunc i32 %div103 to i8
  br label %if.end114

if.else106:                                       ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #10
  %mul107 = mul nuw nsw i32 %div, 3
  %add108 = add nuw nsw i32 %mul107, 4999
  %div109 = udiv i32 %add108, 5000
  %63 = trunc i32 %div109 to i8
  %conv111 = add i8 %63, 5
  br label %if.end114

if.end114:                                        ; preds = %if.else106, %if.then100
  %storemerge = phi i8 [ %conv111, %if.else106 ], [ %conv104, %if.then100 ]
  %64 = call i8 @llvm.umin.i8(i8 %storemerge, i8 36)
  br label %sw.epilog128

do.end125:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %i2c126 = getelementptr inbounds %struct.helene_priv, ptr %19, i32 0, i32 2
  %65 = ptrtoint ptr %i2c126 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i2c126, align 4
  %dev127 = getelementptr inbounds %struct.i2c_adapter, ptr %66, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev127, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.37, i32 noundef %call5) #12
  br label %cleanup

sw.epilog128:                                     ; preds = %if.end114, %sw.bb92.sw.epilog128_crit_edge, %if.end84, %sw.bb62.sw.epilog128_crit_edge, %switch.lookup.sw.epilog128_crit_edge
  %.sink228 = phi i8 [ %64, %if.end114 ], [ %62, %if.end84 ], [ 34, %switch.lookup.sw.epilog128_crit_edge ], [ 5, %sw.bb62.sw.epilog128_crit_edge ], [ 5, %sw.bb92.sw.epilog128_crit_edge ]
  %67 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %.sink228, ptr %10, align 1
  %add129 = add i32 %21, 2
  %div130 = sdiv i32 %add129, 4
  %conv131 = trunc i32 %div130 to i8
  %68 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv131, ptr %11, align 1
  %shr = lshr i32 %div130, 8
  %conv134 = trunc i32 %shr to i8
  %69 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv134, ptr %12, align 1
  %shr136 = lshr i32 %div130, 16
  %70 = trunc i32 %shr136 to i8
  %conv138 = and i8 %70, 15
  %71 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv138, ptr %13, align 1
  %72 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -1, ptr %14, align 1
  %73 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %15, align 1
  %74 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %16, align 1
  %call144 = call fastcc i32 @helene_write_regs(ptr noundef %19, i8 noundef zeroext 4, ptr noundef nonnull %data, i32 noundef 18)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @helene_set_params_s.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@helene_set_params_s, %if.then157)) #8
          to label %do.end162 [label %if.then157], !srcloc !141

if.then157:                                       ; preds = %sw.epilog128
  call void @__sanitizer_cov_trace_pc() #10
  %i2c158 = getelementptr inbounds %struct.helene_priv, ptr %19, i32 0, i32 2
  %75 = ptrtoint ptr %i2c158 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %i2c158, align 4
  %dev159 = getelementptr inbounds %struct.i2c_adapter, ptr %76, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @helene_set_params_s.__UNIQUE_ID_ddebug299, ptr noundef %dev159, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.37) #8
  br label %do.end162

do.end162:                                        ; preds = %if.then157, %sw.epilog128
  %77 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %div20, ptr %19, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end162, %do.end125, %do.end41, %do.end9
  %retval.0 = phi i32 [ -22, %do.end9 ], [ -22, %do.end41 ], [ -22, %do.end125 ], [ 0, %do.end162 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @helene_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @helene_get_tv_system(ptr nocapture noundef %fe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %3, label %do.body.fold.split [
    i32 3, label %if.then
    i32 16, label %if.then22
    i32 5, label %entry.do.body_crit_edge
    i32 6, label %if.then51
    i32 9, label %if.then55
    i32 8, label %if.then59
    i32 1, label %if.then79
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000001, i32 %6)
  %cmp4 = icmp ult i32 %6, 6000001
  br i1 %cmp4, label %if.else.do.body_crit_edge, label %if.else6

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %6)
  %cmp8 = icmp ult i32 %6, 7000001
  br i1 %cmp8, label %if.else6.do.body_crit_edge, label %if.else10

if.else6.do.body_crit_edge:                       ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else10:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000001, i32 %6)
  %cmp12 = icmp ult i32 %6, 8000001
  br i1 %cmp12, label %if.else10.do.body_crit_edge, label %if.else14

if.else10.do.body_crit_edge:                      ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else14:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000001, i32 %9)
  %cmp28 = icmp ult i32 %9, 6000001
  br i1 %cmp28, label %if.else26.do.body_crit_edge, label %if.else30

if.else26.do.body_crit_edge:                      ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else30:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %9)
  %cmp32 = icmp ult i32 %9, 7000001
  br i1 %cmp32, label %if.else30.do.body_crit_edge, label %if.else34

if.else30.do.body_crit_edge:                      ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else34:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000001, i32 %9)
  %cmp36 = icmp ult i32 %9, 8000001
  br i1 %cmp36, label %if.else34.do.body_crit_edge, label %if.else38

if.else34.do.body_crit_edge:                      ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else38:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %bandwidth_hz23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8000000, ptr %bandwidth_hz23, align 4
  br label %do.body

if.then51:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then55:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then59:                                        ; preds = %entry
  %bandwidth_hz60 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %11 = ptrtoint ptr %bandwidth_hz60 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bandwidth_hz60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000001, i32 %12)
  %cmp61 = icmp ult i32 %12, 6000001
  br i1 %cmp61, label %if.then59.do.body_crit_edge, label %if.else63

if.then59.do.body_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else63:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %12)
  %cmp65 = icmp ult i32 %12, 7000001
  br i1 %cmp65, label %if.else63.do.body_crit_edge, label %if.else67

if.else63.do.body_crit_edge:                      ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else67:                                        ; preds = %if.else63
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000001, i32 %12)
  %cmp69 = icmp ult i32 %12, 8000001
  br i1 %cmp69, label %if.else67.do.body_crit_edge, label %if.else71

if.else67.do.body_crit_edge:                      ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else71:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %bandwidth_hz60 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8000000, ptr %bandwidth_hz60, align 4
  br label %do.body

if.then79:                                        ; preds = %entry
  %bandwidth_hz80 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %14 = ptrtoint ptr %bandwidth_hz80 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bandwidth_hz80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000001, i32 %15)
  %cmp81 = icmp ult i32 %15, 6000001
  br i1 %cmp81, label %if.then79.do.body_crit_edge, label %if.else83

if.then79.do.body_crit_edge:                      ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.else83:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000001, i32 %15)
  %cmp85 = icmp ult i32 %15, 8000001
  %spec.select = select i1 %cmp85, i32 24, i32 0
  br label %do.body

do.body.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %do.body.fold.split, %if.else83, %if.then79.do.body_crit_edge, %if.else71, %if.else67.do.body_crit_edge, %if.else63.do.body_crit_edge, %if.then59.do.body_crit_edge, %if.then55, %if.then51, %if.else38, %if.else34.do.body_crit_edge, %if.else30.do.body_crit_edge, %if.else26.do.body_crit_edge, %if.then22.do.body_crit_edge, %if.else14, %if.else10.do.body_crit_edge, %if.else6.do.body_crit_edge, %if.else.do.body_crit_edge, %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  %system.0 = phi i32 [ 17, %if.else14 ], [ 22, %if.else38 ], [ 30, %if.then51 ], [ 28, %if.then55 ], [ 13, %if.else71 ], [ 14, %if.then.do.body_crit_edge ], [ 15, %if.else.do.body_crit_edge ], [ 16, %if.else6.do.body_crit_edge ], [ 17, %if.else10.do.body_crit_edge ], [ 19, %if.then22.do.body_crit_edge ], [ 20, %if.else26.do.body_crit_edge ], [ 21, %if.else30.do.body_crit_edge ], [ 22, %if.else34.do.body_crit_edge ], [ 29, %entry.do.body_crit_edge ], [ 11, %if.then59.do.body_crit_edge ], [ 12, %if.else63.do.body_crit_edge ], [ 13, %if.else67.do.body_crit_edge ], [ 0, %do.body.fold.split ], [ 23, %if.then79.do.body_crit_edge ], [ %spec.select, %if.else83 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @helene_get_tv_system.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@helene_get_tv_system, %if.then98)) #8
          to label %do.end [label %if.then98], !srcloc !141

if.then98:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %i2c = getelementptr inbounds %struct.helene_priv, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delivery_system, align 4
  %bandwidth_hz100 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %20 = ptrtoint ptr %bandwidth_hz100 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bandwidth_hz100, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @helene_get_tv_system.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47, i32 noundef %system.0, i32 noundef %19, i32 noundef %21) #8
  br label %do.end

do.end:                                           ; preds = %if.then98, %do.body
  ret i32 %system.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @helene_set_params_t(ptr nocapture noundef %fe) #0 align 64 {
entry:
  %tmp.i.i342 = alloca i8, align 1
  %rdata.i = alloca i8, align 1
  %tmp.i1.i = alloca i8, align 1
  %tmp.i.i = alloca i8, align 1
  %tmp.i340 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %data = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %data) #8
  %0 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 3
  %3 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 4
  %4 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 5
  %5 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 6
  %6 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 7
  %7 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 8
  %8 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 9
  %9 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 10
  %10 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 11
  %11 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 12
  %12 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 13
  %13 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 14
  %14 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 15
  %15 = getelementptr inbounds [20 x i8], ptr %data, i32 0, i32 16
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %16 = call ptr @memset(ptr %data, i32 255, i32 20)
  %17 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tuner_priv, align 4
  %19 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dtv_property_cache, align 4
  %div = udiv i32 %20, 1000
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @helene_set_params_t.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@helene_set_params_t, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !141

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i2c = getelementptr inbounds %struct.helene_priv, ptr %18, i32 0, i32 2
  %21 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @helene_set_params_t.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i32 noundef %div) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call fastcc i32 @helene_get_tv_system(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %do.body6, label %if.end24

do.body6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @helene_set_params_t.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@helene_set_params_t, %if.then18)) #8
          to label %cleanup [label %if.then18], !srcloc !141

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %i2c19 = getelementptr inbounds %struct.helene_priv, ptr %18, i32 0, i32 2
  %23 = ptrtoint ptr %i2c19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c19, align 4
  %dev20 = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @helene_set_params_t.__UNIQUE_ID_ddebug301, ptr noundef %dev20, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.49) #8
  br label %cleanup

if.end24:                                         ; preds = %do.end
  %set_tuner = getelementptr inbounds %struct.helene_priv, ptr %18, i32 0, i32 5
  %25 = ptrtoint ptr %set_tuner to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_tuner, align 4
  %tobool25.not = icmp eq ptr %26, null
  br i1 %tobool25.not, label %if.end24.if.end29_crit_edge, label %if.then26

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %set_tuner_data = getelementptr inbounds %struct.helene_priv, ptr %18, i32 0, i32 4
  %27 = ptrtoint ptr %set_tuner_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_tuner_data, align 4
  %call28 = tail call i32 %26(ptr noundef %28, i32 noundef 1) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end24.if.end29_crit_edge
  %29 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dtv_property_cache, align 4
  %div32 = udiv i32 %30, 1000
  %add = add nuw nsw i32 %div32, 24
  %31 = urem i32 %add, 25
  %mul = sub nuw nsw i32 %add, %31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #8
  %32 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %tmp.i, align 1
  %call.i = call fastcc i32 @helene_write_regs(ptr noundef %18, i8 noundef zeroext 1, ptr noundef nonnull %tmp.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i340) #8
  %33 = ptrtoint ptr %tmp.i340 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %tmp.i340, align 1
  %call.i341 = call fastcc i32 @helene_write_regs(ptr noundef %18, i8 noundef zeroext 116, ptr noundef nonnull %tmp.i340, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i340) #8
  %state = getelementptr inbounds %struct.helene_priv, ptr %18, i32 0, i32 3
  %34 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp36 = icmp eq i32 %35, 1
  br i1 %cmp36, label %if.then37, label %if.end29.if.end39_crit_edge

if.end29.if.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then37:                                        ; preds = %if.end29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @helene_leave_power_save.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@helene_set_params_t, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !141

if.then.i:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %i2c.i = getelementptr inbounds %struct.helene_priv, ptr %18, i32 0, i32 2
  %36 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i2c.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %37, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @helene_leave_power_save.__UNIQUE_ID_ddebug293, ptr noundef %dev.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.34) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then37
  %38 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp.i = icmp eq i32 %39, 2
  br i1 %cmp.i, label %do.end.i.if.end39_crit_edge, label %if.end4.i

do.end.i.if.end39_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.end4.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #8
  %40 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -60, ptr %tmp.i.i, align 1
  %call.i.i = call fastcc i32 @helene_write_regs(ptr noundef %18, i8 noundef zeroext -121, ptr noundef nonnull %tmp.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i1.i) #8
  %41 = ptrtoint ptr %tmp.i1.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 64, ptr %tmp.i1.i, align 1
  %call.i2.i = call fastcc i32 @helene_write_regs(ptr noundef %18, i8 noundef zeroext -120, ptr noundef nonnull %tmp.i1.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i1.i) #8
  %42 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %state, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end4.i, %do.end.i.if.end39_crit_edge, %if.end29.if.end39_crit_edge
  %43 = add i32 %call4, -23
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %44 = icmp ult i32 %43, 2
  %storemerge317 = select i1 %44, i8 22, i8 16
  %storemerge = select i1 %44, i8 38, i8 32
  %45 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %storemerge317, ptr %data, align 1
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %storemerge, ptr %0, align 1
  %call47 = call fastcc i32 @helene_write_regs(ptr noundef %18, i8 noundef zeroext -111, ptr noundef nonnull %data, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %43)
  %47 = icmp ult i32 %43, 4
  %storemerge318 = select i1 %47, i8 0, i8 -112
  %48 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %storemerge318, ptr %data, align 1
  %arrayidx59 = getelementptr [28 x %struct.helene_terr_adjust_param_t], ptr @terr_params, i32 0, i32 %call4
  %IS_LOWERLOCAL = getelementptr [28 x %struct.helene_terr_adjust_param_t], ptr @terr_params, i32 0, i32 %call4, i32 12
  %49 = ptrtoint ptr %IS_LOWERLOCAL to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %IS_LOWERLOCAL, align 1
  %51 = and i8 %50, 1
  %52 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %0, align 1
  %call63 = call fastcc i32 @helene_write_regs(ptr noundef %18, i8 noundef zeroext -100, ptr noundef nonnull %data, i32 noundef 2)
  %53 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -18, ptr %data, align 1
  %54 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 2, ptr %0, align 1
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 30, ptr %1, align 1
  %56 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 103, ptr %2, align 1
  %storemerge319 = select i1 %44, i8 24, i8 3
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %storemerge319, ptr %3, align 1
  %switch.tableidx = add i32 %call4, -23
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %58 = icmp ult i32 %switch.tableidx, 4
  br i1 %58, label %switch.lookup, label %if.end39.if.end111_crit_edge

if.end39.if.end111_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

switch.lookup:                                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %switch.shiftamt = shl i32 %switch.tableidx, 3
  %switch.downshift = lshr i32 -1263264740, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %switch.shiftamt352 = shl i32 %switch.tableidx, 3
  %switch.downshift353 = lshr i32 808459292, %switch.shiftamt352
  %switch.masked354 = trunc i32 %switch.downshift353 to i8
  br label %if.end111

if.end111:                                        ; preds = %switch.lookup, %if.end39.if.end111_crit_edge
  %.sink349 = phi i8 [ 56, %if.end39.if.end111_crit_edge ], [ %switch.masked, %switch.lookup ]
  %.sink348 = phi i8 [ 30, %if.end39.if.end111_crit_edge ], [ 120, %switch.lookup ]
  %.sink347 = phi i8 [ 2, %if.end39.if.end111_crit_edge ], [ 8, %switch.lookup ]
  %.sink = phi i8 [ 36, %if.end39.if.end111_crit_edge ], [ %switch.masked354, %switch.lookup ]
  %59 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %.sink349, ptr %4, align 1
  %60 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %.sink348, ptr %5, align 1
  %61 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %.sink347, ptr %6, align 1
  %62 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %.sink, ptr %7, align 1
  %call113 = call fastcc i32 @helene_write_regs(ptr noundef %18, i8 noundef zeroext 94, ptr noundef nonnull %data, i32 noundef 9)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rdata.i) #8
  %63 = ptrtoint ptr %rdata.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -1, ptr %rdata.i, align 1, !annotation !140
  %call.i.i343 = call fastcc i32 @helene_read_regs(ptr noundef %18, i8 noundef zeroext 103, ptr noundef nonnull %rdata.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i343)
  %cmp2.not.i = icmp eq i32 %call.i.i343, 0
  br i1 %cmp2.not.i, label %if.end11.i, label %if.end111.helene_set_reg_bits.exit_crit_edge

if.end111.helene_set_reg_bits.exit_crit_edge:     ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %helene_set_reg_bits.exit

if.end11.i:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %rdata.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %rdata.i, align 1
  %66 = and i8 %65, -3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i342) #8
  %67 = ptrtoint ptr %tmp.i.i342 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %tmp.i.i342, align 1
  %call.i1.i = call fastcc i32 @helene_write_regs(ptr noundef %18, i8 noundef zeroext 103, ptr noundef nonnull %tmp.i.i342, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i342) #8
  br label %helene_set_reg_bits.exit

helene_set_reg_bits.exit:                         ; preds = %if.end11.i, %if.end111.helene_set_reg_bits.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rdata.i) #8
  %68 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %data, align 1
  %69 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx59, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %70)
  %cmp118 = icmp eq i8 %70, -1
  %shl = shl i8 %70, 4
  %and126 = and i8 %shl, 112
  %storemerge320 = select i1 %cmp118, i8 -128, i8 %and126
  %IF_BPF_GC = getelementptr [28 x %struct.helene_terr_adjust_param_t], ptr @terr_params, i32 0, i32 %call4, i32 1
  %71 = ptrtoint ptr %IF_BPF_GC to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %IF_BPF_GC, align 1
  %73 = and i8 %72, 15
  %or321 = or i8 %storemerge320, %73
  %74 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %or321, ptr %0, align 1
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 172001000, i32 %20)
  %cmp139 = icmp ult i32 %20, 172001000
  br i1 %cmp139, label %if.then141, label %if.else152

if.then141:                                       ; preds = %helene_set_reg_bits.exit
  call void @__sanitizer_cov_trace_pc() #10
  %RFOVLD_DET_LV1_VL = getelementptr [28 x %struct.helene_terr_adjust_param_t], ptr @terr_params, i32 0, i32 %call4, i32 2
  %76 = ptrtoint ptr %RFOVLD_DET_LV1_VL to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %RFOVLD_DET_LV1_VL, align 1
  %78 = and i8 %77, 15
  %79 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %2, align 1
  %IFOVLD_DET_LV_VL = getelementptr [28 x %struct.helene_terr_adjust_param_t], ptr @terr_params, i32 0, i32 %call4, i32 5
  br label %if.end178

if.else152:                                       ; preds = %helene_set_reg_bits.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 464001000, i32 %20)
  %cmp153 = icmp ult i32 %20, 464001000
  br i1 %cmp153, label %if.then155, label %if.else166

if.then155:                                       ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #10
  %RFOVLD_DET_LV1_VH = getelementptr [28 x %struct.helene_terr_adjust_param_t], ptr @terr_params, i32 0, i32 %call4, i32 3
  %80 = ptrtoint ptr %RFOVLD_DET_LV1_VH to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %RFOVLD_DET_LV1_VH, align 1
  %82 = and i8 %81, 15
  %83 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %2, align 1
  %IFOVLD_DET_LV_VH = getelementptr [28 x %struct.helene_terr_adjust_param_t], ptr @terr_params, i32 0, i32 %call4, i32 6
  br label %if.end178

if.else166:                                       ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #10
  %RFOVLD_DET_LV1_U = getelementptr [28 x %struct.helene_terr_adjust_param_t], ptr @terr_params, i32 0, i32 %call4, i32 4
  %84 = ptrtoint ptr %RFOVLD_DET_LV1_U to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %RFOVLD_DET_LV1_U, align 1
  %86 = and i8 %85, 15
  %87 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %2, align 1
  %IFOVLD_DET_LV_U = getelementptr [28 x %struct.helene_terr_adjust_param_t], ptr @terr_params, i32 0, i32 %call4, i32 7
  br label %if.end178

if.end178:                                        ; preds = %if.else166, %if.then155, %if.then141
  %IFOVLD_DET_LV_VH.sink = phi ptr [ %IFOVLD_DET_LV_VH, %if.then155 ], [ %IFOVLD_DET_LV_U, %if.else166 ], [ %IFOVLD_DET_LV_VL, %if.then141 ]
  %88 = ptrtoint ptr %IFOVLD_DET_LV_VH.sink to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %IFOVLD_DET_LV_VH.sink, align 1
  %90 = and i8 %89, 7
  %91 = or i8 %90, 32
  %92 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %3, align 1
  %IF_BPF_F0 = getelementptr [28 x %struct.helene_terr_adjust_param_t], ptr @terr_params, i32 0, i32 %call4, i32 8
  %93 = ptrtoint ptr %IF_BPF_F0 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %IF_BPF_F0, align 1
  %shl185 = shl i8 %94, 4
  %and186 = and i8 %shl185, 48
  %BW = getelementptr [28 x %struct.helene_terr_adjust_param_t], ptr @terr_params, i32 0, i32 %call4, i32 9
  %95 = ptrtoint ptr %BW to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %BW, align 1
  %97 = and i8 %96, 3
  %or196322 = or i8 %97, %and186
  %98 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %or196322, ptr %4, align 1
  %FIF_OFFSET = getelementptr [28 x %struct.helene_terr_adjust_param_t], ptr @terr_params, i32 0, i32 %call4, i32 10
  %99 = ptrtoint ptr %FIF_OFFSET to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %FIF_OFFSET, align 1
  %101 = and i8 %100, 31
  %102 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %5, align 1
  %BW_OFFSET = getelementptr [28 x %struct.helene_terr_adjust_param_t], ptr @terr_params, i32 0, i32 %call4, i32 11
  %103 = ptrtoint ptr %BW_OFFSET to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %BW_OFFSET, align 1
  %105 = and i8 %104, 31
  %106 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %6, align 1
  %conv209 = trunc i32 %div to i8
  %107 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv209, ptr %7, align 1
  %108 = lshr i32 %div, 8
  %conv212 = trunc i32 %108 to i8
  %109 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv212, ptr %8, align 1
  %110 = lshr i32 %div, 16
  %111 = trunc i32 %110 to i8
  %conv216 = and i8 %111, 15
  %112 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv216, ptr %9, align 1
  %113 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -1, ptr %10, align 1
  %114 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %11, align 1
  %storemerge324 = select i1 %44, i8 -39, i8 -103
  %storemerge323 = select i1 %44, i8 15, i8 0
  %115 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %storemerge324, ptr %12, align 1
  %116 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %storemerge323, ptr %13, align 1
  %117 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 36, ptr %14, align 1
  %118 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 -121, ptr %15, align 1
  %call237 = call fastcc i32 @helene_write_regs(ptr noundef %18, i8 noundef zeroext 104, ptr noundef nonnull %data, i32 noundef 17)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @helene_set_params_t.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@helene_set_params_t, %if.then250)) #8
          to label %do.end255 [label %if.then250], !srcloc !141

if.then250:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #10
  %i2c251 = getelementptr inbounds %struct.helene_priv, ptr %18, i32 0, i32 2
  %119 = ptrtoint ptr %i2c251 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %i2c251, align 4
  %dev252 = getelementptr inbounds %struct.i2c_adapter, ptr %120, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @helene_set_params_t.__UNIQUE_ID_ddebug302, ptr noundef %dev252, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.49) #8
  br label %do.end255

do.end255:                                        ; preds = %if.then250, %if.end178
  %121 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %mul, ptr %18, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end255, %if.then18, %do.body6
  %retval.0 = phi i32 [ 0, %do.end255 ], [ -22, %if.then18 ], [ -22, %do.body6 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @helene_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %fe1 = getelementptr inbounds %struct.helene_config, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %fe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fe1, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr, align 2
  %conv = trunc i16 %5 to i8
  %i2c_address = getelementptr inbounds %struct.helene_priv, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %i2c_address to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %i2c_address, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %i2c = getelementptr inbounds %struct.helene_priv, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %i2c, align 4
  %set_tuner_priv = getelementptr inbounds %struct.helene_config, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %set_tuner_priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_tuner_priv, align 4
  %set_tuner_data = getelementptr inbounds %struct.helene_priv, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %set_tuner_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %set_tuner_data, align 4
  %set_tuner_callback = getelementptr inbounds %struct.helene_config, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %set_tuner_callback to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_tuner_callback, align 4
  %set_tuner = getelementptr inbounds %struct.helene_priv, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %set_tuner to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %set_tuner, align 4
  %xtal = getelementptr inbounds %struct.helene_config, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %xtal to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xtal, align 4
  %xtal4 = getelementptr inbounds %struct.helene_priv, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %xtal4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %xtal4, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 1, i32 28
  %19 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool5.not = icmp eq ptr %20, null
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 %20(ptr noundef %3, i32 noundef 1) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end.if.end10_crit_edge
  %call11 = tail call fastcc i32 @helene_x_pon(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp.not = icmp eq i32 %call11, 0
  br i1 %cmp.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %21 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool17.not = icmp eq ptr %22, null
  br i1 %tobool17.not, label %if.end14.if.end22_crit_edge, label %if.then18

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = tail call i32 %22(ptr noundef %3, i32 noundef 0) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end14.if.end22_crit_edge
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 1, i32 32
  %23 = call ptr @memcpy(ptr %tuner_ops, ptr @helene_tuner_ops, i32 220)
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 4
  %24 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %tuner_priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %26 = ptrtoint ptr %i2c_address to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %i2c_address, align 4
  %conv25 = zext i8 %27 to i32
  %28 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %conv25, ptr noundef %29) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @helene_set_params(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %0 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delivery_system, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %1, label %if.end [
    i32 3, label %entry.if.then_crit_edge
    i32 16, label %entry.if.then_crit_edge15
    i32 8, label %entry.if.then_crit_edge16
    i32 1, label %entry.if.then_crit_edge17
  ]

entry.if.then_crit_edge17:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge16:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge15:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge15, %entry.if.then_crit_edge16, %entry.if.then_crit_edge17
  %call = tail call i32 @helene_set_params_t(ptr noundef %fe)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 @helene_set_params_s(ptr noundef %fe)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call9, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !19, !20, !22, !24, !26, !27, !29, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !106, !107, !108, !110, !112, !113, !114, !116, !118, !120, !122, !124, !125, !126, !127, !129}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/helene.c", i32 1023, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @helene_attach_s._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @helene_attach_s._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_helene_attach_s, !9, !"__ksymtab_helene_attach_s", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/helene.c", i32 1028, i32 1}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/helene.c", i32 1059, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @helene_attach._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @helene_attach._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__ksymtab_helene_attach, !16, !"__ksymtab_helene_attach", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/helene.c", i32 1064, i32 1}
!17 = !{ptr @__initcall__kmod_helene__303_1117_helene_driver_init6, !18, !"__initcall__kmod_helene__303_1117_helene_driver_init6", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/helene.c", i32 1117, i32 1}
!19 = !{ptr @__exitcall_helene_driver_exit, !18, !"__exitcall_helene_driver_exit", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_description304, !21, !"__UNIQUE_ID_description304", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/helene.c", i32 1119, i32 1}
!22 = !{ptr @__UNIQUE_ID_author305, !23, !"__UNIQUE_ID_author305", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/helene.c", i32 1120, i32 1}
!24 = !{ptr @__UNIQUE_ID_file306, !25, !"__UNIQUE_ID_file306", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/helene.c", i32 1121, i32 1}
!26 = !{ptr @__UNIQUE_ID_license307, !25, !"__UNIQUE_ID_license307", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/helene.c", i32 958, i32 3}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @helene_x_pon._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @helene_x_pon._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-frontends/helene.c", i32 988, i32 2}
!35 = !{ptr @helene_x_pon._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @helene_x_pon._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-frontends/helene.c", i32 302, i32 3}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @helene_write_regs._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @helene_write_regs._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/dvb-frontends/helene.c", i32 315, i32 3}
!45 = !{ptr @helene_write_regs._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @helene_write_regs._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/helene.c", i32 281, i32 2}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @helene_i2c_debug.__UNIQUE_ID_ddebug290, !49, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!52 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/helene.c", i32 283, i32 2}
!56 = !{ptr @helene_i2c_debug.__UNIQUE_ID_ddebug291, !55, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!57 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/helene.c", i32 352, i32 3}
!60 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @helene_read_regs._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @helene_read_regs._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/dvb-frontends/helene.c", i32 361, i32 3}
!65 = !{ptr @helene_read_regs._entry.28, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @helene_read_regs._entry_ptr.30, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @helene_tuner_ops_s, !68, !"helene_tuner_ops_s", i1 false, i1 false}
!68 = !{!"../drivers/media/dvb-frontends/helene.c", i32 864, i32 35}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/dvb-frontends/helene.c", i32 434, i32 2}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @helene_release.__UNIQUE_ID_ddebug295, !70, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/dvb-frontends/helene.c", i32 426, i32 2}
!75 = !{ptr @helene_init.__UNIQUE_ID_ddebug294, !74, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/dvb-frontends/helene.c", i32 408, i32 2}
!78 = !{ptr @helene_leave_power_save.__UNIQUE_ID_ddebug293, !77, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/dvb-frontends/helene.c", i32 443, i32 2}
!81 = !{ptr @helene_sleep.__UNIQUE_ID_ddebug296, !80, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/dvb-frontends/helene.c", i32 392, i32 2}
!84 = !{ptr @helene_enter_power_save.__UNIQUE_ID_ddebug292, !83, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/dvb-frontends/helene.c", i32 521, i32 2}
!87 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @helene_set_params_s.__UNIQUE_ID_ddebug298, !86, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/dvb-frontends/helene.c", i32 526, i32 3}
!91 = !{ptr @helene_set_params_s._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @helene_set_params_s._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/dvb-frontends/helene.c", i32 572, i32 3}
!95 = !{ptr @helene_set_params_s._entry.40, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @helene_set_params_s._entry_ptr.42, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/dvb-frontends/helene.c", i32 630, i32 3}
!99 = !{ptr @helene_set_params_s._entry.43, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @helene_set_params_s._entry_ptr.45, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/dvb-frontends/helene.c", i32 653, i32 2}
!103 = !{ptr @helene_set_params_s.__UNIQUE_ID_ddebug299, !102, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/dvb-frontends/helene.c", i32 503, i32 2}
!106 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @helene_get_tv_system.__UNIQUE_ID_ddebug297, !105, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!108 = !{ptr @helene_tuner_ops_t, !109, !"helene_tuner_ops_t", i1 false, i1 false}
!109 = !{!"../drivers/media/dvb-frontends/helene.c", i32 850, i32 35}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/dvb-frontends/helene.c", i32 669, i32 2}
!112 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @helene_set_params_t.__UNIQUE_ID_ddebug300, !111, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!114 = !{ptr @helene_set_params_t.__UNIQUE_ID_ddebug301, !115, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!115 = !{!"../drivers/media/dvb-frontends/helene.c", i32 674, i32 3}
!116 = !{ptr @helene_set_params_t.__UNIQUE_ID_ddebug302, !117, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!117 = !{!"../drivers/media/dvb-frontends/helene.c", i32 822, i32 2}
!118 = !{ptr @terr_params, !119, !"terr_params", i1 false, i1 false}
!119 = !{!"../drivers/media/dvb-frontends/helene.c", i32 189, i32 1}
!120 = !{ptr @helene_driver, !121, !"helene_driver", i1 false, i1 false}
!121 = !{!"../drivers/media/dvb-frontends/helene.c", i32 1110, i32 26}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/dvb-frontends/helene.c", i32 1098, i32 2}
!124 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @helene_probe._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @helene_probe._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @helene_tuner_ops, !128, !"helene_tuner_ops", i1 false, i1 false}
!128 = !{!"../drivers/media/dvb-frontends/helene.c", i32 878, i32 35}
!129 = !{ptr @helene_id, !130, !"helene_id", i1 false, i1 false}
!130 = !{!"../drivers/media/dvb-frontends/helene.c", i32 1104, i32 35}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{!"auto-init"}
!141 = !{i64 2148231487, i64 2148231492, i64 2148231505, i64 2148231549, i64 2148231583, i64 2148231604}
