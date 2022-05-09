; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/horus3a.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/horus3a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+horus3a_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_horus3a_attach\09\09\09\09"
module asm "\09.long\09__crc_horus3a_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_horus3a_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22horus3a_attach\22\09\09\09\09\09"
module asm "__kstrtabns_horus3a_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.horus3a_priv = type { i32, i8, ptr, i32, ptr, ptr }
%struct.horus3a_config = type { i8, i8, ptr, ptr }
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

@horus3a_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 379, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"horus3a: invalid xtal frequency %dMHz\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"horus3a_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/horus3a.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@horus3a_attach._entry_ptr = internal global ptr @horus3a_attach._entry, section ".printk_index", align 4
@horus3a_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Sony Horus3a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1000000, i32 0, i32 0, i32 0 }, ptr @horus3a_release, ptr @horus3a_init, ptr @horus3a_sleep, ptr null, ptr null, ptr @horus3a_set_params, ptr null, ptr null, ptr @horus3a_get_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@horus3a_attach._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 395, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Sony HORUS3A attached on addr=%x at I2C adapter %p\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@horus3a_attach._entry_ptr.8 = internal global ptr @horus3a_attach._entry.5, section ".printk_index", align 4
@__kstrtab_horus3a_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_horus3a_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_horus3a_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @horus3a_attach to i32), ptr @__kstrtab_horus3a_attach, ptr @__kstrtabns_horus3a_attach }, section "___ksymtab+horus3a_attach", align 4
@__UNIQUE_ID_description298 = internal constant [56 x i8] c"horus3a.description=Sony HORUS3A satellite tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [46 x i8] c"horus3a.author=Sergey Kozlov <serjk@netup.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [49 x i8] c"horus3a.file=drivers/media/dvb-frontends/horus3a\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [20 x i8] c"horus3a.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@horus3a_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 62, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wr reg=%04x: len=%d is too big!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"horus3a_write_regs\00", [45 x i8] zeroinitializer }, align 32
@horus3a_write_regs._entry_ptr = internal global ptr @horus3a_write_regs._entry, section ".printk_index", align 4
@horus3a_write_regs._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 75, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: i2c wr failed=%d reg=%02x len=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@horus3a_write_regs._entry_ptr.13 = internal global ptr @horus3a_write_regs._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"horus3a\00", [24 x i8] zeroinitializer }, align 32
@horus3a_i2c_debug.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"horus3a_i2c_debug\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"horus3a: I2C %s reg 0x%02x size %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@horus3a_i2c_debug.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.2, ptr @.str.19, i8 0, i8 10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"horus3a: I2C data: \00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@horus3a_enter_power_save.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"horus3a_enter_power_save\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@horus3a_release.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.23, ptr @.str.2, ptr @.str.22, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"horus3a_release\00", [16 x i8] zeroinitializer }, align 32
@horus3a_init.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.24, ptr @.str.2, ptr @.str.22, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"horus3a_init\00", [19 x i8] zeroinitializer }, align 32
@horus3a_sleep.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.25, ptr @.str.2, ptr @.str.22, i8 0, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"horus3a_sleep\00", [18 x i8] zeroinitializer }, align 32
@horus3a_set_params.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"horus3a_set_params\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s(): frequency %dkHz symbol_rate %dksps\0A\00", [54 x i8] zeroinitializer }, align 32
@horus3a_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 199, ptr @.str.29, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"horus3a: invalid frequency %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@horus3a_set_params._entry_ptr = internal global ptr @horus3a_set_params._entry, section ".printk_index", align 4
@horus3a_set_params._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.2, i32 288, ptr @.str.29, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"horus3a: invalid delivery system %d\0A\00", [59 x i8] zeroinitializer }, align 32
@horus3a_set_params._entry_ptr.32 = internal global ptr @horus3a_set_params._entry.30, section ".printk_index", align 4
@horus3a_leave_power_save.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.33, ptr @.str.2, ptr @.str.22, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"horus3a_leave_power_save\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 16, i64 24, i64 27]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 377, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"horus3a_tuner_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 321, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 393, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 61, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 73, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 40, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 42, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 92, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 151, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 143, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 160, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 179, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 198, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 286, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [41 x i8] c"../drivers/media/dvb-frontends/horus3a.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 119, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__ksymtab_horus3a_attach, ptr @horus3a_attach._entry, ptr @horus3a_attach._entry.5, ptr @horus3a_attach._entry_ptr, ptr @horus3a_attach._entry_ptr.8, ptr @horus3a_set_params._entry, ptr @horus3a_set_params._entry.30, ptr @horus3a_set_params._entry_ptr, ptr @horus3a_set_params._entry_ptr.32, ptr @horus3a_write_regs._entry, ptr @horus3a_write_regs._entry.11, ptr @horus3a_write_regs._entry_ptr, ptr @horus3a_write_regs._entry_ptr.13, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @horus3a_tuner_ops, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @horus3a_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @horus3a_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @horus3a_attach._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @horus3a_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @horus3a_write_regs._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @horus3a_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @horus3a_set_params._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @horus3a_attach(ptr noundef %fe, ptr nocapture noundef readonly %config, ptr noundef %i2c) #0 align 64 {
entry:
  %tmp.i76 = alloca i8, align 1
  %tmp.i75 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #7
  %0 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 24) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %config, align 4
  %5 = lshr i8 %4, 1
  %i2c_address2 = getelementptr inbounds %struct.horus3a_priv, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %i2c_address2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %i2c_address2, align 4
  %i2c3 = getelementptr inbounds %struct.horus3a_priv, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %i2c3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %i2c, ptr %i2c3, align 8
  %set_tuner_priv = getelementptr inbounds %struct.horus3a_config, ptr %config, i32 0, i32 2
  %8 = ptrtoint ptr %set_tuner_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_tuner_priv, align 4
  %set_tuner_data = getelementptr inbounds %struct.horus3a_priv, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %set_tuner_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %set_tuner_data, align 8
  %set_tuner_callback = getelementptr inbounds %struct.horus3a_config, ptr %config, i32 0, i32 3
  %11 = ptrtoint ptr %set_tuner_callback to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_tuner_callback, align 4
  %set_tuner = getelementptr inbounds %struct.horus3a_priv, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %set_tuner to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %set_tuner, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %14 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 %15(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  tail call void @usleep_range_state(i32 noundef 4000, i32 noundef 6000, i32 noundef 2) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %16 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 121, ptr %tmp.i, align 1
  call fastcc void @horus3a_write_regs(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 42, ptr noundef nonnull %tmp.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  %xtal_freq_mhz = getelementptr inbounds %struct.horus3a_config, ptr %config, i32 0, i32 1
  %17 = ptrtoint ptr %xtal_freq_mhz to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %xtal_freq_mhz, align 1
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %buf, align 1
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %18, ptr %0, align 1
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %1, align 1
  call fastcc void @horus3a_write_regs(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 6, ptr noundef nonnull %buf, i32 noundef 3)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i75) #7
  %22 = ptrtoint ptr %tmp.i75 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 64, ptr %tmp.i75, align 1
  call fastcc void @horus3a_write_regs(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 10, ptr noundef nonnull %tmp.i75, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i75) #7
  %23 = ptrtoint ptr %xtal_freq_mhz to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %xtal_freq_mhz, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i8 %24, label %sw.default [
    i8 27, label %if.end8.sw.epilog_crit_edge
    i8 24, label %sw.bb17
    i8 16, label %sw.bb18
  ]

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %conv16 = zext i8 %24 to i32
  %26 = ptrtoint ptr %i2c3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c3, align 8
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %27, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %conv16) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb18, %sw.bb17, %if.end8.sw.epilog_crit_edge
  %val.0 = phi i8 [ 0, %sw.default ], [ 48, %sw.bb18 ], [ 64, %sw.bb17 ], [ 124, %if.end8.sw.epilog_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i76) #7
  %28 = ptrtoint ptr %tmp.i76 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %val.0, ptr %tmp.i76, align 1
  call fastcc void @horus3a_write_regs(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 14, ptr noundef nonnull %tmp.i76, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i76) #7
  call fastcc void @horus3a_enter_power_save(ptr noundef nonnull %call7.i.i)
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #7
  %29 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool28.not = icmp eq ptr %30, null
  br i1 %tobool28.not, label %sw.epilog.if.end33_crit_edge, label %if.then29

sw.epilog.if.end33_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then29:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = call i32 %30(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %sw.epilog.if.end33_crit_edge
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %31 = call ptr @memcpy(ptr %tuner_ops, ptr @horus3a_tuner_ops, i32 220)
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %32 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %33 = ptrtoint ptr %i2c3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c3, align 8
  %dev39 = getelementptr inbounds %struct.i2c_adapter, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %i2c_address2 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %i2c_address2, align 4
  %conv41 = zext i8 %36 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev39, ptr noundef nonnull @.str.6, i32 noundef %conv41, ptr noundef %34) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %fe, %if.end33 ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #7
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @horus3a_write_regs(ptr nocapture noundef readonly %priv, i8 noundef zeroext %reg, ptr noundef %data, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [6 x i8], align 1
  %msg = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #7
  %0 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 1
  %1 = call ptr @memset(ptr %buf, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %i2c_address = getelementptr inbounds %struct.horus3a_priv, ptr %priv, i32 0, i32 1
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @horus3a_i2c_debug.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@horus3a_write_regs, %if.then.i)) #7
          to label %do.body5.i [label %if.then.i], !srcloc !82

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i2c.i = getelementptr inbounds %struct.horus3a_priv, ptr %priv, i32 0, i32 2
  %11 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 9
  %conv4.i = zext i8 %reg to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @horus3a_i2c_debug.__UNIQUE_ID_ddebug290, ptr noundef %dev.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i32 noundef %conv4.i, i32 noundef %len) #7
  br label %do.body5.i

do.body5.i:                                       ; preds = %if.then.i, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @horus3a_i2c_debug.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@horus3a_write_regs, %if.then17.i)) #7
          to label %horus3a_i2c_debug.exit [label %if.then17.i], !srcloc !82

if.then17.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @print_hex_dump(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %data, i32 noundef %len, i1 noundef zeroext true) #7
  br label %horus3a_i2c_debug.exit

horus3a_i2c_debug.exit:                           ; preds = %if.then17.i, %do.body5.i
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %reg, ptr %buf, align 1
  %14 = call ptr @memcpy(ptr %0, ptr %data, i32 %len)
  %i2c9 = getelementptr inbounds %struct.horus3a_priv, ptr %priv, i32 0, i32 2
  %15 = ptrtoint ptr %i2c9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c9, align 4
  %call = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp13.not = icmp eq i32 %call, 1
  %spec.store.select = select i1 %cmp13.not, i32 1, i32 -121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp111 = icmp slt i32 %call, 0
  %ret.0 = select i1 %cmp111, i32 %call, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp17 = icmp slt i32 %ret.0, 0
  br i1 %cmp17, label %do.end22, label %horus3a_i2c_debug.exit.cleanup_crit_edge

horus3a_i2c_debug.exit.cleanup_crit_edge:         ; preds = %horus3a_i2c_debug.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end22:                                         ; preds = %horus3a_i2c_debug.exit
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %i2c9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c9, align 4
  %dev24 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 9
  %conv25 = zext i8 %reg to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev24, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.14, i32 noundef %ret.0, i32 noundef %conv25, i32 noundef %len) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %horus3a_i2c_debug.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @horus3a_enter_power_save(ptr nocapture noundef %priv) unnamed_addr #0 align 64 {
entry:
  %tmp.i4 = alloca i8, align 1
  %tmp.i3 = alloca i8, align 1
  %tmp.i2 = alloca i8, align 1
  %tmp.i1 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #7
  %0 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @horus3a_enter_power_save.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@horus3a_enter_power_save, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !82

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i2c = getelementptr inbounds %struct.horus3a_priv, ptr %priv, i32 0, i32 2
  %1 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @horus3a_enter_power_save.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.horus3a_priv, ptr %priv, i32 0, i32 3
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end4

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 121, ptr %tmp.i, align 1
  call fastcc void @horus3a_write_regs(ptr noundef %priv, i8 noundef zeroext 42, ptr noundef nonnull %tmp.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i1) #7
  %6 = ptrtoint ptr %tmp.i1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 112, ptr %tmp.i1, align 1
  call fastcc void @horus3a_write_regs(ptr noundef %priv, i8 noundef zeroext 41, ptr noundef nonnull %tmp.i1, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i1) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i2) #7
  %7 = ptrtoint ptr %tmp.i2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 62, ptr %tmp.i2, align 1
  call fastcc void @horus3a_write_regs(ptr noundef %priv, i8 noundef zeroext 40, ptr noundef nonnull %tmp.i2, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i2) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i3) #7
  %8 = ptrtoint ptr %tmp.i3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 25, ptr %tmp.i3, align 1
  call fastcc void @horus3a_write_regs(ptr noundef %priv, i8 noundef zeroext 42, ptr noundef nonnull %tmp.i3, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i3) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i4) #7
  %9 = ptrtoint ptr %tmp.i4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %tmp.i4, align 1
  call fastcc void @horus3a_write_regs(ptr noundef %priv, i8 noundef zeroext 28, ptr noundef nonnull %tmp.i4, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i4) #7
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -64, ptr %data, align 1
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -89, ptr %0, align 1
  call fastcc void @horus3a_write_regs(ptr noundef %priv, i8 noundef zeroext 17, ptr noundef nonnull %data, i32 noundef 2)
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @horus3a_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @horus3a_release.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@horus3a_release, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !82

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i2c = getelementptr inbounds %struct.horus3a_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @horus3a_release.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %5) #7
  %6 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @horus3a_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @horus3a_init.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@horus3a_init, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !82

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i2c = getelementptr inbounds %struct.horus3a_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @horus3a_init.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.24) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @horus3a_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @horus3a_sleep.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@horus3a_sleep, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !82

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i2c = getelementptr inbounds %struct.horus3a_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @horus3a_sleep.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.25) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @horus3a_enter_power_save(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @horus3a_set_params(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %tmp.i242 = alloca i8, align 1
  %tmp.i241 = alloca i8, align 1
  %tmp.i240 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %data = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dtv_property_cache, align 4
  %symbol_rate2 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %4 = ptrtoint ptr %symbol_rate2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %symbol_rate2, align 4
  %div = udiv i32 %5, 1000
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %data) #7
  %6 = getelementptr inbounds [5 x i8], ptr %data, i32 0, i32 1
  %7 = getelementptr inbounds [5 x i8], ptr %data, i32 0, i32 2
  %8 = getelementptr inbounds [5 x i8], ptr %data, i32 0, i32 3
  %9 = getelementptr inbounds [5 x i8], ptr %data, i32 0, i32 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @horus3a_set_params.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@horus3a_set_params, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !82

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i2c = getelementptr inbounds %struct.horus3a_priv, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @horus3a_set_params.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i32 noundef %3, i32 noundef %div) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %set_tuner = getelementptr inbounds %struct.horus3a_priv, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %set_tuner to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_tuner, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %do.end.if.end9_crit_edge, label %if.then6

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %set_tuner_data = getelementptr inbounds %struct.horus3a_priv, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %set_tuner_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_tuner_data, align 4
  %call8 = tail call i32 %13(ptr noundef %15, i32 noundef 0) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %do.end.if.end9_crit_edge
  %state = getelementptr inbounds %struct.horus3a_priv, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp = icmp eq i32 %17, 1
  br i1 %cmp, label %if.then10, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @horus3a_leave_power_save(ptr noundef %1)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end9.if.end12_crit_edge
  %add = add i32 %3, 500
  %18 = urem i32 %add, 1000
  %mul = sub i32 %add, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1155001, i32 %mul)
  %cmp16 = icmp ult i32 %mul, 1155001
  %. = select i1 %cmp16, i8 -128, i8 0
  %.237 = select i1 %cmp16, i32 4, i32 2
  %mul20 = mul i32 %.237, %mul
  %div21236 = lshr exact i32 %mul20, 1
  %add25 = add nuw i32 %div21236, 500
  %div26 = udiv i32 %add25, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534998, i32 %mul20)
  %cmp27 = icmp ugt i32 %mul20, 65534998
  br i1 %cmp27, label %do.end32, label %if.end35

do.end32:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %i2c33 = getelementptr inbounds %struct.horus3a_priv, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %i2c33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c33, align 4
  %dev34 = getelementptr inbounds %struct.i2c_adapter, ptr %20, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.28, i32 noundef %mul) #11
  br label %cleanup

if.end35:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 975000, i32 %mul)
  %cmp36 = icmp ult i32 %mul, 975000
  br i1 %cmp36, label %if.end35.if.end80_crit_edge, label %if.else39

if.end35.if.end80_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.else39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 1050000, i32 %mul)
  %cmp40 = icmp ult i32 %mul, 1050000
  br i1 %cmp40, label %if.else39.if.end80_crit_edge, label %if.else43

if.else39.if.end80_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.else43:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_const_cmp4(i32 1150000, i32 %mul)
  %cmp44 = icmp ult i32 %mul, 1150000
  br i1 %cmp44, label %if.else43.if.end80_crit_edge, label %if.else47

if.else43.if.end80_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.else47:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_const_cmp4(i32 1250000, i32 %mul)
  %cmp48 = icmp ult i32 %mul, 1250000
  br i1 %cmp48, label %if.else47.if.end80_crit_edge, label %if.else51

if.else47.if.end80_crit_edge:                     ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.else51:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_const_cmp4(i32 1350000, i32 %mul)
  %cmp52 = icmp ult i32 %mul, 1350000
  br i1 %cmp52, label %if.else51.if.end80_crit_edge, label %if.else55

if.else51.if.end80_crit_edge:                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.else55:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_const_cmp4(i32 1450000, i32 %mul)
  %cmp56 = icmp ult i32 %mul, 1450000
  br i1 %cmp56, label %if.else55.if.end80_crit_edge, label %if.else59

if.else55.if.end80_crit_edge:                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.else59:                                        ; preds = %if.else55
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600000, i32 %mul)
  %cmp60 = icmp ult i32 %mul, 1600000
  br i1 %cmp60, label %if.else59.if.end80_crit_edge, label %if.else63

if.else59.if.end80_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.else63:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_const_cmp4(i32 1800000, i32 %mul)
  %cmp64 = icmp ult i32 %mul, 1800000
  br i1 %cmp64, label %if.else63.if.end80_crit_edge, label %if.else67

if.else63.if.end80_crit_edge:                     ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.else67:                                        ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %mul)
  %cmp68 = icmp ult i32 %mul, 2000000
  %.238 = select i1 %cmp68, i8 2, i8 0
  %.239 = select i1 %cmp68, i8 32, i8 0
  br label %if.end80

if.end80:                                         ; preds = %if.else67, %if.else63.if.end80_crit_edge, %if.else59.if.end80_crit_edge, %if.else55.if.end80_crit_edge, %if.else51.if.end80_crit_edge, %if.else47.if.end80_crit_edge, %if.else43.if.end80_crit_edge, %if.else39.if.end80_crit_edge, %if.end35.if.end80_crit_edge
  %f_ctl.0 = phi i8 [ 28, %if.end35.if.end80_crit_edge ], [ 24, %if.else39.if.end80_crit_edge ], [ 20, %if.else43.if.end80_crit_edge ], [ 16, %if.else47.if.end80_crit_edge ], [ 12, %if.else51.if.end80_crit_edge ], [ 10, %if.else55.if.end80_crit_edge ], [ 7, %if.else59.if.end80_crit_edge ], [ 4, %if.else63.if.end80_crit_edge ], [ %.238, %if.else67 ]
  %g_ctl.0 = phi i8 [ 32, %if.end35.if.end80_crit_edge ], [ 64, %if.else39.if.end80_crit_edge ], [ 64, %if.else43.if.end80_crit_edge ], [ 96, %if.else47.if.end80_crit_edge ], [ -128, %if.else51.if.end80_crit_edge ], [ -128, %if.else55.if.end80_crit_edge ], [ -96, %if.else59.if.end80_crit_edge ], [ 64, %if.else63.if.end80_crit_edge ], [ %.239, %if.else67 ]
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %21 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %delivery_system, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %22, label %do.end143 [
    i32 5, label %if.then83
    i32 6, label %if.then115
  ]

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_const_cmp4(i32 4301000, i32 %5)
  %cmp84 = icmp ult i32 %5, 4301000
  br i1 %cmp84, label %if.then83.if.end148_crit_edge, label %if.else87

if.then83.if.end148_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148

if.else87:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_const_cmp4(i32 10001000, i32 %5)
  %cmp88 = icmp ult i32 %5, 10001000
  br i1 %cmp88, label %if.then90, label %if.else95

if.then90:                                        ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #9
  %mul91 = mul nuw nsw i32 %div, 47
  %sub = add nuw nsw i32 %mul91, 39999
  %div93 = udiv i32 %sub, 40000
  %conv94 = trunc i32 %div93 to i8
  br label %if.end148

if.else95:                                        ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #9
  %mul96 = mul nuw nsw i32 %div, 27
  %sub98 = add nuw nsw i32 %mul96, 39999
  %div99 = udiv i32 %sub98, 40000
  %24 = trunc i32 %div99 to i8
  %conv103 = add i8 %24, 5
  br label %if.end148

if.then115:                                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_const_cmp4(i32 4501000, i32 %5)
  %cmp116 = icmp ult i32 %5, 4501000
  br i1 %cmp116, label %if.then115.if.end148_crit_edge, label %if.else119

if.then115.if.end148_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148

if.else119:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_const_cmp4(i32 10001000, i32 %5)
  %cmp120 = icmp ult i32 %5, 10001000
  br i1 %cmp120, label %if.then122, label %if.else127

if.then122:                                       ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #9
  %mul123 = mul nuw nsw i32 %div, 11
  %add124 = add nuw nsw i32 %mul123, 9999
  %div125 = udiv i32 %add124, 10000
  %conv126 = trunc i32 %div125 to i8
  br label %if.end148

if.else127:                                       ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #9
  %mul128 = mul nuw nsw i32 %div, 3
  %add129 = add nuw nsw i32 %mul128, 4999
  %div130 = udiv i32 %add129, 5000
  %25 = trunc i32 %div130 to i8
  %conv132 = add i8 %25, 5
  br label %if.end148

do.end143:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  %i2c144 = getelementptr inbounds %struct.horus3a_priv, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %i2c144 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c144, align 4
  %dev145 = getelementptr inbounds %struct.i2c_adapter, ptr %27, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev145, ptr noundef nonnull @.str.31, i32 noundef %22) #11
  br label %cleanup

if.end148:                                        ; preds = %if.else127, %if.then122, %if.then115.if.end148_crit_edge, %if.else95, %if.then90, %if.then83.if.end148_crit_edge
  %fc_lpf.1.sink = phi i8 [ %conv94, %if.then90 ], [ %conv103, %if.else95 ], [ 5, %if.then83.if.end148_crit_edge ], [ %conv126, %if.then122 ], [ %conv132, %if.else127 ], [ 5, %if.then115.if.end148_crit_edge ]
  %28 = tail call i8 @llvm.umin.i8(i8 %fc_lpf.1.sink, i8 36)
  %shr = lshr i32 %div26, 7
  %conv149 = trunc i32 %shr to i8
  %29 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv149, ptr %data, align 1
  %div26.tr = trunc i32 %div26 to i8
  %conv151 = shl i8 %div26.tr, 1
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv151, ptr %6, align 1
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %7, align 1
  %32 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %8, align 1
  %33 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %., ptr %9, align 1
  call fastcc void @horus3a_write_regs(ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %data, i32 noundef 5)
  %or = or i8 %g_ctl.0, %f_ctl.0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %34 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %or, ptr %tmp.i, align 1
  call fastcc void @horus3a_write_regs(ptr noundef %1, i8 noundef zeroext 9, ptr noundef nonnull %tmp.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  %shl166 = shl nuw nsw i8 %28, 1
  %or167 = or i8 %shl166, -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i240) #7
  %35 = ptrtoint ptr %tmp.i240 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %or167, ptr %tmp.i240, align 1
  call fastcc void @horus3a_write_regs(ptr noundef %1, i8 noundef zeroext 55, ptr noundef nonnull %tmp.i240, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i240) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i241) #7
  %36 = ptrtoint ptr %tmp.i241 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -128, ptr %tmp.i241, align 1
  call fastcc void @horus3a_write_regs(ptr noundef %1, i8 noundef zeroext 5, ptr noundef nonnull %tmp.i241, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i241) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i242) #7
  %37 = ptrtoint ptr %tmp.i242 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 123, ptr %tmp.i242, align 1
  call fastcc void @horus3a_write_regs(ptr noundef %1, i8 noundef zeroext 42, ptr noundef nonnull %tmp.i242, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i242) #7
  call void @msleep(i32 noundef 60) #7
  %mul173 = mul i32 %div26, 2000
  %38 = select i1 %cmp16, i32 2, i32 1
  %div175244 = lshr i32 %mul173, %38
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div175244, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end148, %do.end143, %do.end32
  %retval.0 = phi i32 [ -22, %do.end32 ], [ 0, %if.end148 ], [ -22, %do.end143 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @horus3a_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @horus3a_leave_power_save(ptr nocapture noundef %priv) unnamed_addr #0 align 64 {
entry:
  %tmp.i2 = alloca i8, align 1
  %tmp.i1 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #7
  %0 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @horus3a_leave_power_save.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@horus3a_leave_power_save, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !82

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i2c = getelementptr inbounds %struct.horus3a_priv, ptr %priv, i32 0, i32 2
  %1 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @horus3a_leave_power_save.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.33) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.horus3a_priv, ptr %priv, i32 0, i32 3
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end4

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %data, align 1
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -89, ptr %0, align 1
  call fastcc void @horus3a_write_regs(ptr noundef %priv, i8 noundef zeroext 17, ptr noundef nonnull %data, i32 noundef 2)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %7 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 121, ptr %tmp.i, align 1
  call fastcc void @horus3a_write_regs(ptr noundef %priv, i8 noundef zeroext 42, ptr noundef nonnull %tmp.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i1) #7
  %8 = ptrtoint ptr %tmp.i1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -64, ptr %tmp.i1, align 1
  call fastcc void @horus3a_write_regs(ptr noundef %priv, i8 noundef zeroext 28, ptr noundef nonnull %tmp.i1, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i1) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i2) #7
  %9 = ptrtoint ptr %tmp.i2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 113, ptr %tmp.i2, align 1
  call fastcc void @horus3a_write_regs(ptr noundef %priv, i8 noundef zeroext 41, ptr noundef nonnull %tmp.i2, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i2) #7
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #7
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !19, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/horus3a.c", i32 377, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @horus3a_attach._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @horus3a_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/horus3a.c", i32 393, i32 2}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @horus3a_attach._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @horus3a_attach._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_horus3a_attach, !14, !"__ksymtab_horus3a_attach", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/horus3a.c", i32 398, i32 1}
!15 = !{ptr @__UNIQUE_ID_description298, !16, !"__UNIQUE_ID_description298", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/horus3a.c", i32 400, i32 1}
!17 = !{ptr @__UNIQUE_ID_author299, !18, !"__UNIQUE_ID_author299", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/horus3a.c", i32 401, i32 1}
!19 = !{ptr @__UNIQUE_ID_file300, !20, !"__UNIQUE_ID_file300", i1 false, i1 false}
!20 = !{!"../drivers/media/dvb-frontends/horus3a.c", i32 402, i32 1}
!21 = !{ptr @__UNIQUE_ID_license301, !20, !"__UNIQUE_ID_license301", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/horus3a.c", i32 61, i32 3}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @horus3a_write_regs._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @horus3a_write_regs._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/horus3a.c", i32 73, i32 3}
!29 = !{ptr @horus3a_write_regs._entry.11, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @horus3a_write_regs._entry_ptr.13, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/horus3a.c", i32 40, i32 2}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @horus3a_i2c_debug.__UNIQUE_ID_ddebug290, !33, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!36 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/horus3a.c", i32 42, i32 2}
!40 = !{ptr @horus3a_i2c_debug.__UNIQUE_ID_ddebug291, !39, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!41 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/horus3a.c", i32 92, i32 2}
!44 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @horus3a_enter_power_save.__UNIQUE_ID_ddebug292, !43, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!46 = !{ptr @horus3a_tuner_ops, !47, !"horus3a_tuner_ops", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/horus3a.c", i32 321, i32 35}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/horus3a.c", i32 151, i32 2}
!50 = !{ptr @horus3a_release.__UNIQUE_ID_ddebug295, !49, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/dvb-frontends/horus3a.c", i32 143, i32 2}
!53 = !{ptr @horus3a_init.__UNIQUE_ID_ddebug294, !52, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/horus3a.c", i32 160, i32 2}
!56 = !{ptr @horus3a_sleep.__UNIQUE_ID_ddebug296, !55, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/dvb-frontends/horus3a.c", i32 179, i32 2}
!59 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @horus3a_set_params.__UNIQUE_ID_ddebug297, !58, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/horus3a.c", i32 198, i32 3}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @horus3a_set_params._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @horus3a_set_params._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/dvb-frontends/horus3a.c", i32 286, i32 3}
!68 = !{ptr @horus3a_set_params._entry.30, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @horus3a_set_params._entry_ptr.32, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/dvb-frontends/horus3a.c", i32 119, i32 2}
!72 = !{ptr @horus3a_leave_power_save.__UNIQUE_ID_ddebug293, !71, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 2148209216, i64 2148209221, i64 2148209234, i64 2148209278, i64 2148209312, i64 2148209333}
